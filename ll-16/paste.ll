; ModuleID = 'src/paste.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [204 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0AThe newline of every line except the line from the last file\0Ais replaced with a TAB.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"paste\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [119 x i8] c"  -d, --delimiters=LIST\0A         reuse characters from LIST instead of TABs;\0A         backslash escapes are supported\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [166 x i8] c"  -s, --serial\0A         paste one file at a time instead of in parallel; the newline of\0A         every line except the last line in each file is replaced with a TAB\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [69 x i8] c"  -z, --zero-terminated\0A         line delimiter is NUL, not newline\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !52
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1, !dbg !67
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.57, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.58, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !72
@optarg = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1, !dbg !143
@serial_merge = internal unnamed_addr global i1 false, align 1, !dbg !416
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !417
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !148
@.str.16 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1, !dbg !153
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !158
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !163
@.str.19 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1, !dbg !165
@delims = internal unnamed_addr global ptr null, align 8, !dbg !175
@delim_lens = internal unnamed_addr global ptr null, align 8, !dbg !177
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !418
@stdin = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !180
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !185
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !190
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !272
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !274
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !276
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !281
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !315
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !317
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !319
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !324
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !329
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !331
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !336
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !338
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !340
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !342
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !353
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !355
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !360
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !365
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !370
@.str.57 = private unnamed_addr constant [7 x i8] c"serial\00", align 1, !dbg !375
@.str.58 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1, !dbg !377
@.str.59 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !382
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !384
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !386
@num_delims = internal unnamed_addr global i64 0, align 8, !dbg !390
@.str.62 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !395
@.str.63 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !397
@.str.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !399
@.str.65 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1, !dbg !401
@switch.table.main = private unnamed_addr constant [14 x i8] c"\\\08\08\08\08\0C\08\08\08\0A\08\0D\09\0B", align 4
@.str.26 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !419
@Version = dso_local local_unnamed_addr global ptr @.str.26, align 8, !dbg !422
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !426
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !439
@.str.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !431
@.str.1.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !433
@.str.2.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !435
@.str.3.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !437
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !441
@stderr = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !447
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !484
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !449
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !474
@.str.1.39 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !476
@.str.2.41 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !478
@.str.3.40 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !480
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !482
@.str.4.34 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !486
@.str.5.35 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !488
@.str.6.36 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !493
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !498
@.str.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !504
@.str.1.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !506
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !508
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !539
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !542
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !544
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !549
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !551
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !553
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !555
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !557
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !559
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !561
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.70, ptr @.str.1.71, ptr @.str.2.72, ptr @.str.3.73, ptr @.str.4.74, ptr @.str.5.75, ptr @.str.6.76, ptr @.str.7.77, ptr @.str.8.78, ptr @.str.9.79, ptr null], align 8, !dbg !563
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !574
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !588
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !626
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !633
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !590
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !635
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !578
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !595
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !597
@.str.12.83 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !599
@.str.13.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !601
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !603
@.str.88 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !639
@.str.1.89 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !642
@.str.2.90 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !644
@.str.3.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !646
@.str.4.92 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !648
@.str.5.93 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !650
@.str.6.94 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !655
@.str.7.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !660
@.str.8.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !662
@.str.9.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !667
@.str.10.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !672
@.str.11.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !677
@.str.12.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !682
@.str.13.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !684
@.str.14.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !689
@.str.15.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !694
@.str.16.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !696
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.109 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !701
@.str.18.110 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !703
@.str.19.111 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !705
@.str.20.112 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !707
@.str.21.113 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !709
@.str.22.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !711
@.str.23.115 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !713
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !718
@exit_failure = dso_local global i32 1, align 4, !dbg !726
@.str.134 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !732
@.str.1.132 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !735
@.str.2.133 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !737
@.str.141 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !739
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !742
@.str.146 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !757
@.str.1.147 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !760

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !839, metadata !DIExpression()), !dbg !840
  %2 = icmp eq i32 %0, 0, !dbg !841
  br i1 %2, label %8, label %3, !dbg !843

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !844, !tbaa !846
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !844
  %6 = load ptr, ptr @program_name, align 8, !dbg !844, !tbaa !846
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !844
  br label %40, !dbg !844

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !850
  %10 = load ptr, ptr @program_name, align 8, !dbg !850, !tbaa !846
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !850
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !852
  %13 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !846
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !852
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #37, !dbg !853
  %16 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !846
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !853
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #37, !dbg !857
  %19 = load ptr, ptr @stdout, align 8, !dbg !857, !tbaa !846
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !857
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !860
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !860
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !861
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !861
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !862
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !862
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !863
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !863
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !864
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !864
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr poison, metadata !877, metadata !DIExpression()), !dbg !882
  tail call void @emit_bug_reporting_address() #37, !dbg !884
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !885
  call void @llvm.dbg.value(metadata ptr %26, metadata !880, metadata !DIExpression()), !dbg !882
  %27 = icmp eq ptr %26, null, !dbg !886
  br i1 %27, label %35, label %28, !dbg !888

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #38, !dbg !889
  %30 = icmp eq i32 %29, 0, !dbg !889
  br i1 %30, label %35, label %31, !dbg !890

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #37, !dbg !891
  %33 = load ptr, ptr @stdout, align 8, !dbg !891, !tbaa !846
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !891
  br label %35, !dbg !893

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !881, metadata !DIExpression()), !dbg !882
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !894
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #37, !dbg !894
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !895
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #37, !dbg !895
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !896
  unreachable, !dbg !896
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !897 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !901 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !907 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !910 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !192 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !196, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %0, metadata !197, metadata !DIExpression()), !dbg !913
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !914, !tbaa !915
  %3 = icmp eq i32 %2, -1, !dbg !917
  br i1 %3, label %4, label %16, !dbg !918

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #37, !dbg !919
  call void @llvm.dbg.value(metadata ptr %5, metadata !198, metadata !DIExpression()), !dbg !920
  %6 = icmp eq ptr %5, null, !dbg !921
  br i1 %6, label %14, label %7, !dbg !922

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !923, !tbaa !924
  %9 = icmp eq i8 %8, 0, !dbg !923
  br i1 %9, label %14, label %10, !dbg !925

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !926, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !932, metadata !DIExpression()), !dbg !933
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #38, !dbg !935
  %12 = icmp eq i32 %11, 0, !dbg !936
  %13 = zext i1 %12 to i32, !dbg !925
  br label %14, !dbg !925

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !937, !tbaa !915
  br label %16, !dbg !938

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !939
  %18 = icmp eq i32 %17, 0, !dbg !939
  br i1 %18, label %22, label %19, !dbg !941

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !942, !tbaa !846
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !942
  br label %122, !dbg !944

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !201, metadata !DIExpression()), !dbg !913
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #38, !dbg !945
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !946
  call void @llvm.dbg.value(metadata ptr %24, metadata !202, metadata !DIExpression()), !dbg !913
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !947
  call void @llvm.dbg.value(metadata ptr %25, metadata !203, metadata !DIExpression()), !dbg !913
  %26 = icmp eq ptr %25, null, !dbg !948
  br i1 %26, label %54, label %27, !dbg !949

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !950
  br i1 %28, label %54, label %29, !dbg !951

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !204, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 0, metadata !208, metadata !DIExpression()), !dbg !952
  %30 = icmp ult ptr %24, %25, !dbg !953
  br i1 %30, label %31, label %52, !dbg !954

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !913
  %33 = load ptr, ptr %32, align 8, !tbaa !846
  br label %34, !dbg !954

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !204, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 %36, metadata !208, metadata !DIExpression()), !dbg !952
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !955
  call void @llvm.dbg.value(metadata ptr %37, metadata !204, metadata !DIExpression()), !dbg !952
  %38 = load i8, ptr %35, align 1, !dbg !955, !tbaa !924
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !955
  %41 = load i16, ptr %40, align 2, !dbg !955, !tbaa !956
  %42 = freeze i16 %41, !dbg !958
  %43 = lshr i16 %42, 13, !dbg !958
  %44 = and i16 %43, 1, !dbg !958
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !959
  call void @llvm.dbg.value(metadata i64 %46, metadata !208, metadata !DIExpression()), !dbg !952
  %47 = icmp ult ptr %37, %25, !dbg !953
  %48 = icmp ult i64 %46, 2, !dbg !960
  %49 = select i1 %47, i1 %48, i1 false, !dbg !960
  br i1 %49, label %34, label %50, !dbg !954, !llvm.loop !961

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !963
  br i1 %51, label %52, label %54, !dbg !965

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !965

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !913
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !201, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %55, metadata !203, metadata !DIExpression()), !dbg !913
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.25) #38, !dbg !966
  call void @llvm.dbg.value(metadata i64 %57, metadata !209, metadata !DIExpression()), !dbg !913
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !967
  call void @llvm.dbg.value(metadata ptr %58, metadata !210, metadata !DIExpression()), !dbg !913
  br label %59, !dbg !968

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !913
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !201, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %60, metadata !210, metadata !DIExpression()), !dbg !913
  %62 = load i8, ptr %60, align 1, !dbg !969, !tbaa !924
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !970

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !971
  %65 = load i8, ptr %64, align 1, !dbg !974, !tbaa !924
  %66 = icmp ne i8 %65, 45, !dbg !975
  %67 = select i1 %66, i1 %61, i1 false, !dbg !976
  br label %68, !dbg !976

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !201, metadata !DIExpression()), !dbg !913
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !977
  %71 = load ptr, ptr %70, align 8, !dbg !977, !tbaa !846
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !977
  %74 = load i16, ptr %73, align 2, !dbg !977, !tbaa !956
  %75 = and i16 %74, 8192, !dbg !977
  %76 = icmp eq i16 %75, 0, !dbg !977
  br i1 %76, label %90, label %77, !dbg !979

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !980
  br i1 %78, label %92, label %79, !dbg !983

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !984
  %81 = load i8, ptr %80, align 1, !dbg !984, !tbaa !924
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !984
  %84 = load i16, ptr %83, align 2, !dbg !984, !tbaa !956
  %85 = and i16 %84, 8192, !dbg !984
  %86 = icmp eq i16 %85, 0, !dbg !984
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !985
  br i1 %89, label %90, label %92, !dbg !985

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !986
  call void @llvm.dbg.value(metadata ptr %91, metadata !210, metadata !DIExpression()), !dbg !913
  br label %59, !dbg !968, !llvm.loop !987

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !989
  %94 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !846
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !926, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !267, metadata !DIExpression()), !dbg !913
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #38, !dbg !1010
  %97 = icmp eq i32 %96, 0, !dbg !1010
  br i1 %97, label %101, label %98, !dbg !1012

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #38, !dbg !1013
  %100 = icmp eq i32 %99, 0, !dbg !1013
  br i1 %100, label %101, label %104, !dbg !1014

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1015
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #37, !dbg !1015
  br label %107, !dbg !1017

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1018
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #37, !dbg !1018
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !846
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %108), !dbg !1020
  %110 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !846
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %110), !dbg !1021
  %112 = ptrtoint ptr %60 to i64, !dbg !1022
  %113 = sub i64 %112, %93, !dbg !1022
  %114 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !846
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1022
  %116 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !846
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %116), !dbg !1023
  %118 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !846
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %118), !dbg !1024
  %120 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !846
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1025
  br label %122, !dbg !1026

122:                                              ; preds = %107, %19
  ret void, !dbg !1026
}

; Function Attrs: nounwind
declare !dbg !1027 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1031 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1035 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1037 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1040 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1043 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1046 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1049 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1055 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1056 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1062 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1067, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr %1, metadata !1068, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1070, metadata !DIExpression()), !dbg !1073
  %5 = load ptr, ptr %1, align 8, !dbg !1074, !tbaa !846
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !1075
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #37, !dbg !1076
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #37, !dbg !1077
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #37, !dbg !1078
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1079
  br label %10, !dbg !1080

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %18, %14 ], [ @.str.9, %2 ]
  br label %12, !dbg !1080

12:                                               ; preds = %21, %10
  call void @llvm.dbg.value(metadata ptr %11, metadata !1070, metadata !DIExpression()), !dbg !1073
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %13, metadata !1069, metadata !DIExpression()), !dbg !1073
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 100, label %14
    i32 115, label %19
    i32 122, label %20
    i32 -2, label %22
    i32 -3, label %23
  ], !dbg !1080

14:                                               ; preds = %12
  %15 = load ptr, ptr @optarg, align 8, !dbg !1082, !tbaa !846
  %16 = load i8, ptr %15, align 1, !dbg !1082, !tbaa !924
  %17 = icmp eq i8 %16, 0, !dbg !1085
  %18 = select i1 %17, ptr @.str.14, ptr %15, !dbg !1082
  call void @llvm.dbg.value(metadata ptr %18, metadata !1070, metadata !DIExpression()), !dbg !1073
  br label %10, !dbg !1086, !llvm.loop !1087

19:                                               ; preds = %12
  store i1 true, ptr @serial_merge, align 1, !dbg !1089
  br label %21, !dbg !1090

20:                                               ; preds = %12
  store i1 true, ptr @line_delim, align 1, !dbg !1091
  br label %21, !dbg !1092

21:                                               ; preds = %20, %19
  br label %12, !dbg !1073, !llvm.loop !1087

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #41, !dbg !1093
  unreachable, !dbg !1093

23:                                               ; preds = %12
  %24 = load ptr, ptr @stdout, align 8, !dbg !1094, !tbaa !846
  %25 = load ptr, ptr @Version, align 8, !dbg !1094, !tbaa !846
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #37, !dbg !1094
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #37, !dbg !1094
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef null) #37, !dbg !1094
  tail call void @exit(i32 noundef 0) #39, !dbg !1094
  unreachable, !dbg !1094

28:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #41, !dbg !1095
  unreachable, !dbg !1095

29:                                               ; preds = %12
  %30 = load i32, ptr @optind, align 4, !dbg !1096, !tbaa !915
  %31 = sub nsw i32 %0, %30, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %31, metadata !1071, metadata !DIExpression()), !dbg !1073
  %32 = icmp eq i32 %31, 0, !dbg !1098
  br i1 %32, label %33, label %36, !dbg !1100

33:                                               ; preds = %29
  %34 = sext i32 %30 to i64, !dbg !1101
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1101
  store ptr @.str.18, ptr %35, align 8, !dbg !1103, !tbaa !846
  call void @llvm.dbg.value(metadata i32 1, metadata !1071, metadata !DIExpression()), !dbg !1073
  br label %36, !dbg !1104

36:                                               ; preds = %33, %29
  %37 = phi i32 [ 1, %33 ], [ %31, %29 ], !dbg !1073
  call void @llvm.dbg.value(metadata i32 %37, metadata !1071, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr %11, metadata !1105, metadata !DIExpression()), !dbg !1123
  %38 = tail call noalias nonnull ptr @xstrdup(ptr noundef %11) #37, !dbg !1126
  call void @llvm.dbg.value(metadata ptr %38, metadata !1110, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8 0, metadata !1111, metadata !DIExpression()), !dbg !1123
  store ptr %38, ptr @delims, align 8, !dbg !1127, !tbaa !846
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #38, !dbg !1128
  %40 = icmp eq i64 %39, 0, !dbg !1128
  %41 = select i1 %40, i64 1, i64 %39, !dbg !1128
  %42 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %41, i64 noundef 8) #42, !dbg !1129
  store ptr %42, ptr @delim_lens, align 8, !dbg !1130, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %11, metadata !1112, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 0, metadata !1113, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr %38, metadata !1110, metadata !DIExpression()), !dbg !1123
  %43 = load i8, ptr %11, align 1, !dbg !1131, !tbaa !924
  %44 = icmp eq i8 %43, 0, !dbg !1132
  br i1 %44, label %45, label %46, !dbg !1132

45:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1111, metadata !DIExpression()), !dbg !1123
  store i8 0, ptr %38, align 1, !dbg !1133, !tbaa !924
  store i64 0, ptr %42, align 8, !dbg !1134, !tbaa !1137
  call void @llvm.dbg.value(metadata i64 1, metadata !1113, metadata !DIExpression()), !dbg !1123
  br label %124, !dbg !1139

46:                                               ; preds = %36, %78
  %47 = phi ptr [ %79, %78 ], [ %42, %36 ]
  %48 = phi ptr [ %80, %78 ], [ %42, %36 ]
  %49 = phi i8 [ %84, %78 ], [ %43, %36 ]
  %50 = phi ptr [ %82, %78 ], [ %38, %36 ]
  %51 = phi ptr [ %81, %78 ], [ %11, %36 ]
  %52 = phi i64 [ %83, %78 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata ptr %50, metadata !1110, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr %51, metadata !1112, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %52, metadata !1113, metadata !DIExpression()), !dbg !1123
  %53 = icmp eq i8 %49, 92, !dbg !1140
  br i1 %53, label %54, label %87, !dbg !1142

54:                                               ; preds = %46
  %55 = getelementptr inbounds i8, ptr %51, i64 1, !dbg !1143
  call void @llvm.dbg.value(metadata ptr %55, metadata !1112, metadata !DIExpression()), !dbg !1123
  %56 = load i8, ptr %55, align 1, !dbg !1145, !tbaa !924
  switch i8 %56, label %57 [
    i8 0, label %117
    i8 48, label %72
  ], !dbg !1147

57:                                               ; preds = %54
  %58 = zext i8 %56 to i32, !dbg !1145
  %59 = add nsw i32 %58, -92, !dbg !1148
  %60 = call i32 @llvm.fshl.i32(i32 %58, i32 %59, i32 31), !dbg !1148
  %61 = icmp ult i32 %60, 14, !dbg !1148
  br i1 %61, label %62, label %87, !dbg !1148

62:                                               ; preds = %57
  %63 = trunc i32 %60 to i16, !dbg !1148
  %64 = lshr i16 14889, %63, !dbg !1148
  %65 = and i16 %64, 1, !dbg !1148
  %66 = icmp eq i16 %65, 0, !dbg !1148
  br i1 %66, label %87, label %67, !dbg !1148

67:                                               ; preds = %62
  %68 = sext i32 %60 to i64, !dbg !1148
  %69 = getelementptr inbounds [14 x i8], ptr @switch.table.main, i64 0, i64 %68, !dbg !1148
  %70 = load i8, ptr %69, align 1, !dbg !1148
  store i8 %70, ptr %50, align 1, !dbg !1151, !tbaa !924
  %71 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1151
  call void @llvm.dbg.value(metadata ptr %71, metadata !1110, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr %51, metadata !1112, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %52, metadata !1113, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1123
  br label %72

72:                                               ; preds = %67, %54
  %73 = phi ptr [ %47, %67 ], [ %48, %54 ]
  %74 = phi i64 [ 1, %67 ], [ 0, %54 ]
  %75 = phi ptr [ %71, %67 ], [ %50, %54 ], !dbg !1123
  %76 = getelementptr inbounds i64, ptr %73, i64 %52, !dbg !1153
  store i64 %74, ptr %76, align 8, !dbg !1153, !tbaa !1137
  %77 = getelementptr inbounds i8, ptr %51, i64 2, !dbg !1153
  call void @llvm.dbg.value(metadata ptr %75, metadata !1110, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr %77, metadata !1112, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %52, metadata !1113, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1123
  br label %78, !dbg !1154

78:                                               ; preds = %111, %72
  %79 = phi ptr [ %47, %72 ], [ %115, %111 ]
  %80 = phi ptr [ %73, %72 ], [ %115, %111 ]
  %81 = phi ptr [ %77, %72 ], [ %114, %111 ]
  %82 = phi ptr [ %75, %72 ], [ %113, %111 ]
  %83 = add nuw nsw i64 %52, 1, !dbg !1155
  call void @llvm.dbg.value(metadata ptr %82, metadata !1110, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr %81, metadata !1112, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %83, metadata !1113, metadata !DIExpression()), !dbg !1123
  %84 = load i8, ptr %81, align 1, !dbg !1131, !tbaa !924
  %85 = icmp eq i8 %84, 0, !dbg !1132
  br i1 %85, label %86, label %46, !dbg !1132, !llvm.loop !1156

86:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i8 poison, metadata !1111, metadata !DIExpression()), !dbg !1123
  store i8 0, ptr %82, align 1, !dbg !1133, !tbaa !924
  call void @llvm.dbg.value(metadata i64 %83, metadata !1113, metadata !DIExpression()), !dbg !1123
  br label %124, !dbg !1139

87:                                               ; preds = %62, %57, %46
  %88 = phi i8 [ %49, %46 ], [ %56, %57 ], [ %56, %62 ], !dbg !1158
  %89 = phi ptr [ %51, %46 ], [ %55, %57 ], [ %55, %62 ], !dbg !1123
  call void @llvm.dbg.value(metadata ptr %89, metadata !1112, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.label(metadata !1122), !dbg !1176
  call void @llvm.dbg.value(metadata ptr %89, metadata !1174, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata ptr %89, metadata !1164, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8 0, metadata !1165, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %88, metadata !1179, metadata !DIExpression()), !dbg !1184
  %90 = icmp sgt i8 %88, -1, !dbg !1186
  br i1 %90, label %111, label %91, !dbg !1187

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, ptr %89, i64 1, !dbg !1188
  call void @llvm.dbg.value(metadata i32 0, metadata !1167, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr %92, metadata !1166, metadata !DIExpression()), !dbg !1178
  %93 = load i8, ptr %92, align 1, !dbg !1190, !tbaa !924
  %94 = icmp ne i8 %93, 0, !dbg !1192
  %95 = zext i1 %94 to i64
  %96 = getelementptr inbounds i8, ptr %92, i64 %95, !dbg !1193
  call void @llvm.dbg.value(metadata i32 1, metadata !1167, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr %96, metadata !1166, metadata !DIExpression()), !dbg !1178
  %97 = load i8, ptr %96, align 1, !dbg !1190, !tbaa !924
  %98 = icmp ne i8 %97, 0, !dbg !1192
  %99 = zext i1 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99, !dbg !1193
  call void @llvm.dbg.value(metadata i32 2, metadata !1167, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr %100, metadata !1166, metadata !DIExpression()), !dbg !1178
  %101 = load i8, ptr %100, align 1, !dbg !1190, !tbaa !924
  %102 = icmp ne i8 %101, 0, !dbg !1192
  %103 = zext i1 %102 to i64
  %104 = getelementptr inbounds i8, ptr %100, i64 %103, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %104, metadata !1166, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i32 3, metadata !1167, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr %89, metadata !1194, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata ptr %104, metadata !1199, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %88, metadata !1200, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %88, metadata !1179, metadata !DIExpression()), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1201, metadata !DIExpression()), !dbg !1220
  store i32 0, ptr %3, align 4, !dbg !1221, !tbaa !1222
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1224
  %105 = ptrtoint ptr %104 to i64, !dbg !1225
  %106 = ptrtoint ptr %89 to i64, !dbg !1225
  %107 = sub i64 %105, %106, !dbg !1225
  call void @llvm.dbg.value(metadata ptr %4, metadata !1212, metadata !DIExpression(DW_OP_deref)), !dbg !1214
  %108 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %89, i64 noundef %107, ptr noundef nonnull %3) #37, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %108, metadata !1213, metadata !DIExpression()), !dbg !1214
  %109 = icmp slt i64 %108, 0, !dbg !1227
  %110 = select i1 %109, i64 1, i64 %108, !dbg !1229, !prof !1230
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1231
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1231
  br label %111

111:                                              ; preds = %91, %87
  %112 = phi i64 [ %110, %91 ], [ 1, %87 ], !dbg !1178
  call void @llvm.dbg.value(metadata i64 %112, metadata !1114, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %112, metadata !1114, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %112, metadata !1114, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %50, metadata !1232, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata ptr %89, metadata !1239, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %112, metadata !1240, metadata !DIExpression()), !dbg !1241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %50, ptr noundef nonnull align 1 %89, i64 noundef %112, i1 noundef false) #37, !dbg !1243
  %113 = getelementptr inbounds i8, ptr %50, i64 %112, !dbg !1243
  call void @llvm.dbg.value(metadata ptr %113, metadata !1110, metadata !DIExpression()), !dbg !1123
  %114 = getelementptr inbounds i8, ptr %89, i64 %112, !dbg !1244
  call void @llvm.dbg.value(metadata ptr %114, metadata !1112, metadata !DIExpression()), !dbg !1123
  %115 = load ptr, ptr @delim_lens, align 8, !dbg !1245, !tbaa !846
  call void @llvm.dbg.value(metadata i64 %52, metadata !1113, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1123
  %116 = getelementptr inbounds i64, ptr %115, i64 %52, !dbg !1245
  store i64 %112, ptr %116, align 8, !dbg !1246, !tbaa !1137
  br label %78, !dbg !1132

117:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i8 poison, metadata !1111, metadata !DIExpression()), !dbg !1123
  store i8 0, ptr %50, align 1, !dbg !1133, !tbaa !924
  %118 = icmp eq i64 %52, 0, !dbg !1247
  br i1 %118, label %119, label %120, !dbg !1248

119:                                              ; preds = %117
  store i64 0, ptr %47, align 8, !dbg !1134, !tbaa !1137
  call void @llvm.dbg.value(metadata i64 1, metadata !1113, metadata !DIExpression()), !dbg !1123
  br label %120, !dbg !1139

120:                                              ; preds = %117, %119
  %121 = phi i64 [ 1, %119 ], [ %52, %117 ], !dbg !1249
  store i64 %121, ptr @num_delims, align 8, !dbg !1249, !tbaa !1137
  %122 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !1250
  %123 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 6, ptr noundef nonnull %11) #37, !dbg !1250
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %122, ptr noundef %123) #37, !dbg !1250
  unreachable, !dbg !1250

124:                                              ; preds = %45, %86
  %125 = phi i64 [ %83, %86 ], [ 1, %45 ], !dbg !1249
  store i64 %125, ptr @num_delims, align 8, !dbg !1249, !tbaa !1137
  %126 = load i1, ptr @serial_merge, align 1, !dbg !1252
  %127 = select i1 %126, ptr @paste_serial, ptr @paste_parallel, !dbg !1252
  %128 = sext i32 %37 to i64, !dbg !1253
  %129 = load i32, ptr @optind, align 4, !dbg !1254, !tbaa !915
  %130 = sext i32 %129 to i64, !dbg !1255
  %131 = getelementptr inbounds ptr, ptr %1, i64 %130, !dbg !1255
  %132 = call i1 %127(i64 noundef %128, ptr noundef nonnull %131) #37, !dbg !1256, !callees !1257
  call void @llvm.dbg.value(metadata i1 %132, metadata !1072, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1073
  %133 = load ptr, ptr @delims, align 8, !dbg !1258, !tbaa !846
  call void @free(ptr noundef %133) #37, !dbg !1259
  %134 = load ptr, ptr @delim_lens, align 8, !dbg !1260, !tbaa !846
  call void @free(ptr noundef %134) #37, !dbg !1261
  %135 = load i1, ptr @have_read_stdin, align 1, !dbg !1262
  br i1 %135, label %136, label %143, !dbg !1264

136:                                              ; preds = %124
  %137 = load ptr, ptr @stdin, align 8, !dbg !1265, !tbaa !846
  %138 = call i32 @rpl_fclose(ptr noundef %137) #37, !dbg !1266
  %139 = icmp eq i32 %138, -1, !dbg !1267
  br i1 %139, label %140, label %143, !dbg !1268

140:                                              ; preds = %136
  %141 = tail call ptr @__errno_location() #40, !dbg !1269
  %142 = load i32, ptr %141, align 4, !dbg !1269, !tbaa !915
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %142, ptr noundef nonnull @.str.18) #37, !dbg !1269
  unreachable, !dbg !1269

143:                                              ; preds = %136, %124
  %144 = xor i1 %132, true, !dbg !1270
  %145 = zext i1 %144 to i32, !dbg !1270
  ret i32 %145, !dbg !1271
}

; Function Attrs: nounwind
declare !dbg !1272 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1275 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1276 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1279 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1285 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1288 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal i1 @paste_serial(i64 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1295 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1299, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %1, metadata !1300, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 1, metadata !1301, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 poison, metadata !1301, metadata !DIExpression()), !dbg !1312
  %3 = icmp eq i64 %0, 0, !dbg !1313
  br i1 %3, label %198, label %4, !dbg !1313

4:                                                ; preds = %2, %193
  %5 = phi i64 [ %195, %193 ], [ %0, %2 ]
  %6 = phi ptr [ %196, %193 ], [ %1, %2 ]
  %7 = phi i1 [ %194, %193 ], [ true, %2 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1299, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %6, metadata !1300, metadata !DIExpression()), !dbg !1312
  %8 = load ptr, ptr %6, align 8, !dbg !1314, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %8, metadata !926, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !932, metadata !DIExpression()), !dbg !1315
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(2) @.str.18) #38, !dbg !1317
  %10 = icmp eq i32 %9, 0, !dbg !1318
  call void @llvm.dbg.value(metadata i1 %10, metadata !1309, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1319
  br i1 %10, label %11, label %13, !dbg !1320

11:                                               ; preds = %4
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1321
  %12 = load ptr, ptr @stdin, align 8, !dbg !1324, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %12, metadata !1304, metadata !DIExpression()), !dbg !1312
  br label %20, !dbg !1325

13:                                               ; preds = %4
  %14 = tail call noalias ptr @rpl_fopen(ptr noundef %8, ptr noundef nonnull @.str.62) #37, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %14, metadata !1304, metadata !DIExpression()), !dbg !1312
  %15 = icmp eq ptr %14, null, !dbg !1328
  br i1 %15, label %16, label %19, !dbg !1330

16:                                               ; preds = %13
  %17 = tail call ptr @__errno_location() #40, !dbg !1331
  %18 = load i32, ptr %17, align 4, !dbg !1331, !tbaa !915
  call void @llvm.dbg.value(metadata i8 0, metadata !1301, metadata !DIExpression()), !dbg !1312
  br label %189, !dbg !1333

19:                                               ; preds = %13
  tail call void @fadvise(ptr noundef nonnull %14, i32 noundef 2) #37, !dbg !1334
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi ptr [ %12, %11 ], [ %14, %19 ], !dbg !1335
  call void @llvm.dbg.value(metadata ptr %21, metadata !1304, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 0, metadata !1310, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i64 0, metadata !1311, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %21, metadata !1336, metadata !DIExpression()), !dbg !1342
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 1, !dbg !1344
  %23 = load ptr, ptr %22, align 8, !dbg !1344, !tbaa !1345
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 2, !dbg !1344
  %25 = load ptr, ptr %24, align 8, !dbg !1344, !tbaa !1347
  %26 = icmp ult ptr %23, %25, !dbg !1344
  br i1 %26, label %27, label %32, !dbg !1344, !prof !1348

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1344
  store ptr %28, ptr %22, align 8, !dbg !1344, !tbaa !1345
  %29 = load i8, ptr %23, align 1, !dbg !1344, !tbaa !924
  %30 = zext i8 %29 to i32, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %30, metadata !1303, metadata !DIExpression()), !dbg !1312
  %31 = tail call ptr @__errno_location() #40, !dbg !1349
  call void @llvm.dbg.value(metadata i32 poison, metadata !1305, metadata !DIExpression()), !dbg !1319
  br label %36, !dbg !1350

32:                                               ; preds = %20
  %33 = tail call i32 @__uflow(ptr noundef nonnull %21) #37, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %33, metadata !1303, metadata !DIExpression()), !dbg !1312
  %34 = tail call ptr @__errno_location() #40, !dbg !1349
  call void @llvm.dbg.value(metadata i32 poison, metadata !1305, metadata !DIExpression()), !dbg !1319
  %35 = icmp eq i32 %33, -1, !dbg !1351
  br i1 %35, label %39, label %36, !dbg !1350

36:                                               ; preds = %27, %32
  %37 = phi ptr [ %31, %27 ], [ %34, %32 ]
  %38 = phi i32 [ %30, %27 ], [ %33, %32 ]
  br label %92, !dbg !1353

39:                                               ; preds = %32
  %40 = load i32, ptr %34, align 4, !dbg !1349, !tbaa !915
  call void @llvm.dbg.value(metadata i32 poison, metadata !1305, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 -1, metadata !1303, metadata !DIExpression()), !dbg !1312
  %41 = load i1, ptr @line_delim, align 1, !dbg !1355
  %42 = select i1 %41, i8 0, i8 10, !dbg !1355
  %43 = zext i8 %42 to i32, !dbg !1355
  br label %147, !dbg !1357

44:                                               ; preds = %110, %92
  %45 = phi i32 [ %93, %92 ], [ %57, %110 ], !dbg !1319
  call void @llvm.dbg.value(metadata i64 %95, metadata !1311, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %94, metadata !1310, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %45, metadata !1303, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %21, metadata !1336, metadata !DIExpression()), !dbg !1358
  %46 = load ptr, ptr %22, align 8, !dbg !1360, !tbaa !1345
  %47 = load ptr, ptr %24, align 8, !dbg !1360, !tbaa !1347
  %48 = icmp ult ptr %46, %47, !dbg !1360
  br i1 %48, label %49, label %53, !dbg !1360, !prof !1348

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %46, i64 1, !dbg !1360
  store ptr %50, ptr %22, align 8, !dbg !1360, !tbaa !1345
  %51 = load i8, ptr %46, align 1, !dbg !1360, !tbaa !924
  %52 = zext i8 %51 to i32, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %52, metadata !1302, metadata !DIExpression()), !dbg !1312
  br label %56, !dbg !1353

53:                                               ; preds = %44
  %54 = tail call i32 @__uflow(ptr noundef nonnull %21) #37, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %54, metadata !1302, metadata !DIExpression()), !dbg !1312
  %55 = icmp eq i32 %54, -1, !dbg !1361
  br i1 %55, label %119, label %56, !dbg !1353

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %52, %49 ], [ %54, %53 ]
  %58 = load i1, ptr @line_delim, align 1, !dbg !1362
  %59 = select i1 %58, i32 0, i32 10, !dbg !1362
  %60 = icmp eq i32 %45, %59, !dbg !1365
  br i1 %60, label %61, label %96, !dbg !1366

61:                                               ; preds = %56
  %62 = load ptr, ptr @delim_lens, align 8, !dbg !1367, !tbaa !846
  %63 = getelementptr inbounds i64, ptr %62, i64 %94, !dbg !1367
  %64 = load i64, ptr %63, align 8, !dbg !1367, !tbaa !1137
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1369, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %64, metadata !1374, metadata !DIExpression()), !dbg !1380
  %65 = icmp eq i64 %64, 0, !dbg !1382
  br i1 %65, label %84, label %66, !dbg !1383

66:                                               ; preds = %61
  %67 = load ptr, ptr @delims, align 8, !dbg !1384, !tbaa !846
  call void @llvm.dbg.value(metadata !DIArgList(ptr %67, i64 %95), metadata !1369, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1380
  %68 = getelementptr inbounds i8, ptr %67, i64 %95, !dbg !1385
  call void @llvm.dbg.value(metadata ptr %68, metadata !1369, metadata !DIExpression()), !dbg !1380
  %69 = load ptr, ptr @stdout, align 8, !dbg !1386, !tbaa !846
  %70 = tail call i64 @fwrite_unlocked(ptr noundef %68, i64 noundef 1, i64 noundef %64, ptr noundef %69), !dbg !1386
  %71 = icmp eq i64 %70, %64, !dbg !1387
  br i1 %71, label %72, label %76, !dbg !1388

72:                                               ; preds = %66
  %73 = load ptr, ptr @delim_lens, align 8, !dbg !1389, !tbaa !846
  %74 = getelementptr inbounds i64, ptr %73, i64 %94
  %75 = load i64, ptr %74, align 8, !dbg !1389, !tbaa !1137
  br label %84, !dbg !1388

76:                                               ; preds = %66
  %77 = load i32, ptr %37, align 4, !dbg !1390, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %77, metadata !1393, metadata !DIExpression()), !dbg !1395
  %78 = load ptr, ptr @stdout, align 8, !dbg !1396, !tbaa !846
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #37, !dbg !1396
  %80 = load ptr, ptr @stdout, align 8, !dbg !1397, !tbaa !846
  %81 = tail call i32 @fpurge(ptr noundef %80) #37, !dbg !1398
  %82 = load ptr, ptr @stdout, align 8, !dbg !1399, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %82) #37, !dbg !1399
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1400
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %83) #37, !dbg !1400
  unreachable, !dbg !1400

84:                                               ; preds = %72, %61
  %85 = phi i64 [ %75, %72 ], [ 0, %61 ], !dbg !1389
  %86 = add i64 %85, %95, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %86, metadata !1311, metadata !DIExpression()), !dbg !1319
  %87 = add nsw i64 %94, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %87, metadata !1310, metadata !DIExpression()), !dbg !1319
  %88 = load i64, ptr @num_delims, align 8, !dbg !1404, !tbaa !1137
  %89 = icmp eq i64 %87, %88, !dbg !1405
  %90 = select i1 %89, i64 0, i64 %87, !dbg !1406
  %91 = select i1 %89, i64 0, i64 %86, !dbg !1406
  br label %92, !dbg !1406, !llvm.loop !1407

92:                                               ; preds = %84, %36
  %93 = phi i32 [ %57, %84 ], [ %38, %36 ]
  %94 = phi i64 [ %90, %84 ], [ 0, %36 ]
  %95 = phi i64 [ %91, %84 ], [ 0, %36 ]
  br label %44, !dbg !1353

96:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 %45, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %45, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1421
  %97 = load ptr, ptr @stdout, align 8, !dbg !1424, !tbaa !846
  %98 = getelementptr inbounds %struct._IO_FILE, ptr %97, i64 0, i32 5, !dbg !1424
  %99 = load ptr, ptr %98, align 8, !dbg !1424, !tbaa !1425
  %100 = getelementptr inbounds %struct._IO_FILE, ptr %97, i64 0, i32 6, !dbg !1424
  %101 = load ptr, ptr %100, align 8, !dbg !1424, !tbaa !1426
  %102 = icmp ult ptr %99, %101, !dbg !1424
  br i1 %102, label %103, label %106, !dbg !1424, !prof !1348

103:                                              ; preds = %96
  %104 = trunc i32 %45 to i8, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %104, metadata !1409, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 %104, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1421
  %105 = getelementptr inbounds i8, ptr %99, i64 1, !dbg !1424
  store ptr %105, ptr %98, align 8, !dbg !1424, !tbaa !1425
  store i8 %104, ptr %99, align 1, !dbg !1424, !tbaa !924
  br label %110, !dbg !1428

106:                                              ; preds = %96
  %107 = and i32 %45, 255, !dbg !1429
  call void @llvm.dbg.value(metadata i32 %107, metadata !1416, metadata !DIExpression()), !dbg !1421
  %108 = tail call i32 @__overflow(ptr noundef nonnull %97, i32 noundef %107) #37, !dbg !1424
  %109 = icmp slt i32 %108, 0, !dbg !1430
  br i1 %109, label %111, label %110, !dbg !1428

110:                                              ; preds = %106, %103
  br label %44, !dbg !1319, !llvm.loop !1407

111:                                              ; preds = %106
  %112 = load i32, ptr %37, align 4, !dbg !1431, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %112, metadata !1393, metadata !DIExpression()), !dbg !1433
  %113 = load ptr, ptr @stdout, align 8, !dbg !1434, !tbaa !846
  %114 = tail call i32 @fflush_unlocked(ptr noundef %113) #37, !dbg !1434
  %115 = load ptr, ptr @stdout, align 8, !dbg !1435, !tbaa !846
  %116 = tail call i32 @fpurge(ptr noundef %115) #37, !dbg !1436
  %117 = load ptr, ptr @stdout, align 8, !dbg !1437, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %117) #37, !dbg !1437
  %118 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1438
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %112, ptr noundef %118) #37, !dbg !1438
  unreachable, !dbg !1438

119:                                              ; preds = %53
  %120 = load i32, ptr %37, align 4, !dbg !1439, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %120, metadata !1305, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %45, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1440
  call void @llvm.dbg.value(metadata i32 %45, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1442
  %121 = load ptr, ptr @stdout, align 8, !dbg !1444, !tbaa !846
  %122 = getelementptr inbounds %struct._IO_FILE, ptr %121, i64 0, i32 5, !dbg !1444
  %123 = load ptr, ptr %122, align 8, !dbg !1444, !tbaa !1425
  %124 = getelementptr inbounds %struct._IO_FILE, ptr %121, i64 0, i32 6, !dbg !1444
  %125 = load ptr, ptr %124, align 8, !dbg !1444, !tbaa !1426
  %126 = icmp ult ptr %123, %125, !dbg !1444
  br i1 %126, label %127, label %130, !dbg !1444, !prof !1348

127:                                              ; preds = %119
  %128 = trunc i32 %45 to i8, !dbg !1445
  call void @llvm.dbg.value(metadata i8 %128, metadata !1409, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %128, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1442
  %129 = getelementptr inbounds i8, ptr %123, i64 1, !dbg !1444
  store ptr %129, ptr %122, align 8, !dbg !1444, !tbaa !1425
  store i8 %128, ptr %123, align 1, !dbg !1444, !tbaa !924
  br label %142, !dbg !1446

130:                                              ; preds = %119
  %131 = and i32 %45, 255, !dbg !1447
  call void @llvm.dbg.value(metadata i32 %131, metadata !1416, metadata !DIExpression()), !dbg !1442
  %132 = tail call i32 @__overflow(ptr noundef nonnull %121, i32 noundef %131) #37, !dbg !1444
  %133 = icmp slt i32 %132, 0, !dbg !1448
  br i1 %133, label %134, label %142, !dbg !1446

134:                                              ; preds = %130
  %135 = load i32, ptr %37, align 4, !dbg !1449, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %135, metadata !1393, metadata !DIExpression()), !dbg !1451
  %136 = load ptr, ptr @stdout, align 8, !dbg !1452, !tbaa !846
  %137 = tail call i32 @fflush_unlocked(ptr noundef %136) #37, !dbg !1452
  %138 = load ptr, ptr @stdout, align 8, !dbg !1453, !tbaa !846
  %139 = tail call i32 @fpurge(ptr noundef %138) #37, !dbg !1454
  %140 = load ptr, ptr @stdout, align 8, !dbg !1455, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %140) #37, !dbg !1455
  %141 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1456
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef %141) #37, !dbg !1456
  unreachable, !dbg !1456

142:                                              ; preds = %130, %127
  call void @llvm.dbg.value(metadata i32 %120, metadata !1305, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %45, metadata !1303, metadata !DIExpression()), !dbg !1312
  %143 = load i1, ptr @line_delim, align 1, !dbg !1355
  %144 = select i1 %143, i8 0, i8 10, !dbg !1355
  %145 = zext i8 %144 to i32, !dbg !1355
  %146 = icmp eq i32 %45, %145, !dbg !1457
  br i1 %146, label %171, label %147, !dbg !1357

147:                                              ; preds = %39, %142
  %148 = phi ptr [ %34, %39 ], [ %37, %142 ]
  %149 = phi i32 [ %43, %39 ], [ %145, %142 ]
  %150 = phi i8 [ %42, %39 ], [ %144, %142 ]
  %151 = phi i32 [ %40, %39 ], [ %120, %142 ]
  call void @llvm.dbg.value(metadata i8 %144, metadata !1409, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8 %144, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1460
  %152 = load ptr, ptr @stdout, align 8, !dbg !1462, !tbaa !846
  %153 = getelementptr inbounds %struct._IO_FILE, ptr %152, i64 0, i32 5, !dbg !1462
  %154 = load ptr, ptr %153, align 8, !dbg !1462, !tbaa !1425
  %155 = getelementptr inbounds %struct._IO_FILE, ptr %152, i64 0, i32 6, !dbg !1462
  %156 = load ptr, ptr %155, align 8, !dbg !1462, !tbaa !1426
  %157 = icmp ult ptr %154, %156, !dbg !1462
  br i1 %157, label %158, label %160, !dbg !1462, !prof !1348

158:                                              ; preds = %147
  %159 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !1462
  store ptr %159, ptr %153, align 8, !dbg !1462, !tbaa !1425
  store i8 %150, ptr %154, align 1, !dbg !1462, !tbaa !924
  br label %171, !dbg !1463

160:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i32 %145, metadata !1416, metadata !DIExpression()), !dbg !1460
  %161 = tail call i32 @__overflow(ptr noundef nonnull %152, i32 noundef %149) #37, !dbg !1462
  %162 = icmp slt i32 %161, 0, !dbg !1464
  br i1 %162, label %163, label %171, !dbg !1463

163:                                              ; preds = %160
  %164 = load i32, ptr %148, align 4, !dbg !1465, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %164, metadata !1393, metadata !DIExpression()), !dbg !1467
  %165 = load ptr, ptr @stdout, align 8, !dbg !1468, !tbaa !846
  %166 = tail call i32 @fflush_unlocked(ptr noundef %165) #37, !dbg !1468
  %167 = load ptr, ptr @stdout, align 8, !dbg !1469, !tbaa !846
  %168 = tail call i32 @fpurge(ptr noundef %167) #37, !dbg !1470
  %169 = load ptr, ptr @stdout, align 8, !dbg !1471, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %169) #37, !dbg !1471
  %170 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1472
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %164, ptr noundef %170) #37, !dbg !1472
  unreachable, !dbg !1472

171:                                              ; preds = %160, %158, %142
  %172 = phi ptr [ %37, %142 ], [ %148, %158 ], [ %148, %160 ]
  %173 = phi i32 [ %120, %142 ], [ %151, %158 ], [ %151, %160 ]
  call void @llvm.dbg.value(metadata ptr %21, metadata !1473, metadata !DIExpression()), !dbg !1476
  %174 = load i32, ptr %21, align 8, !dbg !1479, !tbaa !1480
  %175 = and i32 %174, 32, !dbg !1481
  %176 = icmp eq i32 %175, 0, !dbg !1481
  %177 = select i1 %176, i32 0, i32 %173, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %177, metadata !1305, metadata !DIExpression()), !dbg !1319
  br i1 %10, label %178, label %179, !dbg !1483

178:                                              ; preds = %171
  tail call void @clearerr_unlocked(ptr noundef nonnull %21) #37, !dbg !1484
  br label %186, !dbg !1484

179:                                              ; preds = %171
  %180 = tail call i32 @rpl_fclose(ptr noundef nonnull %21) #37, !dbg !1486
  %181 = icmp eq i32 %180, 0, !dbg !1488
  %182 = icmp ne i32 %177, 0
  %183 = select i1 %181, i1 true, i1 %182, !dbg !1489
  br i1 %183, label %186, label %184, !dbg !1489

184:                                              ; preds = %179
  %185 = load i32, ptr %172, align 4, !dbg !1490, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %185, metadata !1305, metadata !DIExpression()), !dbg !1319
  br label %186, !dbg !1491

186:                                              ; preds = %179, %184, %178
  %187 = phi i32 [ %177, %178 ], [ %177, %179 ], [ %185, %184 ], !dbg !1319
  call void @llvm.dbg.value(metadata i32 %187, metadata !1305, metadata !DIExpression()), !dbg !1319
  %188 = icmp eq i32 %187, 0, !dbg !1492
  br i1 %188, label %193, label %189, !dbg !1494

189:                                              ; preds = %186, %16
  %190 = phi i32 [ %18, %16 ], [ %187, %186 ]
  %191 = load ptr, ptr %6, align 8, !dbg !1319, !tbaa !846
  %192 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %191) #37, !dbg !1319
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %190, ptr noundef nonnull @.str.63, ptr noundef %192) #37, !dbg !1319
  br label %193, !dbg !1495

193:                                              ; preds = %189, %186
  %194 = phi i1 [ %7, %186 ], [ false, %189 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1301, metadata !DIExpression()), !dbg !1312
  %195 = add i64 %5, -1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %195, metadata !1299, metadata !DIExpression()), !dbg !1312
  %196 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %196, metadata !1300, metadata !DIExpression()), !dbg !1312
  %197 = icmp eq i64 %195, 0, !dbg !1313
  br i1 %197, label %198, label %4, !dbg !1313, !llvm.loop !1497

198:                                              ; preds = %193, %2
  %199 = phi i1 [ true, %2 ], [ %194, %193 ]
  ret i1 %199, !dbg !1499
}

; Function Attrs: nounwind uwtable
define internal i1 @paste_parallel(i64 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1500 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1502, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata ptr %1, metadata !1503, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 1, metadata !1504, metadata !DIExpression()), !dbg !1550
  %3 = add i64 %0, -1, !dbg !1551
  %4 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1552
  %5 = mul i64 %4, %3, !dbg !1553
  %6 = add i64 %5, 1, !dbg !1554
  %7 = tail call noalias nonnull ptr @xmalloc(i64 noundef %6) #43, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %7, metadata !1505, metadata !DIExpression()), !dbg !1550
  %8 = add i64 %0, 1, !dbg !1556
  %9 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %8, i64 noundef 8) #42, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %9, metadata !1506, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 0, metadata !1509, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 poison, metadata !1509, metadata !DIExpression()), !dbg !1550
  %10 = icmp eq i64 %0, 0, !dbg !1558
  br i1 %10, label %329, label %11, !dbg !1561

11:                                               ; preds = %2, %35
  %12 = phi i64 [ %37, %35 ], [ 0, %2 ]
  %13 = phi i1 [ %36, %35 ], [ false, %2 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1508, metadata !DIExpression()), !dbg !1550
  %14 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1562
  %15 = load ptr, ptr %14, align 8, !dbg !1562, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %15, metadata !926, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !932, metadata !DIExpression()), !dbg !1565
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(2) @.str.18) #38, !dbg !1567
  %17 = icmp eq i32 %16, 0, !dbg !1568
  br i1 %17, label %18, label %21, !dbg !1569

18:                                               ; preds = %11
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1570
  %19 = load ptr, ptr @stdin, align 8, !dbg !1572, !tbaa !846
  %20 = getelementptr inbounds ptr, ptr %9, i64 %12, !dbg !1573
  store ptr %19, ptr %20, align 8, !dbg !1574, !tbaa !846
  br label %35, !dbg !1575

21:                                               ; preds = %11
  %22 = tail call noalias ptr @rpl_fopen(ptr noundef %15, ptr noundef nonnull @.str.62) #37, !dbg !1576
  %23 = getelementptr inbounds ptr, ptr %9, i64 %12, !dbg !1578
  store ptr %22, ptr %23, align 8, !dbg !1579, !tbaa !846
  %24 = icmp eq ptr %22, null, !dbg !1580
  br i1 %24, label %25, label %31, !dbg !1582

25:                                               ; preds = %21
  %26 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1562
  %27 = tail call ptr @__errno_location() #40, !dbg !1583
  %28 = load i32, ptr %27, align 4, !dbg !1583, !tbaa !915
  %29 = load ptr, ptr %26, align 8, !dbg !1583, !tbaa !846
  %30 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %29) #37, !dbg !1583
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %28, ptr noundef nonnull @.str.63, ptr noundef %30) #37, !dbg !1583
  unreachable, !dbg !1583

31:                                               ; preds = %21
  %32 = tail call i32 @fileno_unlocked(ptr noundef nonnull %22) #37, !dbg !1584
  %33 = icmp eq i32 %32, 0, !dbg !1586
  %34 = select i1 %33, i1 true, i1 %13, !dbg !1587
  call void @llvm.dbg.value(metadata i8 poison, metadata !1509, metadata !DIExpression()), !dbg !1550
  tail call void @fadvise(ptr noundef nonnull %22, i32 noundef 2) #37, !dbg !1588
  br label %35

35:                                               ; preds = %18, %31
  %36 = phi i1 [ %13, %18 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1509, metadata !DIExpression()), !dbg !1550
  %37 = add nuw i64 %12, 1, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %37, metadata !1508, metadata !DIExpression()), !dbg !1550
  %38 = icmp eq i64 %37, %0, !dbg !1558
  br i1 %38, label %39, label %11, !dbg !1561, !llvm.loop !1590

39:                                               ; preds = %35
  br i1 %36, label %41, label %40, !dbg !1592

40:                                               ; preds = %41, %39
  br label %49, !dbg !1594

41:                                               ; preds = %39
  %42 = load i1, ptr @have_read_stdin, align 1, !dbg !1595
  br i1 %42, label %43, label %40, !dbg !1596

43:                                               ; preds = %41
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #37, !dbg !1597
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %44) #37, !dbg !1597
  unreachable, !dbg !1597

45:                                               ; preds = %318, %171, %196, %198, %49
  %46 = phi i64 [ %51, %49 ], [ %167, %198 ], [ %167, %196 ], [ %167, %171 ], [ %324, %318 ], !dbg !1598
  %47 = phi i1 [ %50, %49 ], [ %168, %198 ], [ %168, %196 ], [ %168, %171 ], [ %325, %318 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1504, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %46, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 poison, metadata !1517, metadata !DIExpression()), !dbg !1599
  %48 = icmp eq i64 %46, 0, !dbg !1594
  br i1 %48, label %329, label %49, !dbg !1594, !llvm.loop !1600

49:                                               ; preds = %40, %45
  %50 = phi i1 [ %47, %45 ], [ true, %40 ]
  %51 = phi i64 [ %46, %45 ], [ %0, %40 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1504, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %51, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 poison, metadata !1510, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1512, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1513, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 poison, metadata !1517, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 0, metadata !1515, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !1514, metadata !DIExpression()), !dbg !1602
  br i1 %10, label %45, label %52, !dbg !1604

52:                                               ; preds = %49, %318
  %53 = phi i1 [ %325, %318 ], [ %50, %49 ]
  %54 = phi i64 [ %324, %318 ], [ %51, %49 ]
  %55 = phi i1 [ %323, %318 ], [ false, %49 ]
  %56 = phi i64 [ %322, %318 ], [ 0, %49 ]
  %57 = phi i64 [ %321, %318 ], [ 0, %49 ]
  %58 = phi i64 [ %319, %318 ], [ 0, %49 ]
  %59 = phi i64 [ %320, %318 ], [ 0, %49 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %56, metadata !1512, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %57, metadata !1513, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 poison, metadata !1517, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %58, metadata !1515, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %59, metadata !1514, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1521, metadata !DIExpression()), !dbg !1599
  %60 = getelementptr inbounds ptr, ptr %9, i64 %58, !dbg !1605
  %61 = load ptr, ptr %60, align 8, !dbg !1605, !tbaa !846
  %62 = icmp eq ptr %61, null, !dbg !1605
  br i1 %62, label %165, label %63, !dbg !1606

63:                                               ; preds = %52
  call void @llvm.dbg.value(metadata ptr %61, metadata !1336, metadata !DIExpression()), !dbg !1607
  %64 = getelementptr inbounds %struct._IO_FILE, ptr %61, i64 0, i32 1, !dbg !1609
  %65 = load ptr, ptr %64, align 8, !dbg !1609, !tbaa !1345
  %66 = getelementptr inbounds %struct._IO_FILE, ptr %61, i64 0, i32 2, !dbg !1609
  %67 = load ptr, ptr %66, align 8, !dbg !1609, !tbaa !1347
  %68 = icmp ult ptr %65, %67, !dbg !1609
  br i1 %68, label %71, label %69, !dbg !1609, !prof !1348

69:                                               ; preds = %63
  %70 = tail call i32 @__uflow(ptr noundef nonnull %61) #37, !dbg !1609
  br label %75, !dbg !1609

71:                                               ; preds = %63
  %72 = getelementptr inbounds i8, ptr %65, i64 1, !dbg !1609
  store ptr %72, ptr %64, align 8, !dbg !1609, !tbaa !1345
  %73 = load i8, ptr %65, align 1, !dbg !1609, !tbaa !924
  %74 = zext i8 %73 to i32, !dbg !1609
  br label %75, !dbg !1609

75:                                               ; preds = %69, %71
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !1609
  call void @llvm.dbg.value(metadata i32 %76, metadata !1517, metadata !DIExpression()), !dbg !1599
  %77 = tail call ptr @__errno_location() #40, !dbg !1610
  %78 = load i32, ptr %77, align 4, !dbg !1610, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %78, metadata !1520, metadata !DIExpression()), !dbg !1599
  %79 = icmp ne i32 %76, -1, !dbg !1611
  %80 = icmp ne i64 %59, 0
  %81 = select i1 %79, i1 %80, i1 false, !dbg !1612
  br i1 %81, label %82, label %94, !dbg !1612

82:                                               ; preds = %75
  %83 = load ptr, ptr @stdout, align 8, !dbg !1613, !tbaa !846
  %84 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %59, ptr noundef %83), !dbg !1613
  %85 = icmp eq i64 %84, %59, !dbg !1614
  br i1 %85, label %94, label %86, !dbg !1615

86:                                               ; preds = %82
  %87 = load i32, ptr %77, align 4, !dbg !1616, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %87, metadata !1393, metadata !DIExpression()), !dbg !1618
  %88 = load ptr, ptr @stdout, align 8, !dbg !1619, !tbaa !846
  %89 = tail call i32 @fflush_unlocked(ptr noundef %88) #37, !dbg !1619
  %90 = load ptr, ptr @stdout, align 8, !dbg !1620, !tbaa !846
  %91 = tail call i32 @fpurge(ptr noundef %90) #37, !dbg !1621
  %92 = load ptr, ptr @stdout, align 8, !dbg !1622, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %92) #37, !dbg !1622
  %93 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1623
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %87, ptr noundef %93) #37, !dbg !1623
  unreachable, !dbg !1623

94:                                               ; preds = %82, %75
  %95 = phi i64 [ %59, %75 ], [ 0, %82 ], !dbg !1602
  call void @llvm.dbg.value(metadata i64 %95, metadata !1514, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 poison, metadata !1521, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 %78, metadata !1520, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 %76, metadata !1517, metadata !DIExpression()), !dbg !1599
  %96 = icmp eq i32 %76, -1, !dbg !1624
  br i1 %96, label %139, label %97, !dbg !1625

97:                                               ; preds = %94, %134
  %98 = phi i32 [ %135, %134 ], [ %76, %94 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 %98, metadata !1517, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8 1, metadata !1521, metadata !DIExpression()), !dbg !1599
  %99 = load i1, ptr @line_delim, align 1, !dbg !1626
  %100 = select i1 %99, i32 0, i32 10, !dbg !1626
  %101 = icmp eq i32 %98, %100, !dbg !1629
  br i1 %101, label %229, label %102, !dbg !1630

102:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i32 %98, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1631
  call void @llvm.dbg.value(metadata i32 %98, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1633
  %103 = load ptr, ptr @stdout, align 8, !dbg !1635, !tbaa !846
  %104 = getelementptr inbounds %struct._IO_FILE, ptr %103, i64 0, i32 5, !dbg !1635
  %105 = load ptr, ptr %104, align 8, !dbg !1635, !tbaa !1425
  %106 = getelementptr inbounds %struct._IO_FILE, ptr %103, i64 0, i32 6, !dbg !1635
  %107 = load ptr, ptr %106, align 8, !dbg !1635, !tbaa !1426
  %108 = icmp ult ptr %105, %107, !dbg !1635
  br i1 %108, label %109, label %112, !dbg !1635, !prof !1348

109:                                              ; preds = %102
  %110 = trunc i32 %98 to i8, !dbg !1636
  call void @llvm.dbg.value(metadata i8 %110, metadata !1409, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 %110, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1633
  %111 = getelementptr inbounds i8, ptr %105, i64 1, !dbg !1635
  store ptr %111, ptr %104, align 8, !dbg !1635, !tbaa !1425
  store i8 %110, ptr %105, align 1, !dbg !1635, !tbaa !924
  br label %124, !dbg !1637

112:                                              ; preds = %102
  %113 = and i32 %98, 255, !dbg !1638
  call void @llvm.dbg.value(metadata i32 %113, metadata !1416, metadata !DIExpression()), !dbg !1633
  %114 = tail call i32 @__overflow(ptr noundef nonnull %103, i32 noundef %113) #37, !dbg !1635
  %115 = icmp slt i32 %114, 0, !dbg !1639
  br i1 %115, label %116, label %124, !dbg !1637

116:                                              ; preds = %112
  %117 = load i32, ptr %77, align 4, !dbg !1640, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %117, metadata !1393, metadata !DIExpression()), !dbg !1642
  %118 = load ptr, ptr @stdout, align 8, !dbg !1643, !tbaa !846
  %119 = tail call i32 @fflush_unlocked(ptr noundef %118) #37, !dbg !1643
  %120 = load ptr, ptr @stdout, align 8, !dbg !1644, !tbaa !846
  %121 = tail call i32 @fpurge(ptr noundef %120) #37, !dbg !1645
  %122 = load ptr, ptr @stdout, align 8, !dbg !1646, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %122) #37, !dbg !1646
  %123 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1647
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %117, ptr noundef %123) #37, !dbg !1647
  unreachable, !dbg !1647

124:                                              ; preds = %109, %112
  call void @llvm.dbg.value(metadata ptr %61, metadata !1336, metadata !DIExpression()), !dbg !1648
  %125 = load ptr, ptr %64, align 8, !dbg !1650, !tbaa !1345
  %126 = load ptr, ptr %66, align 8, !dbg !1650, !tbaa !1347
  %127 = icmp ult ptr %125, %126, !dbg !1650
  br i1 %127, label %130, label %128, !dbg !1650, !prof !1348

128:                                              ; preds = %124
  %129 = tail call i32 @__uflow(ptr noundef nonnull %61) #37, !dbg !1650
  br label %134, !dbg !1650

130:                                              ; preds = %124
  %131 = getelementptr inbounds i8, ptr %125, i64 1, !dbg !1650
  store ptr %131, ptr %64, align 8, !dbg !1650, !tbaa !1345
  %132 = load i8, ptr %125, align 1, !dbg !1650, !tbaa !924
  %133 = zext i8 %132 to i32, !dbg !1650
  br label %134, !dbg !1650

134:                                              ; preds = %128, %130
  %135 = phi i32 [ %129, %128 ], [ %133, %130 ], !dbg !1650
  call void @llvm.dbg.value(metadata i32 %135, metadata !1517, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8 poison, metadata !1521, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1599
  %136 = icmp eq i32 %135, -1, !dbg !1624
  br i1 %136, label %137, label %97, !dbg !1625, !llvm.loop !1651

137:                                              ; preds = %134
  %138 = load i32, ptr %77, align 4, !dbg !1653, !tbaa !915
  call void @llvm.dbg.value(metadata i8 poison, metadata !1521, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 %138, metadata !1520, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 -1, metadata !1517, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %95, metadata !1514, metadata !DIExpression()), !dbg !1602
  br i1 %96, label %139, label %229, !dbg !1654

139:                                              ; preds = %94, %137
  %140 = phi i32 [ %138, %137 ], [ %78, %94 ]
  call void @llvm.dbg.value(metadata ptr %61, metadata !1473, metadata !DIExpression()), !dbg !1655
  %141 = load i32, ptr %61, align 8, !dbg !1660, !tbaa !1480
  %142 = and i32 %141, 32, !dbg !1661
  %143 = icmp eq i32 %142, 0, !dbg !1661
  %144 = select i1 %143, i32 0, i32 %140, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %144, metadata !1520, metadata !DIExpression()), !dbg !1599
  %145 = load ptr, ptr @stdin, align 8, !dbg !1663, !tbaa !846
  %146 = icmp eq ptr %61, %145, !dbg !1665
  br i1 %146, label %147, label %148, !dbg !1666

147:                                              ; preds = %139
  tail call void @clearerr_unlocked(ptr noundef nonnull %61) #37, !dbg !1667
  br label %155, !dbg !1667

148:                                              ; preds = %139
  %149 = tail call i32 @rpl_fclose(ptr noundef nonnull %61) #37, !dbg !1668
  %150 = icmp ne i32 %149, -1, !dbg !1670
  %151 = icmp ne i32 %144, 0
  %152 = select i1 %150, i1 true, i1 %151, !dbg !1671
  br i1 %152, label %155, label %153, !dbg !1671

153:                                              ; preds = %148
  %154 = load i32, ptr %77, align 4, !dbg !1672, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %154, metadata !1520, metadata !DIExpression()), !dbg !1599
  br label %155, !dbg !1673

155:                                              ; preds = %148, %153, %147
  %156 = phi i32 [ %144, %147 ], [ %144, %148 ], [ %154, %153 ], !dbg !1599
  call void @llvm.dbg.value(metadata i32 %156, metadata !1520, metadata !DIExpression()), !dbg !1599
  %157 = icmp eq i32 %156, 0, !dbg !1674
  br i1 %157, label %162, label %158, !dbg !1676

158:                                              ; preds = %155
  %159 = getelementptr inbounds ptr, ptr %1, i64 %58, !dbg !1677
  %160 = load ptr, ptr %159, align 8, !dbg !1677, !tbaa !846
  %161 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %160) #37, !dbg !1677
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %156, ptr noundef nonnull @.str.63, ptr noundef %161) #37, !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1504, metadata !DIExpression()), !dbg !1550
  br label %162, !dbg !1679

162:                                              ; preds = %158, %155
  %163 = phi i1 [ false, %158 ], [ %53, %155 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1504, metadata !DIExpression()), !dbg !1550
  store ptr null, ptr %60, align 8, !dbg !1680, !tbaa !846
  %164 = add i64 %54, -1, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %164, metadata !1508, metadata !DIExpression()), !dbg !1550
  br label %165, !dbg !1682

165:                                              ; preds = %52, %162
  %166 = phi i64 [ %95, %162 ], [ %59, %52 ]
  %167 = phi i64 [ %164, %162 ], [ %54, %52 ], !dbg !1550
  %168 = phi i1 [ %163, %162 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1504, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %167, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1599
  %169 = add nuw i64 %58, 1, !dbg !1683
  %170 = icmp eq i64 %169, %0, !dbg !1684
  br i1 %170, label %171, label %211, !dbg !1685

171:                                              ; preds = %165
  br i1 %55, label %172, label %45, !dbg !1686

172:                                              ; preds = %171
  %173 = icmp eq i64 %166, 0, !dbg !1687
  br i1 %173, label %187, label %174, !dbg !1688

174:                                              ; preds = %172
  %175 = load ptr, ptr @stdout, align 8, !dbg !1689, !tbaa !846
  %176 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %166, ptr noundef %175), !dbg !1689
  %177 = icmp eq i64 %176, %166, !dbg !1690
  br i1 %177, label %187, label %178, !dbg !1691

178:                                              ; preds = %174
  %179 = tail call ptr @__errno_location() #40, !dbg !1692
  %180 = load i32, ptr %179, align 4, !dbg !1692, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %180, metadata !1393, metadata !DIExpression()), !dbg !1694
  %181 = load ptr, ptr @stdout, align 8, !dbg !1695, !tbaa !846
  %182 = tail call i32 @fflush_unlocked(ptr noundef %181) #37, !dbg !1695
  %183 = load ptr, ptr @stdout, align 8, !dbg !1696, !tbaa !846
  %184 = tail call i32 @fpurge(ptr noundef %183) #37, !dbg !1697
  %185 = load ptr, ptr @stdout, align 8, !dbg !1698, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %185) #37, !dbg !1698
  %186 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1699
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %180, ptr noundef %186) #37, !dbg !1699
  unreachable, !dbg !1699

187:                                              ; preds = %174, %172
  call void @llvm.dbg.value(metadata i64 0, metadata !1514, metadata !DIExpression()), !dbg !1602
  %188 = load i1, ptr @line_delim, align 1, !dbg !1700
  %189 = select i1 %188, i8 0, i8 10, !dbg !1700
  call void @llvm.dbg.value(metadata i8 %189, metadata !1409, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %189, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1703
  %190 = load ptr, ptr @stdout, align 8, !dbg !1705, !tbaa !846
  %191 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 5, !dbg !1705
  %192 = load ptr, ptr %191, align 8, !dbg !1705, !tbaa !1425
  %193 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 6, !dbg !1705
  %194 = load ptr, ptr %193, align 8, !dbg !1705, !tbaa !1426
  %195 = icmp ult ptr %192, %194, !dbg !1705
  br i1 %195, label %196, label %198, !dbg !1705, !prof !1348

196:                                              ; preds = %187
  %197 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !1705
  store ptr %197, ptr %191, align 8, !dbg !1705, !tbaa !1425
  store i8 %189, ptr %192, align 1, !dbg !1705, !tbaa !924
  br label %45, !dbg !1706

198:                                              ; preds = %187
  %199 = zext i8 %189 to i32, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %199, metadata !1416, metadata !DIExpression()), !dbg !1703
  %200 = tail call i32 @__overflow(ptr noundef nonnull %190, i32 noundef %199) #37, !dbg !1705
  %201 = icmp slt i32 %200, 0, !dbg !1708
  br i1 %201, label %202, label %45, !dbg !1706

202:                                              ; preds = %198
  %203 = tail call ptr @__errno_location() #40, !dbg !1709
  %204 = load i32, ptr %203, align 4, !dbg !1709, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %204, metadata !1393, metadata !DIExpression()), !dbg !1711
  %205 = load ptr, ptr @stdout, align 8, !dbg !1712, !tbaa !846
  %206 = tail call i32 @fflush_unlocked(ptr noundef %205) #37, !dbg !1712
  %207 = load ptr, ptr @stdout, align 8, !dbg !1713, !tbaa !846
  %208 = tail call i32 @fpurge(ptr noundef %207) #37, !dbg !1714
  %209 = load ptr, ptr @stdout, align 8, !dbg !1715, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %209) #37, !dbg !1715
  %210 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1716
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %204, ptr noundef %210) #37, !dbg !1716
  unreachable, !dbg !1716

211:                                              ; preds = %165
  %212 = load ptr, ptr @delim_lens, align 8, !dbg !1717, !tbaa !846
  %213 = getelementptr inbounds i64, ptr %212, i64 %56, !dbg !1717
  %214 = load i64, ptr %213, align 8, !dbg !1717, !tbaa !1137
  call void @llvm.dbg.value(metadata i64 %214, metadata !1544, metadata !DIExpression()), !dbg !1718
  %215 = icmp eq i64 %214, 0, !dbg !1719
  br i1 %215, label %221, label %216, !dbg !1721

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %7, i64 %166, !dbg !1722
  %218 = load ptr, ptr @delims, align 8, !dbg !1724, !tbaa !846
  %219 = getelementptr inbounds i8, ptr %218, i64 %57, !dbg !1725
  call void @llvm.dbg.value(metadata ptr %217, metadata !1726, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr %219, metadata !1729, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i64 %214, metadata !1730, metadata !DIExpression()), !dbg !1731
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %217, ptr noundef nonnull align 1 %219, i64 noundef %214, i1 noundef false) #37, !dbg !1733
  %220 = add i64 %214, %166, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %220, metadata !1514, metadata !DIExpression()), !dbg !1602
  br label %221, !dbg !1735

221:                                              ; preds = %216, %211
  %222 = phi i64 [ %220, %216 ], [ %166, %211 ], !dbg !1599
  call void @llvm.dbg.value(metadata i64 %222, metadata !1514, metadata !DIExpression()), !dbg !1602
  %223 = add i64 %214, %57, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %223, metadata !1513, metadata !DIExpression()), !dbg !1602
  %224 = add nsw i64 %56, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %224, metadata !1512, metadata !DIExpression()), !dbg !1602
  %225 = load i64, ptr @num_delims, align 8, !dbg !1739, !tbaa !1137
  %226 = icmp eq i64 %224, %225, !dbg !1740
  %227 = select i1 %226, i64 0, i64 %223, !dbg !1741
  %228 = select i1 %226, i64 0, i64 %224, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %228, metadata !1512, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %227, metadata !1513, metadata !DIExpression()), !dbg !1602
  br label %318, !dbg !1742

229:                                              ; preds = %97, %137
  %230 = phi i32 [ -1, %137 ], [ %98, %97 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1510, metadata !DIExpression()), !dbg !1602
  %231 = add nuw i64 %58, 1, !dbg !1743
  %232 = icmp eq i64 %231, %0, !dbg !1744
  br i1 %232, label %292, label %233, !dbg !1745

233:                                              ; preds = %229
  %234 = load i1, ptr @line_delim, align 1, !dbg !1746
  %235 = select i1 %234, i32 0, i32 10, !dbg !1746
  %236 = icmp ne i32 %230, %235, !dbg !1749
  %237 = icmp ne i32 %230, -1
  %238 = and i1 %237, %236, !dbg !1750
  br i1 %238, label %239, label %261, !dbg !1750

239:                                              ; preds = %233
  call void @llvm.dbg.value(metadata i32 %230, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1751
  call void @llvm.dbg.value(metadata i32 %230, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1753
  %240 = load ptr, ptr @stdout, align 8, !dbg !1755, !tbaa !846
  %241 = getelementptr inbounds %struct._IO_FILE, ptr %240, i64 0, i32 5, !dbg !1755
  %242 = load ptr, ptr %241, align 8, !dbg !1755, !tbaa !1425
  %243 = getelementptr inbounds %struct._IO_FILE, ptr %240, i64 0, i32 6, !dbg !1755
  %244 = load ptr, ptr %243, align 8, !dbg !1755, !tbaa !1426
  %245 = icmp ult ptr %242, %244, !dbg !1755
  br i1 %245, label %246, label %249, !dbg !1755, !prof !1348

246:                                              ; preds = %239
  %247 = trunc i32 %230 to i8, !dbg !1756
  call void @llvm.dbg.value(metadata i8 %247, metadata !1409, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %247, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1753
  %248 = getelementptr inbounds i8, ptr %242, i64 1, !dbg !1755
  store ptr %248, ptr %241, align 8, !dbg !1755, !tbaa !1425
  store i8 %247, ptr %242, align 1, !dbg !1755, !tbaa !924
  br label %261, !dbg !1757

249:                                              ; preds = %239
  %250 = and i32 %230, 255, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %250, metadata !1416, metadata !DIExpression()), !dbg !1753
  %251 = tail call i32 @__overflow(ptr noundef nonnull %240, i32 noundef %250) #37, !dbg !1755
  %252 = icmp slt i32 %251, 0, !dbg !1759
  br i1 %252, label %253, label %261, !dbg !1757

253:                                              ; preds = %249
  %254 = load i32, ptr %77, align 4, !dbg !1760, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %254, metadata !1393, metadata !DIExpression()), !dbg !1762
  %255 = load ptr, ptr @stdout, align 8, !dbg !1763, !tbaa !846
  %256 = tail call i32 @fflush_unlocked(ptr noundef %255) #37, !dbg !1763
  %257 = load ptr, ptr @stdout, align 8, !dbg !1764, !tbaa !846
  %258 = tail call i32 @fpurge(ptr noundef %257) #37, !dbg !1765
  %259 = load ptr, ptr @stdout, align 8, !dbg !1766, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %259) #37, !dbg !1766
  %260 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1767
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %254, ptr noundef %260) #37, !dbg !1767
  unreachable, !dbg !1767

261:                                              ; preds = %249, %246, %233
  %262 = load ptr, ptr @delim_lens, align 8, !dbg !1768, !tbaa !846
  %263 = getelementptr inbounds i64, ptr %262, i64 %56, !dbg !1768
  %264 = load i64, ptr %263, align 8, !dbg !1768, !tbaa !1137
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1369, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %264, metadata !1374, metadata !DIExpression()), !dbg !1769
  %265 = icmp eq i64 %264, 0, !dbg !1771
  br i1 %265, label %284, label %266, !dbg !1772

266:                                              ; preds = %261
  %267 = load ptr, ptr @delims, align 8, !dbg !1773, !tbaa !846
  call void @llvm.dbg.value(metadata !DIArgList(ptr %267, i64 %57), metadata !1369, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1769
  %268 = getelementptr inbounds i8, ptr %267, i64 %57, !dbg !1774
  call void @llvm.dbg.value(metadata ptr %268, metadata !1369, metadata !DIExpression()), !dbg !1769
  %269 = load ptr, ptr @stdout, align 8, !dbg !1775, !tbaa !846
  %270 = tail call i64 @fwrite_unlocked(ptr noundef %268, i64 noundef 1, i64 noundef %264, ptr noundef %269), !dbg !1775
  %271 = icmp eq i64 %270, %264, !dbg !1776
  br i1 %271, label %272, label %276, !dbg !1777

272:                                              ; preds = %266
  %273 = load ptr, ptr @delim_lens, align 8, !dbg !1778, !tbaa !846
  %274 = getelementptr inbounds i64, ptr %273, i64 %56
  %275 = load i64, ptr %274, align 8, !dbg !1778, !tbaa !1137
  br label %284, !dbg !1777

276:                                              ; preds = %266
  %277 = load i32, ptr %77, align 4, !dbg !1779, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %277, metadata !1393, metadata !DIExpression()), !dbg !1781
  %278 = load ptr, ptr @stdout, align 8, !dbg !1782, !tbaa !846
  %279 = tail call i32 @fflush_unlocked(ptr noundef %278) #37, !dbg !1782
  %280 = load ptr, ptr @stdout, align 8, !dbg !1783, !tbaa !846
  %281 = tail call i32 @fpurge(ptr noundef %280) #37, !dbg !1784
  %282 = load ptr, ptr @stdout, align 8, !dbg !1785, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %282) #37, !dbg !1785
  %283 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1786
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %277, ptr noundef %283) #37, !dbg !1786
  unreachable, !dbg !1786

284:                                              ; preds = %272, %261
  %285 = phi i64 [ %275, %272 ], [ 0, %261 ], !dbg !1778
  %286 = add i64 %285, %57, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %286, metadata !1513, metadata !DIExpression()), !dbg !1602
  %287 = add nsw i64 %56, 1, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %287, metadata !1512, metadata !DIExpression()), !dbg !1602
  %288 = load i64, ptr @num_delims, align 8, !dbg !1790, !tbaa !1137
  %289 = icmp eq i64 %287, %288, !dbg !1791
  %290 = select i1 %289, i64 0, i64 %286, !dbg !1792
  %291 = select i1 %289, i64 0, i64 %287, !dbg !1792
  br label %318, !dbg !1792

292:                                              ; preds = %229
  %293 = icmp eq i32 %230, -1, !dbg !1793
  %294 = load i1, ptr @line_delim, align 1, !dbg !1794
  %295 = select i1 %294, i32 0, i32 10, !dbg !1794
  %296 = select i1 %293, i32 %295, i32 %230, !dbg !1794
  call void @llvm.dbg.value(metadata i32 %296, metadata !1546, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1795
  call void @llvm.dbg.value(metadata i32 %296, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %296, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1798
  %297 = load ptr, ptr @stdout, align 8, !dbg !1800, !tbaa !846
  %298 = getelementptr inbounds %struct._IO_FILE, ptr %297, i64 0, i32 5, !dbg !1800
  %299 = load ptr, ptr %298, align 8, !dbg !1800, !tbaa !1425
  %300 = getelementptr inbounds %struct._IO_FILE, ptr %297, i64 0, i32 6, !dbg !1800
  %301 = load ptr, ptr %300, align 8, !dbg !1800, !tbaa !1426
  %302 = icmp ult ptr %299, %301, !dbg !1800
  br i1 %302, label %303, label %306, !dbg !1800, !prof !1348

303:                                              ; preds = %292
  %304 = trunc i32 %296 to i8, !dbg !1801
  call void @llvm.dbg.value(metadata i8 %304, metadata !1546, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 %304, metadata !1409, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %304, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1798
  %305 = getelementptr inbounds i8, ptr %299, i64 1, !dbg !1800
  store ptr %305, ptr %298, align 8, !dbg !1800, !tbaa !1425
  store i8 %304, ptr %299, align 1, !dbg !1800, !tbaa !924
  br label %318, !dbg !1802

306:                                              ; preds = %292
  %307 = and i32 %296, 255, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %307, metadata !1416, metadata !DIExpression()), !dbg !1798
  %308 = tail call i32 @__overflow(ptr noundef nonnull %297, i32 noundef %307) #37, !dbg !1800
  %309 = icmp slt i32 %308, 0, !dbg !1804
  br i1 %309, label %310, label %318, !dbg !1802

310:                                              ; preds = %306
  %311 = load i32, ptr %77, align 4, !dbg !1805, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %311, metadata !1393, metadata !DIExpression()), !dbg !1807
  %312 = load ptr, ptr @stdout, align 8, !dbg !1808, !tbaa !846
  %313 = tail call i32 @fflush_unlocked(ptr noundef %312) #37, !dbg !1808
  %314 = load ptr, ptr @stdout, align 8, !dbg !1809, !tbaa !846
  %315 = tail call i32 @fpurge(ptr noundef %314) #37, !dbg !1810
  %316 = load ptr, ptr @stdout, align 8, !dbg !1811, !tbaa !846
  tail call void @clearerr_unlocked(ptr noundef %316) #37, !dbg !1811
  %317 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1812
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %311, ptr noundef %317) #37, !dbg !1812
  unreachable, !dbg !1812

318:                                              ; preds = %306, %303, %284, %221
  %319 = phi i64 [ %231, %306 ], [ %231, %303 ], [ %231, %284 ], [ %169, %221 ], !dbg !1813
  %320 = phi i64 [ %95, %306 ], [ %95, %303 ], [ %95, %284 ], [ %222, %221 ], !dbg !1599
  %321 = phi i64 [ %57, %306 ], [ %57, %303 ], [ %290, %284 ], [ %227, %221 ], !dbg !1602
  %322 = phi i64 [ %56, %306 ], [ %56, %303 ], [ %291, %284 ], [ %228, %221 ], !dbg !1602
  %323 = phi i1 [ true, %306 ], [ true, %303 ], [ true, %284 ], [ %55, %221 ]
  %324 = phi i64 [ %54, %306 ], [ %54, %303 ], [ %54, %284 ], [ %167, %221 ], !dbg !1550
  %325 = phi i1 [ %53, %306 ], [ %53, %303 ], [ %53, %284 ], [ %168, %221 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1504, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %324, metadata !1508, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 poison, metadata !1510, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %322, metadata !1512, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %321, metadata !1513, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 poison, metadata !1520, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %320, metadata !1514, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 poison, metadata !1517, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %319, metadata !1515, metadata !DIExpression()), !dbg !1603
  %326 = icmp ult i64 %319, %0, !dbg !1814
  %327 = icmp ne i64 %324, 0, !dbg !1815
  %328 = select i1 %326, i1 %327, i1 false, !dbg !1815
  br i1 %328, label %52, label %45, !dbg !1604, !llvm.loop !1816

329:                                              ; preds = %45, %2
  %330 = phi i1 [ true, %2 ], [ %47, %45 ]
  tail call void @free(ptr noundef nonnull %9) #37, !dbg !1818
  tail call void @free(ptr noundef nonnull %7) #37, !dbg !1819
  ret i1 %330, !dbg !1820
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1821 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1824 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1828 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1831 i32 @fileno_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1832 i32 @__uflow(ptr noundef) local_unnamed_addr #3

declare !dbg !1833 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1834 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1837 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1840 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1842, metadata !DIExpression()), !dbg !1843
  store ptr %0, ptr @file_name, align 8, !dbg !1844, !tbaa !846
  ret void, !dbg !1845
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1846 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1850, metadata !DIExpression()), !dbg !1851
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1852, !tbaa !1853
  ret void, !dbg !1855
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1856 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1861, !tbaa !846
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1862
  %3 = icmp eq i32 %2, 0, !dbg !1863
  br i1 %3, label %22, label %4, !dbg !1864

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1865, !tbaa !1853, !range !1866, !noundef !855
  %6 = icmp eq i8 %5, 0, !dbg !1865
  br i1 %6, label %11, label %7, !dbg !1867

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1868
  %9 = load i32, ptr %8, align 4, !dbg !1868, !tbaa !915
  %10 = icmp eq i32 %9, 32, !dbg !1869
  br i1 %10, label %22, label %11, !dbg !1870

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1.30, i32 noundef 5) #37, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %12, metadata !1858, metadata !DIExpression()), !dbg !1872
  %13 = load ptr, ptr @file_name, align 8, !dbg !1873, !tbaa !846
  %14 = icmp eq ptr %13, null, !dbg !1873
  %15 = tail call ptr @__errno_location() #40, !dbg !1875
  %16 = load i32, ptr %15, align 4, !dbg !1875, !tbaa !915
  br i1 %14, label %19, label %17, !dbg !1876

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1877
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.31, ptr noundef %18, ptr noundef %12) #37, !dbg !1877
  br label %20, !dbg !1877

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.32, ptr noundef %12) #37, !dbg !1878
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1879, !tbaa !915
  tail call void @_exit(i32 noundef %21) #39, !dbg !1880
  unreachable, !dbg !1880

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1881, !tbaa !846
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1883
  %25 = icmp eq i32 %24, 0, !dbg !1884
  br i1 %25, label %28, label %26, !dbg !1885

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1886, !tbaa !915
  tail call void @_exit(i32 noundef %27) #39, !dbg !1887
  unreachable, !dbg !1887

28:                                               ; preds = %22
  ret void, !dbg !1888
}

; Function Attrs: noreturn
declare !dbg !1889 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1891 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1895, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %1, metadata !1896, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata ptr %2, metadata !1897, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1898, metadata !DIExpression()), !dbg !1900
  tail call fastcc void @flush_stdout(), !dbg !1901
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1902, !tbaa !846
  %7 = icmp eq ptr %6, null, !dbg !1902
  br i1 %7, label %9, label %8, !dbg !1904

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1905
  br label %13, !dbg !1905

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1906, !tbaa !846
  %11 = tail call ptr @getprogname() #38, !dbg !1906
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %11) #37, !dbg !1906
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1908, !tbaa.struct !1909
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1908
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1908
  ret void, !dbg !1910
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1911 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1913, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i32 1, metadata !1915, metadata !DIExpression()), !dbg !1918
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1921
  %2 = icmp slt i32 %1, 0, !dbg !1922
  br i1 %2, label %6, label %3, !dbg !1923

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1924, !tbaa !846
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1924
  br label %6, !dbg !1924

6:                                                ; preds = %3, %0
  ret void, !dbg !1925
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1926 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %1, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %2, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1931, metadata !DIExpression()), !dbg !1933
  %7 = load ptr, ptr @stderr, align 8, !dbg !1934, !tbaa !846
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1935, !noalias !1979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1983
  call void @llvm.dbg.value(metadata ptr %7, metadata !1975, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %2, metadata !1976, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1977, metadata !DIExpression()), !dbg !1985
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1935
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1935, !noalias !1979
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1986, !tbaa !915
  %10 = add i32 %9, 1, !dbg !1986
  store i32 %10, ptr @error_message_count, align 4, !dbg !1986, !tbaa !915
  %11 = icmp eq i32 %1, 0, !dbg !1987
  br i1 %11, label %21, label %12, !dbg !1989

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1990, metadata !DIExpression()), !dbg !1998
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !2000
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1994, metadata !DIExpression()), !dbg !2001
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !2002
  call void @llvm.dbg.value(metadata ptr %13, metadata !1993, metadata !DIExpression()), !dbg !1998
  %14 = icmp eq ptr %13, null, !dbg !2003
  br i1 %14, label %15, label %17, !dbg !2005

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.34, ptr noundef nonnull @.str.5.35, i32 noundef 5) #37, !dbg !2006
  call void @llvm.dbg.value(metadata ptr %16, metadata !1993, metadata !DIExpression()), !dbg !1998
  br label %17, !dbg !2007

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1998
  call void @llvm.dbg.value(metadata ptr %18, metadata !1993, metadata !DIExpression()), !dbg !1998
  %19 = load ptr, ptr @stderr, align 8, !dbg !2008, !tbaa !846
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.36, ptr noundef %18) #37, !dbg !2008
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !2009
  br label %21, !dbg !2010

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2011, !tbaa !846
  call void @llvm.dbg.value(metadata i32 10, metadata !2012, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata ptr %22, metadata !2017, metadata !DIExpression()), !dbg !2018
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2020
  %24 = load ptr, ptr %23, align 8, !dbg !2020, !tbaa !1425
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2020
  %26 = load ptr, ptr %25, align 8, !dbg !2020, !tbaa !1426
  %27 = icmp ult ptr %24, %26, !dbg !2020
  br i1 %27, label %30, label %28, !dbg !2020, !prof !1348

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !2020
  br label %32, !dbg !2020

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2020
  store ptr %31, ptr %23, align 8, !dbg !2020, !tbaa !1425
  store i8 10, ptr %24, align 1, !dbg !2020, !tbaa !924
  br label %32, !dbg !2020

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2021, !tbaa !846
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !2021
  %35 = icmp eq i32 %0, 0, !dbg !2022
  br i1 %35, label %37, label %36, !dbg !2024

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !2025
  unreachable, !dbg !2025

37:                                               ; preds = %32
  ret void, !dbg !2026
}

declare !dbg !2027 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2030 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2033 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2037 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2041, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %1, metadata !2042, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %2, metadata !2043, metadata !DIExpression()), !dbg !2045
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2044, metadata !DIExpression()), !dbg !2047
  call void @llvm.va_start(ptr nonnull %4), !dbg !2048
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2049, !tbaa.struct !1909
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !2049
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2049
  call void @llvm.va_end(ptr nonnull %4), !dbg !2050
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !2051
  ret void, !dbg !2051
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !451 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !468, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 %1, metadata !469, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata ptr %2, metadata !470, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 %3, metadata !471, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata ptr %4, metadata !472, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %5, metadata !473, metadata !DIExpression()), !dbg !2053
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2054, !tbaa !915
  %9 = icmp eq i32 %8, 0, !dbg !2054
  br i1 %9, label %24, label %10, !dbg !2056

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2057, !tbaa !915
  %12 = icmp eq i32 %11, %3, !dbg !2060
  br i1 %12, label %13, label %23, !dbg !2061

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2062, !tbaa !846
  %15 = icmp eq ptr %14, %2, !dbg !2063
  br i1 %15, label %37, label %16, !dbg !2064

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2065
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2066
  br i1 %19, label %20, label %23, !dbg !2066

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2067
  %22 = icmp eq i32 %21, 0, !dbg !2068
  br i1 %22, label %37, label %23, !dbg !2069

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2070, !tbaa !846
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2071, !tbaa !915
  br label %24, !dbg !2072

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2073
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2074, !tbaa !846
  %26 = icmp eq ptr %25, null, !dbg !2074
  br i1 %26, label %28, label %27, !dbg !2076

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !2077
  br label %32, !dbg !2077

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2078, !tbaa !846
  %30 = tail call ptr @getprogname() #38, !dbg !2078
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.39, ptr noundef %30) #37, !dbg !2078
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2080, !tbaa !846
  %34 = icmp eq ptr %2, null, !dbg !2080
  %35 = select i1 %34, ptr @.str.3.40, ptr @.str.2.41, !dbg !2080
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !2080
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !2081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2081, !tbaa.struct !1909
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2081
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !2081
  br label %37, !dbg !2082

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2082
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2083 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2087, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %1, metadata !2088, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata ptr %2, metadata !2089, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %3, metadata !2090, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata ptr %4, metadata !2091, metadata !DIExpression()), !dbg !2093
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2094
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.va_start(ptr nonnull %6), !dbg !2096
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !2097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2097, !tbaa.struct !1909
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !2097
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !2097
  call void @llvm.va_end(ptr nonnull %6), !dbg !2098
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2099
  ret void, !dbg !2099
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2106, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i64 %1, metadata !2107, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i64 %2, metadata !2108, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i32 %3, metadata !2109, metadata !DIExpression()), !dbg !2110
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #37, !dbg !2111
  ret void, !dbg !2112
}

; Function Attrs: nounwind
declare !dbg !2113 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2116 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2154, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %1, metadata !2155, metadata !DIExpression()), !dbg !2156
  %3 = icmp eq ptr %0, null, !dbg !2157
  br i1 %3, label %7, label %4, !dbg !2159

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2160
  call void @llvm.dbg.value(metadata i32 %5, metadata !2106, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 0, metadata !2107, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 0, metadata !2108, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i32 %1, metadata !2109, metadata !DIExpression()), !dbg !2161
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #37, !dbg !2163
  br label %7, !dbg !2164

7:                                                ; preds = %4, %2
  ret void, !dbg !2165
}

; Function Attrs: nofree nounwind
declare !dbg !2166 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2169 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2207, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 0, metadata !2208, metadata !DIExpression()), !dbg !2211
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %2, metadata !2209, metadata !DIExpression()), !dbg !2211
  %3 = icmp slt i32 %2, 0, !dbg !2213
  br i1 %3, label %4, label %6, !dbg !2215

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2216
  br label %24, !dbg !2217

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2218
  %8 = icmp eq i32 %7, 0, !dbg !2218
  br i1 %8, label %13, label %9, !dbg !2220

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2221
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !2222
  %12 = icmp eq i64 %11, -1, !dbg !2223
  br i1 %12, label %16, label %13, !dbg !2224

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !2225
  %15 = icmp eq i32 %14, 0, !dbg !2225
  br i1 %15, label %16, label %18, !dbg !2226

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2208, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()), !dbg !2211
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2227
  call void @llvm.dbg.value(metadata i32 %17, metadata !2210, metadata !DIExpression()), !dbg !2211
  br label %24, !dbg !2228

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !2229
  %20 = load i32, ptr %19, align 4, !dbg !2229, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %20, metadata !2208, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()), !dbg !2211
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2227
  call void @llvm.dbg.value(metadata i32 %21, metadata !2210, metadata !DIExpression()), !dbg !2211
  %22 = icmp eq i32 %20, 0, !dbg !2230
  br i1 %22, label %24, label %23, !dbg !2228

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2232, !tbaa !915
  call void @llvm.dbg.value(metadata i32 -1, metadata !2210, metadata !DIExpression()), !dbg !2211
  br label %24, !dbg !2234

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2211
  ret i32 %25, !dbg !2235
}

; Function Attrs: nofree nounwind
declare !dbg !2236 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2237 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2239 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2242 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2280, metadata !DIExpression()), !dbg !2281
  %2 = icmp eq ptr %0, null, !dbg !2282
  br i1 %2, label %6, label %3, !dbg !2284

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2285
  %5 = icmp eq i32 %4, 0, !dbg !2285
  br i1 %5, label %6, label %8, !dbg !2286

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2287
  br label %16, !dbg !2288

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2289, metadata !DIExpression()), !dbg !2294
  %9 = load i32, ptr %0, align 8, !dbg !2296, !tbaa !1480
  %10 = and i32 %9, 256, !dbg !2298
  %11 = icmp eq i32 %10, 0, !dbg !2298
  br i1 %11, label %14, label %12, !dbg !2299

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !2300
  br label %14, !dbg !2300

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2301
  br label %16, !dbg !2302

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2281
  ret i32 %17, !dbg !2303
}

; Function Attrs: nofree nounwind
declare !dbg !2304 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2305 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2343, metadata !DIExpression()), !dbg !2344
  tail call void @__fpurge(ptr noundef nonnull %0) #37, !dbg !2345
  ret i32 0, !dbg !2346
}

; Function Attrs: nounwind
declare !dbg !2347 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2350 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2388, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %1, metadata !2389, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %2, metadata !2390, metadata !DIExpression()), !dbg !2394
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2395
  %5 = load ptr, ptr %4, align 8, !dbg !2395, !tbaa !1347
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2396
  %7 = load ptr, ptr %6, align 8, !dbg !2396, !tbaa !1345
  %8 = icmp eq ptr %5, %7, !dbg !2397
  br i1 %8, label %9, label %27, !dbg !2398

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2399
  %11 = load ptr, ptr %10, align 8, !dbg !2399, !tbaa !1425
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2400
  %13 = load ptr, ptr %12, align 8, !dbg !2400, !tbaa !2401
  %14 = icmp eq ptr %11, %13, !dbg !2402
  br i1 %14, label %15, label %27, !dbg !2403

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2404
  %17 = load ptr, ptr %16, align 8, !dbg !2404, !tbaa !2405
  %18 = icmp eq ptr %17, null, !dbg !2406
  br i1 %18, label %19, label %27, !dbg !2407

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2408
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %21, metadata !2391, metadata !DIExpression()), !dbg !2410
  %22 = icmp eq i64 %21, -1, !dbg !2411
  br i1 %22, label %29, label %23, !dbg !2413

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2414, !tbaa !1480
  %25 = and i32 %24, -17, !dbg !2414
  store i32 %25, ptr %0, align 8, !dbg !2414, !tbaa !1480
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2415
  store i64 %21, ptr %26, align 8, !dbg !2416, !tbaa !2417
  br label %29, !dbg !2418

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2419
  br label %29, !dbg !2420

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2394
  ret i32 %30, !dbg !2421
}

; Function Attrs: nofree nounwind
declare !dbg !2422 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2425 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2428, !tbaa !846
  ret ptr %1, !dbg !2429
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2430 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2432, metadata !DIExpression()), !dbg !2435
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !2436
  call void @llvm.dbg.value(metadata ptr %2, metadata !2433, metadata !DIExpression()), !dbg !2435
  %3 = icmp eq ptr %2, null, !dbg !2437
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2437
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2437
  call void @llvm.dbg.value(metadata ptr %5, metadata !2434, metadata !DIExpression()), !dbg !2435
  %6 = ptrtoint ptr %5 to i64, !dbg !2438
  %7 = ptrtoint ptr %0 to i64, !dbg !2438
  %8 = sub i64 %6, %7, !dbg !2438
  %9 = icmp sgt i64 %8, 6, !dbg !2440
  br i1 %9, label %10, label %19, !dbg !2441

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2442
  call void @llvm.dbg.value(metadata ptr %11, metadata !2443, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata ptr @.str.66, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i64 7, metadata !2449, metadata !DIExpression()), !dbg !2450
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.66, i64 7), !dbg !2452
  %13 = icmp eq i32 %12, 0, !dbg !2453
  br i1 %13, label %14, label %19, !dbg !2454

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2432, metadata !DIExpression()), !dbg !2435
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.67, i64 noundef 3) #38, !dbg !2455
  %16 = icmp eq i32 %15, 0, !dbg !2458
  %17 = select i1 %16, i64 3, i64 0, !dbg !2459
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2459
  br label %19, !dbg !2459

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2435
  call void @llvm.dbg.value(metadata ptr %21, metadata !2434, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata ptr %20, metadata !2432, metadata !DIExpression()), !dbg !2435
  store ptr %20, ptr @program_name, align 8, !dbg !2460, !tbaa !846
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2461, !tbaa !846
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2462, !tbaa !846
  ret void, !dbg !2463
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2464 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !510 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !517, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata ptr %1, metadata !518, metadata !DIExpression()), !dbg !2465
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !2466
  call void @llvm.dbg.value(metadata ptr %5, metadata !519, metadata !DIExpression()), !dbg !2465
  %6 = icmp eq ptr %5, %0, !dbg !2467
  br i1 %6, label %7, label %14, !dbg !2469

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !2470
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !2471
  call void @llvm.dbg.declare(metadata ptr %4, metadata !525, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %4, metadata !2473, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata ptr %4, metadata !2482, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 0, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 8, metadata !2488, metadata !DIExpression()), !dbg !2489
  store i64 0, ptr %4, align 8, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %3, metadata !520, metadata !DIExpression(DW_OP_deref)), !dbg !2465
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !2492
  %9 = icmp eq i64 %8, 2, !dbg !2494
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !520, metadata !DIExpression()), !dbg !2465
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2495
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !2496
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !2496
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2465
  ret ptr %15, !dbg !2496
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2497 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2502, metadata !DIExpression()), !dbg !2505
  %2 = tail call ptr @__errno_location() #40, !dbg !2506
  %3 = load i32, ptr %2, align 4, !dbg !2506, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %3, metadata !2503, metadata !DIExpression()), !dbg !2505
  %4 = icmp eq ptr %0, null, !dbg !2507
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2507
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !2508
  call void @llvm.dbg.value(metadata ptr %6, metadata !2504, metadata !DIExpression()), !dbg !2505
  store i32 %3, ptr %2, align 4, !dbg !2509, !tbaa !915
  ret ptr %6, !dbg !2510
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !2511 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2518
  %2 = icmp eq ptr %0, null, !dbg !2519
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2519
  %4 = load i32, ptr %3, align 8, !dbg !2520, !tbaa !2521
  ret i32 %4, !dbg !2523
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2524 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 %1, metadata !2529, metadata !DIExpression()), !dbg !2530
  %3 = icmp eq ptr %0, null, !dbg !2531
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2531
  store i32 %1, ptr %4, align 8, !dbg !2532, !tbaa !2521
  ret void, !dbg !2533
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2534 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2538, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 %1, metadata !2539, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %2, metadata !2540, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 %1, metadata !2541, metadata !DIExpression()), !dbg !2546
  %4 = icmp eq ptr %0, null, !dbg !2547
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2547
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2548
  %7 = lshr i8 %1, 5, !dbg !2549
  %8 = zext i8 %7 to i64, !dbg !2549
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2550
  call void @llvm.dbg.value(metadata ptr %9, metadata !2542, metadata !DIExpression()), !dbg !2546
  %10 = and i8 %1, 31, !dbg !2551
  %11 = zext i8 %10 to i32, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %11, metadata !2544, metadata !DIExpression()), !dbg !2546
  %12 = load i32, ptr %9, align 4, !dbg !2552, !tbaa !915
  %13 = lshr i32 %12, %11, !dbg !2553
  %14 = and i32 %13, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %14, metadata !2545, metadata !DIExpression()), !dbg !2546
  %15 = xor i32 %13, %2, !dbg !2555
  %16 = and i32 %15, 1, !dbg !2555
  %17 = shl nuw i32 %16, %11, !dbg !2556
  %18 = xor i32 %17, %12, !dbg !2557
  store i32 %18, ptr %9, align 4, !dbg !2557, !tbaa !915
  ret i32 %14, !dbg !2558
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2559 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2563, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %1, metadata !2564, metadata !DIExpression()), !dbg !2566
  %3 = icmp eq ptr %0, null, !dbg !2567
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2569
  call void @llvm.dbg.value(metadata ptr %4, metadata !2563, metadata !DIExpression()), !dbg !2566
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2570
  %6 = load i32, ptr %5, align 4, !dbg !2570, !tbaa !2571
  call void @llvm.dbg.value(metadata i32 %6, metadata !2565, metadata !DIExpression()), !dbg !2566
  store i32 %1, ptr %5, align 4, !dbg !2572, !tbaa !2571
  ret i32 %6, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2574 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %1, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %2, metadata !2580, metadata !DIExpression()), !dbg !2581
  %4 = icmp eq ptr %0, null, !dbg !2582
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2584
  call void @llvm.dbg.value(metadata ptr %5, metadata !2578, metadata !DIExpression()), !dbg !2581
  store i32 10, ptr %5, align 8, !dbg !2585, !tbaa !2521
  %6 = icmp ne ptr %1, null, !dbg !2586
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2588
  br i1 %8, label %10, label %9, !dbg !2588

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2589
  unreachable, !dbg !2589

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2590
  store ptr %1, ptr %11, align 8, !dbg !2591, !tbaa !2592
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2593
  store ptr %2, ptr %12, align 8, !dbg !2594, !tbaa !2595
  ret void, !dbg !2596
}

; Function Attrs: noreturn nounwind
declare !dbg !2597 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2598 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %1, metadata !2603, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %2, metadata !2604, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %3, metadata !2605, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %4, metadata !2606, metadata !DIExpression()), !dbg !2610
  %6 = icmp eq ptr %4, null, !dbg !2611
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2611
  call void @llvm.dbg.value(metadata ptr %7, metadata !2607, metadata !DIExpression()), !dbg !2610
  %8 = tail call ptr @__errno_location() #40, !dbg !2612
  %9 = load i32, ptr %8, align 4, !dbg !2612, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %9, metadata !2608, metadata !DIExpression()), !dbg !2610
  %10 = load i32, ptr %7, align 8, !dbg !2613, !tbaa !2521
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2614
  %12 = load i32, ptr %11, align 4, !dbg !2614, !tbaa !2571
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2615
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2616
  %15 = load ptr, ptr %14, align 8, !dbg !2616, !tbaa !2592
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2617
  %17 = load ptr, ptr %16, align 8, !dbg !2617, !tbaa !2595
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %18, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i32 %9, ptr %8, align 4, !dbg !2619, !tbaa !915
  ret i64 %18, !dbg !2620
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2621 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2627, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %1, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %2, metadata !2629, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %3, metadata !2630, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 %4, metadata !2631, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 %5, metadata !2632, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %6, metadata !2633, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %7, metadata !2634, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %8, metadata !2635, metadata !DIExpression()), !dbg !2689
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2690
  %17 = icmp eq i64 %16, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i1 %17, metadata !2636, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2689
  call void @llvm.dbg.value(metadata i64 0, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 0, metadata !2638, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr null, metadata !2639, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 0, metadata !2640, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2641, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 %5, metadata !2642, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 1, metadata !2644, metadata !DIExpression()), !dbg !2689
  %18 = and i32 %5, 2, !dbg !2692
  %19 = icmp ne i32 %18, 0, !dbg !2692
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2692

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2693
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2694
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2695
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2644, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2642, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2641, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %34, metadata !2640, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %33, metadata !2639, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %32, metadata !2638, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 0, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %31, metadata !2630, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %30, metadata !2635, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %29, metadata !2634, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 %28, metadata !2631, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.label(metadata !2682), !dbg !2696
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2689
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
  ], !dbg !2697

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2642, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 5, metadata !2631, metadata !DIExpression()), !dbg !2689
  br label %102, !dbg !2698

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2642, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 5, metadata !2631, metadata !DIExpression()), !dbg !2689
  br i1 %36, label %102, label %42, !dbg !2698

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2699
  br i1 %43, label %102, label %44, !dbg !2703

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2699, !tbaa !924
  br label %102, !dbg !2699

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.80, metadata !609, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 %28, metadata !610, metadata !DIExpression()), !dbg !2704
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.11.80, i32 noundef 5) #37, !dbg !2708
  call void @llvm.dbg.value(metadata ptr %46, metadata !611, metadata !DIExpression()), !dbg !2704
  %47 = icmp eq ptr %46, @.str.11.80, !dbg !2709
  br i1 %47, label %48, label %57, !dbg !2711

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2712
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2713
  call void @llvm.dbg.declare(metadata ptr %13, metadata !613, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %13, metadata !2715, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %13, metadata !2723, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 8, metadata !2727, metadata !DIExpression()), !dbg !2728
  store i64 0, ptr %13, align 8, !dbg !2730
  call void @llvm.dbg.value(metadata ptr %12, metadata !612, metadata !DIExpression(DW_OP_deref)), !dbg !2704
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2731
  %50 = icmp eq i64 %49, 3, !dbg !2733
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !612, metadata !DIExpression()), !dbg !2704
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2734
  %54 = icmp eq i32 %28, 9, !dbg !2734
  %55 = select i1 %54, ptr @.str.10.82, ptr @.str.12.83, !dbg !2734
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2734
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2735
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2735
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2704
  call void @llvm.dbg.value(metadata ptr %58, metadata !2634, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr @.str.12.83, metadata !609, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 %28, metadata !610, metadata !DIExpression()), !dbg !2736
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.12.83, i32 noundef 5) #37, !dbg !2738
  call void @llvm.dbg.value(metadata ptr %59, metadata !611, metadata !DIExpression()), !dbg !2736
  %60 = icmp eq ptr %59, @.str.12.83, !dbg !2739
  br i1 %60, label %61, label %70, !dbg !2740

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2741
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2742
  call void @llvm.dbg.declare(metadata ptr %11, metadata !613, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %11, metadata !2715, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %11, metadata !2723, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 8, metadata !2727, metadata !DIExpression()), !dbg !2746
  store i64 0, ptr %11, align 8, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %10, metadata !612, metadata !DIExpression(DW_OP_deref)), !dbg !2736
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2749
  %63 = icmp eq i64 %62, 3, !dbg !2750
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !612, metadata !DIExpression()), !dbg !2736
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2751
  %67 = icmp eq i32 %28, 9, !dbg !2751
  %68 = select i1 %67, ptr @.str.10.82, ptr @.str.12.83, !dbg !2751
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2751
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2752
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2635, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %71, metadata !2634, metadata !DIExpression()), !dbg !2689
  br i1 %36, label %88, label %73, !dbg !2753

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2646, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2637, metadata !DIExpression()), !dbg !2689
  %74 = load i8, ptr %71, align 1, !dbg !2755, !tbaa !924
  %75 = icmp eq i8 %74, 0, !dbg !2757
  br i1 %75, label %88, label %76, !dbg !2757

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2646, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %79, metadata !2637, metadata !DIExpression()), !dbg !2689
  %80 = icmp ult i64 %79, %39, !dbg !2758
  br i1 %80, label %81, label %83, !dbg !2761

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2758
  store i8 %77, ptr %82, align 1, !dbg !2758, !tbaa !924
  br label %83, !dbg !2758

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %84, metadata !2637, metadata !DIExpression()), !dbg !2689
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2762
  call void @llvm.dbg.value(metadata ptr %85, metadata !2646, metadata !DIExpression()), !dbg !2754
  %86 = load i8, ptr %85, align 1, !dbg !2755, !tbaa !924
  %87 = icmp eq i8 %86, 0, !dbg !2757
  br i1 %87, label %88, label %76, !dbg !2757, !llvm.loop !2763

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2765
  call void @llvm.dbg.value(metadata i64 %89, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 1, metadata !2641, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %72, metadata !2639, metadata !DIExpression()), !dbg !2689
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %90, metadata !2640, metadata !DIExpression()), !dbg !2689
  br label %102, !dbg !2767

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2641, metadata !DIExpression()), !dbg !2689
  br label %93, !dbg !2768

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2642, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2641, metadata !DIExpression()), !dbg !2689
  br i1 %36, label %102, label %96, !dbg !2769

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2642, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2641, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 2, metadata !2631, metadata !DIExpression()), !dbg !2689
  br label %102, !dbg !2770

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2642, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2641, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 2, metadata !2631, metadata !DIExpression()), !dbg !2689
  br i1 %36, label %102, label %96, !dbg !2770

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2771
  br i1 %98, label %102, label %99, !dbg !2775

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2771, !tbaa !924
  br label %102, !dbg !2771

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2689
  br label %102, !dbg !2776

101:                                              ; preds = %27
  call void @abort() #39, !dbg !2777
  unreachable, !dbg !2777

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2765
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.82, %42 ], [ @.str.10.82, %44 ], [ @.str.10.82, %41 ], [ %33, %27 ], [ @.str.12.83, %96 ], [ @.str.12.83, %99 ], [ @.str.12.83, %95 ], [ @.str.10.82, %40 ], [ @.str.12.83, %93 ], [ @.str.12.83, %92 ], !dbg !2689
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2689
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2642, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2641, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %108, metadata !2640, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %107, metadata !2639, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %106, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %105, metadata !2635, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %104, metadata !2634, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 %103, metadata !2631, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 0, metadata !2651, metadata !DIExpression()), !dbg !2778
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
  br label %122, !dbg !2779

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2765
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2693
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2780
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %129, metadata !2651, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2644, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %125, metadata !2638, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %124, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %123, metadata !2630, metadata !DIExpression()), !dbg !2689
  %131 = icmp eq i64 %123, -1, !dbg !2781
  br i1 %131, label %132, label %136, !dbg !2782

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2783
  %134 = load i8, ptr %133, align 1, !dbg !2783, !tbaa !924
  %135 = icmp eq i8 %134, 0, !dbg !2784
  br i1 %135, label %579, label %138, !dbg !2785

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2786
  br i1 %137, label %579, label %138, !dbg !2785

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2653, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2656, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 0, metadata !2657, metadata !DIExpression()), !dbg !2787
  br i1 %114, label %139, label %152, !dbg !2788

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2790
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2791
  br i1 %141, label %142, label %144, !dbg !2791

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %143, metadata !2630, metadata !DIExpression()), !dbg !2689
  br label %144, !dbg !2793

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2793
  call void @llvm.dbg.value(metadata i64 %145, metadata !2630, metadata !DIExpression()), !dbg !2689
  %146 = icmp ugt i64 %140, %145, !dbg !2794
  br i1 %146, label %152, label %147, !dbg !2795

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2796
  call void @llvm.dbg.value(metadata ptr %148, metadata !2797, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata ptr %107, metadata !2800, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i64 %108, metadata !2801, metadata !DIExpression()), !dbg !2802
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2804
  %150 = icmp eq i32 %149, 0, !dbg !2805
  %151 = and i1 %150, %110, !dbg !2806
  br i1 %151, label %630, label %152, !dbg !2806

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2653, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %153, metadata !2630, metadata !DIExpression()), !dbg !2689
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2807
  %156 = load i8, ptr %155, align 1, !dbg !2807, !tbaa !924
  call void @llvm.dbg.value(metadata i8 %156, metadata !2658, metadata !DIExpression()), !dbg !2787
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
  ], !dbg !2808

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2809

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2810

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2656, metadata !DIExpression()), !dbg !2787
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2814
  br i1 %160, label %177, label %161, !dbg !2814

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2816
  br i1 %162, label %163, label %165, !dbg !2820

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2816
  store i8 39, ptr %164, align 1, !dbg !2816, !tbaa !924
  br label %165, !dbg !2816

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %166, metadata !2637, metadata !DIExpression()), !dbg !2689
  %167 = icmp ult i64 %166, %130, !dbg !2821
  br i1 %167, label %168, label %170, !dbg !2824

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2821
  store i8 36, ptr %169, align 1, !dbg !2821, !tbaa !924
  br label %170, !dbg !2821

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %171, metadata !2637, metadata !DIExpression()), !dbg !2689
  %172 = icmp ult i64 %171, %130, !dbg !2825
  br i1 %172, label %173, label %175, !dbg !2828

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2825
  store i8 39, ptr %174, align 1, !dbg !2825, !tbaa !924
  br label %175, !dbg !2825

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %176, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 1, metadata !2645, metadata !DIExpression()), !dbg !2689
  br label %177, !dbg !2829

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2689
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %178, metadata !2637, metadata !DIExpression()), !dbg !2689
  %180 = icmp ult i64 %178, %130, !dbg !2830
  br i1 %180, label %181, label %183, !dbg !2833

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2830
  store i8 92, ptr %182, align 1, !dbg !2830, !tbaa !924
  br label %183, !dbg !2830

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %184, metadata !2637, metadata !DIExpression()), !dbg !2689
  br i1 %111, label %185, label %482, !dbg !2834

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2836
  %187 = icmp ult i64 %186, %153, !dbg !2837
  br i1 %187, label %188, label %439, !dbg !2838

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2839
  %190 = load i8, ptr %189, align 1, !dbg !2839, !tbaa !924
  %191 = add i8 %190, -48, !dbg !2840
  %192 = icmp ult i8 %191, 10, !dbg !2840
  br i1 %192, label %193, label %439, !dbg !2840

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2841
  br i1 %194, label %195, label %197, !dbg !2845

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2841
  store i8 48, ptr %196, align 1, !dbg !2841, !tbaa !924
  br label %197, !dbg !2841

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %198, metadata !2637, metadata !DIExpression()), !dbg !2689
  %199 = icmp ult i64 %198, %130, !dbg !2846
  br i1 %199, label %200, label %202, !dbg !2849

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2846
  store i8 48, ptr %201, align 1, !dbg !2846, !tbaa !924
  br label %202, !dbg !2846

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %203, metadata !2637, metadata !DIExpression()), !dbg !2689
  br label %439, !dbg !2850

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2851

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2852

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2853

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2855

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2857
  %210 = icmp ult i64 %209, %153, !dbg !2858
  br i1 %210, label %211, label %439, !dbg !2859

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2860
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2861
  %214 = load i8, ptr %213, align 1, !dbg !2861, !tbaa !924
  %215 = icmp eq i8 %214, 63, !dbg !2862
  br i1 %215, label %216, label %439, !dbg !2863

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2864
  %218 = load i8, ptr %217, align 1, !dbg !2864, !tbaa !924
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
  ], !dbg !2865

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2866

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2658, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %209, metadata !2651, metadata !DIExpression()), !dbg !2778
  %221 = icmp ult i64 %124, %130, !dbg !2868
  br i1 %221, label %222, label %224, !dbg !2871

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2868
  store i8 63, ptr %223, align 1, !dbg !2868, !tbaa !924
  br label %224, !dbg !2868

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %225, metadata !2637, metadata !DIExpression()), !dbg !2689
  %226 = icmp ult i64 %225, %130, !dbg !2872
  br i1 %226, label %227, label %229, !dbg !2875

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2872
  store i8 34, ptr %228, align 1, !dbg !2872, !tbaa !924
  br label %229, !dbg !2872

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %230, metadata !2637, metadata !DIExpression()), !dbg !2689
  %231 = icmp ult i64 %230, %130, !dbg !2876
  br i1 %231, label %232, label %234, !dbg !2879

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2876
  store i8 34, ptr %233, align 1, !dbg !2876, !tbaa !924
  br label %234, !dbg !2876

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %235, metadata !2637, metadata !DIExpression()), !dbg !2689
  %236 = icmp ult i64 %235, %130, !dbg !2880
  br i1 %236, label %237, label %239, !dbg !2883

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2880
  store i8 63, ptr %238, align 1, !dbg !2880, !tbaa !924
  br label %239, !dbg !2880

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %240, metadata !2637, metadata !DIExpression()), !dbg !2689
  br label %439, !dbg !2884

241:                                              ; preds = %152
  br label %251, !dbg !2885

242:                                              ; preds = %152
  br label %251, !dbg !2886

243:                                              ; preds = %152
  br label %249, !dbg !2887

244:                                              ; preds = %152
  br label %249, !dbg !2888

245:                                              ; preds = %152
  br label %251, !dbg !2889

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2890

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2891

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2894

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2896
  call void @llvm.dbg.label(metadata !2683), !dbg !2897
  br i1 %119, label %621, label %251, !dbg !2898

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2896
  call void @llvm.dbg.label(metadata !2685), !dbg !2900
  br i1 %109, label %493, label %450, !dbg !2901

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2902

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2903, !tbaa !924
  %256 = icmp eq i8 %255, 0, !dbg !2905
  br i1 %256, label %257, label %439, !dbg !2906

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2907
  br i1 %258, label %259, label %439, !dbg !2909

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2657, metadata !DIExpression()), !dbg !2787
  br label %260, !dbg !2910

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2657, metadata !DIExpression()), !dbg !2787
  br i1 %116, label %262, label %439, !dbg !2911

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2913

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 1, metadata !2657, metadata !DIExpression()), !dbg !2787
  br i1 %116, label %264, label %439, !dbg !2914

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2915

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2918
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2920
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2920
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %270, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %269, metadata !2638, metadata !DIExpression()), !dbg !2689
  %271 = icmp ult i64 %124, %270, !dbg !2921
  br i1 %271, label %272, label %274, !dbg !2924

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2921
  store i8 39, ptr %273, align 1, !dbg !2921, !tbaa !924
  br label %274, !dbg !2921

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %275, metadata !2637, metadata !DIExpression()), !dbg !2689
  %276 = icmp ult i64 %275, %270, !dbg !2925
  br i1 %276, label %277, label %279, !dbg !2928

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2925
  store i8 92, ptr %278, align 1, !dbg !2925, !tbaa !924
  br label %279, !dbg !2925

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %280, metadata !2637, metadata !DIExpression()), !dbg !2689
  %281 = icmp ult i64 %280, %270, !dbg !2929
  br i1 %281, label %282, label %284, !dbg !2932

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2929
  store i8 39, ptr %283, align 1, !dbg !2929, !tbaa !924
  br label %284, !dbg !2929

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %285, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2689
  br label %439, !dbg !2933

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2934

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2659, metadata !DIExpression()), !dbg !2935
  %288 = tail call ptr @__ctype_b_loc() #40, !dbg !2936
  %289 = load ptr, ptr %288, align 8, !dbg !2936, !tbaa !846
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2936
  %292 = load i16, ptr %291, align 2, !dbg !2936, !tbaa !956
  %293 = and i16 %292, 16384, !dbg !2936
  %294 = icmp ne i16 %293, 0, !dbg !2938
  call void @llvm.dbg.value(metadata i1 %294, metadata !2662, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2935
  br label %337, !dbg !2939

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2940
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2663, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata ptr %14, metadata !2715, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %14, metadata !2723, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 8, metadata !2727, metadata !DIExpression()), !dbg !2944
  store i64 0, ptr %14, align 8, !dbg !2946
  call void @llvm.dbg.value(metadata i64 0, metadata !2659, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 1, metadata !2662, metadata !DIExpression()), !dbg !2935
  %296 = icmp eq i64 %153, -1, !dbg !2947
  br i1 %296, label %297, label %299, !dbg !2949

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %298, metadata !2630, metadata !DIExpression()), !dbg !2689
  br label %299, !dbg !2951

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2787
  call void @llvm.dbg.value(metadata i64 %300, metadata !2630, metadata !DIExpression()), !dbg !2689
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2952
  %301 = sub i64 %300, %129, !dbg !2953
  call void @llvm.dbg.value(metadata ptr %15, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2954
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #37, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %302, metadata !2670, metadata !DIExpression()), !dbg !2954
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2956

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2659, metadata !DIExpression()), !dbg !2935
  %304 = icmp ugt i64 %300, %129, !dbg !2957
  br i1 %304, label %306, label %332, !dbg !2959

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2935
  br label %332, !dbg !2960

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2659, metadata !DIExpression()), !dbg !2935
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2962
  %310 = load i8, ptr %309, align 1, !dbg !2962, !tbaa !924
  %311 = icmp eq i8 %310, 0, !dbg !2959
  br i1 %311, label %332, label %312, !dbg !2963

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %313, metadata !2659, metadata !DIExpression()), !dbg !2935
  %314 = add i64 %313, %129, !dbg !2965
  %315 = icmp eq i64 %313, %301, !dbg !2957
  br i1 %315, label %332, label %306, !dbg !2959, !llvm.loop !2966

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2967
  %319 = and i1 %318, %110, !dbg !2967
  call void @llvm.dbg.value(metadata i64 1, metadata !2671, metadata !DIExpression()), !dbg !2968
  br i1 %319, label %320, label %328, !dbg !2967

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2671, metadata !DIExpression()), !dbg !2968
  %322 = add i64 %321, %129, !dbg !2969
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2971
  %324 = load i8, ptr %323, align 1, !dbg !2971, !tbaa !924
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2972

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %326, metadata !2671, metadata !DIExpression()), !dbg !2968
  %327 = icmp eq i64 %326, %302, !dbg !2974
  br i1 %327, label %328, label %320, !dbg !2975, !llvm.loop !2976

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2978, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %329, metadata !2666, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 %329, metadata !2980, metadata !DIExpression()), !dbg !2988
  %330 = call i32 @iswprint(i32 noundef %329) #37, !dbg !2990
  %331 = icmp ne i32 %330, 0, !dbg !2991
  call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %302, metadata !2659, metadata !DIExpression()), !dbg !2935
  br label %332, !dbg !2992

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %333, metadata !2659, metadata !DIExpression()), !dbg !2935
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2993
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2994
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 0, metadata !2659, metadata !DIExpression()), !dbg !2935
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2993
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2994
  call void @llvm.dbg.label(metadata !2688), !dbg !2995
  %336 = select i1 %109, i32 4, i32 2, !dbg !2996
  br label %626, !dbg !2996

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2787
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2998
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %339, metadata !2659, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %338, metadata !2630, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i1 %340, metadata !2657, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2787
  %341 = icmp ult i64 %339, 2, !dbg !2999
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3000
  br i1 %343, label %439, label %344, !dbg !3000

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %345, metadata !2679, metadata !DIExpression()), !dbg !3002
  br label %346, !dbg !3003

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2689
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2778
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3004
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2787
  call void @llvm.dbg.value(metadata i8 %352, metadata !2658, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %351, metadata !2656, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2653, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %349, metadata !2651, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %347, metadata !2637, metadata !DIExpression()), !dbg !2689
  br i1 %342, label %397, label %353, !dbg !3005

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3010

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2656, metadata !DIExpression()), !dbg !2787
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3013
  br i1 %355, label %372, label %356, !dbg !3013

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3015
  br i1 %357, label %358, label %360, !dbg !3019

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3015
  store i8 39, ptr %359, align 1, !dbg !3015, !tbaa !924
  br label %360, !dbg !3015

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %361, metadata !2637, metadata !DIExpression()), !dbg !2689
  %362 = icmp ult i64 %361, %130, !dbg !3020
  br i1 %362, label %363, label %365, !dbg !3023

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3020
  store i8 36, ptr %364, align 1, !dbg !3020, !tbaa !924
  br label %365, !dbg !3020

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %366, metadata !2637, metadata !DIExpression()), !dbg !2689
  %367 = icmp ult i64 %366, %130, !dbg !3024
  br i1 %367, label %368, label %370, !dbg !3027

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3024
  store i8 39, ptr %369, align 1, !dbg !3024, !tbaa !924
  br label %370, !dbg !3024

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %371, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 1, metadata !2645, metadata !DIExpression()), !dbg !2689
  br label %372, !dbg !3028

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2689
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %373, metadata !2637, metadata !DIExpression()), !dbg !2689
  %375 = icmp ult i64 %373, %130, !dbg !3029
  br i1 %375, label %376, label %378, !dbg !3032

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3029
  store i8 92, ptr %377, align 1, !dbg !3029, !tbaa !924
  br label %378, !dbg !3029

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %379, metadata !2637, metadata !DIExpression()), !dbg !2689
  %380 = icmp ult i64 %379, %130, !dbg !3033
  br i1 %380, label %381, label %385, !dbg !3036

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3033
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3033
  store i8 %383, ptr %384, align 1, !dbg !3033, !tbaa !924
  br label %385, !dbg !3033

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %386, metadata !2637, metadata !DIExpression()), !dbg !2689
  %387 = icmp ult i64 %386, %130, !dbg !3037
  br i1 %387, label %388, label %393, !dbg !3040

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3037
  %391 = or i8 %390, 48, !dbg !3037
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3037
  store i8 %391, ptr %392, align 1, !dbg !3037, !tbaa !924
  br label %393, !dbg !3037

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %394, metadata !2637, metadata !DIExpression()), !dbg !2689
  %395 = and i8 %352, 7, !dbg !3041
  %396 = or i8 %395, 48, !dbg !3042
  call void @llvm.dbg.value(metadata i8 %396, metadata !2658, metadata !DIExpression()), !dbg !2787
  br label %404, !dbg !3043

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3044

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3045
  br i1 %399, label %400, label %402, !dbg !3050

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3045
  store i8 92, ptr %401, align 1, !dbg !3045, !tbaa !924
  br label %402, !dbg !3045

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %403, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2653, metadata !DIExpression()), !dbg !2787
  br label %404, !dbg !3051

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2689
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2787
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2787
  call void @llvm.dbg.value(metadata i8 %409, metadata !2658, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %408, metadata !2656, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2653, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %405, metadata !2637, metadata !DIExpression()), !dbg !2689
  %410 = add i64 %349, 1, !dbg !3052
  %411 = icmp ugt i64 %345, %410, !dbg !3054
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3055

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3056
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3056
  br i1 %415, label %416, label %427, !dbg !3056

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3059
  br i1 %417, label %418, label %420, !dbg !3063

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3059
  store i8 39, ptr %419, align 1, !dbg !3059, !tbaa !924
  br label %420, !dbg !3059

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %421, metadata !2637, metadata !DIExpression()), !dbg !2689
  %422 = icmp ult i64 %421, %130, !dbg !3064
  br i1 %422, label %423, label %425, !dbg !3067

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3064
  store i8 39, ptr %424, align 1, !dbg !3064, !tbaa !924
  br label %425, !dbg !3064

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3067
  call void @llvm.dbg.value(metadata i64 %426, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2689
  br label %427, !dbg !3068

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3069
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %428, metadata !2637, metadata !DIExpression()), !dbg !2689
  %430 = icmp ult i64 %428, %130, !dbg !3070
  br i1 %430, label %431, label %433, !dbg !3073

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3070
  store i8 %409, ptr %432, align 1, !dbg !3070, !tbaa !924
  br label %433, !dbg !3070

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %434, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %410, metadata !2651, metadata !DIExpression()), !dbg !2778
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3074
  %436 = load i8, ptr %435, align 1, !dbg !3074, !tbaa !924
  call void @llvm.dbg.value(metadata i8 %436, metadata !2658, metadata !DIExpression()), !dbg !2787
  br label %346, !dbg !3075, !llvm.loop !3076

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2658, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i1 %340, metadata !2657, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %408, metadata !2656, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2653, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %349, metadata !2651, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %405, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %338, metadata !2630, metadata !DIExpression()), !dbg !2689
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3079
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2689
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2693
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2778
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2787
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 %448, metadata !2658, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2657, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2656, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2653, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %445, metadata !2651, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %442, metadata !2638, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %441, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %440, metadata !2630, metadata !DIExpression()), !dbg !2689
  br i1 %112, label %461, label %450, !dbg !3080

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
  br i1 %121, label %462, label %482, !dbg !3082

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3083

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
  %473 = lshr i8 %464, 5, !dbg !3084
  %474 = zext i8 %473 to i64, !dbg !3084
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3085
  %476 = load i32, ptr %475, align 4, !dbg !3085, !tbaa !915
  %477 = and i8 %464, 31, !dbg !3086
  %478 = zext i8 %477 to i32, !dbg !3086
  %479 = shl nuw i32 1, %478, !dbg !3087
  %480 = and i32 %476, %479, !dbg !3087
  %481 = icmp eq i32 %480, 0, !dbg !3087
  br i1 %481, label %482, label %493, !dbg !3088

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
  br i1 %154, label %493, label %529, !dbg !3089

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3079
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2689
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2693
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3090
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2787
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 %501, metadata !2658, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2657, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %499, metadata !2651, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %496, metadata !2638, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %495, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %494, metadata !2630, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.label(metadata !2686), !dbg !3091
  br i1 %110, label %621, label %503, !dbg !3092

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2656, metadata !DIExpression()), !dbg !2787
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3094
  br i1 %504, label %521, label %505, !dbg !3094

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3096
  br i1 %506, label %507, label %509, !dbg !3100

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3096
  store i8 39, ptr %508, align 1, !dbg !3096, !tbaa !924
  br label %509, !dbg !3096

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3100
  call void @llvm.dbg.value(metadata i64 %510, metadata !2637, metadata !DIExpression()), !dbg !2689
  %511 = icmp ult i64 %510, %502, !dbg !3101
  br i1 %511, label %512, label %514, !dbg !3104

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3101
  store i8 36, ptr %513, align 1, !dbg !3101, !tbaa !924
  br label %514, !dbg !3101

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %515, metadata !2637, metadata !DIExpression()), !dbg !2689
  %516 = icmp ult i64 %515, %502, !dbg !3105
  br i1 %516, label %517, label %519, !dbg !3108

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3105
  store i8 39, ptr %518, align 1, !dbg !3105, !tbaa !924
  br label %519, !dbg !3105

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %520, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 1, metadata !2645, metadata !DIExpression()), !dbg !2689
  br label %521, !dbg !3109

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2787
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %522, metadata !2637, metadata !DIExpression()), !dbg !2689
  %524 = icmp ult i64 %522, %502, !dbg !3110
  br i1 %524, label %525, label %527, !dbg !3113

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3110
  store i8 92, ptr %526, align 1, !dbg !3110, !tbaa !924
  br label %527, !dbg !3110

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %502, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 %501, metadata !2658, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2657, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2656, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %499, metadata !2651, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %496, metadata !2638, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %528, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %494, metadata !2630, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.label(metadata !2687), !dbg !3114
  br label %553, !dbg !3115

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3079
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2689
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2693
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3090
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3118
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 %538, metadata !2658, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2657, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 poison, metadata !2656, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %535, metadata !2651, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %532, metadata !2638, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %531, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %530, metadata !2630, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.label(metadata !2687), !dbg !3114
  %540 = xor i1 %534, true, !dbg !3115
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3115
  br i1 %541, label %553, label %542, !dbg !3115

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3119
  br i1 %543, label %544, label %546, !dbg !3123

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3119
  store i8 39, ptr %545, align 1, !dbg !3119, !tbaa !924
  br label %546, !dbg !3119

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %547, metadata !2637, metadata !DIExpression()), !dbg !2689
  %548 = icmp ult i64 %547, %539, !dbg !3124
  br i1 %548, label %549, label %551, !dbg !3127

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3124
  store i8 39, ptr %550, align 1, !dbg !3124, !tbaa !924
  br label %551, !dbg !3124

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %552, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2689
  br label %553, !dbg !3128

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2787
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %561, metadata !2637, metadata !DIExpression()), !dbg !2689
  %563 = icmp ult i64 %561, %554, !dbg !3129
  br i1 %563, label %564, label %566, !dbg !3132

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3129
  store i8 %555, ptr %565, align 1, !dbg !3129, !tbaa !924
  br label %566, !dbg !3129

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %567, metadata !2637, metadata !DIExpression()), !dbg !2689
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3133
  call void @llvm.dbg.value(metadata i8 poison, metadata !2644, metadata !DIExpression()), !dbg !2689
  br label %569, !dbg !3134

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3079
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2689
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2693
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3090
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %576, metadata !2651, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2644, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %572, metadata !2638, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %571, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %570, metadata !2630, metadata !DIExpression()), !dbg !2689
  %578 = add i64 %576, 1, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %578, metadata !2651, metadata !DIExpression()), !dbg !2778
  br label %122, !dbg !3136, !llvm.loop !3137

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2628, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2644, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 poison, metadata !2643, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %125, metadata !2638, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %124, metadata !2637, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %123, metadata !2630, metadata !DIExpression()), !dbg !2689
  %580 = icmp ne i64 %124, 0, !dbg !3139
  %581 = xor i1 %110, true, !dbg !3141
  %582 = or i1 %580, %581, !dbg !3141
  %583 = or i1 %582, %111, !dbg !3141
  br i1 %583, label %584, label %621, !dbg !3141

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3142
  %586 = xor i1 %126, true, !dbg !3142
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3142
  br i1 %587, label %595, label %588, !dbg !3142

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3144

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3146
  br label %636, !dbg !3148

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3149
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3151
  br i1 %594, label %27, label %595, !dbg !3151

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3152
  %598 = or i1 %597, %596, !dbg !3154
  br i1 %598, label %614, label %599, !dbg !3154

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2639, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %124, metadata !2637, metadata !DIExpression()), !dbg !2689
  %600 = load i8, ptr %107, align 1, !dbg !3155, !tbaa !924
  %601 = icmp eq i8 %600, 0, !dbg !3158
  br i1 %601, label %614, label %602, !dbg !3158

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2639, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %605, metadata !2637, metadata !DIExpression()), !dbg !2689
  %606 = icmp ult i64 %605, %130, !dbg !3159
  br i1 %606, label %607, label %609, !dbg !3162

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3159
  store i8 %603, ptr %608, align 1, !dbg !3159, !tbaa !924
  br label %609, !dbg !3159

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %610, metadata !2637, metadata !DIExpression()), !dbg !2689
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3163
  call void @llvm.dbg.value(metadata ptr %611, metadata !2639, metadata !DIExpression()), !dbg !2689
  %612 = load i8, ptr %611, align 1, !dbg !3155, !tbaa !924
  %613 = icmp eq i8 %612, 0, !dbg !3158
  br i1 %613, label %614, label %602, !dbg !3158, !llvm.loop !3164

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2765
  call void @llvm.dbg.value(metadata i64 %615, metadata !2637, metadata !DIExpression()), !dbg !2689
  %616 = icmp ult i64 %615, %130, !dbg !3166
  br i1 %616, label %617, label %636, !dbg !3168

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3169
  store i8 0, ptr %618, align 1, !dbg !3170, !tbaa !924
  br label %636, !dbg !3169

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2688), !dbg !2995
  %620 = icmp eq i32 %103, 2, !dbg !3171
  br i1 %620, label %626, label %630, !dbg !2996

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2688), !dbg !2995
  %624 = icmp eq i32 %103, 2, !dbg !3171
  %625 = select i1 %109, i32 4, i32 2, !dbg !2996
  br i1 %624, label %626, label %630, !dbg !2996

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2996

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2631, metadata !DIExpression()), !dbg !2689
  %634 = and i32 %5, -3, !dbg !3172
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3173
  br label %636, !dbg !3174

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3175
}

; Function Attrs: nounwind
declare !dbg !3176 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3178 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3182, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %1, metadata !3183, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %2, metadata !3184, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %0, metadata !3186, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %1, metadata !3191, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata ptr null, metadata !3192, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata ptr %2, metadata !3193, metadata !DIExpression()), !dbg !3199
  %4 = icmp eq ptr %2, null, !dbg !3201
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3201
  call void @llvm.dbg.value(metadata ptr %5, metadata !3194, metadata !DIExpression()), !dbg !3199
  %6 = tail call ptr @__errno_location() #40, !dbg !3202
  %7 = load i32, ptr %6, align 4, !dbg !3202, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %7, metadata !3195, metadata !DIExpression()), !dbg !3199
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3203
  %9 = load i32, ptr %8, align 4, !dbg !3203, !tbaa !2571
  %10 = or i32 %9, 1, !dbg !3204
  call void @llvm.dbg.value(metadata i32 %10, metadata !3196, metadata !DIExpression()), !dbg !3199
  %11 = load i32, ptr %5, align 8, !dbg !3205, !tbaa !2521
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3206
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3207
  %14 = load ptr, ptr %13, align 8, !dbg !3207, !tbaa !2592
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3208
  %16 = load ptr, ptr %15, align 8, !dbg !3208, !tbaa !2595
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3209
  %18 = add i64 %17, 1, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %18, metadata !3197, metadata !DIExpression()), !dbg !3199
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !3211
  call void @llvm.dbg.value(metadata ptr %19, metadata !3198, metadata !DIExpression()), !dbg !3199
  %20 = load i32, ptr %5, align 8, !dbg !3212, !tbaa !2521
  %21 = load ptr, ptr %13, align 8, !dbg !3213, !tbaa !2592
  %22 = load ptr, ptr %15, align 8, !dbg !3214, !tbaa !2595
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3215
  store i32 %7, ptr %6, align 4, !dbg !3216, !tbaa !915
  ret ptr %19, !dbg !3217
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3187 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3186, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %1, metadata !3191, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %2, metadata !3192, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %3, metadata !3193, metadata !DIExpression()), !dbg !3218
  %5 = icmp eq ptr %3, null, !dbg !3219
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3219
  call void @llvm.dbg.value(metadata ptr %6, metadata !3194, metadata !DIExpression()), !dbg !3218
  %7 = tail call ptr @__errno_location() #40, !dbg !3220
  %8 = load i32, ptr %7, align 4, !dbg !3220, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %8, metadata !3195, metadata !DIExpression()), !dbg !3218
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3221
  %10 = load i32, ptr %9, align 4, !dbg !3221, !tbaa !2571
  %11 = icmp eq ptr %2, null, !dbg !3222
  %12 = zext i1 %11 to i32, !dbg !3222
  %13 = or i32 %10, %12, !dbg !3223
  call void @llvm.dbg.value(metadata i32 %13, metadata !3196, metadata !DIExpression()), !dbg !3218
  %14 = load i32, ptr %6, align 8, !dbg !3224, !tbaa !2521
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3225
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3226
  %17 = load ptr, ptr %16, align 8, !dbg !3226, !tbaa !2592
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3227
  %19 = load ptr, ptr %18, align 8, !dbg !3227, !tbaa !2595
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3228
  %21 = add i64 %20, 1, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %21, metadata !3197, metadata !DIExpression()), !dbg !3218
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !3230
  call void @llvm.dbg.value(metadata ptr %22, metadata !3198, metadata !DIExpression()), !dbg !3218
  %23 = load i32, ptr %6, align 8, !dbg !3231, !tbaa !2521
  %24 = load ptr, ptr %16, align 8, !dbg !3232, !tbaa !2592
  %25 = load ptr, ptr %18, align 8, !dbg !3233, !tbaa !2595
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3234
  store i32 %8, ptr %7, align 4, !dbg !3235, !tbaa !915
  br i1 %11, label %28, label %27, !dbg !3236

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3237, !tbaa !1137
  br label %28, !dbg !3239

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3240
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3241 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3246, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %1, metadata !3243, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i32 1, metadata !3244, metadata !DIExpression()), !dbg !3248
  %2 = load i32, ptr @nslots, align 4, !tbaa !915
  call void @llvm.dbg.value(metadata i32 1, metadata !3244, metadata !DIExpression()), !dbg !3248
  %3 = icmp sgt i32 %2, 1, !dbg !3249
  br i1 %3, label %4, label %6, !dbg !3251

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3249
  br label %10, !dbg !3251

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3252
  %8 = load ptr, ptr %7, align 8, !dbg !3252, !tbaa !3254
  %9 = icmp eq ptr %8, @slot0, !dbg !3256
  br i1 %9, label %17, label %16, !dbg !3257

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3244, metadata !DIExpression()), !dbg !3248
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3258
  %13 = load ptr, ptr %12, align 8, !dbg !3258, !tbaa !3254
  tail call void @free(ptr noundef %13) #37, !dbg !3259
  %14 = add nuw nsw i64 %11, 1, !dbg !3260
  call void @llvm.dbg.value(metadata i64 %14, metadata !3244, metadata !DIExpression()), !dbg !3248
  %15 = icmp eq i64 %14, %5, !dbg !3249
  br i1 %15, label %6, label %10, !dbg !3251, !llvm.loop !3261

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !3263
  store i64 256, ptr @slotvec0, align 8, !dbg !3265, !tbaa !3266
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3267, !tbaa !3254
  br label %17, !dbg !3268

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3269
  br i1 %18, label %20, label %19, !dbg !3271

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !3272
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3274, !tbaa !846
  br label %20, !dbg !3275

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3276, !tbaa !915
  ret void, !dbg !3277
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata ptr %1, metadata !3281, metadata !DIExpression()), !dbg !3282
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3283
  ret ptr %3, !dbg !3284
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3285 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3289, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %1, metadata !3290, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %2, metadata !3291, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %3, metadata !3292, metadata !DIExpression()), !dbg !3305
  %6 = tail call ptr @__errno_location() #40, !dbg !3306
  %7 = load i32, ptr %6, align 4, !dbg !3306, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %7, metadata !3293, metadata !DIExpression()), !dbg !3305
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3307, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %8, metadata !3294, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3295, metadata !DIExpression()), !dbg !3305
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3308
  br i1 %9, label %10, label %11, !dbg !3308

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3310
  unreachable, !dbg !3310

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3311, !tbaa !915
  %13 = icmp sgt i32 %12, %0, !dbg !3312
  br i1 %13, label %32, label %14, !dbg !3313

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3314
  call void @llvm.dbg.value(metadata i1 %15, metadata !3296, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3315
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !3316
  %16 = sext i32 %12 to i64, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %16, metadata !3299, metadata !DIExpression()), !dbg !3315
  store i64 %16, ptr %5, align 8, !dbg !3318, !tbaa !1137
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3319
  %18 = add nuw nsw i32 %0, 1, !dbg !3320
  %19 = sub i32 %18, %12, !dbg !3321
  %20 = sext i32 %19 to i64, !dbg !3322
  call void @llvm.dbg.value(metadata ptr %5, metadata !3299, metadata !DIExpression(DW_OP_deref)), !dbg !3315
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %21, metadata !3294, metadata !DIExpression()), !dbg !3305
  store ptr %21, ptr @slotvec, align 8, !dbg !3324, !tbaa !846
  br i1 %15, label %22, label %23, !dbg !3325

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3326, !tbaa.struct !3328
  br label %23, !dbg !3329

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3330, !tbaa !915
  %25 = sext i32 %24 to i64, !dbg !3331
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3331
  %27 = load i64, ptr %5, align 8, !dbg !3332, !tbaa !1137
  call void @llvm.dbg.value(metadata i64 %27, metadata !3299, metadata !DIExpression()), !dbg !3315
  %28 = sub nsw i64 %27, %25, !dbg !3333
  %29 = shl i64 %28, 4, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %26, metadata !2723, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %29, metadata !2727, metadata !DIExpression()), !dbg !3335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !3337
  %30 = load i64, ptr %5, align 8, !dbg !3338, !tbaa !1137
  call void @llvm.dbg.value(metadata i64 %30, metadata !3299, metadata !DIExpression()), !dbg !3315
  %31 = trunc i64 %30 to i32, !dbg !3338
  store i32 %31, ptr @nslots, align 4, !dbg !3339, !tbaa !915
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !3340
  br label %32, !dbg !3341

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3305
  call void @llvm.dbg.value(metadata ptr %33, metadata !3294, metadata !DIExpression()), !dbg !3305
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3342
  %36 = load i64, ptr %35, align 8, !dbg !3343, !tbaa !3266
  call void @llvm.dbg.value(metadata i64 %36, metadata !3300, metadata !DIExpression()), !dbg !3344
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3345
  %38 = load ptr, ptr %37, align 8, !dbg !3345, !tbaa !3254
  call void @llvm.dbg.value(metadata ptr %38, metadata !3302, metadata !DIExpression()), !dbg !3344
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3346
  %40 = load i32, ptr %39, align 4, !dbg !3346, !tbaa !2571
  %41 = or i32 %40, 1, !dbg !3347
  call void @llvm.dbg.value(metadata i32 %41, metadata !3303, metadata !DIExpression()), !dbg !3344
  %42 = load i32, ptr %3, align 8, !dbg !3348, !tbaa !2521
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3349
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3350
  %45 = load ptr, ptr %44, align 8, !dbg !3350, !tbaa !2592
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3351
  %47 = load ptr, ptr %46, align 8, !dbg !3351, !tbaa !2595
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %48, metadata !3304, metadata !DIExpression()), !dbg !3344
  %49 = icmp ugt i64 %36, %48, !dbg !3353
  br i1 %49, label %60, label %50, !dbg !3355

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %51, metadata !3300, metadata !DIExpression()), !dbg !3344
  store i64 %51, ptr %35, align 8, !dbg !3358, !tbaa !3266
  %52 = icmp eq ptr %38, @slot0, !dbg !3359
  br i1 %52, label %54, label %53, !dbg !3361

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !3362
  br label %54, !dbg !3362

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !3363
  call void @llvm.dbg.value(metadata ptr %55, metadata !3302, metadata !DIExpression()), !dbg !3344
  store ptr %55, ptr %37, align 8, !dbg !3364, !tbaa !3254
  %56 = load i32, ptr %3, align 8, !dbg !3365, !tbaa !2521
  %57 = load ptr, ptr %44, align 8, !dbg !3366, !tbaa !2592
  %58 = load ptr, ptr %46, align 8, !dbg !3367, !tbaa !2595
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3368
  br label %60, !dbg !3369

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3344
  call void @llvm.dbg.value(metadata ptr %61, metadata !3302, metadata !DIExpression()), !dbg !3344
  store i32 %7, ptr %6, align 4, !dbg !3370, !tbaa !915
  ret ptr %61, !dbg !3371
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3372 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3376, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %1, metadata !3377, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %2, metadata !3378, metadata !DIExpression()), !dbg !3379
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3380
  ret ptr %4, !dbg !3381
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3382 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3384, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 0, metadata !3280, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata ptr %0, metadata !3281, metadata !DIExpression()), !dbg !3386
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3388
  ret ptr %2, !dbg !3389
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3390 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3394, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %1, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i32 0, metadata !3376, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata ptr %0, metadata !3377, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %1, metadata !3378, metadata !DIExpression()), !dbg !3397
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3399
  ret ptr %3, !dbg !3400
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3401 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3405, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %1, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %2, metadata !3407, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3412), !dbg !3415
  call void @llvm.dbg.value(metadata i32 %1, metadata !3416, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3421, metadata !DIExpression()), !dbg !3424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3424, !alias.scope !3412
  %5 = icmp eq i32 %1, 10, !dbg !3425
  br i1 %5, label %6, label %7, !dbg !3427

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3428, !noalias !3412
  unreachable, !dbg !3428

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3429, !tbaa !2521, !alias.scope !3412
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3430
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3431
  ret ptr %8, !dbg !3432
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3433 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3437, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %1, metadata !3438, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata ptr %2, metadata !3439, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %3, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3441, metadata !DIExpression()), !dbg !3444
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3445), !dbg !3448
  call void @llvm.dbg.value(metadata i32 %1, metadata !3416, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3421, metadata !DIExpression()), !dbg !3451
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3451, !alias.scope !3445
  %6 = icmp eq i32 %1, 10, !dbg !3452
  br i1 %6, label %7, label %8, !dbg !3453

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3454, !noalias !3445
  unreachable, !dbg !3454

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3455, !tbaa !2521, !alias.scope !3445
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3456
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3457
  ret ptr %9, !dbg !3458
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3459 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3463, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata ptr %1, metadata !3464, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 0, metadata !3405, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 %0, metadata !3406, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %1, metadata !3407, metadata !DIExpression()), !dbg !3466
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3468
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3470), !dbg !3473
  call void @llvm.dbg.value(metadata i32 %0, metadata !3416, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3421, metadata !DIExpression()), !dbg !3476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3476, !alias.scope !3470
  %4 = icmp eq i32 %0, 10, !dbg !3477
  br i1 %4, label %5, label %6, !dbg !3478

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !3479, !noalias !3470
  unreachable, !dbg !3479

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3480, !tbaa !2521, !alias.scope !3470
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3481
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3482
  ret ptr %7, !dbg !3483
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3484 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3488, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %1, metadata !3489, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %2, metadata !3490, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i32 0, metadata !3437, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %0, metadata !3438, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata ptr %1, metadata !3439, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %2, metadata !3440, metadata !DIExpression()), !dbg !3492
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3494
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3441, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3496), !dbg !3499
  call void @llvm.dbg.value(metadata i32 %0, metadata !3416, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3421, metadata !DIExpression()), !dbg !3502
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3502, !alias.scope !3496
  %5 = icmp eq i32 %0, 10, !dbg !3503
  br i1 %5, label %6, label %7, !dbg !3504

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3505, !noalias !3496
  unreachable, !dbg !3505

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3506, !tbaa !2521, !alias.scope !3496
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3507
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3508
  ret ptr %8, !dbg !3509
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3510 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3515, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8 %2, metadata !3516, metadata !DIExpression()), !dbg !3518
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3519
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3517, metadata !DIExpression()), !dbg !3520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3521, !tbaa.struct !3522
  call void @llvm.dbg.value(metadata ptr %4, metadata !2538, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8 %2, metadata !2539, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 1, metadata !2540, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8 %2, metadata !2541, metadata !DIExpression()), !dbg !3523
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3525
  %6 = lshr i8 %2, 5, !dbg !3526
  %7 = zext i8 %6 to i64, !dbg !3526
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3527
  call void @llvm.dbg.value(metadata ptr %8, metadata !2542, metadata !DIExpression()), !dbg !3523
  %9 = and i8 %2, 31, !dbg !3528
  %10 = zext i8 %9 to i32, !dbg !3528
  call void @llvm.dbg.value(metadata i32 %10, metadata !2544, metadata !DIExpression()), !dbg !3523
  %11 = load i32, ptr %8, align 4, !dbg !3529, !tbaa !915
  %12 = lshr i32 %11, %10, !dbg !3530
  call void @llvm.dbg.value(metadata i32 %12, metadata !2545, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3523
  %13 = and i32 %12, 1, !dbg !3531
  %14 = xor i32 %13, 1, !dbg !3531
  %15 = shl nuw i32 %14, %10, !dbg !3532
  %16 = xor i32 %15, %11, !dbg !3533
  store i32 %16, ptr %8, align 4, !dbg !3533, !tbaa !915
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3534
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3535
  ret ptr %17, !dbg !3536
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3537 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3541, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8 %1, metadata !3542, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 -1, metadata !3515, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8 %1, metadata !3516, metadata !DIExpression()), !dbg !3544
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3546
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3517, metadata !DIExpression()), !dbg !3547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3548, !tbaa.struct !3522
  call void @llvm.dbg.value(metadata ptr %3, metadata !2538, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i8 %1, metadata !2539, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i32 1, metadata !2540, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i8 %1, metadata !2541, metadata !DIExpression()), !dbg !3549
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3551
  %5 = lshr i8 %1, 5, !dbg !3552
  %6 = zext i8 %5 to i64, !dbg !3552
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3553
  call void @llvm.dbg.value(metadata ptr %7, metadata !2542, metadata !DIExpression()), !dbg !3549
  %8 = and i8 %1, 31, !dbg !3554
  %9 = zext i8 %8 to i32, !dbg !3554
  call void @llvm.dbg.value(metadata i32 %9, metadata !2544, metadata !DIExpression()), !dbg !3549
  %10 = load i32, ptr %7, align 4, !dbg !3555, !tbaa !915
  %11 = lshr i32 %10, %9, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %11, metadata !2545, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3549
  %12 = and i32 %11, 1, !dbg !3557
  %13 = xor i32 %12, 1, !dbg !3557
  %14 = shl nuw i32 %13, %9, !dbg !3558
  %15 = xor i32 %14, %10, !dbg !3559
  store i32 %15, ptr %7, align 4, !dbg !3559, !tbaa !915
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3560
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3561
  ret ptr %16, !dbg !3562
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3563 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3565, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr %0, metadata !3541, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i8 58, metadata !3542, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 -1, metadata !3515, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i8 58, metadata !3516, metadata !DIExpression()), !dbg !3569
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !3571
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3517, metadata !DIExpression()), !dbg !3572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3573, !tbaa.struct !3522
  call void @llvm.dbg.value(metadata ptr %2, metadata !2538, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8 58, metadata !2539, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i32 1, metadata !2540, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8 58, metadata !2541, metadata !DIExpression()), !dbg !3574
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3576
  call void @llvm.dbg.value(metadata ptr %3, metadata !2542, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i32 26, metadata !2544, metadata !DIExpression()), !dbg !3574
  %4 = load i32, ptr %3, align 4, !dbg !3577, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %4, metadata !2545, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3574
  %5 = or i32 %4, 67108864, !dbg !3578
  store i32 %5, ptr %3, align 4, !dbg !3578, !tbaa !915
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3579
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !3580
  ret ptr %6, !dbg !3581
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3582 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3584, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %1, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %1, metadata !3515, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 58, metadata !3516, metadata !DIExpression()), !dbg !3587
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3589
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3517, metadata !DIExpression()), !dbg !3590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3591, !tbaa.struct !3522
  call void @llvm.dbg.value(metadata ptr %3, metadata !2538, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 58, metadata !2539, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 1, metadata !2540, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 58, metadata !2541, metadata !DIExpression()), !dbg !3592
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3594
  call void @llvm.dbg.value(metadata ptr %4, metadata !2542, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 26, metadata !2544, metadata !DIExpression()), !dbg !3592
  %5 = load i32, ptr %4, align 4, !dbg !3595, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %5, metadata !2545, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3592
  %6 = or i32 %5, 67108864, !dbg !3596
  store i32 %6, ptr %4, align 4, !dbg !3596, !tbaa !915
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3597
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3598
  ret ptr %7, !dbg !3599
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3600 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3421, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3606
  call void @llvm.dbg.value(metadata i32 %0, metadata !3602, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %1, metadata !3603, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %2, metadata !3604, metadata !DIExpression()), !dbg !3608
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3609
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3605, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 %1, metadata !3416, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 0, metadata !3421, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3611
  %5 = icmp eq i32 %1, 10, !dbg !3612
  br i1 %5, label %6, label %7, !dbg !3613

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3614, !noalias !3615
  unreachable, !dbg !3614

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3421, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3611
  store i32 %1, ptr %4, align 8, !dbg !3618, !tbaa.struct !3522
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %4, metadata !2538, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8 58, metadata !2539, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 1, metadata !2540, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8 58, metadata !2541, metadata !DIExpression()), !dbg !3619
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3621
  call void @llvm.dbg.value(metadata ptr %9, metadata !2542, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 26, metadata !2544, metadata !DIExpression()), !dbg !3619
  %10 = load i32, ptr %9, align 4, !dbg !3622, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %10, metadata !2545, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3619
  %11 = or i32 %10, 67108864, !dbg !3623
  store i32 %11, ptr %9, align 4, !dbg !3623, !tbaa !915
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3624
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3625
  ret ptr %12, !dbg !3626
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3627 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3631, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %1, metadata !3632, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %2, metadata !3633, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %3, metadata !3634, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 %0, metadata !3636, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %1, metadata !3641, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %2, metadata !3642, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %3, metadata !3643, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 -1, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3648
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3645, metadata !DIExpression()), !dbg !3649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3650, !tbaa.struct !3522
  call void @llvm.dbg.value(metadata ptr %5, metadata !2578, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %1, metadata !2579, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %2, metadata !2580, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %5, metadata !2578, metadata !DIExpression()), !dbg !3651
  store i32 10, ptr %5, align 8, !dbg !3653, !tbaa !2521
  %6 = icmp ne ptr %1, null, !dbg !3654
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3655
  br i1 %8, label %10, label %9, !dbg !3655

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3656
  unreachable, !dbg !3656

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3657
  store ptr %1, ptr %11, align 8, !dbg !3658, !tbaa !2592
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3659
  store ptr %2, ptr %12, align 8, !dbg !3660, !tbaa !2595
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3661
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3662
  ret ptr %13, !dbg !3663
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3637 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3636, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %1, metadata !3641, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %2, metadata !3642, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %3, metadata !3643, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %4, metadata !3644, metadata !DIExpression()), !dbg !3664
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3665
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3645, metadata !DIExpression()), !dbg !3666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3667, !tbaa.struct !3522
  call void @llvm.dbg.value(metadata ptr %6, metadata !2578, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %1, metadata !2579, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %2, metadata !2580, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %6, metadata !2578, metadata !DIExpression()), !dbg !3668
  store i32 10, ptr %6, align 8, !dbg !3670, !tbaa !2521
  %7 = icmp ne ptr %1, null, !dbg !3671
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3672
  br i1 %9, label %11, label %10, !dbg !3672

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3673
  unreachable, !dbg !3673

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3674
  store ptr %1, ptr %12, align 8, !dbg !3675, !tbaa !2592
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3676
  store ptr %2, ptr %13, align 8, !dbg !3677, !tbaa !2595
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3678
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3679
  ret ptr %14, !dbg !3680
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3681 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3685, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %1, metadata !3686, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %2, metadata !3687, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata ptr %1, metadata !3633, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata ptr %2, metadata !3634, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 0, metadata !3636, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %0, metadata !3641, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %1, metadata !3642, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %2, metadata !3643, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 -1, metadata !3644, metadata !DIExpression()), !dbg !3691
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3693
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3645, metadata !DIExpression()), !dbg !3694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3695, !tbaa.struct !3522
  call void @llvm.dbg.value(metadata ptr %4, metadata !2578, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %0, metadata !2579, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %1, metadata !2580, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %4, metadata !2578, metadata !DIExpression()), !dbg !3696
  store i32 10, ptr %4, align 8, !dbg !3698, !tbaa !2521
  %5 = icmp ne ptr %0, null, !dbg !3699
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3700
  br i1 %7, label %9, label %8, !dbg !3700

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3701
  unreachable, !dbg !3701

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3702
  store ptr %0, ptr %10, align 8, !dbg !3703, !tbaa !2592
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3704
  store ptr %1, ptr %11, align 8, !dbg !3705, !tbaa !2595
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3706
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3707
  ret ptr %12, !dbg !3708
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3709 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3713, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %1, metadata !3714, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %2, metadata !3715, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %3, metadata !3716, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i32 0, metadata !3636, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %0, metadata !3641, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %1, metadata !3642, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %2, metadata !3643, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %3, metadata !3644, metadata !DIExpression()), !dbg !3718
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3645, metadata !DIExpression()), !dbg !3721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3722, !tbaa.struct !3522
  call void @llvm.dbg.value(metadata ptr %5, metadata !2578, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata ptr %0, metadata !2579, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata ptr %1, metadata !2580, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata ptr %5, metadata !2578, metadata !DIExpression()), !dbg !3723
  store i32 10, ptr %5, align 8, !dbg !3725, !tbaa !2521
  %6 = icmp ne ptr %0, null, !dbg !3726
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3727
  br i1 %8, label %10, label %9, !dbg !3727

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3728
  unreachable, !dbg !3728

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3729
  store ptr %0, ptr %11, align 8, !dbg !3730, !tbaa !2592
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3731
  store ptr %1, ptr %12, align 8, !dbg !3732, !tbaa !2595
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3733
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3734
  ret ptr %13, !dbg !3735
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3736 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3740, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata ptr %1, metadata !3741, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i64 %2, metadata !3742, metadata !DIExpression()), !dbg !3743
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3744
  ret ptr %4, !dbg !3745
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3746 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3750, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %1, metadata !3751, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32 0, metadata !3740, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata ptr %0, metadata !3741, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 %1, metadata !3742, metadata !DIExpression()), !dbg !3753
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3755
  ret ptr %3, !dbg !3756
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3757 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata ptr %1, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i32 %0, metadata !3740, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata ptr %1, metadata !3741, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64 -1, metadata !3742, metadata !DIExpression()), !dbg !3764
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3766
  ret ptr %3, !dbg !3767
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3768 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32 0, metadata !3761, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %0, metadata !3762, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 0, metadata !3740, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %0, metadata !3741, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 -1, metadata !3742, metadata !DIExpression()), !dbg !3776
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3778
  ret ptr %2, !dbg !3779
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3780 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3819, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata ptr %1, metadata !3820, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata ptr %2, metadata !3821, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata ptr %3, metadata !3822, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata ptr %4, metadata !3823, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i64 %5, metadata !3824, metadata !DIExpression()), !dbg !3825
  %7 = icmp eq ptr %1, null, !dbg !3826
  br i1 %7, label %10, label %8, !dbg !3828

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.88, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3829
  br label %12, !dbg !3829

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.89, ptr noundef %2, ptr noundef %3) #37, !dbg !3830
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.3.91, i32 noundef 5) #37, !dbg !3831
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3831
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %0), !dbg !3832
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.5.93, i32 noundef 5) #37, !dbg !3833
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.94) #37, !dbg !3833
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %0), !dbg !3834
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
  ], !dbg !3835

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.7.95, i32 noundef 5) #37, !dbg !3836
  %21 = load ptr, ptr %4, align 8, !dbg !3836, !tbaa !846
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3836
  br label %147, !dbg !3838

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.8.96, i32 noundef 5) #37, !dbg !3839
  %25 = load ptr, ptr %4, align 8, !dbg !3839, !tbaa !846
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3839
  %27 = load ptr, ptr %26, align 8, !dbg !3839, !tbaa !846
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3839
  br label %147, !dbg !3840

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.9.97, i32 noundef 5) #37, !dbg !3841
  %31 = load ptr, ptr %4, align 8, !dbg !3841, !tbaa !846
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3841
  %33 = load ptr, ptr %32, align 8, !dbg !3841, !tbaa !846
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3841
  %35 = load ptr, ptr %34, align 8, !dbg !3841, !tbaa !846
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3841
  br label %147, !dbg !3842

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.10.98, i32 noundef 5) #37, !dbg !3843
  %39 = load ptr, ptr %4, align 8, !dbg !3843, !tbaa !846
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3843
  %41 = load ptr, ptr %40, align 8, !dbg !3843, !tbaa !846
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3843
  %43 = load ptr, ptr %42, align 8, !dbg !3843, !tbaa !846
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3843
  %45 = load ptr, ptr %44, align 8, !dbg !3843, !tbaa !846
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3843
  br label %147, !dbg !3844

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.11.99, i32 noundef 5) #37, !dbg !3845
  %49 = load ptr, ptr %4, align 8, !dbg !3845, !tbaa !846
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3845
  %51 = load ptr, ptr %50, align 8, !dbg !3845, !tbaa !846
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3845
  %53 = load ptr, ptr %52, align 8, !dbg !3845, !tbaa !846
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3845
  %55 = load ptr, ptr %54, align 8, !dbg !3845, !tbaa !846
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3845
  %57 = load ptr, ptr %56, align 8, !dbg !3845, !tbaa !846
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3845
  br label %147, !dbg !3846

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.12.100, i32 noundef 5) #37, !dbg !3847
  %61 = load ptr, ptr %4, align 8, !dbg !3847, !tbaa !846
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3847
  %63 = load ptr, ptr %62, align 8, !dbg !3847, !tbaa !846
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3847
  %65 = load ptr, ptr %64, align 8, !dbg !3847, !tbaa !846
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3847
  %67 = load ptr, ptr %66, align 8, !dbg !3847, !tbaa !846
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3847
  %69 = load ptr, ptr %68, align 8, !dbg !3847, !tbaa !846
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3847
  %71 = load ptr, ptr %70, align 8, !dbg !3847, !tbaa !846
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3847
  br label %147, !dbg !3848

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.13.101, i32 noundef 5) #37, !dbg !3849
  %75 = load ptr, ptr %4, align 8, !dbg !3849, !tbaa !846
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3849
  %77 = load ptr, ptr %76, align 8, !dbg !3849, !tbaa !846
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3849
  %79 = load ptr, ptr %78, align 8, !dbg !3849, !tbaa !846
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3849
  %81 = load ptr, ptr %80, align 8, !dbg !3849, !tbaa !846
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3849
  %83 = load ptr, ptr %82, align 8, !dbg !3849, !tbaa !846
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3849
  %85 = load ptr, ptr %84, align 8, !dbg !3849, !tbaa !846
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3849
  %87 = load ptr, ptr %86, align 8, !dbg !3849, !tbaa !846
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3849
  br label %147, !dbg !3850

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.14.102, i32 noundef 5) #37, !dbg !3851
  %91 = load ptr, ptr %4, align 8, !dbg !3851, !tbaa !846
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3851
  %93 = load ptr, ptr %92, align 8, !dbg !3851, !tbaa !846
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3851
  %95 = load ptr, ptr %94, align 8, !dbg !3851, !tbaa !846
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3851
  %97 = load ptr, ptr %96, align 8, !dbg !3851, !tbaa !846
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3851
  %99 = load ptr, ptr %98, align 8, !dbg !3851, !tbaa !846
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3851
  %101 = load ptr, ptr %100, align 8, !dbg !3851, !tbaa !846
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3851
  %103 = load ptr, ptr %102, align 8, !dbg !3851, !tbaa !846
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3851
  %105 = load ptr, ptr %104, align 8, !dbg !3851, !tbaa !846
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3851
  br label %147, !dbg !3852

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.15.103, i32 noundef 5) #37, !dbg !3853
  %109 = load ptr, ptr %4, align 8, !dbg !3853, !tbaa !846
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3853
  %111 = load ptr, ptr %110, align 8, !dbg !3853, !tbaa !846
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3853
  %113 = load ptr, ptr %112, align 8, !dbg !3853, !tbaa !846
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3853
  %115 = load ptr, ptr %114, align 8, !dbg !3853, !tbaa !846
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3853
  %117 = load ptr, ptr %116, align 8, !dbg !3853, !tbaa !846
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3853
  %119 = load ptr, ptr %118, align 8, !dbg !3853, !tbaa !846
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3853
  %121 = load ptr, ptr %120, align 8, !dbg !3853, !tbaa !846
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3853
  %123 = load ptr, ptr %122, align 8, !dbg !3853, !tbaa !846
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3853
  %125 = load ptr, ptr %124, align 8, !dbg !3853, !tbaa !846
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3853
  br label %147, !dbg !3854

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.16.104, i32 noundef 5) #37, !dbg !3855
  %129 = load ptr, ptr %4, align 8, !dbg !3855, !tbaa !846
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3855
  %131 = load ptr, ptr %130, align 8, !dbg !3855, !tbaa !846
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3855
  %133 = load ptr, ptr %132, align 8, !dbg !3855, !tbaa !846
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3855
  %135 = load ptr, ptr %134, align 8, !dbg !3855, !tbaa !846
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3855
  %137 = load ptr, ptr %136, align 8, !dbg !3855, !tbaa !846
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3855
  %139 = load ptr, ptr %138, align 8, !dbg !3855, !tbaa !846
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3855
  %141 = load ptr, ptr %140, align 8, !dbg !3855, !tbaa !846
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3855
  %143 = load ptr, ptr %142, align 8, !dbg !3855, !tbaa !846
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3855
  %145 = load ptr, ptr %144, align 8, !dbg !3855, !tbaa !846
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3855
  br label %147, !dbg !3856

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3857
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3858 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3862, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %1, metadata !3863, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %2, metadata !3864, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %3, metadata !3865, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %4, metadata !3866, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 0, metadata !3867, metadata !DIExpression()), !dbg !3868
  br label %6, !dbg !3869

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3871
  call void @llvm.dbg.value(metadata i64 %7, metadata !3867, metadata !DIExpression()), !dbg !3868
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3872
  %9 = load ptr, ptr %8, align 8, !dbg !3872, !tbaa !846
  %10 = icmp eq ptr %9, null, !dbg !3874
  %11 = add i64 %7, 1, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %11, metadata !3867, metadata !DIExpression()), !dbg !3868
  br i1 %10, label %12, label %6, !dbg !3874, !llvm.loop !3876

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3878
  ret void, !dbg !3879
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3880 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3895, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata ptr %1, metadata !3896, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata ptr %2, metadata !3897, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata ptr %3, metadata !3898, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3899, metadata !DIExpression()), !dbg !3904
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3905
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3901, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 0, metadata !3900, metadata !DIExpression()), !dbg !3903
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3900, metadata !DIExpression()), !dbg !3903
  %10 = icmp sgt i32 %9, -1, !dbg !3907
  br i1 %10, label %18, label %11, !dbg !3907

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3907
  store i32 %12, ptr %7, align 8, !dbg !3907
  %13 = icmp ult i32 %9, -7, !dbg !3907
  br i1 %13, label %14, label %18, !dbg !3907

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3907
  %16 = sext i32 %9 to i64, !dbg !3907
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3907
  br label %22, !dbg !3907

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3907
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3907
  store ptr %21, ptr %4, align 8, !dbg !3907
  br label %22, !dbg !3907

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3907
  %25 = load ptr, ptr %24, align 8, !dbg !3907
  store ptr %25, ptr %6, align 8, !dbg !3910, !tbaa !846
  %26 = icmp eq ptr %25, null, !dbg !3911
  br i1 %26, label %197, label %27, !dbg !3912

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 1, metadata !3900, metadata !DIExpression()), !dbg !3903
  %28 = icmp sgt i32 %23, -1, !dbg !3907
  br i1 %28, label %36, label %29, !dbg !3907

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3907
  store i32 %30, ptr %7, align 8, !dbg !3907
  %31 = icmp ult i32 %23, -7, !dbg !3907
  br i1 %31, label %32, label %36, !dbg !3907

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3907
  %34 = sext i32 %23 to i64, !dbg !3907
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3907
  br label %40, !dbg !3907

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3907
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3907
  store ptr %39, ptr %4, align 8, !dbg !3907
  br label %40, !dbg !3907

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3907
  %43 = load ptr, ptr %42, align 8, !dbg !3907
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3913
  store ptr %43, ptr %44, align 8, !dbg !3910, !tbaa !846
  %45 = icmp eq ptr %43, null, !dbg !3911
  br i1 %45, label %197, label %46, !dbg !3912

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 2, metadata !3900, metadata !DIExpression()), !dbg !3903
  %47 = icmp sgt i32 %41, -1, !dbg !3907
  br i1 %47, label %55, label %48, !dbg !3907

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3907
  store i32 %49, ptr %7, align 8, !dbg !3907
  %50 = icmp ult i32 %41, -7, !dbg !3907
  br i1 %50, label %51, label %55, !dbg !3907

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3907
  %53 = sext i32 %41 to i64, !dbg !3907
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3907
  br label %59, !dbg !3907

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3907
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3907
  store ptr %58, ptr %4, align 8, !dbg !3907
  br label %59, !dbg !3907

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3907
  %62 = load ptr, ptr %61, align 8, !dbg !3907
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3913
  store ptr %62, ptr %63, align 8, !dbg !3910, !tbaa !846
  %64 = icmp eq ptr %62, null, !dbg !3911
  br i1 %64, label %197, label %65, !dbg !3912

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 3, metadata !3900, metadata !DIExpression()), !dbg !3903
  %66 = icmp sgt i32 %60, -1, !dbg !3907
  br i1 %66, label %74, label %67, !dbg !3907

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3907
  store i32 %68, ptr %7, align 8, !dbg !3907
  %69 = icmp ult i32 %60, -7, !dbg !3907
  br i1 %69, label %70, label %74, !dbg !3907

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3907
  %72 = sext i32 %60 to i64, !dbg !3907
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3907
  br label %78, !dbg !3907

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3907
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3907
  store ptr %77, ptr %4, align 8, !dbg !3907
  br label %78, !dbg !3907

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3907
  %81 = load ptr, ptr %80, align 8, !dbg !3907
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3913
  store ptr %81, ptr %82, align 8, !dbg !3910, !tbaa !846
  %83 = icmp eq ptr %81, null, !dbg !3911
  br i1 %83, label %197, label %84, !dbg !3912

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 4, metadata !3900, metadata !DIExpression()), !dbg !3903
  %85 = icmp sgt i32 %79, -1, !dbg !3907
  br i1 %85, label %93, label %86, !dbg !3907

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3907
  store i32 %87, ptr %7, align 8, !dbg !3907
  %88 = icmp ult i32 %79, -7, !dbg !3907
  br i1 %88, label %89, label %93, !dbg !3907

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3907
  %91 = sext i32 %79 to i64, !dbg !3907
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3907
  br label %97, !dbg !3907

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3907
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3907
  store ptr %96, ptr %4, align 8, !dbg !3907
  br label %97, !dbg !3907

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3907
  %100 = load ptr, ptr %99, align 8, !dbg !3907
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3913
  store ptr %100, ptr %101, align 8, !dbg !3910, !tbaa !846
  %102 = icmp eq ptr %100, null, !dbg !3911
  br i1 %102, label %197, label %103, !dbg !3912

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 5, metadata !3900, metadata !DIExpression()), !dbg !3903
  %104 = icmp sgt i32 %98, -1, !dbg !3907
  br i1 %104, label %112, label %105, !dbg !3907

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3907
  store i32 %106, ptr %7, align 8, !dbg !3907
  %107 = icmp ult i32 %98, -7, !dbg !3907
  br i1 %107, label %108, label %112, !dbg !3907

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3907
  %110 = sext i32 %98 to i64, !dbg !3907
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3907
  br label %116, !dbg !3907

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3907
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3907
  store ptr %115, ptr %4, align 8, !dbg !3907
  br label %116, !dbg !3907

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3907
  %119 = load ptr, ptr %118, align 8, !dbg !3907
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3913
  store ptr %119, ptr %120, align 8, !dbg !3910, !tbaa !846
  %121 = icmp eq ptr %119, null, !dbg !3911
  br i1 %121, label %197, label %122, !dbg !3912

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 6, metadata !3900, metadata !DIExpression()), !dbg !3903
  %123 = icmp sgt i32 %117, -1, !dbg !3907
  br i1 %123, label %131, label %124, !dbg !3907

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3907
  store i32 %125, ptr %7, align 8, !dbg !3907
  %126 = icmp ult i32 %117, -7, !dbg !3907
  br i1 %126, label %127, label %131, !dbg !3907

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3907
  %129 = sext i32 %117 to i64, !dbg !3907
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3907
  br label %135, !dbg !3907

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3907
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3907
  store ptr %134, ptr %4, align 8, !dbg !3907
  br label %135, !dbg !3907

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3907
  %138 = load ptr, ptr %137, align 8, !dbg !3907
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3913
  store ptr %138, ptr %139, align 8, !dbg !3910, !tbaa !846
  %140 = icmp eq ptr %138, null, !dbg !3911
  br i1 %140, label %197, label %141, !dbg !3912

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 7, metadata !3900, metadata !DIExpression()), !dbg !3903
  %142 = icmp sgt i32 %136, -1, !dbg !3907
  br i1 %142, label %150, label %143, !dbg !3907

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3907
  store i32 %144, ptr %7, align 8, !dbg !3907
  %145 = icmp ult i32 %136, -7, !dbg !3907
  br i1 %145, label %146, label %150, !dbg !3907

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3907
  %148 = sext i32 %136 to i64, !dbg !3907
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3907
  br label %154, !dbg !3907

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3907
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3907
  store ptr %153, ptr %4, align 8, !dbg !3907
  br label %154, !dbg !3907

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3907
  %157 = load ptr, ptr %156, align 8, !dbg !3907
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3913
  store ptr %157, ptr %158, align 8, !dbg !3910, !tbaa !846
  %159 = icmp eq ptr %157, null, !dbg !3911
  br i1 %159, label %197, label %160, !dbg !3912

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 8, metadata !3900, metadata !DIExpression()), !dbg !3903
  %161 = icmp sgt i32 %155, -1, !dbg !3907
  br i1 %161, label %169, label %162, !dbg !3907

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3907
  store i32 %163, ptr %7, align 8, !dbg !3907
  %164 = icmp ult i32 %155, -7, !dbg !3907
  br i1 %164, label %165, label %169, !dbg !3907

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3907
  %167 = sext i32 %155 to i64, !dbg !3907
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3907
  br label %173, !dbg !3907

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3907
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3907
  store ptr %172, ptr %4, align 8, !dbg !3907
  br label %173, !dbg !3907

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3907
  %176 = load ptr, ptr %175, align 8, !dbg !3907
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3913
  store ptr %176, ptr %177, align 8, !dbg !3910, !tbaa !846
  %178 = icmp eq ptr %176, null, !dbg !3911
  br i1 %178, label %197, label %179, !dbg !3912

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 9, metadata !3900, metadata !DIExpression()), !dbg !3903
  %180 = icmp sgt i32 %174, -1, !dbg !3907
  br i1 %180, label %188, label %181, !dbg !3907

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3907
  store i32 %182, ptr %7, align 8, !dbg !3907
  %183 = icmp ult i32 %174, -7, !dbg !3907
  br i1 %183, label %184, label %188, !dbg !3907

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3907
  %186 = sext i32 %174 to i64, !dbg !3907
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3907
  br label %191, !dbg !3907

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3907
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3907
  store ptr %190, ptr %4, align 8, !dbg !3907
  br label %191, !dbg !3907

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3907
  %193 = load ptr, ptr %192, align 8, !dbg !3907
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3913
  store ptr %193, ptr %194, align 8, !dbg !3910, !tbaa !846
  %195 = icmp eq ptr %193, null, !dbg !3911
  %196 = select i1 %195, i64 9, i64 10, !dbg !3912
  br label %197, !dbg !3912

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3914
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3915
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3916
  ret void, !dbg !3916
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3917 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3921, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata ptr %1, metadata !3922, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata ptr %2, metadata !3923, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata ptr %3, metadata !3924, metadata !DIExpression()), !dbg !3926
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3927
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3925, metadata !DIExpression()), !dbg !3928
  call void @llvm.va_start(ptr nonnull %5), !dbg !3929
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3930, !tbaa.struct !1909
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3930
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3930
  call void @llvm.va_end(ptr nonnull %5), !dbg !3931
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3932
  ret void, !dbg !3932
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3933 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3934, !tbaa !846
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %1), !dbg !3934
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.17.109, i32 noundef 5) #37, !dbg !3935
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.110) #37, !dbg !3935
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.19.111, i32 noundef 5) #37, !dbg !3936
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.112, ptr noundef nonnull @.str.21.113) #37, !dbg !3936
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.22.114, i32 noundef 5) #37, !dbg !3937
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.115) #37, !dbg !3937
  ret void, !dbg !3938
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3939 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3944, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %1, metadata !3945, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %2, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata ptr %0, metadata !3948, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3951, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %2, metadata !3952, metadata !DIExpression()), !dbg !3953
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3955
  call void @llvm.dbg.value(metadata ptr %4, metadata !3956, metadata !DIExpression()), !dbg !3961
  %5 = icmp eq ptr %4, null, !dbg !3963
  br i1 %5, label %6, label %7, !dbg !3965

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3966
  unreachable, !dbg !3966

7:                                                ; preds = %3
  ret ptr %4, !dbg !3967
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3949 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3948, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %1, metadata !3951, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %2, metadata !3952, metadata !DIExpression()), !dbg !3968
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3969
  call void @llvm.dbg.value(metadata ptr %4, metadata !3956, metadata !DIExpression()), !dbg !3970
  %5 = icmp eq ptr %4, null, !dbg !3972
  br i1 %5, label %6, label %7, !dbg !3973

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3974
  unreachable, !dbg !3974

7:                                                ; preds = %3
  ret ptr %4, !dbg !3975
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3976 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3980, metadata !DIExpression()), !dbg !3981
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3982
  call void @llvm.dbg.value(metadata ptr %2, metadata !3956, metadata !DIExpression()), !dbg !3983
  %3 = icmp eq ptr %2, null, !dbg !3985
  br i1 %3, label %4, label %5, !dbg !3986

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3987
  unreachable, !dbg !3987

5:                                                ; preds = %1
  ret ptr %2, !dbg !3988
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3989 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3990 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3994, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %0, metadata !3996, metadata !DIExpression()), !dbg !4000
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4002
  call void @llvm.dbg.value(metadata ptr %2, metadata !3956, metadata !DIExpression()), !dbg !4003
  %3 = icmp eq ptr %2, null, !dbg !4005
  br i1 %3, label %4, label %5, !dbg !4006

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4007
  unreachable, !dbg !4007

5:                                                ; preds = %1
  ret ptr %2, !dbg !4008
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4009 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %0, metadata !3980, metadata !DIExpression()), !dbg !4015
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4017
  call void @llvm.dbg.value(metadata ptr %2, metadata !3956, metadata !DIExpression()), !dbg !4018
  %3 = icmp eq ptr %2, null, !dbg !4020
  br i1 %3, label %4, label %5, !dbg !4021

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4022
  unreachable, !dbg !4022

5:                                                ; preds = %1
  ret ptr %2, !dbg !4023
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4024 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4028, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr %0, metadata !4031, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 %1, metadata !4035, metadata !DIExpression()), !dbg !4036
  %3 = icmp eq i64 %1, 0, !dbg !4038
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4038
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4039
  call void @llvm.dbg.value(metadata ptr %5, metadata !3956, metadata !DIExpression()), !dbg !4040
  %6 = icmp eq ptr %5, null, !dbg !4042
  br i1 %6, label %7, label %8, !dbg !4043

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4044
  unreachable, !dbg !4044

8:                                                ; preds = %2
  ret ptr %5, !dbg !4045
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4046 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4047 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4051, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 %1, metadata !4052, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata ptr %0, metadata !4054, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i64 %1, metadata !4057, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr %0, metadata !4031, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %1, metadata !4035, metadata !DIExpression()), !dbg !4060
  %3 = icmp eq i64 %1, 0, !dbg !4062
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4062
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4063
  call void @llvm.dbg.value(metadata ptr %5, metadata !3956, metadata !DIExpression()), !dbg !4064
  %6 = icmp eq ptr %5, null, !dbg !4066
  br i1 %6, label %7, label %8, !dbg !4067

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4068
  unreachable, !dbg !4068

8:                                                ; preds = %2
  ret ptr %5, !dbg !4069
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4070 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4074, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %1, metadata !4075, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %2, metadata !4076, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata ptr %0, metadata !4078, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %1, metadata !4081, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %2, metadata !4082, metadata !DIExpression()), !dbg !4083
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4085
  call void @llvm.dbg.value(metadata ptr %4, metadata !3956, metadata !DIExpression()), !dbg !4086
  %5 = icmp eq ptr %4, null, !dbg !4088
  br i1 %5, label %6, label %7, !dbg !4089

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4090
  unreachable, !dbg !4090

7:                                                ; preds = %3
  ret ptr %4, !dbg !4091
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4092 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %1, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr null, metadata !3948, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %0, metadata !3951, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3952, metadata !DIExpression()), !dbg !4099
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4101
  call void @llvm.dbg.value(metadata ptr %3, metadata !3956, metadata !DIExpression()), !dbg !4102
  %4 = icmp eq ptr %3, null, !dbg !4104
  br i1 %4, label %5, label %6, !dbg !4105

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4106
  unreachable, !dbg !4106

6:                                                ; preds = %2
  ret ptr %3, !dbg !4107
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4108 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4112, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %1, metadata !4113, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata ptr null, metadata !4074, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %0, metadata !4075, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %1, metadata !4076, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr null, metadata !4078, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %0, metadata !4081, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %1, metadata !4082, metadata !DIExpression()), !dbg !4117
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4119
  call void @llvm.dbg.value(metadata ptr %3, metadata !3956, metadata !DIExpression()), !dbg !4120
  %4 = icmp eq ptr %3, null, !dbg !4122
  br i1 %4, label %5, label %6, !dbg !4123

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4124
  unreachable, !dbg !4124

6:                                                ; preds = %2
  ret ptr %3, !dbg !4125
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4126 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4130, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata ptr %1, metadata !4131, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata ptr %0, metadata !790, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %1, metadata !791, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 1, metadata !792, metadata !DIExpression()), !dbg !4133
  %3 = load i64, ptr %1, align 8, !dbg !4135, !tbaa !1137
  call void @llvm.dbg.value(metadata i64 %3, metadata !793, metadata !DIExpression()), !dbg !4133
  %4 = icmp eq ptr %0, null, !dbg !4136
  br i1 %4, label %5, label %8, !dbg !4138

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4139
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4142
  br label %15, !dbg !4142

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4143
  %10 = add nuw i64 %9, 1, !dbg !4143
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4143
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4143
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4143
  call void @llvm.dbg.value(metadata i64 %13, metadata !793, metadata !DIExpression()), !dbg !4133
  br i1 %12, label %14, label %15, !dbg !4146

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !4147
  unreachable, !dbg !4147

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4133
  call void @llvm.dbg.value(metadata i64 %16, metadata !793, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %0, metadata !3948, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 %16, metadata !3951, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 1, metadata !3952, metadata !DIExpression()), !dbg !4148
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !4150
  call void @llvm.dbg.value(metadata ptr %17, metadata !3956, metadata !DIExpression()), !dbg !4151
  %18 = icmp eq ptr %17, null, !dbg !4153
  br i1 %18, label %19, label %20, !dbg !4154

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !4155
  unreachable, !dbg !4155

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !790, metadata !DIExpression()), !dbg !4133
  store i64 %16, ptr %1, align 8, !dbg !4156, !tbaa !1137
  ret ptr %17, !dbg !4157
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !790, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %1, metadata !791, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %2, metadata !792, metadata !DIExpression()), !dbg !4158
  %4 = load i64, ptr %1, align 8, !dbg !4159, !tbaa !1137
  call void @llvm.dbg.value(metadata i64 %4, metadata !793, metadata !DIExpression()), !dbg !4158
  %5 = icmp eq ptr %0, null, !dbg !4160
  br i1 %5, label %6, label %13, !dbg !4161

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4162
  br i1 %7, label %8, label %20, !dbg !4163

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4164
  call void @llvm.dbg.value(metadata i64 %9, metadata !793, metadata !DIExpression()), !dbg !4158
  %10 = icmp ugt i64 %2, 128, !dbg !4166
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %12, metadata !793, metadata !DIExpression()), !dbg !4158
  br label %20, !dbg !4168

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4169
  %15 = add nuw i64 %14, 1, !dbg !4169
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4169
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4169
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4169
  call void @llvm.dbg.value(metadata i64 %18, metadata !793, metadata !DIExpression()), !dbg !4158
  br i1 %17, label %19, label %20, !dbg !4170

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !4171
  unreachable, !dbg !4171

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4158
  call void @llvm.dbg.value(metadata i64 %21, metadata !793, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %0, metadata !3948, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %21, metadata !3951, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %2, metadata !3952, metadata !DIExpression()), !dbg !4172
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !4174
  call void @llvm.dbg.value(metadata ptr %22, metadata !3956, metadata !DIExpression()), !dbg !4175
  %23 = icmp eq ptr %22, null, !dbg !4177
  br i1 %23, label %24, label %25, !dbg !4178

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !4179
  unreachable, !dbg !4179

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !790, metadata !DIExpression()), !dbg !4158
  store i64 %21, ptr %1, align 8, !dbg !4180, !tbaa !1137
  ret ptr %22, !dbg !4181
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !797 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !802, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %1, metadata !803, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %2, metadata !804, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %3, metadata !805, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %4, metadata !806, metadata !DIExpression()), !dbg !4182
  %6 = load i64, ptr %1, align 8, !dbg !4183, !tbaa !1137
  call void @llvm.dbg.value(metadata i64 %6, metadata !807, metadata !DIExpression()), !dbg !4182
  %7 = ashr i64 %6, 1, !dbg !4184
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4184
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4184
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4184
  call void @llvm.dbg.value(metadata i64 %10, metadata !808, metadata !DIExpression()), !dbg !4182
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4186
  call void @llvm.dbg.value(metadata i64 %11, metadata !808, metadata !DIExpression()), !dbg !4182
  %12 = icmp sgt i64 %3, -1, !dbg !4187
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4189
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4189
  call void @llvm.dbg.value(metadata i64 %15, metadata !808, metadata !DIExpression()), !dbg !4182
  %16 = icmp slt i64 %4, 0, !dbg !4190
  br i1 %16, label %17, label %30, !dbg !4190

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4190
  br i1 %18, label %19, label %24, !dbg !4190

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4190
  %21 = udiv i64 9223372036854775807, %20, !dbg !4190
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4190
  br i1 %23, label %46, label %43, !dbg !4190

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4190
  br i1 %25, label %43, label %26, !dbg !4190

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4190
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4190
  %29 = icmp ult i64 %28, %15, !dbg !4190
  br i1 %29, label %46, label %43, !dbg !4190

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4190
  br i1 %31, label %43, label %32, !dbg !4190

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4190
  br i1 %33, label %34, label %40, !dbg !4190

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4190
  br i1 %35, label %43, label %36, !dbg !4190

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4190
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4190
  %39 = icmp ult i64 %38, %4, !dbg !4190
  br i1 %39, label %46, label %43, !dbg !4190

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4190
  br i1 %42, label %46, label %43, !dbg !4190

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !809, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4182
  %44 = mul i64 %15, %4, !dbg !4190
  call void @llvm.dbg.value(metadata i64 %44, metadata !809, metadata !DIExpression()), !dbg !4182
  %45 = icmp slt i64 %44, 128, !dbg !4190
  br i1 %45, label %46, label %52, !dbg !4190

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !810, metadata !DIExpression()), !dbg !4182
  %48 = sdiv i64 %47, %4, !dbg !4191
  call void @llvm.dbg.value(metadata i64 %48, metadata !808, metadata !DIExpression()), !dbg !4182
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %51, metadata !809, metadata !DIExpression()), !dbg !4182
  br label %52, !dbg !4195

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4182
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4182
  call void @llvm.dbg.value(metadata i64 %54, metadata !809, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %53, metadata !808, metadata !DIExpression()), !dbg !4182
  %55 = icmp eq ptr %0, null, !dbg !4196
  br i1 %55, label %56, label %57, !dbg !4198

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4199, !tbaa !1137
  br label %57, !dbg !4200

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4201
  %59 = icmp slt i64 %58, %2, !dbg !4203
  br i1 %59, label %60, label %97, !dbg !4204

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4205
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4205
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4205
  call void @llvm.dbg.value(metadata i64 %63, metadata !808, metadata !DIExpression()), !dbg !4182
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4206
  br i1 %66, label %96, label %67, !dbg !4206

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4207

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4207
  br i1 %69, label %70, label %75, !dbg !4207

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4207
  %72 = udiv i64 9223372036854775807, %71, !dbg !4207
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4207
  br i1 %74, label %96, label %94, !dbg !4207

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4207
  br i1 %76, label %94, label %77, !dbg !4207

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4207
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4207
  %80 = icmp ult i64 %79, %63, !dbg !4207
  br i1 %80, label %96, label %94, !dbg !4207

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4207
  br i1 %82, label %94, label %83, !dbg !4207

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4207
  br i1 %84, label %85, label %91, !dbg !4207

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4207
  br i1 %86, label %94, label %87, !dbg !4207

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4207
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4207
  %90 = icmp ult i64 %89, %4, !dbg !4207
  br i1 %90, label %96, label %94, !dbg !4207

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4207
  br i1 %93, label %96, label %94, !dbg !4207

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !809, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4182
  %95 = mul i64 %63, %4, !dbg !4207
  call void @llvm.dbg.value(metadata i64 %95, metadata !809, metadata !DIExpression()), !dbg !4182
  br label %97, !dbg !4208

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #39, !dbg !4209
  unreachable, !dbg !4209

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4182
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4182
  call void @llvm.dbg.value(metadata i64 %99, metadata !809, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %98, metadata !808, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %0, metadata !4028, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %99, metadata !4029, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %0, metadata !4031, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %99, metadata !4035, metadata !DIExpression()), !dbg !4212
  %100 = icmp eq i64 %99, 0, !dbg !4214
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4214
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #45, !dbg !4215
  call void @llvm.dbg.value(metadata ptr %102, metadata !3956, metadata !DIExpression()), !dbg !4216
  %103 = icmp eq ptr %102, null, !dbg !4218
  br i1 %103, label %104, label %105, !dbg !4219

104:                                              ; preds = %97
  tail call void @xalloc_die() #39, !dbg !4220
  unreachable, !dbg !4220

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !802, metadata !DIExpression()), !dbg !4182
  store i64 %98, ptr %1, align 8, !dbg !4221, !tbaa !1137
  ret ptr %102, !dbg !4222
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4223 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 1, metadata !4230, metadata !DIExpression()), !dbg !4231
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #42, !dbg !4233
  call void @llvm.dbg.value(metadata ptr %2, metadata !3956, metadata !DIExpression()), !dbg !4234
  %3 = icmp eq ptr %2, null, !dbg !4236
  br i1 %3, label %4, label %5, !dbg !4237

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4238
  unreachable, !dbg !4238

5:                                                ; preds = %1
  ret ptr %2, !dbg !4239
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4240 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4228 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 %1, metadata !4230, metadata !DIExpression()), !dbg !4241
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #42, !dbg !4242
  call void @llvm.dbg.value(metadata ptr %3, metadata !3956, metadata !DIExpression()), !dbg !4243
  %4 = icmp eq ptr %3, null, !dbg !4245
  br i1 %4, label %5, label %6, !dbg !4246

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4247
  unreachable, !dbg !4247

6:                                                ; preds = %2
  ret ptr %3, !dbg !4248
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4249 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 1, metadata !4256, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %0, metadata !4259, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i64 1, metadata !4262, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i64 %0, metadata !4259, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i64 1, metadata !4262, metadata !DIExpression()), !dbg !4263
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #42, !dbg !4265
  call void @llvm.dbg.value(metadata ptr %2, metadata !3956, metadata !DIExpression()), !dbg !4266
  %3 = icmp eq ptr %2, null, !dbg !4268
  br i1 %3, label %4, label %5, !dbg !4269

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4270
  unreachable, !dbg !4270

5:                                                ; preds = %1
  ret ptr %2, !dbg !4271
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4254 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %1, metadata !4256, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %0, metadata !4259, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !4262, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %0, metadata !4259, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !4262, metadata !DIExpression()), !dbg !4273
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #42, !dbg !4275
  call void @llvm.dbg.value(metadata ptr %3, metadata !3956, metadata !DIExpression()), !dbg !4276
  %4 = icmp eq ptr %3, null, !dbg !4278
  br i1 %4, label %5, label %6, !dbg !4279

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4280
  unreachable, !dbg !4280

6:                                                ; preds = %2
  ret ptr %3, !dbg !4281
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4282 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4286, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %1, metadata !4287, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %1, metadata !3980, metadata !DIExpression()), !dbg !4289
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4291
  call void @llvm.dbg.value(metadata ptr %3, metadata !3956, metadata !DIExpression()), !dbg !4292
  %4 = icmp eq ptr %3, null, !dbg !4294
  br i1 %4, label %5, label %6, !dbg !4295

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4296
  unreachable, !dbg !4296

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4297, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4302
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4304
  ret ptr %3, !dbg !4305
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4310, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %1, metadata !4311, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3996, metadata !DIExpression()), !dbg !4315
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4317
  call void @llvm.dbg.value(metadata ptr %3, metadata !3956, metadata !DIExpression()), !dbg !4318
  %4 = icmp eq ptr %3, null, !dbg !4320
  br i1 %4, label %5, label %6, !dbg !4321

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4322
  unreachable, !dbg !4322

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4297, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4323
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4325
  ret ptr %3, !dbg !4326
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4327 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4331, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 %1, metadata !4332, metadata !DIExpression()), !dbg !4334
  %3 = add nsw i64 %1, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 %3, metadata !3994, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i64 %3, metadata !3996, metadata !DIExpression()), !dbg !4338
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4340
  call void @llvm.dbg.value(metadata ptr %4, metadata !3956, metadata !DIExpression()), !dbg !4341
  %5 = icmp eq ptr %4, null, !dbg !4343
  br i1 %5, label %6, label %7, !dbg !4344

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4345
  unreachable, !dbg !4345

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4333, metadata !DIExpression()), !dbg !4334
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4346
  store i8 0, ptr %8, align 1, !dbg !4347, !tbaa !924
  call void @llvm.dbg.value(metadata ptr %4, metadata !4297, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4350
  ret ptr %4, !dbg !4351
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4352 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4354, metadata !DIExpression()), !dbg !4355
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !4356
  %3 = add i64 %2, 1, !dbg !4357
  call void @llvm.dbg.value(metadata ptr %0, metadata !4286, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i64 %3, metadata !4287, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i64 %3, metadata !3980, metadata !DIExpression()), !dbg !4360
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4362
  call void @llvm.dbg.value(metadata ptr %4, metadata !3956, metadata !DIExpression()), !dbg !4363
  %5 = icmp eq ptr %4, null, !dbg !4365
  br i1 %5, label %6, label %7, !dbg !4366

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4367
  unreachable, !dbg !4367

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4297, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %3, metadata !4301, metadata !DIExpression()), !dbg !4368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !4370
  ret ptr %4, !dbg !4371
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4372 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4377, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %1, metadata !4374, metadata !DIExpression()), !dbg !4378
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.132, ptr noundef nonnull @.str.2.133, i32 noundef 5) #37, !dbg !4377
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.134, ptr noundef %2) #37, !dbg !4377
  %3 = icmp eq i32 %1, 0, !dbg !4377
  tail call void @llvm.assume(i1 %3), !dbg !4377
  tail call void @abort() #39, !dbg !4379
  unreachable, !dbg !4379
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4380 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !4418, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %1, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4420, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4421, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i8 0, metadata !4422, metadata !DIExpression()), !dbg !4442
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #37, !dbg !4443
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4423, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata ptr %1, metadata !4427, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata ptr %3, metadata !4429, metadata !DIExpression()), !dbg !4445
  br label %4, !dbg !4446

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4445
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4442
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4447
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4442
  call void @llvm.dbg.value(metadata i32 %9, metadata !4420, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %8, metadata !4421, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %10, metadata !4429, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata ptr %6, metadata !4427, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i8 poison, metadata !4422, metadata !DIExpression()), !dbg !4442
  %11 = load i8, ptr %6, align 1, !dbg !4448, !tbaa !924
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4449

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !4420, metadata !DIExpression()), !dbg !4442
  %13 = icmp slt i64 %7, 80, !dbg !4450
  br i1 %13, label %14, label %43, !dbg !4453

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4454
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4429, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4445
  store i8 114, ptr %10, align 1, !dbg !4455, !tbaa !924
  br label %43, !dbg !4456

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4420, metadata !DIExpression()), !dbg !4442
  %17 = or i32 %8, 576, !dbg !4457
  call void @llvm.dbg.value(metadata i32 %17, metadata !4421, metadata !DIExpression()), !dbg !4442
  %18 = icmp slt i64 %7, 80, !dbg !4458
  br i1 %18, label %19, label %43, !dbg !4460

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4461
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4429, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4445
  store i8 119, ptr %10, align 1, !dbg !4462, !tbaa !924
  br label %43, !dbg !4463

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4420, metadata !DIExpression()), !dbg !4442
  %22 = or i32 %8, 1088, !dbg !4464
  call void @llvm.dbg.value(metadata i32 %22, metadata !4421, metadata !DIExpression()), !dbg !4442
  %23 = icmp slt i64 %7, 80, !dbg !4465
  br i1 %23, label %24, label %43, !dbg !4467

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4468
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4429, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4445
  store i8 97, ptr %10, align 1, !dbg !4469, !tbaa !924
  br label %43, !dbg !4470

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !4421, metadata !DIExpression()), !dbg !4442
  %27 = icmp slt i64 %7, 80, !dbg !4471
  br i1 %27, label %28, label %43, !dbg !4473

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4474
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4429, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4445
  store i8 98, ptr %10, align 1, !dbg !4475, !tbaa !924
  br label %43, !dbg !4476

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !4420, metadata !DIExpression()), !dbg !4442
  %31 = icmp slt i64 %7, 80, !dbg !4477
  br i1 %31, label %32, label %43, !dbg !4479

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4480
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4429, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4445
  store i8 43, ptr %10, align 1, !dbg !4481, !tbaa !924
  br label %43, !dbg !4482

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4483
  call void @llvm.dbg.value(metadata i32 %35, metadata !4421, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i8 1, metadata !4422, metadata !DIExpression()), !dbg !4442
  br label %43, !dbg !4484

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4485
  call void @llvm.dbg.value(metadata i32 %37, metadata !4421, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i8 1, metadata !4422, metadata !DIExpression()), !dbg !4442
  br label %43, !dbg !4486

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #38, !dbg !4487
  call void @llvm.dbg.value(metadata i64 %39, metadata !4430, metadata !DIExpression()), !dbg !4488
  %40 = sub nsw i64 80, %7, !dbg !4489
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %41, metadata !4430, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata ptr %10, metadata !4492, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata ptr %6, metadata !4495, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %41, metadata !4496, metadata !DIExpression()), !dbg !4497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #37, !dbg !4499
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4500
  call void @llvm.dbg.value(metadata ptr %42, metadata !4429, metadata !DIExpression()), !dbg !4445
  br label %49, !dbg !4501

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4442
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4442
  call void @llvm.dbg.value(metadata i32 %47, metadata !4420, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %46, metadata !4421, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4429, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4445
  call void @llvm.dbg.value(metadata i8 poison, metadata !4422, metadata !DIExpression()), !dbg !4442
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4502
  call void @llvm.dbg.value(metadata ptr %48, metadata !4427, metadata !DIExpression()), !dbg !4445
  br label %4, !dbg !4503, !llvm.loop !4504

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4445
  call void @llvm.dbg.value(metadata ptr %50, metadata !4429, metadata !DIExpression()), !dbg !4445
  store i8 0, ptr %50, align 1, !dbg !4506, !tbaa !924
  br i1 %5, label %51, label %62, !dbg !4507

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !4508
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #37, !dbg !4509
  call void @llvm.dbg.value(metadata i32 %53, metadata !4435, metadata !DIExpression()), !dbg !4510
  %54 = icmp slt i32 %53, 0, !dbg !4511
  br i1 %54, label %64, label %55, !dbg !4513

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #37, !dbg !4514
  call void @llvm.dbg.value(metadata ptr %56, metadata !4438, metadata !DIExpression()), !dbg !4510
  %57 = icmp eq ptr %56, null, !dbg !4515
  br i1 %57, label %58, label %64, !dbg !4516

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #40, !dbg !4517
  %60 = load i32, ptr %59, align 4, !dbg !4517, !tbaa !915
  call void @llvm.dbg.value(metadata i32 %60, metadata !4439, metadata !DIExpression()), !dbg !4518
  %61 = tail call i32 @close(i32 noundef %53) #37, !dbg !4519
  store i32 %60, ptr %59, align 4, !dbg !4520, !tbaa !915
  br label %64, !dbg !4521

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr %1, metadata !4525, metadata !DIExpression()), !dbg !4526
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4528
  br label %64, !dbg !4529

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !4442
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #37, !dbg !4530
  ret ptr %65, !dbg !4530
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4531 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare !dbg !4534 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4537 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4538 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4541 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4579, metadata !DIExpression()), !dbg !4584
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !4585
  call void @llvm.dbg.value(metadata i1 poison, metadata !4580, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  call void @llvm.dbg.value(metadata ptr %0, metadata !4586, metadata !DIExpression()), !dbg !4589
  %3 = load i32, ptr %0, align 8, !dbg !4591, !tbaa !1480
  %4 = and i32 %3, 32, !dbg !4592
  %5 = icmp eq i32 %4, 0, !dbg !4592
  call void @llvm.dbg.value(metadata i1 %5, metadata !4582, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !4593
  %7 = icmp eq i32 %6, 0, !dbg !4594
  call void @llvm.dbg.value(metadata i1 %7, metadata !4583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  br i1 %5, label %8, label %18, !dbg !4595

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4597
  call void @llvm.dbg.value(metadata i1 %9, metadata !4580, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4598
  %11 = xor i1 %7, true, !dbg !4598
  %12 = sext i1 %11 to i32, !dbg !4598
  br i1 %10, label %21, label %13, !dbg !4598

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !4599
  %15 = load i32, ptr %14, align 4, !dbg !4599, !tbaa !915
  %16 = icmp ne i32 %15, 9, !dbg !4600
  %17 = sext i1 %16 to i32, !dbg !4601
  br label %21, !dbg !4601

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4602

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !4604
  store i32 0, ptr %20, align 4, !dbg !4606, !tbaa !915
  br label %21, !dbg !4604

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4584
  ret i32 %22, !dbg !4607
}

; Function Attrs: nounwind
declare !dbg !4608 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4611 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr %1, metadata !4617, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %2, metadata !4618, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr %3, metadata !4619, metadata !DIExpression()), !dbg !4621
  %5 = icmp eq ptr %1, null, !dbg !4622
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4624
  %7 = select i1 %5, ptr @.str.141, ptr %1, !dbg !4624
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %8, metadata !4618, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr %7, metadata !4617, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr %6, metadata !4616, metadata !DIExpression()), !dbg !4621
  %9 = icmp eq ptr %3, null, !dbg !4625
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4627
  call void @llvm.dbg.value(metadata ptr %10, metadata !4619, metadata !DIExpression()), !dbg !4621
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !4628
  call void @llvm.dbg.value(metadata i64 %11, metadata !4620, metadata !DIExpression()), !dbg !4621
  %12 = icmp ult i64 %11, -3, !dbg !4629
  br i1 %12, label %13, label %17, !dbg !4631

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !4632
  %15 = icmp eq i32 %14, 0, !dbg !4632
  br i1 %15, label %16, label %29, !dbg !4633

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4634, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata ptr %10, metadata !4641, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i32 0, metadata !4644, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i64 8, metadata !4645, metadata !DIExpression()), !dbg !4646
  store i64 0, ptr %10, align 1, !dbg !4648
  br label %29, !dbg !4649

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4650
  br i1 %18, label %19, label %20, !dbg !4652

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4653
  unreachable, !dbg !4653

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4654

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !4656
  br i1 %23, label %29, label %24, !dbg !4657

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4658
  br i1 %25, label %29, label %26, !dbg !4661

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4662, !tbaa !924
  %28 = zext i8 %27 to i32, !dbg !4663
  store i32 %28, ptr %6, align 4, !dbg !4664, !tbaa !915
  br label %29, !dbg !4665

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4621
  ret i64 %30, !dbg !4666
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4667 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4673 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4675, metadata !DIExpression()), !dbg !4679
  call void @llvm.dbg.value(metadata i64 %1, metadata !4676, metadata !DIExpression()), !dbg !4679
  call void @llvm.dbg.value(metadata i64 %2, metadata !4677, metadata !DIExpression()), !dbg !4679
  %4 = icmp eq i64 %2, 0, !dbg !4680
  br i1 %4, label %8, label %5, !dbg !4680

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4680
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4680
  br i1 %7, label %13, label %8, !dbg !4680

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4679
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4679
  %9 = mul i64 %2, %1, !dbg !4680
  call void @llvm.dbg.value(metadata i64 %9, metadata !4678, metadata !DIExpression()), !dbg !4679
  call void @llvm.dbg.value(metadata ptr %0, metadata !4682, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i64 %9, metadata !4685, metadata !DIExpression()), !dbg !4686
  %10 = icmp eq i64 %9, 0, !dbg !4688
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4688
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4689
  br label %15, !dbg !4690

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4679
  %14 = tail call ptr @__errno_location() #40, !dbg !4691
  store i32 12, ptr %14, align 4, !dbg !4693, !tbaa !915
  br label %15, !dbg !4694

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4679
  ret ptr %16, !dbg !4695
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4696 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4700, metadata !DIExpression()), !dbg !4705
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4701, metadata !DIExpression()), !dbg !4707
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4708
  %4 = icmp eq i32 %3, 0, !dbg !4708
  br i1 %4, label %5, label %12, !dbg !4710

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4711, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata ptr @.str.146, metadata !4714, metadata !DIExpression()), !dbg !4715
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.146, i64 2), !dbg !4718
  %7 = icmp eq i32 %6, 0, !dbg !4719
  br i1 %7, label %11, label %8, !dbg !4720

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4711, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata ptr @.str.1.147, metadata !4714, metadata !DIExpression()), !dbg !4721
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.147, i64 6), !dbg !4723
  %10 = icmp eq i32 %9, 0, !dbg !4724
  br i1 %10, label %11, label %12, !dbg !4725

11:                                               ; preds = %8, %5
  br label %12, !dbg !4726

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4705
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4727
  ret i1 %13, !dbg !4727
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4728 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4732, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata ptr %1, metadata !4733, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i64 %2, metadata !4734, metadata !DIExpression()), !dbg !4735
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4736
  ret i32 %4, !dbg !4737
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4742, metadata !DIExpression()), !dbg !4743
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4744
  ret ptr %2, !dbg !4745
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4746 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4748, metadata !DIExpression()), !dbg !4750
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4751
  call void @llvm.dbg.value(metadata ptr %2, metadata !4749, metadata !DIExpression()), !dbg !4750
  ret ptr %2, !dbg !4752
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4753 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4755, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata ptr %1, metadata !4756, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i64 %2, metadata !4757, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i32 %0, metadata !4748, metadata !DIExpression()), !dbg !4763
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4765
  call void @llvm.dbg.value(metadata ptr %4, metadata !4749, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata ptr %4, metadata !4758, metadata !DIExpression()), !dbg !4762
  %5 = icmp eq ptr %4, null, !dbg !4766
  br i1 %5, label %6, label %9, !dbg !4767

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4768
  br i1 %7, label %19, label %8, !dbg !4771

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4772, !tbaa !924
  br label %19, !dbg !4773

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4774
  call void @llvm.dbg.value(metadata i64 %10, metadata !4759, metadata !DIExpression()), !dbg !4775
  %11 = icmp ult i64 %10, %2, !dbg !4776
  br i1 %11, label %12, label %14, !dbg !4778

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4779
  call void @llvm.dbg.value(metadata ptr %1, metadata !4781, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata ptr %4, metadata !4784, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 %13, metadata !4785, metadata !DIExpression()), !dbg !4786
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !4788
  br label %19, !dbg !4789

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4790
  br i1 %15, label %19, label %16, !dbg !4793

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4794
  call void @llvm.dbg.value(metadata ptr %1, metadata !4781, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata ptr %4, metadata !4784, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i64 %17, metadata !4785, metadata !DIExpression()), !dbg !4796
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4798
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4799
  store i8 0, ptr %18, align 1, !dbg !4800, !tbaa !924
  br label %19, !dbg !4801

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4802
  ret i32 %20, !dbg !4803
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
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #34 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { nounwind allocsize(0,1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!74, !424, !428, !443, !728, !762, !765, !767, !770, !772, !774, !500, !514, !565, !776, !720, !782, !812, !814, !816, !744, !818, !821, !823, !825}
!llvm.ident = !{!827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827}
!llvm.module.flags = !{!828, !829, !830, !831, !832, !833, !834}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/paste.c", directory: "/src", checksumkind: CSK_MD5, checksum: "043eec2995868248cd7453e271fe4ea7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 453, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1632, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 204)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 952, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 119)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1328, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 166)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 69)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 494, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 10)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 24)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 5)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "longopts", scope: !74, file: !2, line: 74, type: !406, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !131, globals: !142, splitDebugInlining: false, nameTableKind: None)
!75 = !{!76, !82, !97, !112, !116, !119, !122}
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 337, baseType: !78, size: 32, elements: !79)
!77 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!81 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !83, line: 42, baseType: !84, size: 32, elements: !85)
!83 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!84 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!86 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!87 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!88 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!89 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!90 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!91 = !DIEnumerator(name: "c_quoting_style", value: 5)
!92 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!93 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!94 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!95 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!96 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !98, line: 46, baseType: !84, size: 32, elements: !99)
!98 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!100 = !DIEnumerator(name: "_ISupper", value: 256)
!101 = !DIEnumerator(name: "_ISlower", value: 512)
!102 = !DIEnumerator(name: "_ISalpha", value: 1024)
!103 = !DIEnumerator(name: "_ISdigit", value: 2048)
!104 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!105 = !DIEnumerator(name: "_ISspace", value: 8192)
!106 = !DIEnumerator(name: "_ISprint", value: 16384)
!107 = !DIEnumerator(name: "_ISgraph", value: 32768)
!108 = !DIEnumerator(name: "_ISblank", value: 1)
!109 = !DIEnumerator(name: "_IScntrl", value: 2)
!110 = !DIEnumerator(name: "_ISpunct", value: 4)
!111 = !DIEnumerator(name: "_ISalnum", value: 8)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 127, baseType: !84, size: 32, elements: !114)
!113 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!114 = !{!115}
!115 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 131, baseType: !84, size: 32, elements: !117)
!117 = !{!118}
!118 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 130, baseType: !84, size: 32, elements: !120)
!120 = !{!121}
!121 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 44, baseType: !84, size: 32, elements: !124)
!123 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!126 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!127 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!128 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!129 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!130 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!131 = !{!132, !133, !78, !134, !135, !138, !140, !141}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 46, baseType: !137)
!136 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!137 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!142 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !143, !148, !153, !158, !163, !165, !170, !173, !175, !177, !180, !185, !190, !272, !274, !276, !281, !283, !285, !287, !289, !291, !293, !295, !297, !302, !307, !309, !311, !313, !315, !317, !319, !324, !329, !331, !336, !338, !340, !342, !344, !346, !351, !353, !355, !360, !365, !370, !375, !377, !382, !384, !386, !72, !388, !390, !395, !397, !399, !401}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 510, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 3)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 14)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 15)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 16)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !49, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 52)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !74, file: !2, line: 55, type: !172, isLocal: true, isDefinition: true)
!172 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "serial_merge", scope: !74, file: !2, line: 59, type: !172, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "delims", scope: !74, file: !2, line: 63, type: !132, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "delim_lens", scope: !74, file: !2, line: 67, type: !179, isLocal: true, isDefinition: true)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !77, line: 729, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 56)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !77, line: 736, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 75)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !192, file: !77, line: 575, type: !78, isLocal: true, isDefinition: true)
!192 = distinct !DISubprogram(name: "oputs_", scope: !77, file: !77, line: 573, type: !193, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !195)
!193 = !DISubroutineType(cc: DW_CC_nocall, types: !194)
!194 = !{null, !138, !138}
!195 = !{!196, !197, !198, !201, !202, !203, !204, !208, !209, !210, !211, !213, !266, !267, !268, !270, !271}
!196 = !DILocalVariable(name: "program", arg: 1, scope: !192, file: !77, line: 573, type: !138)
!197 = !DILocalVariable(name: "option", arg: 2, scope: !192, file: !77, line: 573, type: !138)
!198 = !DILocalVariable(name: "term", scope: !199, file: !77, line: 585, type: !138)
!199 = distinct !DILexicalBlock(scope: !200, file: !77, line: 582, column: 5)
!200 = distinct !DILexicalBlock(scope: !192, file: !77, line: 581, column: 7)
!201 = !DILocalVariable(name: "double_space", scope: !192, file: !77, line: 594, type: !172)
!202 = !DILocalVariable(name: "first_word", scope: !192, file: !77, line: 595, type: !138)
!203 = !DILocalVariable(name: "option_text", scope: !192, file: !77, line: 596, type: !138)
!204 = !DILocalVariable(name: "s", scope: !205, file: !77, line: 608, type: !138)
!205 = distinct !DILexicalBlock(scope: !206, file: !77, line: 605, column: 5)
!206 = distinct !DILexicalBlock(scope: !207, file: !77, line: 604, column: 12)
!207 = distinct !DILexicalBlock(scope: !192, file: !77, line: 597, column: 7)
!208 = !DILocalVariable(name: "spaces", scope: !205, file: !77, line: 609, type: !135)
!209 = !DILocalVariable(name: "anchor_len", scope: !192, file: !77, line: 620, type: !135)
!210 = !DILocalVariable(name: "desc_text", scope: !192, file: !77, line: 625, type: !138)
!211 = !DILocalVariable(name: "__ptr", scope: !212, file: !77, line: 644, type: !138)
!212 = distinct !DILexicalBlock(scope: !192, file: !77, line: 644, column: 3)
!213 = !DILocalVariable(name: "__stream", scope: !212, file: !77, line: 644, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !217)
!216 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !219)
!218 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !235, !237, !238, !239, !243, !244, !246, !247, !250, !252, !255, !258, !259, !260, !261, !262}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !217, file: !218, line: 51, baseType: !78, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !217, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !217, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !217, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !217, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !217, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !217, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !217, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !217, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !217, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !217, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !217, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !217, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !218, line: 36, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !217, file: !218, line: 70, baseType: !236, size: 64, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !217, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !217, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !217, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !241, line: 152, baseType: !242)
!241 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!242 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !217, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !217, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!245 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !217, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !217, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !218, line: 43, baseType: null)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !217, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !241, line: 153, baseType: !242)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !217, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !218, line: 37, flags: DIFlagFwdDecl)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !217, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !218, line: 38, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !217, file: !218, line: 93, baseType: !236, size: 64, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !217, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !217, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !217, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !217, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 20)
!266 = !DILocalVariable(name: "__cnt", scope: !212, file: !77, line: 644, type: !135)
!267 = !DILocalVariable(name: "url_program", scope: !192, file: !77, line: 648, type: !138)
!268 = !DILocalVariable(name: "__ptr", scope: !269, file: !77, line: 686, type: !138)
!269 = distinct !DILexicalBlock(scope: !192, file: !77, line: 686, column: 3)
!270 = !DILocalVariable(name: "__stream", scope: !269, file: !77, line: 686, type: !214)
!271 = !DILocalVariable(name: "__cnt", scope: !269, file: !77, line: 686, type: !135)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !77, line: 585, type: !69, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !77, line: 586, type: !69, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !77, line: 595, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 4)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !77, line: 620, type: !19, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !77, line: 648, type: !49, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !77, line: 648, type: !69, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !77, line: 649, type: !278, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !77, line: 649, type: !145, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !77, line: 650, type: !69, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !77, line: 651, type: !19, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !77, line: 651, type: !19, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !77, line: 652, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 7)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !77, line: 653, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 8)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !77, line: 654, type: !59, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !77, line: 655, type: !59, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !77, line: 656, type: !59, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !77, line: 657, type: !59, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !77, line: 663, type: !299, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !77, line: 664, type: !59, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !77, line: 669, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 17)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !77, line: 669, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 40)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !77, line: 676, type: !155, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !77, line: 676, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 61)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !77, line: 679, type: !145, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !77, line: 683, type: !69, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !77, line: 688, type: !69, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !77, line: 691, type: !304, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !77, line: 839, type: !160, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !77, line: 840, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 22)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !77, line: 841, type: !155, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !77, line: 862, type: !278, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !77, line: 868, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 71)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !77, line: 875, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 27)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !77, line: 877, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 51)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !77, line: 877, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 12)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !299, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 11)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !160, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !69, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !304, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "line_delim", scope: !74, file: !2, line: 72, type: !140, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "num_delims", scope: !74, file: !2, line: 70, type: !392, isLocal: true, isDefinition: true)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !393, line: 130, baseType: !394)
!393 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !136, line: 35, baseType: !242)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !49, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !145, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !77, line: 952, type: !372, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 25)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 1536, elements: !20)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !409, line: 50, size: 256, elements: !410)
!409 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!410 = !{!411, !412, !413, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !409, line: 52, baseType: !138, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !408, file: !409, line: 55, baseType: !78, size: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !408, file: !409, line: 56, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !408, file: !409, line: 57, baseType: !78, size: 32, offset: 192)
!416 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!417 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!418 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !421, line: 3, type: !155, isLocal: true, isDefinition: true)
!421 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "Version", scope: !424, file: !421, line: 3, type: !138, isLocal: false, isDefinition: true)
!424 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !425, splitDebugInlining: false, nameTableKind: None)
!425 = !{!419, !422}
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "file_name", scope: !428, file: !429, line: 45, type: !138, isLocal: true, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C11, file: !429, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !430, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!430 = !{!431, !433, !435, !437, !426, !439}
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !429, line: 121, type: !299, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !429, line: 121, type: !372, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !429, line: 123, type: !299, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !429, line: 126, type: !145, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !428, file: !429, line: 55, type: !172, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !443, file: !444, line: 66, type: !495, isLocal: false, isDefinition: true)
!443 = distinct !DICompileUnit(language: DW_LANG_C11, file: !444, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !445, globals: !446, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!445 = !{!133, !140}
!446 = !{!447, !449, !474, !476, !478, !480, !441, !482, !484, !486, !488, !493}
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !444, line: 272, type: !69, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "old_file_name", scope: !451, file: !444, line: 304, type: !138, isLocal: true, isDefinition: true)
!451 = distinct !DISubprogram(name: "verror_at_line", scope: !444, file: !444, line: 298, type: !452, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !467)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !78, !78, !138, !84, !138, !454}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !455, line: 52, baseType: !456)
!455 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !457, line: 14, baseType: !458)
!457 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !459, baseType: !460)
!459 = !DIFile(filename: "lib/error.c", directory: "/src")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !461)
!461 = !{!462, !463, !464, !465, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !460, file: !459, baseType: !133, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !460, file: !459, baseType: !133, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !460, file: !459, baseType: !133, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !460, file: !459, baseType: !78, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !460, file: !459, baseType: !78, size: 32, offset: 224)
!467 = !{!468, !469, !470, !471, !472, !473}
!468 = !DILocalVariable(name: "status", arg: 1, scope: !451, file: !444, line: 298, type: !78)
!469 = !DILocalVariable(name: "errnum", arg: 2, scope: !451, file: !444, line: 298, type: !78)
!470 = !DILocalVariable(name: "file_name", arg: 3, scope: !451, file: !444, line: 298, type: !138)
!471 = !DILocalVariable(name: "line_number", arg: 4, scope: !451, file: !444, line: 298, type: !84)
!472 = !DILocalVariable(name: "message", arg: 5, scope: !451, file: !444, line: 298, type: !138)
!473 = !DILocalVariable(name: "args", arg: 6, scope: !451, file: !444, line: 298, type: !454)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(name: "old_line_number", scope: !451, file: !444, line: 305, type: !84, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !444, line: 338, type: !278, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !444, line: 346, type: !304, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !444, line: 346, type: !49, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "error_message_count", scope: !443, file: !444, line: 69, type: !84, isLocal: false, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !443, file: !444, line: 295, type: !78, isLocal: false, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !444, line: 208, type: !299, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !444, line: 208, type: !490, isLocal: true, isDefinition: true)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 21)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !444, line: 214, type: !69, isLocal: true, isDefinition: true)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null}
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "program_name", scope: !500, file: !501, line: 31, type: !138, isLocal: false, isDefinition: true)
!500 = distinct !DICompileUnit(language: DW_LANG_C11, file: !501, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !502, globals: !503, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!502 = !{!132}
!503 = !{!498, !504, !506}
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !501, line: 46, type: !304, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !501, line: 49, type: !278, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "utf07FF", scope: !510, file: !511, line: 46, type: !538, isLocal: true, isDefinition: true)
!510 = distinct !DISubprogram(name: "proper_name_lite", scope: !511, file: !511, line: 38, type: !512, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !516)
!511 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!512 = !DISubroutineType(types: !513)
!513 = !{!138, !138, !138}
!514 = distinct !DICompileUnit(language: DW_LANG_C11, file: !511, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !515, splitDebugInlining: false, nameTableKind: None)
!515 = !{!508}
!516 = !{!517, !518, !519, !520, !525}
!517 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !510, file: !511, line: 38, type: !138)
!518 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !510, file: !511, line: 38, type: !138)
!519 = !DILocalVariable(name: "translation", scope: !510, file: !511, line: 40, type: !138)
!520 = !DILocalVariable(name: "w", scope: !510, file: !511, line: 47, type: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !522, line: 37, baseType: !523)
!522 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !241, line: 57, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !241, line: 42, baseType: !84)
!525 = !DILocalVariable(name: "mbs", scope: !510, file: !511, line: 48, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !528)
!527 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !530)
!529 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !530, file: !529, line: 15, baseType: !78, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !530, file: !529, line: 20, baseType: !534, size: 32, offset: 32)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !529, line: 16, size: 32, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !534, file: !529, line: 18, baseType: !84, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !534, file: !529, line: 19, baseType: !278, size: 32)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !50)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !541, line: 78, type: !304, isLocal: true, isDefinition: true)
!541 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !541, line: 79, type: !19, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !541, line: 80, type: !546, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 13)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !541, line: 81, type: !546, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !541, line: 82, type: !263, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !541, line: 83, type: !49, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !541, line: 84, type: !304, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !541, line: 85, type: !299, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !541, line: 86, type: !299, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !541, line: 87, type: !304, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !565, file: !541, line: 76, type: !637, isLocal: false, isDefinition: true)
!565 = distinct !DICompileUnit(language: DW_LANG_C11, file: !541, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !566, retainedTypes: !572, globals: !573, splitDebugInlining: false, nameTableKind: None)
!566 = !{!82, !567, !97}
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !83, line: 254, baseType: !84, size: 32, elements: !568)
!568 = !{!569, !570, !571}
!569 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!570 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!571 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!572 = !{!78, !134, !135}
!573 = !{!539, !542, !544, !549, !551, !553, !555, !557, !559, !561, !563, !574, !578, !588, !590, !595, !597, !599, !601, !603, !626, !633, !635}
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !565, file: !541, line: 92, type: !576, isLocal: false, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 320, elements: !60)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !565, file: !541, line: 1040, type: !580, isLocal: false, isDefinition: true)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !541, line: 56, size: 448, elements: !581)
!581 = !{!582, !583, !584, !586, !587}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !580, file: !541, line: 59, baseType: !82, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !541, line: 62, baseType: !78, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !580, file: !541, line: 66, baseType: !585, size: 256, offset: 64)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !305)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !580, file: !541, line: 69, baseType: !138, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !580, file: !541, line: 72, baseType: !138, size: 64, offset: 384)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !565, file: !541, line: 107, type: !580, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "slot0", scope: !565, file: !541, line: 831, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 256)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !541, line: 321, type: !49, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !541, line: 357, type: !49, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !541, line: 358, type: !49, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !541, line: 199, type: !299, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "quote", scope: !605, file: !541, line: 228, type: !624, isLocal: true, isDefinition: true)
!605 = distinct !DISubprogram(name: "gettext_quote", scope: !541, file: !541, line: 197, type: !606, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!138, !138, !82}
!608 = !{!609, !610, !611, !612, !613}
!609 = !DILocalVariable(name: "msgid", arg: 1, scope: !605, file: !541, line: 197, type: !138)
!610 = !DILocalVariable(name: "s", arg: 2, scope: !605, file: !541, line: 197, type: !82)
!611 = !DILocalVariable(name: "translation", scope: !605, file: !541, line: 199, type: !138)
!612 = !DILocalVariable(name: "w", scope: !605, file: !541, line: 229, type: !521)
!613 = !DILocalVariable(name: "mbs", scope: !605, file: !541, line: 230, type: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !616, file: !529, line: 15, baseType: !78, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !616, file: !529, line: 20, baseType: !620, size: 32, offset: 32)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !529, line: 16, size: 32, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !620, file: !529, line: 18, baseType: !84, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !620, file: !529, line: 19, baseType: !278, size: 32)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !625)
!625 = !{!51, !280}
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "slotvec", scope: !565, file: !541, line: 834, type: !628, isLocal: true, isDefinition: true)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !541, line: 823, size: 128, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !629, file: !541, line: 825, baseType: !135, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !629, file: !541, line: 826, baseType: !132, size: 64, offset: 64)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "nslots", scope: !565, file: !541, line: 832, type: !78, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "slotvec0", scope: !565, file: !541, line: 833, type: !629, isLocal: true, isDefinition: true)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 704, elements: !380)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !641, line: 67, type: !372, isLocal: true, isDefinition: true)
!641 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !641, line: 69, type: !299, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !641, line: 83, type: !299, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !641, line: 83, type: !278, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !641, line: 85, type: !49, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !641, line: 88, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 171)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !641, line: 88, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 34)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !641, line: 105, type: !160, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !641, line: 109, type: !664, isLocal: true, isDefinition: true)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 23)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !641, line: 113, type: !669, isLocal: true, isDefinition: true)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 28)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !641, line: 120, type: !674, isLocal: true, isDefinition: true)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 32)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !641, line: 127, type: !679, isLocal: true, isDefinition: true)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 36)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !641, line: 134, type: !326, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !641, line: 142, type: !686, isLocal: true, isDefinition: true)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 44)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !641, line: 150, type: !691, isLocal: true, isDefinition: true)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 48)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !641, line: 159, type: !167, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !641, line: 170, type: !698, isLocal: true, isDefinition: true)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 60)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !641, line: 248, type: !263, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !641, line: 248, type: !348, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !641, line: 254, type: !263, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !641, line: 254, type: !150, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !641, line: 254, type: !326, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !641, line: 259, type: !3, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !641, line: 259, type: !715, isLocal: true, isDefinition: true)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 29)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !720, file: !721, line: 26, type: !723, isLocal: false, isDefinition: true)
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !722, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!722 = !{!718}
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 47)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(name: "exit_failure", scope: !728, file: !729, line: 24, type: !731, isLocal: false, isDefinition: true)
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !730, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!730 = !{!726}
!731 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !734, line: 34, type: !145, isLocal: true, isDefinition: true)
!734 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !734, line: 34, type: !299, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !734, line: 34, type: !321, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !741, line: 108, type: !54, isLocal: true, isDefinition: true)
!741 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "internal_state", scope: !744, file: !741, line: 97, type: !747, isLocal: true, isDefinition: true)
!744 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !745, globals: !746, splitDebugInlining: false, nameTableKind: None)
!745 = !{!133, !135, !140}
!746 = !{!739, !742}
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !749, file: !529, line: 15, baseType: !78, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !749, file: !529, line: 20, baseType: !753, size: 32, offset: 32)
!753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !529, line: 16, size: 32, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !753, file: !529, line: 18, baseType: !84, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !753, file: !529, line: 19, baseType: !278, size: 32)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !759, line: 35, type: !49, isLocal: true, isDefinition: true)
!759 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !759, line: 35, type: !19, isLocal: true, isDefinition: true)
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !764, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!764 = !{!122}
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!769 = !{!133}
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !777, retainedTypes: !769, globals: !781, splitDebugInlining: false, nameTableKind: None)
!777 = !{!778}
!778 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !641, line: 40, baseType: !84, size: 32, elements: !779)
!779 = !{!780}
!780 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!781 = !{!639, !642, !644, !646, !648, !650, !655, !660, !662, !667, !672, !677, !682, !684, !689, !694, !696, !701, !703, !705, !707, !709, !711, !713}
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !784, retainedTypes: !811, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!784 = !{!785, !796}
!785 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !786, file: !783, line: 188, baseType: !84, size: 32, elements: !794)
!786 = distinct !DISubprogram(name: "x2nrealloc", scope: !783, file: !783, line: 176, type: !787, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{!133, !133, !179, !135}
!789 = !{!790, !791, !792, !793}
!790 = !DILocalVariable(name: "p", arg: 1, scope: !786, file: !783, line: 176, type: !133)
!791 = !DILocalVariable(name: "pn", arg: 2, scope: !786, file: !783, line: 176, type: !179)
!792 = !DILocalVariable(name: "s", arg: 3, scope: !786, file: !783, line: 176, type: !135)
!793 = !DILocalVariable(name: "n", scope: !786, file: !783, line: 178, type: !135)
!794 = !{!795}
!795 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!796 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !797, file: !783, line: 228, baseType: !84, size: 32, elements: !794)
!797 = distinct !DISubprogram(name: "xpalloc", scope: !783, file: !783, line: 223, type: !798, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !801)
!798 = !DISubroutineType(types: !799)
!799 = !{!133, !133, !800, !392, !394, !392}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810}
!802 = !DILocalVariable(name: "pa", arg: 1, scope: !797, file: !783, line: 223, type: !133)
!803 = !DILocalVariable(name: "pn", arg: 2, scope: !797, file: !783, line: 223, type: !800)
!804 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !797, file: !783, line: 223, type: !392)
!805 = !DILocalVariable(name: "n_max", arg: 4, scope: !797, file: !783, line: 223, type: !394)
!806 = !DILocalVariable(name: "s", arg: 5, scope: !797, file: !783, line: 223, type: !392)
!807 = !DILocalVariable(name: "n0", scope: !797, file: !783, line: 230, type: !392)
!808 = !DILocalVariable(name: "n", scope: !797, file: !783, line: 237, type: !392)
!809 = !DILocalVariable(name: "nbytes", scope: !797, file: !783, line: 248, type: !392)
!810 = !DILocalVariable(name: "adjusted_nbytes", scope: !797, file: !783, line: 252, type: !392)
!811 = !{!132, !133, !172, !242, !137}
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !813, splitDebugInlining: false, nameTableKind: None)
!813 = !{!732, !735, !737}
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !820, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!820 = !{!172, !137, !133}
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !822, splitDebugInlining: false, nameTableKind: None)
!822 = !{!757, !760}
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!827 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!828 = !{i32 7, !"Dwarf Version", i32 5}
!829 = !{i32 2, !"Debug Info Version", i32 3}
!830 = !{i32 1, !"wchar_size", i32 4}
!831 = !{i32 8, !"PIC Level", i32 2}
!832 = !{i32 7, !"PIE Level", i32 2}
!833 = !{i32 7, !"uwtable", i32 2}
!834 = !{i32 7, !"frame-pointer", i32 1}
!835 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 447, type: !836, scopeLine: 448, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !78}
!838 = !{!839}
!839 = !DILocalVariable(name: "status", arg: 1, scope: !835, file: !2, line: 447, type: !78)
!840 = !DILocation(line: 0, scope: !835)
!841 = !DILocation(line: 449, column: 14, scope: !842)
!842 = distinct !DILexicalBlock(scope: !835, file: !2, line: 449, column: 7)
!843 = !DILocation(line: 449, column: 7, scope: !835)
!844 = !DILocation(line: 450, column: 5, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !2, line: 450, column: 5)
!846 = !{!847, !847, i64 0}
!847 = !{!"any pointer", !848, i64 0}
!848 = !{!"omnipotent char", !849, i64 0}
!849 = !{!"Simple C/C++ TBAA"}
!850 = !DILocation(line: 453, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !842, file: !2, line: 452, column: 5)
!852 = !DILocation(line: 457, column: 7, scope: !851)
!853 = !DILocation(line: 729, column: 3, scope: !854, inlinedAt: !856)
!854 = distinct !DISubprogram(name: "emit_stdin_note", scope: !77, file: !77, line: 727, type: !496, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !855)
!855 = !{}
!856 = distinct !DILocation(line: 464, column: 7, scope: !851)
!857 = !DILocation(line: 736, column: 3, scope: !858, inlinedAt: !859)
!858 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !77, file: !77, line: 734, type: !496, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !855)
!859 = distinct !DILocation(line: 465, column: 7, scope: !851)
!860 = !DILocation(line: 467, column: 7, scope: !851)
!861 = !DILocation(line: 472, column: 7, scope: !851)
!862 = !DILocation(line: 478, column: 7, scope: !851)
!863 = !DILocation(line: 482, column: 7, scope: !851)
!864 = !DILocation(line: 483, column: 7, scope: !851)
!865 = !DILocalVariable(name: "program", arg: 1, scope: !866, file: !77, line: 836, type: !138)
!866 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !867, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !138}
!869 = !{!865, !870, !877, !878, !880, !881}
!870 = !DILocalVariable(name: "infomap", scope: !866, file: !77, line: 838, type: !871)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 896, elements: !300)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !866, file: !77, line: 838, size: 128, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !873, file: !77, line: 838, baseType: !138, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !873, file: !77, line: 838, baseType: !138, size: 64, offset: 64)
!877 = !DILocalVariable(name: "node", scope: !866, file: !77, line: 848, type: !138)
!878 = !DILocalVariable(name: "map_prog", scope: !866, file: !77, line: 849, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!880 = !DILocalVariable(name: "lc_messages", scope: !866, file: !77, line: 861, type: !138)
!881 = !DILocalVariable(name: "url_program", scope: !866, file: !77, line: 874, type: !138)
!882 = !DILocation(line: 0, scope: !866, inlinedAt: !883)
!883 = distinct !DILocation(line: 485, column: 7, scope: !851)
!884 = !DILocation(line: 857, column: 3, scope: !866, inlinedAt: !883)
!885 = !DILocation(line: 861, column: 29, scope: !866, inlinedAt: !883)
!886 = !DILocation(line: 862, column: 7, scope: !887, inlinedAt: !883)
!887 = distinct !DILexicalBlock(scope: !866, file: !77, line: 862, column: 7)
!888 = !DILocation(line: 862, column: 19, scope: !887, inlinedAt: !883)
!889 = !DILocation(line: 862, column: 22, scope: !887, inlinedAt: !883)
!890 = !DILocation(line: 862, column: 7, scope: !866, inlinedAt: !883)
!891 = !DILocation(line: 868, column: 7, scope: !892, inlinedAt: !883)
!892 = distinct !DILexicalBlock(scope: !887, file: !77, line: 863, column: 5)
!893 = !DILocation(line: 870, column: 5, scope: !892, inlinedAt: !883)
!894 = !DILocation(line: 875, column: 3, scope: !866, inlinedAt: !883)
!895 = !DILocation(line: 877, column: 3, scope: !866, inlinedAt: !883)
!896 = !DILocation(line: 487, column: 3, scope: !835)
!897 = !DISubprogram(name: "dcgettext", scope: !898, file: !898, line: 51, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!898 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!899 = !DISubroutineType(types: !900)
!900 = !{!132, !138, !138, !78}
!901 = !DISubprogram(name: "__fprintf_chk", scope: !902, file: !902, line: 93, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!902 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!903 = !DISubroutineType(types: !904)
!904 = !{!78, !905, !78, !906, null}
!905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !214)
!906 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!907 = !DISubprogram(name: "__printf_chk", scope: !902, file: !902, line: 95, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!908 = !DISubroutineType(types: !909)
!909 = !{!78, !78, !906, null}
!910 = !DISubprogram(name: "fputs_unlocked", scope: !455, file: !455, line: 691, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!911 = !DISubroutineType(types: !912)
!912 = !{!78, !906, !905}
!913 = !DILocation(line: 0, scope: !192)
!914 = !DILocation(line: 581, column: 7, scope: !200)
!915 = !{!916, !916, i64 0}
!916 = !{!"int", !848, i64 0}
!917 = !DILocation(line: 581, column: 19, scope: !200)
!918 = !DILocation(line: 581, column: 7, scope: !192)
!919 = !DILocation(line: 585, column: 26, scope: !199)
!920 = !DILocation(line: 0, scope: !199)
!921 = !DILocation(line: 586, column: 23, scope: !199)
!922 = !DILocation(line: 586, column: 28, scope: !199)
!923 = !DILocation(line: 586, column: 32, scope: !199)
!924 = !{!848, !848, i64 0}
!925 = !DILocation(line: 586, column: 38, scope: !199)
!926 = !DILocalVariable(name: "__s1", arg: 1, scope: !927, file: !928, line: 1359, type: !138)
!927 = distinct !DISubprogram(name: "streq", scope: !928, file: !928, line: 1359, type: !929, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !931)
!928 = !DIFile(filename: "./lib/string.h", directory: "/src")
!929 = !DISubroutineType(types: !930)
!930 = !{!172, !138, !138}
!931 = !{!926, !932}
!932 = !DILocalVariable(name: "__s2", arg: 2, scope: !927, file: !928, line: 1359, type: !138)
!933 = !DILocation(line: 0, scope: !927, inlinedAt: !934)
!934 = distinct !DILocation(line: 586, column: 41, scope: !199)
!935 = !DILocation(line: 1361, column: 11, scope: !927, inlinedAt: !934)
!936 = !DILocation(line: 1361, column: 10, scope: !927, inlinedAt: !934)
!937 = !DILocation(line: 586, column: 19, scope: !199)
!938 = !DILocation(line: 587, column: 5, scope: !199)
!939 = !DILocation(line: 588, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !192, file: !77, line: 588, column: 7)
!941 = !DILocation(line: 588, column: 7, scope: !192)
!942 = !DILocation(line: 590, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !77, line: 589, column: 5)
!944 = !DILocation(line: 591, column: 7, scope: !943)
!945 = !DILocation(line: 595, column: 37, scope: !192)
!946 = !DILocation(line: 595, column: 35, scope: !192)
!947 = !DILocation(line: 596, column: 29, scope: !192)
!948 = !DILocation(line: 597, column: 8, scope: !207)
!949 = !DILocation(line: 597, column: 7, scope: !192)
!950 = !DILocation(line: 604, column: 24, scope: !206)
!951 = !DILocation(line: 604, column: 12, scope: !207)
!952 = !DILocation(line: 0, scope: !205)
!953 = !DILocation(line: 610, column: 16, scope: !205)
!954 = !DILocation(line: 610, column: 7, scope: !205)
!955 = !DILocation(line: 611, column: 21, scope: !205)
!956 = !{!957, !957, i64 0}
!957 = !{!"short", !848, i64 0}
!958 = !DILocation(line: 611, column: 19, scope: !205)
!959 = !DILocation(line: 611, column: 16, scope: !205)
!960 = !DILocation(line: 610, column: 30, scope: !205)
!961 = distinct !{!961, !954, !955, !962}
!962 = !{!"llvm.loop.mustprogress"}
!963 = !DILocation(line: 612, column: 18, scope: !964)
!964 = distinct !DILexicalBlock(scope: !205, file: !77, line: 612, column: 11)
!965 = !DILocation(line: 612, column: 11, scope: !205)
!966 = !DILocation(line: 620, column: 23, scope: !192)
!967 = !DILocation(line: 625, column: 39, scope: !192)
!968 = !DILocation(line: 626, column: 3, scope: !192)
!969 = !DILocation(line: 626, column: 10, scope: !192)
!970 = !DILocation(line: 626, column: 21, scope: !192)
!971 = !DILocation(line: 628, column: 44, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !77, line: 628, column: 11)
!973 = distinct !DILexicalBlock(scope: !192, file: !77, line: 627, column: 5)
!974 = !DILocation(line: 628, column: 32, scope: !972)
!975 = !DILocation(line: 628, column: 49, scope: !972)
!976 = !DILocation(line: 628, column: 11, scope: !973)
!977 = !DILocation(line: 630, column: 11, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !77, line: 630, column: 11)
!979 = !DILocation(line: 630, column: 11, scope: !973)
!980 = !DILocation(line: 632, column: 26, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !77, line: 632, column: 15)
!982 = distinct !DILexicalBlock(scope: !978, file: !77, line: 631, column: 9)
!983 = !DILocation(line: 632, column: 34, scope: !981)
!984 = !DILocation(line: 632, column: 37, scope: !981)
!985 = !DILocation(line: 632, column: 15, scope: !982)
!986 = !DILocation(line: 640, column: 16, scope: !973)
!987 = distinct !{!987, !968, !988, !962}
!988 = !DILocation(line: 641, column: 5, scope: !192)
!989 = !DILocation(line: 644, column: 3, scope: !192)
!990 = !DILocation(line: 0, scope: !927, inlinedAt: !991)
!991 = distinct !DILocation(line: 648, column: 31, scope: !192)
!992 = !DILocation(line: 0, scope: !927, inlinedAt: !993)
!993 = distinct !DILocation(line: 649, column: 31, scope: !192)
!994 = !DILocation(line: 0, scope: !927, inlinedAt: !995)
!995 = distinct !DILocation(line: 650, column: 31, scope: !192)
!996 = !DILocation(line: 0, scope: !927, inlinedAt: !997)
!997 = distinct !DILocation(line: 651, column: 31, scope: !192)
!998 = !DILocation(line: 0, scope: !927, inlinedAt: !999)
!999 = distinct !DILocation(line: 652, column: 31, scope: !192)
!1000 = !DILocation(line: 0, scope: !927, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 653, column: 31, scope: !192)
!1002 = !DILocation(line: 0, scope: !927, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 654, column: 31, scope: !192)
!1004 = !DILocation(line: 0, scope: !927, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 655, column: 31, scope: !192)
!1006 = !DILocation(line: 0, scope: !927, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 656, column: 31, scope: !192)
!1008 = !DILocation(line: 0, scope: !927, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 657, column: 31, scope: !192)
!1010 = !DILocation(line: 663, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !192, file: !77, line: 663, column: 7)
!1012 = !DILocation(line: 664, column: 7, scope: !1011)
!1013 = !DILocation(line: 664, column: 10, scope: !1011)
!1014 = !DILocation(line: 663, column: 7, scope: !192)
!1015 = !DILocation(line: 669, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !77, line: 665, column: 5)
!1017 = !DILocation(line: 671, column: 5, scope: !1016)
!1018 = !DILocation(line: 676, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1011, file: !77, line: 673, column: 5)
!1020 = !DILocation(line: 679, column: 3, scope: !192)
!1021 = !DILocation(line: 683, column: 3, scope: !192)
!1022 = !DILocation(line: 686, column: 3, scope: !192)
!1023 = !DILocation(line: 688, column: 3, scope: !192)
!1024 = !DILocation(line: 691, column: 3, scope: !192)
!1025 = !DILocation(line: 695, column: 3, scope: !192)
!1026 = !DILocation(line: 696, column: 1, scope: !192)
!1027 = !DISubprogram(name: "setlocale", scope: !1028, file: !1028, line: 122, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1028 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!132, !78, !138}
!1031 = !DISubprogram(name: "strncmp", scope: !1032, file: !1032, line: 159, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1032 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!78, !138, !138, !135}
!1035 = !DISubprogram(name: "exit", scope: !1036, file: !1036, line: 624, type: !836, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1036 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1037 = !DISubprogram(name: "getenv", scope: !1036, file: !1036, line: 641, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!132, !138}
!1040 = !DISubprogram(name: "strcmp", scope: !1032, file: !1032, line: 156, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!78, !138, !138}
!1043 = !DISubprogram(name: "strspn", scope: !1032, file: !1032, line: 297, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!137, !138, !138}
!1046 = !DISubprogram(name: "strchr", scope: !1032, file: !1032, line: 246, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!132, !138, !78}
!1049 = !DISubprogram(name: "__ctype_b_loc", scope: !98, file: !98, line: 79, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1055 = !DISubprogram(name: "strcspn", scope: !1032, file: !1032, line: 293, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1056 = !DISubprogram(name: "fwrite_unlocked", scope: !455, file: !455, line: 704, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!135, !1059, !135, !135, !905}
!1059 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1062 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 491, type: !1063, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1066)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!78, !78, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072}
!1067 = !DILocalVariable(name: "argc", arg: 1, scope: !1062, file: !2, line: 491, type: !78)
!1068 = !DILocalVariable(name: "argv", arg: 2, scope: !1062, file: !2, line: 491, type: !1065)
!1069 = !DILocalVariable(name: "optc", scope: !1062, file: !2, line: 493, type: !78)
!1070 = !DILocalVariable(name: "delim_arg", scope: !1062, file: !2, line: 494, type: !138)
!1071 = !DILocalVariable(name: "nfiles", scope: !1062, file: !2, line: 530, type: !78)
!1072 = !DILocalVariable(name: "ok", scope: !1062, file: !2, line: 546, type: !172)
!1073 = !DILocation(line: 0, scope: !1062)
!1074 = !DILocation(line: 497, column: 21, scope: !1062)
!1075 = !DILocation(line: 497, column: 3, scope: !1062)
!1076 = !DILocation(line: 498, column: 3, scope: !1062)
!1077 = !DILocation(line: 499, column: 3, scope: !1062)
!1078 = !DILocation(line: 500, column: 3, scope: !1062)
!1079 = !DILocation(line: 502, column: 3, scope: !1062)
!1080 = !DILocation(line: 504, column: 3, scope: !1062)
!1081 = !DILocation(line: 504, column: 18, scope: !1062)
!1082 = !DILocation(line: 510, column: 24, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 507, column: 9)
!1084 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 505, column: 5)
!1085 = !DILocation(line: 510, column: 34, scope: !1083)
!1086 = !DILocation(line: 511, column: 11, scope: !1083)
!1087 = distinct !{!1087, !1080, !1088, !962}
!1088 = !DILocation(line: 528, column: 5, scope: !1062)
!1089 = !DILocation(line: 514, column: 24, scope: !1083)
!1090 = !DILocation(line: 515, column: 11, scope: !1083)
!1091 = !DILocation(line: 518, column: 22, scope: !1083)
!1092 = !DILocation(line: 519, column: 11, scope: !1083)
!1093 = !DILocation(line: 521, column: 9, scope: !1083)
!1094 = !DILocation(line: 523, column: 9, scope: !1083)
!1095 = !DILocation(line: 526, column: 11, scope: !1083)
!1096 = !DILocation(line: 530, column: 23, scope: !1062)
!1097 = !DILocation(line: 530, column: 21, scope: !1062)
!1098 = !DILocation(line: 531, column: 14, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 531, column: 7)
!1100 = !DILocation(line: 531, column: 7, scope: !1062)
!1101 = !DILocation(line: 533, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 532, column: 5)
!1103 = !DILocation(line: 533, column: 20, scope: !1102)
!1104 = !DILocation(line: 535, column: 5, scope: !1102)
!1105 = !DILocalVariable(name: "strptr", arg: 1, scope: !1106, file: !2, line: 93, type: !138)
!1106 = distinct !DISubprogram(name: "collapse_escapes", scope: !2, file: !2, line: 93, type: !1107, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!78, !138}
!1109 = !{!1105, !1110, !1111, !1112, !1113, !1114, !1122}
!1110 = !DILocalVariable(name: "strout", scope: !1106, file: !2, line: 95, type: !132)
!1111 = !DILocalVariable(name: "backslash_at_end", scope: !1106, file: !2, line: 96, type: !172)
!1112 = !DILocalVariable(name: "s", scope: !1106, file: !2, line: 101, type: !138)
!1113 = !DILocalVariable(name: "idx", scope: !1106, file: !2, line: 102, type: !392)
!1114 = !DILocalVariable(name: "g", scope: !1115, file: !2, line: 142, type: !1116)
!1115 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 105, column: 5)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !113, line: 143, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 138, size: 64, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !1117, file: !113, line: 140, baseType: !521, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1117, file: !113, line: 141, baseType: !140, size: 8, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1117, file: !113, line: 142, baseType: !140, size: 8, offset: 40)
!1122 = !DILabel(scope: !1115, name: "copy_character", file: !2, line: 141)
!1123 = !DILocation(line: 0, scope: !1106, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 537, column: 7, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 537, column: 7)
!1126 = !DILocation(line: 95, column: 18, scope: !1106, inlinedAt: !1124)
!1127 = !DILocation(line: 98, column: 10, scope: !1106, inlinedAt: !1124)
!1128 = !DILocation(line: 99, column: 26, scope: !1106, inlinedAt: !1124)
!1129 = !DILocation(line: 99, column: 16, scope: !1106, inlinedAt: !1124)
!1130 = !DILocation(line: 99, column: 14, scope: !1106, inlinedAt: !1124)
!1131 = !DILocation(line: 104, column: 10, scope: !1106, inlinedAt: !1124)
!1132 = !DILocation(line: 104, column: 3, scope: !1106, inlinedAt: !1124)
!1133 = !DILocation(line: 148, column: 11, scope: !1106, inlinedAt: !1124)
!1134 = !DILocation(line: 152, column: 21, scope: !1135, inlinedAt: !1124)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 151, column: 5)
!1136 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 150, column: 7)
!1137 = !{!1138, !1138, i64 0}
!1138 = !{!"long", !848, i64 0}
!1139 = !DILocation(line: 537, column: 7, scope: !1062)
!1140 = !DILocation(line: 106, column: 14, scope: !1141, inlinedAt: !1124)
!1141 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 106, column: 11)
!1142 = !DILocation(line: 106, column: 11, scope: !1115, inlinedAt: !1124)
!1143 = !DILocation(line: 108, column: 12, scope: !1144, inlinedAt: !1124)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 107, column: 9)
!1145 = !DILocation(line: 109, column: 15, scope: !1146, inlinedAt: !1124)
!1146 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 109, column: 15)
!1147 = !DILocation(line: 109, column: 15, scope: !1144, inlinedAt: !1124)
!1148 = !DILocation(line: 122, column: 15, scope: !1149, inlinedAt: !1124)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 121, column: 13)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 114, column: 20)
!1151 = !DILocation(line: 0, scope: !1152, inlinedAt: !1124)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 123, column: 17)
!1153 = !DILocation(line: 0, scope: !1150, inlinedAt: !1124)
!1154 = !DILocation(line: 138, column: 11, scope: !1144, inlinedAt: !1124)
!1155 = !DILocation(line: 0, scope: !1115, inlinedAt: !1124)
!1156 = distinct !{!1156, !1132, !1157, !962}
!1157 = !DILocation(line: 146, column: 5, scope: !1106, inlinedAt: !1124)
!1158 = !DILocation(line: 291, column: 21, scope: !1159, inlinedAt: !1169)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !113, line: 291, column: 7)
!1160 = distinct !DISubprogram(name: "mcel_scant", scope: !113, file: !113, line: 288, type: !1161, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!1116, !138, !4}
!1163 = !{!1164, !1165, !1166, !1167}
!1164 = !DILocalVariable(name: "p", arg: 1, scope: !1160, file: !113, line: 288, type: !138)
!1165 = !DILocalVariable(name: "terminator", arg: 2, scope: !1160, file: !113, line: 288, type: !4)
!1166 = !DILocalVariable(name: "lim", scope: !1160, file: !113, line: 296, type: !138)
!1167 = !DILocalVariable(name: "i", scope: !1168, file: !113, line: 297, type: !78)
!1168 = distinct !DILexicalBlock(scope: !1160, file: !113, line: 297, column: 3)
!1169 = distinct !DILocation(line: 309, column: 10, scope: !1170, inlinedAt: !1175)
!1170 = distinct !DISubprogram(name: "mcel_scanz", scope: !113, file: !113, line: 307, type: !1171, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!1116, !138}
!1173 = !{!1174}
!1174 = !DILocalVariable(name: "p", arg: 1, scope: !1170, file: !113, line: 307, type: !138)
!1175 = distinct !DILocation(line: 142, column: 18, scope: !1115, inlinedAt: !1124)
!1176 = !DILocation(line: 141, column: 7, scope: !1115, inlinedAt: !1124)
!1177 = !DILocation(line: 0, scope: !1170, inlinedAt: !1175)
!1178 = !DILocation(line: 0, scope: !1160, inlinedAt: !1169)
!1179 = !DILocalVariable(name: "c", arg: 1, scope: !1180, file: !113, line: 215, type: !4)
!1180 = distinct !DISubprogram(name: "mcel_isbasic", scope: !113, file: !113, line: 215, type: !1181, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!172, !4}
!1183 = !{!1179}
!1184 = !DILocation(line: 0, scope: !1180, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 291, column: 7, scope: !1159, inlinedAt: !1169)
!1186 = !DILocation(line: 217, column: 10, scope: !1180, inlinedAt: !1185)
!1187 = !DILocation(line: 291, column: 7, scope: !1160, inlinedAt: !1169)
!1188 = !DILocation(line: 296, column: 23, scope: !1160, inlinedAt: !1169)
!1189 = !DILocation(line: 0, scope: !1168, inlinedAt: !1169)
!1190 = !DILocation(line: 298, column: 12, scope: !1191, inlinedAt: !1169)
!1191 = distinct !DILexicalBlock(scope: !1168, file: !113, line: 297, column: 3)
!1192 = !DILocation(line: 298, column: 17, scope: !1191, inlinedAt: !1169)
!1193 = !DILocation(line: 298, column: 9, scope: !1191, inlinedAt: !1169)
!1194 = !DILocalVariable(name: "p", arg: 1, scope: !1195, file: !113, line: 230, type: !138)
!1195 = distinct !DISubprogram(name: "mcel_scan", scope: !113, file: !113, line: 230, type: !1196, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!1116, !138, !138}
!1198 = !{!1194, !1199, !1200, !1201, !1212, !1213}
!1199 = !DILocalVariable(name: "lim", arg: 2, scope: !1195, file: !113, line: 230, type: !138)
!1200 = !DILocalVariable(name: "c", scope: !1195, file: !113, line: 235, type: !4)
!1201 = !DILocalVariable(name: "mbs", scope: !1195, file: !113, line: 244, type: !1202)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1204, file: !529, line: 15, baseType: !78, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1204, file: !529, line: 20, baseType: !1208, size: 32, offset: 32)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1204, file: !529, line: 16, size: 32, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1208, file: !529, line: 18, baseType: !84, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1208, file: !529, line: 19, baseType: !278, size: 32)
!1212 = !DILocalVariable(name: "ch", scope: !1195, file: !113, line: 267, type: !521)
!1213 = !DILocalVariable(name: "len", scope: !1195, file: !113, line: 268, type: !135)
!1214 = !DILocation(line: 0, scope: !1195, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 299, column: 10, scope: !1160, inlinedAt: !1169)
!1216 = !DILocation(line: 0, scope: !1180, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 236, column: 7, scope: !1218, inlinedAt: !1215)
!1218 = distinct !DILexicalBlock(scope: !1195, file: !113, line: 236, column: 7)
!1219 = !DILocation(line: 244, column: 3, scope: !1195, inlinedAt: !1215)
!1220 = !DILocation(line: 244, column: 13, scope: !1195, inlinedAt: !1215)
!1221 = !DILocation(line: 244, column: 30, scope: !1195, inlinedAt: !1215)
!1222 = !{!1223, !916, i64 0}
!1223 = !{!"", !916, i64 0, !848, i64 4}
!1224 = !DILocation(line: 267, column: 3, scope: !1195, inlinedAt: !1215)
!1225 = !DILocation(line: 268, column: 38, scope: !1195, inlinedAt: !1215)
!1226 = !DILocation(line: 268, column: 16, scope: !1195, inlinedAt: !1215)
!1227 = !DILocation(line: 274, column: 7, scope: !1228, inlinedAt: !1215)
!1228 = distinct !DILexicalBlock(scope: !1195, file: !113, line: 274, column: 7)
!1229 = !DILocation(line: 274, column: 7, scope: !1195, inlinedAt: !1215)
!1230 = !{!"branch_weights", i32 1, i32 2000}
!1231 = !DILocation(line: 280, column: 1, scope: !1195, inlinedAt: !1215)
!1232 = !DILocalVariable(name: "__dest", arg: 1, scope: !1233, file: !1234, line: 42, type: !1237)
!1233 = distinct !DISubprogram(name: "mempcpy", scope: !1234, file: !1234, line: 42, type: !1235, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1238)
!1234 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!133, !1237, !1059, !135}
!1237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!1238 = !{!1232, !1239, !1240}
!1239 = !DILocalVariable(name: "__src", arg: 2, scope: !1233, file: !1234, line: 42, type: !1059)
!1240 = !DILocalVariable(name: "__len", arg: 3, scope: !1233, file: !1234, line: 42, type: !135)
!1241 = !DILocation(line: 0, scope: !1233, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 143, column: 16, scope: !1115, inlinedAt: !1124)
!1243 = !DILocation(line: 45, column: 10, scope: !1233, inlinedAt: !1242)
!1244 = !DILocation(line: 144, column: 9, scope: !1115, inlinedAt: !1124)
!1245 = !DILocation(line: 145, column: 7, scope: !1115, inlinedAt: !1124)
!1246 = !DILocation(line: 145, column: 25, scope: !1115, inlinedAt: !1124)
!1247 = !DILocation(line: 150, column: 11, scope: !1136, inlinedAt: !1124)
!1248 = !DILocation(line: 150, column: 7, scope: !1106, inlinedAt: !1124)
!1249 = !DILocation(line: 156, column: 14, scope: !1106, inlinedAt: !1124)
!1250 = !DILocation(line: 541, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 538, column: 5)
!1252 = !DILocation(line: 546, column: 15, scope: !1062)
!1253 = !DILocation(line: 547, column: 15, scope: !1062)
!1254 = !DILocation(line: 547, column: 29, scope: !1062)
!1255 = !DILocation(line: 547, column: 24, scope: !1062)
!1256 = !DILocation(line: 546, column: 14, scope: !1062)
!1257 = !{ptr @paste_parallel, ptr @paste_serial}
!1258 = !DILocation(line: 549, column: 9, scope: !1062)
!1259 = !DILocation(line: 549, column: 3, scope: !1062)
!1260 = !DILocation(line: 550, column: 9, scope: !1062)
!1261 = !DILocation(line: 550, column: 3, scope: !1062)
!1262 = !DILocation(line: 552, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 552, column: 7)
!1264 = !DILocation(line: 552, column: 23, scope: !1263)
!1265 = !DILocation(line: 552, column: 34, scope: !1263)
!1266 = !DILocation(line: 552, column: 26, scope: !1263)
!1267 = !DILocation(line: 552, column: 41, scope: !1263)
!1268 = !DILocation(line: 552, column: 7, scope: !1062)
!1269 = !DILocation(line: 553, column: 5, scope: !1263)
!1270 = !DILocation(line: 554, column: 10, scope: !1062)
!1271 = !DILocation(line: 554, column: 3, scope: !1062)
!1272 = !DISubprogram(name: "bindtextdomain", scope: !898, file: !898, line: 86, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!132, !138, !138}
!1275 = !DISubprogram(name: "textdomain", scope: !898, file: !898, line: 82, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1276 = !DISubprogram(name: "atexit", scope: !1036, file: !1036, line: 602, type: !1277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!78, !495}
!1279 = !DISubprogram(name: "getopt_long", scope: !409, file: !409, line: 66, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!78, !78, !1282, !138, !1284, !414}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1285 = !DISubprogram(name: "strlen", scope: !1032, file: !1032, line: 407, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!137, !138}
!1288 = !DISubprogram(name: "mbrtoc32", scope: !522, file: !522, line: 57, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!135, !1291, !906, !135, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1295 = distinct !DISubprogram(name: "paste_serial", scope: !2, file: !2, line: 364, type: !1296, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!172, !135, !1065}
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1309, !1310, !1311}
!1299 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1295, file: !2, line: 364, type: !135)
!1300 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1295, file: !2, line: 364, type: !1065)
!1301 = !DILocalVariable(name: "ok", scope: !1295, file: !2, line: 366, type: !172)
!1302 = !DILocalVariable(name: "charnew", scope: !1295, file: !2, line: 367, type: !78)
!1303 = !DILocalVariable(name: "charold", scope: !1295, file: !2, line: 367, type: !78)
!1304 = !DILocalVariable(name: "fileptr", scope: !1295, file: !2, line: 368, type: !214)
!1305 = !DILocalVariable(name: "saved_errno", scope: !1306, file: !2, line: 372, type: !78)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 371, column: 5)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 370, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 370, column: 3)
!1309 = !DILocalVariable(name: "is_stdin", scope: !1306, file: !2, line: 373, type: !172)
!1310 = !DILocalVariable(name: "delimidx", scope: !1306, file: !2, line: 391, type: !392)
!1311 = !DILocalVariable(name: "delimoff", scope: !1306, file: !2, line: 392, type: !392)
!1312 = !DILocation(line: 0, scope: !1295)
!1313 = !DILocation(line: 370, column: 3, scope: !1308)
!1314 = !DILocation(line: 373, column: 30, scope: !1306)
!1315 = !DILocation(line: 0, scope: !927, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 373, column: 23, scope: !1306)
!1317 = !DILocation(line: 1361, column: 11, scope: !927, inlinedAt: !1316)
!1318 = !DILocation(line: 1361, column: 10, scope: !927, inlinedAt: !1316)
!1319 = !DILocation(line: 0, scope: !1306)
!1320 = !DILocation(line: 374, column: 11, scope: !1306)
!1321 = !DILocation(line: 376, column: 27, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 375, column: 9)
!1323 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 374, column: 11)
!1324 = !DILocation(line: 377, column: 21, scope: !1322)
!1325 = !DILocation(line: 378, column: 9, scope: !1322)
!1326 = !DILocation(line: 381, column: 21, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 380, column: 9)
!1328 = !DILocation(line: 382, column: 23, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 382, column: 15)
!1330 = !DILocation(line: 382, column: 15, scope: !1327)
!1331 = !DILocation(line: 384, column: 15, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 383, column: 13)
!1333 = !DILocation(line: 386, column: 15, scope: !1332)
!1334 = !DILocation(line: 388, column: 11, scope: !1327)
!1335 = !DILocation(line: 0, scope: !1323)
!1336 = !DILocalVariable(name: "__fp", arg: 1, scope: !1337, file: !1338, line: 66, type: !214)
!1337 = distinct !DISubprogram(name: "getc_unlocked", scope: !1338, file: !1338, line: 66, type: !1339, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1341)
!1338 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!78, !214}
!1341 = !{!1336}
!1342 = !DILocation(line: 0, scope: !1337, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 394, column: 17, scope: !1306)
!1344 = !DILocation(line: 68, column: 10, scope: !1337, inlinedAt: !1343)
!1345 = !{!1346, !847, i64 8}
!1346 = !{!"_IO_FILE", !916, i64 0, !847, i64 8, !847, i64 16, !847, i64 24, !847, i64 32, !847, i64 40, !847, i64 48, !847, i64 56, !847, i64 64, !847, i64 72, !847, i64 80, !847, i64 88, !847, i64 96, !847, i64 104, !916, i64 112, !916, i64 116, !1138, i64 120, !957, i64 128, !848, i64 130, !848, i64 131, !847, i64 136, !1138, i64 144, !847, i64 152, !847, i64 160, !847, i64 168, !847, i64 176, !1138, i64 184, !916, i64 192, !848, i64 196}
!1347 = !{!1346, !847, i64 16}
!1348 = !{!"branch_weights", i32 2000, i32 1}
!1349 = !DILocation(line: 395, column: 21, scope: !1306)
!1350 = !DILocation(line: 396, column: 11, scope: !1306)
!1351 = !DILocation(line: 396, column: 19, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 396, column: 11)
!1353 = !DILocation(line: 404, column: 11, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 397, column: 9)
!1355 = !DILocation(line: 428, column: 22, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 428, column: 11)
!1357 = !DILocation(line: 428, column: 11, scope: !1306)
!1358 = !DILocation(line: 0, scope: !1337, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 404, column: 29, scope: !1354)
!1360 = !DILocation(line: 68, column: 10, scope: !1337, inlinedAt: !1359)
!1361 = !DILocation(line: 404, column: 45, scope: !1354)
!1362 = !DILocation(line: 407, column: 30, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 407, column: 19)
!1364 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 405, column: 13)
!1365 = !DILocation(line: 407, column: 27, scope: !1363)
!1366 = !DILocation(line: 407, column: 19, scope: !1364)
!1367 = !DILocation(line: 409, column: 52, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 408, column: 17)
!1369 = !DILocalVariable(name: "delimptr", arg: 1, scope: !1370, file: !2, line: 174, type: !138)
!1370 = distinct !DISubprogram(name: "output_delim", scope: !2, file: !2, line: 174, type: !1371, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !138, !135}
!1373 = !{!1369, !1374, !1375, !1378, !1379}
!1374 = !DILocalVariable(name: "len", arg: 2, scope: !1370, file: !2, line: 174, type: !135)
!1375 = !DILocalVariable(name: "__ptr", scope: !1376, file: !2, line: 176, type: !138)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 176, column: 18)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 176, column: 7)
!1378 = !DILocalVariable(name: "__stream", scope: !1376, file: !2, line: 176, type: !214)
!1379 = !DILocalVariable(name: "__cnt", scope: !1376, file: !2, line: 176, type: !135)
!1380 = !DILocation(line: 0, scope: !1370, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 409, column: 19, scope: !1368)
!1382 = !DILocation(line: 176, column: 11, scope: !1377, inlinedAt: !1381)
!1383 = !DILocation(line: 176, column: 15, scope: !1377, inlinedAt: !1381)
!1384 = !DILocation(line: 409, column: 33, scope: !1368)
!1385 = !DILocation(line: 409, column: 40, scope: !1368)
!1386 = !DILocation(line: 176, column: 18, scope: !1377, inlinedAt: !1381)
!1387 = !DILocation(line: 176, column: 52, scope: !1377, inlinedAt: !1381)
!1388 = !DILocation(line: 176, column: 7, scope: !1370, inlinedAt: !1381)
!1389 = !DILocation(line: 410, column: 31, scope: !1368)
!1390 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1394)
!1391 = distinct !DISubprogram(name: "write_error", scope: !77, file: !77, line: 946, type: !496, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1392)
!1392 = !{!1393}
!1393 = !DILocalVariable(name: "saved_errno", scope: !1391, file: !77, line: 948, type: !78)
!1394 = distinct !DILocation(line: 177, column: 5, scope: !1377, inlinedAt: !1381)
!1395 = !DILocation(line: 0, scope: !1391, inlinedAt: !1394)
!1396 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1394)
!1397 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1394)
!1398 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1394)
!1399 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1394)
!1400 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1394)
!1401 = !DILocation(line: 410, column: 28, scope: !1368)
!1402 = !DILocation(line: 411, column: 23, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 411, column: 23)
!1404 = !DILocation(line: 411, column: 37, scope: !1403)
!1405 = !DILocation(line: 411, column: 34, scope: !1403)
!1406 = !DILocation(line: 411, column: 23, scope: !1368)
!1407 = distinct !{!1407, !1353, !1408, !962}
!1408 = !DILocation(line: 421, column: 13, scope: !1354)
!1409 = !DILocalVariable(name: "c", arg: 1, scope: !1410, file: !2, line: 164, type: !4)
!1410 = distinct !DISubprogram(name: "xputchar", scope: !2, file: !2, line: 164, type: !1411, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !4}
!1413 = !{!1409}
!1414 = !DILocation(line: 0, scope: !1410, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 418, column: 17, scope: !1363)
!1416 = !DILocalVariable(name: "__c", arg: 1, scope: !1417, file: !1338, line: 108, type: !78)
!1417 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1338, file: !1338, line: 108, type: !1418, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!78, !78}
!1420 = !{!1416}
!1421 = !DILocation(line: 0, scope: !1417, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1415)
!1423 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 166, column: 7)
!1424 = !DILocation(line: 110, column: 10, scope: !1417, inlinedAt: !1422)
!1425 = !{!1346, !847, i64 40}
!1426 = !{!1346, !847, i64 48}
!1427 = !DILocation(line: 418, column: 27, scope: !1363)
!1428 = !DILocation(line: 166, column: 7, scope: !1410, inlinedAt: !1415)
!1429 = !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1415)
!1430 = !DILocation(line: 166, column: 19, scope: !1423, inlinedAt: !1415)
!1431 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 167, column: 5, scope: !1423, inlinedAt: !1415)
!1433 = !DILocation(line: 0, scope: !1391, inlinedAt: !1432)
!1434 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1432)
!1435 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1432)
!1436 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1432)
!1437 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1432)
!1438 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1432)
!1439 = !DILocation(line: 422, column: 25, scope: !1354)
!1440 = !DILocation(line: 0, scope: !1410, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 425, column: 11, scope: !1354)
!1442 = !DILocation(line: 0, scope: !1417, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1441)
!1444 = !DILocation(line: 110, column: 10, scope: !1417, inlinedAt: !1443)
!1445 = !DILocation(line: 425, column: 21, scope: !1354)
!1446 = !DILocation(line: 166, column: 7, scope: !1410, inlinedAt: !1441)
!1447 = !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1441)
!1448 = !DILocation(line: 166, column: 19, scope: !1423, inlinedAt: !1441)
!1449 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 167, column: 5, scope: !1423, inlinedAt: !1441)
!1451 = !DILocation(line: 0, scope: !1391, inlinedAt: !1450)
!1452 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1450)
!1453 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1450)
!1454 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1450)
!1455 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1450)
!1456 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1450)
!1457 = !DILocation(line: 428, column: 19, scope: !1356)
!1458 = !DILocation(line: 0, scope: !1410, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 429, column: 9, scope: !1356)
!1460 = !DILocation(line: 0, scope: !1417, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1459)
!1462 = !DILocation(line: 110, column: 10, scope: !1417, inlinedAt: !1461)
!1463 = !DILocation(line: 166, column: 7, scope: !1410, inlinedAt: !1459)
!1464 = !DILocation(line: 166, column: 19, scope: !1423, inlinedAt: !1459)
!1465 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 167, column: 5, scope: !1423, inlinedAt: !1459)
!1467 = !DILocation(line: 0, scope: !1391, inlinedAt: !1466)
!1468 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1466)
!1469 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1466)
!1470 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1466)
!1471 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1466)
!1472 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1466)
!1473 = !DILocalVariable(name: "__stream", arg: 1, scope: !1474, file: !1338, line: 135, type: !214)
!1474 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1338, file: !1338, line: 135, type: !1339, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1475)
!1475 = !{!1473}
!1476 = !DILocation(line: 0, scope: !1474, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 431, column: 12, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 431, column: 11)
!1479 = !DILocation(line: 137, column: 10, scope: !1474, inlinedAt: !1477)
!1480 = !{!1346, !916, i64 0}
!1481 = !DILocation(line: 431, column: 12, scope: !1478)
!1482 = !DILocation(line: 431, column: 11, scope: !1306)
!1483 = !DILocation(line: 433, column: 11, scope: !1306)
!1484 = !DILocation(line: 434, column: 9, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 433, column: 11)
!1486 = !DILocation(line: 435, column: 16, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 435, column: 16)
!1488 = !DILocation(line: 435, column: 33, scope: !1487)
!1489 = !DILocation(line: 435, column: 38, scope: !1487)
!1490 = !DILocation(line: 436, column: 23, scope: !1487)
!1491 = !DILocation(line: 436, column: 9, scope: !1487)
!1492 = !DILocation(line: 437, column: 11, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 437, column: 11)
!1494 = !DILocation(line: 437, column: 11, scope: !1306)
!1495 = !DILocation(line: 370, column: 24, scope: !1307)
!1496 = !DILocation(line: 370, column: 35, scope: !1307)
!1497 = distinct !{!1497, !1313, !1498, !962}
!1498 = !DILocation(line: 442, column: 5, scope: !1308)
!1499 = !DILocation(line: 443, column: 3, scope: !1295)
!1500 = distinct !DISubprogram(name: "paste_parallel", scope: !2, file: !2, line: 185, type: !1296, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1508, !1509, !1510, !1512, !1513, !1514, !1515, !1517, !1520, !1521, !1522, !1529, !1530, !1531, !1542, !1543, !1544, !1546}
!1502 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1500, file: !2, line: 185, type: !135)
!1503 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1500, file: !2, line: 185, type: !1065)
!1504 = !DILocalVariable(name: "ok", scope: !1500, file: !2, line: 187, type: !172)
!1505 = !DILocalVariable(name: "delbuf", scope: !1500, file: !2, line: 192, type: !132)
!1506 = !DILocalVariable(name: "fileptr", scope: !1500, file: !2, line: 196, type: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1508 = !DILocalVariable(name: "files_open", scope: !1500, file: !2, line: 199, type: !135)
!1509 = !DILocalVariable(name: "opened_stdin", scope: !1500, file: !2, line: 202, type: !172)
!1510 = !DILocalVariable(name: "somedone", scope: !1511, file: !2, line: 236, type: !172)
!1511 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 234, column: 5)
!1512 = !DILocalVariable(name: "delimidx", scope: !1511, file: !2, line: 237, type: !392)
!1513 = !DILocalVariable(name: "delimoff", scope: !1511, file: !2, line: 238, type: !392)
!1514 = !DILocalVariable(name: "delims_saved", scope: !1511, file: !2, line: 239, type: !392)
!1515 = !DILocalVariable(name: "i", scope: !1516, file: !2, line: 241, type: !135)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 241, column: 7)
!1517 = !DILocalVariable(name: "chr", scope: !1518, file: !2, line: 243, type: !78)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 242, column: 9)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 241, column: 7)
!1520 = !DILocalVariable(name: "err", scope: !1518, file: !2, line: 244, type: !78)
!1521 = !DILocalVariable(name: "sometodo", scope: !1518, file: !2, line: 245, type: !172)
!1522 = !DILocalVariable(name: "__ptr", scope: !1523, file: !2, line: 253, type: !138)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 253, column: 23)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 253, column: 23)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 252, column: 17)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 251, column: 19)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 248, column: 13)
!1528 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 247, column: 15)
!1529 = !DILocalVariable(name: "__stream", scope: !1523, file: !2, line: 253, type: !214)
!1530 = !DILocalVariable(name: "__cnt", scope: !1523, file: !2, line: 253, type: !135)
!1531 = !DILocalVariable(name: "__ptr", scope: !1532, file: !2, line: 300, type: !138)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 300, column: 31)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 300, column: 31)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 299, column: 25)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 298, column: 27)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 296, column: 21)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 295, column: 23)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 292, column: 17)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 291, column: 19)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 270, column: 13)
!1541 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 269, column: 15)
!1542 = !DILocalVariable(name: "__stream", scope: !1532, file: !2, line: 300, type: !214)
!1543 = !DILocalVariable(name: "__cnt", scope: !1532, file: !2, line: 300, type: !135)
!1544 = !DILocalVariable(name: "len", scope: !1545, file: !2, line: 312, type: !135)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 310, column: 17)
!1546 = !DILocalVariable(name: "c", scope: !1547, file: !2, line: 348, type: !4)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 345, column: 17)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 332, column: 19)
!1549 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 327, column: 13)
!1550 = !DILocation(line: 0, scope: !1500)
!1551 = !DILocation(line: 192, column: 35, scope: !1500)
!1552 = !DILocation(line: 192, column: 42, scope: !1500)
!1553 = !DILocation(line: 192, column: 40, scope: !1500)
!1554 = !DILocation(line: 192, column: 53, scope: !1500)
!1555 = !DILocation(line: 192, column: 18, scope: !1500)
!1556 = !DILocation(line: 196, column: 37, scope: !1500)
!1557 = !DILocation(line: 196, column: 20, scope: !1500)
!1558 = !DILocation(line: 208, column: 35, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 208, column: 3)
!1560 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 208, column: 3)
!1561 = !DILocation(line: 208, column: 3, scope: !1560)
!1562 = !DILocation(line: 210, column: 18, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 210, column: 11)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 209, column: 5)
!1565 = !DILocation(line: 0, scope: !927, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 210, column: 11, scope: !1563)
!1567 = !DILocation(line: 1361, column: 11, scope: !927, inlinedAt: !1566)
!1568 = !DILocation(line: 1361, column: 10, scope: !927, inlinedAt: !1566)
!1569 = !DILocation(line: 210, column: 11, scope: !1564)
!1570 = !DILocation(line: 212, column: 27, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 211, column: 9)
!1572 = !DILocation(line: 213, column: 33, scope: !1571)
!1573 = !DILocation(line: 213, column: 11, scope: !1571)
!1574 = !DILocation(line: 213, column: 31, scope: !1571)
!1575 = !DILocation(line: 214, column: 9, scope: !1571)
!1576 = !DILocation(line: 217, column: 33, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 216, column: 9)
!1578 = !DILocation(line: 217, column: 11, scope: !1577)
!1579 = !DILocation(line: 217, column: 31, scope: !1577)
!1580 = !DILocation(line: 218, column: 35, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 218, column: 15)
!1582 = !DILocation(line: 218, column: 15, scope: !1577)
!1583 = !DILocation(line: 219, column: 13, scope: !1581)
!1584 = !DILocation(line: 220, column: 20, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 220, column: 20)
!1586 = !DILocation(line: 220, column: 49, scope: !1585)
!1587 = !DILocation(line: 220, column: 20, scope: !1581)
!1588 = !DILocation(line: 222, column: 11, scope: !1577)
!1589 = !DILocation(line: 208, column: 45, scope: !1559)
!1590 = distinct !{!1590, !1561, !1591, !962}
!1591 = !DILocation(line: 224, column: 5, scope: !1560)
!1592 = !DILocation(line: 226, column: 20, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 226, column: 7)
!1594 = !DILocation(line: 233, column: 3, scope: !1500)
!1595 = !DILocation(line: 226, column: 23, scope: !1593)
!1596 = !DILocation(line: 226, column: 7, scope: !1500)
!1597 = !DILocation(line: 227, column: 5, scope: !1593)
!1598 = !DILocation(line: 208, column: 19, scope: !1560)
!1599 = !DILocation(line: 0, scope: !1518)
!1600 = distinct !{!1600, !1594, !1601, !962}
!1601 = !DILocation(line: 353, column: 5, scope: !1500)
!1602 = !DILocation(line: 0, scope: !1511)
!1603 = !DILocation(line: 0, scope: !1516)
!1604 = !DILocation(line: 241, column: 7, scope: !1516)
!1605 = !DILocation(line: 247, column: 15, scope: !1528)
!1606 = !DILocation(line: 247, column: 15, scope: !1518)
!1607 = !DILocation(line: 0, scope: !1337, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 249, column: 21, scope: !1527)
!1609 = !DILocation(line: 68, column: 10, scope: !1337, inlinedAt: !1608)
!1610 = !DILocation(line: 250, column: 21, scope: !1527)
!1611 = !DILocation(line: 251, column: 23, scope: !1526)
!1612 = !DILocation(line: 251, column: 30, scope: !1526)
!1613 = !DILocation(line: 253, column: 23, scope: !1524)
!1614 = !DILocation(line: 253, column: 64, scope: !1524)
!1615 = !DILocation(line: 253, column: 23, scope: !1525)
!1616 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 254, column: 21, scope: !1524)
!1618 = !DILocation(line: 0, scope: !1391, inlinedAt: !1617)
!1619 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1617)
!1620 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1617)
!1621 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1617)
!1622 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1617)
!1623 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1617)
!1624 = !DILocation(line: 258, column: 26, scope: !1527)
!1625 = !DILocation(line: 258, column: 15, scope: !1527)
!1626 = !DILocation(line: 261, column: 30, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 261, column: 23)
!1628 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 259, column: 17)
!1629 = !DILocation(line: 261, column: 27, scope: !1627)
!1630 = !DILocation(line: 261, column: 23, scope: !1628)
!1631 = !DILocation(line: 0, scope: !1410, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 263, column: 19, scope: !1628)
!1633 = !DILocation(line: 0, scope: !1417, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1632)
!1635 = !DILocation(line: 110, column: 10, scope: !1417, inlinedAt: !1634)
!1636 = !DILocation(line: 263, column: 29, scope: !1628)
!1637 = !DILocation(line: 166, column: 7, scope: !1410, inlinedAt: !1632)
!1638 = !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1632)
!1639 = !DILocation(line: 166, column: 19, scope: !1423, inlinedAt: !1632)
!1640 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 167, column: 5, scope: !1423, inlinedAt: !1632)
!1642 = !DILocation(line: 0, scope: !1391, inlinedAt: !1641)
!1643 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1641)
!1644 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1641)
!1645 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1641)
!1646 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1641)
!1647 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1641)
!1648 = !DILocation(line: 0, scope: !1337, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 264, column: 25, scope: !1628)
!1650 = !DILocation(line: 68, column: 10, scope: !1337, inlinedAt: !1649)
!1651 = distinct !{!1651, !1625, !1652, !962}
!1652 = !DILocation(line: 266, column: 17, scope: !1527)
!1653 = !DILocation(line: 265, column: 25, scope: !1628)
!1654 = !DILocation(line: 269, column: 15, scope: !1518)
!1655 = !DILocation(line: 0, scope: !1474, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 275, column: 24, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 275, column: 23)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 274, column: 17)
!1659 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 273, column: 19)
!1660 = !DILocation(line: 137, column: 10, scope: !1474, inlinedAt: !1656)
!1661 = !DILocation(line: 275, column: 24, scope: !1657)
!1662 = !DILocation(line: 275, column: 23, scope: !1658)
!1663 = !DILocation(line: 277, column: 37, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 277, column: 23)
!1665 = !DILocation(line: 277, column: 34, scope: !1664)
!1666 = !DILocation(line: 277, column: 23, scope: !1658)
!1667 = !DILocation(line: 278, column: 21, scope: !1664)
!1668 = !DILocation(line: 279, column: 28, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 279, column: 28)
!1670 = !DILocation(line: 279, column: 48, scope: !1669)
!1671 = !DILocation(line: 279, column: 55, scope: !1669)
!1672 = !DILocation(line: 280, column: 27, scope: !1669)
!1673 = !DILocation(line: 280, column: 21, scope: !1669)
!1674 = !DILocation(line: 281, column: 23, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 281, column: 23)
!1676 = !DILocation(line: 281, column: 23, scope: !1658)
!1677 = !DILocation(line: 283, column: 23, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 282, column: 21)
!1679 = !DILocation(line: 285, column: 21, scope: !1678)
!1680 = !DILocation(line: 287, column: 30, scope: !1658)
!1681 = !DILocation(line: 288, column: 29, scope: !1658)
!1682 = !DILocation(line: 289, column: 17, scope: !1658)
!1683 = !DILocation(line: 291, column: 21, scope: !1539)
!1684 = !DILocation(line: 291, column: 25, scope: !1539)
!1685 = !DILocation(line: 291, column: 19, scope: !1540)
!1686 = !DILocation(line: 295, column: 23, scope: !1538)
!1687 = !DILocation(line: 298, column: 27, scope: !1535)
!1688 = !DILocation(line: 298, column: 27, scope: !1536)
!1689 = !DILocation(line: 300, column: 31, scope: !1533)
!1690 = !DILocation(line: 301, column: 31, scope: !1533)
!1691 = !DILocation(line: 300, column: 31, scope: !1534)
!1692 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 302, column: 29, scope: !1533)
!1694 = !DILocation(line: 0, scope: !1391, inlinedAt: !1693)
!1695 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1693)
!1696 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1693)
!1697 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1693)
!1698 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1693)
!1699 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1693)
!1700 = !DILocation(line: 305, column: 33, scope: !1536)
!1701 = !DILocation(line: 0, scope: !1410, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 305, column: 23, scope: !1536)
!1703 = !DILocation(line: 0, scope: !1417, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1702)
!1705 = !DILocation(line: 110, column: 10, scope: !1417, inlinedAt: !1704)
!1706 = !DILocation(line: 166, column: 7, scope: !1410, inlinedAt: !1702)
!1707 = !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1702)
!1708 = !DILocation(line: 166, column: 19, scope: !1423, inlinedAt: !1702)
!1709 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 167, column: 5, scope: !1423, inlinedAt: !1702)
!1711 = !DILocation(line: 0, scope: !1391, inlinedAt: !1710)
!1712 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1710)
!1713 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1710)
!1714 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1710)
!1715 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1710)
!1716 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1710)
!1717 = !DILocation(line: 312, column: 32, scope: !1545)
!1718 = !DILocation(line: 0, scope: !1545)
!1719 = !DILocation(line: 313, column: 27, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 313, column: 23)
!1721 = !DILocation(line: 313, column: 23, scope: !1545)
!1722 = !DILocation(line: 315, column: 38, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 314, column: 21)
!1724 = !DILocation(line: 315, column: 54, scope: !1723)
!1725 = !DILocation(line: 315, column: 61, scope: !1723)
!1726 = !DILocalVariable(name: "__dest", arg: 1, scope: !1727, file: !1234, line: 26, type: !1237)
!1727 = distinct !DISubprogram(name: "memcpy", scope: !1234, file: !1234, line: 26, type: !1235, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1728)
!1728 = !{!1726, !1729, !1730}
!1729 = !DILocalVariable(name: "__src", arg: 2, scope: !1727, file: !1234, line: 26, type: !1059)
!1730 = !DILocalVariable(name: "__len", arg: 3, scope: !1727, file: !1234, line: 26, type: !135)
!1731 = !DILocation(line: 0, scope: !1727, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 315, column: 23, scope: !1723)
!1733 = !DILocation(line: 29, column: 10, scope: !1727, inlinedAt: !1732)
!1734 = !DILocation(line: 316, column: 36, scope: !1723)
!1735 = !DILocation(line: 317, column: 21, scope: !1723)
!1736 = !DILocation(line: 318, column: 28, scope: !1545)
!1737 = !DILocation(line: 319, column: 23, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 319, column: 23)
!1739 = !DILocation(line: 319, column: 37, scope: !1738)
!1740 = !DILocation(line: 319, column: 34, scope: !1738)
!1741 = !DILocation(line: 319, column: 23, scope: !1545)
!1742 = !DILocation(line: 325, column: 13, scope: !1540)
!1743 = !DILocation(line: 332, column: 21, scope: !1548)
!1744 = !DILocation(line: 332, column: 25, scope: !1548)
!1745 = !DILocation(line: 332, column: 19, scope: !1549)
!1746 = !DILocation(line: 334, column: 30, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 334, column: 23)
!1748 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 333, column: 17)
!1749 = !DILocation(line: 334, column: 27, scope: !1747)
!1750 = !DILocation(line: 334, column: 41, scope: !1747)
!1751 = !DILocation(line: 0, scope: !1410, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 335, column: 21, scope: !1747)
!1753 = !DILocation(line: 0, scope: !1417, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1752)
!1755 = !DILocation(line: 110, column: 10, scope: !1417, inlinedAt: !1754)
!1756 = !DILocation(line: 335, column: 31, scope: !1747)
!1757 = !DILocation(line: 166, column: 7, scope: !1410, inlinedAt: !1752)
!1758 = !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1752)
!1759 = !DILocation(line: 166, column: 19, scope: !1423, inlinedAt: !1752)
!1760 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 167, column: 5, scope: !1423, inlinedAt: !1752)
!1762 = !DILocation(line: 0, scope: !1391, inlinedAt: !1761)
!1763 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1761)
!1764 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1761)
!1765 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1761)
!1766 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1761)
!1767 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1761)
!1768 = !DILocation(line: 336, column: 52, scope: !1748)
!1769 = !DILocation(line: 0, scope: !1370, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 336, column: 19, scope: !1748)
!1771 = !DILocation(line: 176, column: 11, scope: !1377, inlinedAt: !1770)
!1772 = !DILocation(line: 176, column: 15, scope: !1377, inlinedAt: !1770)
!1773 = !DILocation(line: 336, column: 33, scope: !1748)
!1774 = !DILocation(line: 336, column: 40, scope: !1748)
!1775 = !DILocation(line: 176, column: 18, scope: !1377, inlinedAt: !1770)
!1776 = !DILocation(line: 176, column: 52, scope: !1377, inlinedAt: !1770)
!1777 = !DILocation(line: 176, column: 7, scope: !1370, inlinedAt: !1770)
!1778 = !DILocation(line: 337, column: 31, scope: !1748)
!1779 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 177, column: 5, scope: !1377, inlinedAt: !1770)
!1781 = !DILocation(line: 0, scope: !1391, inlinedAt: !1780)
!1782 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1780)
!1783 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1780)
!1784 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1780)
!1785 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1780)
!1786 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1780)
!1787 = !DILocation(line: 337, column: 28, scope: !1748)
!1788 = !DILocation(line: 338, column: 23, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 338, column: 23)
!1790 = !DILocation(line: 338, column: 37, scope: !1789)
!1791 = !DILocation(line: 338, column: 34, scope: !1789)
!1792 = !DILocation(line: 338, column: 23, scope: !1748)
!1793 = !DILocation(line: 348, column: 33, scope: !1547)
!1794 = !DILocation(line: 348, column: 29, scope: !1547)
!1795 = !DILocation(line: 0, scope: !1547)
!1796 = !DILocation(line: 0, scope: !1410, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 349, column: 19, scope: !1547)
!1798 = !DILocation(line: 0, scope: !1417, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1797)
!1800 = !DILocation(line: 110, column: 10, scope: !1417, inlinedAt: !1799)
!1801 = !DILocation(line: 348, column: 28, scope: !1547)
!1802 = !DILocation(line: 166, column: 7, scope: !1410, inlinedAt: !1797)
!1803 = !DILocation(line: 166, column: 7, scope: !1423, inlinedAt: !1797)
!1804 = !DILocation(line: 166, column: 19, scope: !1423, inlinedAt: !1797)
!1805 = !DILocation(line: 948, column: 21, scope: !1391, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 167, column: 5, scope: !1423, inlinedAt: !1797)
!1807 = !DILocation(line: 0, scope: !1391, inlinedAt: !1806)
!1808 = !DILocation(line: 949, column: 3, scope: !1391, inlinedAt: !1806)
!1809 = !DILocation(line: 950, column: 11, scope: !1391, inlinedAt: !1806)
!1810 = !DILocation(line: 950, column: 3, scope: !1391, inlinedAt: !1806)
!1811 = !DILocation(line: 951, column: 3, scope: !1391, inlinedAt: !1806)
!1812 = !DILocation(line: 952, column: 3, scope: !1391, inlinedAt: !1806)
!1813 = !DILocation(line: 241, column: 53, scope: !1519)
!1814 = !DILocation(line: 241, column: 28, scope: !1519)
!1815 = !DILocation(line: 241, column: 37, scope: !1519)
!1816 = distinct !{!1816, !1604, !1817, !962}
!1817 = !DILocation(line: 352, column: 9, scope: !1516)
!1818 = !DILocation(line: 354, column: 3, scope: !1500)
!1819 = !DILocation(line: 355, column: 3, scope: !1500)
!1820 = !DILocation(line: 356, column: 3, scope: !1500)
!1821 = !DISubprogram(name: "free", scope: !1036, file: !1036, line: 555, type: !1822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !133}
!1824 = !DISubprogram(name: "__errno_location", scope: !1825, file: !1825, line: 37, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1825 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!414}
!1828 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1036, file: !1036, line: 98, type: !1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!135}
!1831 = !DISubprogram(name: "fileno_unlocked", scope: !455, file: !455, line: 814, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1832 = !DISubprogram(name: "__uflow", scope: !455, file: !455, line: 885, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1833 = !DISubprogram(name: "fflush_unlocked", scope: !455, file: !455, line: 239, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1834 = !DISubprogram(name: "clearerr_unlocked", scope: !455, file: !455, line: 794, type: !1835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !214}
!1837 = !DISubprogram(name: "__overflow", scope: !455, file: !455, line: 886, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!78, !214, !78}
!1840 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !429, file: !429, line: 50, type: !867, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1841)
!1841 = !{!1842}
!1842 = !DILocalVariable(name: "file", arg: 1, scope: !1840, file: !429, line: 50, type: !138)
!1843 = !DILocation(line: 0, scope: !1840)
!1844 = !DILocation(line: 52, column: 13, scope: !1840)
!1845 = !DILocation(line: 53, column: 1, scope: !1840)
!1846 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !429, file: !429, line: 87, type: !1847, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !172}
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "ignore", arg: 1, scope: !1846, file: !429, line: 87, type: !172)
!1851 = !DILocation(line: 0, scope: !1846)
!1852 = !DILocation(line: 89, column: 16, scope: !1846)
!1853 = !{!1854, !1854, i64 0}
!1854 = !{!"_Bool", !848, i64 0}
!1855 = !DILocation(line: 90, column: 1, scope: !1846)
!1856 = distinct !DISubprogram(name: "close_stdout", scope: !429, file: !429, line: 116, type: !496, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1857)
!1857 = !{!1858}
!1858 = !DILocalVariable(name: "write_error", scope: !1859, file: !429, line: 121, type: !138)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !429, line: 120, column: 5)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !429, line: 118, column: 7)
!1861 = !DILocation(line: 118, column: 21, scope: !1860)
!1862 = !DILocation(line: 118, column: 7, scope: !1860)
!1863 = !DILocation(line: 118, column: 29, scope: !1860)
!1864 = !DILocation(line: 119, column: 7, scope: !1860)
!1865 = !DILocation(line: 119, column: 12, scope: !1860)
!1866 = !{i8 0, i8 2}
!1867 = !DILocation(line: 119, column: 25, scope: !1860)
!1868 = !DILocation(line: 119, column: 28, scope: !1860)
!1869 = !DILocation(line: 119, column: 34, scope: !1860)
!1870 = !DILocation(line: 118, column: 7, scope: !1856)
!1871 = !DILocation(line: 121, column: 33, scope: !1859)
!1872 = !DILocation(line: 0, scope: !1859)
!1873 = !DILocation(line: 122, column: 11, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1859, file: !429, line: 122, column: 11)
!1875 = !DILocation(line: 0, scope: !1874)
!1876 = !DILocation(line: 122, column: 11, scope: !1859)
!1877 = !DILocation(line: 123, column: 9, scope: !1874)
!1878 = !DILocation(line: 126, column: 9, scope: !1874)
!1879 = !DILocation(line: 128, column: 14, scope: !1859)
!1880 = !DILocation(line: 128, column: 7, scope: !1859)
!1881 = !DILocation(line: 133, column: 42, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1856, file: !429, line: 133, column: 7)
!1883 = !DILocation(line: 133, column: 28, scope: !1882)
!1884 = !DILocation(line: 133, column: 50, scope: !1882)
!1885 = !DILocation(line: 133, column: 7, scope: !1856)
!1886 = !DILocation(line: 134, column: 12, scope: !1882)
!1887 = !DILocation(line: 134, column: 5, scope: !1882)
!1888 = !DILocation(line: 135, column: 1, scope: !1856)
!1889 = !DISubprogram(name: "_exit", scope: !1890, file: !1890, line: 624, type: !836, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !855)
!1890 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1891 = distinct !DISubprogram(name: "verror", scope: !444, file: !444, line: 251, type: !1892, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1894)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !78, !78, !138, !454}
!1894 = !{!1895, !1896, !1897, !1898}
!1895 = !DILocalVariable(name: "status", arg: 1, scope: !1891, file: !444, line: 251, type: !78)
!1896 = !DILocalVariable(name: "errnum", arg: 2, scope: !1891, file: !444, line: 251, type: !78)
!1897 = !DILocalVariable(name: "message", arg: 3, scope: !1891, file: !444, line: 251, type: !138)
!1898 = !DILocalVariable(name: "args", arg: 4, scope: !1891, file: !444, line: 251, type: !454)
!1899 = !DILocation(line: 0, scope: !1891)
!1900 = !DILocation(line: 251, column: 1, scope: !1891)
!1901 = !DILocation(line: 261, column: 3, scope: !1891)
!1902 = !DILocation(line: 265, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1891, file: !444, line: 265, column: 7)
!1904 = !DILocation(line: 265, column: 7, scope: !1891)
!1905 = !DILocation(line: 266, column: 5, scope: !1903)
!1906 = !DILocation(line: 272, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !444, line: 268, column: 5)
!1908 = !DILocation(line: 276, column: 3, scope: !1891)
!1909 = !{i64 0, i64 8, !846, i64 8, i64 8, !846, i64 16, i64 8, !846, i64 24, i64 4, !915, i64 28, i64 4, !915}
!1910 = !DILocation(line: 282, column: 1, scope: !1891)
!1911 = distinct !DISubprogram(name: "flush_stdout", scope: !444, file: !444, line: 163, type: !496, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1912)
!1912 = !{!1913}
!1913 = !DILocalVariable(name: "stdout_fd", scope: !1911, file: !444, line: 166, type: !78)
!1914 = !DILocation(line: 0, scope: !1911)
!1915 = !DILocalVariable(name: "fd", arg: 1, scope: !1916, file: !444, line: 145, type: !78)
!1916 = distinct !DISubprogram(name: "is_open", scope: !444, file: !444, line: 145, type: !1418, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1917)
!1917 = !{!1915}
!1918 = !DILocation(line: 0, scope: !1916, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 182, column: 25, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1911, file: !444, line: 182, column: 7)
!1921 = !DILocation(line: 157, column: 15, scope: !1916, inlinedAt: !1919)
!1922 = !DILocation(line: 157, column: 12, scope: !1916, inlinedAt: !1919)
!1923 = !DILocation(line: 182, column: 7, scope: !1911)
!1924 = !DILocation(line: 184, column: 5, scope: !1920)
!1925 = !DILocation(line: 185, column: 1, scope: !1911)
!1926 = distinct !DISubprogram(name: "error_tail", scope: !444, file: !444, line: 219, type: !1892, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1927)
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DILocalVariable(name: "status", arg: 1, scope: !1926, file: !444, line: 219, type: !78)
!1929 = !DILocalVariable(name: "errnum", arg: 2, scope: !1926, file: !444, line: 219, type: !78)
!1930 = !DILocalVariable(name: "message", arg: 3, scope: !1926, file: !444, line: 219, type: !138)
!1931 = !DILocalVariable(name: "args", arg: 4, scope: !1926, file: !444, line: 219, type: !454)
!1932 = !DILocation(line: 0, scope: !1926)
!1933 = !DILocation(line: 219, column: 1, scope: !1926)
!1934 = !DILocation(line: 229, column: 13, scope: !1926)
!1935 = !DILocation(line: 135, column: 10, scope: !1936, inlinedAt: !1978)
!1936 = distinct !DISubprogram(name: "vfprintf", scope: !902, file: !902, line: 132, type: !1937, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1974)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!78, !1939, !906, !456}
!1939 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1940)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1942, file: !218, line: 51, baseType: !78, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1942, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1942, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1942, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1942, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1942, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1942, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1942, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1942, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1942, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1942, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1942, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1942, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1942, file: !218, line: 70, baseType: !1958, size: 64, offset: 832)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1942, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1942, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1942, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1942, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1942, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1942, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1942, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1942, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1942, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1942, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1942, file: !218, line: 93, baseType: !1958, size: 64, offset: 1344)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1942, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1942, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1942, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1942, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!1974 = !{!1975, !1976, !1977}
!1975 = !DILocalVariable(name: "__stream", arg: 1, scope: !1936, file: !902, line: 132, type: !1939)
!1976 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1936, file: !902, line: 133, type: !906)
!1977 = !DILocalVariable(name: "__ap", arg: 3, scope: !1936, file: !902, line: 133, type: !456)
!1978 = distinct !DILocation(line: 229, column: 3, scope: !1926)
!1979 = !{!1980, !1982}
!1980 = distinct !{!1980, !1981, !"vfprintf.inline: argument 0"}
!1981 = distinct !{!1981, !"vfprintf.inline"}
!1982 = distinct !{!1982, !1981, !"vfprintf.inline: argument 1"}
!1983 = !DILocation(line: 229, column: 3, scope: !1926)
!1984 = !DILocation(line: 0, scope: !1936, inlinedAt: !1978)
!1985 = !DILocation(line: 133, column: 49, scope: !1936, inlinedAt: !1978)
!1986 = !DILocation(line: 232, column: 3, scope: !1926)
!1987 = !DILocation(line: 233, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1926, file: !444, line: 233, column: 7)
!1989 = !DILocation(line: 233, column: 7, scope: !1926)
!1990 = !DILocalVariable(name: "errnum", arg: 1, scope: !1991, file: !444, line: 188, type: !78)
!1991 = distinct !DISubprogram(name: "print_errno_message", scope: !444, file: !444, line: 188, type: !836, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1992)
!1992 = !{!1990, !1993, !1994}
!1993 = !DILocalVariable(name: "s", scope: !1991, file: !444, line: 190, type: !138)
!1994 = !DILocalVariable(name: "errbuf", scope: !1991, file: !444, line: 193, type: !1995)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1996)
!1996 = !{!1997}
!1997 = !DISubrange(count: 1024)
!1998 = !DILocation(line: 0, scope: !1991, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 234, column: 5, scope: !1988)
!2000 = !DILocation(line: 193, column: 3, scope: !1991, inlinedAt: !1999)
!2001 = !DILocation(line: 193, column: 8, scope: !1991, inlinedAt: !1999)
!2002 = !DILocation(line: 195, column: 7, scope: !1991, inlinedAt: !1999)
!2003 = !DILocation(line: 207, column: 9, scope: !2004, inlinedAt: !1999)
!2004 = distinct !DILexicalBlock(scope: !1991, file: !444, line: 207, column: 7)
!2005 = !DILocation(line: 207, column: 7, scope: !1991, inlinedAt: !1999)
!2006 = !DILocation(line: 208, column: 9, scope: !2004, inlinedAt: !1999)
!2007 = !DILocation(line: 208, column: 5, scope: !2004, inlinedAt: !1999)
!2008 = !DILocation(line: 214, column: 3, scope: !1991, inlinedAt: !1999)
!2009 = !DILocation(line: 216, column: 1, scope: !1991, inlinedAt: !1999)
!2010 = !DILocation(line: 234, column: 5, scope: !1988)
!2011 = !DILocation(line: 238, column: 3, scope: !1926)
!2012 = !DILocalVariable(name: "__c", arg: 1, scope: !2013, file: !1338, line: 101, type: !78)
!2013 = distinct !DISubprogram(name: "putc_unlocked", scope: !1338, file: !1338, line: 101, type: !2014, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2016)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!78, !78, !1940}
!2016 = !{!2012, !2017}
!2017 = !DILocalVariable(name: "__stream", arg: 2, scope: !2013, file: !1338, line: 101, type: !1940)
!2018 = !DILocation(line: 0, scope: !2013, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 238, column: 3, scope: !1926)
!2020 = !DILocation(line: 103, column: 10, scope: !2013, inlinedAt: !2019)
!2021 = !DILocation(line: 240, column: 3, scope: !1926)
!2022 = !DILocation(line: 241, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1926, file: !444, line: 241, column: 7)
!2024 = !DILocation(line: 241, column: 7, scope: !1926)
!2025 = !DILocation(line: 242, column: 5, scope: !2023)
!2026 = !DILocation(line: 243, column: 1, scope: !1926)
!2027 = !DISubprogram(name: "__vfprintf_chk", scope: !902, file: !902, line: 96, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!78, !1939, !78, !906, !456}
!2030 = !DISubprogram(name: "strerror_r", scope: !1032, file: !1032, line: 444, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!132, !78, !132, !135}
!2033 = !DISubprogram(name: "fcntl", scope: !2034, file: !2034, line: 149, type: !2035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2034 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!78, !78, !78, null}
!2037 = distinct !DISubprogram(name: "error", scope: !444, file: !444, line: 285, type: !2038, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !78, !78, !138, null}
!2040 = !{!2041, !2042, !2043, !2044}
!2041 = !DILocalVariable(name: "status", arg: 1, scope: !2037, file: !444, line: 285, type: !78)
!2042 = !DILocalVariable(name: "errnum", arg: 2, scope: !2037, file: !444, line: 285, type: !78)
!2043 = !DILocalVariable(name: "message", arg: 3, scope: !2037, file: !444, line: 285, type: !138)
!2044 = !DILocalVariable(name: "ap", scope: !2037, file: !444, line: 287, type: !454)
!2045 = !DILocation(line: 0, scope: !2037)
!2046 = !DILocation(line: 287, column: 3, scope: !2037)
!2047 = !DILocation(line: 287, column: 11, scope: !2037)
!2048 = !DILocation(line: 288, column: 3, scope: !2037)
!2049 = !DILocation(line: 289, column: 3, scope: !2037)
!2050 = !DILocation(line: 290, column: 3, scope: !2037)
!2051 = !DILocation(line: 291, column: 1, scope: !2037)
!2052 = !DILocation(line: 0, scope: !451)
!2053 = !DILocation(line: 298, column: 1, scope: !451)
!2054 = !DILocation(line: 302, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !451, file: !444, line: 302, column: 7)
!2056 = !DILocation(line: 302, column: 7, scope: !451)
!2057 = !DILocation(line: 307, column: 11, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !444, line: 307, column: 11)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !444, line: 303, column: 5)
!2060 = !DILocation(line: 307, column: 27, scope: !2058)
!2061 = !DILocation(line: 308, column: 11, scope: !2058)
!2062 = !DILocation(line: 308, column: 28, scope: !2058)
!2063 = !DILocation(line: 308, column: 25, scope: !2058)
!2064 = !DILocation(line: 309, column: 15, scope: !2058)
!2065 = !DILocation(line: 309, column: 33, scope: !2058)
!2066 = !DILocation(line: 310, column: 19, scope: !2058)
!2067 = !DILocation(line: 311, column: 22, scope: !2058)
!2068 = !DILocation(line: 311, column: 56, scope: !2058)
!2069 = !DILocation(line: 307, column: 11, scope: !2059)
!2070 = !DILocation(line: 316, column: 21, scope: !2059)
!2071 = !DILocation(line: 317, column: 23, scope: !2059)
!2072 = !DILocation(line: 318, column: 5, scope: !2059)
!2073 = !DILocation(line: 327, column: 3, scope: !451)
!2074 = !DILocation(line: 331, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !451, file: !444, line: 331, column: 7)
!2076 = !DILocation(line: 331, column: 7, scope: !451)
!2077 = !DILocation(line: 332, column: 5, scope: !2075)
!2078 = !DILocation(line: 338, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !444, line: 334, column: 5)
!2080 = !DILocation(line: 346, column: 3, scope: !451)
!2081 = !DILocation(line: 350, column: 3, scope: !451)
!2082 = !DILocation(line: 356, column: 1, scope: !451)
!2083 = distinct !DISubprogram(name: "error_at_line", scope: !444, file: !444, line: 359, type: !2084, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !78, !78, !138, !84, !138, null}
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092}
!2087 = !DILocalVariable(name: "status", arg: 1, scope: !2083, file: !444, line: 359, type: !78)
!2088 = !DILocalVariable(name: "errnum", arg: 2, scope: !2083, file: !444, line: 359, type: !78)
!2089 = !DILocalVariable(name: "file_name", arg: 3, scope: !2083, file: !444, line: 359, type: !138)
!2090 = !DILocalVariable(name: "line_number", arg: 4, scope: !2083, file: !444, line: 360, type: !84)
!2091 = !DILocalVariable(name: "message", arg: 5, scope: !2083, file: !444, line: 360, type: !138)
!2092 = !DILocalVariable(name: "ap", scope: !2083, file: !444, line: 362, type: !454)
!2093 = !DILocation(line: 0, scope: !2083)
!2094 = !DILocation(line: 362, column: 3, scope: !2083)
!2095 = !DILocation(line: 362, column: 11, scope: !2083)
!2096 = !DILocation(line: 363, column: 3, scope: !2083)
!2097 = !DILocation(line: 364, column: 3, scope: !2083)
!2098 = !DILocation(line: 366, column: 3, scope: !2083)
!2099 = !DILocation(line: 367, column: 1, scope: !2083)
!2100 = distinct !DISubprogram(name: "fdadvise", scope: !763, file: !763, line: 25, type: !2101, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !2105)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !78, !2103, !2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !455, line: 63, baseType: !240)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !123, line: 51, baseType: !122)
!2105 = !{!2106, !2107, !2108, !2109}
!2106 = !DILocalVariable(name: "fd", arg: 1, scope: !2100, file: !763, line: 25, type: !78)
!2107 = !DILocalVariable(name: "offset", arg: 2, scope: !2100, file: !763, line: 25, type: !2103)
!2108 = !DILocalVariable(name: "len", arg: 3, scope: !2100, file: !763, line: 25, type: !2103)
!2109 = !DILocalVariable(name: "advice", arg: 4, scope: !2100, file: !763, line: 25, type: !2104)
!2110 = !DILocation(line: 0, scope: !2100)
!2111 = !DILocation(line: 28, column: 3, scope: !2100)
!2112 = !DILocation(line: 30, column: 1, scope: !2100)
!2113 = !DISubprogram(name: "posix_fadvise", scope: !2034, file: !2034, line: 273, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!78, !78, !2103, !2103, !78}
!2116 = distinct !DISubprogram(name: "fadvise", scope: !763, file: !763, line: 33, type: !2117, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !2153)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !2119, !2104}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2121, file: !218, line: 51, baseType: !78, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2121, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2121, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2121, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2121, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2121, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2121, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2121, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2121, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2121, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2121, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2121, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2121, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2121, file: !218, line: 70, baseType: !2137, size: 64, offset: 832)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2121, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2121, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2121, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2121, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2121, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2121, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2121, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2121, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2121, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2121, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2121, file: !218, line: 93, baseType: !2137, size: 64, offset: 1344)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2121, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2121, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2121, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2121, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2153 = !{!2154, !2155}
!2154 = !DILocalVariable(name: "fp", arg: 1, scope: !2116, file: !763, line: 33, type: !2119)
!2155 = !DILocalVariable(name: "advice", arg: 2, scope: !2116, file: !763, line: 33, type: !2104)
!2156 = !DILocation(line: 0, scope: !2116)
!2157 = !DILocation(line: 35, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2116, file: !763, line: 35, column: 7)
!2159 = !DILocation(line: 35, column: 7, scope: !2116)
!2160 = !DILocation(line: 36, column: 15, scope: !2158)
!2161 = !DILocation(line: 0, scope: !2100, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 36, column: 5, scope: !2158)
!2163 = !DILocation(line: 28, column: 3, scope: !2100, inlinedAt: !2162)
!2164 = !DILocation(line: 36, column: 5, scope: !2158)
!2165 = !DILocation(line: 37, column: 1, scope: !2116)
!2166 = !DISubprogram(name: "fileno", scope: !455, file: !455, line: 809, type: !2167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!78, !2119}
!2169 = distinct !DISubprogram(name: "rpl_fclose", scope: !766, file: !766, line: 58, type: !2170, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2206)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!78, !2172}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2174)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2175)
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2174, file: !218, line: 51, baseType: !78, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2174, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2174, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2174, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2174, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2174, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2174, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2174, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2174, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2174, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2174, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2174, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2174, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2174, file: !218, line: 70, baseType: !2190, size: 64, offset: 832)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2174, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2174, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2174, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2174, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2174, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2174, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2174, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2174, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2174, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2174, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2174, file: !218, line: 93, baseType: !2190, size: 64, offset: 1344)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2174, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2174, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2174, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2174, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2206 = !{!2207, !2208, !2209, !2210}
!2207 = !DILocalVariable(name: "fp", arg: 1, scope: !2169, file: !766, line: 58, type: !2172)
!2208 = !DILocalVariable(name: "saved_errno", scope: !2169, file: !766, line: 60, type: !78)
!2209 = !DILocalVariable(name: "fd", scope: !2169, file: !766, line: 63, type: !78)
!2210 = !DILocalVariable(name: "result", scope: !2169, file: !766, line: 74, type: !78)
!2211 = !DILocation(line: 0, scope: !2169)
!2212 = !DILocation(line: 63, column: 12, scope: !2169)
!2213 = !DILocation(line: 64, column: 10, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2169, file: !766, line: 64, column: 7)
!2215 = !DILocation(line: 64, column: 7, scope: !2169)
!2216 = !DILocation(line: 65, column: 12, scope: !2214)
!2217 = !DILocation(line: 65, column: 5, scope: !2214)
!2218 = !DILocation(line: 70, column: 9, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2169, file: !766, line: 70, column: 7)
!2220 = !DILocation(line: 70, column: 23, scope: !2219)
!2221 = !DILocation(line: 70, column: 33, scope: !2219)
!2222 = !DILocation(line: 70, column: 26, scope: !2219)
!2223 = !DILocation(line: 70, column: 59, scope: !2219)
!2224 = !DILocation(line: 71, column: 7, scope: !2219)
!2225 = !DILocation(line: 71, column: 10, scope: !2219)
!2226 = !DILocation(line: 70, column: 7, scope: !2169)
!2227 = !DILocation(line: 100, column: 12, scope: !2169)
!2228 = !DILocation(line: 105, column: 7, scope: !2169)
!2229 = !DILocation(line: 72, column: 19, scope: !2219)
!2230 = !DILocation(line: 105, column: 19, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2169, file: !766, line: 105, column: 7)
!2232 = !DILocation(line: 107, column: 13, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2231, file: !766, line: 106, column: 5)
!2234 = !DILocation(line: 109, column: 5, scope: !2233)
!2235 = !DILocation(line: 112, column: 1, scope: !2169)
!2236 = !DISubprogram(name: "fclose", scope: !455, file: !455, line: 178, type: !2170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2237 = !DISubprogram(name: "__freading", scope: !2238, file: !2238, line: 51, type: !2170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2238 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2239 = !DISubprogram(name: "lseek", scope: !1890, file: !1890, line: 339, type: !2240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!240, !78, !240, !78}
!2242 = distinct !DISubprogram(name: "rpl_fflush", scope: !768, file: !768, line: 130, type: !2243, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !2279)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!78, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2247, file: !218, line: 51, baseType: !78, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2247, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2247, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2247, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2247, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2247, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2247, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2247, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2247, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2247, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2247, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2247, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2247, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2247, file: !218, line: 70, baseType: !2263, size: 64, offset: 832)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2247, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2247, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2247, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2247, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2247, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2247, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2247, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2247, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2247, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2247, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2247, file: !218, line: 93, baseType: !2263, size: 64, offset: 1344)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2247, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2247, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2247, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2247, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2279 = !{!2280}
!2280 = !DILocalVariable(name: "stream", arg: 1, scope: !2242, file: !768, line: 130, type: !2245)
!2281 = !DILocation(line: 0, scope: !2242)
!2282 = !DILocation(line: 151, column: 14, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2242, file: !768, line: 151, column: 7)
!2284 = !DILocation(line: 151, column: 22, scope: !2283)
!2285 = !DILocation(line: 151, column: 27, scope: !2283)
!2286 = !DILocation(line: 151, column: 7, scope: !2242)
!2287 = !DILocation(line: 152, column: 12, scope: !2283)
!2288 = !DILocation(line: 152, column: 5, scope: !2283)
!2289 = !DILocalVariable(name: "fp", arg: 1, scope: !2290, file: !768, line: 42, type: !2245)
!2290 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !768, file: !768, line: 42, type: !2291, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{null, !2245}
!2293 = !{!2289}
!2294 = !DILocation(line: 0, scope: !2290, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 157, column: 3, scope: !2242)
!2296 = !DILocation(line: 44, column: 12, scope: !2297, inlinedAt: !2295)
!2297 = distinct !DILexicalBlock(scope: !2290, file: !768, line: 44, column: 7)
!2298 = !DILocation(line: 44, column: 19, scope: !2297, inlinedAt: !2295)
!2299 = !DILocation(line: 44, column: 7, scope: !2290, inlinedAt: !2295)
!2300 = !DILocation(line: 46, column: 5, scope: !2297, inlinedAt: !2295)
!2301 = !DILocation(line: 159, column: 10, scope: !2242)
!2302 = !DILocation(line: 159, column: 3, scope: !2242)
!2303 = !DILocation(line: 236, column: 1, scope: !2242)
!2304 = !DISubprogram(name: "fflush", scope: !455, file: !455, line: 230, type: !2243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2305 = distinct !DISubprogram(name: "fpurge", scope: !771, file: !771, line: 32, type: !2306, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !2342)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!78, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2311)
!2311 = !{!2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2310, file: !218, line: 51, baseType: !78, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2310, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2310, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2310, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2310, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2310, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2310, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2310, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2310, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2310, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2310, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2310, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2310, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2310, file: !218, line: 70, baseType: !2326, size: 64, offset: 832)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2310, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2310, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2310, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2310, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2310, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2310, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2310, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2310, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2310, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2310, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2310, file: !218, line: 93, baseType: !2326, size: 64, offset: 1344)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2310, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2310, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2310, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2310, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2342 = !{!2343}
!2343 = !DILocalVariable(name: "fp", arg: 1, scope: !2305, file: !771, line: 32, type: !2308)
!2344 = !DILocation(line: 0, scope: !2305)
!2345 = !DILocation(line: 36, column: 3, scope: !2305)
!2346 = !DILocation(line: 38, column: 3, scope: !2305)
!2347 = !DISubprogram(name: "__fpurge", scope: !2238, file: !2238, line: 72, type: !2348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !2308}
!2350 = distinct !DISubprogram(name: "rpl_fseeko", scope: !773, file: !773, line: 28, type: !2351, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !2387)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!78, !2353, !2103, !78}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2355)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2355, file: !218, line: 51, baseType: !78, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2355, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2355, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2355, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2355, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2355, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2355, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2355, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2355, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2355, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2355, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2355, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2355, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2355, file: !218, line: 70, baseType: !2371, size: 64, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2355, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2355, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2355, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2355, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2355, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2355, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2355, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2355, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2355, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2355, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2355, file: !218, line: 93, baseType: !2371, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2355, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2355, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2355, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2355, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2387 = !{!2388, !2389, !2390, !2391}
!2388 = !DILocalVariable(name: "fp", arg: 1, scope: !2350, file: !773, line: 28, type: !2353)
!2389 = !DILocalVariable(name: "offset", arg: 2, scope: !2350, file: !773, line: 28, type: !2103)
!2390 = !DILocalVariable(name: "whence", arg: 3, scope: !2350, file: !773, line: 28, type: !78)
!2391 = !DILocalVariable(name: "pos", scope: !2392, file: !773, line: 123, type: !2103)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !773, line: 119, column: 5)
!2393 = distinct !DILexicalBlock(scope: !2350, file: !773, line: 55, column: 7)
!2394 = !DILocation(line: 0, scope: !2350)
!2395 = !DILocation(line: 55, column: 12, scope: !2393)
!2396 = !DILocation(line: 55, column: 33, scope: !2393)
!2397 = !DILocation(line: 55, column: 25, scope: !2393)
!2398 = !DILocation(line: 56, column: 7, scope: !2393)
!2399 = !DILocation(line: 56, column: 15, scope: !2393)
!2400 = !DILocation(line: 56, column: 37, scope: !2393)
!2401 = !{!1346, !847, i64 32}
!2402 = !DILocation(line: 56, column: 29, scope: !2393)
!2403 = !DILocation(line: 57, column: 7, scope: !2393)
!2404 = !DILocation(line: 57, column: 15, scope: !2393)
!2405 = !{!1346, !847, i64 72}
!2406 = !DILocation(line: 57, column: 29, scope: !2393)
!2407 = !DILocation(line: 55, column: 7, scope: !2350)
!2408 = !DILocation(line: 123, column: 26, scope: !2392)
!2409 = !DILocation(line: 123, column: 19, scope: !2392)
!2410 = !DILocation(line: 0, scope: !2392)
!2411 = !DILocation(line: 124, column: 15, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2392, file: !773, line: 124, column: 11)
!2413 = !DILocation(line: 124, column: 11, scope: !2392)
!2414 = !DILocation(line: 135, column: 19, scope: !2392)
!2415 = !DILocation(line: 136, column: 12, scope: !2392)
!2416 = !DILocation(line: 136, column: 20, scope: !2392)
!2417 = !{!1346, !1138, i64 144}
!2418 = !DILocation(line: 167, column: 7, scope: !2392)
!2419 = !DILocation(line: 169, column: 10, scope: !2350)
!2420 = !DILocation(line: 169, column: 3, scope: !2350)
!2421 = !DILocation(line: 170, column: 1, scope: !2350)
!2422 = !DISubprogram(name: "fseeko", scope: !455, file: !455, line: 736, type: !2423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!78, !2353, !240, !78}
!2425 = distinct !DISubprogram(name: "getprogname", scope: !775, file: !775, line: 54, type: !2426, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !855)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!138}
!2428 = !DILocation(line: 58, column: 10, scope: !2425)
!2429 = !DILocation(line: 58, column: 3, scope: !2425)
!2430 = distinct !DISubprogram(name: "set_program_name", scope: !501, file: !501, line: 37, type: !867, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !2431)
!2431 = !{!2432, !2433, !2434}
!2432 = !DILocalVariable(name: "argv0", arg: 1, scope: !2430, file: !501, line: 37, type: !138)
!2433 = !DILocalVariable(name: "slash", scope: !2430, file: !501, line: 44, type: !138)
!2434 = !DILocalVariable(name: "base", scope: !2430, file: !501, line: 45, type: !138)
!2435 = !DILocation(line: 0, scope: !2430)
!2436 = !DILocation(line: 44, column: 23, scope: !2430)
!2437 = !DILocation(line: 45, column: 22, scope: !2430)
!2438 = !DILocation(line: 46, column: 17, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2430, file: !501, line: 46, column: 7)
!2440 = !DILocation(line: 46, column: 9, scope: !2439)
!2441 = !DILocation(line: 46, column: 25, scope: !2439)
!2442 = !DILocation(line: 46, column: 40, scope: !2439)
!2443 = !DILocalVariable(name: "__s1", arg: 1, scope: !2444, file: !928, line: 974, type: !1060)
!2444 = distinct !DISubprogram(name: "memeq", scope: !928, file: !928, line: 974, type: !2445, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!172, !1060, !1060, !135}
!2447 = !{!2443, !2448, !2449}
!2448 = !DILocalVariable(name: "__s2", arg: 2, scope: !2444, file: !928, line: 974, type: !1060)
!2449 = !DILocalVariable(name: "__n", arg: 3, scope: !2444, file: !928, line: 974, type: !135)
!2450 = !DILocation(line: 0, scope: !2444, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 46, column: 28, scope: !2439)
!2452 = !DILocation(line: 976, column: 11, scope: !2444, inlinedAt: !2451)
!2453 = !DILocation(line: 976, column: 10, scope: !2444, inlinedAt: !2451)
!2454 = !DILocation(line: 46, column: 7, scope: !2430)
!2455 = !DILocation(line: 49, column: 11, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !501, line: 49, column: 11)
!2457 = distinct !DILexicalBlock(scope: !2439, file: !501, line: 47, column: 5)
!2458 = !DILocation(line: 49, column: 36, scope: !2456)
!2459 = !DILocation(line: 49, column: 11, scope: !2457)
!2460 = !DILocation(line: 65, column: 16, scope: !2430)
!2461 = !DILocation(line: 71, column: 27, scope: !2430)
!2462 = !DILocation(line: 74, column: 33, scope: !2430)
!2463 = !DILocation(line: 76, column: 1, scope: !2430)
!2464 = !DISubprogram(name: "strrchr", scope: !1032, file: !1032, line: 273, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2465 = !DILocation(line: 0, scope: !510)
!2466 = !DILocation(line: 40, column: 29, scope: !510)
!2467 = !DILocation(line: 41, column: 19, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !510, file: !511, line: 41, column: 7)
!2469 = !DILocation(line: 41, column: 7, scope: !510)
!2470 = !DILocation(line: 47, column: 3, scope: !510)
!2471 = !DILocation(line: 48, column: 3, scope: !510)
!2472 = !DILocation(line: 48, column: 13, scope: !510)
!2473 = !DILocalVariable(name: "ps", arg: 1, scope: !2474, file: !2475, line: 1135, type: !2478)
!2474 = distinct !DISubprogram(name: "mbszero", scope: !2475, file: !2475, line: 1135, type: !2476, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2479)
!2475 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2476 = !DISubroutineType(types: !2477)
!2477 = !{null, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!2479 = !{!2473}
!2480 = !DILocation(line: 0, scope: !2474, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 48, column: 18, scope: !510)
!2482 = !DILocalVariable(name: "__dest", arg: 1, scope: !2483, file: !1234, line: 57, type: !133)
!2483 = distinct !DISubprogram(name: "memset", scope: !1234, file: !1234, line: 57, type: !2484, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!133, !133, !78, !135}
!2486 = !{!2482, !2487, !2488}
!2487 = !DILocalVariable(name: "__ch", arg: 2, scope: !2483, file: !1234, line: 57, type: !78)
!2488 = !DILocalVariable(name: "__len", arg: 3, scope: !2483, file: !1234, line: 57, type: !135)
!2489 = !DILocation(line: 0, scope: !2483, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 1137, column: 3, scope: !2474, inlinedAt: !2481)
!2491 = !DILocation(line: 59, column: 10, scope: !2483, inlinedAt: !2490)
!2492 = !DILocation(line: 49, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !510, file: !511, line: 49, column: 7)
!2494 = !DILocation(line: 49, column: 39, scope: !2493)
!2495 = !DILocation(line: 49, column: 44, scope: !2493)
!2496 = !DILocation(line: 54, column: 1, scope: !510)
!2497 = distinct !DISubprogram(name: "clone_quoting_options", scope: !541, file: !541, line: 113, type: !2498, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2501)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!2500, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "o", arg: 1, scope: !2497, file: !541, line: 113, type: !2500)
!2503 = !DILocalVariable(name: "saved_errno", scope: !2497, file: !541, line: 115, type: !78)
!2504 = !DILocalVariable(name: "p", scope: !2497, file: !541, line: 116, type: !2500)
!2505 = !DILocation(line: 0, scope: !2497)
!2506 = !DILocation(line: 115, column: 21, scope: !2497)
!2507 = !DILocation(line: 116, column: 40, scope: !2497)
!2508 = !DILocation(line: 116, column: 31, scope: !2497)
!2509 = !DILocation(line: 118, column: 9, scope: !2497)
!2510 = !DILocation(line: 119, column: 3, scope: !2497)
!2511 = distinct !DISubprogram(name: "get_quoting_style", scope: !541, file: !541, line: 124, type: !2512, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2516)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!82, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "o", arg: 1, scope: !2511, file: !541, line: 124, type: !2514)
!2518 = !DILocation(line: 0, scope: !2511)
!2519 = !DILocation(line: 126, column: 11, scope: !2511)
!2520 = !DILocation(line: 126, column: 46, scope: !2511)
!2521 = !{!2522, !848, i64 0}
!2522 = !{!"quoting_options", !848, i64 0, !916, i64 4, !848, i64 8, !847, i64 40, !847, i64 48}
!2523 = !DILocation(line: 126, column: 3, scope: !2511)
!2524 = distinct !DISubprogram(name: "set_quoting_style", scope: !541, file: !541, line: 132, type: !2525, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{null, !2500, !82}
!2527 = !{!2528, !2529}
!2528 = !DILocalVariable(name: "o", arg: 1, scope: !2524, file: !541, line: 132, type: !2500)
!2529 = !DILocalVariable(name: "s", arg: 2, scope: !2524, file: !541, line: 132, type: !82)
!2530 = !DILocation(line: 0, scope: !2524)
!2531 = !DILocation(line: 134, column: 4, scope: !2524)
!2532 = !DILocation(line: 134, column: 45, scope: !2524)
!2533 = !DILocation(line: 135, column: 1, scope: !2524)
!2534 = distinct !DISubprogram(name: "set_char_quoting", scope: !541, file: !541, line: 143, type: !2535, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!78, !2500, !4, !78}
!2537 = !{!2538, !2539, !2540, !2541, !2542, !2544, !2545}
!2538 = !DILocalVariable(name: "o", arg: 1, scope: !2534, file: !541, line: 143, type: !2500)
!2539 = !DILocalVariable(name: "c", arg: 2, scope: !2534, file: !541, line: 143, type: !4)
!2540 = !DILocalVariable(name: "i", arg: 3, scope: !2534, file: !541, line: 143, type: !78)
!2541 = !DILocalVariable(name: "uc", scope: !2534, file: !541, line: 145, type: !140)
!2542 = !DILocalVariable(name: "p", scope: !2534, file: !541, line: 146, type: !2543)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2544 = !DILocalVariable(name: "shift", scope: !2534, file: !541, line: 148, type: !78)
!2545 = !DILocalVariable(name: "r", scope: !2534, file: !541, line: 149, type: !84)
!2546 = !DILocation(line: 0, scope: !2534)
!2547 = !DILocation(line: 147, column: 6, scope: !2534)
!2548 = !DILocation(line: 147, column: 41, scope: !2534)
!2549 = !DILocation(line: 147, column: 62, scope: !2534)
!2550 = !DILocation(line: 147, column: 57, scope: !2534)
!2551 = !DILocation(line: 148, column: 15, scope: !2534)
!2552 = !DILocation(line: 149, column: 21, scope: !2534)
!2553 = !DILocation(line: 149, column: 24, scope: !2534)
!2554 = !DILocation(line: 149, column: 34, scope: !2534)
!2555 = !DILocation(line: 150, column: 19, scope: !2534)
!2556 = !DILocation(line: 150, column: 24, scope: !2534)
!2557 = !DILocation(line: 150, column: 6, scope: !2534)
!2558 = !DILocation(line: 151, column: 3, scope: !2534)
!2559 = distinct !DISubprogram(name: "set_quoting_flags", scope: !541, file: !541, line: 159, type: !2560, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!78, !2500, !78}
!2562 = !{!2563, !2564, !2565}
!2563 = !DILocalVariable(name: "o", arg: 1, scope: !2559, file: !541, line: 159, type: !2500)
!2564 = !DILocalVariable(name: "i", arg: 2, scope: !2559, file: !541, line: 159, type: !78)
!2565 = !DILocalVariable(name: "r", scope: !2559, file: !541, line: 163, type: !78)
!2566 = !DILocation(line: 0, scope: !2559)
!2567 = !DILocation(line: 161, column: 8, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2559, file: !541, line: 161, column: 7)
!2569 = !DILocation(line: 161, column: 7, scope: !2559)
!2570 = !DILocation(line: 163, column: 14, scope: !2559)
!2571 = !{!2522, !916, i64 4}
!2572 = !DILocation(line: 164, column: 12, scope: !2559)
!2573 = !DILocation(line: 165, column: 3, scope: !2559)
!2574 = distinct !DISubprogram(name: "set_custom_quoting", scope: !541, file: !541, line: 169, type: !2575, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2500, !138, !138}
!2577 = !{!2578, !2579, !2580}
!2578 = !DILocalVariable(name: "o", arg: 1, scope: !2574, file: !541, line: 169, type: !2500)
!2579 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2574, file: !541, line: 170, type: !138)
!2580 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2574, file: !541, line: 170, type: !138)
!2581 = !DILocation(line: 0, scope: !2574)
!2582 = !DILocation(line: 172, column: 8, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2574, file: !541, line: 172, column: 7)
!2584 = !DILocation(line: 172, column: 7, scope: !2574)
!2585 = !DILocation(line: 174, column: 12, scope: !2574)
!2586 = !DILocation(line: 175, column: 8, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2574, file: !541, line: 175, column: 7)
!2588 = !DILocation(line: 175, column: 19, scope: !2587)
!2589 = !DILocation(line: 176, column: 5, scope: !2587)
!2590 = !DILocation(line: 177, column: 6, scope: !2574)
!2591 = !DILocation(line: 177, column: 17, scope: !2574)
!2592 = !{!2522, !847, i64 40}
!2593 = !DILocation(line: 178, column: 6, scope: !2574)
!2594 = !DILocation(line: 178, column: 18, scope: !2574)
!2595 = !{!2522, !847, i64 48}
!2596 = !DILocation(line: 179, column: 1, scope: !2574)
!2597 = !DISubprogram(name: "abort", scope: !1036, file: !1036, line: 598, type: !496, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !855)
!2598 = distinct !DISubprogram(name: "quotearg_buffer", scope: !541, file: !541, line: 774, type: !2599, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!135, !132, !135, !138, !135, !2514}
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609}
!2602 = !DILocalVariable(name: "buffer", arg: 1, scope: !2598, file: !541, line: 774, type: !132)
!2603 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2598, file: !541, line: 774, type: !135)
!2604 = !DILocalVariable(name: "arg", arg: 3, scope: !2598, file: !541, line: 775, type: !138)
!2605 = !DILocalVariable(name: "argsize", arg: 4, scope: !2598, file: !541, line: 775, type: !135)
!2606 = !DILocalVariable(name: "o", arg: 5, scope: !2598, file: !541, line: 776, type: !2514)
!2607 = !DILocalVariable(name: "p", scope: !2598, file: !541, line: 778, type: !2514)
!2608 = !DILocalVariable(name: "saved_errno", scope: !2598, file: !541, line: 779, type: !78)
!2609 = !DILocalVariable(name: "r", scope: !2598, file: !541, line: 780, type: !135)
!2610 = !DILocation(line: 0, scope: !2598)
!2611 = !DILocation(line: 778, column: 37, scope: !2598)
!2612 = !DILocation(line: 779, column: 21, scope: !2598)
!2613 = !DILocation(line: 781, column: 43, scope: !2598)
!2614 = !DILocation(line: 781, column: 53, scope: !2598)
!2615 = !DILocation(line: 781, column: 63, scope: !2598)
!2616 = !DILocation(line: 782, column: 43, scope: !2598)
!2617 = !DILocation(line: 782, column: 58, scope: !2598)
!2618 = !DILocation(line: 780, column: 14, scope: !2598)
!2619 = !DILocation(line: 783, column: 9, scope: !2598)
!2620 = !DILocation(line: 784, column: 3, scope: !2598)
!2621 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !541, file: !541, line: 251, type: !2622, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2626)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!135, !132, !135, !138, !135, !82, !78, !2624, !138, !138}
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2651, !2653, !2656, !2657, !2658, !2659, !2662, !2663, !2666, !2670, !2671, !2679, !2682, !2683, !2685, !2686, !2687, !2688}
!2627 = !DILocalVariable(name: "buffer", arg: 1, scope: !2621, file: !541, line: 251, type: !132)
!2628 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2621, file: !541, line: 251, type: !135)
!2629 = !DILocalVariable(name: "arg", arg: 3, scope: !2621, file: !541, line: 252, type: !138)
!2630 = !DILocalVariable(name: "argsize", arg: 4, scope: !2621, file: !541, line: 252, type: !135)
!2631 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2621, file: !541, line: 253, type: !82)
!2632 = !DILocalVariable(name: "flags", arg: 6, scope: !2621, file: !541, line: 253, type: !78)
!2633 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2621, file: !541, line: 254, type: !2624)
!2634 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2621, file: !541, line: 255, type: !138)
!2635 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2621, file: !541, line: 256, type: !138)
!2636 = !DILocalVariable(name: "unibyte_locale", scope: !2621, file: !541, line: 258, type: !172)
!2637 = !DILocalVariable(name: "len", scope: !2621, file: !541, line: 260, type: !135)
!2638 = !DILocalVariable(name: "orig_buffersize", scope: !2621, file: !541, line: 261, type: !135)
!2639 = !DILocalVariable(name: "quote_string", scope: !2621, file: !541, line: 262, type: !138)
!2640 = !DILocalVariable(name: "quote_string_len", scope: !2621, file: !541, line: 263, type: !135)
!2641 = !DILocalVariable(name: "backslash_escapes", scope: !2621, file: !541, line: 264, type: !172)
!2642 = !DILocalVariable(name: "elide_outer_quotes", scope: !2621, file: !541, line: 265, type: !172)
!2643 = !DILocalVariable(name: "encountered_single_quote", scope: !2621, file: !541, line: 266, type: !172)
!2644 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2621, file: !541, line: 267, type: !172)
!2645 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2621, file: !541, line: 309, type: !172)
!2646 = !DILocalVariable(name: "lq", scope: !2647, file: !541, line: 361, type: !138)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !541, line: 361, column: 11)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !541, line: 360, column: 13)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !541, line: 333, column: 7)
!2650 = distinct !DILexicalBlock(scope: !2621, file: !541, line: 312, column: 5)
!2651 = !DILocalVariable(name: "i", scope: !2652, file: !541, line: 395, type: !135)
!2652 = distinct !DILexicalBlock(scope: !2621, file: !541, line: 395, column: 3)
!2653 = !DILocalVariable(name: "is_right_quote", scope: !2654, file: !541, line: 397, type: !172)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !541, line: 396, column: 5)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !541, line: 395, column: 3)
!2656 = !DILocalVariable(name: "escaping", scope: !2654, file: !541, line: 398, type: !172)
!2657 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2654, file: !541, line: 399, type: !172)
!2658 = !DILocalVariable(name: "c", scope: !2654, file: !541, line: 417, type: !140)
!2659 = !DILocalVariable(name: "m", scope: !2660, file: !541, line: 598, type: !135)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !541, line: 596, column: 11)
!2661 = distinct !DILexicalBlock(scope: !2654, file: !541, line: 419, column: 9)
!2662 = !DILocalVariable(name: "printable", scope: !2660, file: !541, line: 600, type: !172)
!2663 = !DILocalVariable(name: "mbs", scope: !2664, file: !541, line: 609, type: !614)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !541, line: 608, column: 15)
!2665 = distinct !DILexicalBlock(scope: !2660, file: !541, line: 602, column: 17)
!2666 = !DILocalVariable(name: "w", scope: !2667, file: !541, line: 618, type: !521)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !541, line: 617, column: 19)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !541, line: 616, column: 17)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !541, line: 616, column: 17)
!2670 = !DILocalVariable(name: "bytes", scope: !2667, file: !541, line: 619, type: !135)
!2671 = !DILocalVariable(name: "j", scope: !2672, file: !541, line: 648, type: !135)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !541, line: 648, column: 29)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !541, line: 647, column: 27)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !541, line: 645, column: 29)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !541, line: 636, column: 23)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !541, line: 628, column: 30)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !541, line: 623, column: 30)
!2678 = distinct !DILexicalBlock(scope: !2667, file: !541, line: 621, column: 25)
!2679 = !DILocalVariable(name: "ilim", scope: !2680, file: !541, line: 674, type: !135)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !541, line: 671, column: 15)
!2681 = distinct !DILexicalBlock(scope: !2660, file: !541, line: 670, column: 17)
!2682 = !DILabel(scope: !2621, name: "process_input", file: !541, line: 308)
!2683 = !DILabel(scope: !2684, name: "c_and_shell_escape", file: !541, line: 502)
!2684 = distinct !DILexicalBlock(scope: !2661, file: !541, line: 478, column: 9)
!2685 = !DILabel(scope: !2684, name: "c_escape", file: !541, line: 507)
!2686 = !DILabel(scope: !2654, name: "store_escape", file: !541, line: 709)
!2687 = !DILabel(scope: !2654, name: "store_c", file: !541, line: 712)
!2688 = !DILabel(scope: !2621, name: "force_outer_quoting_style", file: !541, line: 753)
!2689 = !DILocation(line: 0, scope: !2621)
!2690 = !DILocation(line: 258, column: 25, scope: !2621)
!2691 = !DILocation(line: 258, column: 36, scope: !2621)
!2692 = !DILocation(line: 267, column: 3, scope: !2621)
!2693 = !DILocation(line: 261, column: 10, scope: !2621)
!2694 = !DILocation(line: 262, column: 15, scope: !2621)
!2695 = !DILocation(line: 263, column: 10, scope: !2621)
!2696 = !DILocation(line: 308, column: 2, scope: !2621)
!2697 = !DILocation(line: 311, column: 3, scope: !2621)
!2698 = !DILocation(line: 318, column: 11, scope: !2650)
!2699 = !DILocation(line: 319, column: 9, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !541, line: 319, column: 9)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !541, line: 319, column: 9)
!2702 = distinct !DILexicalBlock(scope: !2650, file: !541, line: 318, column: 11)
!2703 = !DILocation(line: 319, column: 9, scope: !2701)
!2704 = !DILocation(line: 0, scope: !605, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 357, column: 26, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !541, line: 335, column: 11)
!2707 = distinct !DILexicalBlock(scope: !2649, file: !541, line: 334, column: 13)
!2708 = !DILocation(line: 199, column: 29, scope: !605, inlinedAt: !2705)
!2709 = !DILocation(line: 201, column: 19, scope: !2710, inlinedAt: !2705)
!2710 = distinct !DILexicalBlock(scope: !605, file: !541, line: 201, column: 7)
!2711 = !DILocation(line: 201, column: 7, scope: !605, inlinedAt: !2705)
!2712 = !DILocation(line: 229, column: 3, scope: !605, inlinedAt: !2705)
!2713 = !DILocation(line: 230, column: 3, scope: !605, inlinedAt: !2705)
!2714 = !DILocation(line: 230, column: 13, scope: !605, inlinedAt: !2705)
!2715 = !DILocalVariable(name: "ps", arg: 1, scope: !2716, file: !2475, line: 1135, type: !2719)
!2716 = distinct !DISubprogram(name: "mbszero", scope: !2475, file: !2475, line: 1135, type: !2717, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2720)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!2720 = !{!2715}
!2721 = !DILocation(line: 0, scope: !2716, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 230, column: 18, scope: !605, inlinedAt: !2705)
!2723 = !DILocalVariable(name: "__dest", arg: 1, scope: !2724, file: !1234, line: 57, type: !133)
!2724 = distinct !DISubprogram(name: "memset", scope: !1234, file: !1234, line: 57, type: !2484, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2725)
!2725 = !{!2723, !2726, !2727}
!2726 = !DILocalVariable(name: "__ch", arg: 2, scope: !2724, file: !1234, line: 57, type: !78)
!2727 = !DILocalVariable(name: "__len", arg: 3, scope: !2724, file: !1234, line: 57, type: !135)
!2728 = !DILocation(line: 0, scope: !2724, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 1137, column: 3, scope: !2716, inlinedAt: !2722)
!2730 = !DILocation(line: 59, column: 10, scope: !2724, inlinedAt: !2729)
!2731 = !DILocation(line: 231, column: 7, scope: !2732, inlinedAt: !2705)
!2732 = distinct !DILexicalBlock(scope: !605, file: !541, line: 231, column: 7)
!2733 = !DILocation(line: 231, column: 40, scope: !2732, inlinedAt: !2705)
!2734 = !DILocation(line: 231, column: 45, scope: !2732, inlinedAt: !2705)
!2735 = !DILocation(line: 235, column: 1, scope: !605, inlinedAt: !2705)
!2736 = !DILocation(line: 0, scope: !605, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 358, column: 27, scope: !2706)
!2738 = !DILocation(line: 199, column: 29, scope: !605, inlinedAt: !2737)
!2739 = !DILocation(line: 201, column: 19, scope: !2710, inlinedAt: !2737)
!2740 = !DILocation(line: 201, column: 7, scope: !605, inlinedAt: !2737)
!2741 = !DILocation(line: 229, column: 3, scope: !605, inlinedAt: !2737)
!2742 = !DILocation(line: 230, column: 3, scope: !605, inlinedAt: !2737)
!2743 = !DILocation(line: 230, column: 13, scope: !605, inlinedAt: !2737)
!2744 = !DILocation(line: 0, scope: !2716, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 230, column: 18, scope: !605, inlinedAt: !2737)
!2746 = !DILocation(line: 0, scope: !2724, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1137, column: 3, scope: !2716, inlinedAt: !2745)
!2748 = !DILocation(line: 59, column: 10, scope: !2724, inlinedAt: !2747)
!2749 = !DILocation(line: 231, column: 7, scope: !2732, inlinedAt: !2737)
!2750 = !DILocation(line: 231, column: 40, scope: !2732, inlinedAt: !2737)
!2751 = !DILocation(line: 231, column: 45, scope: !2732, inlinedAt: !2737)
!2752 = !DILocation(line: 235, column: 1, scope: !605, inlinedAt: !2737)
!2753 = !DILocation(line: 360, column: 13, scope: !2649)
!2754 = !DILocation(line: 0, scope: !2647)
!2755 = !DILocation(line: 361, column: 45, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2647, file: !541, line: 361, column: 11)
!2757 = !DILocation(line: 361, column: 11, scope: !2647)
!2758 = !DILocation(line: 362, column: 13, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !541, line: 362, column: 13)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !541, line: 362, column: 13)
!2761 = !DILocation(line: 362, column: 13, scope: !2760)
!2762 = !DILocation(line: 361, column: 52, scope: !2756)
!2763 = distinct !{!2763, !2757, !2764, !962}
!2764 = !DILocation(line: 362, column: 13, scope: !2647)
!2765 = !DILocation(line: 260, column: 10, scope: !2621)
!2766 = !DILocation(line: 365, column: 28, scope: !2649)
!2767 = !DILocation(line: 367, column: 7, scope: !2650)
!2768 = !DILocation(line: 370, column: 7, scope: !2650)
!2769 = !DILocation(line: 376, column: 11, scope: !2650)
!2770 = !DILocation(line: 381, column: 11, scope: !2650)
!2771 = !DILocation(line: 382, column: 9, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !541, line: 382, column: 9)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !541, line: 382, column: 9)
!2774 = distinct !DILexicalBlock(scope: !2650, file: !541, line: 381, column: 11)
!2775 = !DILocation(line: 382, column: 9, scope: !2773)
!2776 = !DILocation(line: 389, column: 7, scope: !2650)
!2777 = !DILocation(line: 392, column: 7, scope: !2650)
!2778 = !DILocation(line: 0, scope: !2652)
!2779 = !DILocation(line: 395, column: 8, scope: !2652)
!2780 = !DILocation(line: 395, scope: !2652)
!2781 = !DILocation(line: 395, column: 34, scope: !2655)
!2782 = !DILocation(line: 395, column: 26, scope: !2655)
!2783 = !DILocation(line: 395, column: 48, scope: !2655)
!2784 = !DILocation(line: 395, column: 55, scope: !2655)
!2785 = !DILocation(line: 395, column: 3, scope: !2652)
!2786 = !DILocation(line: 395, column: 67, scope: !2655)
!2787 = !DILocation(line: 0, scope: !2654)
!2788 = !DILocation(line: 402, column: 11, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2654, file: !541, line: 401, column: 11)
!2790 = !DILocation(line: 404, column: 17, scope: !2789)
!2791 = !DILocation(line: 405, column: 39, scope: !2789)
!2792 = !DILocation(line: 409, column: 32, scope: !2789)
!2793 = !DILocation(line: 405, column: 19, scope: !2789)
!2794 = !DILocation(line: 405, column: 15, scope: !2789)
!2795 = !DILocation(line: 410, column: 11, scope: !2789)
!2796 = !DILocation(line: 410, column: 25, scope: !2789)
!2797 = !DILocalVariable(name: "__s1", arg: 1, scope: !2798, file: !928, line: 974, type: !1060)
!2798 = distinct !DISubprogram(name: "memeq", scope: !928, file: !928, line: 974, type: !2445, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2799)
!2799 = !{!2797, !2800, !2801}
!2800 = !DILocalVariable(name: "__s2", arg: 2, scope: !2798, file: !928, line: 974, type: !1060)
!2801 = !DILocalVariable(name: "__n", arg: 3, scope: !2798, file: !928, line: 974, type: !135)
!2802 = !DILocation(line: 0, scope: !2798, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 410, column: 14, scope: !2789)
!2804 = !DILocation(line: 976, column: 11, scope: !2798, inlinedAt: !2803)
!2805 = !DILocation(line: 976, column: 10, scope: !2798, inlinedAt: !2803)
!2806 = !DILocation(line: 401, column: 11, scope: !2654)
!2807 = !DILocation(line: 417, column: 25, scope: !2654)
!2808 = !DILocation(line: 418, column: 7, scope: !2654)
!2809 = !DILocation(line: 421, column: 15, scope: !2661)
!2810 = !DILocation(line: 423, column: 15, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !541, line: 423, column: 15)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !541, line: 422, column: 13)
!2813 = distinct !DILexicalBlock(scope: !2661, file: !541, line: 421, column: 15)
!2814 = !DILocation(line: 423, column: 15, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !541, line: 423, column: 15)
!2816 = !DILocation(line: 423, column: 15, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !541, line: 423, column: 15)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !541, line: 423, column: 15)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !541, line: 423, column: 15)
!2820 = !DILocation(line: 423, column: 15, scope: !2818)
!2821 = !DILocation(line: 423, column: 15, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !541, line: 423, column: 15)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !541, line: 423, column: 15)
!2824 = !DILocation(line: 423, column: 15, scope: !2823)
!2825 = !DILocation(line: 423, column: 15, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !541, line: 423, column: 15)
!2827 = distinct !DILexicalBlock(scope: !2819, file: !541, line: 423, column: 15)
!2828 = !DILocation(line: 423, column: 15, scope: !2827)
!2829 = !DILocation(line: 423, column: 15, scope: !2819)
!2830 = !DILocation(line: 423, column: 15, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !541, line: 423, column: 15)
!2832 = distinct !DILexicalBlock(scope: !2811, file: !541, line: 423, column: 15)
!2833 = !DILocation(line: 423, column: 15, scope: !2832)
!2834 = !DILocation(line: 431, column: 19, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2812, file: !541, line: 430, column: 19)
!2836 = !DILocation(line: 431, column: 24, scope: !2835)
!2837 = !DILocation(line: 431, column: 28, scope: !2835)
!2838 = !DILocation(line: 431, column: 38, scope: !2835)
!2839 = !DILocation(line: 431, column: 48, scope: !2835)
!2840 = !DILocation(line: 431, column: 59, scope: !2835)
!2841 = !DILocation(line: 433, column: 19, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !541, line: 433, column: 19)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !541, line: 433, column: 19)
!2844 = distinct !DILexicalBlock(scope: !2835, file: !541, line: 432, column: 17)
!2845 = !DILocation(line: 433, column: 19, scope: !2843)
!2846 = !DILocation(line: 434, column: 19, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !541, line: 434, column: 19)
!2848 = distinct !DILexicalBlock(scope: !2844, file: !541, line: 434, column: 19)
!2849 = !DILocation(line: 434, column: 19, scope: !2848)
!2850 = !DILocation(line: 435, column: 17, scope: !2844)
!2851 = !DILocation(line: 442, column: 20, scope: !2813)
!2852 = !DILocation(line: 447, column: 11, scope: !2661)
!2853 = !DILocation(line: 450, column: 19, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2661, file: !541, line: 448, column: 13)
!2855 = !DILocation(line: 456, column: 19, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2854, file: !541, line: 455, column: 19)
!2857 = !DILocation(line: 456, column: 24, scope: !2856)
!2858 = !DILocation(line: 456, column: 28, scope: !2856)
!2859 = !DILocation(line: 456, column: 38, scope: !2856)
!2860 = !DILocation(line: 456, column: 47, scope: !2856)
!2861 = !DILocation(line: 456, column: 41, scope: !2856)
!2862 = !DILocation(line: 456, column: 52, scope: !2856)
!2863 = !DILocation(line: 455, column: 19, scope: !2854)
!2864 = !DILocation(line: 457, column: 25, scope: !2856)
!2865 = !DILocation(line: 457, column: 17, scope: !2856)
!2866 = !DILocation(line: 464, column: 25, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2856, file: !541, line: 458, column: 19)
!2868 = !DILocation(line: 468, column: 21, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !541, line: 468, column: 21)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !541, line: 468, column: 21)
!2871 = !DILocation(line: 468, column: 21, scope: !2870)
!2872 = !DILocation(line: 469, column: 21, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !541, line: 469, column: 21)
!2874 = distinct !DILexicalBlock(scope: !2867, file: !541, line: 469, column: 21)
!2875 = !DILocation(line: 469, column: 21, scope: !2874)
!2876 = !DILocation(line: 470, column: 21, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !541, line: 470, column: 21)
!2878 = distinct !DILexicalBlock(scope: !2867, file: !541, line: 470, column: 21)
!2879 = !DILocation(line: 470, column: 21, scope: !2878)
!2880 = !DILocation(line: 471, column: 21, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !541, line: 471, column: 21)
!2882 = distinct !DILexicalBlock(scope: !2867, file: !541, line: 471, column: 21)
!2883 = !DILocation(line: 471, column: 21, scope: !2882)
!2884 = !DILocation(line: 472, column: 21, scope: !2867)
!2885 = !DILocation(line: 482, column: 33, scope: !2684)
!2886 = !DILocation(line: 483, column: 33, scope: !2684)
!2887 = !DILocation(line: 485, column: 33, scope: !2684)
!2888 = !DILocation(line: 486, column: 33, scope: !2684)
!2889 = !DILocation(line: 487, column: 33, scope: !2684)
!2890 = !DILocation(line: 490, column: 17, scope: !2684)
!2891 = !DILocation(line: 492, column: 21, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !541, line: 491, column: 15)
!2893 = distinct !DILexicalBlock(scope: !2684, file: !541, line: 490, column: 17)
!2894 = !DILocation(line: 499, column: 35, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2684, file: !541, line: 499, column: 17)
!2896 = !DILocation(line: 0, scope: !2684)
!2897 = !DILocation(line: 502, column: 11, scope: !2684)
!2898 = !DILocation(line: 504, column: 17, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2684, file: !541, line: 503, column: 17)
!2900 = !DILocation(line: 507, column: 11, scope: !2684)
!2901 = !DILocation(line: 508, column: 17, scope: !2684)
!2902 = !DILocation(line: 517, column: 15, scope: !2661)
!2903 = !DILocation(line: 517, column: 40, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2661, file: !541, line: 517, column: 15)
!2905 = !DILocation(line: 517, column: 47, scope: !2904)
!2906 = !DILocation(line: 517, column: 18, scope: !2904)
!2907 = !DILocation(line: 521, column: 17, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2661, file: !541, line: 521, column: 15)
!2909 = !DILocation(line: 521, column: 15, scope: !2661)
!2910 = !DILocation(line: 525, column: 11, scope: !2661)
!2911 = !DILocation(line: 537, column: 15, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2661, file: !541, line: 536, column: 15)
!2913 = !DILocation(line: 536, column: 15, scope: !2661)
!2914 = !DILocation(line: 544, column: 15, scope: !2661)
!2915 = !DILocation(line: 546, column: 19, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !541, line: 545, column: 13)
!2917 = distinct !DILexicalBlock(scope: !2661, file: !541, line: 544, column: 15)
!2918 = !DILocation(line: 549, column: 19, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2916, file: !541, line: 549, column: 19)
!2920 = !DILocation(line: 549, column: 30, scope: !2919)
!2921 = !DILocation(line: 558, column: 15, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !541, line: 558, column: 15)
!2923 = distinct !DILexicalBlock(scope: !2916, file: !541, line: 558, column: 15)
!2924 = !DILocation(line: 558, column: 15, scope: !2923)
!2925 = !DILocation(line: 559, column: 15, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !541, line: 559, column: 15)
!2927 = distinct !DILexicalBlock(scope: !2916, file: !541, line: 559, column: 15)
!2928 = !DILocation(line: 559, column: 15, scope: !2927)
!2929 = !DILocation(line: 560, column: 15, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !541, line: 560, column: 15)
!2931 = distinct !DILexicalBlock(scope: !2916, file: !541, line: 560, column: 15)
!2932 = !DILocation(line: 560, column: 15, scope: !2931)
!2933 = !DILocation(line: 562, column: 13, scope: !2916)
!2934 = !DILocation(line: 602, column: 17, scope: !2660)
!2935 = !DILocation(line: 0, scope: !2660)
!2936 = !DILocation(line: 605, column: 29, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2665, file: !541, line: 603, column: 15)
!2938 = !DILocation(line: 605, column: 41, scope: !2937)
!2939 = !DILocation(line: 606, column: 15, scope: !2937)
!2940 = !DILocation(line: 609, column: 17, scope: !2664)
!2941 = !DILocation(line: 609, column: 27, scope: !2664)
!2942 = !DILocation(line: 0, scope: !2716, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 609, column: 32, scope: !2664)
!2944 = !DILocation(line: 0, scope: !2724, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 1137, column: 3, scope: !2716, inlinedAt: !2943)
!2946 = !DILocation(line: 59, column: 10, scope: !2724, inlinedAt: !2945)
!2947 = !DILocation(line: 613, column: 29, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2664, file: !541, line: 613, column: 21)
!2949 = !DILocation(line: 613, column: 21, scope: !2664)
!2950 = !DILocation(line: 614, column: 29, scope: !2948)
!2951 = !DILocation(line: 614, column: 19, scope: !2948)
!2952 = !DILocation(line: 618, column: 21, scope: !2667)
!2953 = !DILocation(line: 620, column: 54, scope: !2667)
!2954 = !DILocation(line: 0, scope: !2667)
!2955 = !DILocation(line: 619, column: 36, scope: !2667)
!2956 = !DILocation(line: 621, column: 25, scope: !2667)
!2957 = !DILocation(line: 631, column: 38, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2676, file: !541, line: 629, column: 23)
!2959 = !DILocation(line: 631, column: 48, scope: !2958)
!2960 = !DILocation(line: 626, column: 25, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2677, file: !541, line: 624, column: 23)
!2962 = !DILocation(line: 631, column: 51, scope: !2958)
!2963 = !DILocation(line: 631, column: 25, scope: !2958)
!2964 = !DILocation(line: 632, column: 28, scope: !2958)
!2965 = !DILocation(line: 631, column: 34, scope: !2958)
!2966 = distinct !{!2966, !2963, !2964, !962}
!2967 = !DILocation(line: 646, column: 29, scope: !2674)
!2968 = !DILocation(line: 0, scope: !2672)
!2969 = !DILocation(line: 649, column: 49, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2672, file: !541, line: 648, column: 29)
!2971 = !DILocation(line: 649, column: 39, scope: !2970)
!2972 = !DILocation(line: 649, column: 31, scope: !2970)
!2973 = !DILocation(line: 648, column: 60, scope: !2970)
!2974 = !DILocation(line: 648, column: 50, scope: !2970)
!2975 = !DILocation(line: 648, column: 29, scope: !2672)
!2976 = distinct !{!2976, !2975, !2977, !962}
!2977 = !DILocation(line: 654, column: 33, scope: !2672)
!2978 = !DILocation(line: 657, column: 43, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2675, file: !541, line: 657, column: 29)
!2980 = !DILocalVariable(name: "wc", arg: 1, scope: !2981, file: !2982, line: 865, type: !2985)
!2981 = distinct !DISubprogram(name: "c32isprint", scope: !2982, file: !2982, line: 865, type: !2983, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2987)
!2982 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!78, !2985}
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2986, line: 20, baseType: !84)
!2986 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2987 = !{!2980}
!2988 = !DILocation(line: 0, scope: !2981, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 657, column: 31, scope: !2979)
!2990 = !DILocation(line: 871, column: 10, scope: !2981, inlinedAt: !2989)
!2991 = !DILocation(line: 657, column: 31, scope: !2979)
!2992 = !DILocation(line: 664, column: 23, scope: !2667)
!2993 = !DILocation(line: 665, column: 19, scope: !2668)
!2994 = !DILocation(line: 666, column: 15, scope: !2665)
!2995 = !DILocation(line: 753, column: 2, scope: !2621)
!2996 = !DILocation(line: 756, column: 51, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2621, file: !541, line: 756, column: 7)
!2998 = !DILocation(line: 0, scope: !2665)
!2999 = !DILocation(line: 670, column: 19, scope: !2681)
!3000 = !DILocation(line: 670, column: 23, scope: !2681)
!3001 = !DILocation(line: 674, column: 33, scope: !2680)
!3002 = !DILocation(line: 0, scope: !2680)
!3003 = !DILocation(line: 676, column: 17, scope: !2680)
!3004 = !DILocation(line: 398, column: 12, scope: !2654)
!3005 = !DILocation(line: 678, column: 43, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !541, line: 678, column: 25)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !541, line: 677, column: 19)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !541, line: 676, column: 17)
!3009 = distinct !DILexicalBlock(scope: !2680, file: !541, line: 676, column: 17)
!3010 = !DILocation(line: 680, column: 25, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !541, line: 680, column: 25)
!3012 = distinct !DILexicalBlock(scope: !3006, file: !541, line: 679, column: 23)
!3013 = !DILocation(line: 680, column: 25, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !541, line: 680, column: 25)
!3015 = !DILocation(line: 680, column: 25, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !541, line: 680, column: 25)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !541, line: 680, column: 25)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !541, line: 680, column: 25)
!3019 = !DILocation(line: 680, column: 25, scope: !3017)
!3020 = !DILocation(line: 680, column: 25, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !541, line: 680, column: 25)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !541, line: 680, column: 25)
!3023 = !DILocation(line: 680, column: 25, scope: !3022)
!3024 = !DILocation(line: 680, column: 25, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !541, line: 680, column: 25)
!3026 = distinct !DILexicalBlock(scope: !3018, file: !541, line: 680, column: 25)
!3027 = !DILocation(line: 680, column: 25, scope: !3026)
!3028 = !DILocation(line: 680, column: 25, scope: !3018)
!3029 = !DILocation(line: 680, column: 25, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !541, line: 680, column: 25)
!3031 = distinct !DILexicalBlock(scope: !3011, file: !541, line: 680, column: 25)
!3032 = !DILocation(line: 680, column: 25, scope: !3031)
!3033 = !DILocation(line: 681, column: 25, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !541, line: 681, column: 25)
!3035 = distinct !DILexicalBlock(scope: !3012, file: !541, line: 681, column: 25)
!3036 = !DILocation(line: 681, column: 25, scope: !3035)
!3037 = !DILocation(line: 682, column: 25, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !541, line: 682, column: 25)
!3039 = distinct !DILexicalBlock(scope: !3012, file: !541, line: 682, column: 25)
!3040 = !DILocation(line: 682, column: 25, scope: !3039)
!3041 = !DILocation(line: 683, column: 38, scope: !3012)
!3042 = !DILocation(line: 683, column: 33, scope: !3012)
!3043 = !DILocation(line: 684, column: 23, scope: !3012)
!3044 = !DILocation(line: 685, column: 30, scope: !3006)
!3045 = !DILocation(line: 687, column: 25, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !541, line: 687, column: 25)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !541, line: 687, column: 25)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !541, line: 686, column: 23)
!3049 = distinct !DILexicalBlock(scope: !3006, file: !541, line: 685, column: 30)
!3050 = !DILocation(line: 687, column: 25, scope: !3047)
!3051 = !DILocation(line: 689, column: 23, scope: !3048)
!3052 = !DILocation(line: 690, column: 35, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3007, file: !541, line: 690, column: 25)
!3054 = !DILocation(line: 690, column: 30, scope: !3053)
!3055 = !DILocation(line: 690, column: 25, scope: !3007)
!3056 = !DILocation(line: 692, column: 21, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !541, line: 692, column: 21)
!3058 = distinct !DILexicalBlock(scope: !3007, file: !541, line: 692, column: 21)
!3059 = !DILocation(line: 692, column: 21, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !541, line: 692, column: 21)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !541, line: 692, column: 21)
!3062 = distinct !DILexicalBlock(scope: !3057, file: !541, line: 692, column: 21)
!3063 = !DILocation(line: 692, column: 21, scope: !3061)
!3064 = !DILocation(line: 692, column: 21, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !541, line: 692, column: 21)
!3066 = distinct !DILexicalBlock(scope: !3062, file: !541, line: 692, column: 21)
!3067 = !DILocation(line: 692, column: 21, scope: !3066)
!3068 = !DILocation(line: 692, column: 21, scope: !3062)
!3069 = !DILocation(line: 0, scope: !3007)
!3070 = !DILocation(line: 693, column: 21, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !541, line: 693, column: 21)
!3072 = distinct !DILexicalBlock(scope: !3007, file: !541, line: 693, column: 21)
!3073 = !DILocation(line: 693, column: 21, scope: !3072)
!3074 = !DILocation(line: 694, column: 25, scope: !3007)
!3075 = !DILocation(line: 676, column: 17, scope: !3008)
!3076 = distinct !{!3076, !3077, !3078}
!3077 = !DILocation(line: 676, column: 17, scope: !3009)
!3078 = !DILocation(line: 695, column: 19, scope: !3009)
!3079 = !DILocation(line: 409, column: 30, scope: !2789)
!3080 = !DILocation(line: 702, column: 34, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !2654, file: !541, line: 702, column: 11)
!3082 = !DILocation(line: 704, column: 14, scope: !3081)
!3083 = !DILocation(line: 705, column: 14, scope: !3081)
!3084 = !DILocation(line: 705, column: 35, scope: !3081)
!3085 = !DILocation(line: 705, column: 17, scope: !3081)
!3086 = !DILocation(line: 705, column: 47, scope: !3081)
!3087 = !DILocation(line: 705, column: 65, scope: !3081)
!3088 = !DILocation(line: 706, column: 11, scope: !3081)
!3089 = !DILocation(line: 702, column: 11, scope: !2654)
!3090 = !DILocation(line: 395, column: 15, scope: !2652)
!3091 = !DILocation(line: 709, column: 5, scope: !2654)
!3092 = !DILocation(line: 710, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2654, file: !541, line: 710, column: 7)
!3094 = !DILocation(line: 710, column: 7, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3093, file: !541, line: 710, column: 7)
!3096 = !DILocation(line: 710, column: 7, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !541, line: 710, column: 7)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !541, line: 710, column: 7)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !541, line: 710, column: 7)
!3100 = !DILocation(line: 710, column: 7, scope: !3098)
!3101 = !DILocation(line: 710, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !541, line: 710, column: 7)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !541, line: 710, column: 7)
!3104 = !DILocation(line: 710, column: 7, scope: !3103)
!3105 = !DILocation(line: 710, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !541, line: 710, column: 7)
!3107 = distinct !DILexicalBlock(scope: !3099, file: !541, line: 710, column: 7)
!3108 = !DILocation(line: 710, column: 7, scope: !3107)
!3109 = !DILocation(line: 710, column: 7, scope: !3099)
!3110 = !DILocation(line: 710, column: 7, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !541, line: 710, column: 7)
!3112 = distinct !DILexicalBlock(scope: !3093, file: !541, line: 710, column: 7)
!3113 = !DILocation(line: 710, column: 7, scope: !3112)
!3114 = !DILocation(line: 712, column: 5, scope: !2654)
!3115 = !DILocation(line: 713, column: 7, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !541, line: 713, column: 7)
!3117 = distinct !DILexicalBlock(scope: !2654, file: !541, line: 713, column: 7)
!3118 = !DILocation(line: 417, column: 21, scope: !2654)
!3119 = !DILocation(line: 713, column: 7, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !541, line: 713, column: 7)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !541, line: 713, column: 7)
!3122 = distinct !DILexicalBlock(scope: !3116, file: !541, line: 713, column: 7)
!3123 = !DILocation(line: 713, column: 7, scope: !3121)
!3124 = !DILocation(line: 713, column: 7, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !541, line: 713, column: 7)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !541, line: 713, column: 7)
!3127 = !DILocation(line: 713, column: 7, scope: !3126)
!3128 = !DILocation(line: 713, column: 7, scope: !3122)
!3129 = !DILocation(line: 714, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !541, line: 714, column: 7)
!3131 = distinct !DILexicalBlock(scope: !2654, file: !541, line: 714, column: 7)
!3132 = !DILocation(line: 714, column: 7, scope: !3131)
!3133 = !DILocation(line: 716, column: 11, scope: !2654)
!3134 = !DILocation(line: 718, column: 5, scope: !2655)
!3135 = !DILocation(line: 395, column: 82, scope: !2655)
!3136 = !DILocation(line: 395, column: 3, scope: !2655)
!3137 = distinct !{!3137, !2785, !3138, !962}
!3138 = !DILocation(line: 718, column: 5, scope: !2652)
!3139 = !DILocation(line: 720, column: 11, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2621, file: !541, line: 720, column: 7)
!3141 = !DILocation(line: 720, column: 16, scope: !3140)
!3142 = !DILocation(line: 728, column: 51, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !2621, file: !541, line: 728, column: 7)
!3144 = !DILocation(line: 731, column: 11, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3143, file: !541, line: 730, column: 5)
!3146 = !DILocation(line: 732, column: 16, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3145, file: !541, line: 731, column: 11)
!3148 = !DILocation(line: 732, column: 9, scope: !3147)
!3149 = !DILocation(line: 736, column: 18, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3147, file: !541, line: 736, column: 16)
!3151 = !DILocation(line: 736, column: 29, scope: !3150)
!3152 = !DILocation(line: 745, column: 7, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !2621, file: !541, line: 745, column: 7)
!3154 = !DILocation(line: 745, column: 20, scope: !3153)
!3155 = !DILocation(line: 746, column: 12, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !541, line: 746, column: 5)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !541, line: 746, column: 5)
!3158 = !DILocation(line: 746, column: 5, scope: !3157)
!3159 = !DILocation(line: 747, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !541, line: 747, column: 7)
!3161 = distinct !DILexicalBlock(scope: !3156, file: !541, line: 747, column: 7)
!3162 = !DILocation(line: 747, column: 7, scope: !3161)
!3163 = !DILocation(line: 746, column: 39, scope: !3156)
!3164 = distinct !{!3164, !3158, !3165, !962}
!3165 = !DILocation(line: 747, column: 7, scope: !3157)
!3166 = !DILocation(line: 749, column: 11, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !2621, file: !541, line: 749, column: 7)
!3168 = !DILocation(line: 749, column: 7, scope: !2621)
!3169 = !DILocation(line: 750, column: 5, scope: !3167)
!3170 = !DILocation(line: 750, column: 17, scope: !3167)
!3171 = !DILocation(line: 756, column: 21, scope: !2997)
!3172 = !DILocation(line: 760, column: 42, scope: !2621)
!3173 = !DILocation(line: 758, column: 10, scope: !2621)
!3174 = !DILocation(line: 758, column: 3, scope: !2621)
!3175 = !DILocation(line: 762, column: 1, scope: !2621)
!3176 = !DISubprogram(name: "iswprint", scope: !3177, file: !3177, line: 120, type: !2983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!3177 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3178 = distinct !DISubprogram(name: "quotearg_alloc", scope: !541, file: !541, line: 788, type: !3179, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3181)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!132, !138, !135, !2514}
!3181 = !{!3182, !3183, !3184}
!3182 = !DILocalVariable(name: "arg", arg: 1, scope: !3178, file: !541, line: 788, type: !138)
!3183 = !DILocalVariable(name: "argsize", arg: 2, scope: !3178, file: !541, line: 788, type: !135)
!3184 = !DILocalVariable(name: "o", arg: 3, scope: !3178, file: !541, line: 789, type: !2514)
!3185 = !DILocation(line: 0, scope: !3178)
!3186 = !DILocalVariable(name: "arg", arg: 1, scope: !3187, file: !541, line: 801, type: !138)
!3187 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !541, file: !541, line: 801, type: !3188, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!132, !138, !135, !179, !2514}
!3190 = !{!3186, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198}
!3191 = !DILocalVariable(name: "argsize", arg: 2, scope: !3187, file: !541, line: 801, type: !135)
!3192 = !DILocalVariable(name: "size", arg: 3, scope: !3187, file: !541, line: 801, type: !179)
!3193 = !DILocalVariable(name: "o", arg: 4, scope: !3187, file: !541, line: 802, type: !2514)
!3194 = !DILocalVariable(name: "p", scope: !3187, file: !541, line: 804, type: !2514)
!3195 = !DILocalVariable(name: "saved_errno", scope: !3187, file: !541, line: 805, type: !78)
!3196 = !DILocalVariable(name: "flags", scope: !3187, file: !541, line: 807, type: !78)
!3197 = !DILocalVariable(name: "bufsize", scope: !3187, file: !541, line: 808, type: !135)
!3198 = !DILocalVariable(name: "buf", scope: !3187, file: !541, line: 812, type: !132)
!3199 = !DILocation(line: 0, scope: !3187, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 791, column: 10, scope: !3178)
!3201 = !DILocation(line: 804, column: 37, scope: !3187, inlinedAt: !3200)
!3202 = !DILocation(line: 805, column: 21, scope: !3187, inlinedAt: !3200)
!3203 = !DILocation(line: 807, column: 18, scope: !3187, inlinedAt: !3200)
!3204 = !DILocation(line: 807, column: 24, scope: !3187, inlinedAt: !3200)
!3205 = !DILocation(line: 808, column: 72, scope: !3187, inlinedAt: !3200)
!3206 = !DILocation(line: 809, column: 56, scope: !3187, inlinedAt: !3200)
!3207 = !DILocation(line: 810, column: 49, scope: !3187, inlinedAt: !3200)
!3208 = !DILocation(line: 811, column: 49, scope: !3187, inlinedAt: !3200)
!3209 = !DILocation(line: 808, column: 20, scope: !3187, inlinedAt: !3200)
!3210 = !DILocation(line: 811, column: 62, scope: !3187, inlinedAt: !3200)
!3211 = !DILocation(line: 812, column: 15, scope: !3187, inlinedAt: !3200)
!3212 = !DILocation(line: 813, column: 60, scope: !3187, inlinedAt: !3200)
!3213 = !DILocation(line: 815, column: 32, scope: !3187, inlinedAt: !3200)
!3214 = !DILocation(line: 815, column: 47, scope: !3187, inlinedAt: !3200)
!3215 = !DILocation(line: 813, column: 3, scope: !3187, inlinedAt: !3200)
!3216 = !DILocation(line: 816, column: 9, scope: !3187, inlinedAt: !3200)
!3217 = !DILocation(line: 791, column: 3, scope: !3178)
!3218 = !DILocation(line: 0, scope: !3187)
!3219 = !DILocation(line: 804, column: 37, scope: !3187)
!3220 = !DILocation(line: 805, column: 21, scope: !3187)
!3221 = !DILocation(line: 807, column: 18, scope: !3187)
!3222 = !DILocation(line: 807, column: 27, scope: !3187)
!3223 = !DILocation(line: 807, column: 24, scope: !3187)
!3224 = !DILocation(line: 808, column: 72, scope: !3187)
!3225 = !DILocation(line: 809, column: 56, scope: !3187)
!3226 = !DILocation(line: 810, column: 49, scope: !3187)
!3227 = !DILocation(line: 811, column: 49, scope: !3187)
!3228 = !DILocation(line: 808, column: 20, scope: !3187)
!3229 = !DILocation(line: 811, column: 62, scope: !3187)
!3230 = !DILocation(line: 812, column: 15, scope: !3187)
!3231 = !DILocation(line: 813, column: 60, scope: !3187)
!3232 = !DILocation(line: 815, column: 32, scope: !3187)
!3233 = !DILocation(line: 815, column: 47, scope: !3187)
!3234 = !DILocation(line: 813, column: 3, scope: !3187)
!3235 = !DILocation(line: 816, column: 9, scope: !3187)
!3236 = !DILocation(line: 817, column: 7, scope: !3187)
!3237 = !DILocation(line: 818, column: 11, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3187, file: !541, line: 817, column: 7)
!3239 = !DILocation(line: 818, column: 5, scope: !3238)
!3240 = !DILocation(line: 819, column: 3, scope: !3187)
!3241 = distinct !DISubprogram(name: "quotearg_free", scope: !541, file: !541, line: 837, type: !496, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3242)
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "sv", scope: !3241, file: !541, line: 839, type: !628)
!3244 = !DILocalVariable(name: "i", scope: !3245, file: !541, line: 840, type: !78)
!3245 = distinct !DILexicalBlock(scope: !3241, file: !541, line: 840, column: 3)
!3246 = !DILocation(line: 839, column: 24, scope: !3241)
!3247 = !DILocation(line: 0, scope: !3241)
!3248 = !DILocation(line: 0, scope: !3245)
!3249 = !DILocation(line: 840, column: 21, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3245, file: !541, line: 840, column: 3)
!3251 = !DILocation(line: 840, column: 3, scope: !3245)
!3252 = !DILocation(line: 842, column: 13, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3241, file: !541, line: 842, column: 7)
!3254 = !{!3255, !847, i64 8}
!3255 = !{!"slotvec", !1138, i64 0, !847, i64 8}
!3256 = !DILocation(line: 842, column: 17, scope: !3253)
!3257 = !DILocation(line: 842, column: 7, scope: !3241)
!3258 = !DILocation(line: 841, column: 17, scope: !3250)
!3259 = !DILocation(line: 841, column: 5, scope: !3250)
!3260 = !DILocation(line: 840, column: 32, scope: !3250)
!3261 = distinct !{!3261, !3251, !3262, !962}
!3262 = !DILocation(line: 841, column: 20, scope: !3245)
!3263 = !DILocation(line: 844, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3253, file: !541, line: 843, column: 5)
!3265 = !DILocation(line: 845, column: 21, scope: !3264)
!3266 = !{!3255, !1138, i64 0}
!3267 = !DILocation(line: 846, column: 20, scope: !3264)
!3268 = !DILocation(line: 847, column: 5, scope: !3264)
!3269 = !DILocation(line: 848, column: 10, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3241, file: !541, line: 848, column: 7)
!3271 = !DILocation(line: 848, column: 7, scope: !3241)
!3272 = !DILocation(line: 850, column: 7, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3270, file: !541, line: 849, column: 5)
!3274 = !DILocation(line: 851, column: 15, scope: !3273)
!3275 = !DILocation(line: 852, column: 5, scope: !3273)
!3276 = !DILocation(line: 853, column: 10, scope: !3241)
!3277 = !DILocation(line: 854, column: 1, scope: !3241)
!3278 = distinct !DISubprogram(name: "quotearg_n", scope: !541, file: !541, line: 919, type: !1029, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3279)
!3279 = !{!3280, !3281}
!3280 = !DILocalVariable(name: "n", arg: 1, scope: !3278, file: !541, line: 919, type: !78)
!3281 = !DILocalVariable(name: "arg", arg: 2, scope: !3278, file: !541, line: 919, type: !138)
!3282 = !DILocation(line: 0, scope: !3278)
!3283 = !DILocation(line: 921, column: 10, scope: !3278)
!3284 = !DILocation(line: 921, column: 3, scope: !3278)
!3285 = distinct !DISubprogram(name: "quotearg_n_options", scope: !541, file: !541, line: 866, type: !3286, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!132, !78, !138, !135, !2514}
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3299, !3300, !3302, !3303, !3304}
!3289 = !DILocalVariable(name: "n", arg: 1, scope: !3285, file: !541, line: 866, type: !78)
!3290 = !DILocalVariable(name: "arg", arg: 2, scope: !3285, file: !541, line: 866, type: !138)
!3291 = !DILocalVariable(name: "argsize", arg: 3, scope: !3285, file: !541, line: 866, type: !135)
!3292 = !DILocalVariable(name: "options", arg: 4, scope: !3285, file: !541, line: 867, type: !2514)
!3293 = !DILocalVariable(name: "saved_errno", scope: !3285, file: !541, line: 869, type: !78)
!3294 = !DILocalVariable(name: "sv", scope: !3285, file: !541, line: 871, type: !628)
!3295 = !DILocalVariable(name: "nslots_max", scope: !3285, file: !541, line: 873, type: !78)
!3296 = !DILocalVariable(name: "preallocated", scope: !3297, file: !541, line: 879, type: !172)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !541, line: 878, column: 5)
!3298 = distinct !DILexicalBlock(scope: !3285, file: !541, line: 877, column: 7)
!3299 = !DILocalVariable(name: "new_nslots", scope: !3297, file: !541, line: 880, type: !392)
!3300 = !DILocalVariable(name: "size", scope: !3301, file: !541, line: 891, type: !135)
!3301 = distinct !DILexicalBlock(scope: !3285, file: !541, line: 890, column: 3)
!3302 = !DILocalVariable(name: "val", scope: !3301, file: !541, line: 892, type: !132)
!3303 = !DILocalVariable(name: "flags", scope: !3301, file: !541, line: 894, type: !78)
!3304 = !DILocalVariable(name: "qsize", scope: !3301, file: !541, line: 895, type: !135)
!3305 = !DILocation(line: 0, scope: !3285)
!3306 = !DILocation(line: 869, column: 21, scope: !3285)
!3307 = !DILocation(line: 871, column: 24, scope: !3285)
!3308 = !DILocation(line: 874, column: 17, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3285, file: !541, line: 874, column: 7)
!3310 = !DILocation(line: 875, column: 5, scope: !3309)
!3311 = !DILocation(line: 877, column: 7, scope: !3298)
!3312 = !DILocation(line: 877, column: 14, scope: !3298)
!3313 = !DILocation(line: 877, column: 7, scope: !3285)
!3314 = !DILocation(line: 879, column: 31, scope: !3297)
!3315 = !DILocation(line: 0, scope: !3297)
!3316 = !DILocation(line: 880, column: 7, scope: !3297)
!3317 = !DILocation(line: 880, column: 26, scope: !3297)
!3318 = !DILocation(line: 880, column: 13, scope: !3297)
!3319 = !DILocation(line: 882, column: 31, scope: !3297)
!3320 = !DILocation(line: 883, column: 33, scope: !3297)
!3321 = !DILocation(line: 883, column: 42, scope: !3297)
!3322 = !DILocation(line: 883, column: 31, scope: !3297)
!3323 = !DILocation(line: 882, column: 22, scope: !3297)
!3324 = !DILocation(line: 882, column: 15, scope: !3297)
!3325 = !DILocation(line: 884, column: 11, scope: !3297)
!3326 = !DILocation(line: 885, column: 15, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3297, file: !541, line: 884, column: 11)
!3328 = !{i64 0, i64 8, !1137, i64 8, i64 8, !846}
!3329 = !DILocation(line: 885, column: 9, scope: !3327)
!3330 = !DILocation(line: 886, column: 20, scope: !3297)
!3331 = !DILocation(line: 886, column: 18, scope: !3297)
!3332 = !DILocation(line: 886, column: 32, scope: !3297)
!3333 = !DILocation(line: 886, column: 43, scope: !3297)
!3334 = !DILocation(line: 886, column: 53, scope: !3297)
!3335 = !DILocation(line: 0, scope: !2724, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 886, column: 7, scope: !3297)
!3337 = !DILocation(line: 59, column: 10, scope: !2724, inlinedAt: !3336)
!3338 = !DILocation(line: 887, column: 16, scope: !3297)
!3339 = !DILocation(line: 887, column: 14, scope: !3297)
!3340 = !DILocation(line: 888, column: 5, scope: !3298)
!3341 = !DILocation(line: 888, column: 5, scope: !3297)
!3342 = !DILocation(line: 891, column: 19, scope: !3301)
!3343 = !DILocation(line: 891, column: 25, scope: !3301)
!3344 = !DILocation(line: 0, scope: !3301)
!3345 = !DILocation(line: 892, column: 23, scope: !3301)
!3346 = !DILocation(line: 894, column: 26, scope: !3301)
!3347 = !DILocation(line: 894, column: 32, scope: !3301)
!3348 = !DILocation(line: 896, column: 55, scope: !3301)
!3349 = !DILocation(line: 897, column: 55, scope: !3301)
!3350 = !DILocation(line: 898, column: 55, scope: !3301)
!3351 = !DILocation(line: 899, column: 55, scope: !3301)
!3352 = !DILocation(line: 895, column: 20, scope: !3301)
!3353 = !DILocation(line: 901, column: 14, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3301, file: !541, line: 901, column: 9)
!3355 = !DILocation(line: 901, column: 9, scope: !3301)
!3356 = !DILocation(line: 903, column: 35, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3354, file: !541, line: 902, column: 7)
!3358 = !DILocation(line: 903, column: 20, scope: !3357)
!3359 = !DILocation(line: 904, column: 17, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3357, file: !541, line: 904, column: 13)
!3361 = !DILocation(line: 904, column: 13, scope: !3357)
!3362 = !DILocation(line: 905, column: 11, scope: !3360)
!3363 = !DILocation(line: 906, column: 27, scope: !3357)
!3364 = !DILocation(line: 906, column: 19, scope: !3357)
!3365 = !DILocation(line: 907, column: 69, scope: !3357)
!3366 = !DILocation(line: 909, column: 44, scope: !3357)
!3367 = !DILocation(line: 910, column: 44, scope: !3357)
!3368 = !DILocation(line: 907, column: 9, scope: !3357)
!3369 = !DILocation(line: 911, column: 7, scope: !3357)
!3370 = !DILocation(line: 913, column: 11, scope: !3301)
!3371 = !DILocation(line: 914, column: 5, scope: !3301)
!3372 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !541, file: !541, line: 925, type: !3373, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!132, !78, !138, !135}
!3375 = !{!3376, !3377, !3378}
!3376 = !DILocalVariable(name: "n", arg: 1, scope: !3372, file: !541, line: 925, type: !78)
!3377 = !DILocalVariable(name: "arg", arg: 2, scope: !3372, file: !541, line: 925, type: !138)
!3378 = !DILocalVariable(name: "argsize", arg: 3, scope: !3372, file: !541, line: 925, type: !135)
!3379 = !DILocation(line: 0, scope: !3372)
!3380 = !DILocation(line: 927, column: 10, scope: !3372)
!3381 = !DILocation(line: 927, column: 3, scope: !3372)
!3382 = distinct !DISubprogram(name: "quotearg", scope: !541, file: !541, line: 931, type: !1038, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3383)
!3383 = !{!3384}
!3384 = !DILocalVariable(name: "arg", arg: 1, scope: !3382, file: !541, line: 931, type: !138)
!3385 = !DILocation(line: 0, scope: !3382)
!3386 = !DILocation(line: 0, scope: !3278, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 933, column: 10, scope: !3382)
!3388 = !DILocation(line: 921, column: 10, scope: !3278, inlinedAt: !3387)
!3389 = !DILocation(line: 933, column: 3, scope: !3382)
!3390 = distinct !DISubprogram(name: "quotearg_mem", scope: !541, file: !541, line: 937, type: !3391, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3393)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!132, !138, !135}
!3393 = !{!3394, !3395}
!3394 = !DILocalVariable(name: "arg", arg: 1, scope: !3390, file: !541, line: 937, type: !138)
!3395 = !DILocalVariable(name: "argsize", arg: 2, scope: !3390, file: !541, line: 937, type: !135)
!3396 = !DILocation(line: 0, scope: !3390)
!3397 = !DILocation(line: 0, scope: !3372, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 939, column: 10, scope: !3390)
!3399 = !DILocation(line: 927, column: 10, scope: !3372, inlinedAt: !3398)
!3400 = !DILocation(line: 939, column: 3, scope: !3390)
!3401 = distinct !DISubprogram(name: "quotearg_n_style", scope: !541, file: !541, line: 943, type: !3402, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!132, !78, !82, !138}
!3404 = !{!3405, !3406, !3407, !3408}
!3405 = !DILocalVariable(name: "n", arg: 1, scope: !3401, file: !541, line: 943, type: !78)
!3406 = !DILocalVariable(name: "s", arg: 2, scope: !3401, file: !541, line: 943, type: !82)
!3407 = !DILocalVariable(name: "arg", arg: 3, scope: !3401, file: !541, line: 943, type: !138)
!3408 = !DILocalVariable(name: "o", scope: !3401, file: !541, line: 945, type: !2515)
!3409 = !DILocation(line: 0, scope: !3401)
!3410 = !DILocation(line: 945, column: 3, scope: !3401)
!3411 = !DILocation(line: 945, column: 32, scope: !3401)
!3412 = !{!3413}
!3413 = distinct !{!3413, !3414, !"quoting_options_from_style: argument 0"}
!3414 = distinct !{!3414, !"quoting_options_from_style"}
!3415 = !DILocation(line: 945, column: 36, scope: !3401)
!3416 = !DILocalVariable(name: "style", arg: 1, scope: !3417, file: !541, line: 183, type: !82)
!3417 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !541, file: !541, line: 183, type: !3418, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!580, !82}
!3420 = !{!3416, !3421}
!3421 = !DILocalVariable(name: "o", scope: !3417, file: !541, line: 185, type: !580)
!3422 = !DILocation(line: 0, scope: !3417, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 945, column: 36, scope: !3401)
!3424 = !DILocation(line: 185, column: 26, scope: !3417, inlinedAt: !3423)
!3425 = !DILocation(line: 186, column: 13, scope: !3426, inlinedAt: !3423)
!3426 = distinct !DILexicalBlock(scope: !3417, file: !541, line: 186, column: 7)
!3427 = !DILocation(line: 186, column: 7, scope: !3417, inlinedAt: !3423)
!3428 = !DILocation(line: 187, column: 5, scope: !3426, inlinedAt: !3423)
!3429 = !DILocation(line: 188, column: 11, scope: !3417, inlinedAt: !3423)
!3430 = !DILocation(line: 946, column: 10, scope: !3401)
!3431 = !DILocation(line: 947, column: 1, scope: !3401)
!3432 = !DILocation(line: 946, column: 3, scope: !3401)
!3433 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !541, file: !541, line: 950, type: !3434, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!132, !78, !82, !138, !135}
!3436 = !{!3437, !3438, !3439, !3440, !3441}
!3437 = !DILocalVariable(name: "n", arg: 1, scope: !3433, file: !541, line: 950, type: !78)
!3438 = !DILocalVariable(name: "s", arg: 2, scope: !3433, file: !541, line: 950, type: !82)
!3439 = !DILocalVariable(name: "arg", arg: 3, scope: !3433, file: !541, line: 951, type: !138)
!3440 = !DILocalVariable(name: "argsize", arg: 4, scope: !3433, file: !541, line: 951, type: !135)
!3441 = !DILocalVariable(name: "o", scope: !3433, file: !541, line: 953, type: !2515)
!3442 = !DILocation(line: 0, scope: !3433)
!3443 = !DILocation(line: 953, column: 3, scope: !3433)
!3444 = !DILocation(line: 953, column: 32, scope: !3433)
!3445 = !{!3446}
!3446 = distinct !{!3446, !3447, !"quoting_options_from_style: argument 0"}
!3447 = distinct !{!3447, !"quoting_options_from_style"}
!3448 = !DILocation(line: 953, column: 36, scope: !3433)
!3449 = !DILocation(line: 0, scope: !3417, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 953, column: 36, scope: !3433)
!3451 = !DILocation(line: 185, column: 26, scope: !3417, inlinedAt: !3450)
!3452 = !DILocation(line: 186, column: 13, scope: !3426, inlinedAt: !3450)
!3453 = !DILocation(line: 186, column: 7, scope: !3417, inlinedAt: !3450)
!3454 = !DILocation(line: 187, column: 5, scope: !3426, inlinedAt: !3450)
!3455 = !DILocation(line: 188, column: 11, scope: !3417, inlinedAt: !3450)
!3456 = !DILocation(line: 954, column: 10, scope: !3433)
!3457 = !DILocation(line: 955, column: 1, scope: !3433)
!3458 = !DILocation(line: 954, column: 3, scope: !3433)
!3459 = distinct !DISubprogram(name: "quotearg_style", scope: !541, file: !541, line: 958, type: !3460, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!132, !82, !138}
!3462 = !{!3463, !3464}
!3463 = !DILocalVariable(name: "s", arg: 1, scope: !3459, file: !541, line: 958, type: !82)
!3464 = !DILocalVariable(name: "arg", arg: 2, scope: !3459, file: !541, line: 958, type: !138)
!3465 = !DILocation(line: 0, scope: !3459)
!3466 = !DILocation(line: 0, scope: !3401, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 960, column: 10, scope: !3459)
!3468 = !DILocation(line: 945, column: 3, scope: !3401, inlinedAt: !3467)
!3469 = !DILocation(line: 945, column: 32, scope: !3401, inlinedAt: !3467)
!3470 = !{!3471}
!3471 = distinct !{!3471, !3472, !"quoting_options_from_style: argument 0"}
!3472 = distinct !{!3472, !"quoting_options_from_style"}
!3473 = !DILocation(line: 945, column: 36, scope: !3401, inlinedAt: !3467)
!3474 = !DILocation(line: 0, scope: !3417, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 945, column: 36, scope: !3401, inlinedAt: !3467)
!3476 = !DILocation(line: 185, column: 26, scope: !3417, inlinedAt: !3475)
!3477 = !DILocation(line: 186, column: 13, scope: !3426, inlinedAt: !3475)
!3478 = !DILocation(line: 186, column: 7, scope: !3417, inlinedAt: !3475)
!3479 = !DILocation(line: 187, column: 5, scope: !3426, inlinedAt: !3475)
!3480 = !DILocation(line: 188, column: 11, scope: !3417, inlinedAt: !3475)
!3481 = !DILocation(line: 946, column: 10, scope: !3401, inlinedAt: !3467)
!3482 = !DILocation(line: 947, column: 1, scope: !3401, inlinedAt: !3467)
!3483 = !DILocation(line: 960, column: 3, scope: !3459)
!3484 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !541, file: !541, line: 964, type: !3485, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!132, !82, !138, !135}
!3487 = !{!3488, !3489, !3490}
!3488 = !DILocalVariable(name: "s", arg: 1, scope: !3484, file: !541, line: 964, type: !82)
!3489 = !DILocalVariable(name: "arg", arg: 2, scope: !3484, file: !541, line: 964, type: !138)
!3490 = !DILocalVariable(name: "argsize", arg: 3, scope: !3484, file: !541, line: 964, type: !135)
!3491 = !DILocation(line: 0, scope: !3484)
!3492 = !DILocation(line: 0, scope: !3433, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 966, column: 10, scope: !3484)
!3494 = !DILocation(line: 953, column: 3, scope: !3433, inlinedAt: !3493)
!3495 = !DILocation(line: 953, column: 32, scope: !3433, inlinedAt: !3493)
!3496 = !{!3497}
!3497 = distinct !{!3497, !3498, !"quoting_options_from_style: argument 0"}
!3498 = distinct !{!3498, !"quoting_options_from_style"}
!3499 = !DILocation(line: 953, column: 36, scope: !3433, inlinedAt: !3493)
!3500 = !DILocation(line: 0, scope: !3417, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 953, column: 36, scope: !3433, inlinedAt: !3493)
!3502 = !DILocation(line: 185, column: 26, scope: !3417, inlinedAt: !3501)
!3503 = !DILocation(line: 186, column: 13, scope: !3426, inlinedAt: !3501)
!3504 = !DILocation(line: 186, column: 7, scope: !3417, inlinedAt: !3501)
!3505 = !DILocation(line: 187, column: 5, scope: !3426, inlinedAt: !3501)
!3506 = !DILocation(line: 188, column: 11, scope: !3417, inlinedAt: !3501)
!3507 = !DILocation(line: 954, column: 10, scope: !3433, inlinedAt: !3493)
!3508 = !DILocation(line: 955, column: 1, scope: !3433, inlinedAt: !3493)
!3509 = !DILocation(line: 966, column: 3, scope: !3484)
!3510 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !541, file: !541, line: 970, type: !3511, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!132, !138, !135, !4}
!3513 = !{!3514, !3515, !3516, !3517}
!3514 = !DILocalVariable(name: "arg", arg: 1, scope: !3510, file: !541, line: 970, type: !138)
!3515 = !DILocalVariable(name: "argsize", arg: 2, scope: !3510, file: !541, line: 970, type: !135)
!3516 = !DILocalVariable(name: "ch", arg: 3, scope: !3510, file: !541, line: 970, type: !4)
!3517 = !DILocalVariable(name: "options", scope: !3510, file: !541, line: 972, type: !580)
!3518 = !DILocation(line: 0, scope: !3510)
!3519 = !DILocation(line: 972, column: 3, scope: !3510)
!3520 = !DILocation(line: 972, column: 26, scope: !3510)
!3521 = !DILocation(line: 973, column: 13, scope: !3510)
!3522 = !{i64 0, i64 4, !924, i64 4, i64 4, !915, i64 8, i64 32, !924, i64 40, i64 8, !846, i64 48, i64 8, !846}
!3523 = !DILocation(line: 0, scope: !2534, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 974, column: 3, scope: !3510)
!3525 = !DILocation(line: 147, column: 41, scope: !2534, inlinedAt: !3524)
!3526 = !DILocation(line: 147, column: 62, scope: !2534, inlinedAt: !3524)
!3527 = !DILocation(line: 147, column: 57, scope: !2534, inlinedAt: !3524)
!3528 = !DILocation(line: 148, column: 15, scope: !2534, inlinedAt: !3524)
!3529 = !DILocation(line: 149, column: 21, scope: !2534, inlinedAt: !3524)
!3530 = !DILocation(line: 149, column: 24, scope: !2534, inlinedAt: !3524)
!3531 = !DILocation(line: 150, column: 19, scope: !2534, inlinedAt: !3524)
!3532 = !DILocation(line: 150, column: 24, scope: !2534, inlinedAt: !3524)
!3533 = !DILocation(line: 150, column: 6, scope: !2534, inlinedAt: !3524)
!3534 = !DILocation(line: 975, column: 10, scope: !3510)
!3535 = !DILocation(line: 976, column: 1, scope: !3510)
!3536 = !DILocation(line: 975, column: 3, scope: !3510)
!3537 = distinct !DISubprogram(name: "quotearg_char", scope: !541, file: !541, line: 979, type: !3538, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!132, !138, !4}
!3540 = !{!3541, !3542}
!3541 = !DILocalVariable(name: "arg", arg: 1, scope: !3537, file: !541, line: 979, type: !138)
!3542 = !DILocalVariable(name: "ch", arg: 2, scope: !3537, file: !541, line: 979, type: !4)
!3543 = !DILocation(line: 0, scope: !3537)
!3544 = !DILocation(line: 0, scope: !3510, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 981, column: 10, scope: !3537)
!3546 = !DILocation(line: 972, column: 3, scope: !3510, inlinedAt: !3545)
!3547 = !DILocation(line: 972, column: 26, scope: !3510, inlinedAt: !3545)
!3548 = !DILocation(line: 973, column: 13, scope: !3510, inlinedAt: !3545)
!3549 = !DILocation(line: 0, scope: !2534, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 974, column: 3, scope: !3510, inlinedAt: !3545)
!3551 = !DILocation(line: 147, column: 41, scope: !2534, inlinedAt: !3550)
!3552 = !DILocation(line: 147, column: 62, scope: !2534, inlinedAt: !3550)
!3553 = !DILocation(line: 147, column: 57, scope: !2534, inlinedAt: !3550)
!3554 = !DILocation(line: 148, column: 15, scope: !2534, inlinedAt: !3550)
!3555 = !DILocation(line: 149, column: 21, scope: !2534, inlinedAt: !3550)
!3556 = !DILocation(line: 149, column: 24, scope: !2534, inlinedAt: !3550)
!3557 = !DILocation(line: 150, column: 19, scope: !2534, inlinedAt: !3550)
!3558 = !DILocation(line: 150, column: 24, scope: !2534, inlinedAt: !3550)
!3559 = !DILocation(line: 150, column: 6, scope: !2534, inlinedAt: !3550)
!3560 = !DILocation(line: 975, column: 10, scope: !3510, inlinedAt: !3545)
!3561 = !DILocation(line: 976, column: 1, scope: !3510, inlinedAt: !3545)
!3562 = !DILocation(line: 981, column: 3, scope: !3537)
!3563 = distinct !DISubprogram(name: "quotearg_colon", scope: !541, file: !541, line: 985, type: !1038, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3564)
!3564 = !{!3565}
!3565 = !DILocalVariable(name: "arg", arg: 1, scope: !3563, file: !541, line: 985, type: !138)
!3566 = !DILocation(line: 0, scope: !3563)
!3567 = !DILocation(line: 0, scope: !3537, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 987, column: 10, scope: !3563)
!3569 = !DILocation(line: 0, scope: !3510, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 981, column: 10, scope: !3537, inlinedAt: !3568)
!3571 = !DILocation(line: 972, column: 3, scope: !3510, inlinedAt: !3570)
!3572 = !DILocation(line: 972, column: 26, scope: !3510, inlinedAt: !3570)
!3573 = !DILocation(line: 973, column: 13, scope: !3510, inlinedAt: !3570)
!3574 = !DILocation(line: 0, scope: !2534, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 974, column: 3, scope: !3510, inlinedAt: !3570)
!3576 = !DILocation(line: 147, column: 57, scope: !2534, inlinedAt: !3575)
!3577 = !DILocation(line: 149, column: 21, scope: !2534, inlinedAt: !3575)
!3578 = !DILocation(line: 150, column: 6, scope: !2534, inlinedAt: !3575)
!3579 = !DILocation(line: 975, column: 10, scope: !3510, inlinedAt: !3570)
!3580 = !DILocation(line: 976, column: 1, scope: !3510, inlinedAt: !3570)
!3581 = !DILocation(line: 987, column: 3, scope: !3563)
!3582 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !541, file: !541, line: 991, type: !3391, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3583)
!3583 = !{!3584, !3585}
!3584 = !DILocalVariable(name: "arg", arg: 1, scope: !3582, file: !541, line: 991, type: !138)
!3585 = !DILocalVariable(name: "argsize", arg: 2, scope: !3582, file: !541, line: 991, type: !135)
!3586 = !DILocation(line: 0, scope: !3582)
!3587 = !DILocation(line: 0, scope: !3510, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 993, column: 10, scope: !3582)
!3589 = !DILocation(line: 972, column: 3, scope: !3510, inlinedAt: !3588)
!3590 = !DILocation(line: 972, column: 26, scope: !3510, inlinedAt: !3588)
!3591 = !DILocation(line: 973, column: 13, scope: !3510, inlinedAt: !3588)
!3592 = !DILocation(line: 0, scope: !2534, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 974, column: 3, scope: !3510, inlinedAt: !3588)
!3594 = !DILocation(line: 147, column: 57, scope: !2534, inlinedAt: !3593)
!3595 = !DILocation(line: 149, column: 21, scope: !2534, inlinedAt: !3593)
!3596 = !DILocation(line: 150, column: 6, scope: !2534, inlinedAt: !3593)
!3597 = !DILocation(line: 975, column: 10, scope: !3510, inlinedAt: !3588)
!3598 = !DILocation(line: 976, column: 1, scope: !3510, inlinedAt: !3588)
!3599 = !DILocation(line: 993, column: 3, scope: !3582)
!3600 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !541, file: !541, line: 997, type: !3402, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3601)
!3601 = !{!3602, !3603, !3604, !3605}
!3602 = !DILocalVariable(name: "n", arg: 1, scope: !3600, file: !541, line: 997, type: !78)
!3603 = !DILocalVariable(name: "s", arg: 2, scope: !3600, file: !541, line: 997, type: !82)
!3604 = !DILocalVariable(name: "arg", arg: 3, scope: !3600, file: !541, line: 997, type: !138)
!3605 = !DILocalVariable(name: "options", scope: !3600, file: !541, line: 999, type: !580)
!3606 = !DILocation(line: 185, column: 26, scope: !3417, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 1000, column: 13, scope: !3600)
!3608 = !DILocation(line: 0, scope: !3600)
!3609 = !DILocation(line: 999, column: 3, scope: !3600)
!3610 = !DILocation(line: 999, column: 26, scope: !3600)
!3611 = !DILocation(line: 0, scope: !3417, inlinedAt: !3607)
!3612 = !DILocation(line: 186, column: 13, scope: !3426, inlinedAt: !3607)
!3613 = !DILocation(line: 186, column: 7, scope: !3417, inlinedAt: !3607)
!3614 = !DILocation(line: 187, column: 5, scope: !3426, inlinedAt: !3607)
!3615 = !{!3616}
!3616 = distinct !{!3616, !3617, !"quoting_options_from_style: argument 0"}
!3617 = distinct !{!3617, !"quoting_options_from_style"}
!3618 = !DILocation(line: 1000, column: 13, scope: !3600)
!3619 = !DILocation(line: 0, scope: !2534, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 1001, column: 3, scope: !3600)
!3621 = !DILocation(line: 147, column: 57, scope: !2534, inlinedAt: !3620)
!3622 = !DILocation(line: 149, column: 21, scope: !2534, inlinedAt: !3620)
!3623 = !DILocation(line: 150, column: 6, scope: !2534, inlinedAt: !3620)
!3624 = !DILocation(line: 1002, column: 10, scope: !3600)
!3625 = !DILocation(line: 1003, column: 1, scope: !3600)
!3626 = !DILocation(line: 1002, column: 3, scope: !3600)
!3627 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !541, file: !541, line: 1006, type: !3628, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!132, !78, !138, !138, !138}
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DILocalVariable(name: "n", arg: 1, scope: !3627, file: !541, line: 1006, type: !78)
!3632 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3627, file: !541, line: 1006, type: !138)
!3633 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3627, file: !541, line: 1007, type: !138)
!3634 = !DILocalVariable(name: "arg", arg: 4, scope: !3627, file: !541, line: 1007, type: !138)
!3635 = !DILocation(line: 0, scope: !3627)
!3636 = !DILocalVariable(name: "n", arg: 1, scope: !3637, file: !541, line: 1014, type: !78)
!3637 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !541, file: !541, line: 1014, type: !3638, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!132, !78, !138, !138, !138, !135}
!3640 = !{!3636, !3641, !3642, !3643, !3644, !3645}
!3641 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3637, file: !541, line: 1014, type: !138)
!3642 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3637, file: !541, line: 1015, type: !138)
!3643 = !DILocalVariable(name: "arg", arg: 4, scope: !3637, file: !541, line: 1016, type: !138)
!3644 = !DILocalVariable(name: "argsize", arg: 5, scope: !3637, file: !541, line: 1016, type: !135)
!3645 = !DILocalVariable(name: "o", scope: !3637, file: !541, line: 1018, type: !580)
!3646 = !DILocation(line: 0, scope: !3637, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 1009, column: 10, scope: !3627)
!3648 = !DILocation(line: 1018, column: 3, scope: !3637, inlinedAt: !3647)
!3649 = !DILocation(line: 1018, column: 26, scope: !3637, inlinedAt: !3647)
!3650 = !DILocation(line: 1018, column: 30, scope: !3637, inlinedAt: !3647)
!3651 = !DILocation(line: 0, scope: !2574, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 1019, column: 3, scope: !3637, inlinedAt: !3647)
!3653 = !DILocation(line: 174, column: 12, scope: !2574, inlinedAt: !3652)
!3654 = !DILocation(line: 175, column: 8, scope: !2587, inlinedAt: !3652)
!3655 = !DILocation(line: 175, column: 19, scope: !2587, inlinedAt: !3652)
!3656 = !DILocation(line: 176, column: 5, scope: !2587, inlinedAt: !3652)
!3657 = !DILocation(line: 177, column: 6, scope: !2574, inlinedAt: !3652)
!3658 = !DILocation(line: 177, column: 17, scope: !2574, inlinedAt: !3652)
!3659 = !DILocation(line: 178, column: 6, scope: !2574, inlinedAt: !3652)
!3660 = !DILocation(line: 178, column: 18, scope: !2574, inlinedAt: !3652)
!3661 = !DILocation(line: 1020, column: 10, scope: !3637, inlinedAt: !3647)
!3662 = !DILocation(line: 1021, column: 1, scope: !3637, inlinedAt: !3647)
!3663 = !DILocation(line: 1009, column: 3, scope: !3627)
!3664 = !DILocation(line: 0, scope: !3637)
!3665 = !DILocation(line: 1018, column: 3, scope: !3637)
!3666 = !DILocation(line: 1018, column: 26, scope: !3637)
!3667 = !DILocation(line: 1018, column: 30, scope: !3637)
!3668 = !DILocation(line: 0, scope: !2574, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 1019, column: 3, scope: !3637)
!3670 = !DILocation(line: 174, column: 12, scope: !2574, inlinedAt: !3669)
!3671 = !DILocation(line: 175, column: 8, scope: !2587, inlinedAt: !3669)
!3672 = !DILocation(line: 175, column: 19, scope: !2587, inlinedAt: !3669)
!3673 = !DILocation(line: 176, column: 5, scope: !2587, inlinedAt: !3669)
!3674 = !DILocation(line: 177, column: 6, scope: !2574, inlinedAt: !3669)
!3675 = !DILocation(line: 177, column: 17, scope: !2574, inlinedAt: !3669)
!3676 = !DILocation(line: 178, column: 6, scope: !2574, inlinedAt: !3669)
!3677 = !DILocation(line: 178, column: 18, scope: !2574, inlinedAt: !3669)
!3678 = !DILocation(line: 1020, column: 10, scope: !3637)
!3679 = !DILocation(line: 1021, column: 1, scope: !3637)
!3680 = !DILocation(line: 1020, column: 3, scope: !3637)
!3681 = distinct !DISubprogram(name: "quotearg_custom", scope: !541, file: !541, line: 1024, type: !3682, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!132, !138, !138, !138}
!3684 = !{!3685, !3686, !3687}
!3685 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3681, file: !541, line: 1024, type: !138)
!3686 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3681, file: !541, line: 1024, type: !138)
!3687 = !DILocalVariable(name: "arg", arg: 3, scope: !3681, file: !541, line: 1025, type: !138)
!3688 = !DILocation(line: 0, scope: !3681)
!3689 = !DILocation(line: 0, scope: !3627, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 1027, column: 10, scope: !3681)
!3691 = !DILocation(line: 0, scope: !3637, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 1009, column: 10, scope: !3627, inlinedAt: !3690)
!3693 = !DILocation(line: 1018, column: 3, scope: !3637, inlinedAt: !3692)
!3694 = !DILocation(line: 1018, column: 26, scope: !3637, inlinedAt: !3692)
!3695 = !DILocation(line: 1018, column: 30, scope: !3637, inlinedAt: !3692)
!3696 = !DILocation(line: 0, scope: !2574, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1019, column: 3, scope: !3637, inlinedAt: !3692)
!3698 = !DILocation(line: 174, column: 12, scope: !2574, inlinedAt: !3697)
!3699 = !DILocation(line: 175, column: 8, scope: !2587, inlinedAt: !3697)
!3700 = !DILocation(line: 175, column: 19, scope: !2587, inlinedAt: !3697)
!3701 = !DILocation(line: 176, column: 5, scope: !2587, inlinedAt: !3697)
!3702 = !DILocation(line: 177, column: 6, scope: !2574, inlinedAt: !3697)
!3703 = !DILocation(line: 177, column: 17, scope: !2574, inlinedAt: !3697)
!3704 = !DILocation(line: 178, column: 6, scope: !2574, inlinedAt: !3697)
!3705 = !DILocation(line: 178, column: 18, scope: !2574, inlinedAt: !3697)
!3706 = !DILocation(line: 1020, column: 10, scope: !3637, inlinedAt: !3692)
!3707 = !DILocation(line: 1021, column: 1, scope: !3637, inlinedAt: !3692)
!3708 = !DILocation(line: 1027, column: 3, scope: !3681)
!3709 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !541, file: !541, line: 1031, type: !3710, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!132, !138, !138, !138, !135}
!3712 = !{!3713, !3714, !3715, !3716}
!3713 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3709, file: !541, line: 1031, type: !138)
!3714 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3709, file: !541, line: 1031, type: !138)
!3715 = !DILocalVariable(name: "arg", arg: 3, scope: !3709, file: !541, line: 1032, type: !138)
!3716 = !DILocalVariable(name: "argsize", arg: 4, scope: !3709, file: !541, line: 1032, type: !135)
!3717 = !DILocation(line: 0, scope: !3709)
!3718 = !DILocation(line: 0, scope: !3637, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 1034, column: 10, scope: !3709)
!3720 = !DILocation(line: 1018, column: 3, scope: !3637, inlinedAt: !3719)
!3721 = !DILocation(line: 1018, column: 26, scope: !3637, inlinedAt: !3719)
!3722 = !DILocation(line: 1018, column: 30, scope: !3637, inlinedAt: !3719)
!3723 = !DILocation(line: 0, scope: !2574, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 1019, column: 3, scope: !3637, inlinedAt: !3719)
!3725 = !DILocation(line: 174, column: 12, scope: !2574, inlinedAt: !3724)
!3726 = !DILocation(line: 175, column: 8, scope: !2587, inlinedAt: !3724)
!3727 = !DILocation(line: 175, column: 19, scope: !2587, inlinedAt: !3724)
!3728 = !DILocation(line: 176, column: 5, scope: !2587, inlinedAt: !3724)
!3729 = !DILocation(line: 177, column: 6, scope: !2574, inlinedAt: !3724)
!3730 = !DILocation(line: 177, column: 17, scope: !2574, inlinedAt: !3724)
!3731 = !DILocation(line: 178, column: 6, scope: !2574, inlinedAt: !3724)
!3732 = !DILocation(line: 178, column: 18, scope: !2574, inlinedAt: !3724)
!3733 = !DILocation(line: 1020, column: 10, scope: !3637, inlinedAt: !3719)
!3734 = !DILocation(line: 1021, column: 1, scope: !3637, inlinedAt: !3719)
!3735 = !DILocation(line: 1034, column: 3, scope: !3709)
!3736 = distinct !DISubprogram(name: "quote_n_mem", scope: !541, file: !541, line: 1049, type: !3737, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!138, !78, !138, !135}
!3739 = !{!3740, !3741, !3742}
!3740 = !DILocalVariable(name: "n", arg: 1, scope: !3736, file: !541, line: 1049, type: !78)
!3741 = !DILocalVariable(name: "arg", arg: 2, scope: !3736, file: !541, line: 1049, type: !138)
!3742 = !DILocalVariable(name: "argsize", arg: 3, scope: !3736, file: !541, line: 1049, type: !135)
!3743 = !DILocation(line: 0, scope: !3736)
!3744 = !DILocation(line: 1051, column: 10, scope: !3736)
!3745 = !DILocation(line: 1051, column: 3, scope: !3736)
!3746 = distinct !DISubprogram(name: "quote_mem", scope: !541, file: !541, line: 1055, type: !3747, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!138, !138, !135}
!3749 = !{!3750, !3751}
!3750 = !DILocalVariable(name: "arg", arg: 1, scope: !3746, file: !541, line: 1055, type: !138)
!3751 = !DILocalVariable(name: "argsize", arg: 2, scope: !3746, file: !541, line: 1055, type: !135)
!3752 = !DILocation(line: 0, scope: !3746)
!3753 = !DILocation(line: 0, scope: !3736, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 1057, column: 10, scope: !3746)
!3755 = !DILocation(line: 1051, column: 10, scope: !3736, inlinedAt: !3754)
!3756 = !DILocation(line: 1057, column: 3, scope: !3746)
!3757 = distinct !DISubprogram(name: "quote_n", scope: !541, file: !541, line: 1061, type: !3758, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!138, !78, !138}
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "n", arg: 1, scope: !3757, file: !541, line: 1061, type: !78)
!3762 = !DILocalVariable(name: "arg", arg: 2, scope: !3757, file: !541, line: 1061, type: !138)
!3763 = !DILocation(line: 0, scope: !3757)
!3764 = !DILocation(line: 0, scope: !3736, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 1063, column: 10, scope: !3757)
!3766 = !DILocation(line: 1051, column: 10, scope: !3736, inlinedAt: !3765)
!3767 = !DILocation(line: 1063, column: 3, scope: !3757)
!3768 = distinct !DISubprogram(name: "quote", scope: !541, file: !541, line: 1067, type: !3769, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!138, !138}
!3771 = !{!3772}
!3772 = !DILocalVariable(name: "arg", arg: 1, scope: !3768, file: !541, line: 1067, type: !138)
!3773 = !DILocation(line: 0, scope: !3768)
!3774 = !DILocation(line: 0, scope: !3757, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 1069, column: 10, scope: !3768)
!3776 = !DILocation(line: 0, scope: !3736, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 1063, column: 10, scope: !3757, inlinedAt: !3775)
!3778 = !DILocation(line: 1051, column: 10, scope: !3736, inlinedAt: !3777)
!3779 = !DILocation(line: 1069, column: 3, scope: !3768)
!3780 = distinct !DISubprogram(name: "version_etc_arn", scope: !641, file: !641, line: 61, type: !3781, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3818)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{null, !3783, !138, !138, !138, !3817, !135}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !3785)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !3786)
!3786 = !{!3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3785, file: !218, line: 51, baseType: !78, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3785, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3785, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3785, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3785, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3785, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3785, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3785, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3785, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3785, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3785, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3785, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3785, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3785, file: !218, line: 70, baseType: !3801, size: 64, offset: 832)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3785, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3785, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3785, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3785, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3785, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3785, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3785, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3785, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3785, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3785, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3785, file: !218, line: 93, baseType: !3801, size: 64, offset: 1344)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3785, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3785, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3785, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3785, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824}
!3819 = !DILocalVariable(name: "stream", arg: 1, scope: !3780, file: !641, line: 61, type: !3783)
!3820 = !DILocalVariable(name: "command_name", arg: 2, scope: !3780, file: !641, line: 62, type: !138)
!3821 = !DILocalVariable(name: "package", arg: 3, scope: !3780, file: !641, line: 62, type: !138)
!3822 = !DILocalVariable(name: "version", arg: 4, scope: !3780, file: !641, line: 63, type: !138)
!3823 = !DILocalVariable(name: "authors", arg: 5, scope: !3780, file: !641, line: 64, type: !3817)
!3824 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3780, file: !641, line: 64, type: !135)
!3825 = !DILocation(line: 0, scope: !3780)
!3826 = !DILocation(line: 66, column: 7, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3780, file: !641, line: 66, column: 7)
!3828 = !DILocation(line: 66, column: 7, scope: !3780)
!3829 = !DILocation(line: 67, column: 5, scope: !3827)
!3830 = !DILocation(line: 69, column: 5, scope: !3827)
!3831 = !DILocation(line: 83, column: 3, scope: !3780)
!3832 = !DILocation(line: 85, column: 3, scope: !3780)
!3833 = !DILocation(line: 88, column: 3, scope: !3780)
!3834 = !DILocation(line: 95, column: 3, scope: !3780)
!3835 = !DILocation(line: 97, column: 3, scope: !3780)
!3836 = !DILocation(line: 105, column: 7, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3780, file: !641, line: 98, column: 5)
!3838 = !DILocation(line: 106, column: 7, scope: !3837)
!3839 = !DILocation(line: 109, column: 7, scope: !3837)
!3840 = !DILocation(line: 110, column: 7, scope: !3837)
!3841 = !DILocation(line: 113, column: 7, scope: !3837)
!3842 = !DILocation(line: 115, column: 7, scope: !3837)
!3843 = !DILocation(line: 120, column: 7, scope: !3837)
!3844 = !DILocation(line: 122, column: 7, scope: !3837)
!3845 = !DILocation(line: 127, column: 7, scope: !3837)
!3846 = !DILocation(line: 129, column: 7, scope: !3837)
!3847 = !DILocation(line: 134, column: 7, scope: !3837)
!3848 = !DILocation(line: 137, column: 7, scope: !3837)
!3849 = !DILocation(line: 142, column: 7, scope: !3837)
!3850 = !DILocation(line: 145, column: 7, scope: !3837)
!3851 = !DILocation(line: 150, column: 7, scope: !3837)
!3852 = !DILocation(line: 154, column: 7, scope: !3837)
!3853 = !DILocation(line: 159, column: 7, scope: !3837)
!3854 = !DILocation(line: 163, column: 7, scope: !3837)
!3855 = !DILocation(line: 170, column: 7, scope: !3837)
!3856 = !DILocation(line: 174, column: 7, scope: !3837)
!3857 = !DILocation(line: 176, column: 1, scope: !3780)
!3858 = distinct !DISubprogram(name: "version_etc_ar", scope: !641, file: !641, line: 183, type: !3859, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{null, !3783, !138, !138, !138, !3817}
!3861 = !{!3862, !3863, !3864, !3865, !3866, !3867}
!3862 = !DILocalVariable(name: "stream", arg: 1, scope: !3858, file: !641, line: 183, type: !3783)
!3863 = !DILocalVariable(name: "command_name", arg: 2, scope: !3858, file: !641, line: 184, type: !138)
!3864 = !DILocalVariable(name: "package", arg: 3, scope: !3858, file: !641, line: 184, type: !138)
!3865 = !DILocalVariable(name: "version", arg: 4, scope: !3858, file: !641, line: 185, type: !138)
!3866 = !DILocalVariable(name: "authors", arg: 5, scope: !3858, file: !641, line: 185, type: !3817)
!3867 = !DILocalVariable(name: "n_authors", scope: !3858, file: !641, line: 187, type: !135)
!3868 = !DILocation(line: 0, scope: !3858)
!3869 = !DILocation(line: 189, column: 8, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3858, file: !641, line: 189, column: 3)
!3871 = !DILocation(line: 189, scope: !3870)
!3872 = !DILocation(line: 189, column: 23, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3870, file: !641, line: 189, column: 3)
!3874 = !DILocation(line: 189, column: 3, scope: !3870)
!3875 = !DILocation(line: 189, column: 52, scope: !3873)
!3876 = distinct !{!3876, !3874, !3877, !962}
!3877 = !DILocation(line: 190, column: 5, scope: !3870)
!3878 = !DILocation(line: 191, column: 3, scope: !3858)
!3879 = !DILocation(line: 192, column: 1, scope: !3858)
!3880 = distinct !DISubprogram(name: "version_etc_va", scope: !641, file: !641, line: 199, type: !3881, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3894)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{null, !3783, !138, !138, !138, !3883}
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !455, line: 52, baseType: !3884)
!3884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !457, line: 14, baseType: !3885)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3886, baseType: !3887)
!3886 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892, !3893}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3887, file: !3886, line: 192, baseType: !133, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3887, file: !3886, line: 192, baseType: !133, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3887, file: !3886, line: 192, baseType: !133, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3887, file: !3886, line: 192, baseType: !78, size: 32, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3887, file: !3886, line: 192, baseType: !78, size: 32, offset: 224)
!3894 = !{!3895, !3896, !3897, !3898, !3899, !3900, !3901}
!3895 = !DILocalVariable(name: "stream", arg: 1, scope: !3880, file: !641, line: 199, type: !3783)
!3896 = !DILocalVariable(name: "command_name", arg: 2, scope: !3880, file: !641, line: 200, type: !138)
!3897 = !DILocalVariable(name: "package", arg: 3, scope: !3880, file: !641, line: 200, type: !138)
!3898 = !DILocalVariable(name: "version", arg: 4, scope: !3880, file: !641, line: 201, type: !138)
!3899 = !DILocalVariable(name: "authors", arg: 5, scope: !3880, file: !641, line: 201, type: !3883)
!3900 = !DILocalVariable(name: "n_authors", scope: !3880, file: !641, line: 203, type: !135)
!3901 = !DILocalVariable(name: "authtab", scope: !3880, file: !641, line: 204, type: !3902)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !60)
!3903 = !DILocation(line: 0, scope: !3880)
!3904 = !DILocation(line: 201, column: 46, scope: !3880)
!3905 = !DILocation(line: 204, column: 3, scope: !3880)
!3906 = !DILocation(line: 204, column: 15, scope: !3880)
!3907 = !DILocation(line: 208, column: 35, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !641, line: 206, column: 3)
!3909 = distinct !DILexicalBlock(scope: !3880, file: !641, line: 206, column: 3)
!3910 = !DILocation(line: 208, column: 33, scope: !3908)
!3911 = !DILocation(line: 208, column: 67, scope: !3908)
!3912 = !DILocation(line: 206, column: 3, scope: !3909)
!3913 = !DILocation(line: 208, column: 14, scope: !3908)
!3914 = !DILocation(line: 0, scope: !3909)
!3915 = !DILocation(line: 211, column: 3, scope: !3880)
!3916 = !DILocation(line: 213, column: 1, scope: !3880)
!3917 = distinct !DISubprogram(name: "version_etc", scope: !641, file: !641, line: 230, type: !3918, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{null, !3783, !138, !138, !138, null}
!3920 = !{!3921, !3922, !3923, !3924, !3925}
!3921 = !DILocalVariable(name: "stream", arg: 1, scope: !3917, file: !641, line: 230, type: !3783)
!3922 = !DILocalVariable(name: "command_name", arg: 2, scope: !3917, file: !641, line: 231, type: !138)
!3923 = !DILocalVariable(name: "package", arg: 3, scope: !3917, file: !641, line: 231, type: !138)
!3924 = !DILocalVariable(name: "version", arg: 4, scope: !3917, file: !641, line: 232, type: !138)
!3925 = !DILocalVariable(name: "authors", scope: !3917, file: !641, line: 234, type: !3883)
!3926 = !DILocation(line: 0, scope: !3917)
!3927 = !DILocation(line: 234, column: 3, scope: !3917)
!3928 = !DILocation(line: 234, column: 11, scope: !3917)
!3929 = !DILocation(line: 235, column: 3, scope: !3917)
!3930 = !DILocation(line: 236, column: 3, scope: !3917)
!3931 = !DILocation(line: 237, column: 3, scope: !3917)
!3932 = !DILocation(line: 238, column: 1, scope: !3917)
!3933 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !641, file: !641, line: 241, type: !496, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !855)
!3934 = !DILocation(line: 243, column: 3, scope: !3933)
!3935 = !DILocation(line: 248, column: 3, scope: !3933)
!3936 = !DILocation(line: 254, column: 3, scope: !3933)
!3937 = !DILocation(line: 259, column: 3, scope: !3933)
!3938 = !DILocation(line: 261, column: 1, scope: !3933)
!3939 = distinct !DISubprogram(name: "xnrealloc", scope: !3940, file: !3940, line: 147, type: !3941, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3943)
!3940 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!133, !133, !135, !135}
!3943 = !{!3944, !3945, !3946}
!3944 = !DILocalVariable(name: "p", arg: 1, scope: !3939, file: !3940, line: 147, type: !133)
!3945 = !DILocalVariable(name: "n", arg: 2, scope: !3939, file: !3940, line: 147, type: !135)
!3946 = !DILocalVariable(name: "s", arg: 3, scope: !3939, file: !3940, line: 147, type: !135)
!3947 = !DILocation(line: 0, scope: !3939)
!3948 = !DILocalVariable(name: "p", arg: 1, scope: !3949, file: !783, line: 83, type: !133)
!3949 = distinct !DISubprogram(name: "xreallocarray", scope: !783, file: !783, line: 83, type: !3941, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3950)
!3950 = !{!3948, !3951, !3952}
!3951 = !DILocalVariable(name: "n", arg: 2, scope: !3949, file: !783, line: 83, type: !135)
!3952 = !DILocalVariable(name: "s", arg: 3, scope: !3949, file: !783, line: 83, type: !135)
!3953 = !DILocation(line: 0, scope: !3949, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 149, column: 10, scope: !3939)
!3955 = !DILocation(line: 85, column: 25, scope: !3949, inlinedAt: !3954)
!3956 = !DILocalVariable(name: "p", arg: 1, scope: !3957, file: !783, line: 37, type: !133)
!3957 = distinct !DISubprogram(name: "check_nonnull", scope: !783, file: !783, line: 37, type: !3958, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3960)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!133, !133}
!3960 = !{!3956}
!3961 = !DILocation(line: 0, scope: !3957, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 85, column: 10, scope: !3949, inlinedAt: !3954)
!3963 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !3962)
!3964 = distinct !DILexicalBlock(scope: !3957, file: !783, line: 39, column: 7)
!3965 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !3962)
!3966 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !3962)
!3967 = !DILocation(line: 149, column: 3, scope: !3939)
!3968 = !DILocation(line: 0, scope: !3949)
!3969 = !DILocation(line: 85, column: 25, scope: !3949)
!3970 = !DILocation(line: 0, scope: !3957, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 85, column: 10, scope: !3949)
!3972 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !3971)
!3973 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !3971)
!3974 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !3971)
!3975 = !DILocation(line: 85, column: 3, scope: !3949)
!3976 = distinct !DISubprogram(name: "xmalloc", scope: !783, file: !783, line: 47, type: !3977, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!133, !135}
!3979 = !{!3980}
!3980 = !DILocalVariable(name: "s", arg: 1, scope: !3976, file: !783, line: 47, type: !135)
!3981 = !DILocation(line: 0, scope: !3976)
!3982 = !DILocation(line: 49, column: 25, scope: !3976)
!3983 = !DILocation(line: 0, scope: !3957, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 49, column: 10, scope: !3976)
!3985 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !3984)
!3986 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !3984)
!3987 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !3984)
!3988 = !DILocation(line: 49, column: 3, scope: !3976)
!3989 = !DISubprogram(name: "malloc", scope: !1036, file: !1036, line: 540, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!3990 = distinct !DISubprogram(name: "ximalloc", scope: !783, file: !783, line: 53, type: !3991, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!133, !392}
!3993 = !{!3994}
!3994 = !DILocalVariable(name: "s", arg: 1, scope: !3990, file: !783, line: 53, type: !392)
!3995 = !DILocation(line: 0, scope: !3990)
!3996 = !DILocalVariable(name: "s", arg: 1, scope: !3997, file: !3998, line: 55, type: !392)
!3997 = distinct !DISubprogram(name: "imalloc", scope: !3998, file: !3998, line: 55, type: !3991, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3999)
!3998 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3999 = !{!3996}
!4000 = !DILocation(line: 0, scope: !3997, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 55, column: 25, scope: !3990)
!4002 = !DILocation(line: 57, column: 26, scope: !3997, inlinedAt: !4001)
!4003 = !DILocation(line: 0, scope: !3957, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 55, column: 10, scope: !3990)
!4005 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4004)
!4006 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4004)
!4007 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4004)
!4008 = !DILocation(line: 55, column: 3, scope: !3990)
!4009 = distinct !DISubprogram(name: "xcharalloc", scope: !783, file: !783, line: 59, type: !4010, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4012)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!132, !135}
!4012 = !{!4013}
!4013 = !DILocalVariable(name: "n", arg: 1, scope: !4009, file: !783, line: 59, type: !135)
!4014 = !DILocation(line: 0, scope: !4009)
!4015 = !DILocation(line: 0, scope: !3976, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 61, column: 10, scope: !4009)
!4017 = !DILocation(line: 49, column: 25, scope: !3976, inlinedAt: !4016)
!4018 = !DILocation(line: 0, scope: !3957, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 49, column: 10, scope: !3976, inlinedAt: !4016)
!4020 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4019)
!4021 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4019)
!4022 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4019)
!4023 = !DILocation(line: 61, column: 3, scope: !4009)
!4024 = distinct !DISubprogram(name: "xrealloc", scope: !783, file: !783, line: 68, type: !4025, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!133, !133, !135}
!4027 = !{!4028, !4029}
!4028 = !DILocalVariable(name: "p", arg: 1, scope: !4024, file: !783, line: 68, type: !133)
!4029 = !DILocalVariable(name: "s", arg: 2, scope: !4024, file: !783, line: 68, type: !135)
!4030 = !DILocation(line: 0, scope: !4024)
!4031 = !DILocalVariable(name: "ptr", arg: 1, scope: !4032, file: !4033, line: 2057, type: !133)
!4032 = distinct !DISubprogram(name: "rpl_realloc", scope: !4033, file: !4033, line: 2057, type: !4025, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4034)
!4033 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4034 = !{!4031, !4035}
!4035 = !DILocalVariable(name: "size", arg: 2, scope: !4032, file: !4033, line: 2057, type: !135)
!4036 = !DILocation(line: 0, scope: !4032, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 70, column: 25, scope: !4024)
!4038 = !DILocation(line: 2059, column: 24, scope: !4032, inlinedAt: !4037)
!4039 = !DILocation(line: 2059, column: 10, scope: !4032, inlinedAt: !4037)
!4040 = !DILocation(line: 0, scope: !3957, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 70, column: 10, scope: !4024)
!4042 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4041)
!4043 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4041)
!4044 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4041)
!4045 = !DILocation(line: 70, column: 3, scope: !4024)
!4046 = !DISubprogram(name: "realloc", scope: !1036, file: !1036, line: 551, type: !4025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!4047 = distinct !DISubprogram(name: "xirealloc", scope: !783, file: !783, line: 74, type: !4048, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!133, !133, !392}
!4050 = !{!4051, !4052}
!4051 = !DILocalVariable(name: "p", arg: 1, scope: !4047, file: !783, line: 74, type: !133)
!4052 = !DILocalVariable(name: "s", arg: 2, scope: !4047, file: !783, line: 74, type: !392)
!4053 = !DILocation(line: 0, scope: !4047)
!4054 = !DILocalVariable(name: "p", arg: 1, scope: !4055, file: !3998, line: 66, type: !133)
!4055 = distinct !DISubprogram(name: "irealloc", scope: !3998, file: !3998, line: 66, type: !4048, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4056)
!4056 = !{!4054, !4057}
!4057 = !DILocalVariable(name: "s", arg: 2, scope: !4055, file: !3998, line: 66, type: !392)
!4058 = !DILocation(line: 0, scope: !4055, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 76, column: 25, scope: !4047)
!4060 = !DILocation(line: 0, scope: !4032, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 68, column: 26, scope: !4055, inlinedAt: !4059)
!4062 = !DILocation(line: 2059, column: 24, scope: !4032, inlinedAt: !4061)
!4063 = !DILocation(line: 2059, column: 10, scope: !4032, inlinedAt: !4061)
!4064 = !DILocation(line: 0, scope: !3957, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 76, column: 10, scope: !4047)
!4066 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4065)
!4067 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4065)
!4068 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4065)
!4069 = !DILocation(line: 76, column: 3, scope: !4047)
!4070 = distinct !DISubprogram(name: "xireallocarray", scope: !783, file: !783, line: 89, type: !4071, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!133, !133, !392, !392}
!4073 = !{!4074, !4075, !4076}
!4074 = !DILocalVariable(name: "p", arg: 1, scope: !4070, file: !783, line: 89, type: !133)
!4075 = !DILocalVariable(name: "n", arg: 2, scope: !4070, file: !783, line: 89, type: !392)
!4076 = !DILocalVariable(name: "s", arg: 3, scope: !4070, file: !783, line: 89, type: !392)
!4077 = !DILocation(line: 0, scope: !4070)
!4078 = !DILocalVariable(name: "p", arg: 1, scope: !4079, file: !3998, line: 98, type: !133)
!4079 = distinct !DISubprogram(name: "ireallocarray", scope: !3998, file: !3998, line: 98, type: !4071, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4080)
!4080 = !{!4078, !4081, !4082}
!4081 = !DILocalVariable(name: "n", arg: 2, scope: !4079, file: !3998, line: 98, type: !392)
!4082 = !DILocalVariable(name: "s", arg: 3, scope: !4079, file: !3998, line: 98, type: !392)
!4083 = !DILocation(line: 0, scope: !4079, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 91, column: 25, scope: !4070)
!4085 = !DILocation(line: 101, column: 13, scope: !4079, inlinedAt: !4084)
!4086 = !DILocation(line: 0, scope: !3957, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 91, column: 10, scope: !4070)
!4088 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4087)
!4089 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4087)
!4090 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4087)
!4091 = !DILocation(line: 91, column: 3, scope: !4070)
!4092 = distinct !DISubprogram(name: "xnmalloc", scope: !783, file: !783, line: 98, type: !4093, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!133, !135, !135}
!4095 = !{!4096, !4097}
!4096 = !DILocalVariable(name: "n", arg: 1, scope: !4092, file: !783, line: 98, type: !135)
!4097 = !DILocalVariable(name: "s", arg: 2, scope: !4092, file: !783, line: 98, type: !135)
!4098 = !DILocation(line: 0, scope: !4092)
!4099 = !DILocation(line: 0, scope: !3949, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 100, column: 10, scope: !4092)
!4101 = !DILocation(line: 85, column: 25, scope: !3949, inlinedAt: !4100)
!4102 = !DILocation(line: 0, scope: !3957, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 85, column: 10, scope: !3949, inlinedAt: !4100)
!4104 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4103)
!4105 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4103)
!4106 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4103)
!4107 = !DILocation(line: 100, column: 3, scope: !4092)
!4108 = distinct !DISubprogram(name: "xinmalloc", scope: !783, file: !783, line: 104, type: !4109, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!133, !392, !392}
!4111 = !{!4112, !4113}
!4112 = !DILocalVariable(name: "n", arg: 1, scope: !4108, file: !783, line: 104, type: !392)
!4113 = !DILocalVariable(name: "s", arg: 2, scope: !4108, file: !783, line: 104, type: !392)
!4114 = !DILocation(line: 0, scope: !4108)
!4115 = !DILocation(line: 0, scope: !4070, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 106, column: 10, scope: !4108)
!4117 = !DILocation(line: 0, scope: !4079, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 91, column: 25, scope: !4070, inlinedAt: !4116)
!4119 = !DILocation(line: 101, column: 13, scope: !4079, inlinedAt: !4118)
!4120 = !DILocation(line: 0, scope: !3957, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 91, column: 10, scope: !4070, inlinedAt: !4116)
!4122 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4121)
!4123 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4121)
!4124 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4121)
!4125 = !DILocation(line: 106, column: 3, scope: !4108)
!4126 = distinct !DISubprogram(name: "x2realloc", scope: !783, file: !783, line: 116, type: !4127, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!133, !133, !179}
!4129 = !{!4130, !4131}
!4130 = !DILocalVariable(name: "p", arg: 1, scope: !4126, file: !783, line: 116, type: !133)
!4131 = !DILocalVariable(name: "ps", arg: 2, scope: !4126, file: !783, line: 116, type: !179)
!4132 = !DILocation(line: 0, scope: !4126)
!4133 = !DILocation(line: 0, scope: !786, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 118, column: 10, scope: !4126)
!4135 = !DILocation(line: 178, column: 14, scope: !786, inlinedAt: !4134)
!4136 = !DILocation(line: 180, column: 9, scope: !4137, inlinedAt: !4134)
!4137 = distinct !DILexicalBlock(scope: !786, file: !783, line: 180, column: 7)
!4138 = !DILocation(line: 180, column: 7, scope: !786, inlinedAt: !4134)
!4139 = !DILocation(line: 182, column: 13, scope: !4140, inlinedAt: !4134)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !783, line: 182, column: 11)
!4141 = distinct !DILexicalBlock(scope: !4137, file: !783, line: 181, column: 5)
!4142 = !DILocation(line: 182, column: 11, scope: !4141, inlinedAt: !4134)
!4143 = !DILocation(line: 197, column: 11, scope: !4144, inlinedAt: !4134)
!4144 = distinct !DILexicalBlock(scope: !4145, file: !783, line: 197, column: 11)
!4145 = distinct !DILexicalBlock(scope: !4137, file: !783, line: 195, column: 5)
!4146 = !DILocation(line: 197, column: 11, scope: !4145, inlinedAt: !4134)
!4147 = !DILocation(line: 198, column: 9, scope: !4144, inlinedAt: !4134)
!4148 = !DILocation(line: 0, scope: !3949, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 201, column: 7, scope: !786, inlinedAt: !4134)
!4150 = !DILocation(line: 85, column: 25, scope: !3949, inlinedAt: !4149)
!4151 = !DILocation(line: 0, scope: !3957, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 85, column: 10, scope: !3949, inlinedAt: !4149)
!4153 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4152)
!4154 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4152)
!4155 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4152)
!4156 = !DILocation(line: 202, column: 7, scope: !786, inlinedAt: !4134)
!4157 = !DILocation(line: 118, column: 3, scope: !4126)
!4158 = !DILocation(line: 0, scope: !786)
!4159 = !DILocation(line: 178, column: 14, scope: !786)
!4160 = !DILocation(line: 180, column: 9, scope: !4137)
!4161 = !DILocation(line: 180, column: 7, scope: !786)
!4162 = !DILocation(line: 182, column: 13, scope: !4140)
!4163 = !DILocation(line: 182, column: 11, scope: !4141)
!4164 = !DILocation(line: 190, column: 30, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4140, file: !783, line: 183, column: 9)
!4166 = !DILocation(line: 191, column: 16, scope: !4165)
!4167 = !DILocation(line: 191, column: 13, scope: !4165)
!4168 = !DILocation(line: 192, column: 9, scope: !4165)
!4169 = !DILocation(line: 197, column: 11, scope: !4144)
!4170 = !DILocation(line: 197, column: 11, scope: !4145)
!4171 = !DILocation(line: 198, column: 9, scope: !4144)
!4172 = !DILocation(line: 0, scope: !3949, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 201, column: 7, scope: !786)
!4174 = !DILocation(line: 85, column: 25, scope: !3949, inlinedAt: !4173)
!4175 = !DILocation(line: 0, scope: !3957, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 85, column: 10, scope: !3949, inlinedAt: !4173)
!4177 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4176)
!4178 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4176)
!4179 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4176)
!4180 = !DILocation(line: 202, column: 7, scope: !786)
!4181 = !DILocation(line: 203, column: 3, scope: !786)
!4182 = !DILocation(line: 0, scope: !797)
!4183 = !DILocation(line: 230, column: 14, scope: !797)
!4184 = !DILocation(line: 238, column: 7, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !797, file: !783, line: 238, column: 7)
!4186 = !DILocation(line: 238, column: 7, scope: !797)
!4187 = !DILocation(line: 240, column: 9, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !797, file: !783, line: 240, column: 7)
!4189 = !DILocation(line: 240, column: 18, scope: !4188)
!4190 = !DILocation(line: 253, column: 8, scope: !797)
!4191 = !DILocation(line: 258, column: 27, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !783, line: 257, column: 5)
!4193 = distinct !DILexicalBlock(scope: !797, file: !783, line: 256, column: 7)
!4194 = !DILocation(line: 259, column: 32, scope: !4192)
!4195 = !DILocation(line: 260, column: 5, scope: !4192)
!4196 = !DILocation(line: 262, column: 9, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !797, file: !783, line: 262, column: 7)
!4198 = !DILocation(line: 262, column: 7, scope: !797)
!4199 = !DILocation(line: 263, column: 9, scope: !4197)
!4200 = !DILocation(line: 263, column: 5, scope: !4197)
!4201 = !DILocation(line: 264, column: 9, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !797, file: !783, line: 264, column: 7)
!4203 = !DILocation(line: 264, column: 14, scope: !4202)
!4204 = !DILocation(line: 265, column: 7, scope: !4202)
!4205 = !DILocation(line: 265, column: 11, scope: !4202)
!4206 = !DILocation(line: 266, column: 11, scope: !4202)
!4207 = !DILocation(line: 267, column: 14, scope: !4202)
!4208 = !DILocation(line: 264, column: 7, scope: !797)
!4209 = !DILocation(line: 268, column: 5, scope: !4202)
!4210 = !DILocation(line: 0, scope: !4024, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 269, column: 8, scope: !797)
!4212 = !DILocation(line: 0, scope: !4032, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 70, column: 25, scope: !4024, inlinedAt: !4211)
!4214 = !DILocation(line: 2059, column: 24, scope: !4032, inlinedAt: !4213)
!4215 = !DILocation(line: 2059, column: 10, scope: !4032, inlinedAt: !4213)
!4216 = !DILocation(line: 0, scope: !3957, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 70, column: 10, scope: !4024, inlinedAt: !4211)
!4218 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4217)
!4219 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4217)
!4220 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4217)
!4221 = !DILocation(line: 270, column: 7, scope: !797)
!4222 = !DILocation(line: 271, column: 3, scope: !797)
!4223 = distinct !DISubprogram(name: "xzalloc", scope: !783, file: !783, line: 279, type: !3977, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4224)
!4224 = !{!4225}
!4225 = !DILocalVariable(name: "s", arg: 1, scope: !4223, file: !783, line: 279, type: !135)
!4226 = !DILocation(line: 0, scope: !4223)
!4227 = !DILocalVariable(name: "n", arg: 1, scope: !4228, file: !783, line: 294, type: !135)
!4228 = distinct !DISubprogram(name: "xcalloc", scope: !783, file: !783, line: 294, type: !4093, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4229)
!4229 = !{!4227, !4230}
!4230 = !DILocalVariable(name: "s", arg: 2, scope: !4228, file: !783, line: 294, type: !135)
!4231 = !DILocation(line: 0, scope: !4228, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 281, column: 10, scope: !4223)
!4233 = !DILocation(line: 296, column: 25, scope: !4228, inlinedAt: !4232)
!4234 = !DILocation(line: 0, scope: !3957, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 296, column: 10, scope: !4228, inlinedAt: !4232)
!4236 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4235)
!4237 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4235)
!4238 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4235)
!4239 = !DILocation(line: 281, column: 3, scope: !4223)
!4240 = !DISubprogram(name: "calloc", scope: !1036, file: !1036, line: 543, type: !4093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!4241 = !DILocation(line: 0, scope: !4228)
!4242 = !DILocation(line: 296, column: 25, scope: !4228)
!4243 = !DILocation(line: 0, scope: !3957, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 296, column: 10, scope: !4228)
!4245 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4244)
!4246 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4244)
!4247 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4244)
!4248 = !DILocation(line: 296, column: 3, scope: !4228)
!4249 = distinct !DISubprogram(name: "xizalloc", scope: !783, file: !783, line: 285, type: !3991, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4250)
!4250 = !{!4251}
!4251 = !DILocalVariable(name: "s", arg: 1, scope: !4249, file: !783, line: 285, type: !392)
!4252 = !DILocation(line: 0, scope: !4249)
!4253 = !DILocalVariable(name: "n", arg: 1, scope: !4254, file: !783, line: 300, type: !392)
!4254 = distinct !DISubprogram(name: "xicalloc", scope: !783, file: !783, line: 300, type: !4109, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4255)
!4255 = !{!4253, !4256}
!4256 = !DILocalVariable(name: "s", arg: 2, scope: !4254, file: !783, line: 300, type: !392)
!4257 = !DILocation(line: 0, scope: !4254, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 287, column: 10, scope: !4249)
!4259 = !DILocalVariable(name: "n", arg: 1, scope: !4260, file: !3998, line: 77, type: !392)
!4260 = distinct !DISubprogram(name: "icalloc", scope: !3998, file: !3998, line: 77, type: !4109, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4261)
!4261 = !{!4259, !4262}
!4262 = !DILocalVariable(name: "s", arg: 2, scope: !4260, file: !3998, line: 77, type: !392)
!4263 = !DILocation(line: 0, scope: !4260, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 302, column: 25, scope: !4254, inlinedAt: !4258)
!4265 = !DILocation(line: 91, column: 10, scope: !4260, inlinedAt: !4264)
!4266 = !DILocation(line: 0, scope: !3957, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 302, column: 10, scope: !4254, inlinedAt: !4258)
!4268 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4267)
!4269 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4267)
!4270 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4267)
!4271 = !DILocation(line: 287, column: 3, scope: !4249)
!4272 = !DILocation(line: 0, scope: !4254)
!4273 = !DILocation(line: 0, scope: !4260, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 302, column: 25, scope: !4254)
!4275 = !DILocation(line: 91, column: 10, scope: !4260, inlinedAt: !4274)
!4276 = !DILocation(line: 0, scope: !3957, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 302, column: 10, scope: !4254)
!4278 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4277)
!4279 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4277)
!4280 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4277)
!4281 = !DILocation(line: 302, column: 3, scope: !4254)
!4282 = distinct !DISubprogram(name: "xmemdup", scope: !783, file: !783, line: 310, type: !4283, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!133, !1060, !135}
!4285 = !{!4286, !4287}
!4286 = !DILocalVariable(name: "p", arg: 1, scope: !4282, file: !783, line: 310, type: !1060)
!4287 = !DILocalVariable(name: "s", arg: 2, scope: !4282, file: !783, line: 310, type: !135)
!4288 = !DILocation(line: 0, scope: !4282)
!4289 = !DILocation(line: 0, scope: !3976, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 312, column: 18, scope: !4282)
!4291 = !DILocation(line: 49, column: 25, scope: !3976, inlinedAt: !4290)
!4292 = !DILocation(line: 0, scope: !3957, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 49, column: 10, scope: !3976, inlinedAt: !4290)
!4294 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4293)
!4295 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4293)
!4296 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4293)
!4297 = !DILocalVariable(name: "__dest", arg: 1, scope: !4298, file: !1234, line: 26, type: !1237)
!4298 = distinct !DISubprogram(name: "memcpy", scope: !1234, file: !1234, line: 26, type: !1235, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4299)
!4299 = !{!4297, !4300, !4301}
!4300 = !DILocalVariable(name: "__src", arg: 2, scope: !4298, file: !1234, line: 26, type: !1059)
!4301 = !DILocalVariable(name: "__len", arg: 3, scope: !4298, file: !1234, line: 26, type: !135)
!4302 = !DILocation(line: 0, scope: !4298, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 312, column: 10, scope: !4282)
!4304 = !DILocation(line: 29, column: 10, scope: !4298, inlinedAt: !4303)
!4305 = !DILocation(line: 312, column: 3, scope: !4282)
!4306 = distinct !DISubprogram(name: "ximemdup", scope: !783, file: !783, line: 316, type: !4307, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4309)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!133, !1060, !392}
!4309 = !{!4310, !4311}
!4310 = !DILocalVariable(name: "p", arg: 1, scope: !4306, file: !783, line: 316, type: !1060)
!4311 = !DILocalVariable(name: "s", arg: 2, scope: !4306, file: !783, line: 316, type: !392)
!4312 = !DILocation(line: 0, scope: !4306)
!4313 = !DILocation(line: 0, scope: !3990, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 318, column: 18, scope: !4306)
!4315 = !DILocation(line: 0, scope: !3997, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 55, column: 25, scope: !3990, inlinedAt: !4314)
!4317 = !DILocation(line: 57, column: 26, scope: !3997, inlinedAt: !4316)
!4318 = !DILocation(line: 0, scope: !3957, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 55, column: 10, scope: !3990, inlinedAt: !4314)
!4320 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4319)
!4321 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4319)
!4322 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4319)
!4323 = !DILocation(line: 0, scope: !4298, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 318, column: 10, scope: !4306)
!4325 = !DILocation(line: 29, column: 10, scope: !4298, inlinedAt: !4324)
!4326 = !DILocation(line: 318, column: 3, scope: !4306)
!4327 = distinct !DISubprogram(name: "ximemdup0", scope: !783, file: !783, line: 325, type: !4328, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4330)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!132, !1060, !392}
!4330 = !{!4331, !4332, !4333}
!4331 = !DILocalVariable(name: "p", arg: 1, scope: !4327, file: !783, line: 325, type: !1060)
!4332 = !DILocalVariable(name: "s", arg: 2, scope: !4327, file: !783, line: 325, type: !392)
!4333 = !DILocalVariable(name: "result", scope: !4327, file: !783, line: 327, type: !132)
!4334 = !DILocation(line: 0, scope: !4327)
!4335 = !DILocation(line: 327, column: 30, scope: !4327)
!4336 = !DILocation(line: 0, scope: !3990, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 327, column: 18, scope: !4327)
!4338 = !DILocation(line: 0, scope: !3997, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 55, column: 25, scope: !3990, inlinedAt: !4337)
!4340 = !DILocation(line: 57, column: 26, scope: !3997, inlinedAt: !4339)
!4341 = !DILocation(line: 0, scope: !3957, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 55, column: 10, scope: !3990, inlinedAt: !4337)
!4343 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4342)
!4344 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4342)
!4345 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4342)
!4346 = !DILocation(line: 328, column: 3, scope: !4327)
!4347 = !DILocation(line: 328, column: 13, scope: !4327)
!4348 = !DILocation(line: 0, scope: !4298, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 329, column: 10, scope: !4327)
!4350 = !DILocation(line: 29, column: 10, scope: !4298, inlinedAt: !4349)
!4351 = !DILocation(line: 329, column: 3, scope: !4327)
!4352 = distinct !DISubprogram(name: "xstrdup", scope: !783, file: !783, line: 335, type: !1038, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4353)
!4353 = !{!4354}
!4354 = !DILocalVariable(name: "string", arg: 1, scope: !4352, file: !783, line: 335, type: !138)
!4355 = !DILocation(line: 0, scope: !4352)
!4356 = !DILocation(line: 337, column: 27, scope: !4352)
!4357 = !DILocation(line: 337, column: 43, scope: !4352)
!4358 = !DILocation(line: 0, scope: !4282, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 337, column: 10, scope: !4352)
!4360 = !DILocation(line: 0, scope: !3976, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 312, column: 18, scope: !4282, inlinedAt: !4359)
!4362 = !DILocation(line: 49, column: 25, scope: !3976, inlinedAt: !4361)
!4363 = !DILocation(line: 0, scope: !3957, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 49, column: 10, scope: !3976, inlinedAt: !4361)
!4365 = !DILocation(line: 39, column: 8, scope: !3964, inlinedAt: !4364)
!4366 = !DILocation(line: 39, column: 7, scope: !3957, inlinedAt: !4364)
!4367 = !DILocation(line: 40, column: 5, scope: !3964, inlinedAt: !4364)
!4368 = !DILocation(line: 0, scope: !4298, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 312, column: 10, scope: !4282, inlinedAt: !4359)
!4370 = !DILocation(line: 29, column: 10, scope: !4298, inlinedAt: !4369)
!4371 = !DILocation(line: 337, column: 3, scope: !4352)
!4372 = distinct !DISubprogram(name: "xalloc_die", scope: !734, file: !734, line: 32, type: !496, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4373)
!4373 = !{!4374}
!4374 = !DILocalVariable(name: "__errstatus", scope: !4375, file: !734, line: 34, type: !4376)
!4375 = distinct !DILexicalBlock(scope: !4372, file: !734, line: 34, column: 3)
!4376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!4377 = !DILocation(line: 34, column: 3, scope: !4375)
!4378 = !DILocation(line: 0, scope: !4375)
!4379 = !DILocation(line: 40, column: 3, scope: !4372)
!4380 = distinct !DISubprogram(name: "rpl_fopen", scope: !815, file: !815, line: 46, type: !4381, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4417)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!4383, !138, !138}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4385, file: !218, line: 51, baseType: !78, size: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4385, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4385, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4385, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4385, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4385, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4385, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4385, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4385, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4385, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4385, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4385, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4385, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4385, file: !218, line: 70, baseType: !4401, size: 64, offset: 832)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4385, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4385, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4385, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4385, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4385, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4385, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4385, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4385, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4385, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4385, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4385, file: !218, line: 93, baseType: !4401, size: 64, offset: 1344)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4385, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4385, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4385, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4385, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!4417 = !{!4418, !4419, !4420, !4421, !4422, !4423, !4427, !4429, !4430, !4435, !4438, !4439}
!4418 = !DILocalVariable(name: "filename", arg: 1, scope: !4380, file: !815, line: 46, type: !138)
!4419 = !DILocalVariable(name: "mode", arg: 2, scope: !4380, file: !815, line: 46, type: !138)
!4420 = !DILocalVariable(name: "open_direction", scope: !4380, file: !815, line: 54, type: !78)
!4421 = !DILocalVariable(name: "open_flags", scope: !4380, file: !815, line: 55, type: !78)
!4422 = !DILocalVariable(name: "open_flags_gnu", scope: !4380, file: !815, line: 57, type: !172)
!4423 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4380, file: !815, line: 59, type: !4424)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4425)
!4425 = !{!4426}
!4426 = !DISubrange(count: 81)
!4427 = !DILocalVariable(name: "p", scope: !4428, file: !815, line: 62, type: !138)
!4428 = distinct !DILexicalBlock(scope: !4380, file: !815, line: 61, column: 3)
!4429 = !DILocalVariable(name: "q", scope: !4428, file: !815, line: 64, type: !132)
!4430 = !DILocalVariable(name: "len", scope: !4431, file: !815, line: 128, type: !135)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !815, line: 127, column: 9)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !815, line: 68, column: 7)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !815, line: 67, column: 5)
!4434 = distinct !DILexicalBlock(scope: !4428, file: !815, line: 67, column: 5)
!4435 = !DILocalVariable(name: "fd", scope: !4436, file: !815, line: 199, type: !78)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !815, line: 198, column: 5)
!4437 = distinct !DILexicalBlock(scope: !4380, file: !815, line: 197, column: 7)
!4438 = !DILocalVariable(name: "fp", scope: !4436, file: !815, line: 204, type: !4383)
!4439 = !DILocalVariable(name: "saved_errno", scope: !4440, file: !815, line: 207, type: !78)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !815, line: 206, column: 9)
!4441 = distinct !DILexicalBlock(scope: !4436, file: !815, line: 205, column: 11)
!4442 = !DILocation(line: 0, scope: !4380)
!4443 = !DILocation(line: 59, column: 3, scope: !4380)
!4444 = !DILocation(line: 59, column: 8, scope: !4380)
!4445 = !DILocation(line: 0, scope: !4428)
!4446 = !DILocation(line: 67, column: 5, scope: !4428)
!4447 = !DILocation(line: 54, column: 7, scope: !4380)
!4448 = !DILocation(line: 67, column: 12, scope: !4433)
!4449 = !DILocation(line: 67, column: 5, scope: !4434)
!4450 = !DILocation(line: 74, column: 19, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !815, line: 74, column: 17)
!4452 = distinct !DILexicalBlock(scope: !4432, file: !815, line: 70, column: 11)
!4453 = !DILocation(line: 74, column: 17, scope: !4452)
!4454 = !DILocation(line: 75, column: 17, scope: !4451)
!4455 = !DILocation(line: 75, column: 20, scope: !4451)
!4456 = !DILocation(line: 75, column: 15, scope: !4451)
!4457 = !DILocation(line: 80, column: 24, scope: !4452)
!4458 = !DILocation(line: 82, column: 19, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4452, file: !815, line: 82, column: 17)
!4460 = !DILocation(line: 82, column: 17, scope: !4452)
!4461 = !DILocation(line: 83, column: 17, scope: !4459)
!4462 = !DILocation(line: 83, column: 20, scope: !4459)
!4463 = !DILocation(line: 83, column: 15, scope: !4459)
!4464 = !DILocation(line: 88, column: 24, scope: !4452)
!4465 = !DILocation(line: 90, column: 19, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4452, file: !815, line: 90, column: 17)
!4467 = !DILocation(line: 90, column: 17, scope: !4452)
!4468 = !DILocation(line: 91, column: 17, scope: !4466)
!4469 = !DILocation(line: 91, column: 20, scope: !4466)
!4470 = !DILocation(line: 91, column: 15, scope: !4466)
!4471 = !DILocation(line: 100, column: 19, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4452, file: !815, line: 100, column: 17)
!4473 = !DILocation(line: 100, column: 17, scope: !4452)
!4474 = !DILocation(line: 101, column: 17, scope: !4472)
!4475 = !DILocation(line: 101, column: 20, scope: !4472)
!4476 = !DILocation(line: 101, column: 15, scope: !4472)
!4477 = !DILocation(line: 107, column: 19, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4452, file: !815, line: 107, column: 17)
!4479 = !DILocation(line: 107, column: 17, scope: !4452)
!4480 = !DILocation(line: 108, column: 17, scope: !4478)
!4481 = !DILocation(line: 108, column: 20, scope: !4478)
!4482 = !DILocation(line: 108, column: 15, scope: !4478)
!4483 = !DILocation(line: 113, column: 24, scope: !4452)
!4484 = !DILocation(line: 115, column: 13, scope: !4452)
!4485 = !DILocation(line: 117, column: 24, scope: !4452)
!4486 = !DILocation(line: 119, column: 13, scope: !4452)
!4487 = !DILocation(line: 128, column: 24, scope: !4431)
!4488 = !DILocation(line: 0, scope: !4431)
!4489 = !DILocation(line: 129, column: 48, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4431, file: !815, line: 129, column: 15)
!4491 = !DILocation(line: 129, column: 15, scope: !4431)
!4492 = !DILocalVariable(name: "__dest", arg: 1, scope: !4493, file: !1234, line: 26, type: !1237)
!4493 = distinct !DISubprogram(name: "memcpy", scope: !1234, file: !1234, line: 26, type: !1235, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4494)
!4494 = !{!4492, !4495, !4496}
!4495 = !DILocalVariable(name: "__src", arg: 2, scope: !4493, file: !1234, line: 26, type: !1059)
!4496 = !DILocalVariable(name: "__len", arg: 3, scope: !4493, file: !1234, line: 26, type: !135)
!4497 = !DILocation(line: 0, scope: !4493, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 131, column: 11, scope: !4431)
!4499 = !DILocation(line: 29, column: 10, scope: !4493, inlinedAt: !4498)
!4500 = !DILocation(line: 132, column: 13, scope: !4431)
!4501 = !DILocation(line: 135, column: 9, scope: !4432)
!4502 = !DILocation(line: 67, column: 25, scope: !4433)
!4503 = !DILocation(line: 67, column: 5, scope: !4433)
!4504 = distinct !{!4504, !4449, !4505, !962}
!4505 = !DILocation(line: 136, column: 7, scope: !4434)
!4506 = !DILocation(line: 138, column: 8, scope: !4428)
!4507 = !DILocation(line: 197, column: 7, scope: !4380)
!4508 = !DILocation(line: 199, column: 47, scope: !4436)
!4509 = !DILocation(line: 199, column: 16, scope: !4436)
!4510 = !DILocation(line: 0, scope: !4436)
!4511 = !DILocation(line: 201, column: 14, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4436, file: !815, line: 201, column: 11)
!4513 = !DILocation(line: 201, column: 11, scope: !4436)
!4514 = !DILocation(line: 204, column: 18, scope: !4436)
!4515 = !DILocation(line: 205, column: 14, scope: !4441)
!4516 = !DILocation(line: 205, column: 11, scope: !4436)
!4517 = !DILocation(line: 207, column: 29, scope: !4440)
!4518 = !DILocation(line: 0, scope: !4440)
!4519 = !DILocation(line: 208, column: 11, scope: !4440)
!4520 = !DILocation(line: 209, column: 17, scope: !4440)
!4521 = !DILocation(line: 210, column: 9, scope: !4440)
!4522 = !DILocalVariable(name: "filename", arg: 1, scope: !4523, file: !815, line: 30, type: !138)
!4523 = distinct !DISubprogram(name: "orig_fopen", scope: !815, file: !815, line: 30, type: !4381, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4524)
!4524 = !{!4522, !4525}
!4525 = !DILocalVariable(name: "mode", arg: 2, scope: !4523, file: !815, line: 30, type: !138)
!4526 = !DILocation(line: 0, scope: !4523, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 219, column: 10, scope: !4380)
!4528 = !DILocation(line: 32, column: 10, scope: !4523, inlinedAt: !4527)
!4529 = !DILocation(line: 219, column: 3, scope: !4380)
!4530 = !DILocation(line: 220, column: 1, scope: !4380)
!4531 = !DISubprogram(name: "open", scope: !2034, file: !2034, line: 181, type: !4532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!78, !138, !78, null}
!4534 = !DISubprogram(name: "fdopen", scope: !455, file: !455, line: 293, type: !4535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!4383, !78, !138}
!4537 = !DISubprogram(name: "close", scope: !1890, file: !1890, line: 358, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!4538 = !DISubprogram(name: "fopen", scope: !455, file: !455, line: 258, type: !4539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!4383, !906, !906}
!4541 = distinct !DISubprogram(name: "close_stream", scope: !817, file: !817, line: 55, type: !4542, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4578)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!78, !4544}
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !4546)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !4547)
!4547 = !{!4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4546, file: !218, line: 51, baseType: !78, size: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4546, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4546, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4546, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4546, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4546, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4546, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4546, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4546, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4546, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4546, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4546, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4546, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4546, file: !218, line: 70, baseType: !4562, size: 64, offset: 832)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4546, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4546, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4546, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4546, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4546, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4546, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4546, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4546, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4546, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4546, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4546, file: !218, line: 93, baseType: !4562, size: 64, offset: 1344)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4546, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4546, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4546, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4546, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!4578 = !{!4579, !4580, !4582, !4583}
!4579 = !DILocalVariable(name: "stream", arg: 1, scope: !4541, file: !817, line: 55, type: !4544)
!4580 = !DILocalVariable(name: "some_pending", scope: !4541, file: !817, line: 57, type: !4581)
!4581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!4582 = !DILocalVariable(name: "prev_fail", scope: !4541, file: !817, line: 58, type: !4581)
!4583 = !DILocalVariable(name: "fclose_fail", scope: !4541, file: !817, line: 59, type: !4581)
!4584 = !DILocation(line: 0, scope: !4541)
!4585 = !DILocation(line: 57, column: 30, scope: !4541)
!4586 = !DILocalVariable(name: "__stream", arg: 1, scope: !4587, file: !1338, line: 135, type: !4544)
!4587 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1338, file: !1338, line: 135, type: !4542, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4588)
!4588 = !{!4586}
!4589 = !DILocation(line: 0, scope: !4587, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 58, column: 27, scope: !4541)
!4591 = !DILocation(line: 137, column: 10, scope: !4587, inlinedAt: !4590)
!4592 = !DILocation(line: 58, column: 43, scope: !4541)
!4593 = !DILocation(line: 59, column: 29, scope: !4541)
!4594 = !DILocation(line: 59, column: 45, scope: !4541)
!4595 = !DILocation(line: 69, column: 17, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4541, file: !817, line: 69, column: 7)
!4597 = !DILocation(line: 57, column: 50, scope: !4541)
!4598 = !DILocation(line: 69, column: 33, scope: !4596)
!4599 = !DILocation(line: 69, column: 53, scope: !4596)
!4600 = !DILocation(line: 69, column: 59, scope: !4596)
!4601 = !DILocation(line: 69, column: 7, scope: !4541)
!4602 = !DILocation(line: 71, column: 11, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4596, file: !817, line: 70, column: 5)
!4604 = !DILocation(line: 72, column: 9, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4603, file: !817, line: 71, column: 11)
!4606 = !DILocation(line: 72, column: 15, scope: !4605)
!4607 = !DILocation(line: 77, column: 1, scope: !4541)
!4608 = !DISubprogram(name: "__fpending", scope: !2238, file: !2238, line: 75, type: !4609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!135, !4544}
!4611 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !741, file: !741, line: 100, type: !4612, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !4615)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!135, !1292, !138, !135, !4614}
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!4615 = !{!4616, !4617, !4618, !4619, !4620}
!4616 = !DILocalVariable(name: "pwc", arg: 1, scope: !4611, file: !741, line: 100, type: !1292)
!4617 = !DILocalVariable(name: "s", arg: 2, scope: !4611, file: !741, line: 100, type: !138)
!4618 = !DILocalVariable(name: "n", arg: 3, scope: !4611, file: !741, line: 100, type: !135)
!4619 = !DILocalVariable(name: "ps", arg: 4, scope: !4611, file: !741, line: 100, type: !4614)
!4620 = !DILocalVariable(name: "ret", scope: !4611, file: !741, line: 130, type: !135)
!4621 = !DILocation(line: 0, scope: !4611)
!4622 = !DILocation(line: 105, column: 9, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4611, file: !741, line: 105, column: 7)
!4624 = !DILocation(line: 105, column: 7, scope: !4611)
!4625 = !DILocation(line: 117, column: 10, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4611, file: !741, line: 117, column: 7)
!4627 = !DILocation(line: 117, column: 7, scope: !4611)
!4628 = !DILocation(line: 130, column: 16, scope: !4611)
!4629 = !DILocation(line: 135, column: 11, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4611, file: !741, line: 135, column: 7)
!4631 = !DILocation(line: 135, column: 25, scope: !4630)
!4632 = !DILocation(line: 135, column: 30, scope: !4630)
!4633 = !DILocation(line: 135, column: 7, scope: !4611)
!4634 = !DILocalVariable(name: "ps", arg: 1, scope: !4635, file: !2475, line: 1135, type: !4614)
!4635 = distinct !DISubprogram(name: "mbszero", scope: !2475, file: !2475, line: 1135, type: !4636, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !4638)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{null, !4614}
!4638 = !{!4634}
!4639 = !DILocation(line: 0, scope: !4635, inlinedAt: !4640)
!4640 = distinct !DILocation(line: 137, column: 5, scope: !4630)
!4641 = !DILocalVariable(name: "__dest", arg: 1, scope: !4642, file: !1234, line: 57, type: !133)
!4642 = distinct !DISubprogram(name: "memset", scope: !1234, file: !1234, line: 57, type: !2484, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !4643)
!4643 = !{!4641, !4644, !4645}
!4644 = !DILocalVariable(name: "__ch", arg: 2, scope: !4642, file: !1234, line: 57, type: !78)
!4645 = !DILocalVariable(name: "__len", arg: 3, scope: !4642, file: !1234, line: 57, type: !135)
!4646 = !DILocation(line: 0, scope: !4642, inlinedAt: !4647)
!4647 = distinct !DILocation(line: 1137, column: 3, scope: !4635, inlinedAt: !4640)
!4648 = !DILocation(line: 59, column: 10, scope: !4642, inlinedAt: !4647)
!4649 = !DILocation(line: 137, column: 5, scope: !4630)
!4650 = !DILocation(line: 138, column: 11, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4611, file: !741, line: 138, column: 7)
!4652 = !DILocation(line: 138, column: 7, scope: !4611)
!4653 = !DILocation(line: 139, column: 5, scope: !4651)
!4654 = !DILocation(line: 143, column: 26, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4611, file: !741, line: 143, column: 7)
!4656 = !DILocation(line: 143, column: 41, scope: !4655)
!4657 = !DILocation(line: 143, column: 7, scope: !4611)
!4658 = !DILocation(line: 145, column: 15, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !741, line: 145, column: 11)
!4660 = distinct !DILexicalBlock(scope: !4655, file: !741, line: 144, column: 5)
!4661 = !DILocation(line: 145, column: 11, scope: !4660)
!4662 = !DILocation(line: 146, column: 32, scope: !4659)
!4663 = !DILocation(line: 146, column: 16, scope: !4659)
!4664 = !DILocation(line: 146, column: 14, scope: !4659)
!4665 = !DILocation(line: 146, column: 9, scope: !4659)
!4666 = !DILocation(line: 286, column: 1, scope: !4611)
!4667 = !DISubprogram(name: "mbsinit", scope: !4668, file: !4668, line: 293, type: !4669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !855)
!4668 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!78, !4671}
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!4673 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !819, file: !819, line: 27, type: !3941, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4674)
!4674 = !{!4675, !4676, !4677, !4678}
!4675 = !DILocalVariable(name: "ptr", arg: 1, scope: !4673, file: !819, line: 27, type: !133)
!4676 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4673, file: !819, line: 27, type: !135)
!4677 = !DILocalVariable(name: "size", arg: 3, scope: !4673, file: !819, line: 27, type: !135)
!4678 = !DILocalVariable(name: "nbytes", scope: !4673, file: !819, line: 29, type: !135)
!4679 = !DILocation(line: 0, scope: !4673)
!4680 = !DILocation(line: 30, column: 7, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4673, file: !819, line: 30, column: 7)
!4682 = !DILocalVariable(name: "ptr", arg: 1, scope: !4683, file: !4033, line: 2057, type: !133)
!4683 = distinct !DISubprogram(name: "rpl_realloc", scope: !4033, file: !4033, line: 2057, type: !4025, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4684)
!4684 = !{!4682, !4685}
!4685 = !DILocalVariable(name: "size", arg: 2, scope: !4683, file: !4033, line: 2057, type: !135)
!4686 = !DILocation(line: 0, scope: !4683, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 37, column: 10, scope: !4673)
!4688 = !DILocation(line: 2059, column: 24, scope: !4683, inlinedAt: !4687)
!4689 = !DILocation(line: 2059, column: 10, scope: !4683, inlinedAt: !4687)
!4690 = !DILocation(line: 37, column: 3, scope: !4673)
!4691 = !DILocation(line: 32, column: 7, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4681, file: !819, line: 31, column: 5)
!4693 = !DILocation(line: 32, column: 13, scope: !4692)
!4694 = !DILocation(line: 33, column: 7, scope: !4692)
!4695 = !DILocation(line: 38, column: 1, scope: !4673)
!4696 = distinct !DISubprogram(name: "hard_locale", scope: !759, file: !759, line: 28, type: !4697, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4699)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!172, !78}
!4699 = !{!4700, !4701}
!4700 = !DILocalVariable(name: "category", arg: 1, scope: !4696, file: !759, line: 28, type: !78)
!4701 = !DILocalVariable(name: "locale", scope: !4696, file: !759, line: 30, type: !4702)
!4702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4703)
!4703 = !{!4704}
!4704 = !DISubrange(count: 257)
!4705 = !DILocation(line: 0, scope: !4696)
!4706 = !DILocation(line: 30, column: 3, scope: !4696)
!4707 = !DILocation(line: 30, column: 8, scope: !4696)
!4708 = !DILocation(line: 32, column: 7, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4696, file: !759, line: 32, column: 7)
!4710 = !DILocation(line: 32, column: 7, scope: !4696)
!4711 = !DILocalVariable(name: "__s1", arg: 1, scope: !4712, file: !928, line: 1359, type: !138)
!4712 = distinct !DISubprogram(name: "streq", scope: !928, file: !928, line: 1359, type: !929, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4713)
!4713 = !{!4711, !4714}
!4714 = !DILocalVariable(name: "__s2", arg: 2, scope: !4712, file: !928, line: 1359, type: !138)
!4715 = !DILocation(line: 0, scope: !4712, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 35, column: 9, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4696, file: !759, line: 35, column: 7)
!4718 = !DILocation(line: 1361, column: 11, scope: !4712, inlinedAt: !4716)
!4719 = !DILocation(line: 1361, column: 10, scope: !4712, inlinedAt: !4716)
!4720 = !DILocation(line: 35, column: 29, scope: !4717)
!4721 = !DILocation(line: 0, scope: !4712, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 35, column: 32, scope: !4717)
!4723 = !DILocation(line: 1361, column: 11, scope: !4712, inlinedAt: !4722)
!4724 = !DILocation(line: 1361, column: 10, scope: !4712, inlinedAt: !4722)
!4725 = !DILocation(line: 35, column: 7, scope: !4696)
!4726 = !DILocation(line: 46, column: 3, scope: !4696)
!4727 = !DILocation(line: 47, column: 1, scope: !4696)
!4728 = distinct !DISubprogram(name: "setlocale_null_r", scope: !824, file: !824, line: 154, type: !4729, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4731)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!78, !78, !132, !135}
!4731 = !{!4732, !4733, !4734}
!4732 = !DILocalVariable(name: "category", arg: 1, scope: !4728, file: !824, line: 154, type: !78)
!4733 = !DILocalVariable(name: "buf", arg: 2, scope: !4728, file: !824, line: 154, type: !132)
!4734 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4728, file: !824, line: 154, type: !135)
!4735 = !DILocation(line: 0, scope: !4728)
!4736 = !DILocation(line: 159, column: 10, scope: !4728)
!4737 = !DILocation(line: 159, column: 3, scope: !4728)
!4738 = distinct !DISubprogram(name: "setlocale_null", scope: !824, file: !824, line: 186, type: !4739, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4741)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!138, !78}
!4741 = !{!4742}
!4742 = !DILocalVariable(name: "category", arg: 1, scope: !4738, file: !824, line: 186, type: !78)
!4743 = !DILocation(line: 0, scope: !4738)
!4744 = !DILocation(line: 189, column: 10, scope: !4738)
!4745 = !DILocation(line: 189, column: 3, scope: !4738)
!4746 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !826, file: !826, line: 35, type: !4739, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4747)
!4747 = !{!4748, !4749}
!4748 = !DILocalVariable(name: "category", arg: 1, scope: !4746, file: !826, line: 35, type: !78)
!4749 = !DILocalVariable(name: "result", scope: !4746, file: !826, line: 37, type: !138)
!4750 = !DILocation(line: 0, scope: !4746)
!4751 = !DILocation(line: 37, column: 24, scope: !4746)
!4752 = !DILocation(line: 62, column: 3, scope: !4746)
!4753 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !826, file: !826, line: 66, type: !4729, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759}
!4755 = !DILocalVariable(name: "category", arg: 1, scope: !4753, file: !826, line: 66, type: !78)
!4756 = !DILocalVariable(name: "buf", arg: 2, scope: !4753, file: !826, line: 66, type: !132)
!4757 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4753, file: !826, line: 66, type: !135)
!4758 = !DILocalVariable(name: "result", scope: !4753, file: !826, line: 111, type: !138)
!4759 = !DILocalVariable(name: "length", scope: !4760, file: !826, line: 125, type: !135)
!4760 = distinct !DILexicalBlock(scope: !4761, file: !826, line: 124, column: 5)
!4761 = distinct !DILexicalBlock(scope: !4753, file: !826, line: 113, column: 7)
!4762 = !DILocation(line: 0, scope: !4753)
!4763 = !DILocation(line: 0, scope: !4746, inlinedAt: !4764)
!4764 = distinct !DILocation(line: 111, column: 24, scope: !4753)
!4765 = !DILocation(line: 37, column: 24, scope: !4746, inlinedAt: !4764)
!4766 = !DILocation(line: 113, column: 14, scope: !4761)
!4767 = !DILocation(line: 113, column: 7, scope: !4753)
!4768 = !DILocation(line: 116, column: 19, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4770, file: !826, line: 116, column: 11)
!4770 = distinct !DILexicalBlock(scope: !4761, file: !826, line: 114, column: 5)
!4771 = !DILocation(line: 116, column: 11, scope: !4770)
!4772 = !DILocation(line: 120, column: 16, scope: !4769)
!4773 = !DILocation(line: 120, column: 9, scope: !4769)
!4774 = !DILocation(line: 125, column: 23, scope: !4760)
!4775 = !DILocation(line: 0, scope: !4760)
!4776 = !DILocation(line: 126, column: 18, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4760, file: !826, line: 126, column: 11)
!4778 = !DILocation(line: 126, column: 11, scope: !4760)
!4779 = !DILocation(line: 128, column: 39, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4777, file: !826, line: 127, column: 9)
!4781 = !DILocalVariable(name: "__dest", arg: 1, scope: !4782, file: !1234, line: 26, type: !1237)
!4782 = distinct !DISubprogram(name: "memcpy", scope: !1234, file: !1234, line: 26, type: !1235, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4783)
!4783 = !{!4781, !4784, !4785}
!4784 = !DILocalVariable(name: "__src", arg: 2, scope: !4782, file: !1234, line: 26, type: !1059)
!4785 = !DILocalVariable(name: "__len", arg: 3, scope: !4782, file: !1234, line: 26, type: !135)
!4786 = !DILocation(line: 0, scope: !4782, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 128, column: 11, scope: !4780)
!4788 = !DILocation(line: 29, column: 10, scope: !4782, inlinedAt: !4787)
!4789 = !DILocation(line: 129, column: 11, scope: !4780)
!4790 = !DILocation(line: 133, column: 23, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !826, line: 133, column: 15)
!4792 = distinct !DILexicalBlock(scope: !4777, file: !826, line: 132, column: 9)
!4793 = !DILocation(line: 133, column: 15, scope: !4792)
!4794 = !DILocation(line: 138, column: 44, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4791, file: !826, line: 134, column: 13)
!4796 = !DILocation(line: 0, scope: !4782, inlinedAt: !4797)
!4797 = distinct !DILocation(line: 138, column: 15, scope: !4795)
!4798 = !DILocation(line: 29, column: 10, scope: !4782, inlinedAt: !4797)
!4799 = !DILocation(line: 139, column: 15, scope: !4795)
!4800 = !DILocation(line: 139, column: 32, scope: !4795)
!4801 = !DILocation(line: 140, column: 13, scope: !4795)
!4802 = !DILocation(line: 0, scope: !4761)
!4803 = !DILocation(line: 145, column: 1, scope: !4753)
