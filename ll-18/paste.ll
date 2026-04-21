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
@serial_merge = internal unnamed_addr global i1 false, align 1, !dbg !417
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !418
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !148
@.str.16 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1, !dbg !153
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !158
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !163
@.str.19 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1, !dbg !165
@delims = internal unnamed_addr global ptr null, align 8, !dbg !175
@delim_lens = internal unnamed_addr global ptr null, align 8, !dbg !177
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !419
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
@.str.62 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !396
@.str.63 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !398
@.str.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !400
@.str.65 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1, !dbg !402
@switch.table.main = private unnamed_addr constant [14 x i8] c"\\\08\08\08\08\0C\08\08\08\0A\08\0D\09\0B", align 4
@.str.26 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !420
@Version = dso_local local_unnamed_addr global ptr @.str.26, align 8, !dbg !423
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !427
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !440
@.str.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !432
@.str.1.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !434
@.str.2.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !436
@.str.3.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !438
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !442
@stderr = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !448
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !484
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !450
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
@.str.88 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !641
@.str.1.89 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !644
@.str.2.90 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !646
@.str.3.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !648
@.str.4.92 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !650
@.str.5.93 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !652
@.str.6.94 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !657
@.str.7.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !662
@.str.8.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !664
@.str.9.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !669
@.str.10.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !674
@.str.11.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !679
@.str.12.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !684
@.str.13.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !686
@.str.14.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !691
@.str.15.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !696
@.str.16.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !698
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.109 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !703
@.str.18.110 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !705
@.str.19.111 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !707
@.str.20.112 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !709
@.str.21.113 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !711
@.str.22.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !713
@.str.23.115 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !715
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !720
@exit_failure = dso_local global i32 1, align 4, !dbg !728
@.str.134 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !734
@.str.1.132 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !737
@.str.2.133 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !739
@.str.141 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !741
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !744
@.str.146 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !759
@.str.1.147 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !762

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !841 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !845, metadata !DIExpression()), !dbg !846
  %2 = icmp eq i32 %0, 0, !dbg !847
  br i1 %2, label %8, label %3, !dbg !849

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !850, !tbaa !852
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !850
  %6 = load ptr, ptr @program_name, align 8, !dbg !850, !tbaa !852
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !850
  br label %40, !dbg !850

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !856
  %10 = load ptr, ptr @program_name, align 8, !dbg !856, !tbaa !852
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !856
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !858
  %13 = load ptr, ptr @stdout, align 8, !dbg !858, !tbaa !852
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !858
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !859
  %16 = load ptr, ptr @stdout, align 8, !dbg !859, !tbaa !852
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !859
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #38, !dbg !862
  %19 = load ptr, ptr @stdout, align 8, !dbg !862, !tbaa !852
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !862
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !865
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !865
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !866
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !866
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !867
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !867
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !868
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !868
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !869
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !869
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata !889, metadata !883, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr poison, metadata !882, metadata !DIExpression()), !dbg !887
  tail call void @emit_bug_reporting_address() #38, !dbg !890
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !891
  call void @llvm.dbg.value(metadata ptr %26, metadata !885, metadata !DIExpression()), !dbg !887
  %27 = icmp eq ptr %26, null, !dbg !892
  br i1 %27, label %35, label %28, !dbg !894

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #39, !dbg !895
  %30 = icmp eq i32 %29, 0, !dbg !895
  br i1 %30, label %35, label %31, !dbg !896

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #38, !dbg !897
  %33 = load ptr, ptr @stdout, align 8, !dbg !897, !tbaa !852
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !897
  br label %35, !dbg !899

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !886, metadata !DIExpression()), !dbg !887
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !900
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #38, !dbg !900
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !901
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #38, !dbg !901
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !902
  unreachable, !dbg !902
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !903 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !907 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !913 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !916 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !192 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !196, metadata !DIExpression()), !dbg !919
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !197, metadata !DIExpression()), !dbg !919
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !920, !tbaa !921
  %3 = icmp eq i32 %2, -1, !dbg !923
  br i1 %3, label %4, label %16, !dbg !924

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #38, !dbg !925
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !198, metadata !DIExpression()), !dbg !926
  %6 = icmp eq ptr %5, null, !dbg !927
  br i1 %6, label %14, label %7, !dbg !928

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !929, !tbaa !930
  %9 = icmp eq i8 %8, 0, !dbg !929
  br i1 %9, label %14, label %10, !dbg !931

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !932, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !938, metadata !DIExpression()), !dbg !939
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #39, !dbg !941
  %12 = icmp eq i32 %11, 0, !dbg !942
  %13 = zext i1 %12 to i32, !dbg !931
  br label %14, !dbg !931

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !943, !tbaa !921
  br label %16, !dbg !944

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !945
  %18 = icmp eq i32 %17, 0, !dbg !945
  br i1 %18, label %22, label %19, !dbg !947

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !948, !tbaa !852
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !948
  br label %121, !dbg !950

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !201, metadata !DIExpression()), !dbg !919
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #39, !dbg !951
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !952
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !202, metadata !DIExpression()), !dbg !919
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !953
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !203, metadata !DIExpression()), !dbg !919
  %26 = icmp eq ptr %25, null, !dbg !954
  br i1 %26, label %53, label %27, !dbg !955

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !956
  br i1 %28, label %53, label %29, !dbg !957

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !204, metadata !DIExpression()), !dbg !958
  tail call void @llvm.dbg.value(metadata i64 0, metadata !208, metadata !DIExpression()), !dbg !958
  %30 = icmp ult ptr %24, %25, !dbg !959
  br i1 %30, label %31, label %53, !dbg !960

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !919
  %33 = load ptr, ptr %32, align 8, !tbaa !852
  br label %34, !dbg !960

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !204, metadata !DIExpression()), !dbg !958
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !208, metadata !DIExpression()), !dbg !958
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !961
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !204, metadata !DIExpression()), !dbg !958
  %38 = load i8, ptr %35, align 1, !dbg !961, !tbaa !930
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !961
  %41 = load i16, ptr %40, align 2, !dbg !961, !tbaa !962
  %42 = freeze i16 %41, !dbg !964
  %43 = lshr i16 %42, 13, !dbg !964
  %44 = and i16 %43, 1, !dbg !964
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !965
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !208, metadata !DIExpression()), !dbg !958
  %47 = icmp ult ptr %37, %25, !dbg !959
  %48 = icmp ult i64 %46, 2, !dbg !966
  %49 = select i1 %47, i1 %48, i1 false, !dbg !966
  br i1 %49, label %34, label %50, !dbg !960, !llvm.loop !967

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !965
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !969
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !971
  br label %53, !dbg !971

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !919
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !201, metadata !DIExpression()), !dbg !919
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !203, metadata !DIExpression()), !dbg !919
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.25) #39, !dbg !972
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !209, metadata !DIExpression()), !dbg !919
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !973
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !210, metadata !DIExpression()), !dbg !919
  br label %58, !dbg !974

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !919
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !201, metadata !DIExpression()), !dbg !919
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !210, metadata !DIExpression()), !dbg !919
  %61 = load i8, ptr %59, align 1, !dbg !975, !tbaa !930
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !976

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !977
  %64 = load i8, ptr %63, align 1, !dbg !980, !tbaa !930
  %65 = icmp ne i8 %64, 45, !dbg !981
  %66 = select i1 %65, i1 %60, i1 false, !dbg !982
  br label %67, !dbg !982

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !201, metadata !DIExpression()), !dbg !919
  %69 = tail call ptr @__ctype_b_loc() #41, !dbg !983
  %70 = load ptr, ptr %69, align 8, !dbg !983, !tbaa !852
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !983
  %73 = load i16, ptr %72, align 2, !dbg !983, !tbaa !962
  %74 = and i16 %73, 8192, !dbg !983
  %75 = icmp eq i16 %74, 0, !dbg !983
  br i1 %75, label %89, label %76, !dbg !985

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !986
  br i1 %77, label %91, label %78, !dbg !989

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !990
  %80 = load i8, ptr %79, align 1, !dbg !990, !tbaa !930
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !990
  %83 = load i16, ptr %82, align 2, !dbg !990, !tbaa !962
  %84 = and i16 %83, 8192, !dbg !990
  %85 = icmp eq i16 %84, 0, !dbg !990
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !991
  br i1 %88, label %89, label %91, !dbg !991

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !992
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !210, metadata !DIExpression()), !dbg !919
  br label %58, !dbg !974, !llvm.loop !993

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !919
  %92 = ptrtoint ptr %24 to i64, !dbg !995
  %93 = load ptr, ptr @stdout, align 8, !dbg !995, !tbaa !852
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !932, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata !889, metadata !938, metadata !DIExpression()), !dbg !1014
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !267, metadata !DIExpression()), !dbg !919
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #39, !dbg !1016
  %96 = icmp eq i32 %95, 0, !dbg !1016
  br i1 %96, label %100, label %97, !dbg !1018

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #39, !dbg !1019
  %99 = icmp eq i32 %98, 0, !dbg !1019
  br i1 %99, label %100, label %103, !dbg !1020

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1021
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #38, !dbg !1021
  br label %106, !dbg !1023

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1024
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #38, !dbg !1024
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !852
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %107), !dbg !1026
  %109 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !852
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %109), !dbg !1027
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1028
  %112 = sub i64 %111, %92, !dbg !1028
  %113 = load ptr, ptr @stdout, align 8, !dbg !1028, !tbaa !852
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1028
  %115 = load ptr, ptr @stdout, align 8, !dbg !1029, !tbaa !852
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %115), !dbg !1029
  %117 = load ptr, ptr @stdout, align 8, !dbg !1030, !tbaa !852
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %117), !dbg !1030
  %119 = load ptr, ptr @stdout, align 8, !dbg !1031, !tbaa !852
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1031
  br label %121, !dbg !1032

121:                                              ; preds = %106, %19
  ret void, !dbg !1032
}

; Function Attrs: nounwind
declare !dbg !1033 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1037 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1041 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1043 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1046 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1049 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1052 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1055 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1061 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1062 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1068 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1079
  %4 = alloca i32, align 4, !DIAssignID !1080
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1073, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1074, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1076, metadata !DIExpression()), !dbg !1081
  %5 = load ptr, ptr %1, align 8, !dbg !1082, !tbaa !852
  tail call void @set_program_name(ptr noundef %5) #38, !dbg !1083
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #38, !dbg !1084
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #38, !dbg !1085
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #38, !dbg !1086
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1087
  br label %10, !dbg !1088

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %18, %14 ], [ @.str.9, %2 ]
  br label %12, !dbg !1088

12:                                               ; preds = %21, %10
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1076, metadata !DIExpression()), !dbg !1081
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1089
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1075, metadata !DIExpression()), !dbg !1081
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 100, label %14
    i32 115, label %19
    i32 122, label %20
    i32 -2, label %22
    i32 -3, label %23
  ], !dbg !1088

14:                                               ; preds = %12
  %15 = load ptr, ptr @optarg, align 8, !dbg !1090
  %16 = load i8, ptr %15, align 1, !dbg !1090, !tbaa !930
  %17 = icmp eq i8 %16, 0, !dbg !1093
  %18 = select i1 %17, ptr @.str.14, ptr %15, !dbg !1090
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !1076, metadata !DIExpression()), !dbg !1081
  br label %10, !dbg !1094, !llvm.loop !1095

19:                                               ; preds = %12
  store i1 true, ptr @serial_merge, align 1, !dbg !1097
  br label %21, !dbg !1098

20:                                               ; preds = %12
  store i1 true, ptr @line_delim, align 1, !dbg !1099
  br label %21, !dbg !1100

21:                                               ; preds = %20, %19
  br label %12, !dbg !1081, !llvm.loop !1095

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #42, !dbg !1101
  unreachable, !dbg !1101

23:                                               ; preds = %12
  %24 = load ptr, ptr @stdout, align 8, !dbg !1102, !tbaa !852
  %25 = load ptr, ptr @Version, align 8, !dbg !1102, !tbaa !852
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #38, !dbg !1102
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #38, !dbg !1102
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef null) #38, !dbg !1102
  tail call void @exit(i32 noundef 0) #40, !dbg !1102
  unreachable, !dbg !1102

28:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #42, !dbg !1103
  unreachable, !dbg !1103

29:                                               ; preds = %12
  %.lcssa9 = phi ptr [ %11, %12 ]
  %30 = load i32, ptr @optind, align 4, !dbg !1104, !tbaa !921
  %31 = sub nsw i32 %0, %30, !dbg !1105
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1077, metadata !DIExpression()), !dbg !1081
  %32 = icmp eq i32 %31, 0, !dbg !1106
  br i1 %32, label %33, label %36, !dbg !1108

33:                                               ; preds = %29
  %34 = sext i32 %30 to i64, !dbg !1109
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1109
  store ptr @.str.18, ptr %35, align 8, !dbg !1111, !tbaa !852
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1077, metadata !DIExpression()), !dbg !1081
  br label %36, !dbg !1112

36:                                               ; preds = %33, %29
  %37 = phi i32 [ 1, %33 ], [ %31, %29 ], !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !1077, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %.lcssa9, metadata !1113, metadata !DIExpression()), !dbg !1131
  %38 = tail call noalias nonnull ptr @xstrdup(ptr noundef %.lcssa9) #38, !dbg !1134
  call void @llvm.dbg.value(metadata ptr %38, metadata !1118, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8 0, metadata !1119, metadata !DIExpression()), !dbg !1131
  store ptr %38, ptr @delims, align 8, !dbg !1135, !tbaa !852
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa9) #39, !dbg !1136
  %40 = tail call i64 @llvm.umax.i64(i64 %39, i64 1), !dbg !1136
  %41 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %40, i64 noundef 8) #43, !dbg !1137
  store ptr %41, ptr @delim_lens, align 8, !dbg !1138, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %.lcssa9, metadata !1120, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 0, metadata !1121, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata ptr %38, metadata !1118, metadata !DIExpression()), !dbg !1131
  %42 = load i8, ptr %.lcssa9, align 1, !dbg !1139, !tbaa !930
  %43 = icmp eq i8 %42, 0, !dbg !1140
  br i1 %43, label %44, label %.preheader, !dbg !1140

.preheader:                                       ; preds = %36
  br label %45, !dbg !1140

44:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1119, metadata !DIExpression()), !dbg !1131
  store i8 0, ptr %38, align 1, !dbg !1141, !tbaa !930
  store i64 0, ptr %41, align 8, !dbg !1142, !tbaa !1145
  call void @llvm.dbg.value(metadata i64 1, metadata !1121, metadata !DIExpression()), !dbg !1131
  br label %123, !dbg !1147

45:                                               ; preds = %.preheader, %77
  %46 = phi ptr [ %78, %77 ], [ %41, %.preheader ]
  %47 = phi ptr [ %79, %77 ], [ %41, %.preheader ]
  %48 = phi i8 [ %83, %77 ], [ %42, %.preheader ]
  %49 = phi ptr [ %81, %77 ], [ %38, %.preheader ]
  %50 = phi ptr [ %80, %77 ], [ %.lcssa9, %.preheader ]
  %51 = phi i64 [ %82, %77 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata ptr %49, metadata !1118, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata ptr %50, metadata !1120, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %51, metadata !1121, metadata !DIExpression()), !dbg !1131
  %52 = icmp eq i8 %48, 92, !dbg !1148
  br i1 %52, label %53, label %86, !dbg !1150

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1151
  call void @llvm.dbg.value(metadata ptr %54, metadata !1120, metadata !DIExpression()), !dbg !1131
  %55 = load i8, ptr %54, align 1, !dbg !1153, !tbaa !930
  switch i8 %55, label %56 [
    i8 0, label %116
    i8 48, label %71
  ], !dbg !1155

56:                                               ; preds = %53
  %57 = zext i8 %55 to i32, !dbg !1153
  %58 = add nsw i32 %57, -92, !dbg !1156
  %59 = call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 31), !dbg !1156
  %60 = icmp ult i32 %59, 14, !dbg !1156
  br i1 %60, label %61, label %86, !dbg !1156

61:                                               ; preds = %56
  %62 = trunc i32 %59 to i16, !dbg !1156
  %63 = lshr i16 14889, %62, !dbg !1156
  %64 = and i16 %63, 1, !dbg !1156
  %65 = icmp eq i16 %64, 0, !dbg !1156
  br i1 %65, label %86, label %66, !dbg !1156

66:                                               ; preds = %61
  %67 = zext nneg i32 %59 to i64, !dbg !1156
  %68 = getelementptr inbounds [14 x i8], ptr @switch.table.main, i64 0, i64 %67, !dbg !1156
  %69 = load i8, ptr %68, align 1, !dbg !1156
  store i8 %69, ptr %49, align 1, !dbg !1159, !tbaa !930
  %70 = getelementptr inbounds i8, ptr %49, i64 1, !dbg !1159
  call void @llvm.dbg.value(metadata ptr %70, metadata !1118, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata ptr %50, metadata !1120, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %51, metadata !1121, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1131
  br label %71

71:                                               ; preds = %66, %53
  %72 = phi ptr [ %46, %66 ], [ %47, %53 ]
  %73 = phi i64 [ 1, %66 ], [ 0, %53 ]
  %74 = phi ptr [ %70, %66 ], [ %49, %53 ], !dbg !1131
  %75 = getelementptr inbounds i64, ptr %72, i64 %51, !dbg !1161
  store i64 %73, ptr %75, align 8, !dbg !1161, !tbaa !1145
  %76 = getelementptr inbounds i8, ptr %50, i64 2, !dbg !1161
  call void @llvm.dbg.value(metadata ptr %74, metadata !1118, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata ptr %76, metadata !1120, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %51, metadata !1121, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1131
  br label %77, !dbg !1162

77:                                               ; preds = %110, %71
  %78 = phi ptr [ %46, %71 ], [ %114, %110 ]
  %79 = phi ptr [ %72, %71 ], [ %114, %110 ]
  %80 = phi ptr [ %76, %71 ], [ %113, %110 ]
  %81 = phi ptr [ %74, %71 ], [ %112, %110 ]
  %82 = add nuw nsw i64 %51, 1, !dbg !1163
  call void @llvm.dbg.value(metadata ptr %81, metadata !1118, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata ptr %80, metadata !1120, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %82, metadata !1121, metadata !DIExpression()), !dbg !1131
  %83 = load i8, ptr %80, align 1, !dbg !1139, !tbaa !930
  %84 = icmp eq i8 %83, 0, !dbg !1140
  br i1 %84, label %85, label %45, !dbg !1140, !llvm.loop !1164

85:                                               ; preds = %77
  %.lcssa7 = phi ptr [ %81, %77 ]
  %.lcssa6 = phi i64 [ %82, %77 ], !dbg !1163
  call void @llvm.dbg.value(metadata i8 poison, metadata !1119, metadata !DIExpression()), !dbg !1131
  store i8 0, ptr %.lcssa7, align 1, !dbg !1141, !tbaa !930
  call void @llvm.dbg.value(metadata i64 %.lcssa6, metadata !1121, metadata !DIExpression()), !dbg !1131
  br label %123, !dbg !1147

86:                                               ; preds = %61, %56, %45
  %87 = phi i8 [ %48, %45 ], [ %55, %56 ], [ %55, %61 ], !dbg !1166
  %88 = phi ptr [ %50, %45 ], [ %54, %56 ], [ %54, %61 ], !dbg !1131
  call void @llvm.dbg.value(metadata ptr %88, metadata !1120, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.label(metadata !1122), !dbg !1184
  call void @llvm.dbg.value(metadata ptr %88, metadata !1182, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata ptr %88, metadata !1172, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8 0, metadata !1173, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i8 %87, metadata !1187, metadata !DIExpression()), !dbg !1192
  %89 = icmp sgt i8 %87, -1, !dbg !1194
  br i1 %89, label %110, label %90, !dbg !1195

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %88, i64 1, !dbg !1196
  call void @llvm.dbg.value(metadata i32 0, metadata !1175, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %91, metadata !1174, metadata !DIExpression()), !dbg !1186
  %92 = load i8, ptr %91, align 1, !dbg !1198, !tbaa !930
  %93 = icmp ne i8 %92, 0, !dbg !1200
  %94 = zext i1 %93 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94, !dbg !1201
  call void @llvm.dbg.value(metadata i32 1, metadata !1175, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %95, metadata !1174, metadata !DIExpression()), !dbg !1186
  %96 = load i8, ptr %95, align 1, !dbg !1198, !tbaa !930
  %97 = icmp ne i8 %96, 0, !dbg !1200
  %98 = zext i1 %97 to i64
  %99 = getelementptr inbounds i8, ptr %95, i64 %98, !dbg !1201
  call void @llvm.dbg.value(metadata i32 2, metadata !1175, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %99, metadata !1174, metadata !DIExpression()), !dbg !1186
  %100 = load i8, ptr %99, align 1, !dbg !1198, !tbaa !930
  %101 = icmp ne i8 %100, 0, !dbg !1200
  %102 = zext i1 %101 to i64
  %103 = getelementptr inbounds i8, ptr %99, i64 %102, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %103, metadata !1174, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 3, metadata !1175, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1202, metadata !DIExpression(), metadata !1079, metadata ptr %3, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1210, metadata !DIExpression(), metadata !1080, metadata ptr %4, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr %88, metadata !1207, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr %103, metadata !1208, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 %87, metadata !1209, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 %87, metadata !1187, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1227
  store i32 0, ptr %3, align 4, !dbg !1228, !tbaa !1229, !DIAssignID !1231
  call void @llvm.dbg.assign(metadata i32 0, metadata !1202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1231, metadata ptr %3, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1232
  %104 = ptrtoint ptr %103 to i64, !dbg !1233
  %105 = ptrtoint ptr %88 to i64, !dbg !1233
  %106 = sub i64 %104, %105, !dbg !1233
  %107 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %88, i64 noundef %106, ptr noundef nonnull %3) #38, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %107, metadata !1211, metadata !DIExpression()), !dbg !1222
  %108 = icmp slt i64 %107, 0, !dbg !1235
  %109 = select i1 %108, i64 1, i64 %107, !dbg !1237, !prof !1238
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1239
  br label %110

110:                                              ; preds = %90, %86
  %111 = phi i64 [ %109, %90 ], [ 1, %86 ], !dbg !1186
  call void @llvm.dbg.value(metadata i64 %111, metadata !1124, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %111, metadata !1124, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %111, metadata !1124, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1163
  call void @llvm.dbg.value(metadata ptr %49, metadata !1240, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr %88, metadata !1247, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %111, metadata !1248, metadata !DIExpression()), !dbg !1249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %49, ptr noundef nonnull align 1 %88, i64 noundef %111, i1 noundef false) #38, !dbg !1251
  %112 = getelementptr inbounds i8, ptr %49, i64 %111, !dbg !1251
  call void @llvm.dbg.value(metadata ptr %112, metadata !1118, metadata !DIExpression()), !dbg !1131
  %113 = getelementptr inbounds i8, ptr %88, i64 %111, !dbg !1252
  call void @llvm.dbg.value(metadata ptr %113, metadata !1120, metadata !DIExpression()), !dbg !1131
  %114 = load ptr, ptr @delim_lens, align 8, !dbg !1253, !tbaa !852
  call void @llvm.dbg.value(metadata i64 %51, metadata !1121, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1131
  %115 = getelementptr inbounds i64, ptr %114, i64 %51, !dbg !1253
  store i64 %111, ptr %115, align 8, !dbg !1254, !tbaa !1145
  br label %77, !dbg !1140

116:                                              ; preds = %53
  %.lcssa4 = phi ptr [ %46, %53 ]
  %.lcssa2 = phi ptr [ %49, %53 ]
  %.lcssa = phi i64 [ %51, %53 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1119, metadata !DIExpression()), !dbg !1131
  store i8 0, ptr %.lcssa2, align 1, !dbg !1141, !tbaa !930
  %117 = icmp eq i64 %.lcssa, 0, !dbg !1255
  br i1 %117, label %118, label %119, !dbg !1256

118:                                              ; preds = %116
  store i64 0, ptr %.lcssa4, align 8, !dbg !1142, !tbaa !1145
  call void @llvm.dbg.value(metadata i64 1, metadata !1121, metadata !DIExpression()), !dbg !1131
  br label %119, !dbg !1147

119:                                              ; preds = %116, %118
  %120 = phi i64 [ 1, %118 ], [ %.lcssa, %116 ], !dbg !1257
  store i64 %120, ptr @num_delims, align 8, !dbg !1257, !tbaa !1145
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #38, !dbg !1258
  %122 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 6, ptr noundef nonnull %.lcssa9) #38, !dbg !1258
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %121, ptr noundef %122) #38, !dbg !1258
  unreachable, !dbg !1258

123:                                              ; preds = %44, %85
  %124 = phi i64 [ %.lcssa6, %85 ], [ 1, %44 ], !dbg !1257
  store i64 %124, ptr @num_delims, align 8, !dbg !1257, !tbaa !1145
  %125 = load i1, ptr @serial_merge, align 1, !dbg !1260
  %126 = select i1 %125, ptr @paste_serial, ptr @paste_parallel, !dbg !1260
  %127 = sext i32 %37 to i64, !dbg !1261
  %128 = load i32, ptr @optind, align 4, !dbg !1262, !tbaa !921
  %129 = sext i32 %128 to i64, !dbg !1263
  %130 = getelementptr inbounds ptr, ptr %1, i64 %129, !dbg !1263
  %131 = call i1 %126(i64 noundef %127, ptr noundef nonnull %130) #38, !dbg !1264, !callees !1265
  tail call void @llvm.dbg.value(metadata i1 %131, metadata !1078, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1081
  %132 = load ptr, ptr @delims, align 8, !dbg !1266, !tbaa !852
  call void @free(ptr noundef %132) #38, !dbg !1267
  %133 = load ptr, ptr @delim_lens, align 8, !dbg !1268, !tbaa !852
  call void @free(ptr noundef %133) #38, !dbg !1269
  %134 = load i1, ptr @have_read_stdin, align 1, !dbg !1270
  br i1 %134, label %135, label %142, !dbg !1272

135:                                              ; preds = %123
  %136 = load ptr, ptr @stdin, align 8, !dbg !1273, !tbaa !852
  %137 = call i32 @rpl_fclose(ptr noundef %136) #38, !dbg !1274
  %138 = icmp eq i32 %137, -1, !dbg !1275
  br i1 %138, label %139, label %142, !dbg !1276

139:                                              ; preds = %135
  %140 = tail call ptr @__errno_location() #41, !dbg !1277
  %141 = load i32, ptr %140, align 4, !dbg !1277, !tbaa !921
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %141, ptr noundef nonnull @.str.18) #38, !dbg !1277
  unreachable, !dbg !1277

142:                                              ; preds = %135, %123
  %143 = xor i1 %131, true, !dbg !1278
  %144 = zext i1 %143 to i32, !dbg !1278
  ret i32 %144, !dbg !1279
}

; Function Attrs: nounwind
declare !dbg !1280 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1283 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1284 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1287 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1293 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1296 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal i1 @paste_serial(i64 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1303 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1307, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1308, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1309, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1309, metadata !DIExpression()), !dbg !1320
  %3 = icmp eq i64 %0, 0, !dbg !1321
  br i1 %3, label %198, label %.preheader, !dbg !1321

.preheader:                                       ; preds = %2
  br label %4, !dbg !1321

4:                                                ; preds = %.preheader, %193
  %5 = phi i64 [ %195, %193 ], [ %0, %.preheader ]
  %6 = phi ptr [ %196, %193 ], [ %1, %.preheader ]
  %7 = phi i1 [ %194, %193 ], [ true, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1307, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1308, metadata !DIExpression()), !dbg !1320
  %8 = load ptr, ptr %6, align 8, !dbg !1322, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %8, metadata !932, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !938, metadata !DIExpression()), !dbg !1323
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(2) @.str.18) #39, !dbg !1325
  %10 = icmp eq i32 %9, 0, !dbg !1326
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1317, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1327
  br i1 %10, label %11, label %13, !dbg !1328

11:                                               ; preds = %4
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1329
  %12 = load ptr, ptr @stdin, align 8, !dbg !1332, !tbaa !852
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1312, metadata !DIExpression()), !dbg !1320
  br label %20, !dbg !1333

13:                                               ; preds = %4
  %14 = tail call noalias ptr @rpl_fopen(ptr noundef %8, ptr noundef nonnull @.str.62) #38, !dbg !1334
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1312, metadata !DIExpression()), !dbg !1320
  %15 = icmp eq ptr %14, null, !dbg !1336
  br i1 %15, label %16, label %19, !dbg !1338

16:                                               ; preds = %13
  %17 = tail call ptr @__errno_location() #41, !dbg !1339
  %18 = load i32, ptr %17, align 4, !dbg !1339, !tbaa !921
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1309, metadata !DIExpression()), !dbg !1320
  br label %189, !dbg !1341

19:                                               ; preds = %13
  tail call void @fadvise(ptr noundef nonnull %14, i32 noundef 2) #38, !dbg !1342
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi ptr [ %12, %11 ], [ %14, %19 ], !dbg !1343
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1312, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1318, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1319, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %21, metadata !1344, metadata !DIExpression()), !dbg !1350
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 1, !dbg !1352
  %23 = load ptr, ptr %22, align 8, !dbg !1352, !tbaa !1353
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 2, !dbg !1352
  %25 = load ptr, ptr %24, align 8, !dbg !1352, !tbaa !1355
  %26 = icmp ult ptr %23, %25, !dbg !1352
  br i1 %26, label %27, label %32, !dbg !1352, !prof !1356

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1352
  store ptr %28, ptr %22, align 8, !dbg !1352, !tbaa !1353
  %29 = load i8, ptr %23, align 1, !dbg !1352, !tbaa !930
  %30 = zext i8 %29 to i32, !dbg !1352
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !1311, metadata !DIExpression()), !dbg !1320
  %31 = tail call ptr @__errno_location() #41, !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1313, metadata !DIExpression()), !dbg !1327
  br label %36, !dbg !1358

32:                                               ; preds = %20
  %33 = tail call i32 @__uflow(ptr noundef nonnull %21) #38, !dbg !1352
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !1311, metadata !DIExpression()), !dbg !1320
  %34 = tail call ptr @__errno_location() #41, !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1313, metadata !DIExpression()), !dbg !1327
  %35 = icmp eq i32 %33, -1, !dbg !1359
  br i1 %35, label %39, label %36, !dbg !1358

36:                                               ; preds = %27, %32
  %37 = phi ptr [ %31, %27 ], [ %34, %32 ]
  %38 = phi i32 [ %30, %27 ], [ %33, %32 ]
  br label %92, !dbg !1361

39:                                               ; preds = %32
  %40 = load i32, ptr %34, align 4, !dbg !1357, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1313, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1311, metadata !DIExpression()), !dbg !1320
  %41 = load i1, ptr @line_delim, align 1, !dbg !1363
  %42 = select i1 %41, i8 0, i8 10, !dbg !1363
  %43 = zext nneg i8 %42 to i32, !dbg !1363
  br label %147, !dbg !1365

44:                                               ; preds = %110, %92
  %45 = phi i32 [ %93, %92 ], [ %57, %110 ], !dbg !1327
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1319, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1318, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !1311, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata ptr %21, metadata !1344, metadata !DIExpression()), !dbg !1366
  %46 = load ptr, ptr %22, align 8, !dbg !1368, !tbaa !1353
  %47 = load ptr, ptr %24, align 8, !dbg !1368, !tbaa !1355
  %48 = icmp ult ptr %46, %47, !dbg !1368
  br i1 %48, label %49, label %53, !dbg !1368, !prof !1356

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %46, i64 1, !dbg !1368
  store ptr %50, ptr %22, align 8, !dbg !1368, !tbaa !1353
  %51 = load i8, ptr %46, align 1, !dbg !1368, !tbaa !930
  %52 = zext i8 %51 to i32, !dbg !1368
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !1310, metadata !DIExpression()), !dbg !1320
  br label %56, !dbg !1361

53:                                               ; preds = %44
  %54 = tail call i32 @__uflow(ptr noundef nonnull %21) #38, !dbg !1368
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1310, metadata !DIExpression()), !dbg !1320
  %55 = icmp eq i32 %54, -1, !dbg !1369
  br i1 %55, label %119, label %56, !dbg !1361

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %52, %49 ], [ %54, %53 ]
  %58 = load i1, ptr @line_delim, align 1, !dbg !1370
  %59 = select i1 %58, i32 0, i32 10, !dbg !1370
  %60 = icmp eq i32 %45, %59, !dbg !1373
  br i1 %60, label %61, label %96, !dbg !1374

61:                                               ; preds = %56
  %.lcssa3 = phi i32 [ %57, %56 ]
  %62 = load ptr, ptr @delim_lens, align 8, !dbg !1375, !tbaa !852
  %63 = getelementptr inbounds i64, ptr %62, i64 %94, !dbg !1375
  %64 = load i64, ptr %63, align 8, !dbg !1375, !tbaa !1145
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1377, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %64, metadata !1382, metadata !DIExpression()), !dbg !1388
  %65 = icmp eq i64 %64, 0, !dbg !1390
  br i1 %65, label %84, label %66, !dbg !1391

66:                                               ; preds = %61
  %67 = load ptr, ptr @delims, align 8, !dbg !1392, !tbaa !852
  call void @llvm.dbg.value(metadata !DIArgList(ptr %67, i64 %95), metadata !1377, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1388
  %68 = getelementptr inbounds i8, ptr %67, i64 %95, !dbg !1393
  call void @llvm.dbg.value(metadata ptr %68, metadata !1377, metadata !DIExpression()), !dbg !1388
  %69 = load ptr, ptr @stdout, align 8, !dbg !1394, !tbaa !852
  %70 = tail call i64 @fwrite_unlocked(ptr noundef %68, i64 noundef 1, i64 noundef %64, ptr noundef %69), !dbg !1394
  %71 = icmp eq i64 %70, %64, !dbg !1395
  br i1 %71, label %72, label %76, !dbg !1396

72:                                               ; preds = %66
  %73 = load ptr, ptr @delim_lens, align 8, !dbg !1397, !tbaa !852
  %74 = getelementptr inbounds i64, ptr %73, i64 %94
  %75 = load i64, ptr %74, align 8, !dbg !1397, !tbaa !1145
  br label %84, !dbg !1396

76:                                               ; preds = %66
  %.lcssa9 = phi ptr [ %37, %66 ]
  %77 = load i32, ptr %.lcssa9, align 4, !dbg !1398, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %77, metadata !1401, metadata !DIExpression()), !dbg !1403
  %78 = load ptr, ptr @stdout, align 8, !dbg !1404, !tbaa !852
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #38, !dbg !1404
  %80 = load ptr, ptr @stdout, align 8, !dbg !1405, !tbaa !852
  %81 = tail call i32 @fpurge(ptr noundef %80) #38, !dbg !1406
  %82 = load ptr, ptr @stdout, align 8, !dbg !1407, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %82) #38, !dbg !1407
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1408
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %83) #38, !dbg !1408
  unreachable, !dbg !1408

84:                                               ; preds = %72, %61
  %85 = phi i64 [ %75, %72 ], [ 0, %61 ], !dbg !1397
  %86 = add i64 %85, %95, !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1319, metadata !DIExpression()), !dbg !1327
  %87 = add nsw i64 %94, 1, !dbg !1410
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1318, metadata !DIExpression()), !dbg !1327
  %88 = load i64, ptr @num_delims, align 8, !dbg !1412, !tbaa !1145
  %89 = icmp eq i64 %87, %88, !dbg !1413
  %90 = select i1 %89, i64 0, i64 %87, !dbg !1414
  %91 = select i1 %89, i64 0, i64 %86, !dbg !1414
  br label %92, !dbg !1414, !llvm.loop !1415

92:                                               ; preds = %84, %36
  %93 = phi i32 [ %.lcssa3, %84 ], [ %38, %36 ]
  %94 = phi i64 [ %90, %84 ], [ 0, %36 ]
  %95 = phi i64 [ %91, %84 ], [ 0, %36 ]
  br label %44, !dbg !1361

96:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 %45, metadata !1417, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1422
  call void @llvm.dbg.value(metadata i32 %45, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1429
  %97 = load ptr, ptr @stdout, align 8, !dbg !1432, !tbaa !852
  %98 = getelementptr inbounds %struct._IO_FILE, ptr %97, i64 0, i32 5, !dbg !1432
  %99 = load ptr, ptr %98, align 8, !dbg !1432, !tbaa !1433
  %100 = getelementptr inbounds %struct._IO_FILE, ptr %97, i64 0, i32 6, !dbg !1432
  %101 = load ptr, ptr %100, align 8, !dbg !1432, !tbaa !1434
  %102 = icmp ult ptr %99, %101, !dbg !1432
  br i1 %102, label %103, label %106, !dbg !1432, !prof !1356

103:                                              ; preds = %96
  %104 = trunc i32 %45 to i8, !dbg !1435
  call void @llvm.dbg.value(metadata i8 %104, metadata !1417, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %104, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1429
  %105 = getelementptr inbounds i8, ptr %99, i64 1, !dbg !1432
  store ptr %105, ptr %98, align 8, !dbg !1432, !tbaa !1433
  store i8 %104, ptr %99, align 1, !dbg !1432, !tbaa !930
  br label %110, !dbg !1436

106:                                              ; preds = %96
  %107 = and i32 %45, 255, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %107, metadata !1424, metadata !DIExpression()), !dbg !1429
  %108 = tail call i32 @__overflow(ptr noundef nonnull %97, i32 noundef %107) #38, !dbg !1432
  %109 = icmp slt i32 %108, 0, !dbg !1438
  br i1 %109, label %111, label %110, !dbg !1436

110:                                              ; preds = %106, %103
  br label %44, !dbg !1327, !llvm.loop !1415

111:                                              ; preds = %106
  %.lcssa8 = phi ptr [ %37, %106 ]
  %112 = load i32, ptr %.lcssa8, align 4, !dbg !1439, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %112, metadata !1401, metadata !DIExpression()), !dbg !1441
  %113 = load ptr, ptr @stdout, align 8, !dbg !1442, !tbaa !852
  %114 = tail call i32 @fflush_unlocked(ptr noundef %113) #38, !dbg !1442
  %115 = load ptr, ptr @stdout, align 8, !dbg !1443, !tbaa !852
  %116 = tail call i32 @fpurge(ptr noundef %115) #38, !dbg !1444
  %117 = load ptr, ptr @stdout, align 8, !dbg !1445, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %117) #38, !dbg !1445
  %118 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1446
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %112, ptr noundef %118) #38, !dbg !1446
  unreachable, !dbg !1446

119:                                              ; preds = %53
  %.lcssa = phi i32 [ %45, %53 ], !dbg !1327
  %120 = load i32, ptr %37, align 4, !dbg !1447, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1313, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !1417, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1450
  %121 = load ptr, ptr @stdout, align 8, !dbg !1452, !tbaa !852
  %122 = getelementptr inbounds %struct._IO_FILE, ptr %121, i64 0, i32 5, !dbg !1452
  %123 = load ptr, ptr %122, align 8, !dbg !1452, !tbaa !1433
  %124 = getelementptr inbounds %struct._IO_FILE, ptr %121, i64 0, i32 6, !dbg !1452
  %125 = load ptr, ptr %124, align 8, !dbg !1452, !tbaa !1434
  %126 = icmp ult ptr %123, %125, !dbg !1452
  br i1 %126, label %127, label %130, !dbg !1452, !prof !1356

127:                                              ; preds = %119
  %128 = trunc i32 %.lcssa to i8, !dbg !1453
  call void @llvm.dbg.value(metadata i8 %128, metadata !1417, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 %128, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1450
  %129 = getelementptr inbounds i8, ptr %123, i64 1, !dbg !1452
  store ptr %129, ptr %122, align 8, !dbg !1452, !tbaa !1433
  store i8 %128, ptr %123, align 1, !dbg !1452, !tbaa !930
  br label %142, !dbg !1454

130:                                              ; preds = %119
  %131 = and i32 %.lcssa, 255, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %131, metadata !1424, metadata !DIExpression()), !dbg !1450
  %132 = tail call i32 @__overflow(ptr noundef nonnull %121, i32 noundef %131) #38, !dbg !1452
  %133 = icmp slt i32 %132, 0, !dbg !1456
  br i1 %133, label %134, label %142, !dbg !1454

134:                                              ; preds = %130
  %.lcssa7 = phi ptr [ %37, %130 ]
  %135 = load i32, ptr %.lcssa7, align 4, !dbg !1457, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %135, metadata !1401, metadata !DIExpression()), !dbg !1459
  %136 = load ptr, ptr @stdout, align 8, !dbg !1460, !tbaa !852
  %137 = tail call i32 @fflush_unlocked(ptr noundef %136) #38, !dbg !1460
  %138 = load ptr, ptr @stdout, align 8, !dbg !1461, !tbaa !852
  %139 = tail call i32 @fpurge(ptr noundef %138) #38, !dbg !1462
  %140 = load ptr, ptr @stdout, align 8, !dbg !1463, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %140) #38, !dbg !1463
  %141 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1464
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef %141) #38, !dbg !1464
  unreachable, !dbg !1464

142:                                              ; preds = %130, %127
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1313, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !1311, metadata !DIExpression()), !dbg !1320
  %143 = load i1, ptr @line_delim, align 1, !dbg !1363
  %144 = select i1 %143, i8 0, i8 10, !dbg !1363
  %145 = zext nneg i8 %144 to i32, !dbg !1363
  %146 = icmp eq i32 %.lcssa, %145, !dbg !1465
  br i1 %146, label %171, label %147, !dbg !1365

147:                                              ; preds = %39, %142
  %148 = phi ptr [ %34, %39 ], [ %37, %142 ]
  %149 = phi i32 [ %43, %39 ], [ %145, %142 ]
  %150 = phi i8 [ %42, %39 ], [ %144, %142 ]
  %151 = phi i32 [ %40, %39 ], [ %120, %142 ]
  call void @llvm.dbg.value(metadata i8 %150, metadata !1417, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8 %150, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1468
  %152 = load ptr, ptr @stdout, align 8, !dbg !1470, !tbaa !852
  %153 = getelementptr inbounds %struct._IO_FILE, ptr %152, i64 0, i32 5, !dbg !1470
  %154 = load ptr, ptr %153, align 8, !dbg !1470, !tbaa !1433
  %155 = getelementptr inbounds %struct._IO_FILE, ptr %152, i64 0, i32 6, !dbg !1470
  %156 = load ptr, ptr %155, align 8, !dbg !1470, !tbaa !1434
  %157 = icmp ult ptr %154, %156, !dbg !1470
  br i1 %157, label %158, label %160, !dbg !1470, !prof !1356

158:                                              ; preds = %147
  %159 = getelementptr inbounds i8, ptr %154, i64 1, !dbg !1470
  store ptr %159, ptr %153, align 8, !dbg !1470, !tbaa !1433
  store i8 %150, ptr %154, align 1, !dbg !1470, !tbaa !930
  br label %171, !dbg !1471

160:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i32 %149, metadata !1424, metadata !DIExpression()), !dbg !1468
  %161 = tail call i32 @__overflow(ptr noundef nonnull %152, i32 noundef %149) #38, !dbg !1470
  %162 = icmp slt i32 %161, 0, !dbg !1472
  br i1 %162, label %163, label %171, !dbg !1471

163:                                              ; preds = %160
  %.lcssa5 = phi ptr [ %148, %160 ]
  %164 = load i32, ptr %.lcssa5, align 4, !dbg !1473, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %164, metadata !1401, metadata !DIExpression()), !dbg !1475
  %165 = load ptr, ptr @stdout, align 8, !dbg !1476, !tbaa !852
  %166 = tail call i32 @fflush_unlocked(ptr noundef %165) #38, !dbg !1476
  %167 = load ptr, ptr @stdout, align 8, !dbg !1477, !tbaa !852
  %168 = tail call i32 @fpurge(ptr noundef %167) #38, !dbg !1478
  %169 = load ptr, ptr @stdout, align 8, !dbg !1479, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %169) #38, !dbg !1479
  %170 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1480
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %164, ptr noundef %170) #38, !dbg !1480
  unreachable, !dbg !1480

171:                                              ; preds = %160, %158, %142
  %172 = phi ptr [ %37, %142 ], [ %148, %158 ], [ %148, %160 ]
  %173 = phi i32 [ %120, %142 ], [ %151, %158 ], [ %151, %160 ]
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1481, metadata !DIExpression()), !dbg !1484
  %174 = load i32, ptr %21, align 8, !dbg !1487, !tbaa !1488
  %175 = and i32 %174, 32, !dbg !1489
  %176 = icmp eq i32 %175, 0, !dbg !1489
  %177 = select i1 %176, i32 0, i32 %173, !dbg !1490
  tail call void @llvm.dbg.value(metadata i32 %177, metadata !1313, metadata !DIExpression()), !dbg !1327
  br i1 %10, label %178, label %179, !dbg !1491

178:                                              ; preds = %171
  tail call void @clearerr_unlocked(ptr noundef nonnull %21) #38, !dbg !1492
  br label %186, !dbg !1492

179:                                              ; preds = %171
  %180 = tail call i32 @rpl_fclose(ptr noundef nonnull %21) #38, !dbg !1494
  %181 = icmp eq i32 %180, 0, !dbg !1496
  %182 = icmp ne i32 %177, 0
  %183 = select i1 %181, i1 true, i1 %182, !dbg !1497
  br i1 %183, label %186, label %184, !dbg !1497

184:                                              ; preds = %179
  %185 = load i32, ptr %172, align 4, !dbg !1498, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %185, metadata !1313, metadata !DIExpression()), !dbg !1327
  br label %186, !dbg !1499

186:                                              ; preds = %179, %184, %178
  %187 = phi i32 [ %177, %178 ], [ %177, %179 ], [ %185, %184 ], !dbg !1327
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !1313, metadata !DIExpression()), !dbg !1327
  %188 = icmp eq i32 %187, 0, !dbg !1500
  br i1 %188, label %193, label %189, !dbg !1502

189:                                              ; preds = %186, %16
  %190 = phi i32 [ %18, %16 ], [ %187, %186 ]
  %191 = load ptr, ptr %6, align 8, !dbg !1327, !tbaa !852
  %192 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %191) #38, !dbg !1327
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %190, ptr noundef nonnull @.str.63, ptr noundef %192) #38, !dbg !1327
  br label %193, !dbg !1503

193:                                              ; preds = %189, %186
  %194 = phi i1 [ %7, %186 ], [ false, %189 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1309, metadata !DIExpression()), !dbg !1320
  %195 = add i64 %5, -1, !dbg !1503
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !1307, metadata !DIExpression()), !dbg !1320
  %196 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !1504
  tail call void @llvm.dbg.value(metadata ptr %196, metadata !1308, metadata !DIExpression()), !dbg !1320
  %197 = icmp eq i64 %195, 0, !dbg !1321
  br i1 %197, label %.loopexit, label %4, !dbg !1321, !llvm.loop !1505

.loopexit:                                        ; preds = %193
  %.lcssa6 = phi i1 [ %194, %193 ]
  br label %198, !dbg !1507

198:                                              ; preds = %.loopexit, %2
  %199 = phi i1 [ true, %2 ], [ %.lcssa6, %.loopexit ]
  ret i1 %199, !dbg !1507
}

; Function Attrs: nounwind uwtable
define internal i1 @paste_parallel(i64 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !dbg !1508 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1510, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1511, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1512, metadata !DIExpression()), !dbg !1558
  %3 = add i64 %0, -1, !dbg !1559
  %4 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1560
  %5 = mul i64 %4, %3, !dbg !1561
  %6 = add i64 %5, 1, !dbg !1562
  %7 = tail call noalias nonnull ptr @xmalloc(i64 noundef %6) #44, !dbg !1563
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1513, metadata !DIExpression()), !dbg !1558
  %8 = add i64 %0, 1, !dbg !1564
  %9 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %8, i64 noundef 8) #43, !dbg !1565
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1514, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1517, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1516, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1517, metadata !DIExpression()), !dbg !1558
  %10 = icmp eq i64 %0, 0, !dbg !1566
  br i1 %10, label %328, label %.preheader4, !dbg !1569

.preheader4:                                      ; preds = %2
  br label %11, !dbg !1569

11:                                               ; preds = %.preheader4, %35
  %12 = phi i64 [ %37, %35 ], [ 0, %.preheader4 ]
  %13 = phi i1 [ %36, %35 ], [ false, %.preheader4 ]
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1516, metadata !DIExpression()), !dbg !1558
  %14 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1570
  %15 = load ptr, ptr %14, align 8, !dbg !1570, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %15, metadata !932, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !938, metadata !DIExpression()), !dbg !1573
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(2) @.str.18) #39, !dbg !1575
  %17 = icmp eq i32 %16, 0, !dbg !1576
  br i1 %17, label %18, label %21, !dbg !1577

18:                                               ; preds = %11
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1578
  %19 = load ptr, ptr @stdin, align 8, !dbg !1580, !tbaa !852
  %20 = getelementptr inbounds ptr, ptr %9, i64 %12, !dbg !1581
  store ptr %19, ptr %20, align 8, !dbg !1582, !tbaa !852
  br label %35, !dbg !1583

21:                                               ; preds = %11
  %22 = tail call noalias ptr @rpl_fopen(ptr noundef %15, ptr noundef nonnull @.str.62) #38, !dbg !1584
  %23 = getelementptr inbounds ptr, ptr %9, i64 %12, !dbg !1586
  store ptr %22, ptr %23, align 8, !dbg !1587, !tbaa !852
  %24 = icmp eq ptr %22, null, !dbg !1588
  br i1 %24, label %25, label %31, !dbg !1590

25:                                               ; preds = %21
  %.lcssa25 = phi i64 [ %12, %21 ]
  %26 = getelementptr inbounds ptr, ptr %1, i64 %.lcssa25
  %27 = tail call ptr @__errno_location() #41, !dbg !1591
  %28 = load i32, ptr %27, align 4, !dbg !1591, !tbaa !921
  %29 = load ptr, ptr %26, align 8, !dbg !1591, !tbaa !852
  %30 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %29) #38, !dbg !1591
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %28, ptr noundef nonnull @.str.63, ptr noundef %30) #38, !dbg !1591
  unreachable, !dbg !1591

31:                                               ; preds = %21
  %32 = tail call i32 @fileno_unlocked(ptr noundef nonnull %22) #38, !dbg !1592
  %33 = icmp eq i32 %32, 0, !dbg !1594
  %34 = select i1 %33, i1 true, i1 %13, !dbg !1595
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1517, metadata !DIExpression()), !dbg !1558
  tail call void @fadvise(ptr noundef nonnull %22, i32 noundef 2) #38, !dbg !1596
  br label %35

35:                                               ; preds = %18, %31
  %36 = phi i1 [ %13, %18 ], [ %34, %31 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1517, metadata !DIExpression()), !dbg !1558
  %37 = add nuw i64 %12, 1, !dbg !1597
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1516, metadata !DIExpression()), !dbg !1558
  %38 = icmp eq i64 %37, %0, !dbg !1566
  br i1 %38, label %39, label %11, !dbg !1569, !llvm.loop !1598

39:                                               ; preds = %35
  %.lcssa27 = phi i1 [ %36, %35 ]
  br i1 %.lcssa27, label %41, label %40, !dbg !1600

40:                                               ; preds = %41, %39
  br label %49, !dbg !1602

41:                                               ; preds = %39
  %42 = load i1, ptr @have_read_stdin, align 1, !dbg !1603
  br i1 %42, label %43, label %40, !dbg !1604

43:                                               ; preds = %41
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1605
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %44) #38, !dbg !1605
  unreachable, !dbg !1605

.loopexit2:                                       ; preds = %317
  %.lcssa23 = phi i64 [ %323, %317 ], !dbg !1558
  %.lcssa22 = phi i1 [ %324, %317 ]
  br label %45, !dbg !1602

45:                                               ; preds = %.loopexit2, %171, %196, %198, %49
  %46 = phi i64 [ %51, %49 ], [ %.lcssa13, %198 ], [ %.lcssa13, %196 ], [ %.lcssa13, %171 ], [ %.lcssa23, %.loopexit2 ], !dbg !1606
  %47 = phi i1 [ %50, %49 ], [ %.lcssa12, %198 ], [ %.lcssa12, %196 ], [ %.lcssa12, %171 ], [ %.lcssa22, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1512, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1516, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1528, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1525, metadata !DIExpression()), !dbg !1607
  %48 = icmp eq i64 %46, 0, !dbg !1602
  br i1 %48, label %.loopexit3, label %49, !dbg !1602, !llvm.loop !1608

49:                                               ; preds = %40, %45
  %50 = phi i1 [ %47, %45 ], [ true, %40 ]
  %51 = phi i64 [ %46, %45 ], [ %0, %40 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1512, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1516, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1518, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1520, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1521, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1528, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1525, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1523, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1522, metadata !DIExpression()), !dbg !1610
  br i1 %10, label %45, label %.preheader1, !dbg !1612

.preheader1:                                      ; preds = %49
  br label %52, !dbg !1612

52:                                               ; preds = %.preheader1, %317
  %53 = phi i1 [ %324, %317 ], [ %50, %.preheader1 ]
  %54 = phi i64 [ %323, %317 ], [ %51, %.preheader1 ]
  %55 = phi i1 [ %322, %317 ], [ false, %.preheader1 ]
  %56 = phi i64 [ %321, %317 ], [ 0, %.preheader1 ]
  %57 = phi i64 [ %320, %317 ], [ 0, %.preheader1 ]
  %58 = phi i64 [ %318, %317 ], [ 0, %.preheader1 ]
  %59 = phi i64 [ %319, %317 ], [ 0, %.preheader1 ]
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !1516, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !1520, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !1521, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1528, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1525, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1523, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !1522, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1529, metadata !DIExpression()), !dbg !1607
  %60 = getelementptr inbounds ptr, ptr %9, i64 %58, !dbg !1613
  %61 = load ptr, ptr %60, align 8, !dbg !1613, !tbaa !852
  %62 = icmp eq ptr %61, null, !dbg !1613
  br i1 %62, label %165, label %63, !dbg !1614

63:                                               ; preds = %52
  call void @llvm.dbg.value(metadata ptr %61, metadata !1344, metadata !DIExpression()), !dbg !1615
  %64 = getelementptr inbounds %struct._IO_FILE, ptr %61, i64 0, i32 1, !dbg !1617
  %65 = load ptr, ptr %64, align 8, !dbg !1617, !tbaa !1353
  %66 = getelementptr inbounds %struct._IO_FILE, ptr %61, i64 0, i32 2, !dbg !1617
  %67 = load ptr, ptr %66, align 8, !dbg !1617, !tbaa !1355
  %68 = icmp ult ptr %65, %67, !dbg !1617
  br i1 %68, label %71, label %69, !dbg !1617, !prof !1356

69:                                               ; preds = %63
  %70 = tail call i32 @__uflow(ptr noundef nonnull %61) #38, !dbg !1617
  br label %75, !dbg !1617

71:                                               ; preds = %63
  %72 = getelementptr inbounds i8, ptr %65, i64 1, !dbg !1617
  store ptr %72, ptr %64, align 8, !dbg !1617, !tbaa !1353
  %73 = load i8, ptr %65, align 1, !dbg !1617, !tbaa !930
  %74 = zext i8 %73 to i32, !dbg !1617
  br label %75, !dbg !1617

75:                                               ; preds = %69, %71
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !1617
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1525, metadata !DIExpression()), !dbg !1607
  %77 = tail call ptr @__errno_location() #41, !dbg !1618
  %78 = load i32, ptr %77, align 4, !dbg !1618, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1528, metadata !DIExpression()), !dbg !1607
  %79 = icmp ne i32 %76, -1, !dbg !1619
  %80 = icmp ne i64 %59, 0
  %81 = select i1 %79, i1 %80, i1 false, !dbg !1620
  br i1 %81, label %82, label %94, !dbg !1620

82:                                               ; preds = %75
  %83 = load ptr, ptr @stdout, align 8, !dbg !1621, !tbaa !852
  %84 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %59, ptr noundef %83), !dbg !1621
  %85 = icmp eq i64 %84, %59, !dbg !1622
  br i1 %85, label %94, label %86, !dbg !1623

86:                                               ; preds = %82
  %.lcssa7 = phi ptr [ %77, %82 ], !dbg !1618
  %87 = load i32, ptr %.lcssa7, align 4, !dbg !1624, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %87, metadata !1401, metadata !DIExpression()), !dbg !1626
  %88 = load ptr, ptr @stdout, align 8, !dbg !1627, !tbaa !852
  %89 = tail call i32 @fflush_unlocked(ptr noundef %88) #38, !dbg !1627
  %90 = load ptr, ptr @stdout, align 8, !dbg !1628, !tbaa !852
  %91 = tail call i32 @fpurge(ptr noundef %90) #38, !dbg !1629
  %92 = load ptr, ptr @stdout, align 8, !dbg !1630, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %92) #38, !dbg !1630
  %93 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1631
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %87, ptr noundef %93) #38, !dbg !1631
  unreachable, !dbg !1631

94:                                               ; preds = %82, %75
  %95 = phi i64 [ %59, %75 ], [ 0, %82 ], !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1522, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1529, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1528, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1525, metadata !DIExpression()), !dbg !1607
  %96 = icmp eq i32 %76, -1, !dbg !1632
  br i1 %96, label %139, label %.preheader, !dbg !1633

.preheader:                                       ; preds = %94
  br label %97, !dbg !1633

97:                                               ; preds = %.preheader, %134
  %98 = phi i32 [ %135, %134 ], [ %76, %.preheader ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1528, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !1525, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1529, metadata !DIExpression()), !dbg !1607
  %99 = load i1, ptr @line_delim, align 1, !dbg !1634
  %100 = select i1 %99, i32 0, i32 10, !dbg !1634
  %101 = icmp eq i32 %98, %100, !dbg !1637
  br i1 %101, label %.loopexit, label %102, !dbg !1638

102:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i32 %98, metadata !1417, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %98, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1641
  %103 = load ptr, ptr @stdout, align 8, !dbg !1643, !tbaa !852
  %104 = getelementptr inbounds %struct._IO_FILE, ptr %103, i64 0, i32 5, !dbg !1643
  %105 = load ptr, ptr %104, align 8, !dbg !1643, !tbaa !1433
  %106 = getelementptr inbounds %struct._IO_FILE, ptr %103, i64 0, i32 6, !dbg !1643
  %107 = load ptr, ptr %106, align 8, !dbg !1643, !tbaa !1434
  %108 = icmp ult ptr %105, %107, !dbg !1643
  br i1 %108, label %109, label %112, !dbg !1643, !prof !1356

109:                                              ; preds = %102
  %110 = trunc i32 %98 to i8, !dbg !1644
  call void @llvm.dbg.value(metadata i8 %110, metadata !1417, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %110, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1641
  %111 = getelementptr inbounds i8, ptr %105, i64 1, !dbg !1643
  store ptr %111, ptr %104, align 8, !dbg !1643, !tbaa !1433
  store i8 %110, ptr %105, align 1, !dbg !1643, !tbaa !930
  br label %124, !dbg !1645

112:                                              ; preds = %102
  %113 = and i32 %98, 255, !dbg !1646
  call void @llvm.dbg.value(metadata i32 %113, metadata !1424, metadata !DIExpression()), !dbg !1641
  %114 = tail call i32 @__overflow(ptr noundef nonnull %103, i32 noundef %113) #38, !dbg !1643
  %115 = icmp slt i32 %114, 0, !dbg !1647
  br i1 %115, label %116, label %124, !dbg !1645

116:                                              ; preds = %112
  %.lcssa8 = phi ptr [ %77, %112 ], !dbg !1618
  %117 = load i32, ptr %.lcssa8, align 4, !dbg !1648, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %117, metadata !1401, metadata !DIExpression()), !dbg !1650
  %118 = load ptr, ptr @stdout, align 8, !dbg !1651, !tbaa !852
  %119 = tail call i32 @fflush_unlocked(ptr noundef %118) #38, !dbg !1651
  %120 = load ptr, ptr @stdout, align 8, !dbg !1652, !tbaa !852
  %121 = tail call i32 @fpurge(ptr noundef %120) #38, !dbg !1653
  %122 = load ptr, ptr @stdout, align 8, !dbg !1654, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %122) #38, !dbg !1654
  %123 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1655
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %117, ptr noundef %123) #38, !dbg !1655
  unreachable, !dbg !1655

124:                                              ; preds = %109, %112
  call void @llvm.dbg.value(metadata ptr %61, metadata !1344, metadata !DIExpression()), !dbg !1656
  %125 = load ptr, ptr %64, align 8, !dbg !1658, !tbaa !1353
  %126 = load ptr, ptr %66, align 8, !dbg !1658, !tbaa !1355
  %127 = icmp ult ptr %125, %126, !dbg !1658
  br i1 %127, label %130, label %128, !dbg !1658, !prof !1356

128:                                              ; preds = %124
  %129 = tail call i32 @__uflow(ptr noundef nonnull %61) #38, !dbg !1658
  br label %134, !dbg !1658

130:                                              ; preds = %124
  %131 = getelementptr inbounds i8, ptr %125, i64 1, !dbg !1658
  store ptr %131, ptr %64, align 8, !dbg !1658, !tbaa !1353
  %132 = load i8, ptr %125, align 1, !dbg !1658, !tbaa !930
  %133 = zext i8 %132 to i32, !dbg !1658
  br label %134, !dbg !1658

134:                                              ; preds = %128, %130
  %135 = phi i32 [ %129, %128 ], [ %133, %130 ], !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %135, metadata !1525, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1529, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1528, metadata !DIExpression()), !dbg !1607
  %136 = icmp eq i32 %135, -1, !dbg !1632
  br i1 %136, label %137, label %97, !dbg !1633, !llvm.loop !1659

137:                                              ; preds = %134
  %138 = load i32, ptr %77, align 4, !dbg !1661, !tbaa !921
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1529, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %138, metadata !1528, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1525, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1522, metadata !DIExpression()), !dbg !1610
  br i1 %96, label %139, label %229, !dbg !1662

139:                                              ; preds = %94, %137
  %140 = phi i32 [ %138, %137 ], [ %78, %94 ]
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1481, metadata !DIExpression()), !dbg !1663
  %141 = load i32, ptr %61, align 8, !dbg !1668, !tbaa !1488
  %142 = and i32 %141, 32, !dbg !1669
  %143 = icmp eq i32 %142, 0, !dbg !1669
  %144 = select i1 %143, i32 0, i32 %140, !dbg !1670
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !1528, metadata !DIExpression()), !dbg !1607
  %145 = load ptr, ptr @stdin, align 8, !dbg !1671, !tbaa !852
  %146 = icmp eq ptr %61, %145, !dbg !1673
  br i1 %146, label %147, label %148, !dbg !1674

147:                                              ; preds = %139
  tail call void @clearerr_unlocked(ptr noundef nonnull %61) #38, !dbg !1675
  br label %155, !dbg !1675

148:                                              ; preds = %139
  %149 = tail call i32 @rpl_fclose(ptr noundef nonnull %61) #38, !dbg !1676
  %150 = icmp ne i32 %149, -1, !dbg !1678
  %151 = icmp ne i32 %144, 0
  %152 = select i1 %150, i1 true, i1 %151, !dbg !1679
  br i1 %152, label %155, label %153, !dbg !1679

153:                                              ; preds = %148
  %154 = load i32, ptr %77, align 4, !dbg !1680, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !1528, metadata !DIExpression()), !dbg !1607
  br label %155, !dbg !1681

155:                                              ; preds = %148, %153, %147
  %156 = phi i32 [ %144, %147 ], [ %144, %148 ], [ %154, %153 ], !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !1528, metadata !DIExpression()), !dbg !1607
  %157 = icmp eq i32 %156, 0, !dbg !1682
  br i1 %157, label %162, label %158, !dbg !1684

158:                                              ; preds = %155
  %159 = getelementptr inbounds ptr, ptr %1, i64 %58, !dbg !1685
  %160 = load ptr, ptr %159, align 8, !dbg !1685, !tbaa !852
  %161 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %160) #38, !dbg !1685
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %156, ptr noundef nonnull @.str.63, ptr noundef %161) #38, !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1512, metadata !DIExpression()), !dbg !1558
  br label %162, !dbg !1687

162:                                              ; preds = %158, %155
  %163 = phi i1 [ false, %158 ], [ %53, %155 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1512, metadata !DIExpression()), !dbg !1558
  store ptr null, ptr %60, align 8, !dbg !1688, !tbaa !852
  %164 = add i64 %54, -1, !dbg !1689
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !1516, metadata !DIExpression()), !dbg !1558
  br label %165, !dbg !1690

165:                                              ; preds = %52, %162
  %166 = phi i64 [ %95, %162 ], [ %59, %52 ]
  %167 = phi i64 [ %164, %162 ], [ %54, %52 ], !dbg !1558
  %168 = phi i1 [ %163, %162 ], [ %53, %52 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1512, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !1516, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1528, metadata !DIExpression()), !dbg !1607
  %169 = add nuw i64 %58, 1, !dbg !1691
  %170 = icmp eq i64 %169, %0, !dbg !1692
  br i1 %170, label %171, label %211, !dbg !1693

171:                                              ; preds = %165
  %.lcssa20 = phi i1 [ %55, %165 ]
  %.lcssa14 = phi i64 [ %166, %165 ]
  %.lcssa13 = phi i64 [ %167, %165 ], !dbg !1558
  %.lcssa12 = phi i1 [ %168, %165 ]
  br i1 %.lcssa20, label %172, label %45, !dbg !1694

172:                                              ; preds = %171
  %173 = icmp eq i64 %.lcssa14, 0, !dbg !1695
  br i1 %173, label %187, label %174, !dbg !1696

174:                                              ; preds = %172
  %175 = load ptr, ptr @stdout, align 8, !dbg !1697, !tbaa !852
  %176 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %.lcssa14, ptr noundef %175), !dbg !1697
  %177 = icmp eq i64 %176, %.lcssa14, !dbg !1698
  br i1 %177, label %187, label %178, !dbg !1699

178:                                              ; preds = %174
  %179 = tail call ptr @__errno_location() #41, !dbg !1700
  %180 = load i32, ptr %179, align 4, !dbg !1700, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %180, metadata !1401, metadata !DIExpression()), !dbg !1702
  %181 = load ptr, ptr @stdout, align 8, !dbg !1703, !tbaa !852
  %182 = tail call i32 @fflush_unlocked(ptr noundef %181) #38, !dbg !1703
  %183 = load ptr, ptr @stdout, align 8, !dbg !1704, !tbaa !852
  %184 = tail call i32 @fpurge(ptr noundef %183) #38, !dbg !1705
  %185 = load ptr, ptr @stdout, align 8, !dbg !1706, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %185) #38, !dbg !1706
  %186 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1707
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %180, ptr noundef %186) #38, !dbg !1707
  unreachable, !dbg !1707

187:                                              ; preds = %174, %172
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1522, metadata !DIExpression()), !dbg !1610
  %188 = load i1, ptr @line_delim, align 1, !dbg !1708
  %189 = select i1 %188, i8 0, i8 10, !dbg !1708
  call void @llvm.dbg.value(metadata i8 %189, metadata !1417, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 %189, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1711
  %190 = load ptr, ptr @stdout, align 8, !dbg !1713, !tbaa !852
  %191 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 5, !dbg !1713
  %192 = load ptr, ptr %191, align 8, !dbg !1713, !tbaa !1433
  %193 = getelementptr inbounds %struct._IO_FILE, ptr %190, i64 0, i32 6, !dbg !1713
  %194 = load ptr, ptr %193, align 8, !dbg !1713, !tbaa !1434
  %195 = icmp ult ptr %192, %194, !dbg !1713
  br i1 %195, label %196, label %198, !dbg !1713, !prof !1356

196:                                              ; preds = %187
  %197 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !1713
  store ptr %197, ptr %191, align 8, !dbg !1713, !tbaa !1433
  store i8 %189, ptr %192, align 1, !dbg !1713, !tbaa !930
  br label %45, !dbg !1714

198:                                              ; preds = %187
  %199 = zext nneg i8 %189 to i32, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %199, metadata !1424, metadata !DIExpression()), !dbg !1711
  %200 = tail call i32 @__overflow(ptr noundef nonnull %190, i32 noundef %199) #38, !dbg !1713
  %201 = icmp slt i32 %200, 0, !dbg !1716
  br i1 %201, label %202, label %45, !dbg !1714

202:                                              ; preds = %198
  %203 = tail call ptr @__errno_location() #41, !dbg !1717
  %204 = load i32, ptr %203, align 4, !dbg !1717, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %204, metadata !1401, metadata !DIExpression()), !dbg !1719
  %205 = load ptr, ptr @stdout, align 8, !dbg !1720, !tbaa !852
  %206 = tail call i32 @fflush_unlocked(ptr noundef %205) #38, !dbg !1720
  %207 = load ptr, ptr @stdout, align 8, !dbg !1721, !tbaa !852
  %208 = tail call i32 @fpurge(ptr noundef %207) #38, !dbg !1722
  %209 = load ptr, ptr @stdout, align 8, !dbg !1723, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %209) #38, !dbg !1723
  %210 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1724
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %204, ptr noundef %210) #38, !dbg !1724
  unreachable, !dbg !1724

211:                                              ; preds = %165
  %212 = load ptr, ptr @delim_lens, align 8, !dbg !1725, !tbaa !852
  %213 = getelementptr inbounds i64, ptr %212, i64 %56, !dbg !1725
  %214 = load i64, ptr %213, align 8, !dbg !1725, !tbaa !1145
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !1552, metadata !DIExpression()), !dbg !1726
  %215 = icmp eq i64 %214, 0, !dbg !1727
  br i1 %215, label %221, label %216, !dbg !1729

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %7, i64 %166, !dbg !1730
  %218 = load ptr, ptr @delims, align 8, !dbg !1732, !tbaa !852
  %219 = getelementptr inbounds i8, ptr %218, i64 %57, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %217, metadata !1734, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata ptr %219, metadata !1737, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %214, metadata !1738, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %217, ptr noundef nonnull align 1 %219, i64 noundef %214, i1 noundef false) #38, !dbg !1741
  %220 = add i64 %214, %166, !dbg !1742
  tail call void @llvm.dbg.value(metadata i64 %220, metadata !1522, metadata !DIExpression()), !dbg !1610
  br label %221, !dbg !1743

221:                                              ; preds = %216, %211
  %222 = phi i64 [ %220, %216 ], [ %166, %211 ], !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !1522, metadata !DIExpression()), !dbg !1610
  %223 = add i64 %214, %57, !dbg !1744
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1521, metadata !DIExpression()), !dbg !1610
  %224 = add nsw i64 %56, 1, !dbg !1745
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1520, metadata !DIExpression()), !dbg !1610
  %225 = load i64, ptr @num_delims, align 8, !dbg !1747, !tbaa !1145
  %226 = icmp eq i64 %224, %225, !dbg !1748
  %227 = select i1 %226, i64 0, i64 %223, !dbg !1749
  %228 = select i1 %226, i64 0, i64 %224, !dbg !1749
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1520, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !1521, metadata !DIExpression()), !dbg !1610
  br label %317, !dbg !1750

.loopexit:                                        ; preds = %97
  %.lcssa = phi i32 [ %98, %97 ]
  br label %229, !dbg !1751

229:                                              ; preds = %.loopexit, %137
  %230 = phi i32 [ -1, %137 ], [ %.lcssa, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1518, metadata !DIExpression()), !dbg !1610
  %231 = add nuw i64 %58, 1, !dbg !1751
  %232 = icmp eq i64 %231, %0, !dbg !1752
  br i1 %232, label %291, label %233, !dbg !1753

233:                                              ; preds = %229
  %234 = load i1, ptr @line_delim, align 1, !dbg !1754
  %235 = select i1 %234, i32 0, i32 10, !dbg !1754
  %236 = icmp ne i32 %230, %235, !dbg !1757
  %237 = icmp ne i32 %230, -1
  %238 = and i1 %237, %236, !dbg !1758
  br i1 %238, label %239, label %260, !dbg !1758

239:                                              ; preds = %233
  call void @llvm.dbg.value(metadata i32 %230, metadata !1417, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1759
  call void @llvm.dbg.value(metadata i32 %230, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1761
  %240 = load ptr, ptr @stdout, align 8, !dbg !1763, !tbaa !852
  %241 = getelementptr inbounds %struct._IO_FILE, ptr %240, i64 0, i32 5, !dbg !1763
  %242 = load ptr, ptr %241, align 8, !dbg !1763, !tbaa !1433
  %243 = getelementptr inbounds %struct._IO_FILE, ptr %240, i64 0, i32 6, !dbg !1763
  %244 = load ptr, ptr %243, align 8, !dbg !1763, !tbaa !1434
  %245 = icmp ult ptr %242, %244, !dbg !1763
  br i1 %245, label %246, label %249, !dbg !1763, !prof !1356

246:                                              ; preds = %239
  %247 = trunc i32 %230 to i8, !dbg !1764
  call void @llvm.dbg.value(metadata i8 %247, metadata !1417, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 %247, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1761
  %248 = getelementptr inbounds i8, ptr %242, i64 1, !dbg !1763
  store ptr %248, ptr %241, align 8, !dbg !1763, !tbaa !1433
  store i8 %247, ptr %242, align 1, !dbg !1763, !tbaa !930
  br label %260, !dbg !1765

249:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i32 %230, metadata !1424, metadata !DIExpression()), !dbg !1761
  %250 = tail call i32 @__overflow(ptr noundef nonnull %240, i32 noundef %230) #38, !dbg !1763
  %251 = icmp slt i32 %250, 0, !dbg !1766
  br i1 %251, label %252, label %260, !dbg !1765

252:                                              ; preds = %249
  %.lcssa9 = phi ptr [ %77, %249 ], !dbg !1618
  %253 = load i32, ptr %.lcssa9, align 4, !dbg !1767, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %253, metadata !1401, metadata !DIExpression()), !dbg !1769
  %254 = load ptr, ptr @stdout, align 8, !dbg !1770, !tbaa !852
  %255 = tail call i32 @fflush_unlocked(ptr noundef %254) #38, !dbg !1770
  %256 = load ptr, ptr @stdout, align 8, !dbg !1771, !tbaa !852
  %257 = tail call i32 @fpurge(ptr noundef %256) #38, !dbg !1772
  %258 = load ptr, ptr @stdout, align 8, !dbg !1773, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %258) #38, !dbg !1773
  %259 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1774
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %253, ptr noundef %259) #38, !dbg !1774
  unreachable, !dbg !1774

260:                                              ; preds = %249, %246, %233
  %261 = load ptr, ptr @delim_lens, align 8, !dbg !1775, !tbaa !852
  %262 = getelementptr inbounds i64, ptr %261, i64 %56, !dbg !1775
  %263 = load i64, ptr %262, align 8, !dbg !1775, !tbaa !1145
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1377, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %263, metadata !1382, metadata !DIExpression()), !dbg !1776
  %264 = icmp eq i64 %263, 0, !dbg !1778
  br i1 %264, label %283, label %265, !dbg !1779

265:                                              ; preds = %260
  %266 = load ptr, ptr @delims, align 8, !dbg !1780, !tbaa !852
  call void @llvm.dbg.value(metadata !DIArgList(ptr %266, i64 %57), metadata !1377, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1776
  %267 = getelementptr inbounds i8, ptr %266, i64 %57, !dbg !1781
  call void @llvm.dbg.value(metadata ptr %267, metadata !1377, metadata !DIExpression()), !dbg !1776
  %268 = load ptr, ptr @stdout, align 8, !dbg !1782, !tbaa !852
  %269 = tail call i64 @fwrite_unlocked(ptr noundef %267, i64 noundef 1, i64 noundef %263, ptr noundef %268), !dbg !1782
  %270 = icmp eq i64 %269, %263, !dbg !1783
  br i1 %270, label %271, label %275, !dbg !1784

271:                                              ; preds = %265
  %272 = load ptr, ptr @delim_lens, align 8, !dbg !1785, !tbaa !852
  %273 = getelementptr inbounds i64, ptr %272, i64 %56
  %274 = load i64, ptr %273, align 8, !dbg !1785, !tbaa !1145
  br label %283, !dbg !1784

275:                                              ; preds = %265
  %.lcssa10 = phi ptr [ %77, %265 ], !dbg !1618
  %276 = load i32, ptr %.lcssa10, align 4, !dbg !1786, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %276, metadata !1401, metadata !DIExpression()), !dbg !1788
  %277 = load ptr, ptr @stdout, align 8, !dbg !1789, !tbaa !852
  %278 = tail call i32 @fflush_unlocked(ptr noundef %277) #38, !dbg !1789
  %279 = load ptr, ptr @stdout, align 8, !dbg !1790, !tbaa !852
  %280 = tail call i32 @fpurge(ptr noundef %279) #38, !dbg !1791
  %281 = load ptr, ptr @stdout, align 8, !dbg !1792, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %281) #38, !dbg !1792
  %282 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1793
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %276, ptr noundef %282) #38, !dbg !1793
  unreachable, !dbg !1793

283:                                              ; preds = %271, %260
  %284 = phi i64 [ %274, %271 ], [ 0, %260 ], !dbg !1785
  %285 = add i64 %284, %57, !dbg !1794
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !1521, metadata !DIExpression()), !dbg !1610
  %286 = add nsw i64 %56, 1, !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 %286, metadata !1520, metadata !DIExpression()), !dbg !1610
  %287 = load i64, ptr @num_delims, align 8, !dbg !1797, !tbaa !1145
  %288 = icmp eq i64 %286, %287, !dbg !1798
  %289 = select i1 %288, i64 0, i64 %285, !dbg !1799
  %290 = select i1 %288, i64 0, i64 %286, !dbg !1799
  br label %317, !dbg !1799

291:                                              ; preds = %229
  %292 = icmp eq i32 %230, -1, !dbg !1800
  %293 = load i1, ptr @line_delim, align 1, !dbg !1801
  %294 = select i1 %293, i32 0, i32 10, !dbg !1801
  %295 = select i1 %292, i32 %294, i32 %230, !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 %295, metadata !1554, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1802
  call void @llvm.dbg.value(metadata i32 %295, metadata !1417, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %295, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1805
  %296 = load ptr, ptr @stdout, align 8, !dbg !1807, !tbaa !852
  %297 = getelementptr inbounds %struct._IO_FILE, ptr %296, i64 0, i32 5, !dbg !1807
  %298 = load ptr, ptr %297, align 8, !dbg !1807, !tbaa !1433
  %299 = getelementptr inbounds %struct._IO_FILE, ptr %296, i64 0, i32 6, !dbg !1807
  %300 = load ptr, ptr %299, align 8, !dbg !1807, !tbaa !1434
  %301 = icmp ult ptr %298, %300, !dbg !1807
  br i1 %301, label %302, label %305, !dbg !1807, !prof !1356

302:                                              ; preds = %291
  %303 = trunc i32 %295 to i8, !dbg !1808
  tail call void @llvm.dbg.value(metadata i8 %303, metadata !1554, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8 %303, metadata !1417, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %303, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1805
  %304 = getelementptr inbounds i8, ptr %298, i64 1, !dbg !1807
  store ptr %304, ptr %297, align 8, !dbg !1807, !tbaa !1433
  store i8 %303, ptr %298, align 1, !dbg !1807, !tbaa !930
  br label %317, !dbg !1809

305:                                              ; preds = %291
  %306 = and i32 %295, 255, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %306, metadata !1424, metadata !DIExpression()), !dbg !1805
  %307 = tail call i32 @__overflow(ptr noundef nonnull %296, i32 noundef %306) #38, !dbg !1807
  %308 = icmp slt i32 %307, 0, !dbg !1811
  br i1 %308, label %309, label %317, !dbg !1809

309:                                              ; preds = %305
  %.lcssa11 = phi ptr [ %77, %305 ], !dbg !1618
  %310 = load i32, ptr %.lcssa11, align 4, !dbg !1812, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %310, metadata !1401, metadata !DIExpression()), !dbg !1814
  %311 = load ptr, ptr @stdout, align 8, !dbg !1815, !tbaa !852
  %312 = tail call i32 @fflush_unlocked(ptr noundef %311) #38, !dbg !1815
  %313 = load ptr, ptr @stdout, align 8, !dbg !1816, !tbaa !852
  %314 = tail call i32 @fpurge(ptr noundef %313) #38, !dbg !1817
  %315 = load ptr, ptr @stdout, align 8, !dbg !1818, !tbaa !852
  tail call void @clearerr_unlocked(ptr noundef %315) #38, !dbg !1818
  %316 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1819
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %310, ptr noundef %316) #38, !dbg !1819
  unreachable, !dbg !1819

317:                                              ; preds = %305, %302, %283, %221
  %318 = phi i64 [ %231, %305 ], [ %231, %302 ], [ %231, %283 ], [ %169, %221 ], !dbg !1820
  %319 = phi i64 [ %95, %305 ], [ %95, %302 ], [ %95, %283 ], [ %222, %221 ], !dbg !1607
  %320 = phi i64 [ %57, %305 ], [ %57, %302 ], [ %289, %283 ], [ %227, %221 ], !dbg !1610
  %321 = phi i64 [ %56, %305 ], [ %56, %302 ], [ %290, %283 ], [ %228, %221 ], !dbg !1610
  %322 = phi i1 [ true, %305 ], [ true, %302 ], [ true, %283 ], [ %55, %221 ]
  %323 = phi i64 [ %54, %305 ], [ %54, %302 ], [ %54, %283 ], [ %167, %221 ], !dbg !1558
  %324 = phi i1 [ %53, %305 ], [ %53, %302 ], [ %53, %283 ], [ %168, %221 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1512, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1516, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1518, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 %321, metadata !1520, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1521, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1528, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1522, metadata !DIExpression()), !dbg !1610
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1525, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1523, metadata !DIExpression()), !dbg !1611
  %325 = icmp ult i64 %318, %0, !dbg !1821
  %326 = icmp ne i64 %323, 0, !dbg !1822
  %327 = select i1 %325, i1 %326, i1 false, !dbg !1822
  br i1 %327, label %52, label %.loopexit2, !dbg !1612, !llvm.loop !1823

.loopexit3:                                       ; preds = %45
  %.lcssa24 = phi i1 [ %47, %45 ]
  br label %328, !dbg !1825

328:                                              ; preds = %.loopexit3, %2
  %329 = phi i1 [ true, %2 ], [ %.lcssa24, %.loopexit3 ]
  tail call void @free(ptr noundef nonnull %9) #38, !dbg !1825
  tail call void @free(ptr noundef nonnull %7) #38, !dbg !1826
  ret i1 %329, !dbg !1827
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1828 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1831 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1835 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1838 i32 @fileno_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1839 i32 @__uflow(ptr noundef) local_unnamed_addr #3

declare !dbg !1840 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1841 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1844 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1847 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1849, metadata !DIExpression()), !dbg !1850
  store ptr %0, ptr @file_name, align 8, !dbg !1851, !tbaa !852
  ret void, !dbg !1852
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1853 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1857, metadata !DIExpression()), !dbg !1858
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1859, !tbaa !1860
  ret void, !dbg !1862
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1863 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1868, !tbaa !852
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1869
  %3 = icmp eq i32 %2, 0, !dbg !1870
  br i1 %3, label %22, label %4, !dbg !1871

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1872, !tbaa !1860, !range !1873, !noundef !889
  %6 = icmp eq i8 %5, 0, !dbg !1872
  br i1 %6, label %11, label %7, !dbg !1874

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1875
  %9 = load i32, ptr %8, align 4, !dbg !1875, !tbaa !921
  %10 = icmp eq i32 %9, 32, !dbg !1876
  br i1 %10, label %22, label %11, !dbg !1877

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1.30, i32 noundef 5) #38, !dbg !1878
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1865, metadata !DIExpression()), !dbg !1879
  %13 = load ptr, ptr @file_name, align 8, !dbg !1880, !tbaa !852
  %14 = icmp eq ptr %13, null, !dbg !1880
  %15 = tail call ptr @__errno_location() #41, !dbg !1882
  %16 = load i32, ptr %15, align 4, !dbg !1882, !tbaa !921
  br i1 %14, label %19, label %17, !dbg !1883

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1884
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.31, ptr noundef %18, ptr noundef %12) #38, !dbg !1884
  br label %20, !dbg !1884

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.32, ptr noundef %12) #38, !dbg !1885
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1886, !tbaa !921
  tail call void @_exit(i32 noundef %21) #40, !dbg !1887
  unreachable, !dbg !1887

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1888, !tbaa !852
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1890
  %25 = icmp eq i32 %24, 0, !dbg !1891
  br i1 %25, label %28, label %26, !dbg !1892

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1893, !tbaa !921
  tail call void @_exit(i32 noundef %27) #40, !dbg !1894
  unreachable, !dbg !1894

28:                                               ; preds = %22
  ret void, !dbg !1895
}

; Function Attrs: noreturn
declare !dbg !1896 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1898 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1902, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1903, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1904, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1905, metadata !DIExpression(DW_OP_deref)), !dbg !1906
  tail call fastcc void @flush_stdout(), !dbg !1907
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1908, !tbaa !852
  %7 = icmp eq ptr %6, null, !dbg !1908
  br i1 %7, label %9, label %8, !dbg !1910

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1911
  br label %13, !dbg !1911

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1912, !tbaa !852
  %11 = tail call ptr @getprogname() #39, !dbg !1912
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %11) #38, !dbg !1912
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1914, !tbaa.struct !1915
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1914
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1914
  ret void, !dbg !1916
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1917 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1919, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i32 1, metadata !1921, metadata !DIExpression()), !dbg !1924
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1927
  %2 = icmp slt i32 %1, 0, !dbg !1928
  br i1 %2, label %6, label %3, !dbg !1929

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1930, !tbaa !852
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1930
  br label %6, !dbg !1930

6:                                                ; preds = %3, %0
  ret void, !dbg !1931
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1932 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1938
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1934, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1935, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1936, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1937, metadata !DIExpression(DW_OP_deref)), !dbg !1939
  %7 = load ptr, ptr @stderr, align 8, !dbg !1940, !tbaa !852
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1941, !noalias !1985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1989
  call void @llvm.dbg.value(metadata ptr %7, metadata !1981, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata ptr %2, metadata !1982, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata ptr poison, metadata !1983, metadata !DIExpression(DW_OP_deref)), !dbg !1990
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1941, !noalias !1985
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1991, !tbaa !921
  %10 = add i32 %9, 1, !dbg !1991
  store i32 %10, ptr @error_message_count, align 4, !dbg !1991, !tbaa !921
  %11 = icmp eq i32 %1, 0, !dbg !1992
  br i1 %11, label %21, label %12, !dbg !1994

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1995, metadata !DIExpression(), metadata !1938, metadata ptr %5, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %1, metadata !1998, metadata !DIExpression()), !dbg !2003
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2005
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2006
  call void @llvm.dbg.value(metadata ptr %13, metadata !1999, metadata !DIExpression()), !dbg !2003
  %14 = icmp eq ptr %13, null, !dbg !2007
  br i1 %14, label %15, label %17, !dbg !2009

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.34, ptr noundef nonnull @.str.5.35, i32 noundef 5) #38, !dbg !2010
  call void @llvm.dbg.value(metadata ptr %16, metadata !1999, metadata !DIExpression()), !dbg !2003
  br label %17, !dbg !2011

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2003
  call void @llvm.dbg.value(metadata ptr %18, metadata !1999, metadata !DIExpression()), !dbg !2003
  %19 = load ptr, ptr @stderr, align 8, !dbg !2012, !tbaa !852
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.36, ptr noundef %18) #38, !dbg !2012
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2013
  br label %21, !dbg !2014

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2015, !tbaa !852
  call void @llvm.dbg.value(metadata i32 10, metadata !2016, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %22, metadata !2021, metadata !DIExpression()), !dbg !2022
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2024
  %24 = load ptr, ptr %23, align 8, !dbg !2024, !tbaa !1433
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2024
  %26 = load ptr, ptr %25, align 8, !dbg !2024, !tbaa !1434
  %27 = icmp ult ptr %24, %26, !dbg !2024
  br i1 %27, label %30, label %28, !dbg !2024, !prof !1356

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !2024
  br label %32, !dbg !2024

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2024
  store ptr %31, ptr %23, align 8, !dbg !2024, !tbaa !1433
  store i8 10, ptr %24, align 1, !dbg !2024, !tbaa !930
  br label %32, !dbg !2024

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2025, !tbaa !852
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !2025
  %35 = icmp eq i32 %0, 0, !dbg !2026
  br i1 %35, label %37, label %36, !dbg !2028

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !2029
  unreachable, !dbg !2029

37:                                               ; preds = %32
  ret void, !dbg !2030
}

declare !dbg !2031 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2034 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2037 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2041 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2049
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2048, metadata !DIExpression(), metadata !2049, metadata ptr %4, metadata !DIExpression()), !dbg !2050
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2045, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2046, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2047, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !2051
  call void @llvm.va_start(ptr nonnull %4), !dbg !2052
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2053, !tbaa.struct !1915
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !2053
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2053
  call void @llvm.va_end(ptr nonnull %4), !dbg !2054
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !2055
  ret void, !dbg !2055
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !452 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !468, metadata !DIExpression()), !dbg !2056
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !469, metadata !DIExpression()), !dbg !2056
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !470, metadata !DIExpression()), !dbg !2056
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !471, metadata !DIExpression()), !dbg !2056
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !472, metadata !DIExpression()), !dbg !2056
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !473, metadata !DIExpression(DW_OP_deref)), !dbg !2056
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2057, !tbaa !921
  %9 = icmp eq i32 %8, 0, !dbg !2057
  br i1 %9, label %24, label %10, !dbg !2059

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2060, !tbaa !921
  %12 = icmp eq i32 %11, %3, !dbg !2063
  br i1 %12, label %13, label %23, !dbg !2064

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2065, !tbaa !852
  %15 = icmp eq ptr %14, %2, !dbg !2066
  br i1 %15, label %37, label %16, !dbg !2067

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2068
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2069
  br i1 %19, label %20, label %23, !dbg !2069

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2070
  %22 = icmp eq i32 %21, 0, !dbg !2071
  br i1 %22, label %37, label %23, !dbg !2072

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2073, !tbaa !852
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2074, !tbaa !921
  br label %24, !dbg !2075

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2076
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2077, !tbaa !852
  %26 = icmp eq ptr %25, null, !dbg !2077
  br i1 %26, label %28, label %27, !dbg !2079

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !2080
  br label %32, !dbg !2080

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2081, !tbaa !852
  %30 = tail call ptr @getprogname() #39, !dbg !2081
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.39, ptr noundef %30) #38, !dbg !2081
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2083, !tbaa !852
  %34 = icmp eq ptr %2, null, !dbg !2083
  %35 = select i1 %34, ptr @.str.3.40, ptr @.str.2.41, !dbg !2083
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !2083
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2084, !tbaa.struct !1915
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2084
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2084
  br label %37, !dbg !2085

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2085
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2086 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2096
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2095, metadata !DIExpression(), metadata !2096, metadata ptr %6, metadata !DIExpression()), !dbg !2097
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2090, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2091, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2092, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2093, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2094, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2098
  call void @llvm.va_start(ptr nonnull %6), !dbg !2099
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2100, !tbaa.struct !1915
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2100
  call void @llvm.va_end(ptr nonnull %6), !dbg !2101
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2102
  ret void, !dbg !2102
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2103 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2109, metadata !DIExpression()), !dbg !2113
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2110, metadata !DIExpression()), !dbg !2113
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2111, metadata !DIExpression()), !dbg !2113
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2112, metadata !DIExpression()), !dbg !2113
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: nounwind
declare !dbg !2116 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2119 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2157, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2158, metadata !DIExpression()), !dbg !2159
  %3 = icmp eq ptr %0, null, !dbg !2160
  br i1 %3, label %7, label %4, !dbg !2162

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %5, metadata !2109, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i64 0, metadata !2110, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i64 0, metadata !2111, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32 %1, metadata !2112, metadata !DIExpression()), !dbg !2164
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2166
  br label %7, !dbg !2167

7:                                                ; preds = %4, %2
  ret void, !dbg !2168
}

; Function Attrs: nofree nounwind
declare !dbg !2169 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2172 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2210, metadata !DIExpression()), !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2214
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2215
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2212, metadata !DIExpression()), !dbg !2214
  %3 = icmp slt i32 %2, 0, !dbg !2216
  br i1 %3, label %4, label %6, !dbg !2218

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2219
  br label %24, !dbg !2220

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2221
  %8 = icmp eq i32 %7, 0, !dbg !2221
  br i1 %8, label %13, label %9, !dbg !2223

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2224
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2225
  %12 = icmp eq i64 %11, -1, !dbg !2226
  br i1 %12, label %16, label %13, !dbg !2227

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2228
  %15 = icmp eq i32 %14, 0, !dbg !2228
  br i1 %15, label %16, label %18, !dbg !2229

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()), !dbg !2214
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2230
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2213, metadata !DIExpression()), !dbg !2214
  br label %24, !dbg !2231

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2232
  %20 = load i32, ptr %19, align 4, !dbg !2232, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2211, metadata !DIExpression()), !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()), !dbg !2214
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2230
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2213, metadata !DIExpression()), !dbg !2214
  %22 = icmp eq i32 %20, 0, !dbg !2233
  br i1 %22, label %24, label %23, !dbg !2231

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2235, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2213, metadata !DIExpression()), !dbg !2214
  br label %24, !dbg !2237

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2214
  ret i32 %25, !dbg !2238
}

; Function Attrs: nofree nounwind
declare !dbg !2239 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2240 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2242 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2245 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2283, metadata !DIExpression()), !dbg !2284
  %2 = icmp eq ptr %0, null, !dbg !2285
  br i1 %2, label %6, label %3, !dbg !2287

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2288
  %5 = icmp eq i32 %4, 0, !dbg !2288
  br i1 %5, label %6, label %8, !dbg !2289

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2290
  br label %16, !dbg !2291

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2292, metadata !DIExpression()), !dbg !2297
  %9 = load i32, ptr %0, align 8, !dbg !2299, !tbaa !1488
  %10 = and i32 %9, 256, !dbg !2301
  %11 = icmp eq i32 %10, 0, !dbg !2301
  br i1 %11, label %14, label %12, !dbg !2302

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2303
  br label %14, !dbg !2303

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2304
  br label %16, !dbg !2305

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2284
  ret i32 %17, !dbg !2306
}

; Function Attrs: nofree nounwind
declare !dbg !2307 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2308 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2346, metadata !DIExpression()), !dbg !2347
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2348
  ret i32 0, !dbg !2349
}

; Function Attrs: nounwind
declare !dbg !2350 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2353 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2391, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2392, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2393, metadata !DIExpression()), !dbg !2397
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2398
  %5 = load ptr, ptr %4, align 8, !dbg !2398, !tbaa !1355
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2399
  %7 = load ptr, ptr %6, align 8, !dbg !2399, !tbaa !1353
  %8 = icmp eq ptr %5, %7, !dbg !2400
  br i1 %8, label %9, label %27, !dbg !2401

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2402
  %11 = load ptr, ptr %10, align 8, !dbg !2402, !tbaa !1433
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2403
  %13 = load ptr, ptr %12, align 8, !dbg !2403, !tbaa !2404
  %14 = icmp eq ptr %11, %13, !dbg !2405
  br i1 %14, label %15, label %27, !dbg !2406

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2407
  %17 = load ptr, ptr %16, align 8, !dbg !2407, !tbaa !2408
  %18 = icmp eq ptr %17, null, !dbg !2409
  br i1 %18, label %19, label %27, !dbg !2410

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2411
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2412
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2394, metadata !DIExpression()), !dbg !2413
  %22 = icmp eq i64 %21, -1, !dbg !2414
  br i1 %22, label %29, label %23, !dbg !2416

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2417, !tbaa !1488
  %25 = and i32 %24, -17, !dbg !2417
  store i32 %25, ptr %0, align 8, !dbg !2417, !tbaa !1488
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2418
  store i64 %21, ptr %26, align 8, !dbg !2419, !tbaa !2420
  br label %29, !dbg !2421

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2422
  br label %29, !dbg !2423

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2397
  ret i32 %30, !dbg !2424
}

; Function Attrs: nofree nounwind
declare !dbg !2425 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2428 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2431, !tbaa !852
  ret ptr %1, !dbg !2432
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2433 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2435, metadata !DIExpression()), !dbg !2438
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2439
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2436, metadata !DIExpression()), !dbg !2438
  %3 = icmp eq ptr %2, null, !dbg !2440
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2440
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2440
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2437, metadata !DIExpression()), !dbg !2438
  %6 = ptrtoint ptr %5 to i64, !dbg !2441
  %7 = ptrtoint ptr %0 to i64, !dbg !2441
  %8 = sub i64 %6, %7, !dbg !2441
  %9 = icmp sgt i64 %8, 6, !dbg !2443
  br i1 %9, label %10, label %19, !dbg !2444

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2445
  call void @llvm.dbg.value(metadata ptr %11, metadata !2446, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata ptr @.str.66, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i64 7, metadata !2452, metadata !DIExpression()), !dbg !2453
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.66, i64 7), !dbg !2455
  %13 = icmp eq i32 %12, 0, !dbg !2456
  br i1 %13, label %14, label %19, !dbg !2457

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2435, metadata !DIExpression()), !dbg !2438
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.67, i64 noundef 3) #39, !dbg !2458
  %16 = icmp eq i32 %15, 0, !dbg !2461
  %17 = select i1 %16, i64 3, i64 0, !dbg !2462
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2462
  br label %19, !dbg !2462

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2438
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2437, metadata !DIExpression()), !dbg !2438
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2435, metadata !DIExpression()), !dbg !2438
  store ptr %20, ptr @program_name, align 8, !dbg !2463, !tbaa !852
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2464, !tbaa !852
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2465, !tbaa !852
  ret void, !dbg !2466
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2467 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !510 {
  %3 = alloca i32, align 4, !DIAssignID !2468
  call void @llvm.dbg.assign(metadata i1 undef, metadata !520, metadata !DIExpression(), metadata !2468, metadata ptr %3, metadata !DIExpression()), !dbg !2469
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2470
  call void @llvm.dbg.assign(metadata i1 undef, metadata !525, metadata !DIExpression(), metadata !2470, metadata ptr %4, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !517, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !518, metadata !DIExpression()), !dbg !2469
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2471
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !519, metadata !DIExpression()), !dbg !2469
  %6 = icmp eq ptr %5, %0, !dbg !2472
  br i1 %6, label %7, label %14, !dbg !2474

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2475
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2476
  call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata ptr %4, metadata !2486, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 0, metadata !2491, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 8, metadata !2492, metadata !DIExpression()), !dbg !2493
  store i64 0, ptr %4, align 8, !dbg !2495
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2496
  %9 = icmp eq i64 %8, 2, !dbg !2498
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2499
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2469
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2500
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2469
  ret ptr %15, !dbg !2500
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2501 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2506, metadata !DIExpression()), !dbg !2509
  %2 = tail call ptr @__errno_location() #41, !dbg !2510
  %3 = load i32, ptr %2, align 4, !dbg !2510, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2507, metadata !DIExpression()), !dbg !2509
  %4 = icmp eq ptr %0, null, !dbg !2511
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2511
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !2512
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i32 %3, ptr %2, align 4, !dbg !2513, !tbaa !921
  ret ptr %6, !dbg !2514
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !2515 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2521, metadata !DIExpression()), !dbg !2522
  %2 = icmp eq ptr %0, null, !dbg !2523
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2523
  %4 = load i32, ptr %3, align 8, !dbg !2524, !tbaa !2525
  ret i32 %4, !dbg !2527
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2528 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2532, metadata !DIExpression()), !dbg !2534
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()), !dbg !2534
  %3 = icmp eq ptr %0, null, !dbg !2535
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2535
  store i32 %1, ptr %4, align 8, !dbg !2536, !tbaa !2525
  ret void, !dbg !2537
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2538 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2542, metadata !DIExpression()), !dbg !2550
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2543, metadata !DIExpression()), !dbg !2550
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2544, metadata !DIExpression()), !dbg !2550
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2545, metadata !DIExpression()), !dbg !2550
  %4 = icmp eq ptr %0, null, !dbg !2551
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2551
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2552
  %7 = lshr i8 %1, 5, !dbg !2553
  %8 = zext nneg i8 %7 to i64, !dbg !2553
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2554
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2546, metadata !DIExpression()), !dbg !2550
  %10 = and i8 %1, 31, !dbg !2555
  %11 = zext nneg i8 %10 to i32, !dbg !2555
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2548, metadata !DIExpression()), !dbg !2550
  %12 = load i32, ptr %9, align 4, !dbg !2556, !tbaa !921
  %13 = lshr i32 %12, %11, !dbg !2557
  %14 = and i32 %13, 1, !dbg !2558
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2549, metadata !DIExpression()), !dbg !2550
  %15 = xor i32 %13, %2, !dbg !2559
  %16 = and i32 %15, 1, !dbg !2559
  %17 = shl nuw i32 %16, %11, !dbg !2560
  %18 = xor i32 %17, %12, !dbg !2561
  store i32 %18, ptr %9, align 4, !dbg !2561, !tbaa !921
  ret i32 %14, !dbg !2562
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2563 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2567, metadata !DIExpression()), !dbg !2570
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2568, metadata !DIExpression()), !dbg !2570
  %3 = icmp eq ptr %0, null, !dbg !2571
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2573
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2567, metadata !DIExpression()), !dbg !2570
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2574
  %6 = load i32, ptr %5, align 4, !dbg !2574, !tbaa !2575
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2569, metadata !DIExpression()), !dbg !2570
  store i32 %1, ptr %5, align 4, !dbg !2576, !tbaa !2575
  ret i32 %6, !dbg !2577
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2578 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2582, metadata !DIExpression()), !dbg !2585
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2583, metadata !DIExpression()), !dbg !2585
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2584, metadata !DIExpression()), !dbg !2585
  %4 = icmp eq ptr %0, null, !dbg !2586
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2588
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2582, metadata !DIExpression()), !dbg !2585
  store i32 10, ptr %5, align 8, !dbg !2589, !tbaa !2525
  %6 = icmp ne ptr %1, null, !dbg !2590
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2592
  br i1 %8, label %10, label %9, !dbg !2592

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2593
  unreachable, !dbg !2593

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2594
  store ptr %1, ptr %11, align 8, !dbg !2595, !tbaa !2596
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2597
  store ptr %2, ptr %12, align 8, !dbg !2598, !tbaa !2599
  ret void, !dbg !2600
}

; Function Attrs: noreturn nounwind
declare !dbg !2601 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2602 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2606, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2607, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2608, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2609, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2610, metadata !DIExpression()), !dbg !2614
  %6 = icmp eq ptr %4, null, !dbg !2615
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2615
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2611, metadata !DIExpression()), !dbg !2614
  %8 = tail call ptr @__errno_location() #41, !dbg !2616
  %9 = load i32, ptr %8, align 4, !dbg !2616, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2612, metadata !DIExpression()), !dbg !2614
  %10 = load i32, ptr %7, align 8, !dbg !2617, !tbaa !2525
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2618
  %12 = load i32, ptr %11, align 4, !dbg !2618, !tbaa !2575
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2619
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2620
  %15 = load ptr, ptr %14, align 8, !dbg !2620, !tbaa !2596
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2621
  %17 = load ptr, ptr %16, align 8, !dbg !2621, !tbaa !2599
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2613, metadata !DIExpression()), !dbg !2614
  store i32 %9, ptr %8, align 4, !dbg !2623, !tbaa !921
  ret i64 %18, !dbg !2624
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2625 {
  %10 = alloca i32, align 4, !DIAssignID !2693
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2694
  %12 = alloca i32, align 4, !DIAssignID !2695
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2696
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2697
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2671, metadata !DIExpression(), metadata !2697, metadata ptr %14, metadata !DIExpression()), !dbg !2698
  %15 = alloca i32, align 4, !DIAssignID !2699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2674, metadata !DIExpression(), metadata !2699, metadata ptr %15, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2633, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2634, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2635, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2636, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2637, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2638, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2639, metadata !DIExpression()), !dbg !2701
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2702
  %17 = icmp eq i64 %16, 1, !dbg !2703
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2640, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2642, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2643, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2644, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2645, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2646, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2648, metadata !DIExpression()), !dbg !2701
  %18 = and i32 %5, 2, !dbg !2704
  %19 = icmp ne i32 %18, 0, !dbg !2704
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2704

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2705
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2706
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2707
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2646, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2644, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2643, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2642, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2634, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2639, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2638, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2635, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2649), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2650, metadata !DIExpression()), !dbg !2701
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
  ], !dbg !2709

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2646, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2635, metadata !DIExpression()), !dbg !2701
  br label %101, !dbg !2710

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2646, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2635, metadata !DIExpression()), !dbg !2701
  br i1 %36, label %101, label %42, !dbg !2710

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2711
  br i1 %43, label %101, label %44, !dbg !2715

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2711, !tbaa !930
  br label %101, !dbg !2711

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !614, metadata !DIExpression(), metadata !2695, metadata ptr %12, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !615, metadata !DIExpression(), metadata !2696, metadata ptr %13, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr @.str.11.80, metadata !611, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 %28, metadata !612, metadata !DIExpression()), !dbg !2716
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.11.80, i32 noundef 5) #38, !dbg !2720
  call void @llvm.dbg.value(metadata ptr %46, metadata !613, metadata !DIExpression()), !dbg !2716
  %47 = icmp eq ptr %46, @.str.11.80, !dbg !2721
  br i1 %47, label %48, label %57, !dbg !2723

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2724
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2725
  call void @llvm.dbg.value(metadata ptr %13, metadata !2726, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %13, metadata !2734, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 8, metadata !2738, metadata !DIExpression()), !dbg !2739
  store i64 0, ptr %13, align 8, !dbg !2741
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2742
  %50 = icmp eq i64 %49, 3, !dbg !2744
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2745
  %54 = icmp eq i32 %28, 9, !dbg !2745
  %55 = select i1 %54, ptr @.str.10.82, ptr @.str.12.83, !dbg !2745
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2745
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2746
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2746
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2716
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2638, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.assign(metadata i1 undef, metadata !614, metadata !DIExpression(), metadata !2693, metadata ptr %10, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.assign(metadata i1 undef, metadata !615, metadata !DIExpression(), metadata !2694, metadata ptr %11, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata ptr @.str.12.83, metadata !611, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 %28, metadata !612, metadata !DIExpression()), !dbg !2747
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.81, ptr noundef nonnull @.str.12.83, i32 noundef 5) #38, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %59, metadata !613, metadata !DIExpression()), !dbg !2747
  %60 = icmp eq ptr %59, @.str.12.83, !dbg !2750
  br i1 %60, label %61, label %70, !dbg !2751

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2752
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2753
  call void @llvm.dbg.value(metadata ptr %11, metadata !2726, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %11, metadata !2734, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 8, metadata !2738, metadata !DIExpression()), !dbg !2756
  store i64 0, ptr %11, align 8, !dbg !2758
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2759
  %63 = icmp eq i64 %62, 3, !dbg !2760
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2761
  %67 = icmp eq i32 %28, 9, !dbg !2761
  %68 = select i1 %67, ptr @.str.10.82, ptr @.str.12.83, !dbg !2761
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2762
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2762
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2639, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2638, metadata !DIExpression()), !dbg !2701
  br i1 %36, label %88, label %73, !dbg !2763

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2651, metadata !DIExpression()), !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2641, metadata !DIExpression()), !dbg !2701
  %74 = load i8, ptr %71, align 1, !dbg !2765, !tbaa !930
  %75 = icmp eq i8 %74, 0, !dbg !2767
  br i1 %75, label %88, label %.preheader11, !dbg !2767

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2767

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2651, metadata !DIExpression()), !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2641, metadata !DIExpression()), !dbg !2701
  %80 = icmp ult i64 %79, %39, !dbg !2768
  br i1 %80, label %81, label %83, !dbg !2771

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2768
  store i8 %77, ptr %82, align 1, !dbg !2768, !tbaa !930
  br label %83, !dbg !2768

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2641, metadata !DIExpression()), !dbg !2701
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2772
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2651, metadata !DIExpression()), !dbg !2764
  %86 = load i8, ptr %85, align 1, !dbg !2765, !tbaa !930
  %87 = icmp eq i8 %86, 0, !dbg !2767
  br i1 %87, label %.loopexit12, label %76, !dbg !2767, !llvm.loop !2773

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2771
  br label %88, !dbg !2775

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2645, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2643, metadata !DIExpression()), !dbg !2701
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !2775
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2644, metadata !DIExpression()), !dbg !2701
  br label %101, !dbg !2777

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2646, metadata !DIExpression()), !dbg !2701
  br label %101, !dbg !2778

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2646, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2635, metadata !DIExpression()), !dbg !2701
  br label %101, !dbg !2779

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2646, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2701
  br i1 %36, label %101, label %95, !dbg !2780

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2646, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2635, metadata !DIExpression()), !dbg !2701
  br i1 %36, label %101, label %95, !dbg !2779

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2781
  br i1 %97, label %101, label %98, !dbg !2785

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2781, !tbaa !930
  br label %101, !dbg !2781

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2646, metadata !DIExpression()), !dbg !2701
  br label %101, !dbg !2786

100:                                              ; preds = %27
  call void @abort() #40, !dbg !2787
  unreachable, !dbg !2787

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2776
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.82, %42 ], [ @.str.10.82, %44 ], [ @.str.10.82, %41 ], [ %33, %27 ], [ @.str.12.83, %95 ], [ @.str.12.83, %98 ], [ @.str.12.83, %94 ], [ @.str.10.82, %40 ], [ @.str.12.83, %91 ], [ @.str.12.83, %92 ], [ @.str.12.83, %93 ], !dbg !2701
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2701
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2646, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2645, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2644, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2643, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2639, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2638, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2635, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2656, metadata !DIExpression()), !dbg !2788
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
  br label %121, !dbg !2789

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2776
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2705
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2790
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2656, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2642, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2634, metadata !DIExpression()), !dbg !2701
  %130 = icmp eq i64 %122, -1, !dbg !2791
  br i1 %130, label %131, label %135, !dbg !2792

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2793
  %133 = load i8, ptr %132, align 1, !dbg !2793, !tbaa !930
  %134 = icmp eq i8 %133, 0, !dbg !2794
  br i1 %134, label %573, label %137, !dbg !2795

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2796
  br i1 %136, label %573, label %137, !dbg !2795

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2658, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2797
  br i1 %113, label %138, label %151, !dbg !2798

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2800
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2801
  br i1 %140, label %141, label %143, !dbg !2801

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2802
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2634, metadata !DIExpression()), !dbg !2701
  br label %143, !dbg !2803

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2634, metadata !DIExpression()), !dbg !2701
  %145 = icmp ugt i64 %139, %144, !dbg !2804
  br i1 %145, label %151, label %146, !dbg !2805

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2806
  call void @llvm.dbg.value(metadata ptr %147, metadata !2807, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata ptr %106, metadata !2810, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %107, metadata !2811, metadata !DIExpression()), !dbg !2812
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2814
  %149 = icmp eq i32 %148, 0, !dbg !2815
  %150 = and i1 %149, %109, !dbg !2816
  br i1 %150, label %.loopexit7, label %151, !dbg !2816

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2658, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2634, metadata !DIExpression()), !dbg !2701
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2817
  %155 = load i8, ptr %154, align 1, !dbg !2817, !tbaa !930
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2663, metadata !DIExpression()), !dbg !2797
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
  ], !dbg !2818

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2819

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2820

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2797
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2824
  br i1 %159, label %176, label %160, !dbg !2824

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2826
  br i1 %161, label %162, label %164, !dbg !2830

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2826
  store i8 39, ptr %163, align 1, !dbg !2826, !tbaa !930
  br label %164, !dbg !2826

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2641, metadata !DIExpression()), !dbg !2701
  %166 = icmp ult i64 %165, %129, !dbg !2831
  br i1 %166, label %167, label %169, !dbg !2834

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2831
  store i8 36, ptr %168, align 1, !dbg !2831, !tbaa !930
  br label %169, !dbg !2831

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2641, metadata !DIExpression()), !dbg !2701
  %171 = icmp ult i64 %170, %129, !dbg !2835
  br i1 %171, label %172, label %174, !dbg !2838

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2835
  store i8 39, ptr %173, align 1, !dbg !2835, !tbaa !930
  br label %174, !dbg !2835

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2650, metadata !DIExpression()), !dbg !2701
  br label %176, !dbg !2839

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2701
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2641, metadata !DIExpression()), !dbg !2701
  %179 = icmp ult i64 %177, %129, !dbg !2840
  br i1 %179, label %180, label %182, !dbg !2843

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2840
  store i8 92, ptr %181, align 1, !dbg !2840, !tbaa !930
  br label %182, !dbg !2840

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2641, metadata !DIExpression()), !dbg !2701
  br i1 %110, label %184, label %476, !dbg !2844

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2846
  %186 = icmp ult i64 %185, %152, !dbg !2847
  br i1 %186, label %187, label %433, !dbg !2848

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2849
  %189 = load i8, ptr %188, align 1, !dbg !2849, !tbaa !930
  %190 = add i8 %189, -48, !dbg !2850
  %191 = icmp ult i8 %190, 10, !dbg !2850
  br i1 %191, label %192, label %433, !dbg !2850

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2851
  br i1 %193, label %194, label %196, !dbg !2855

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2851
  store i8 48, ptr %195, align 1, !dbg !2851, !tbaa !930
  br label %196, !dbg !2851

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2855
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2641, metadata !DIExpression()), !dbg !2701
  %198 = icmp ult i64 %197, %129, !dbg !2856
  br i1 %198, label %199, label %201, !dbg !2859

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2856
  store i8 48, ptr %200, align 1, !dbg !2856, !tbaa !930
  br label %201, !dbg !2856

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2859
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2641, metadata !DIExpression()), !dbg !2701
  br label %433, !dbg !2860

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2861

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2862

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2863

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2865

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2867
  %209 = icmp ult i64 %208, %152, !dbg !2868
  br i1 %209, label %210, label %433, !dbg !2869

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2870
  %212 = load i8, ptr %211, align 1, !dbg !2870, !tbaa !930
  %213 = icmp eq i8 %212, 63, !dbg !2871
  br i1 %213, label %214, label %433, !dbg !2872

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2873
  %216 = load i8, ptr %215, align 1, !dbg !2873, !tbaa !930
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
  ], !dbg !2874

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2875

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2663, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2656, metadata !DIExpression()), !dbg !2788
  %219 = icmp ult i64 %123, %129, !dbg !2877
  br i1 %219, label %220, label %222, !dbg !2880

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2877
  store i8 63, ptr %221, align 1, !dbg !2877, !tbaa !930
  br label %222, !dbg !2877

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2641, metadata !DIExpression()), !dbg !2701
  %224 = icmp ult i64 %223, %129, !dbg !2881
  br i1 %224, label %225, label %227, !dbg !2884

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2881
  store i8 34, ptr %226, align 1, !dbg !2881, !tbaa !930
  br label %227, !dbg !2881

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2884
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2641, metadata !DIExpression()), !dbg !2701
  %229 = icmp ult i64 %228, %129, !dbg !2885
  br i1 %229, label %230, label %232, !dbg !2888

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2885
  store i8 34, ptr %231, align 1, !dbg !2885, !tbaa !930
  br label %232, !dbg !2885

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2888
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2641, metadata !DIExpression()), !dbg !2701
  %234 = icmp ult i64 %233, %129, !dbg !2889
  br i1 %234, label %235, label %237, !dbg !2892

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2889
  store i8 63, ptr %236, align 1, !dbg !2889, !tbaa !930
  br label %237, !dbg !2889

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2641, metadata !DIExpression()), !dbg !2701
  br label %433, !dbg !2893

239:                                              ; preds = %151
  br label %249, !dbg !2894

240:                                              ; preds = %151
  br label %249, !dbg !2895

241:                                              ; preds = %151
  br label %247, !dbg !2896

242:                                              ; preds = %151
  br label %247, !dbg !2897

243:                                              ; preds = %151
  br label %249, !dbg !2898

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2899

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2900

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2903

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2905
  call void @llvm.dbg.label(metadata !2664), !dbg !2906
  br i1 %118, label %.loopexit8, label %249, !dbg !2907

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2905
  call void @llvm.dbg.label(metadata !2667), !dbg !2909
  br i1 %108, label %487, label %444, !dbg !2910

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2911

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2912, !tbaa !930
  %254 = icmp eq i8 %253, 0, !dbg !2914
  br i1 %254, label %255, label %433, !dbg !2915

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2916
  br i1 %256, label %257, label %433, !dbg !2918

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2662, metadata !DIExpression()), !dbg !2797
  br label %258, !dbg !2919

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2797
  br i1 %115, label %260, label %433, !dbg !2920

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2922

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2662, metadata !DIExpression()), !dbg !2797
  br i1 %115, label %262, label %433, !dbg !2923

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2924

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2927
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2929
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2929
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2642, metadata !DIExpression()), !dbg !2701
  %269 = icmp ult i64 %123, %268, !dbg !2930
  br i1 %269, label %270, label %272, !dbg !2933

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2930
  store i8 39, ptr %271, align 1, !dbg !2930, !tbaa !930
  br label %272, !dbg !2930

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2933
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2641, metadata !DIExpression()), !dbg !2701
  %274 = icmp ult i64 %273, %268, !dbg !2934
  br i1 %274, label %275, label %277, !dbg !2937

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2934
  store i8 92, ptr %276, align 1, !dbg !2934, !tbaa !930
  br label %277, !dbg !2934

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2937
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2641, metadata !DIExpression()), !dbg !2701
  %279 = icmp ult i64 %278, %268, !dbg !2938
  br i1 %279, label %280, label %282, !dbg !2941

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2938
  store i8 39, ptr %281, align 1, !dbg !2938, !tbaa !930
  br label %282, !dbg !2938

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2650, metadata !DIExpression()), !dbg !2701
  br label %433, !dbg !2942

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2943

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2668, metadata !DIExpression()), !dbg !2944
  %286 = tail call ptr @__ctype_b_loc() #41, !dbg !2945
  %287 = load ptr, ptr %286, align 8, !dbg !2945, !tbaa !852
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2945
  %290 = load i16, ptr %289, align 2, !dbg !2945, !tbaa !962
  %291 = and i16 %290, 16384, !dbg !2945
  %292 = icmp ne i16 %291, 0, !dbg !2947
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2670, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2944
  br label %334, !dbg !2948

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %14, metadata !2726, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata ptr %14, metadata !2734, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 8, metadata !2738, metadata !DIExpression()), !dbg !2952
  store i64 0, ptr %14, align 8, !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2668, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2670, metadata !DIExpression()), !dbg !2944
  %294 = icmp eq i64 %152, -1, !dbg !2955
  br i1 %294, label %295, label %297, !dbg !2957

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2634, metadata !DIExpression()), !dbg !2701
  br label %297, !dbg !2959

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2634, metadata !DIExpression()), !dbg !2701
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2960
  %299 = sub i64 %298, %128, !dbg !2961
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #38, !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2678, metadata !DIExpression()), !dbg !2700
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2963

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2668, metadata !DIExpression()), !dbg !2944
  %302 = icmp ult i64 %128, %298, !dbg !2964
  br i1 %302, label %.preheader5, label %329, !dbg !2966

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2967

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2670, metadata !DIExpression()), !dbg !2944
  br label %329, !dbg !2968

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2668, metadata !DIExpression()), !dbg !2944
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2970
  %308 = load i8, ptr %307, align 1, !dbg !2970, !tbaa !930
  %309 = icmp eq i8 %308, 0, !dbg !2966
  br i1 %309, label %.loopexit6, label %310, !dbg !2967

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2668, metadata !DIExpression()), !dbg !2944
  %312 = add i64 %311, %128, !dbg !2972
  %313 = icmp eq i64 %311, %299, !dbg !2964
  br i1 %313, label %.loopexit6, label %304, !dbg !2966, !llvm.loop !2973

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2679, metadata !DIExpression()), !dbg !2974
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2975
  %317 = and i1 %316, %109, !dbg !2975
  br i1 %317, label %.preheader3, label %325, !dbg !2975

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2976

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2679, metadata !DIExpression()), !dbg !2974
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2977
  %321 = load i8, ptr %320, align 1, !dbg !2977, !tbaa !930
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2979

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2679, metadata !DIExpression()), !dbg !2974
  %324 = icmp eq i64 %323, %300, !dbg !2981
  br i1 %324, label %.loopexit4, label %318, !dbg !2976, !llvm.loop !2982

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2984

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2984, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %326, metadata !2986, metadata !DIExpression()), !dbg !2994
  %327 = call i32 @iswprint(i32 noundef %326) #38, !dbg !2996
  %328 = icmp ne i32 %327, 0, !dbg !2997
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2670, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2668, metadata !DIExpression()), !dbg !2944
  br label %329, !dbg !2998

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2999

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2670, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2668, metadata !DIExpression()), !dbg !2944
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3000
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2670, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2668, metadata !DIExpression()), !dbg !2944
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3000
  call void @llvm.dbg.label(metadata !2692), !dbg !3001
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3002
  br label %624, !dbg !3002

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2797
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3004
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2670, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2668, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2634, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2662, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2797
  %338 = icmp ult i64 %336, 2, !dbg !3005
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3006
  br i1 %340, label %433, label %341, !dbg !3006

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2687, metadata !DIExpression()), !dbg !3008
  br label %343, !dbg !3009

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2701
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2788
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2663, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2661, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2658, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2656, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2641, metadata !DIExpression()), !dbg !2701
  br i1 %339, label %394, label %350, !dbg !3010

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3015

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2797
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3018
  br i1 %352, label %369, label %353, !dbg !3018

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3020
  br i1 %354, label %355, label %357, !dbg !3024

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3020
  store i8 39, ptr %356, align 1, !dbg !3020, !tbaa !930
  br label %357, !dbg !3020

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3024
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2641, metadata !DIExpression()), !dbg !2701
  %359 = icmp ult i64 %358, %129, !dbg !3025
  br i1 %359, label %360, label %362, !dbg !3028

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3025
  store i8 36, ptr %361, align 1, !dbg !3025, !tbaa !930
  br label %362, !dbg !3025

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3028
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2641, metadata !DIExpression()), !dbg !2701
  %364 = icmp ult i64 %363, %129, !dbg !3029
  br i1 %364, label %365, label %367, !dbg !3032

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3029
  store i8 39, ptr %366, align 1, !dbg !3029, !tbaa !930
  br label %367, !dbg !3029

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3032
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2650, metadata !DIExpression()), !dbg !2701
  br label %369, !dbg !3033

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2701
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2641, metadata !DIExpression()), !dbg !2701
  %372 = icmp ult i64 %370, %129, !dbg !3034
  br i1 %372, label %373, label %375, !dbg !3037

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3034
  store i8 92, ptr %374, align 1, !dbg !3034, !tbaa !930
  br label %375, !dbg !3034

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2641, metadata !DIExpression()), !dbg !2701
  %377 = icmp ult i64 %376, %129, !dbg !3038
  br i1 %377, label %378, label %382, !dbg !3041

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3038
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3038
  store i8 %380, ptr %381, align 1, !dbg !3038, !tbaa !930
  br label %382, !dbg !3038

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2641, metadata !DIExpression()), !dbg !2701
  %384 = icmp ult i64 %383, %129, !dbg !3042
  br i1 %384, label %385, label %390, !dbg !3045

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3042
  %388 = or disjoint i8 %387, 48, !dbg !3042
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3042
  store i8 %388, ptr %389, align 1, !dbg !3042, !tbaa !930
  br label %390, !dbg !3042

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2641, metadata !DIExpression()), !dbg !2701
  %392 = and i8 %349, 7, !dbg !3046
  %393 = or disjoint i8 %392, 48, !dbg !3047
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2663, metadata !DIExpression()), !dbg !2797
  br label %401, !dbg !3048

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3049

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3050
  br i1 %396, label %397, label %399, !dbg !3055

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3050
  store i8 92, ptr %398, align 1, !dbg !3050, !tbaa !930
  br label %399, !dbg !3050

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2658, metadata !DIExpression()), !dbg !2797
  br label %401, !dbg !3056

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2701
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2663, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2661, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2658, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2641, metadata !DIExpression()), !dbg !2701
  %407 = add i64 %346, 1, !dbg !3057
  %408 = icmp ugt i64 %342, %407, !dbg !3059
  br i1 %408, label %409, label %.loopexit2, !dbg !3060

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3061
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3061
  br i1 %411, label %423, label %412, !dbg !3061

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3064
  br i1 %413, label %414, label %416, !dbg !3068

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3064
  store i8 39, ptr %415, align 1, !dbg !3064, !tbaa !930
  br label %416, !dbg !3064

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2641, metadata !DIExpression()), !dbg !2701
  %418 = icmp ult i64 %417, %129, !dbg !3069
  br i1 %418, label %419, label %421, !dbg !3072

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3069
  store i8 39, ptr %420, align 1, !dbg !3069, !tbaa !930
  br label %421, !dbg !3069

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2650, metadata !DIExpression()), !dbg !2701
  br label %423, !dbg !3073

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3074
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2641, metadata !DIExpression()), !dbg !2701
  %426 = icmp ult i64 %424, %129, !dbg !3075
  br i1 %426, label %427, label %429, !dbg !3078

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3075
  store i8 %406, ptr %428, align 1, !dbg !3075, !tbaa !930
  br label %429, !dbg !3075

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2656, metadata !DIExpression()), !dbg !2788
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3079
  %432 = load i8, ptr %431, align 1, !dbg !3079, !tbaa !930
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2663, metadata !DIExpression()), !dbg !2797
  br label %343, !dbg !3080, !llvm.loop !3081

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3084
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2701
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2705
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2788
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2797
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2663, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2661, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2658, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2656, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2642, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2634, metadata !DIExpression()), !dbg !2701
  br i1 %111, label %455, label %444, !dbg !3085

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
  br i1 %120, label %456, label %476, !dbg !3087

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3088

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
  %467 = lshr i8 %458, 5, !dbg !3089
  %468 = zext nneg i8 %467 to i64, !dbg !3089
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3090
  %470 = load i32, ptr %469, align 4, !dbg !3090, !tbaa !921
  %471 = and i8 %458, 31, !dbg !3091
  %472 = zext nneg i8 %471 to i32, !dbg !3091
  %473 = shl nuw i32 1, %472, !dbg !3092
  %474 = and i32 %470, %473, !dbg !3092
  %475 = icmp eq i32 %474, 0, !dbg !3092
  br i1 %475, label %476, label %487, !dbg !3093

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
  br i1 %153, label %487, label %523, !dbg !3094

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3084
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2701
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2705
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3095
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2797
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2663, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2656, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2642, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2634, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2690), !dbg !3096
  br i1 %109, label %.loopexit8, label %497, !dbg !3097

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2797
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3099
  br i1 %498, label %515, label %499, !dbg !3099

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3101
  br i1 %500, label %501, label %503, !dbg !3105

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3101
  store i8 39, ptr %502, align 1, !dbg !3101, !tbaa !930
  br label %503, !dbg !3101

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2641, metadata !DIExpression()), !dbg !2701
  %505 = icmp ult i64 %504, %496, !dbg !3106
  br i1 %505, label %506, label %508, !dbg !3109

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3106
  store i8 36, ptr %507, align 1, !dbg !3106, !tbaa !930
  br label %508, !dbg !3106

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3109
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2641, metadata !DIExpression()), !dbg !2701
  %510 = icmp ult i64 %509, %496, !dbg !3110
  br i1 %510, label %511, label %513, !dbg !3113

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3110
  store i8 39, ptr %512, align 1, !dbg !3110, !tbaa !930
  br label %513, !dbg !3110

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3113
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2650, metadata !DIExpression()), !dbg !2701
  br label %515, !dbg !3114

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2797
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2641, metadata !DIExpression()), !dbg !2701
  %518 = icmp ult i64 %516, %496, !dbg !3115
  br i1 %518, label %519, label %521, !dbg !3118

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3115
  store i8 92, ptr %520, align 1, !dbg !3115, !tbaa !930
  br label %521, !dbg !3115

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2663, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2661, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2656, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2642, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2634, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2691), !dbg !3119
  br label %547, !dbg !3120

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2701
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2797
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2788
  br label %523, !dbg !3120

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3084
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2701
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2705
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3095
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3123
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2663, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2662, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2661, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2656, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2642, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2634, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.label(metadata !2691), !dbg !3119
  %534 = xor i1 %528, true, !dbg !3120
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3120
  br i1 %535, label %547, label %536, !dbg !3120

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3124
  br i1 %537, label %538, label %540, !dbg !3128

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3124
  store i8 39, ptr %539, align 1, !dbg !3124, !tbaa !930
  br label %540, !dbg !3124

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2641, metadata !DIExpression()), !dbg !2701
  %542 = icmp ult i64 %541, %533, !dbg !3129
  br i1 %542, label %543, label %545, !dbg !3132

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3129
  store i8 39, ptr %544, align 1, !dbg !3129, !tbaa !930
  br label %545, !dbg !3129

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2650, metadata !DIExpression()), !dbg !2701
  br label %547, !dbg !3133

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2797
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2641, metadata !DIExpression()), !dbg !2701
  %557 = icmp ult i64 %555, %548, !dbg !3134
  br i1 %557, label %558, label %560, !dbg !3137

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3134
  store i8 %549, ptr %559, align 1, !dbg !3134, !tbaa !930
  br label %560, !dbg !3134

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2641, metadata !DIExpression()), !dbg !2701
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3138
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2701
  br label %563, !dbg !3139

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3084
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2701
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2705
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3095
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2656, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2650, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2642, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2634, metadata !DIExpression()), !dbg !2701
  %572 = add i64 %570, 1, !dbg !3140
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2656, metadata !DIExpression()), !dbg !2788
  br label %121, !dbg !3141, !llvm.loop !3142

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2776
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2705
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2632, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2648, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2647, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2642, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2641, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2634, metadata !DIExpression()), !dbg !2701
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3144
  %575 = xor i1 %109, true, !dbg !3146
  %576 = or i1 %574, %575, !dbg !3146
  %577 = or i1 %576, %110, !dbg !3146
  br i1 %577, label %578, label %.loopexit13, !dbg !3146

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3147
  %580 = xor i1 %.lcssa38, true, !dbg !3147
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3147
  br i1 %581, label %589, label %582, !dbg !3147

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3149

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2705
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3151
  br label %638, !dbg !3153

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3154
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3156
  br i1 %588, label %27, label %589, !dbg !3156

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2701
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2776
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3157
  %592 = or i1 %591, %590, !dbg !3159
  br i1 %592, label %608, label %593, !dbg !3159

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2643, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2641, metadata !DIExpression()), !dbg !2701
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3160, !tbaa !930
  %595 = icmp eq i8 %594, 0, !dbg !3163
  br i1 %595, label %608, label %.preheader, !dbg !3163

.preheader:                                       ; preds = %593
  br label %596, !dbg !3163

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2643, metadata !DIExpression()), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2641, metadata !DIExpression()), !dbg !2701
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3164
  br i1 %600, label %601, label %603, !dbg !3167

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3164
  store i8 %597, ptr %602, align 1, !dbg !3164, !tbaa !930
  br label %603, !dbg !3164

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2641, metadata !DIExpression()), !dbg !2701
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3168
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2643, metadata !DIExpression()), !dbg !2701
  %606 = load i8, ptr %605, align 1, !dbg !3160, !tbaa !930
  %607 = icmp eq i8 %606, 0, !dbg !3163
  br i1 %607, label %.loopexit, label %596, !dbg !3163, !llvm.loop !3169

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3167
  br label %608, !dbg !3171

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2641, metadata !DIExpression()), !dbg !2701
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3171
  br i1 %610, label %611, label %638, !dbg !3173

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3174
  store i8 0, ptr %612, align 1, !dbg !3175, !tbaa !930
  br label %638, !dbg !3174

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2692), !dbg !3001
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3176
  br i1 %614, label %624, label %630, !dbg !3002

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2797
  br label %615, !dbg !3176

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3176

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3176

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2692), !dbg !3001
  %622 = icmp eq i32 %616, 2, !dbg !3176
  %623 = select i1 %619, i32 4, i32 2, !dbg !3002
  br i1 %622, label %624, label %630, !dbg !3002

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3002

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2803
  br label %630, !dbg !3177

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2635, metadata !DIExpression()), !dbg !2701
  %636 = and i32 %5, -3, !dbg !3177
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3178
  br label %638, !dbg !3179

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3180
}

; Function Attrs: nounwind
declare !dbg !3181 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3183 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3187, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3188, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3189, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata ptr %0, metadata !3191, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr null, metadata !3197, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %2, metadata !3198, metadata !DIExpression()), !dbg !3204
  %4 = icmp eq ptr %2, null, !dbg !3206
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3206
  call void @llvm.dbg.value(metadata ptr %5, metadata !3199, metadata !DIExpression()), !dbg !3204
  %6 = tail call ptr @__errno_location() #41, !dbg !3207
  %7 = load i32, ptr %6, align 4, !dbg !3207, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %7, metadata !3200, metadata !DIExpression()), !dbg !3204
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3208
  %9 = load i32, ptr %8, align 4, !dbg !3208, !tbaa !2575
  %10 = or i32 %9, 1, !dbg !3209
  call void @llvm.dbg.value(metadata i32 %10, metadata !3201, metadata !DIExpression()), !dbg !3204
  %11 = load i32, ptr %5, align 8, !dbg !3210, !tbaa !2525
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3211
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3212
  %14 = load ptr, ptr %13, align 8, !dbg !3212, !tbaa !2596
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3213
  %16 = load ptr, ptr %15, align 8, !dbg !3213, !tbaa !2599
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3214
  %18 = add i64 %17, 1, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %18, metadata !3202, metadata !DIExpression()), !dbg !3204
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3216
  call void @llvm.dbg.value(metadata ptr %19, metadata !3203, metadata !DIExpression()), !dbg !3204
  %20 = load i32, ptr %5, align 8, !dbg !3217, !tbaa !2525
  %21 = load ptr, ptr %13, align 8, !dbg !3218, !tbaa !2596
  %22 = load ptr, ptr %15, align 8, !dbg !3219, !tbaa !2599
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3220
  store i32 %7, ptr %6, align 4, !dbg !3221, !tbaa !921
  ret ptr %19, !dbg !3222
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3192 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3191, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3197, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3198, metadata !DIExpression()), !dbg !3223
  %5 = icmp eq ptr %3, null, !dbg !3224
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3224
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3199, metadata !DIExpression()), !dbg !3223
  %7 = tail call ptr @__errno_location() #41, !dbg !3225
  %8 = load i32, ptr %7, align 4, !dbg !3225, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3200, metadata !DIExpression()), !dbg !3223
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3226
  %10 = load i32, ptr %9, align 4, !dbg !3226, !tbaa !2575
  %11 = icmp eq ptr %2, null, !dbg !3227
  %12 = zext i1 %11 to i32, !dbg !3227
  %13 = or i32 %10, %12, !dbg !3228
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3201, metadata !DIExpression()), !dbg !3223
  %14 = load i32, ptr %6, align 8, !dbg !3229, !tbaa !2525
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3230
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3231
  %17 = load ptr, ptr %16, align 8, !dbg !3231, !tbaa !2596
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3232
  %19 = load ptr, ptr %18, align 8, !dbg !3232, !tbaa !2599
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3233
  %21 = add i64 %20, 1, !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3202, metadata !DIExpression()), !dbg !3223
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3235
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3203, metadata !DIExpression()), !dbg !3223
  %23 = load i32, ptr %6, align 8, !dbg !3236, !tbaa !2525
  %24 = load ptr, ptr %16, align 8, !dbg !3237, !tbaa !2596
  %25 = load ptr, ptr %18, align 8, !dbg !3238, !tbaa !2599
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3239
  store i32 %8, ptr %7, align 4, !dbg !3240, !tbaa !921
  br i1 %11, label %28, label %27, !dbg !3241

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3242, !tbaa !1145
  br label %28, !dbg !3244

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3245
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3246 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3251, !tbaa !852
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3248, metadata !DIExpression()), !dbg !3252
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3249, metadata !DIExpression()), !dbg !3253
  %2 = load i32, ptr @nslots, align 4, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3249, metadata !DIExpression()), !dbg !3253
  %3 = icmp sgt i32 %2, 1, !dbg !3254
  br i1 %3, label %4, label %6, !dbg !3256

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3254
  br label %10, !dbg !3256

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3257

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3257
  %8 = load ptr, ptr %7, align 8, !dbg !3257, !tbaa !3259
  %9 = icmp eq ptr %8, @slot0, !dbg !3261
  br i1 %9, label %17, label %16, !dbg !3262

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3249, metadata !DIExpression()), !dbg !3253
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3263
  %13 = load ptr, ptr %12, align 8, !dbg !3263, !tbaa !3259
  tail call void @free(ptr noundef %13) #38, !dbg !3264
  %14 = add nuw nsw i64 %11, 1, !dbg !3265
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3249, metadata !DIExpression()), !dbg !3253
  %15 = icmp eq i64 %14, %5, !dbg !3254
  br i1 %15, label %.loopexit, label %10, !dbg !3256, !llvm.loop !3266

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3268
  store i64 256, ptr @slotvec0, align 8, !dbg !3270, !tbaa !3271
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3272, !tbaa !3259
  br label %17, !dbg !3273

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3274
  br i1 %18, label %20, label %19, !dbg !3276

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3277
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3279, !tbaa !852
  br label %20, !dbg !3280

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3281, !tbaa !921
  ret void, !dbg !3282
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3283 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3286, metadata !DIExpression()), !dbg !3287
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3288
  ret ptr %3, !dbg !3289
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3290 {
  %5 = alloca i64, align 8, !DIAssignID !3310
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3304, metadata !DIExpression(), metadata !3310, metadata ptr %5, metadata !DIExpression()), !dbg !3311
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3294, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3295, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3296, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3297, metadata !DIExpression()), !dbg !3312
  %6 = tail call ptr @__errno_location() #41, !dbg !3313
  %7 = load i32, ptr %6, align 4, !dbg !3313, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3298, metadata !DIExpression()), !dbg !3312
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3314, !tbaa !852
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3299, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3300, metadata !DIExpression()), !dbg !3312
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3315
  br i1 %9, label %10, label %11, !dbg !3315

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3317
  unreachable, !dbg !3317

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3318, !tbaa !921
  %13 = icmp sgt i32 %12, %0, !dbg !3319
  br i1 %13, label %32, label %14, !dbg !3320

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3321
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3301, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3311
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3322
  %16 = sext i32 %12 to i64, !dbg !3323
  store i64 %16, ptr %5, align 8, !dbg !3324, !tbaa !1145, !DIAssignID !3325
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3304, metadata !DIExpression(), metadata !3325, metadata ptr %5, metadata !DIExpression()), !dbg !3311
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3326
  %18 = add nuw nsw i32 %0, 1, !dbg !3327
  %19 = sub i32 %18, %12, !dbg !3328
  %20 = sext i32 %19 to i64, !dbg !3329
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3299, metadata !DIExpression()), !dbg !3312
  store ptr %21, ptr @slotvec, align 8, !dbg !3331, !tbaa !852
  br i1 %15, label %22, label %23, !dbg !3332

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3333, !tbaa.struct !3335
  br label %23, !dbg !3336

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3337, !tbaa !921
  %25 = sext i32 %24 to i64, !dbg !3338
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3338
  %27 = load i64, ptr %5, align 8, !dbg !3339, !tbaa !1145
  %28 = sub nsw i64 %27, %25, !dbg !3340
  %29 = shl i64 %28, 4, !dbg !3341
  call void @llvm.dbg.value(metadata ptr %26, metadata !2734, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %29, metadata !2738, metadata !DIExpression()), !dbg !3342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3344
  %30 = load i64, ptr %5, align 8, !dbg !3345, !tbaa !1145
  %31 = trunc i64 %30 to i32, !dbg !3345
  store i32 %31, ptr @nslots, align 4, !dbg !3346, !tbaa !921
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3347
  br label %32, !dbg !3348

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3312
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3299, metadata !DIExpression()), !dbg !3312
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3349
  %36 = load i64, ptr %35, align 8, !dbg !3350, !tbaa !3271
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3305, metadata !DIExpression()), !dbg !3351
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3352
  %38 = load ptr, ptr %37, align 8, !dbg !3352, !tbaa !3259
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3307, metadata !DIExpression()), !dbg !3351
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3353
  %40 = load i32, ptr %39, align 4, !dbg !3353, !tbaa !2575
  %41 = or i32 %40, 1, !dbg !3354
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3308, metadata !DIExpression()), !dbg !3351
  %42 = load i32, ptr %3, align 8, !dbg !3355, !tbaa !2525
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3356
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3357
  %45 = load ptr, ptr %44, align 8, !dbg !3357, !tbaa !2596
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3358
  %47 = load ptr, ptr %46, align 8, !dbg !3358, !tbaa !2599
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3309, metadata !DIExpression()), !dbg !3351
  %49 = icmp ugt i64 %36, %48, !dbg !3360
  br i1 %49, label %60, label %50, !dbg !3362

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3305, metadata !DIExpression()), !dbg !3351
  store i64 %51, ptr %35, align 8, !dbg !3365, !tbaa !3271
  %52 = icmp eq ptr %38, @slot0, !dbg !3366
  br i1 %52, label %54, label %53, !dbg !3368

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3369
  br label %54, !dbg !3369

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3370
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3307, metadata !DIExpression()), !dbg !3351
  store ptr %55, ptr %37, align 8, !dbg !3371, !tbaa !3259
  %56 = load i32, ptr %3, align 8, !dbg !3372, !tbaa !2525
  %57 = load ptr, ptr %44, align 8, !dbg !3373, !tbaa !2596
  %58 = load ptr, ptr %46, align 8, !dbg !3374, !tbaa !2599
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3375
  br label %60, !dbg !3376

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3351
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3307, metadata !DIExpression()), !dbg !3351
  store i32 %7, ptr %6, align 4, !dbg !3377, !tbaa !921
  ret ptr %61, !dbg !3378
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3379 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3383, metadata !DIExpression()), !dbg !3386
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3384, metadata !DIExpression()), !dbg !3386
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3385, metadata !DIExpression()), !dbg !3386
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3387
  ret ptr %4, !dbg !3388
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3389 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3391, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 0, metadata !3285, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata ptr %0, metadata !3286, metadata !DIExpression()), !dbg !3393
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3395
  ret ptr %2, !dbg !3396
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3397 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3401, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 0, metadata !3383, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %0, metadata !3384, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %1, metadata !3385, metadata !DIExpression()), !dbg !3404
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3406
  ret ptr %3, !dbg !3407
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3408 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3415, metadata !DIExpression(), metadata !3416, metadata ptr %4, metadata !DIExpression()), !dbg !3417
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3412, metadata !DIExpression()), !dbg !3417
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3413, metadata !DIExpression()), !dbg !3417
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3414, metadata !DIExpression()), !dbg !3417
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3419), !dbg !3422
  call void @llvm.dbg.value(metadata i32 %1, metadata !3423, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3428, metadata !DIExpression()), !dbg !3431
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3431, !alias.scope !3419, !DIAssignID !3432
  call void @llvm.dbg.assign(metadata i8 0, metadata !3415, metadata !DIExpression(), metadata !3432, metadata ptr %4, metadata !DIExpression()), !dbg !3417
  %5 = icmp eq i32 %1, 10, !dbg !3433
  br i1 %5, label %6, label %7, !dbg !3435

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3436, !noalias !3419
  unreachable, !dbg !3436

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3437, !tbaa !2525, !alias.scope !3419, !DIAssignID !3438
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3438, metadata ptr %4, metadata !DIExpression()), !dbg !3417
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3439
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3440
  ret ptr %8, !dbg !3441
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3442 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3451
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3450, metadata !DIExpression(), metadata !3451, metadata ptr %5, metadata !DIExpression()), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3446, metadata !DIExpression()), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3447, metadata !DIExpression()), !dbg !3452
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3452
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3449, metadata !DIExpression()), !dbg !3452
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3454), !dbg !3457
  call void @llvm.dbg.value(metadata i32 %1, metadata !3423, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3428, metadata !DIExpression()), !dbg !3460
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3460, !alias.scope !3454, !DIAssignID !3461
  call void @llvm.dbg.assign(metadata i8 0, metadata !3450, metadata !DIExpression(), metadata !3461, metadata ptr %5, metadata !DIExpression()), !dbg !3452
  %6 = icmp eq i32 %1, 10, !dbg !3462
  br i1 %6, label %7, label %8, !dbg !3463

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3464, !noalias !3454
  unreachable, !dbg !3464

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3465, !tbaa !2525, !alias.scope !3454, !DIAssignID !3466
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3450, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3466, metadata ptr %5, metadata !DIExpression()), !dbg !3452
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3467
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3468
  ret ptr %9, !dbg !3469
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3470 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3476
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3474, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3415, metadata !DIExpression(), metadata !3476, metadata ptr %3, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 0, metadata !3412, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 %0, metadata !3413, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %1, metadata !3414, metadata !DIExpression()), !dbg !3478
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3481), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %0, metadata !3423, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3428, metadata !DIExpression()), !dbg !3487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3487, !alias.scope !3481, !DIAssignID !3488
  call void @llvm.dbg.assign(metadata i8 0, metadata !3415, metadata !DIExpression(), metadata !3488, metadata ptr %3, metadata !DIExpression()), !dbg !3478
  %4 = icmp eq i32 %0, 10, !dbg !3489
  br i1 %4, label %5, label %6, !dbg !3490

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3491, !noalias !3481
  unreachable, !dbg !3491

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3492, !tbaa !2525, !alias.scope !3481, !DIAssignID !3493
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3493, metadata ptr %3, metadata !DIExpression()), !dbg !3478
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3494
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3495
  ret ptr %7, !dbg !3496
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3497 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3504
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3501, metadata !DIExpression()), !dbg !3505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3502, metadata !DIExpression()), !dbg !3505
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3503, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3450, metadata !DIExpression(), metadata !3504, metadata ptr %4, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 0, metadata !3446, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata ptr %1, metadata !3448, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %2, metadata !3449, metadata !DIExpression()), !dbg !3506
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3509), !dbg !3512
  call void @llvm.dbg.value(metadata i32 %0, metadata !3423, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3428, metadata !DIExpression()), !dbg !3515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3515, !alias.scope !3509, !DIAssignID !3516
  call void @llvm.dbg.assign(metadata i8 0, metadata !3450, metadata !DIExpression(), metadata !3516, metadata ptr %4, metadata !DIExpression()), !dbg !3506
  %5 = icmp eq i32 %0, 10, !dbg !3517
  br i1 %5, label %6, label %7, !dbg !3518

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3519, !noalias !3509
  unreachable, !dbg !3519

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3520, !tbaa !2525, !alias.scope !3509, !DIAssignID !3521
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3450, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3521, metadata ptr %4, metadata !DIExpression()), !dbg !3506
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3522
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3523
  ret ptr %8, !dbg !3524
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3525 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3533
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3532, metadata !DIExpression(), metadata !3533, metadata ptr %4, metadata !DIExpression()), !dbg !3534
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3530, metadata !DIExpression()), !dbg !3534
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3531, metadata !DIExpression()), !dbg !3534
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3536, !tbaa.struct !3537, !DIAssignID !3538
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3532, metadata !DIExpression(), metadata !3538, metadata ptr %4, metadata !DIExpression()), !dbg !3534
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2542, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2543, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2544, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2545, metadata !DIExpression()), !dbg !3539
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3541
  %6 = lshr i8 %2, 5, !dbg !3542
  %7 = zext nneg i8 %6 to i64, !dbg !3542
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3543
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2546, metadata !DIExpression()), !dbg !3539
  %9 = and i8 %2, 31, !dbg !3544
  %10 = zext nneg i8 %9 to i32, !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2548, metadata !DIExpression()), !dbg !3539
  %11 = load i32, ptr %8, align 4, !dbg !3545, !tbaa !921
  %12 = lshr i32 %11, %10, !dbg !3546
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3539
  %13 = and i32 %12, 1, !dbg !3547
  %14 = xor i32 %13, 1, !dbg !3547
  %15 = shl nuw i32 %14, %10, !dbg !3548
  %16 = xor i32 %15, %11, !dbg !3549
  store i32 %16, ptr %8, align 4, !dbg !3549, !tbaa !921
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3550
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3551
  ret ptr %17, !dbg !3552
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3553 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3559
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3560
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3558, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3532, metadata !DIExpression(), metadata !3559, metadata ptr %3, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 -1, metadata !3530, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8 %1, metadata !3531, metadata !DIExpression()), !dbg !3561
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3564, !tbaa.struct !3537, !DIAssignID !3565
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3532, metadata !DIExpression(), metadata !3565, metadata ptr %3, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata ptr %3, metadata !2542, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8 %1, metadata !2543, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 1, metadata !2544, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8 %1, metadata !2545, metadata !DIExpression()), !dbg !3566
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3568
  %5 = lshr i8 %1, 5, !dbg !3569
  %6 = zext nneg i8 %5 to i64, !dbg !3569
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3570
  call void @llvm.dbg.value(metadata ptr %7, metadata !2546, metadata !DIExpression()), !dbg !3566
  %8 = and i8 %1, 31, !dbg !3571
  %9 = zext nneg i8 %8 to i32, !dbg !3571
  call void @llvm.dbg.value(metadata i32 %9, metadata !2548, metadata !DIExpression()), !dbg !3566
  %10 = load i32, ptr %7, align 4, !dbg !3572, !tbaa !921
  %11 = lshr i32 %10, %9, !dbg !3573
  call void @llvm.dbg.value(metadata i32 %11, metadata !2549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3566
  %12 = and i32 %11, 1, !dbg !3574
  %13 = xor i32 %12, 1, !dbg !3574
  %14 = shl nuw i32 %13, %9, !dbg !3575
  %15 = xor i32 %14, %10, !dbg !3576
  store i32 %15, ptr %7, align 4, !dbg !3576, !tbaa !921
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3577
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3578
  ret ptr %16, !dbg !3579
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3580 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3583
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i8 58, metadata !3558, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3532, metadata !DIExpression(), metadata !3583, metadata ptr %2, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 -1, metadata !3530, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 58, metadata !3531, metadata !DIExpression()), !dbg !3587
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !3589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3590, !tbaa.struct !3537, !DIAssignID !3591
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3532, metadata !DIExpression(), metadata !3591, metadata ptr %2, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %2, metadata !2542, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 58, metadata !2543, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 1, metadata !2544, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !3592
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3594
  call void @llvm.dbg.value(metadata ptr %3, metadata !2546, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 26, metadata !2548, metadata !DIExpression()), !dbg !3592
  %4 = load i32, ptr %3, align 4, !dbg !3595, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %4, metadata !2549, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3592
  %5 = or i32 %4, 67108864, !dbg !3596
  store i32 %5, ptr %3, align 4, !dbg !3596, !tbaa !921
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3597
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !3598
  ret ptr %6, !dbg !3599
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3600 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3604
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3602, metadata !DIExpression()), !dbg !3605
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3603, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3532, metadata !DIExpression(), metadata !3604, metadata ptr %3, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %1, metadata !3530, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8 58, metadata !3531, metadata !DIExpression()), !dbg !3606
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3609, !tbaa.struct !3537, !DIAssignID !3610
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3532, metadata !DIExpression(), metadata !3610, metadata ptr %3, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr %3, metadata !2542, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8 58, metadata !2543, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 1, metadata !2544, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !3611
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3613
  call void @llvm.dbg.value(metadata ptr %4, metadata !2546, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 26, metadata !2548, metadata !DIExpression()), !dbg !3611
  %5 = load i32, ptr %4, align 4, !dbg !3614, !tbaa !921
  call void @llvm.dbg.value(metadata i32 %5, metadata !2549, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3611
  %6 = or i32 %5, 67108864, !dbg !3615
  store i32 %6, ptr %4, align 4, !dbg !3615, !tbaa !921
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3616
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3617
  ret ptr %7, !dbg !3618
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3619 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3625
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3624, metadata !DIExpression(), metadata !3625, metadata ptr %4, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3428, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3627
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3621, metadata !DIExpression()), !dbg !3626
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3622, metadata !DIExpression()), !dbg !3626
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3623, metadata !DIExpression()), !dbg !3626
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3629
  call void @llvm.dbg.value(metadata i32 %1, metadata !3423, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3630
  %5 = icmp eq i32 %1, 10, !dbg !3631
  br i1 %5, label %6, label %7, !dbg !3632

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3633, !noalias !3634
  unreachable, !dbg !3633

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3428, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3630
  store i32 %1, ptr %4, align 8, !dbg !3637, !tbaa.struct !3537, !DIAssignID !3638
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3637
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3637
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3624, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3638, metadata ptr %4, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3624, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3639, metadata ptr %8, metadata !DIExpression()), !dbg !3626
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2542, metadata !DIExpression()), !dbg !3640
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2543, metadata !DIExpression()), !dbg !3640
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2544, metadata !DIExpression()), !dbg !3640
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !3640
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3642
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2546, metadata !DIExpression()), !dbg !3640
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2548, metadata !DIExpression()), !dbg !3640
  %10 = load i32, ptr %9, align 4, !dbg !3643, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2549, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3640
  %11 = or i32 %10, 67108864, !dbg !3644
  store i32 %11, ptr %9, align 4, !dbg !3644, !tbaa !921, !DIAssignID !3645
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3624, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3645, metadata ptr %9, metadata !DIExpression()), !dbg !3626
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3646
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3647
  ret ptr %12, !dbg !3648
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3649 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3657
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3653, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3654, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3655, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3656, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(), metadata !3657, metadata ptr %5, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i32 %0, metadata !3664, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %1, metadata !3665, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %2, metadata !3666, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %3, metadata !3667, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 -1, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3672, !tbaa.struct !3537, !DIAssignID !3673
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(), metadata !3673, metadata ptr %5, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3674, metadata ptr undef, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %5, metadata !2582, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %1, metadata !2583, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %2, metadata !2584, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %5, metadata !2582, metadata !DIExpression()), !dbg !3675
  store i32 10, ptr %5, align 8, !dbg !3677, !tbaa !2525, !DIAssignID !3678
  call void @llvm.dbg.assign(metadata i32 10, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3678, metadata ptr %5, metadata !DIExpression()), !dbg !3669
  %6 = icmp ne ptr %1, null, !dbg !3679
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3680
  br i1 %8, label %10, label %9, !dbg !3680

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3681
  unreachable, !dbg !3681

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3682
  store ptr %1, ptr %11, align 8, !dbg !3683, !tbaa !2596, !DIAssignID !3684
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3684, metadata ptr %11, metadata !DIExpression()), !dbg !3669
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3685
  store ptr %2, ptr %12, align 8, !dbg !3686, !tbaa !2599, !DIAssignID !3687
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3687, metadata ptr %12, metadata !DIExpression()), !dbg !3669
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3688
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3689
  ret ptr %13, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3660 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3691
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(), metadata !3691, metadata ptr %6, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3664, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3665, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3666, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3667, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3692
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3694, !tbaa.struct !3537, !DIAssignID !3695
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(), metadata !3695, metadata ptr %6, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3696, metadata ptr undef, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %6, metadata !2582, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %1, metadata !2583, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %2, metadata !2584, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %6, metadata !2582, metadata !DIExpression()), !dbg !3697
  store i32 10, ptr %6, align 8, !dbg !3699, !tbaa !2525, !DIAssignID !3700
  call void @llvm.dbg.assign(metadata i32 10, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3700, metadata ptr %6, metadata !DIExpression()), !dbg !3692
  %7 = icmp ne ptr %1, null, !dbg !3701
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3702
  br i1 %9, label %11, label %10, !dbg !3702

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3703
  unreachable, !dbg !3703

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3704
  store ptr %1, ptr %12, align 8, !dbg !3705, !tbaa !2596, !DIAssignID !3706
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3706, metadata ptr %12, metadata !DIExpression()), !dbg !3692
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3707
  store ptr %2, ptr %13, align 8, !dbg !3708, !tbaa !2599, !DIAssignID !3709
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3709, metadata ptr %13, metadata !DIExpression()), !dbg !3692
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3710
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3711
  ret ptr %14, !dbg !3712
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3713 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3720
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3717, metadata !DIExpression()), !dbg !3721
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3718, metadata !DIExpression()), !dbg !3721
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3719, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 0, metadata !3653, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %0, metadata !3654, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %1, metadata !3655, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %2, metadata !3656, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(), metadata !3720, metadata ptr %4, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %0, metadata !3665, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %1, metadata !3666, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %2, metadata !3667, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 -1, metadata !3668, metadata !DIExpression()), !dbg !3724
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3727, !tbaa.struct !3537, !DIAssignID !3728
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(), metadata !3728, metadata ptr %4, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3729, metadata ptr undef, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %4, metadata !2582, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %0, metadata !2583, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %1, metadata !2584, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %4, metadata !2582, metadata !DIExpression()), !dbg !3730
  store i32 10, ptr %4, align 8, !dbg !3732, !tbaa !2525, !DIAssignID !3733
  call void @llvm.dbg.assign(metadata i32 10, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3733, metadata ptr %4, metadata !DIExpression()), !dbg !3724
  %5 = icmp ne ptr %0, null, !dbg !3734
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3735
  br i1 %7, label %9, label %8, !dbg !3735

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3736
  unreachable, !dbg !3736

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3737
  store ptr %0, ptr %10, align 8, !dbg !3738, !tbaa !2596, !DIAssignID !3739
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3739, metadata ptr %10, metadata !DIExpression()), !dbg !3724
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3740
  store ptr %1, ptr %11, align 8, !dbg !3741, !tbaa !2599, !DIAssignID !3742
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3742, metadata ptr %11, metadata !DIExpression()), !dbg !3724
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3743
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3744
  ret ptr %12, !dbg !3745
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3746 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3754
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3750, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3751, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3752, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3753, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(), metadata !3754, metadata ptr %5, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %0, metadata !3665, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %1, metadata !3666, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %2, metadata !3667, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %3, metadata !3668, metadata !DIExpression()), !dbg !3756
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3759, !tbaa.struct !3537, !DIAssignID !3760
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(), metadata !3760, metadata ptr %5, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3761, metadata ptr undef, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %5, metadata !2582, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %0, metadata !2583, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %1, metadata !2584, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %5, metadata !2582, metadata !DIExpression()), !dbg !3762
  store i32 10, ptr %5, align 8, !dbg !3764, !tbaa !2525, !DIAssignID !3765
  call void @llvm.dbg.assign(metadata i32 10, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3765, metadata ptr %5, metadata !DIExpression()), !dbg !3756
  %6 = icmp ne ptr %0, null, !dbg !3766
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3767
  br i1 %8, label %10, label %9, !dbg !3767

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3768
  unreachable, !dbg !3768

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3769
  store ptr %0, ptr %11, align 8, !dbg !3770, !tbaa !2596, !DIAssignID !3771
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3771, metadata ptr %11, metadata !DIExpression()), !dbg !3756
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3772
  store ptr %1, ptr %12, align 8, !dbg !3773, !tbaa !2599, !DIAssignID !3774
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3659, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3774, metadata ptr %12, metadata !DIExpression()), !dbg !3756
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3775
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3776
  ret ptr %13, !dbg !3777
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3778 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3785
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3783, metadata !DIExpression()), !dbg !3785
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3784, metadata !DIExpression()), !dbg !3785
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3786
  ret ptr %4, !dbg !3787
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3788 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3792, metadata !DIExpression()), !dbg !3794
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3793, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i32 0, metadata !3782, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %0, metadata !3783, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %1, metadata !3784, metadata !DIExpression()), !dbg !3795
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3797
  ret ptr %3, !dbg !3798
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3799 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3803, metadata !DIExpression()), !dbg !3805
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3804, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata ptr %1, metadata !3783, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 -1, metadata !3784, metadata !DIExpression()), !dbg !3806
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3808
  ret ptr %3, !dbg !3809
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3810 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3814, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i32 0, metadata !3803, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata ptr %0, metadata !3804, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 0, metadata !3782, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata ptr %0, metadata !3783, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i64 -1, metadata !3784, metadata !DIExpression()), !dbg !3818
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3820
  ret ptr %2, !dbg !3821
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3822 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3861, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3862, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3863, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3864, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3865, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3866, metadata !DIExpression()), !dbg !3867
  %7 = icmp eq ptr %1, null, !dbg !3868
  br i1 %7, label %10, label %8, !dbg !3870

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.88, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3871
  br label %12, !dbg !3871

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.89, ptr noundef %2, ptr noundef %3) #38, !dbg !3872
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.3.91, i32 noundef 5) #38, !dbg !3873
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3873
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %0), !dbg !3874
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.5.93, i32 noundef 5) #38, !dbg !3875
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.94) #38, !dbg !3875
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %0), !dbg !3876
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
  ], !dbg !3877

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.7.95, i32 noundef 5) #38, !dbg !3878
  %21 = load ptr, ptr %4, align 8, !dbg !3878, !tbaa !852
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3878
  br label %147, !dbg !3880

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.8.96, i32 noundef 5) #38, !dbg !3881
  %25 = load ptr, ptr %4, align 8, !dbg !3881, !tbaa !852
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3881
  %27 = load ptr, ptr %26, align 8, !dbg !3881, !tbaa !852
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3881
  br label %147, !dbg !3882

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.9.97, i32 noundef 5) #38, !dbg !3883
  %31 = load ptr, ptr %4, align 8, !dbg !3883, !tbaa !852
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3883
  %33 = load ptr, ptr %32, align 8, !dbg !3883, !tbaa !852
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3883
  %35 = load ptr, ptr %34, align 8, !dbg !3883, !tbaa !852
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3883
  br label %147, !dbg !3884

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.10.98, i32 noundef 5) #38, !dbg !3885
  %39 = load ptr, ptr %4, align 8, !dbg !3885, !tbaa !852
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3885
  %41 = load ptr, ptr %40, align 8, !dbg !3885, !tbaa !852
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3885
  %43 = load ptr, ptr %42, align 8, !dbg !3885, !tbaa !852
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3885
  %45 = load ptr, ptr %44, align 8, !dbg !3885, !tbaa !852
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3885
  br label %147, !dbg !3886

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.11.99, i32 noundef 5) #38, !dbg !3887
  %49 = load ptr, ptr %4, align 8, !dbg !3887, !tbaa !852
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3887
  %51 = load ptr, ptr %50, align 8, !dbg !3887, !tbaa !852
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3887
  %53 = load ptr, ptr %52, align 8, !dbg !3887, !tbaa !852
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3887
  %55 = load ptr, ptr %54, align 8, !dbg !3887, !tbaa !852
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3887
  %57 = load ptr, ptr %56, align 8, !dbg !3887, !tbaa !852
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3887
  br label %147, !dbg !3888

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.12.100, i32 noundef 5) #38, !dbg !3889
  %61 = load ptr, ptr %4, align 8, !dbg !3889, !tbaa !852
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3889
  %63 = load ptr, ptr %62, align 8, !dbg !3889, !tbaa !852
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3889
  %65 = load ptr, ptr %64, align 8, !dbg !3889, !tbaa !852
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3889
  %67 = load ptr, ptr %66, align 8, !dbg !3889, !tbaa !852
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3889
  %69 = load ptr, ptr %68, align 8, !dbg !3889, !tbaa !852
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3889
  %71 = load ptr, ptr %70, align 8, !dbg !3889, !tbaa !852
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3889
  br label %147, !dbg !3890

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.13.101, i32 noundef 5) #38, !dbg !3891
  %75 = load ptr, ptr %4, align 8, !dbg !3891, !tbaa !852
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3891
  %77 = load ptr, ptr %76, align 8, !dbg !3891, !tbaa !852
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3891
  %79 = load ptr, ptr %78, align 8, !dbg !3891, !tbaa !852
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3891
  %81 = load ptr, ptr %80, align 8, !dbg !3891, !tbaa !852
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3891
  %83 = load ptr, ptr %82, align 8, !dbg !3891, !tbaa !852
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3891
  %85 = load ptr, ptr %84, align 8, !dbg !3891, !tbaa !852
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3891
  %87 = load ptr, ptr %86, align 8, !dbg !3891, !tbaa !852
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3891
  br label %147, !dbg !3892

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.14.102, i32 noundef 5) #38, !dbg !3893
  %91 = load ptr, ptr %4, align 8, !dbg !3893, !tbaa !852
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3893
  %93 = load ptr, ptr %92, align 8, !dbg !3893, !tbaa !852
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3893
  %95 = load ptr, ptr %94, align 8, !dbg !3893, !tbaa !852
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3893
  %97 = load ptr, ptr %96, align 8, !dbg !3893, !tbaa !852
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3893
  %99 = load ptr, ptr %98, align 8, !dbg !3893, !tbaa !852
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3893
  %101 = load ptr, ptr %100, align 8, !dbg !3893, !tbaa !852
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3893
  %103 = load ptr, ptr %102, align 8, !dbg !3893, !tbaa !852
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3893
  %105 = load ptr, ptr %104, align 8, !dbg !3893, !tbaa !852
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3893
  br label %147, !dbg !3894

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.15.103, i32 noundef 5) #38, !dbg !3895
  %109 = load ptr, ptr %4, align 8, !dbg !3895, !tbaa !852
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3895
  %111 = load ptr, ptr %110, align 8, !dbg !3895, !tbaa !852
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3895
  %113 = load ptr, ptr %112, align 8, !dbg !3895, !tbaa !852
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3895
  %115 = load ptr, ptr %114, align 8, !dbg !3895, !tbaa !852
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3895
  %117 = load ptr, ptr %116, align 8, !dbg !3895, !tbaa !852
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3895
  %119 = load ptr, ptr %118, align 8, !dbg !3895, !tbaa !852
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3895
  %121 = load ptr, ptr %120, align 8, !dbg !3895, !tbaa !852
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3895
  %123 = load ptr, ptr %122, align 8, !dbg !3895, !tbaa !852
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3895
  %125 = load ptr, ptr %124, align 8, !dbg !3895, !tbaa !852
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3895
  br label %147, !dbg !3896

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.16.104, i32 noundef 5) #38, !dbg !3897
  %129 = load ptr, ptr %4, align 8, !dbg !3897, !tbaa !852
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3897
  %131 = load ptr, ptr %130, align 8, !dbg !3897, !tbaa !852
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3897
  %133 = load ptr, ptr %132, align 8, !dbg !3897, !tbaa !852
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3897
  %135 = load ptr, ptr %134, align 8, !dbg !3897, !tbaa !852
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3897
  %137 = load ptr, ptr %136, align 8, !dbg !3897, !tbaa !852
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3897
  %139 = load ptr, ptr %138, align 8, !dbg !3897, !tbaa !852
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3897
  %141 = load ptr, ptr %140, align 8, !dbg !3897, !tbaa !852
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3897
  %143 = load ptr, ptr %142, align 8, !dbg !3897, !tbaa !852
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3897
  %145 = load ptr, ptr %144, align 8, !dbg !3897, !tbaa !852
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3897
  br label %147, !dbg !3898

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3899
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3900 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3904, metadata !DIExpression()), !dbg !3910
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3905, metadata !DIExpression()), !dbg !3910
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3906, metadata !DIExpression()), !dbg !3910
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3907, metadata !DIExpression()), !dbg !3910
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3908, metadata !DIExpression()), !dbg !3910
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3909, metadata !DIExpression()), !dbg !3910
  br label %6, !dbg !3911

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3909, metadata !DIExpression()), !dbg !3910
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3914
  %9 = load ptr, ptr %8, align 8, !dbg !3914, !tbaa !852
  %10 = icmp eq ptr %9, null, !dbg !3916
  %11 = add i64 %7, 1, !dbg !3917
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3909, metadata !DIExpression()), !dbg !3910
  br i1 %10, label %12, label %6, !dbg !3916, !llvm.loop !3918

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3913
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3920
  ret void, !dbg !3921
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3922 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3944
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3942, metadata !DIExpression(), metadata !3944, metadata ptr %6, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3936, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3937, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3938, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3939, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3940, metadata !DIExpression(DW_OP_deref)), !dbg !3945
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3946
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3941, metadata !DIExpression()), !dbg !3945
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3941, metadata !DIExpression()), !dbg !3945
  %10 = icmp sgt i32 %9, -1, !dbg !3947
  br i1 %10, label %18, label %11, !dbg !3947

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3947
  store i32 %12, ptr %7, align 8, !dbg !3947
  %13 = icmp ult i32 %9, -7, !dbg !3947
  br i1 %13, label %14, label %18, !dbg !3947

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3947
  %16 = sext i32 %9 to i64, !dbg !3947
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3947
  br label %22, !dbg !3947

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3947
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3947
  store ptr %21, ptr %4, align 8, !dbg !3947
  br label %22, !dbg !3947

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3947
  %25 = load ptr, ptr %24, align 8, !dbg !3947
  store ptr %25, ptr %6, align 8, !dbg !3950, !tbaa !852
  %26 = icmp eq ptr %25, null, !dbg !3951
  br i1 %26, label %197, label %27, !dbg !3952

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3941, metadata !DIExpression()), !dbg !3945
  %28 = icmp sgt i32 %23, -1, !dbg !3947
  br i1 %28, label %36, label %29, !dbg !3947

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3947
  store i32 %30, ptr %7, align 8, !dbg !3947
  %31 = icmp ult i32 %23, -7, !dbg !3947
  br i1 %31, label %32, label %36, !dbg !3947

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3947
  %34 = sext i32 %23 to i64, !dbg !3947
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3947
  br label %40, !dbg !3947

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3947
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3947
  store ptr %39, ptr %4, align 8, !dbg !3947
  br label %40, !dbg !3947

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3947
  %43 = load ptr, ptr %42, align 8, !dbg !3947
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3953
  store ptr %43, ptr %44, align 8, !dbg !3950, !tbaa !852
  %45 = icmp eq ptr %43, null, !dbg !3951
  br i1 %45, label %197, label %46, !dbg !3952

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3941, metadata !DIExpression()), !dbg !3945
  %47 = icmp sgt i32 %41, -1, !dbg !3947
  br i1 %47, label %55, label %48, !dbg !3947

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3947
  store i32 %49, ptr %7, align 8, !dbg !3947
  %50 = icmp ult i32 %41, -7, !dbg !3947
  br i1 %50, label %51, label %55, !dbg !3947

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3947
  %53 = sext i32 %41 to i64, !dbg !3947
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3947
  br label %59, !dbg !3947

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3947
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3947
  store ptr %58, ptr %4, align 8, !dbg !3947
  br label %59, !dbg !3947

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3947
  %62 = load ptr, ptr %61, align 8, !dbg !3947
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3953
  store ptr %62, ptr %63, align 8, !dbg !3950, !tbaa !852
  %64 = icmp eq ptr %62, null, !dbg !3951
  br i1 %64, label %197, label %65, !dbg !3952

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3941, metadata !DIExpression()), !dbg !3945
  %66 = icmp sgt i32 %60, -1, !dbg !3947
  br i1 %66, label %74, label %67, !dbg !3947

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3947
  store i32 %68, ptr %7, align 8, !dbg !3947
  %69 = icmp ult i32 %60, -7, !dbg !3947
  br i1 %69, label %70, label %74, !dbg !3947

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3947
  %72 = sext i32 %60 to i64, !dbg !3947
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3947
  br label %78, !dbg !3947

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3947
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3947
  store ptr %77, ptr %4, align 8, !dbg !3947
  br label %78, !dbg !3947

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3947
  %81 = load ptr, ptr %80, align 8, !dbg !3947
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3953
  store ptr %81, ptr %82, align 8, !dbg !3950, !tbaa !852
  %83 = icmp eq ptr %81, null, !dbg !3951
  br i1 %83, label %197, label %84, !dbg !3952

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3941, metadata !DIExpression()), !dbg !3945
  %85 = icmp sgt i32 %79, -1, !dbg !3947
  br i1 %85, label %93, label %86, !dbg !3947

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3947
  store i32 %87, ptr %7, align 8, !dbg !3947
  %88 = icmp ult i32 %79, -7, !dbg !3947
  br i1 %88, label %89, label %93, !dbg !3947

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3947
  %91 = sext i32 %79 to i64, !dbg !3947
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3947
  br label %97, !dbg !3947

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3947
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3947
  store ptr %96, ptr %4, align 8, !dbg !3947
  br label %97, !dbg !3947

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3947
  %100 = load ptr, ptr %99, align 8, !dbg !3947
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3953
  store ptr %100, ptr %101, align 8, !dbg !3950, !tbaa !852
  %102 = icmp eq ptr %100, null, !dbg !3951
  br i1 %102, label %197, label %103, !dbg !3952

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3941, metadata !DIExpression()), !dbg !3945
  %104 = icmp sgt i32 %98, -1, !dbg !3947
  br i1 %104, label %112, label %105, !dbg !3947

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3947
  store i32 %106, ptr %7, align 8, !dbg !3947
  %107 = icmp ult i32 %98, -7, !dbg !3947
  br i1 %107, label %108, label %112, !dbg !3947

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3947
  %110 = sext i32 %98 to i64, !dbg !3947
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3947
  br label %116, !dbg !3947

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3947
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3947
  store ptr %115, ptr %4, align 8, !dbg !3947
  br label %116, !dbg !3947

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3947
  %119 = load ptr, ptr %118, align 8, !dbg !3947
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3953
  store ptr %119, ptr %120, align 8, !dbg !3950, !tbaa !852
  %121 = icmp eq ptr %119, null, !dbg !3951
  br i1 %121, label %197, label %122, !dbg !3952

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3941, metadata !DIExpression()), !dbg !3945
  %123 = icmp sgt i32 %117, -1, !dbg !3947
  br i1 %123, label %131, label %124, !dbg !3947

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3947
  store i32 %125, ptr %7, align 8, !dbg !3947
  %126 = icmp ult i32 %117, -7, !dbg !3947
  br i1 %126, label %127, label %131, !dbg !3947

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3947
  %129 = sext i32 %117 to i64, !dbg !3947
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3947
  br label %135, !dbg !3947

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3947
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3947
  store ptr %134, ptr %4, align 8, !dbg !3947
  br label %135, !dbg !3947

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3947
  %138 = load ptr, ptr %137, align 8, !dbg !3947
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3953
  store ptr %138, ptr %139, align 8, !dbg !3950, !tbaa !852
  %140 = icmp eq ptr %138, null, !dbg !3951
  br i1 %140, label %197, label %141, !dbg !3952

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3941, metadata !DIExpression()), !dbg !3945
  %142 = icmp sgt i32 %136, -1, !dbg !3947
  br i1 %142, label %150, label %143, !dbg !3947

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3947
  store i32 %144, ptr %7, align 8, !dbg !3947
  %145 = icmp ult i32 %136, -7, !dbg !3947
  br i1 %145, label %146, label %150, !dbg !3947

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3947
  %148 = sext i32 %136 to i64, !dbg !3947
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3947
  br label %154, !dbg !3947

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3947
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3947
  store ptr %153, ptr %4, align 8, !dbg !3947
  br label %154, !dbg !3947

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3947
  %157 = load ptr, ptr %156, align 8, !dbg !3947
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3953
  store ptr %157, ptr %158, align 8, !dbg !3950, !tbaa !852
  %159 = icmp eq ptr %157, null, !dbg !3951
  br i1 %159, label %197, label %160, !dbg !3952

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3941, metadata !DIExpression()), !dbg !3945
  %161 = icmp sgt i32 %155, -1, !dbg !3947
  br i1 %161, label %169, label %162, !dbg !3947

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3947
  store i32 %163, ptr %7, align 8, !dbg !3947
  %164 = icmp ult i32 %155, -7, !dbg !3947
  br i1 %164, label %165, label %169, !dbg !3947

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3947
  %167 = sext i32 %155 to i64, !dbg !3947
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3947
  br label %173, !dbg !3947

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3947
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3947
  store ptr %172, ptr %4, align 8, !dbg !3947
  br label %173, !dbg !3947

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3947
  %176 = load ptr, ptr %175, align 8, !dbg !3947
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3953
  store ptr %176, ptr %177, align 8, !dbg !3950, !tbaa !852
  %178 = icmp eq ptr %176, null, !dbg !3951
  br i1 %178, label %197, label %179, !dbg !3952

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3941, metadata !DIExpression()), !dbg !3945
  %180 = icmp sgt i32 %174, -1, !dbg !3947
  br i1 %180, label %188, label %181, !dbg !3947

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3947
  store i32 %182, ptr %7, align 8, !dbg !3947
  %183 = icmp ult i32 %174, -7, !dbg !3947
  br i1 %183, label %184, label %188, !dbg !3947

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3947
  %186 = sext i32 %174 to i64, !dbg !3947
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3947
  br label %191, !dbg !3947

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3947
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3947
  store ptr %190, ptr %4, align 8, !dbg !3947
  br label %191, !dbg !3947

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3947
  %193 = load ptr, ptr %192, align 8, !dbg !3947
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3953
  store ptr %193, ptr %194, align 8, !dbg !3950, !tbaa !852
  %195 = icmp eq ptr %193, null, !dbg !3951
  %196 = select i1 %195, i64 9, i64 10, !dbg !3952
  br label %197, !dbg !3952

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3954
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3955
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3956
  ret void, !dbg !3956
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3957 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3966
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3965, metadata !DIExpression(), metadata !3966, metadata ptr %5, metadata !DIExpression()), !dbg !3967
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3961, metadata !DIExpression()), !dbg !3967
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3962, metadata !DIExpression()), !dbg !3967
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3963, metadata !DIExpression()), !dbg !3967
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3964, metadata !DIExpression()), !dbg !3967
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3968
  call void @llvm.va_start(ptr nonnull %5), !dbg !3969
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3970, !tbaa.struct !1915
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3970
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3970
  call void @llvm.va_end(ptr nonnull %5), !dbg !3971
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3972
  ret void, !dbg !3972
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3973 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3974, !tbaa !852
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.92, ptr noundef %1), !dbg !3974
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.17.109, i32 noundef 5) #38, !dbg !3975
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.110) #38, !dbg !3975
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.19.111, i32 noundef 5) #38, !dbg !3976
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.112, ptr noundef nonnull @.str.21.113) #38, !dbg !3976
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.90, ptr noundef nonnull @.str.22.114, i32 noundef 5) #38, !dbg !3977
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.115) #38, !dbg !3977
  ret void, !dbg !3978
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3979 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3984, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3985, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata ptr %0, metadata !3988, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %2, metadata !3992, metadata !DIExpression()), !dbg !3993
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3995
  call void @llvm.dbg.value(metadata ptr %4, metadata !3996, metadata !DIExpression()), !dbg !4001
  %5 = icmp eq ptr %4, null, !dbg !4003
  br i1 %5, label %6, label %7, !dbg !4005

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4006
  unreachable, !dbg !4006

7:                                                ; preds = %3
  ret ptr %4, !dbg !4007
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3989 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3988, metadata !DIExpression()), !dbg !4008
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !4008
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3992, metadata !DIExpression()), !dbg !4008
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4009
  call void @llvm.dbg.value(metadata ptr %4, metadata !3996, metadata !DIExpression()), !dbg !4010
  %5 = icmp eq ptr %4, null, !dbg !4012
  br i1 %5, label %6, label %7, !dbg !4013

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4014
  unreachable, !dbg !4014

7:                                                ; preds = %3
  ret ptr %4, !dbg !4015
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4016 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4020, metadata !DIExpression()), !dbg !4021
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4022
  call void @llvm.dbg.value(metadata ptr %2, metadata !3996, metadata !DIExpression()), !dbg !4023
  %3 = icmp eq ptr %2, null, !dbg !4025
  br i1 %3, label %4, label %5, !dbg !4026

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4027
  unreachable, !dbg !4027

5:                                                ; preds = %1
  ret ptr %2, !dbg !4028
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4029 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4030 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4034, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i64 %0, metadata !4036, metadata !DIExpression()), !dbg !4040
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4042
  call void @llvm.dbg.value(metadata ptr %2, metadata !3996, metadata !DIExpression()), !dbg !4043
  %3 = icmp eq ptr %2, null, !dbg !4045
  br i1 %3, label %4, label %5, !dbg !4046

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4047
  unreachable, !dbg !4047

5:                                                ; preds = %1
  ret ptr %2, !dbg !4048
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4049 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %0, metadata !4020, metadata !DIExpression()), !dbg !4055
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4057
  call void @llvm.dbg.value(metadata ptr %2, metadata !3996, metadata !DIExpression()), !dbg !4058
  %3 = icmp eq ptr %2, null, !dbg !4060
  br i1 %3, label %4, label %5, !dbg !4061

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4062
  unreachable, !dbg !4062

5:                                                ; preds = %1
  ret ptr %2, !dbg !4063
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4064 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4068, metadata !DIExpression()), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i64 %1, metadata !4075, metadata !DIExpression()), !dbg !4076
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4078
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4079
  call void @llvm.dbg.value(metadata ptr %4, metadata !3996, metadata !DIExpression()), !dbg !4080
  %5 = icmp eq ptr %4, null, !dbg !4082
  br i1 %5, label %6, label %7, !dbg !4083

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4084
  unreachable, !dbg !4084

7:                                                ; preds = %2
  ret ptr %4, !dbg !4085
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4086 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4087 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4093
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %1, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 %1, metadata !4075, metadata !DIExpression()), !dbg !4100
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4102
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4103
  call void @llvm.dbg.value(metadata ptr %4, metadata !3996, metadata !DIExpression()), !dbg !4104
  %5 = icmp eq ptr %4, null, !dbg !4106
  br i1 %5, label %6, label %7, !dbg !4107

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4108
  unreachable, !dbg !4108

7:                                                ; preds = %2
  ret ptr %4, !dbg !4109
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4110 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4114, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4115, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %0, metadata !4118, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i64 %1, metadata !4121, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i64 %2, metadata !4122, metadata !DIExpression()), !dbg !4123
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4125
  call void @llvm.dbg.value(metadata ptr %4, metadata !3996, metadata !DIExpression()), !dbg !4126
  %5 = icmp eq ptr %4, null, !dbg !4128
  br i1 %5, label %6, label %7, !dbg !4129

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4130
  unreachable, !dbg !4130

7:                                                ; preds = %3
  ret ptr %4, !dbg !4131
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4132 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4136, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4137, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr null, metadata !3988, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i64 %1, metadata !3992, metadata !DIExpression()), !dbg !4139
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4141
  call void @llvm.dbg.value(metadata ptr %3, metadata !3996, metadata !DIExpression()), !dbg !4142
  %4 = icmp eq ptr %3, null, !dbg !4144
  br i1 %4, label %5, label %6, !dbg !4145

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4146
  unreachable, !dbg !4146

6:                                                ; preds = %2
  ret ptr %3, !dbg !4147
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4148 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4152, metadata !DIExpression()), !dbg !4154
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4153, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata ptr null, metadata !4114, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %0, metadata !4115, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %1, metadata !4116, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata ptr null, metadata !4118, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %0, metadata !4121, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %1, metadata !4122, metadata !DIExpression()), !dbg !4157
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4159
  call void @llvm.dbg.value(metadata ptr %3, metadata !3996, metadata !DIExpression()), !dbg !4160
  %4 = icmp eq ptr %3, null, !dbg !4162
  br i1 %4, label %5, label %6, !dbg !4163

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4164
  unreachable, !dbg !4164

6:                                                ; preds = %2
  ret ptr %3, !dbg !4165
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4166 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4170, metadata !DIExpression()), !dbg !4172
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4171, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %0, metadata !794, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %1, metadata !795, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 1, metadata !796, metadata !DIExpression()), !dbg !4173
  %3 = load i64, ptr %1, align 8, !dbg !4175, !tbaa !1145
  call void @llvm.dbg.value(metadata i64 %3, metadata !797, metadata !DIExpression()), !dbg !4173
  %4 = icmp eq ptr %0, null, !dbg !4176
  br i1 %4, label %5, label %8, !dbg !4178

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4179
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4182
  br label %15, !dbg !4182

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4183
  %10 = add nuw i64 %9, 1, !dbg !4183
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4183
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4183
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %13, metadata !797, metadata !DIExpression()), !dbg !4173
  br i1 %12, label %14, label %15, !dbg !4186

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4187
  unreachable, !dbg !4187

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4173
  call void @llvm.dbg.value(metadata i64 %16, metadata !797, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %0, metadata !3988, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i64 %16, metadata !3991, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i64 1, metadata !3992, metadata !DIExpression()), !dbg !4188
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4190
  call void @llvm.dbg.value(metadata ptr %17, metadata !3996, metadata !DIExpression()), !dbg !4191
  %18 = icmp eq ptr %17, null, !dbg !4193
  br i1 %18, label %19, label %20, !dbg !4194

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4195
  unreachable, !dbg !4195

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !794, metadata !DIExpression()), !dbg !4173
  store i64 %16, ptr %1, align 8, !dbg !4196, !tbaa !1145
  ret ptr %17, !dbg !4197
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !790 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !794, metadata !DIExpression()), !dbg !4198
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !795, metadata !DIExpression()), !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !796, metadata !DIExpression()), !dbg !4198
  %4 = load i64, ptr %1, align 8, !dbg !4199, !tbaa !1145
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !797, metadata !DIExpression()), !dbg !4198
  %5 = icmp eq ptr %0, null, !dbg !4200
  br i1 %5, label %6, label %13, !dbg !4201

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4202
  br i1 %7, label %8, label %20, !dbg !4203

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4204
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !797, metadata !DIExpression()), !dbg !4198
  %10 = icmp ugt i64 %2, 128, !dbg !4206
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4207
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !797, metadata !DIExpression()), !dbg !4198
  br label %20, !dbg !4208

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4209
  %15 = add nuw i64 %14, 1, !dbg !4209
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4209
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4209
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4209
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !797, metadata !DIExpression()), !dbg !4198
  br i1 %17, label %19, label %20, !dbg !4210

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4211
  unreachable, !dbg !4211

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !797, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata ptr %0, metadata !3988, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %21, metadata !3991, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %2, metadata !3992, metadata !DIExpression()), !dbg !4212
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4214
  call void @llvm.dbg.value(metadata ptr %22, metadata !3996, metadata !DIExpression()), !dbg !4215
  %23 = icmp eq ptr %22, null, !dbg !4217
  br i1 %23, label %24, label %25, !dbg !4218

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4219
  unreachable, !dbg !4219

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !794, metadata !DIExpression()), !dbg !4198
  store i64 %21, ptr %1, align 8, !dbg !4220, !tbaa !1145
  ret ptr %22, !dbg !4221
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !801 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !808, metadata !DIExpression()), !dbg !4222
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !809, metadata !DIExpression()), !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !810, metadata !DIExpression()), !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !811, metadata !DIExpression()), !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !812, metadata !DIExpression()), !dbg !4222
  %6 = load i64, ptr %1, align 8, !dbg !4223, !tbaa !1145
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !813, metadata !DIExpression()), !dbg !4222
  %7 = ashr i64 %6, 1, !dbg !4224
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4224
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4224
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4224
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !814, metadata !DIExpression()), !dbg !4222
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4226
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !814, metadata !DIExpression()), !dbg !4222
  %12 = icmp sgt i64 %3, -1, !dbg !4227
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4229
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !814, metadata !DIExpression()), !dbg !4222
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4230
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4230
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !815, metadata !DIExpression()), !dbg !4222
  %18 = icmp slt i64 %17, 128, !dbg !4230
  %19 = select i1 %18, i64 128, i64 0, !dbg !4230
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !816, metadata !DIExpression()), !dbg !4222
  %21 = icmp eq i64 %20, 0, !dbg !4231
  br i1 %21, label %28, label %22, !dbg !4233

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4234
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !814, metadata !DIExpression()), !dbg !4222
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4236
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !815, metadata !DIExpression()), !dbg !4222
  br label %28, !dbg !4237

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4222
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !815, metadata !DIExpression()), !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !814, metadata !DIExpression()), !dbg !4222
  %31 = icmp eq ptr %0, null, !dbg !4238
  br i1 %31, label %32, label %33, !dbg !4240

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4241, !tbaa !1145
  br label %33, !dbg !4242

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4243
  %35 = icmp slt i64 %34, %2, !dbg !4245
  br i1 %35, label %36, label %48, !dbg !4246

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4247
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4247
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4247
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !814, metadata !DIExpression()), !dbg !4222
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4248
  br i1 %42, label %47, label %43, !dbg !4248

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4249
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4249
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !815, metadata !DIExpression()), !dbg !4222
  br i1 %45, label %47, label %48, !dbg !4250

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #40, !dbg !4251
  unreachable, !dbg !4251

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4222
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !815, metadata !DIExpression()), !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !814, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata ptr %0, metadata !4068, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %50, metadata !4069, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %50, metadata !4075, metadata !DIExpression()), !dbg !4254
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4256
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #46, !dbg !4257
  call void @llvm.dbg.value(metadata ptr %52, metadata !3996, metadata !DIExpression()), !dbg !4258
  %53 = icmp eq ptr %52, null, !dbg !4260
  br i1 %53, label %54, label %55, !dbg !4261

54:                                               ; preds = %48
  tail call void @xalloc_die() #40, !dbg !4262
  unreachable, !dbg !4262

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !808, metadata !DIExpression()), !dbg !4222
  store i64 %49, ptr %1, align 8, !dbg !4263, !tbaa !1145
  ret ptr %52, !dbg !4264
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4265 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %0, metadata !4269, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 1, metadata !4272, metadata !DIExpression()), !dbg !4273
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !4275
  call void @llvm.dbg.value(metadata ptr %2, metadata !3996, metadata !DIExpression()), !dbg !4276
  %3 = icmp eq ptr %2, null, !dbg !4278
  br i1 %3, label %4, label %5, !dbg !4279

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4280
  unreachable, !dbg !4280

5:                                                ; preds = %1
  ret ptr %2, !dbg !4281
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4282 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4270 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4269, metadata !DIExpression()), !dbg !4283
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4272, metadata !DIExpression()), !dbg !4283
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !4284
  call void @llvm.dbg.value(metadata ptr %3, metadata !3996, metadata !DIExpression()), !dbg !4285
  %4 = icmp eq ptr %3, null, !dbg !4287
  br i1 %4, label %5, label %6, !dbg !4288

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4289
  unreachable, !dbg !4289

6:                                                ; preds = %2
  ret ptr %3, !dbg !4290
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4291 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4293, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i64 %0, metadata !4295, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 1, metadata !4298, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 %0, metadata !4301, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i64 1, metadata !4304, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i64 %0, metadata !4301, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i64 1, metadata !4304, metadata !DIExpression()), !dbg !4305
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !4307
  call void @llvm.dbg.value(metadata ptr %2, metadata !3996, metadata !DIExpression()), !dbg !4308
  %3 = icmp eq ptr %2, null, !dbg !4310
  br i1 %3, label %4, label %5, !dbg !4311

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4312
  unreachable, !dbg !4312

5:                                                ; preds = %1
  ret ptr %2, !dbg !4313
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4296 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4295, metadata !DIExpression()), !dbg !4314
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %0, metadata !4301, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %1, metadata !4304, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %0, metadata !4301, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %1, metadata !4304, metadata !DIExpression()), !dbg !4315
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !4317
  call void @llvm.dbg.value(metadata ptr %3, metadata !3996, metadata !DIExpression()), !dbg !4318
  %4 = icmp eq ptr %3, null, !dbg !4320
  br i1 %4, label %5, label %6, !dbg !4321

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4322
  unreachable, !dbg !4322

6:                                                ; preds = %2
  ret ptr %3, !dbg !4323
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4324 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4328, metadata !DIExpression()), !dbg !4330
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i64 %1, metadata !4020, metadata !DIExpression()), !dbg !4331
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4333
  call void @llvm.dbg.value(metadata ptr %3, metadata !3996, metadata !DIExpression()), !dbg !4334
  %4 = icmp eq ptr %3, null, !dbg !4336
  br i1 %4, label %5, label %6, !dbg !4337

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4338
  unreachable, !dbg !4338

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4339, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata ptr %0, metadata !4342, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i64 %1, metadata !4343, metadata !DIExpression()), !dbg !4344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4346
  ret ptr %3, !dbg !4347
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4348 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4352, metadata !DIExpression()), !dbg !4354
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4353, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %1, metadata !4034, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %1, metadata !4036, metadata !DIExpression()), !dbg !4357
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4359
  call void @llvm.dbg.value(metadata ptr %3, metadata !3996, metadata !DIExpression()), !dbg !4360
  %4 = icmp eq ptr %3, null, !dbg !4362
  br i1 %4, label %5, label %6, !dbg !4363

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4364
  unreachable, !dbg !4364

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4339, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata ptr %0, metadata !4342, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i64 %1, metadata !4343, metadata !DIExpression()), !dbg !4365
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4367
  ret ptr %3, !dbg !4368
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4369 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4373, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4374, metadata !DIExpression()), !dbg !4376
  %3 = add nsw i64 %1, 1, !dbg !4377
  call void @llvm.dbg.value(metadata i64 %3, metadata !4034, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i64 %3, metadata !4036, metadata !DIExpression()), !dbg !4380
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4382
  call void @llvm.dbg.value(metadata ptr %4, metadata !3996, metadata !DIExpression()), !dbg !4383
  %5 = icmp eq ptr %4, null, !dbg !4385
  br i1 %5, label %6, label %7, !dbg !4386

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4387
  unreachable, !dbg !4387

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4375, metadata !DIExpression()), !dbg !4376
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4388
  store i8 0, ptr %8, align 1, !dbg !4389, !tbaa !930
  call void @llvm.dbg.value(metadata ptr %4, metadata !4339, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata ptr %0, metadata !4342, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64 %1, metadata !4343, metadata !DIExpression()), !dbg !4390
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4392
  ret ptr %4, !dbg !4393
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4394 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4396, metadata !DIExpression()), !dbg !4397
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4398
  %3 = add i64 %2, 1, !dbg !4399
  call void @llvm.dbg.value(metadata ptr %0, metadata !4328, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i64 %3, metadata !4329, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i64 %3, metadata !4020, metadata !DIExpression()), !dbg !4402
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4404
  call void @llvm.dbg.value(metadata ptr %4, metadata !3996, metadata !DIExpression()), !dbg !4405
  %5 = icmp eq ptr %4, null, !dbg !4407
  br i1 %5, label %6, label %7, !dbg !4408

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4409
  unreachable, !dbg !4409

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4339, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata ptr %0, metadata !4342, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i64 %3, metadata !4343, metadata !DIExpression()), !dbg !4410
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4412
  ret ptr %4, !dbg !4413
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4414 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4419, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4416, metadata !DIExpression()), !dbg !4420
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.132, ptr noundef nonnull @.str.2.133, i32 noundef 5) #38, !dbg !4419
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.134, ptr noundef %2) #38, !dbg !4419
  %3 = icmp eq i32 %1, 0, !dbg !4419
  tail call void @llvm.assume(i1 %3), !dbg !4419
  tail call void @abort() #40, !dbg !4421
  unreachable, !dbg !4421
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4422 {
  %3 = alloca [81 x i8], align 1, !DIAssignID !4484
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4465, metadata !DIExpression(), metadata !4484, metadata ptr %3, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4460, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4461, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4462, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4463, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4464, metadata !DIExpression()), !dbg !4485
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !4486
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4469, metadata !DIExpression()), !dbg !4487
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4471, metadata !DIExpression()), !dbg !4487
  br label %4, !dbg !4488

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4487
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4485
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4489
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4490
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4462, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4463, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4471, metadata !DIExpression()), !dbg !4487
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4469, metadata !DIExpression()), !dbg !4487
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4464, metadata !DIExpression()), !dbg !4485
  %11 = load i8, ptr %6, align 1, !dbg !4490, !tbaa !930
  switch i8 %11, label %38 [
    i8 0, label %.loopexit
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4491

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4462, metadata !DIExpression()), !dbg !4485
  %13 = icmp slt i64 %7, 80, !dbg !4492
  br i1 %13, label %14, label %43, !dbg !4495

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4496
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4471, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4487
  store i8 114, ptr %10, align 1, !dbg !4497, !tbaa !930
  br label %43, !dbg !4498

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4462, metadata !DIExpression()), !dbg !4485
  %17 = or i32 %8, 576, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4463, metadata !DIExpression()), !dbg !4485
  %18 = icmp slt i64 %7, 80, !dbg !4500
  br i1 %18, label %19, label %43, !dbg !4502

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4503
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4471, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4487
  store i8 119, ptr %10, align 1, !dbg !4504, !tbaa !930
  br label %43, !dbg !4505

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4462, metadata !DIExpression()), !dbg !4485
  %22 = or i32 %8, 1088, !dbg !4506
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4463, metadata !DIExpression()), !dbg !4485
  %23 = icmp slt i64 %7, 80, !dbg !4507
  br i1 %23, label %24, label %43, !dbg !4509

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4510
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4471, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4487
  store i8 97, ptr %10, align 1, !dbg !4511, !tbaa !930
  br label %43, !dbg !4512

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4463, metadata !DIExpression()), !dbg !4485
  %27 = icmp slt i64 %7, 80, !dbg !4513
  br i1 %27, label %28, label %43, !dbg !4515

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4516
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4471, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4487
  store i8 98, ptr %10, align 1, !dbg !4517, !tbaa !930
  br label %43, !dbg !4518

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4462, metadata !DIExpression()), !dbg !4485
  %31 = icmp slt i64 %7, 80, !dbg !4519
  br i1 %31, label %32, label %43, !dbg !4521

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4522
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4471, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4487
  store i8 43, ptr %10, align 1, !dbg !4523, !tbaa !930
  br label %43, !dbg !4524

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4525
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4463, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4464, metadata !DIExpression()), !dbg !4485
  br label %43, !dbg !4526

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4527
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4463, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4464, metadata !DIExpression()), !dbg !4485
  br label %43, !dbg !4528

38:                                               ; preds = %4
  %.lcssa10 = phi i1 [ %5, %4 ]
  %.lcssa8 = phi ptr [ %6, %4 ], !dbg !4487
  %.lcssa6 = phi i64 [ %7, %4 ]
  %.lcssa4 = phi i32 [ %8, %4 ], !dbg !4485
  %.lcssa2 = phi i32 [ %9, %4 ], !dbg !4489
  %.lcssa = phi ptr [ %10, %4 ], !dbg !4490
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #39, !dbg !4529
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4472, metadata !DIExpression()), !dbg !4530
  %40 = sub nsw i64 80, %.lcssa6, !dbg !4531
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4533
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4472, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !4534, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr %.lcssa8, metadata !4537, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64 %41, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.lcssa, ptr noundef nonnull align 1 %.lcssa8, i64 noundef %41, i1 noundef false) #38, !dbg !4541
  %42 = getelementptr inbounds i8, ptr %.lcssa, i64 %41, !dbg !4542
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4471, metadata !DIExpression()), !dbg !4487
  br label %49, !dbg !4543

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4485
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4462, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4463, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4471, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4487
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4464, metadata !DIExpression()), !dbg !4485
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4544
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4469, metadata !DIExpression()), !dbg !4487
  br label %4, !dbg !4545, !llvm.loop !4546

.loopexit:                                        ; preds = %4
  %.lcssa11 = phi i1 [ %5, %4 ]
  %.lcssa5 = phi i32 [ %8, %4 ], !dbg !4485
  %.lcssa3 = phi i32 [ %9, %4 ], !dbg !4489
  %.lcssa1 = phi ptr [ %10, %4 ], !dbg !4490
  br label %49, !dbg !4548

49:                                               ; preds = %.loopexit, %38
  %50 = phi i1 [ %.lcssa10, %38 ], [ %.lcssa11, %.loopexit ]
  %51 = phi i32 [ %.lcssa4, %38 ], [ %.lcssa5, %.loopexit ]
  %52 = phi i32 [ %.lcssa2, %38 ], [ %.lcssa3, %.loopexit ]
  %53 = phi ptr [ %42, %38 ], [ %.lcssa1, %.loopexit ], !dbg !4487
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !4471, metadata !DIExpression()), !dbg !4487
  store i8 0, ptr %53, align 1, !dbg !4548, !tbaa !930
  br i1 %50, label %54, label %65, !dbg !4549

54:                                               ; preds = %49
  %55 = or i32 %52, %51, !dbg !4550
  %56 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %55, i32 noundef 438) #38, !dbg !4551
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !4477, metadata !DIExpression()), !dbg !4552
  %57 = icmp slt i32 %56, 0, !dbg !4553
  br i1 %57, label %67, label %58, !dbg !4555

58:                                               ; preds = %54
  %59 = call noalias ptr @fdopen(i32 noundef %56, ptr noundef nonnull %3) #38, !dbg !4556
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !4480, metadata !DIExpression()), !dbg !4552
  %60 = icmp eq ptr %59, null, !dbg !4557
  br i1 %60, label %61, label %67, !dbg !4558

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #41, !dbg !4559
  %63 = load i32, ptr %62, align 4, !dbg !4559, !tbaa !921
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !4481, metadata !DIExpression()), !dbg !4560
  %64 = tail call i32 @close(i32 noundef %56) #38, !dbg !4561
  store i32 %63, ptr %62, align 4, !dbg !4562, !tbaa !921
  br label %67, !dbg !4563

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4564, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata ptr %1, metadata !4567, metadata !DIExpression()), !dbg !4568
  %66 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4570
  br label %67, !dbg !4571

67:                                               ; preds = %54, %61, %58, %65
  %68 = phi ptr [ %66, %65 ], [ null, %54 ], [ null, %61 ], [ %59, %58 ], !dbg !4485
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !4572
  ret ptr %68, !dbg !4572
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4573 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !4576 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4579 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4580 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4583 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4621, metadata !DIExpression()), !dbg !4626
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4627
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4622, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4626
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4628, metadata !DIExpression()), !dbg !4631
  %3 = load i32, ptr %0, align 8, !dbg !4633, !tbaa !1488
  %4 = and i32 %3, 32, !dbg !4634
  %5 = icmp eq i32 %4, 0, !dbg !4634
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4624, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4626
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4635
  %7 = icmp eq i32 %6, 0, !dbg !4636
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4625, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4626
  br i1 %5, label %8, label %18, !dbg !4637

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4639
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4626
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4640
  %11 = xor i1 %7, true, !dbg !4640
  %12 = sext i1 %11 to i32, !dbg !4640
  br i1 %10, label %21, label %13, !dbg !4640

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4641
  %15 = load i32, ptr %14, align 4, !dbg !4641, !tbaa !921
  %16 = icmp ne i32 %15, 9, !dbg !4642
  %17 = sext i1 %16 to i32, !dbg !4643
  br label %21, !dbg !4643

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4644

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4646
  store i32 0, ptr %20, align 4, !dbg !4648, !tbaa !921
  br label %21, !dbg !4646

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4626
  ret i32 %22, !dbg !4649
}

; Function Attrs: nounwind
declare !dbg !4650 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4653 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4658, metadata !DIExpression()), !dbg !4663
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4659, metadata !DIExpression()), !dbg !4663
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4660, metadata !DIExpression()), !dbg !4663
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4661, metadata !DIExpression()), !dbg !4663
  %5 = icmp eq ptr %1, null, !dbg !4664
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4666
  %7 = select i1 %5, ptr @.str.141, ptr %1, !dbg !4666
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4666
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4660, metadata !DIExpression()), !dbg !4663
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4659, metadata !DIExpression()), !dbg !4663
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4658, metadata !DIExpression()), !dbg !4663
  %9 = icmp eq ptr %3, null, !dbg !4667
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4669
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4661, metadata !DIExpression()), !dbg !4663
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !4670
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4662, metadata !DIExpression()), !dbg !4663
  %12 = icmp ult i64 %11, -3, !dbg !4671
  br i1 %12, label %13, label %17, !dbg !4673

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !4674
  %15 = icmp eq i32 %14, 0, !dbg !4674
  br i1 %15, label %16, label %29, !dbg !4675

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4676, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata ptr %10, metadata !4683, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata i32 0, metadata !4686, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata i64 8, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i64 0, ptr %10, align 1, !dbg !4690
  br label %29, !dbg !4691

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4692
  br i1 %18, label %19, label %20, !dbg !4694

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4695
  unreachable, !dbg !4695

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4696

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !4698
  br i1 %23, label %29, label %24, !dbg !4699

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4700
  br i1 %25, label %29, label %26, !dbg !4703

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4704, !tbaa !930
  %28 = zext i8 %27 to i32, !dbg !4705
  store i32 %28, ptr %6, align 4, !dbg !4706, !tbaa !921
  br label %29, !dbg !4707

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4663
  ret i64 %30, !dbg !4708
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4709 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4715 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4717, metadata !DIExpression()), !dbg !4721
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4718, metadata !DIExpression()), !dbg !4721
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4719, metadata !DIExpression()), !dbg !4721
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4722
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4722
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4720, metadata !DIExpression()), !dbg !4721
  br i1 %5, label %6, label %8, !dbg !4724

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !4725
  store i32 12, ptr %7, align 4, !dbg !4727, !tbaa !921
  br label %12, !dbg !4728

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4722
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4720, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata ptr %0, metadata !4729, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i64 %9, metadata !4732, metadata !DIExpression()), !dbg !4733
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4735
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4736
  br label %12, !dbg !4737

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4721
  ret ptr %13, !dbg !4738
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4739 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4748
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4744, metadata !DIExpression(), metadata !4748, metadata ptr %2, metadata !DIExpression()), !dbg !4749
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4743, metadata !DIExpression()), !dbg !4749
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4750
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4751
  %4 = icmp eq i32 %3, 0, !dbg !4751
  br i1 %4, label %5, label %12, !dbg !4753

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4754, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata ptr @.str.146, metadata !4757, metadata !DIExpression()), !dbg !4758
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.146, i64 2), !dbg !4761
  %7 = icmp eq i32 %6, 0, !dbg !4762
  br i1 %7, label %11, label %8, !dbg !4763

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4754, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata ptr @.str.1.147, metadata !4757, metadata !DIExpression()), !dbg !4764
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.147, i64 6), !dbg !4766
  %10 = icmp eq i32 %9, 0, !dbg !4767
  br i1 %10, label %11, label %12, !dbg !4768

11:                                               ; preds = %8, %5
  br label %12, !dbg !4769

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4749
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4770
  ret i1 %13, !dbg !4770
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4771 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4775, metadata !DIExpression()), !dbg !4778
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4776, metadata !DIExpression()), !dbg !4778
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4777, metadata !DIExpression()), !dbg !4778
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4779
  ret i32 %4, !dbg !4780
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4781 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4785, metadata !DIExpression()), !dbg !4786
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4787
  ret ptr %2, !dbg !4788
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4789 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4791, metadata !DIExpression()), !dbg !4793
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4794
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4792, metadata !DIExpression()), !dbg !4793
  ret ptr %2, !dbg !4795
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4796 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4798, metadata !DIExpression()), !dbg !4805
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4799, metadata !DIExpression()), !dbg !4805
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4800, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i32 %0, metadata !4791, metadata !DIExpression()), !dbg !4806
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4808
  call void @llvm.dbg.value(metadata ptr %4, metadata !4792, metadata !DIExpression()), !dbg !4806
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4801, metadata !DIExpression()), !dbg !4805
  %5 = icmp eq ptr %4, null, !dbg !4809
  br i1 %5, label %6, label %9, !dbg !4810

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4811
  br i1 %7, label %19, label %8, !dbg !4814

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4815, !tbaa !930
  br label %19, !dbg !4816

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4817
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4802, metadata !DIExpression()), !dbg !4818
  %11 = icmp ult i64 %10, %2, !dbg !4819
  br i1 %11, label %12, label %14, !dbg !4821

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4822
  call void @llvm.dbg.value(metadata ptr %1, metadata !4824, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata ptr %4, metadata !4827, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata i64 %13, metadata !4828, metadata !DIExpression()), !dbg !4829
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !4831
  br label %19, !dbg !4832

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4833
  br i1 %15, label %19, label %16, !dbg !4836

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4837
  call void @llvm.dbg.value(metadata ptr %1, metadata !4824, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata ptr %4, metadata !4827, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %17, metadata !4828, metadata !DIExpression()), !dbg !4839
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4841
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4842
  store i8 0, ptr %18, align 1, !dbg !4843, !tbaa !930
  br label %19, !dbg !4844

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4845
  ret i32 %20, !dbg !4846
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
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!74, !425, !429, !444, !730, !764, !769, !771, !774, !776, !778, !500, !514, !565, !780, !722, !786, !818, !820, !822, !746, !824, !826, !828, !830}
!llvm.ident = !{!832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832}
!llvm.module.flags = !{!833, !834, !835, !836, !837, !838, !839, !840}

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
!73 = distinct !DIGlobalVariable(name: "longopts", scope: !74, file: !2, line: 74, type: !407, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/paste.o -MD -MP -MF src/.deps/paste.Tpo -c src/paste.c -o src/.paste.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !131, globals: !142, splitDebugInlining: false, nameTableKind: None)
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
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 18, baseType: !137)
!136 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!137 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!142 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !143, !148, !153, !158, !163, !165, !170, !173, !175, !177, !180, !185, !190, !272, !274, !276, !281, !283, !285, !287, !289, !291, !293, !295, !297, !302, !307, !309, !311, !313, !315, !317, !319, !324, !329, !331, !336, !338, !340, !342, !344, !346, !351, !353, !355, !360, !365, !370, !375, !377, !382, !384, !386, !72, !388, !390, !396, !398, !400, !402}
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
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !395, line: 18, baseType: !242)
!395 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !49, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !145, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !77, line: 952, type: !372, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 25)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 1536, elements: !20)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !410, line: 50, size: 256, elements: !411)
!410 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!411 = !{!412, !413, !414, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !410, line: 52, baseType: !138, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !409, file: !410, line: 55, baseType: !78, size: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !409, file: !410, line: 56, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !409, file: !410, line: 57, baseType: !78, size: 32, offset: 192)
!417 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!418 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!419 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !422, line: 3, type: !155, isLocal: true, isDefinition: true)
!422 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "Version", scope: !425, file: !422, line: 3, type: !138, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C11, file: !422, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !426, splitDebugInlining: false, nameTableKind: None)
!426 = !{!420, !423}
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "file_name", scope: !429, file: !430, line: 45, type: !138, isLocal: true, isDefinition: true)
!429 = distinct !DICompileUnit(language: DW_LANG_C11, file: !430, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !431, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!431 = !{!432, !434, !436, !438, !427, !440}
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !430, line: 121, type: !299, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !430, line: 121, type: !372, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !430, line: 123, type: !299, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !430, line: 126, type: !145, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !429, file: !430, line: 55, type: !172, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !444, file: !445, line: 66, type: !495, isLocal: false, isDefinition: true)
!444 = distinct !DICompileUnit(language: DW_LANG_C11, file: !445, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !446, globals: !447, splitDebugInlining: false, nameTableKind: None)
!445 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!446 = !{!133, !140}
!447 = !{!448, !450, !474, !476, !478, !480, !442, !482, !484, !486, !488, !493}
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !445, line: 272, type: !69, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "old_file_name", scope: !452, file: !445, line: 304, type: !138, isLocal: true, isDefinition: true)
!452 = distinct !DISubprogram(name: "verror_at_line", scope: !445, file: !445, line: 298, type: !453, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !467)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !78, !78, !138, !84, !138, !455}
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !456, line: 52, baseType: !457)
!456 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !458, line: 12, baseType: !459)
!458 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !445, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !461)
!461 = !{!462, !463, !464, !465, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !460, file: !445, baseType: !133, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !460, file: !445, baseType: !133, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !460, file: !445, baseType: !133, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !460, file: !445, baseType: !78, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !460, file: !445, baseType: !78, size: 32, offset: 224)
!467 = !{!468, !469, !470, !471, !472, !473}
!468 = !DILocalVariable(name: "status", arg: 1, scope: !452, file: !445, line: 298, type: !78)
!469 = !DILocalVariable(name: "errnum", arg: 2, scope: !452, file: !445, line: 298, type: !78)
!470 = !DILocalVariable(name: "file_name", arg: 3, scope: !452, file: !445, line: 298, type: !138)
!471 = !DILocalVariable(name: "line_number", arg: 4, scope: !452, file: !445, line: 298, type: !84)
!472 = !DILocalVariable(name: "message", arg: 5, scope: !452, file: !445, line: 298, type: !138)
!473 = !DILocalVariable(name: "args", arg: 6, scope: !452, file: !445, line: 298, type: !455)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(name: "old_line_number", scope: !452, file: !445, line: 305, type: !84, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !445, line: 338, type: !278, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !445, line: 346, type: !304, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !445, line: 346, type: !49, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "error_message_count", scope: !444, file: !445, line: 69, type: !84, isLocal: false, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !444, file: !445, line: 295, type: !78, isLocal: false, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !445, line: 208, type: !299, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !445, line: 208, type: !490, isLocal: true, isDefinition: true)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 21)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !445, line: 214, type: !69, isLocal: true, isDefinition: true)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null}
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "program_name", scope: !500, file: !501, line: 31, type: !138, isLocal: false, isDefinition: true)
!500 = distinct !DICompileUnit(language: DW_LANG_C11, file: !501, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !502, globals: !503, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!502 = !{!133, !132}
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
!514 = distinct !DICompileUnit(language: DW_LANG_C11, file: !511, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !515, splitDebugInlining: false, nameTableKind: None)
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
!564 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !565, file: !541, line: 76, type: !639, isLocal: false, isDefinition: true)
!565 = distinct !DICompileUnit(language: DW_LANG_C11, file: !541, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !566, retainedTypes: !574, globals: !575, splitDebugInlining: false, nameTableKind: None)
!566 = !{!567, !569, !97}
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !568, line: 42, baseType: !84, size: 32, elements: !85)
!568 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !568, line: 254, baseType: !84, size: 32, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!572 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!573 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!574 = !{!133, !78, !134, !135}
!575 = !{!539, !542, !544, !549, !551, !553, !555, !557, !559, !561, !563, !576, !580, !590, !592, !597, !599, !601, !603, !605, !628, !635, !637}
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !565, file: !541, line: 92, type: !578, isLocal: false, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 320, elements: !60)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !565, file: !541, line: 1040, type: !582, isLocal: false, isDefinition: true)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !541, line: 56, size: 448, elements: !583)
!583 = !{!584, !585, !586, !588, !589}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !582, file: !541, line: 59, baseType: !567, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !541, line: 62, baseType: !78, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !582, file: !541, line: 66, baseType: !587, size: 256, offset: 64)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !305)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !582, file: !541, line: 69, baseType: !138, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !582, file: !541, line: 72, baseType: !138, size: 64, offset: 384)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !565, file: !541, line: 107, type: !582, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "slot0", scope: !565, file: !541, line: 831, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 256)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !541, line: 321, type: !49, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !541, line: 357, type: !49, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !541, line: 358, type: !49, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !541, line: 199, type: !299, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "quote", scope: !607, file: !541, line: 228, type: !626, isLocal: true, isDefinition: true)
!607 = distinct !DISubprogram(name: "gettext_quote", scope: !541, file: !541, line: 197, type: !608, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !610)
!608 = !DISubroutineType(types: !609)
!609 = !{!138, !138, !567}
!610 = !{!611, !612, !613, !614, !615}
!611 = !DILocalVariable(name: "msgid", arg: 1, scope: !607, file: !541, line: 197, type: !138)
!612 = !DILocalVariable(name: "s", arg: 2, scope: !607, file: !541, line: 197, type: !567)
!613 = !DILocalVariable(name: "translation", scope: !607, file: !541, line: 199, type: !138)
!614 = !DILocalVariable(name: "w", scope: !607, file: !541, line: 229, type: !521)
!615 = !DILocalVariable(name: "mbs", scope: !607, file: !541, line: 230, type: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !618, file: !529, line: 15, baseType: !78, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !618, file: !529, line: 20, baseType: !622, size: 32, offset: 32)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !529, line: 16, size: 32, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !622, file: !529, line: 18, baseType: !84, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !622, file: !529, line: 19, baseType: !278, size: 32)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !627)
!627 = !{!51, !280}
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "slotvec", scope: !565, file: !541, line: 834, type: !630, isLocal: true, isDefinition: true)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !541, line: 823, size: 128, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !631, file: !541, line: 825, baseType: !135, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !631, file: !541, line: 826, baseType: !132, size: 64, offset: 64)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "nslots", scope: !565, file: !541, line: 832, type: !78, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "slotvec0", scope: !565, file: !541, line: 833, type: !631, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 704, elements: !380)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !643, line: 67, type: !372, isLocal: true, isDefinition: true)
!643 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !643, line: 69, type: !299, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !643, line: 83, type: !299, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !643, line: 83, type: !278, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !643, line: 85, type: !49, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !643, line: 88, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 171)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !643, line: 88, type: !659, isLocal: true, isDefinition: true)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 34)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !643, line: 105, type: !160, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !643, line: 109, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 23)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !643, line: 113, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 28)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !643, line: 120, type: !676, isLocal: true, isDefinition: true)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 32)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !643, line: 127, type: !681, isLocal: true, isDefinition: true)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 36)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !643, line: 134, type: !326, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !643, line: 142, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 44)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !643, line: 150, type: !693, isLocal: true, isDefinition: true)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 48)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !643, line: 159, type: !167, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !643, line: 170, type: !700, isLocal: true, isDefinition: true)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 60)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !643, line: 248, type: !263, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !643, line: 248, type: !348, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !643, line: 254, type: !263, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !643, line: 254, type: !150, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !643, line: 254, type: !326, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !643, line: 259, type: !3, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !643, line: 259, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 29)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !722, file: !723, line: 26, type: !725, isLocal: false, isDefinition: true)
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !724, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!724 = !{!720}
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 47)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "exit_failure", scope: !730, file: !731, line: 24, type: !733, isLocal: false, isDefinition: true)
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !732, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!732 = !{!728}
!733 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !736, line: 34, type: !145, isLocal: true, isDefinition: true)
!736 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !736, line: 34, type: !299, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !736, line: 34, type: !321, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !743, line: 108, type: !54, isLocal: true, isDefinition: true)
!743 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "internal_state", scope: !746, file: !743, line: 97, type: !749, isLocal: true, isDefinition: true)
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !747, globals: !748, splitDebugInlining: false, nameTableKind: None)
!747 = !{!133, !135, !140}
!748 = !{!741, !744}
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !751, file: !529, line: 15, baseType: !78, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !751, file: !529, line: 20, baseType: !755, size: 32, offset: 32)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !529, line: 16, size: 32, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !755, file: !529, line: 18, baseType: !84, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !755, file: !529, line: 19, baseType: !278, size: 32)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !761, line: 35, type: !49, isLocal: true, isDefinition: true)
!761 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !761, line: 35, type: !19, isLocal: true, isDefinition: true)
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !766, splitDebugInlining: false, nameTableKind: None)
!765 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!766 = !{!767}
!767 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !768, line: 44, baseType: !84, size: 32, elements: !124)
!768 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!773 = !{!133}
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !643, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !781, retainedTypes: !773, globals: !785, splitDebugInlining: false, nameTableKind: None)
!781 = !{!782}
!782 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !643, line: 40, baseType: !84, size: 32, elements: !783)
!783 = !{!784}
!784 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!785 = !{!641, !644, !646, !648, !650, !652, !657, !662, !664, !669, !674, !679, !684, !686, !691, !696, !698, !703, !705, !707, !709, !711, !713, !715}
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !788, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!788 = !{!789, !800}
!789 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !790, file: !787, line: 188, baseType: !84, size: 32, elements: !798)
!790 = distinct !DISubprogram(name: "x2nrealloc", scope: !787, file: !787, line: 176, type: !791, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !793)
!791 = !DISubroutineType(types: !792)
!792 = !{!133, !133, !179, !135}
!793 = !{!794, !795, !796, !797}
!794 = !DILocalVariable(name: "p", arg: 1, scope: !790, file: !787, line: 176, type: !133)
!795 = !DILocalVariable(name: "pn", arg: 2, scope: !790, file: !787, line: 176, type: !179)
!796 = !DILocalVariable(name: "s", arg: 3, scope: !790, file: !787, line: 176, type: !135)
!797 = !DILocalVariable(name: "n", scope: !790, file: !787, line: 178, type: !135)
!798 = !{!799}
!799 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!800 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !801, file: !787, line: 228, baseType: !84, size: 32, elements: !798)
!801 = distinct !DISubprogram(name: "xpalloc", scope: !787, file: !787, line: 223, type: !802, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !807)
!802 = !DISubroutineType(types: !803)
!803 = !{!133, !133, !804, !805, !394, !805}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !806, line: 130, baseType: !394)
!806 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816}
!808 = !DILocalVariable(name: "pa", arg: 1, scope: !801, file: !787, line: 223, type: !133)
!809 = !DILocalVariable(name: "pn", arg: 2, scope: !801, file: !787, line: 223, type: !804)
!810 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !801, file: !787, line: 223, type: !805)
!811 = !DILocalVariable(name: "n_max", arg: 4, scope: !801, file: !787, line: 223, type: !394)
!812 = !DILocalVariable(name: "s", arg: 5, scope: !801, file: !787, line: 223, type: !805)
!813 = !DILocalVariable(name: "n0", scope: !801, file: !787, line: 230, type: !805)
!814 = !DILocalVariable(name: "n", scope: !801, file: !787, line: 237, type: !805)
!815 = !DILocalVariable(name: "nbytes", scope: !801, file: !787, line: 248, type: !805)
!816 = !DILocalVariable(name: "adjusted_nbytes", scope: !801, file: !787, line: 252, type: !805)
!817 = !{!132, !133}
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !819, splitDebugInlining: false, nameTableKind: None)
!819 = !{!734, !737, !739}
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!824 = distinct !DICompileUnit(language: DW_LANG_C11, file: !825, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!825 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !827, splitDebugInlining: false, nameTableKind: None)
!827 = !{!759, !762}
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!829 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!830 = distinct !DICompileUnit(language: DW_LANG_C11, file: !831, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!831 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!832 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!833 = !{i32 7, !"Dwarf Version", i32 5}
!834 = !{i32 2, !"Debug Info Version", i32 3}
!835 = !{i32 1, !"wchar_size", i32 4}
!836 = !{i32 8, !"PIC Level", i32 2}
!837 = !{i32 7, !"PIE Level", i32 2}
!838 = !{i32 7, !"uwtable", i32 2}
!839 = !{i32 7, !"frame-pointer", i32 1}
!840 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!841 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 447, type: !842, scopeLine: 448, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !78}
!844 = !{!845}
!845 = !DILocalVariable(name: "status", arg: 1, scope: !841, file: !2, line: 447, type: !78)
!846 = !DILocation(line: 0, scope: !841)
!847 = !DILocation(line: 449, column: 14, scope: !848)
!848 = distinct !DILexicalBlock(scope: !841, file: !2, line: 449, column: 7)
!849 = !DILocation(line: 449, column: 7, scope: !841)
!850 = !DILocation(line: 450, column: 5, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !2, line: 450, column: 5)
!852 = !{!853, !853, i64 0}
!853 = !{!"any pointer", !854, i64 0}
!854 = !{!"omnipotent char", !855, i64 0}
!855 = !{!"Simple C/C++ TBAA"}
!856 = !DILocation(line: 453, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !848, file: !2, line: 452, column: 5)
!858 = !DILocation(line: 457, column: 7, scope: !857)
!859 = !DILocation(line: 729, column: 3, scope: !860, inlinedAt: !861)
!860 = distinct !DISubprogram(name: "emit_stdin_note", scope: !77, file: !77, line: 727, type: !496, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!861 = distinct !DILocation(line: 464, column: 7, scope: !857)
!862 = !DILocation(line: 736, column: 3, scope: !863, inlinedAt: !864)
!863 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !77, file: !77, line: 734, type: !496, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!864 = distinct !DILocation(line: 465, column: 7, scope: !857)
!865 = !DILocation(line: 467, column: 7, scope: !857)
!866 = !DILocation(line: 472, column: 7, scope: !857)
!867 = !DILocation(line: 478, column: 7, scope: !857)
!868 = !DILocation(line: 482, column: 7, scope: !857)
!869 = !DILocation(line: 483, column: 7, scope: !857)
!870 = !DILocalVariable(name: "program", arg: 1, scope: !871, file: !77, line: 836, type: !138)
!871 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !872, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !874)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !138}
!874 = !{!870, !875, !882, !883, !885, !886}
!875 = !DILocalVariable(name: "infomap", scope: !871, file: !77, line: 838, type: !876)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 896, elements: !300)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !871, file: !77, line: 838, size: 128, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !878, file: !77, line: 838, baseType: !138, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !878, file: !77, line: 838, baseType: !138, size: 64, offset: 64)
!882 = !DILocalVariable(name: "node", scope: !871, file: !77, line: 848, type: !138)
!883 = !DILocalVariable(name: "map_prog", scope: !871, file: !77, line: 849, type: !884)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!885 = !DILocalVariable(name: "lc_messages", scope: !871, file: !77, line: 861, type: !138)
!886 = !DILocalVariable(name: "url_program", scope: !871, file: !77, line: 874, type: !138)
!887 = !DILocation(line: 0, scope: !871, inlinedAt: !888)
!888 = distinct !DILocation(line: 485, column: 7, scope: !857)
!889 = !{}
!890 = !DILocation(line: 857, column: 3, scope: !871, inlinedAt: !888)
!891 = !DILocation(line: 861, column: 29, scope: !871, inlinedAt: !888)
!892 = !DILocation(line: 862, column: 7, scope: !893, inlinedAt: !888)
!893 = distinct !DILexicalBlock(scope: !871, file: !77, line: 862, column: 7)
!894 = !DILocation(line: 862, column: 19, scope: !893, inlinedAt: !888)
!895 = !DILocation(line: 862, column: 22, scope: !893, inlinedAt: !888)
!896 = !DILocation(line: 862, column: 7, scope: !871, inlinedAt: !888)
!897 = !DILocation(line: 868, column: 7, scope: !898, inlinedAt: !888)
!898 = distinct !DILexicalBlock(scope: !893, file: !77, line: 863, column: 5)
!899 = !DILocation(line: 870, column: 5, scope: !898, inlinedAt: !888)
!900 = !DILocation(line: 875, column: 3, scope: !871, inlinedAt: !888)
!901 = !DILocation(line: 877, column: 3, scope: !871, inlinedAt: !888)
!902 = !DILocation(line: 487, column: 3, scope: !841)
!903 = !DISubprogram(name: "dcgettext", scope: !904, file: !904, line: 51, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!905 = !DISubroutineType(types: !906)
!906 = !{!132, !138, !138, !78}
!907 = !DISubprogram(name: "__fprintf_chk", scope: !908, file: !908, line: 93, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!909 = !DISubroutineType(types: !910)
!910 = !{!78, !911, !78, !912, null}
!911 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !214)
!912 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!913 = !DISubprogram(name: "__printf_chk", scope: !908, file: !908, line: 95, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DISubroutineType(types: !915)
!915 = !{!78, !78, !912, null}
!916 = !DISubprogram(name: "fputs_unlocked", scope: !456, file: !456, line: 691, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DISubroutineType(types: !918)
!918 = !{!78, !912, !911}
!919 = !DILocation(line: 0, scope: !192)
!920 = !DILocation(line: 581, column: 7, scope: !200)
!921 = !{!922, !922, i64 0}
!922 = !{!"int", !854, i64 0}
!923 = !DILocation(line: 581, column: 19, scope: !200)
!924 = !DILocation(line: 581, column: 7, scope: !192)
!925 = !DILocation(line: 585, column: 26, scope: !199)
!926 = !DILocation(line: 0, scope: !199)
!927 = !DILocation(line: 586, column: 23, scope: !199)
!928 = !DILocation(line: 586, column: 28, scope: !199)
!929 = !DILocation(line: 586, column: 32, scope: !199)
!930 = !{!854, !854, i64 0}
!931 = !DILocation(line: 586, column: 38, scope: !199)
!932 = !DILocalVariable(name: "__s1", arg: 1, scope: !933, file: !934, line: 1359, type: !138)
!933 = distinct !DISubprogram(name: "streq", scope: !934, file: !934, line: 1359, type: !935, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !937)
!934 = !DIFile(filename: "./lib/string.h", directory: "/src")
!935 = !DISubroutineType(types: !936)
!936 = !{!172, !138, !138}
!937 = !{!932, !938}
!938 = !DILocalVariable(name: "__s2", arg: 2, scope: !933, file: !934, line: 1359, type: !138)
!939 = !DILocation(line: 0, scope: !933, inlinedAt: !940)
!940 = distinct !DILocation(line: 586, column: 41, scope: !199)
!941 = !DILocation(line: 1361, column: 11, scope: !933, inlinedAt: !940)
!942 = !DILocation(line: 1361, column: 10, scope: !933, inlinedAt: !940)
!943 = !DILocation(line: 586, column: 19, scope: !199)
!944 = !DILocation(line: 587, column: 5, scope: !199)
!945 = !DILocation(line: 588, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !192, file: !77, line: 588, column: 7)
!947 = !DILocation(line: 588, column: 7, scope: !192)
!948 = !DILocation(line: 590, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !77, line: 589, column: 5)
!950 = !DILocation(line: 591, column: 7, scope: !949)
!951 = !DILocation(line: 595, column: 37, scope: !192)
!952 = !DILocation(line: 595, column: 35, scope: !192)
!953 = !DILocation(line: 596, column: 29, scope: !192)
!954 = !DILocation(line: 597, column: 8, scope: !207)
!955 = !DILocation(line: 597, column: 7, scope: !192)
!956 = !DILocation(line: 604, column: 24, scope: !206)
!957 = !DILocation(line: 604, column: 12, scope: !207)
!958 = !DILocation(line: 0, scope: !205)
!959 = !DILocation(line: 610, column: 16, scope: !205)
!960 = !DILocation(line: 610, column: 7, scope: !205)
!961 = !DILocation(line: 611, column: 21, scope: !205)
!962 = !{!963, !963, i64 0}
!963 = !{!"short", !854, i64 0}
!964 = !DILocation(line: 611, column: 19, scope: !205)
!965 = !DILocation(line: 611, column: 16, scope: !205)
!966 = !DILocation(line: 610, column: 30, scope: !205)
!967 = distinct !{!967, !960, !961, !968}
!968 = !{!"llvm.loop.mustprogress"}
!969 = !DILocation(line: 612, column: 18, scope: !970)
!970 = distinct !DILexicalBlock(scope: !205, file: !77, line: 612, column: 11)
!971 = !DILocation(line: 612, column: 11, scope: !205)
!972 = !DILocation(line: 620, column: 23, scope: !192)
!973 = !DILocation(line: 625, column: 39, scope: !192)
!974 = !DILocation(line: 626, column: 3, scope: !192)
!975 = !DILocation(line: 626, column: 10, scope: !192)
!976 = !DILocation(line: 626, column: 21, scope: !192)
!977 = !DILocation(line: 628, column: 44, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !77, line: 628, column: 11)
!979 = distinct !DILexicalBlock(scope: !192, file: !77, line: 627, column: 5)
!980 = !DILocation(line: 628, column: 32, scope: !978)
!981 = !DILocation(line: 628, column: 49, scope: !978)
!982 = !DILocation(line: 628, column: 11, scope: !979)
!983 = !DILocation(line: 630, column: 11, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !77, line: 630, column: 11)
!985 = !DILocation(line: 630, column: 11, scope: !979)
!986 = !DILocation(line: 632, column: 26, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !77, line: 632, column: 15)
!988 = distinct !DILexicalBlock(scope: !984, file: !77, line: 631, column: 9)
!989 = !DILocation(line: 632, column: 34, scope: !987)
!990 = !DILocation(line: 632, column: 37, scope: !987)
!991 = !DILocation(line: 632, column: 15, scope: !988)
!992 = !DILocation(line: 640, column: 16, scope: !979)
!993 = distinct !{!993, !974, !994, !968}
!994 = !DILocation(line: 641, column: 5, scope: !192)
!995 = !DILocation(line: 644, column: 3, scope: !192)
!996 = !DILocation(line: 0, scope: !933, inlinedAt: !997)
!997 = distinct !DILocation(line: 648, column: 31, scope: !192)
!998 = !DILocation(line: 0, scope: !933, inlinedAt: !999)
!999 = distinct !DILocation(line: 649, column: 31, scope: !192)
!1000 = !DILocation(line: 0, scope: !933, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 650, column: 31, scope: !192)
!1002 = !DILocation(line: 0, scope: !933, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 651, column: 31, scope: !192)
!1004 = !DILocation(line: 0, scope: !933, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 652, column: 31, scope: !192)
!1006 = !DILocation(line: 0, scope: !933, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 653, column: 31, scope: !192)
!1008 = !DILocation(line: 0, scope: !933, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 654, column: 31, scope: !192)
!1010 = !DILocation(line: 0, scope: !933, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 655, column: 31, scope: !192)
!1012 = !DILocation(line: 0, scope: !933, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 656, column: 31, scope: !192)
!1014 = !DILocation(line: 0, scope: !933, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 657, column: 31, scope: !192)
!1016 = !DILocation(line: 663, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !192, file: !77, line: 663, column: 7)
!1018 = !DILocation(line: 664, column: 7, scope: !1017)
!1019 = !DILocation(line: 664, column: 10, scope: !1017)
!1020 = !DILocation(line: 663, column: 7, scope: !192)
!1021 = !DILocation(line: 669, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !77, line: 665, column: 5)
!1023 = !DILocation(line: 671, column: 5, scope: !1022)
!1024 = !DILocation(line: 676, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !77, line: 673, column: 5)
!1026 = !DILocation(line: 679, column: 3, scope: !192)
!1027 = !DILocation(line: 683, column: 3, scope: !192)
!1028 = !DILocation(line: 686, column: 3, scope: !192)
!1029 = !DILocation(line: 688, column: 3, scope: !192)
!1030 = !DILocation(line: 691, column: 3, scope: !192)
!1031 = !DILocation(line: 695, column: 3, scope: !192)
!1032 = !DILocation(line: 696, column: 1, scope: !192)
!1033 = !DISubprogram(name: "setlocale", scope: !1034, file: !1034, line: 122, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!132, !78, !138}
!1037 = !DISubprogram(name: "strncmp", scope: !1038, file: !1038, line: 159, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1038 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!78, !138, !138, !135}
!1041 = !DISubprogram(name: "exit", scope: !1042, file: !1042, line: 624, type: !842, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1042 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1043 = !DISubprogram(name: "getenv", scope: !1042, file: !1042, line: 641, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!132, !138}
!1046 = !DISubprogram(name: "strcmp", scope: !1038, file: !1038, line: 156, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!78, !138, !138}
!1049 = !DISubprogram(name: "strspn", scope: !1038, file: !1038, line: 297, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!137, !138, !138}
!1052 = !DISubprogram(name: "strchr", scope: !1038, file: !1038, line: 246, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!132, !138, !78}
!1055 = !DISubprogram(name: "__ctype_b_loc", scope: !98, file: !98, line: 79, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1061 = !DISubprogram(name: "strcspn", scope: !1038, file: !1038, line: 293, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1062 = !DISubprogram(name: "fwrite_unlocked", scope: !456, file: !456, line: 704, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!135, !1065, !135, !135, !911}
!1065 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1068 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 491, type: !1069, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1072)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!78, !78, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078}
!1073 = !DILocalVariable(name: "argc", arg: 1, scope: !1068, file: !2, line: 491, type: !78)
!1074 = !DILocalVariable(name: "argv", arg: 2, scope: !1068, file: !2, line: 491, type: !1071)
!1075 = !DILocalVariable(name: "optc", scope: !1068, file: !2, line: 493, type: !78)
!1076 = !DILocalVariable(name: "delim_arg", scope: !1068, file: !2, line: 494, type: !138)
!1077 = !DILocalVariable(name: "nfiles", scope: !1068, file: !2, line: 530, type: !78)
!1078 = !DILocalVariable(name: "ok", scope: !1068, file: !2, line: 546, type: !172)
!1079 = distinct !DIAssignID()
!1080 = distinct !DIAssignID()
!1081 = !DILocation(line: 0, scope: !1068)
!1082 = !DILocation(line: 497, column: 21, scope: !1068)
!1083 = !DILocation(line: 497, column: 3, scope: !1068)
!1084 = !DILocation(line: 498, column: 3, scope: !1068)
!1085 = !DILocation(line: 499, column: 3, scope: !1068)
!1086 = !DILocation(line: 500, column: 3, scope: !1068)
!1087 = !DILocation(line: 502, column: 3, scope: !1068)
!1088 = !DILocation(line: 504, column: 3, scope: !1068)
!1089 = !DILocation(line: 504, column: 18, scope: !1068)
!1090 = !DILocation(line: 510, column: 24, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 507, column: 9)
!1092 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 505, column: 5)
!1093 = !DILocation(line: 510, column: 34, scope: !1091)
!1094 = !DILocation(line: 511, column: 11, scope: !1091)
!1095 = distinct !{!1095, !1088, !1096, !968}
!1096 = !DILocation(line: 528, column: 5, scope: !1068)
!1097 = !DILocation(line: 514, column: 24, scope: !1091)
!1098 = !DILocation(line: 515, column: 11, scope: !1091)
!1099 = !DILocation(line: 518, column: 22, scope: !1091)
!1100 = !DILocation(line: 519, column: 11, scope: !1091)
!1101 = !DILocation(line: 521, column: 9, scope: !1091)
!1102 = !DILocation(line: 523, column: 9, scope: !1091)
!1103 = !DILocation(line: 526, column: 11, scope: !1091)
!1104 = !DILocation(line: 530, column: 23, scope: !1068)
!1105 = !DILocation(line: 530, column: 21, scope: !1068)
!1106 = !DILocation(line: 531, column: 14, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 531, column: 7)
!1108 = !DILocation(line: 531, column: 7, scope: !1068)
!1109 = !DILocation(line: 533, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 532, column: 5)
!1111 = !DILocation(line: 533, column: 20, scope: !1110)
!1112 = !DILocation(line: 535, column: 5, scope: !1110)
!1113 = !DILocalVariable(name: "strptr", arg: 1, scope: !1114, file: !2, line: 93, type: !138)
!1114 = distinct !DISubprogram(name: "collapse_escapes", scope: !2, file: !2, line: 93, type: !1115, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!78, !138}
!1117 = !{!1113, !1118, !1119, !1120, !1121, !1122, !1124}
!1118 = !DILocalVariable(name: "strout", scope: !1114, file: !2, line: 95, type: !132)
!1119 = !DILocalVariable(name: "backslash_at_end", scope: !1114, file: !2, line: 96, type: !172)
!1120 = !DILocalVariable(name: "s", scope: !1114, file: !2, line: 101, type: !138)
!1121 = !DILocalVariable(name: "idx", scope: !1114, file: !2, line: 102, type: !392)
!1122 = !DILabel(scope: !1123, name: "copy_character", file: !2, line: 141)
!1123 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 105, column: 5)
!1124 = !DILocalVariable(name: "g", scope: !1123, file: !2, line: 142, type: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !113, line: 143, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 138, size: 64, elements: !1127)
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !1126, file: !113, line: 140, baseType: !521, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1126, file: !113, line: 141, baseType: !140, size: 8, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1126, file: !113, line: 142, baseType: !140, size: 8, offset: 40)
!1131 = !DILocation(line: 0, scope: !1114, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 537, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 537, column: 7)
!1134 = !DILocation(line: 95, column: 18, scope: !1114, inlinedAt: !1132)
!1135 = !DILocation(line: 98, column: 10, scope: !1114, inlinedAt: !1132)
!1136 = !DILocation(line: 99, column: 26, scope: !1114, inlinedAt: !1132)
!1137 = !DILocation(line: 99, column: 16, scope: !1114, inlinedAt: !1132)
!1138 = !DILocation(line: 99, column: 14, scope: !1114, inlinedAt: !1132)
!1139 = !DILocation(line: 104, column: 10, scope: !1114, inlinedAt: !1132)
!1140 = !DILocation(line: 104, column: 3, scope: !1114, inlinedAt: !1132)
!1141 = !DILocation(line: 148, column: 11, scope: !1114, inlinedAt: !1132)
!1142 = !DILocation(line: 152, column: 21, scope: !1143, inlinedAt: !1132)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 151, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 150, column: 7)
!1145 = !{!1146, !1146, i64 0}
!1146 = !{!"long", !854, i64 0}
!1147 = !DILocation(line: 537, column: 7, scope: !1068)
!1148 = !DILocation(line: 106, column: 14, scope: !1149, inlinedAt: !1132)
!1149 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 106, column: 11)
!1150 = !DILocation(line: 106, column: 11, scope: !1123, inlinedAt: !1132)
!1151 = !DILocation(line: 108, column: 12, scope: !1152, inlinedAt: !1132)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 107, column: 9)
!1153 = !DILocation(line: 109, column: 15, scope: !1154, inlinedAt: !1132)
!1154 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 109, column: 15)
!1155 = !DILocation(line: 109, column: 15, scope: !1152, inlinedAt: !1132)
!1156 = !DILocation(line: 122, column: 15, scope: !1157, inlinedAt: !1132)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 121, column: 13)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 114, column: 20)
!1159 = !DILocation(line: 0, scope: !1160, inlinedAt: !1132)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 123, column: 17)
!1161 = !DILocation(line: 0, scope: !1158, inlinedAt: !1132)
!1162 = !DILocation(line: 138, column: 11, scope: !1152, inlinedAt: !1132)
!1163 = !DILocation(line: 0, scope: !1123, inlinedAt: !1132)
!1164 = distinct !{!1164, !1140, !1165, !968}
!1165 = !DILocation(line: 146, column: 5, scope: !1114, inlinedAt: !1132)
!1166 = !DILocation(line: 291, column: 21, scope: !1167, inlinedAt: !1177)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !113, line: 291, column: 7)
!1168 = distinct !DISubprogram(name: "mcel_scant", scope: !113, file: !113, line: 288, type: !1169, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!1125, !138, !4}
!1171 = !{!1172, !1173, !1174, !1175}
!1172 = !DILocalVariable(name: "p", arg: 1, scope: !1168, file: !113, line: 288, type: !138)
!1173 = !DILocalVariable(name: "terminator", arg: 2, scope: !1168, file: !113, line: 288, type: !4)
!1174 = !DILocalVariable(name: "lim", scope: !1168, file: !113, line: 296, type: !138)
!1175 = !DILocalVariable(name: "i", scope: !1176, file: !113, line: 297, type: !78)
!1176 = distinct !DILexicalBlock(scope: !1168, file: !113, line: 297, column: 3)
!1177 = distinct !DILocation(line: 309, column: 10, scope: !1178, inlinedAt: !1183)
!1178 = distinct !DISubprogram(name: "mcel_scanz", scope: !113, file: !113, line: 307, type: !1179, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1181)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1125, !138}
!1181 = !{!1182}
!1182 = !DILocalVariable(name: "p", arg: 1, scope: !1178, file: !113, line: 307, type: !138)
!1183 = distinct !DILocation(line: 142, column: 18, scope: !1123, inlinedAt: !1132)
!1184 = !DILocation(line: 141, column: 7, scope: !1123, inlinedAt: !1132)
!1185 = !DILocation(line: 0, scope: !1178, inlinedAt: !1183)
!1186 = !DILocation(line: 0, scope: !1168, inlinedAt: !1177)
!1187 = !DILocalVariable(name: "c", arg: 1, scope: !1188, file: !113, line: 215, type: !4)
!1188 = distinct !DISubprogram(name: "mcel_isbasic", scope: !113, file: !113, line: 215, type: !1189, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!172, !4}
!1191 = !{!1187}
!1192 = !DILocation(line: 0, scope: !1188, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 291, column: 7, scope: !1167, inlinedAt: !1177)
!1194 = !DILocation(line: 217, column: 10, scope: !1188, inlinedAt: !1193)
!1195 = !DILocation(line: 291, column: 7, scope: !1168, inlinedAt: !1177)
!1196 = !DILocation(line: 296, column: 23, scope: !1168, inlinedAt: !1177)
!1197 = !DILocation(line: 0, scope: !1176, inlinedAt: !1177)
!1198 = !DILocation(line: 298, column: 12, scope: !1199, inlinedAt: !1177)
!1199 = distinct !DILexicalBlock(scope: !1176, file: !113, line: 297, column: 3)
!1200 = !DILocation(line: 298, column: 17, scope: !1199, inlinedAt: !1177)
!1201 = !DILocation(line: 298, column: 9, scope: !1199, inlinedAt: !1177)
!1202 = !DILocalVariable(name: "mbs", scope: !1203, file: !113, line: 244, type: !1212)
!1203 = distinct !DISubprogram(name: "mcel_scan", scope: !113, file: !113, line: 230, type: !1204, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1125, !138, !138}
!1206 = !{!1207, !1208, !1209, !1202, !1210, !1211}
!1207 = !DILocalVariable(name: "p", arg: 1, scope: !1203, file: !113, line: 230, type: !138)
!1208 = !DILocalVariable(name: "lim", arg: 2, scope: !1203, file: !113, line: 230, type: !138)
!1209 = !DILocalVariable(name: "c", scope: !1203, file: !113, line: 235, type: !4)
!1210 = !DILocalVariable(name: "ch", scope: !1203, file: !113, line: 267, type: !521)
!1211 = !DILocalVariable(name: "len", scope: !1203, file: !113, line: 268, type: !135)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1214, file: !529, line: 15, baseType: !78, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1214, file: !529, line: 20, baseType: !1218, size: 32, offset: 32)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !529, line: 16, size: 32, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1218, file: !529, line: 18, baseType: !84, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1218, file: !529, line: 19, baseType: !278, size: 32)
!1222 = !DILocation(line: 0, scope: !1203, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 299, column: 10, scope: !1168, inlinedAt: !1177)
!1224 = !DILocation(line: 0, scope: !1188, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 236, column: 7, scope: !1226, inlinedAt: !1223)
!1226 = distinct !DILexicalBlock(scope: !1203, file: !113, line: 236, column: 7)
!1227 = !DILocation(line: 244, column: 3, scope: !1203, inlinedAt: !1223)
!1228 = !DILocation(line: 244, column: 30, scope: !1203, inlinedAt: !1223)
!1229 = !{!1230, !922, i64 0}
!1230 = !{!"", !922, i64 0, !854, i64 4}
!1231 = distinct !DIAssignID()
!1232 = !DILocation(line: 267, column: 3, scope: !1203, inlinedAt: !1223)
!1233 = !DILocation(line: 268, column: 38, scope: !1203, inlinedAt: !1223)
!1234 = !DILocation(line: 268, column: 16, scope: !1203, inlinedAt: !1223)
!1235 = !DILocation(line: 274, column: 7, scope: !1236, inlinedAt: !1223)
!1236 = distinct !DILexicalBlock(scope: !1203, file: !113, line: 274, column: 7)
!1237 = !DILocation(line: 274, column: 7, scope: !1203, inlinedAt: !1223)
!1238 = !{!"branch_weights", i32 1, i32 2000}
!1239 = !DILocation(line: 280, column: 1, scope: !1203, inlinedAt: !1223)
!1240 = !DILocalVariable(name: "__dest", arg: 1, scope: !1241, file: !1242, line: 42, type: !1245)
!1241 = distinct !DISubprogram(name: "mempcpy", scope: !1242, file: !1242, line: 42, type: !1243, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1246)
!1242 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!133, !1245, !1065, !135}
!1245 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!1246 = !{!1240, !1247, !1248}
!1247 = !DILocalVariable(name: "__src", arg: 2, scope: !1241, file: !1242, line: 42, type: !1065)
!1248 = !DILocalVariable(name: "__len", arg: 3, scope: !1241, file: !1242, line: 42, type: !135)
!1249 = !DILocation(line: 0, scope: !1241, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 143, column: 16, scope: !1123, inlinedAt: !1132)
!1251 = !DILocation(line: 45, column: 10, scope: !1241, inlinedAt: !1250)
!1252 = !DILocation(line: 144, column: 9, scope: !1123, inlinedAt: !1132)
!1253 = !DILocation(line: 145, column: 7, scope: !1123, inlinedAt: !1132)
!1254 = !DILocation(line: 145, column: 25, scope: !1123, inlinedAt: !1132)
!1255 = !DILocation(line: 150, column: 11, scope: !1144, inlinedAt: !1132)
!1256 = !DILocation(line: 150, column: 7, scope: !1114, inlinedAt: !1132)
!1257 = !DILocation(line: 156, column: 14, scope: !1114, inlinedAt: !1132)
!1258 = !DILocation(line: 541, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 538, column: 5)
!1260 = !DILocation(line: 546, column: 15, scope: !1068)
!1261 = !DILocation(line: 547, column: 15, scope: !1068)
!1262 = !DILocation(line: 547, column: 29, scope: !1068)
!1263 = !DILocation(line: 547, column: 24, scope: !1068)
!1264 = !DILocation(line: 546, column: 14, scope: !1068)
!1265 = !{ptr @paste_parallel, ptr @paste_serial}
!1266 = !DILocation(line: 549, column: 9, scope: !1068)
!1267 = !DILocation(line: 549, column: 3, scope: !1068)
!1268 = !DILocation(line: 550, column: 9, scope: !1068)
!1269 = !DILocation(line: 550, column: 3, scope: !1068)
!1270 = !DILocation(line: 552, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 552, column: 7)
!1272 = !DILocation(line: 552, column: 23, scope: !1271)
!1273 = !DILocation(line: 552, column: 34, scope: !1271)
!1274 = !DILocation(line: 552, column: 26, scope: !1271)
!1275 = !DILocation(line: 552, column: 41, scope: !1271)
!1276 = !DILocation(line: 552, column: 7, scope: !1068)
!1277 = !DILocation(line: 553, column: 5, scope: !1271)
!1278 = !DILocation(line: 554, column: 10, scope: !1068)
!1279 = !DILocation(line: 554, column: 3, scope: !1068)
!1280 = !DISubprogram(name: "bindtextdomain", scope: !904, file: !904, line: 86, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!132, !138, !138}
!1283 = !DISubprogram(name: "textdomain", scope: !904, file: !904, line: 82, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1284 = !DISubprogram(name: "atexit", scope: !1042, file: !1042, line: 602, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!78, !495}
!1287 = !DISubprogram(name: "getopt_long", scope: !410, file: !410, line: 66, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!78, !78, !1290, !138, !1292, !415}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1293 = !DISubprogram(name: "strlen", scope: !1038, file: !1038, line: 407, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!137, !138}
!1296 = !DISubprogram(name: "mbrtoc32", scope: !522, file: !522, line: 57, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!135, !1299, !912, !135, !1301}
!1299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1303 = distinct !DISubprogram(name: "paste_serial", scope: !2, file: !2, line: 364, type: !1304, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1306)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!172, !135, !1071}
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1317, !1318, !1319}
!1307 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1303, file: !2, line: 364, type: !135)
!1308 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1303, file: !2, line: 364, type: !1071)
!1309 = !DILocalVariable(name: "ok", scope: !1303, file: !2, line: 366, type: !172)
!1310 = !DILocalVariable(name: "charnew", scope: !1303, file: !2, line: 367, type: !78)
!1311 = !DILocalVariable(name: "charold", scope: !1303, file: !2, line: 367, type: !78)
!1312 = !DILocalVariable(name: "fileptr", scope: !1303, file: !2, line: 368, type: !214)
!1313 = !DILocalVariable(name: "saved_errno", scope: !1314, file: !2, line: 372, type: !78)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 371, column: 5)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 370, column: 3)
!1316 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 370, column: 3)
!1317 = !DILocalVariable(name: "is_stdin", scope: !1314, file: !2, line: 373, type: !172)
!1318 = !DILocalVariable(name: "delimidx", scope: !1314, file: !2, line: 391, type: !392)
!1319 = !DILocalVariable(name: "delimoff", scope: !1314, file: !2, line: 392, type: !392)
!1320 = !DILocation(line: 0, scope: !1303)
!1321 = !DILocation(line: 370, column: 3, scope: !1316)
!1322 = !DILocation(line: 373, column: 30, scope: !1314)
!1323 = !DILocation(line: 0, scope: !933, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 373, column: 23, scope: !1314)
!1325 = !DILocation(line: 1361, column: 11, scope: !933, inlinedAt: !1324)
!1326 = !DILocation(line: 1361, column: 10, scope: !933, inlinedAt: !1324)
!1327 = !DILocation(line: 0, scope: !1314)
!1328 = !DILocation(line: 374, column: 11, scope: !1314)
!1329 = !DILocation(line: 376, column: 27, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 375, column: 9)
!1331 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 374, column: 11)
!1332 = !DILocation(line: 377, column: 21, scope: !1330)
!1333 = !DILocation(line: 378, column: 9, scope: !1330)
!1334 = !DILocation(line: 381, column: 21, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 380, column: 9)
!1336 = !DILocation(line: 382, column: 23, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 382, column: 15)
!1338 = !DILocation(line: 382, column: 15, scope: !1335)
!1339 = !DILocation(line: 384, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 383, column: 13)
!1341 = !DILocation(line: 386, column: 15, scope: !1340)
!1342 = !DILocation(line: 388, column: 11, scope: !1335)
!1343 = !DILocation(line: 0, scope: !1331)
!1344 = !DILocalVariable(name: "__fp", arg: 1, scope: !1345, file: !1346, line: 66, type: !214)
!1345 = distinct !DISubprogram(name: "getc_unlocked", scope: !1346, file: !1346, line: 66, type: !1347, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1349)
!1346 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!78, !214}
!1349 = !{!1344}
!1350 = !DILocation(line: 0, scope: !1345, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 394, column: 17, scope: !1314)
!1352 = !DILocation(line: 68, column: 10, scope: !1345, inlinedAt: !1351)
!1353 = !{!1354, !853, i64 8}
!1354 = !{!"_IO_FILE", !922, i64 0, !853, i64 8, !853, i64 16, !853, i64 24, !853, i64 32, !853, i64 40, !853, i64 48, !853, i64 56, !853, i64 64, !853, i64 72, !853, i64 80, !853, i64 88, !853, i64 96, !853, i64 104, !922, i64 112, !922, i64 116, !1146, i64 120, !963, i64 128, !854, i64 130, !854, i64 131, !853, i64 136, !1146, i64 144, !853, i64 152, !853, i64 160, !853, i64 168, !853, i64 176, !1146, i64 184, !922, i64 192, !854, i64 196}
!1355 = !{!1354, !853, i64 16}
!1356 = !{!"branch_weights", i32 2000, i32 1}
!1357 = !DILocation(line: 395, column: 21, scope: !1314)
!1358 = !DILocation(line: 396, column: 11, scope: !1314)
!1359 = !DILocation(line: 396, column: 19, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 396, column: 11)
!1361 = !DILocation(line: 404, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 397, column: 9)
!1363 = !DILocation(line: 428, column: 22, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 428, column: 11)
!1365 = !DILocation(line: 428, column: 11, scope: !1314)
!1366 = !DILocation(line: 0, scope: !1345, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 404, column: 29, scope: !1362)
!1368 = !DILocation(line: 68, column: 10, scope: !1345, inlinedAt: !1367)
!1369 = !DILocation(line: 404, column: 45, scope: !1362)
!1370 = !DILocation(line: 407, column: 30, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 407, column: 19)
!1372 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 405, column: 13)
!1373 = !DILocation(line: 407, column: 27, scope: !1371)
!1374 = !DILocation(line: 407, column: 19, scope: !1372)
!1375 = !DILocation(line: 409, column: 52, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 408, column: 17)
!1377 = !DILocalVariable(name: "delimptr", arg: 1, scope: !1378, file: !2, line: 174, type: !138)
!1378 = distinct !DISubprogram(name: "output_delim", scope: !2, file: !2, line: 174, type: !1379, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !138, !135}
!1381 = !{!1377, !1382, !1383, !1386, !1387}
!1382 = !DILocalVariable(name: "len", arg: 2, scope: !1378, file: !2, line: 174, type: !135)
!1383 = !DILocalVariable(name: "__ptr", scope: !1384, file: !2, line: 176, type: !138)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 176, column: 18)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 176, column: 7)
!1386 = !DILocalVariable(name: "__stream", scope: !1384, file: !2, line: 176, type: !214)
!1387 = !DILocalVariable(name: "__cnt", scope: !1384, file: !2, line: 176, type: !135)
!1388 = !DILocation(line: 0, scope: !1378, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 409, column: 19, scope: !1376)
!1390 = !DILocation(line: 176, column: 11, scope: !1385, inlinedAt: !1389)
!1391 = !DILocation(line: 176, column: 15, scope: !1385, inlinedAt: !1389)
!1392 = !DILocation(line: 409, column: 33, scope: !1376)
!1393 = !DILocation(line: 409, column: 40, scope: !1376)
!1394 = !DILocation(line: 176, column: 18, scope: !1385, inlinedAt: !1389)
!1395 = !DILocation(line: 176, column: 52, scope: !1385, inlinedAt: !1389)
!1396 = !DILocation(line: 176, column: 7, scope: !1378, inlinedAt: !1389)
!1397 = !DILocation(line: 410, column: 31, scope: !1376)
!1398 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1402)
!1399 = distinct !DISubprogram(name: "write_error", scope: !77, file: !77, line: 946, type: !496, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1400)
!1400 = !{!1401}
!1401 = !DILocalVariable(name: "saved_errno", scope: !1399, file: !77, line: 948, type: !78)
!1402 = distinct !DILocation(line: 177, column: 5, scope: !1385, inlinedAt: !1389)
!1403 = !DILocation(line: 0, scope: !1399, inlinedAt: !1402)
!1404 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1402)
!1405 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1402)
!1406 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1402)
!1407 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1402)
!1408 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1402)
!1409 = !DILocation(line: 410, column: 28, scope: !1376)
!1410 = !DILocation(line: 411, column: 23, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 411, column: 23)
!1412 = !DILocation(line: 411, column: 37, scope: !1411)
!1413 = !DILocation(line: 411, column: 34, scope: !1411)
!1414 = !DILocation(line: 411, column: 23, scope: !1376)
!1415 = distinct !{!1415, !1361, !1416, !968}
!1416 = !DILocation(line: 421, column: 13, scope: !1362)
!1417 = !DILocalVariable(name: "c", arg: 1, scope: !1418, file: !2, line: 164, type: !4)
!1418 = distinct !DISubprogram(name: "xputchar", scope: !2, file: !2, line: 164, type: !1419, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !4}
!1421 = !{!1417}
!1422 = !DILocation(line: 0, scope: !1418, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 418, column: 17, scope: !1371)
!1424 = !DILocalVariable(name: "__c", arg: 1, scope: !1425, file: !1346, line: 108, type: !78)
!1425 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1346, file: !1346, line: 108, type: !1426, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!78, !78}
!1428 = !{!1424}
!1429 = !DILocation(line: 0, scope: !1425, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1423)
!1431 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 166, column: 7)
!1432 = !DILocation(line: 110, column: 10, scope: !1425, inlinedAt: !1430)
!1433 = !{!1354, !853, i64 40}
!1434 = !{!1354, !853, i64 48}
!1435 = !DILocation(line: 418, column: 27, scope: !1371)
!1436 = !DILocation(line: 166, column: 7, scope: !1418, inlinedAt: !1423)
!1437 = !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1423)
!1438 = !DILocation(line: 166, column: 19, scope: !1431, inlinedAt: !1423)
!1439 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 167, column: 5, scope: !1431, inlinedAt: !1423)
!1441 = !DILocation(line: 0, scope: !1399, inlinedAt: !1440)
!1442 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1440)
!1443 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1440)
!1444 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1440)
!1445 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1440)
!1446 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1440)
!1447 = !DILocation(line: 422, column: 25, scope: !1362)
!1448 = !DILocation(line: 0, scope: !1418, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 425, column: 11, scope: !1362)
!1450 = !DILocation(line: 0, scope: !1425, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1449)
!1452 = !DILocation(line: 110, column: 10, scope: !1425, inlinedAt: !1451)
!1453 = !DILocation(line: 425, column: 21, scope: !1362)
!1454 = !DILocation(line: 166, column: 7, scope: !1418, inlinedAt: !1449)
!1455 = !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1449)
!1456 = !DILocation(line: 166, column: 19, scope: !1431, inlinedAt: !1449)
!1457 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 167, column: 5, scope: !1431, inlinedAt: !1449)
!1459 = !DILocation(line: 0, scope: !1399, inlinedAt: !1458)
!1460 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1458)
!1461 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1458)
!1462 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1458)
!1463 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1458)
!1464 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1458)
!1465 = !DILocation(line: 428, column: 19, scope: !1364)
!1466 = !DILocation(line: 0, scope: !1418, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 429, column: 9, scope: !1364)
!1468 = !DILocation(line: 0, scope: !1425, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1467)
!1470 = !DILocation(line: 110, column: 10, scope: !1425, inlinedAt: !1469)
!1471 = !DILocation(line: 166, column: 7, scope: !1418, inlinedAt: !1467)
!1472 = !DILocation(line: 166, column: 19, scope: !1431, inlinedAt: !1467)
!1473 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 167, column: 5, scope: !1431, inlinedAt: !1467)
!1475 = !DILocation(line: 0, scope: !1399, inlinedAt: !1474)
!1476 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1474)
!1477 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1474)
!1478 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1474)
!1479 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1474)
!1480 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1474)
!1481 = !DILocalVariable(name: "__stream", arg: 1, scope: !1482, file: !1346, line: 135, type: !214)
!1482 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1346, file: !1346, line: 135, type: !1347, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1483)
!1483 = !{!1481}
!1484 = !DILocation(line: 0, scope: !1482, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 431, column: 12, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 431, column: 11)
!1487 = !DILocation(line: 137, column: 10, scope: !1482, inlinedAt: !1485)
!1488 = !{!1354, !922, i64 0}
!1489 = !DILocation(line: 431, column: 12, scope: !1486)
!1490 = !DILocation(line: 431, column: 11, scope: !1314)
!1491 = !DILocation(line: 433, column: 11, scope: !1314)
!1492 = !DILocation(line: 434, column: 9, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 433, column: 11)
!1494 = !DILocation(line: 435, column: 16, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 435, column: 16)
!1496 = !DILocation(line: 435, column: 33, scope: !1495)
!1497 = !DILocation(line: 435, column: 38, scope: !1495)
!1498 = !DILocation(line: 436, column: 23, scope: !1495)
!1499 = !DILocation(line: 436, column: 9, scope: !1495)
!1500 = !DILocation(line: 437, column: 11, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 437, column: 11)
!1502 = !DILocation(line: 437, column: 11, scope: !1314)
!1503 = !DILocation(line: 370, column: 24, scope: !1315)
!1504 = !DILocation(line: 370, column: 35, scope: !1315)
!1505 = distinct !{!1505, !1321, !1506, !968}
!1506 = !DILocation(line: 442, column: 5, scope: !1316)
!1507 = !DILocation(line: 443, column: 3, scope: !1303)
!1508 = distinct !DISubprogram(name: "paste_parallel", scope: !2, file: !2, line: 185, type: !1304, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1516, !1517, !1518, !1520, !1521, !1522, !1523, !1525, !1528, !1529, !1530, !1537, !1538, !1539, !1550, !1551, !1552, !1554}
!1510 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1508, file: !2, line: 185, type: !135)
!1511 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1508, file: !2, line: 185, type: !1071)
!1512 = !DILocalVariable(name: "ok", scope: !1508, file: !2, line: 187, type: !172)
!1513 = !DILocalVariable(name: "delbuf", scope: !1508, file: !2, line: 192, type: !132)
!1514 = !DILocalVariable(name: "fileptr", scope: !1508, file: !2, line: 196, type: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1516 = !DILocalVariable(name: "files_open", scope: !1508, file: !2, line: 199, type: !135)
!1517 = !DILocalVariable(name: "opened_stdin", scope: !1508, file: !2, line: 202, type: !172)
!1518 = !DILocalVariable(name: "somedone", scope: !1519, file: !2, line: 236, type: !172)
!1519 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 234, column: 5)
!1520 = !DILocalVariable(name: "delimidx", scope: !1519, file: !2, line: 237, type: !392)
!1521 = !DILocalVariable(name: "delimoff", scope: !1519, file: !2, line: 238, type: !392)
!1522 = !DILocalVariable(name: "delims_saved", scope: !1519, file: !2, line: 239, type: !392)
!1523 = !DILocalVariable(name: "i", scope: !1524, file: !2, line: 241, type: !135)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 241, column: 7)
!1525 = !DILocalVariable(name: "chr", scope: !1526, file: !2, line: 243, type: !78)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 242, column: 9)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 241, column: 7)
!1528 = !DILocalVariable(name: "err", scope: !1526, file: !2, line: 244, type: !78)
!1529 = !DILocalVariable(name: "sometodo", scope: !1526, file: !2, line: 245, type: !172)
!1530 = !DILocalVariable(name: "__ptr", scope: !1531, file: !2, line: 253, type: !138)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 253, column: 23)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 253, column: 23)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 252, column: 17)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 251, column: 19)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 248, column: 13)
!1536 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 247, column: 15)
!1537 = !DILocalVariable(name: "__stream", scope: !1531, file: !2, line: 253, type: !214)
!1538 = !DILocalVariable(name: "__cnt", scope: !1531, file: !2, line: 253, type: !135)
!1539 = !DILocalVariable(name: "__ptr", scope: !1540, file: !2, line: 300, type: !138)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 300, column: 31)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 300, column: 31)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !2, line: 299, column: 25)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 298, column: 27)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 296, column: 21)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 295, column: 23)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 292, column: 17)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 291, column: 19)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 270, column: 13)
!1549 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 269, column: 15)
!1550 = !DILocalVariable(name: "__stream", scope: !1540, file: !2, line: 300, type: !214)
!1551 = !DILocalVariable(name: "__cnt", scope: !1540, file: !2, line: 300, type: !135)
!1552 = !DILocalVariable(name: "len", scope: !1553, file: !2, line: 312, type: !135)
!1553 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 310, column: 17)
!1554 = !DILocalVariable(name: "c", scope: !1555, file: !2, line: 348, type: !4)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 345, column: 17)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 332, column: 19)
!1557 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 327, column: 13)
!1558 = !DILocation(line: 0, scope: !1508)
!1559 = !DILocation(line: 192, column: 35, scope: !1508)
!1560 = !DILocation(line: 192, column: 42, scope: !1508)
!1561 = !DILocation(line: 192, column: 40, scope: !1508)
!1562 = !DILocation(line: 192, column: 53, scope: !1508)
!1563 = !DILocation(line: 192, column: 18, scope: !1508)
!1564 = !DILocation(line: 196, column: 37, scope: !1508)
!1565 = !DILocation(line: 196, column: 20, scope: !1508)
!1566 = !DILocation(line: 208, column: 35, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 208, column: 3)
!1568 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 208, column: 3)
!1569 = !DILocation(line: 208, column: 3, scope: !1568)
!1570 = !DILocation(line: 210, column: 18, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !2, line: 210, column: 11)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 209, column: 5)
!1573 = !DILocation(line: 0, scope: !933, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 210, column: 11, scope: !1571)
!1575 = !DILocation(line: 1361, column: 11, scope: !933, inlinedAt: !1574)
!1576 = !DILocation(line: 1361, column: 10, scope: !933, inlinedAt: !1574)
!1577 = !DILocation(line: 210, column: 11, scope: !1572)
!1578 = !DILocation(line: 212, column: 27, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 211, column: 9)
!1580 = !DILocation(line: 213, column: 33, scope: !1579)
!1581 = !DILocation(line: 213, column: 11, scope: !1579)
!1582 = !DILocation(line: 213, column: 31, scope: !1579)
!1583 = !DILocation(line: 214, column: 9, scope: !1579)
!1584 = !DILocation(line: 217, column: 33, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 216, column: 9)
!1586 = !DILocation(line: 217, column: 11, scope: !1585)
!1587 = !DILocation(line: 217, column: 31, scope: !1585)
!1588 = !DILocation(line: 218, column: 35, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 218, column: 15)
!1590 = !DILocation(line: 218, column: 15, scope: !1585)
!1591 = !DILocation(line: 219, column: 13, scope: !1589)
!1592 = !DILocation(line: 220, column: 20, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 220, column: 20)
!1594 = !DILocation(line: 220, column: 49, scope: !1593)
!1595 = !DILocation(line: 220, column: 20, scope: !1589)
!1596 = !DILocation(line: 222, column: 11, scope: !1585)
!1597 = !DILocation(line: 208, column: 45, scope: !1567)
!1598 = distinct !{!1598, !1569, !1599, !968}
!1599 = !DILocation(line: 224, column: 5, scope: !1568)
!1600 = !DILocation(line: 226, column: 20, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 226, column: 7)
!1602 = !DILocation(line: 233, column: 3, scope: !1508)
!1603 = !DILocation(line: 226, column: 23, scope: !1601)
!1604 = !DILocation(line: 226, column: 7, scope: !1508)
!1605 = !DILocation(line: 227, column: 5, scope: !1601)
!1606 = !DILocation(line: 208, column: 19, scope: !1568)
!1607 = !DILocation(line: 0, scope: !1526)
!1608 = distinct !{!1608, !1602, !1609, !968}
!1609 = !DILocation(line: 353, column: 5, scope: !1508)
!1610 = !DILocation(line: 0, scope: !1519)
!1611 = !DILocation(line: 0, scope: !1524)
!1612 = !DILocation(line: 241, column: 7, scope: !1524)
!1613 = !DILocation(line: 247, column: 15, scope: !1536)
!1614 = !DILocation(line: 247, column: 15, scope: !1526)
!1615 = !DILocation(line: 0, scope: !1345, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 249, column: 21, scope: !1535)
!1617 = !DILocation(line: 68, column: 10, scope: !1345, inlinedAt: !1616)
!1618 = !DILocation(line: 250, column: 21, scope: !1535)
!1619 = !DILocation(line: 251, column: 23, scope: !1534)
!1620 = !DILocation(line: 251, column: 30, scope: !1534)
!1621 = !DILocation(line: 253, column: 23, scope: !1532)
!1622 = !DILocation(line: 253, column: 64, scope: !1532)
!1623 = !DILocation(line: 253, column: 23, scope: !1533)
!1624 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 254, column: 21, scope: !1532)
!1626 = !DILocation(line: 0, scope: !1399, inlinedAt: !1625)
!1627 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1625)
!1628 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1625)
!1629 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1625)
!1630 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1625)
!1631 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1625)
!1632 = !DILocation(line: 258, column: 26, scope: !1535)
!1633 = !DILocation(line: 258, column: 15, scope: !1535)
!1634 = !DILocation(line: 261, column: 30, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 261, column: 23)
!1636 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 259, column: 17)
!1637 = !DILocation(line: 261, column: 27, scope: !1635)
!1638 = !DILocation(line: 261, column: 23, scope: !1636)
!1639 = !DILocation(line: 0, scope: !1418, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 263, column: 19, scope: !1636)
!1641 = !DILocation(line: 0, scope: !1425, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1640)
!1643 = !DILocation(line: 110, column: 10, scope: !1425, inlinedAt: !1642)
!1644 = !DILocation(line: 263, column: 29, scope: !1636)
!1645 = !DILocation(line: 166, column: 7, scope: !1418, inlinedAt: !1640)
!1646 = !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1640)
!1647 = !DILocation(line: 166, column: 19, scope: !1431, inlinedAt: !1640)
!1648 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 167, column: 5, scope: !1431, inlinedAt: !1640)
!1650 = !DILocation(line: 0, scope: !1399, inlinedAt: !1649)
!1651 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1649)
!1652 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1649)
!1653 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1649)
!1654 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1649)
!1655 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1649)
!1656 = !DILocation(line: 0, scope: !1345, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 264, column: 25, scope: !1636)
!1658 = !DILocation(line: 68, column: 10, scope: !1345, inlinedAt: !1657)
!1659 = distinct !{!1659, !1633, !1660, !968}
!1660 = !DILocation(line: 266, column: 17, scope: !1535)
!1661 = !DILocation(line: 265, column: 25, scope: !1636)
!1662 = !DILocation(line: 269, column: 15, scope: !1526)
!1663 = !DILocation(line: 0, scope: !1482, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 275, column: 24, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 275, column: 23)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 274, column: 17)
!1667 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 273, column: 19)
!1668 = !DILocation(line: 137, column: 10, scope: !1482, inlinedAt: !1664)
!1669 = !DILocation(line: 275, column: 24, scope: !1665)
!1670 = !DILocation(line: 275, column: 23, scope: !1666)
!1671 = !DILocation(line: 277, column: 37, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 277, column: 23)
!1673 = !DILocation(line: 277, column: 34, scope: !1672)
!1674 = !DILocation(line: 277, column: 23, scope: !1666)
!1675 = !DILocation(line: 278, column: 21, scope: !1672)
!1676 = !DILocation(line: 279, column: 28, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 279, column: 28)
!1678 = !DILocation(line: 279, column: 48, scope: !1677)
!1679 = !DILocation(line: 279, column: 55, scope: !1677)
!1680 = !DILocation(line: 280, column: 27, scope: !1677)
!1681 = !DILocation(line: 280, column: 21, scope: !1677)
!1682 = !DILocation(line: 281, column: 23, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 281, column: 23)
!1684 = !DILocation(line: 281, column: 23, scope: !1666)
!1685 = !DILocation(line: 283, column: 23, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 282, column: 21)
!1687 = !DILocation(line: 285, column: 21, scope: !1686)
!1688 = !DILocation(line: 287, column: 30, scope: !1666)
!1689 = !DILocation(line: 288, column: 29, scope: !1666)
!1690 = !DILocation(line: 289, column: 17, scope: !1666)
!1691 = !DILocation(line: 291, column: 21, scope: !1547)
!1692 = !DILocation(line: 291, column: 25, scope: !1547)
!1693 = !DILocation(line: 291, column: 19, scope: !1548)
!1694 = !DILocation(line: 295, column: 23, scope: !1546)
!1695 = !DILocation(line: 298, column: 27, scope: !1543)
!1696 = !DILocation(line: 298, column: 27, scope: !1544)
!1697 = !DILocation(line: 300, column: 31, scope: !1541)
!1698 = !DILocation(line: 301, column: 31, scope: !1541)
!1699 = !DILocation(line: 300, column: 31, scope: !1542)
!1700 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 302, column: 29, scope: !1541)
!1702 = !DILocation(line: 0, scope: !1399, inlinedAt: !1701)
!1703 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1701)
!1704 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1701)
!1705 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1701)
!1706 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1701)
!1707 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1701)
!1708 = !DILocation(line: 305, column: 33, scope: !1544)
!1709 = !DILocation(line: 0, scope: !1418, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 305, column: 23, scope: !1544)
!1711 = !DILocation(line: 0, scope: !1425, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1710)
!1713 = !DILocation(line: 110, column: 10, scope: !1425, inlinedAt: !1712)
!1714 = !DILocation(line: 166, column: 7, scope: !1418, inlinedAt: !1710)
!1715 = !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1710)
!1716 = !DILocation(line: 166, column: 19, scope: !1431, inlinedAt: !1710)
!1717 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 167, column: 5, scope: !1431, inlinedAt: !1710)
!1719 = !DILocation(line: 0, scope: !1399, inlinedAt: !1718)
!1720 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1718)
!1721 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1718)
!1722 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1718)
!1723 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1718)
!1724 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1718)
!1725 = !DILocation(line: 312, column: 32, scope: !1553)
!1726 = !DILocation(line: 0, scope: !1553)
!1727 = !DILocation(line: 313, column: 27, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 313, column: 23)
!1729 = !DILocation(line: 313, column: 23, scope: !1553)
!1730 = !DILocation(line: 315, column: 38, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 314, column: 21)
!1732 = !DILocation(line: 315, column: 54, scope: !1731)
!1733 = !DILocation(line: 315, column: 61, scope: !1731)
!1734 = !DILocalVariable(name: "__dest", arg: 1, scope: !1735, file: !1242, line: 26, type: !1245)
!1735 = distinct !DISubprogram(name: "memcpy", scope: !1242, file: !1242, line: 26, type: !1243, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1736)
!1736 = !{!1734, !1737, !1738}
!1737 = !DILocalVariable(name: "__src", arg: 2, scope: !1735, file: !1242, line: 26, type: !1065)
!1738 = !DILocalVariable(name: "__len", arg: 3, scope: !1735, file: !1242, line: 26, type: !135)
!1739 = !DILocation(line: 0, scope: !1735, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 315, column: 23, scope: !1731)
!1741 = !DILocation(line: 29, column: 10, scope: !1735, inlinedAt: !1740)
!1742 = !DILocation(line: 316, column: 36, scope: !1731)
!1743 = !DILocation(line: 317, column: 21, scope: !1731)
!1744 = !DILocation(line: 318, column: 28, scope: !1553)
!1745 = !DILocation(line: 319, column: 23, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 319, column: 23)
!1747 = !DILocation(line: 319, column: 37, scope: !1746)
!1748 = !DILocation(line: 319, column: 34, scope: !1746)
!1749 = !DILocation(line: 319, column: 23, scope: !1553)
!1750 = !DILocation(line: 325, column: 13, scope: !1548)
!1751 = !DILocation(line: 332, column: 21, scope: !1556)
!1752 = !DILocation(line: 332, column: 25, scope: !1556)
!1753 = !DILocation(line: 332, column: 19, scope: !1557)
!1754 = !DILocation(line: 334, column: 30, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 334, column: 23)
!1756 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 333, column: 17)
!1757 = !DILocation(line: 334, column: 27, scope: !1755)
!1758 = !DILocation(line: 334, column: 41, scope: !1755)
!1759 = !DILocation(line: 0, scope: !1418, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 335, column: 21, scope: !1755)
!1761 = !DILocation(line: 0, scope: !1425, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1760)
!1763 = !DILocation(line: 110, column: 10, scope: !1425, inlinedAt: !1762)
!1764 = !DILocation(line: 335, column: 31, scope: !1755)
!1765 = !DILocation(line: 166, column: 7, scope: !1418, inlinedAt: !1760)
!1766 = !DILocation(line: 166, column: 19, scope: !1431, inlinedAt: !1760)
!1767 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 167, column: 5, scope: !1431, inlinedAt: !1760)
!1769 = !DILocation(line: 0, scope: !1399, inlinedAt: !1768)
!1770 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1768)
!1771 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1768)
!1772 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1768)
!1773 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1768)
!1774 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1768)
!1775 = !DILocation(line: 336, column: 52, scope: !1756)
!1776 = !DILocation(line: 0, scope: !1378, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 336, column: 19, scope: !1756)
!1778 = !DILocation(line: 176, column: 11, scope: !1385, inlinedAt: !1777)
!1779 = !DILocation(line: 176, column: 15, scope: !1385, inlinedAt: !1777)
!1780 = !DILocation(line: 336, column: 33, scope: !1756)
!1781 = !DILocation(line: 336, column: 40, scope: !1756)
!1782 = !DILocation(line: 176, column: 18, scope: !1385, inlinedAt: !1777)
!1783 = !DILocation(line: 176, column: 52, scope: !1385, inlinedAt: !1777)
!1784 = !DILocation(line: 176, column: 7, scope: !1378, inlinedAt: !1777)
!1785 = !DILocation(line: 337, column: 31, scope: !1756)
!1786 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 177, column: 5, scope: !1385, inlinedAt: !1777)
!1788 = !DILocation(line: 0, scope: !1399, inlinedAt: !1787)
!1789 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1787)
!1790 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1787)
!1791 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1787)
!1792 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1787)
!1793 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1787)
!1794 = !DILocation(line: 337, column: 28, scope: !1756)
!1795 = !DILocation(line: 338, column: 23, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 338, column: 23)
!1797 = !DILocation(line: 338, column: 37, scope: !1796)
!1798 = !DILocation(line: 338, column: 34, scope: !1796)
!1799 = !DILocation(line: 338, column: 23, scope: !1756)
!1800 = !DILocation(line: 348, column: 33, scope: !1555)
!1801 = !DILocation(line: 348, column: 29, scope: !1555)
!1802 = !DILocation(line: 0, scope: !1555)
!1803 = !DILocation(line: 0, scope: !1418, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 349, column: 19, scope: !1555)
!1805 = !DILocation(line: 0, scope: !1425, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1804)
!1807 = !DILocation(line: 110, column: 10, scope: !1425, inlinedAt: !1806)
!1808 = !DILocation(line: 348, column: 28, scope: !1555)
!1809 = !DILocation(line: 166, column: 7, scope: !1418, inlinedAt: !1804)
!1810 = !DILocation(line: 166, column: 7, scope: !1431, inlinedAt: !1804)
!1811 = !DILocation(line: 166, column: 19, scope: !1431, inlinedAt: !1804)
!1812 = !DILocation(line: 948, column: 21, scope: !1399, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 167, column: 5, scope: !1431, inlinedAt: !1804)
!1814 = !DILocation(line: 0, scope: !1399, inlinedAt: !1813)
!1815 = !DILocation(line: 949, column: 3, scope: !1399, inlinedAt: !1813)
!1816 = !DILocation(line: 950, column: 11, scope: !1399, inlinedAt: !1813)
!1817 = !DILocation(line: 950, column: 3, scope: !1399, inlinedAt: !1813)
!1818 = !DILocation(line: 951, column: 3, scope: !1399, inlinedAt: !1813)
!1819 = !DILocation(line: 952, column: 3, scope: !1399, inlinedAt: !1813)
!1820 = !DILocation(line: 241, column: 53, scope: !1527)
!1821 = !DILocation(line: 241, column: 28, scope: !1527)
!1822 = !DILocation(line: 241, column: 37, scope: !1527)
!1823 = distinct !{!1823, !1612, !1824, !968}
!1824 = !DILocation(line: 352, column: 9, scope: !1524)
!1825 = !DILocation(line: 354, column: 3, scope: !1508)
!1826 = !DILocation(line: 355, column: 3, scope: !1508)
!1827 = !DILocation(line: 356, column: 3, scope: !1508)
!1828 = !DISubprogram(name: "free", scope: !1042, file: !1042, line: 555, type: !1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !133}
!1831 = !DISubprogram(name: "__errno_location", scope: !1832, file: !1832, line: 37, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1832 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!415}
!1835 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1042, file: !1042, line: 98, type: !1836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!135}
!1838 = !DISubprogram(name: "fileno_unlocked", scope: !456, file: !456, line: 814, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1839 = !DISubprogram(name: "__uflow", scope: !456, file: !456, line: 885, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1840 = !DISubprogram(name: "fflush_unlocked", scope: !456, file: !456, line: 239, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1841 = !DISubprogram(name: "clearerr_unlocked", scope: !456, file: !456, line: 794, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !214}
!1844 = !DISubprogram(name: "__overflow", scope: !456, file: !456, line: 886, type: !1845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!78, !214, !78}
!1847 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !430, file: !430, line: 50, type: !872, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1848)
!1848 = !{!1849}
!1849 = !DILocalVariable(name: "file", arg: 1, scope: !1847, file: !430, line: 50, type: !138)
!1850 = !DILocation(line: 0, scope: !1847)
!1851 = !DILocation(line: 52, column: 13, scope: !1847)
!1852 = !DILocation(line: 53, column: 1, scope: !1847)
!1853 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !430, file: !430, line: 87, type: !1854, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !172}
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "ignore", arg: 1, scope: !1853, file: !430, line: 87, type: !172)
!1858 = !DILocation(line: 0, scope: !1853)
!1859 = !DILocation(line: 89, column: 16, scope: !1853)
!1860 = !{!1861, !1861, i64 0}
!1861 = !{!"_Bool", !854, i64 0}
!1862 = !DILocation(line: 90, column: 1, scope: !1853)
!1863 = distinct !DISubprogram(name: "close_stdout", scope: !430, file: !430, line: 116, type: !496, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1864)
!1864 = !{!1865}
!1865 = !DILocalVariable(name: "write_error", scope: !1866, file: !430, line: 121, type: !138)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !430, line: 120, column: 5)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !430, line: 118, column: 7)
!1868 = !DILocation(line: 118, column: 21, scope: !1867)
!1869 = !DILocation(line: 118, column: 7, scope: !1867)
!1870 = !DILocation(line: 118, column: 29, scope: !1867)
!1871 = !DILocation(line: 119, column: 7, scope: !1867)
!1872 = !DILocation(line: 119, column: 12, scope: !1867)
!1873 = !{i8 0, i8 2}
!1874 = !DILocation(line: 119, column: 25, scope: !1867)
!1875 = !DILocation(line: 119, column: 28, scope: !1867)
!1876 = !DILocation(line: 119, column: 34, scope: !1867)
!1877 = !DILocation(line: 118, column: 7, scope: !1863)
!1878 = !DILocation(line: 121, column: 33, scope: !1866)
!1879 = !DILocation(line: 0, scope: !1866)
!1880 = !DILocation(line: 122, column: 11, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1866, file: !430, line: 122, column: 11)
!1882 = !DILocation(line: 0, scope: !1881)
!1883 = !DILocation(line: 122, column: 11, scope: !1866)
!1884 = !DILocation(line: 123, column: 9, scope: !1881)
!1885 = !DILocation(line: 126, column: 9, scope: !1881)
!1886 = !DILocation(line: 128, column: 14, scope: !1866)
!1887 = !DILocation(line: 128, column: 7, scope: !1866)
!1888 = !DILocation(line: 133, column: 42, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1863, file: !430, line: 133, column: 7)
!1890 = !DILocation(line: 133, column: 28, scope: !1889)
!1891 = !DILocation(line: 133, column: 50, scope: !1889)
!1892 = !DILocation(line: 133, column: 7, scope: !1863)
!1893 = !DILocation(line: 134, column: 12, scope: !1889)
!1894 = !DILocation(line: 134, column: 5, scope: !1889)
!1895 = !DILocation(line: 135, column: 1, scope: !1863)
!1896 = !DISubprogram(name: "_exit", scope: !1897, file: !1897, line: 624, type: !842, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1897 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1898 = distinct !DISubprogram(name: "verror", scope: !445, file: !445, line: 251, type: !1899, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !78, !78, !138, !455}
!1901 = !{!1902, !1903, !1904, !1905}
!1902 = !DILocalVariable(name: "status", arg: 1, scope: !1898, file: !445, line: 251, type: !78)
!1903 = !DILocalVariable(name: "errnum", arg: 2, scope: !1898, file: !445, line: 251, type: !78)
!1904 = !DILocalVariable(name: "message", arg: 3, scope: !1898, file: !445, line: 251, type: !138)
!1905 = !DILocalVariable(name: "args", arg: 4, scope: !1898, file: !445, line: 251, type: !455)
!1906 = !DILocation(line: 0, scope: !1898)
!1907 = !DILocation(line: 261, column: 3, scope: !1898)
!1908 = !DILocation(line: 265, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1898, file: !445, line: 265, column: 7)
!1910 = !DILocation(line: 265, column: 7, scope: !1898)
!1911 = !DILocation(line: 266, column: 5, scope: !1909)
!1912 = !DILocation(line: 272, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !445, line: 268, column: 5)
!1914 = !DILocation(line: 276, column: 3, scope: !1898)
!1915 = !{i64 0, i64 8, !852, i64 8, i64 8, !852, i64 16, i64 8, !852, i64 24, i64 4, !921, i64 28, i64 4, !921}
!1916 = !DILocation(line: 282, column: 1, scope: !1898)
!1917 = distinct !DISubprogram(name: "flush_stdout", scope: !445, file: !445, line: 163, type: !496, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1918)
!1918 = !{!1919}
!1919 = !DILocalVariable(name: "stdout_fd", scope: !1917, file: !445, line: 166, type: !78)
!1920 = !DILocation(line: 0, scope: !1917)
!1921 = !DILocalVariable(name: "fd", arg: 1, scope: !1922, file: !445, line: 145, type: !78)
!1922 = distinct !DISubprogram(name: "is_open", scope: !445, file: !445, line: 145, type: !1426, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1923)
!1923 = !{!1921}
!1924 = !DILocation(line: 0, scope: !1922, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 182, column: 25, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1917, file: !445, line: 182, column: 7)
!1927 = !DILocation(line: 157, column: 15, scope: !1922, inlinedAt: !1925)
!1928 = !DILocation(line: 157, column: 12, scope: !1922, inlinedAt: !1925)
!1929 = !DILocation(line: 182, column: 7, scope: !1917)
!1930 = !DILocation(line: 184, column: 5, scope: !1926)
!1931 = !DILocation(line: 185, column: 1, scope: !1917)
!1932 = distinct !DISubprogram(name: "error_tail", scope: !445, file: !445, line: 219, type: !1899, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1933)
!1933 = !{!1934, !1935, !1936, !1937}
!1934 = !DILocalVariable(name: "status", arg: 1, scope: !1932, file: !445, line: 219, type: !78)
!1935 = !DILocalVariable(name: "errnum", arg: 2, scope: !1932, file: !445, line: 219, type: !78)
!1936 = !DILocalVariable(name: "message", arg: 3, scope: !1932, file: !445, line: 219, type: !138)
!1937 = !DILocalVariable(name: "args", arg: 4, scope: !1932, file: !445, line: 219, type: !455)
!1938 = distinct !DIAssignID()
!1939 = !DILocation(line: 0, scope: !1932)
!1940 = !DILocation(line: 229, column: 13, scope: !1932)
!1941 = !DILocation(line: 135, column: 10, scope: !1942, inlinedAt: !1984)
!1942 = distinct !DISubprogram(name: "vfprintf", scope: !908, file: !908, line: 132, type: !1943, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1980)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!78, !1945, !912, !457}
!1945 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1946)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !1948)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1948, file: !218, line: 51, baseType: !78, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1948, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1948, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1948, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1948, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1948, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1948, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1948, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1948, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1948, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1948, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1948, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1948, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1948, file: !218, line: 70, baseType: !1964, size: 64, offset: 832)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1948, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1948, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1948, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1948, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1948, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1948, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1948, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1948, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1948, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1948, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1948, file: !218, line: 93, baseType: !1964, size: 64, offset: 1344)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1948, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1948, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1948, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1948, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!1980 = !{!1981, !1982, !1983}
!1981 = !DILocalVariable(name: "__stream", arg: 1, scope: !1942, file: !908, line: 132, type: !1945)
!1982 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1942, file: !908, line: 133, type: !912)
!1983 = !DILocalVariable(name: "__ap", arg: 3, scope: !1942, file: !908, line: 133, type: !457)
!1984 = distinct !DILocation(line: 229, column: 3, scope: !1932)
!1985 = !{!1986, !1988}
!1986 = distinct !{!1986, !1987, !"vfprintf.inline: argument 0"}
!1987 = distinct !{!1987, !"vfprintf.inline"}
!1988 = distinct !{!1988, !1987, !"vfprintf.inline: argument 1"}
!1989 = !DILocation(line: 229, column: 3, scope: !1932)
!1990 = !DILocation(line: 0, scope: !1942, inlinedAt: !1984)
!1991 = !DILocation(line: 232, column: 3, scope: !1932)
!1992 = !DILocation(line: 233, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1932, file: !445, line: 233, column: 7)
!1994 = !DILocation(line: 233, column: 7, scope: !1932)
!1995 = !DILocalVariable(name: "errbuf", scope: !1996, file: !445, line: 193, type: !2000)
!1996 = distinct !DISubprogram(name: "print_errno_message", scope: !445, file: !445, line: 188, type: !842, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !1997)
!1997 = !{!1998, !1999, !1995}
!1998 = !DILocalVariable(name: "errnum", arg: 1, scope: !1996, file: !445, line: 188, type: !78)
!1999 = !DILocalVariable(name: "s", scope: !1996, file: !445, line: 190, type: !138)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2001)
!2001 = !{!2002}
!2002 = !DISubrange(count: 1024)
!2003 = !DILocation(line: 0, scope: !1996, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 234, column: 5, scope: !1993)
!2005 = !DILocation(line: 193, column: 3, scope: !1996, inlinedAt: !2004)
!2006 = !DILocation(line: 195, column: 7, scope: !1996, inlinedAt: !2004)
!2007 = !DILocation(line: 207, column: 9, scope: !2008, inlinedAt: !2004)
!2008 = distinct !DILexicalBlock(scope: !1996, file: !445, line: 207, column: 7)
!2009 = !DILocation(line: 207, column: 7, scope: !1996, inlinedAt: !2004)
!2010 = !DILocation(line: 208, column: 9, scope: !2008, inlinedAt: !2004)
!2011 = !DILocation(line: 208, column: 5, scope: !2008, inlinedAt: !2004)
!2012 = !DILocation(line: 214, column: 3, scope: !1996, inlinedAt: !2004)
!2013 = !DILocation(line: 216, column: 1, scope: !1996, inlinedAt: !2004)
!2014 = !DILocation(line: 234, column: 5, scope: !1993)
!2015 = !DILocation(line: 238, column: 3, scope: !1932)
!2016 = !DILocalVariable(name: "__c", arg: 1, scope: !2017, file: !1346, line: 101, type: !78)
!2017 = distinct !DISubprogram(name: "putc_unlocked", scope: !1346, file: !1346, line: 101, type: !2018, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!78, !78, !1946}
!2020 = !{!2016, !2021}
!2021 = !DILocalVariable(name: "__stream", arg: 2, scope: !2017, file: !1346, line: 101, type: !1946)
!2022 = !DILocation(line: 0, scope: !2017, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 238, column: 3, scope: !1932)
!2024 = !DILocation(line: 103, column: 10, scope: !2017, inlinedAt: !2023)
!2025 = !DILocation(line: 240, column: 3, scope: !1932)
!2026 = !DILocation(line: 241, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1932, file: !445, line: 241, column: 7)
!2028 = !DILocation(line: 241, column: 7, scope: !1932)
!2029 = !DILocation(line: 242, column: 5, scope: !2027)
!2030 = !DILocation(line: 243, column: 1, scope: !1932)
!2031 = !DISubprogram(name: "__vfprintf_chk", scope: !908, file: !908, line: 96, type: !2032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!78, !1945, !78, !912, !457}
!2034 = !DISubprogram(name: "strerror_r", scope: !1038, file: !1038, line: 444, type: !2035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!132, !78, !132, !135}
!2037 = !DISubprogram(name: "fcntl", scope: !2038, file: !2038, line: 149, type: !2039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2038 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!78, !78, !78, null}
!2041 = distinct !DISubprogram(name: "error", scope: !445, file: !445, line: 285, type: !2042, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !78, !78, !138, null}
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DILocalVariable(name: "status", arg: 1, scope: !2041, file: !445, line: 285, type: !78)
!2046 = !DILocalVariable(name: "errnum", arg: 2, scope: !2041, file: !445, line: 285, type: !78)
!2047 = !DILocalVariable(name: "message", arg: 3, scope: !2041, file: !445, line: 285, type: !138)
!2048 = !DILocalVariable(name: "ap", scope: !2041, file: !445, line: 287, type: !455)
!2049 = distinct !DIAssignID()
!2050 = !DILocation(line: 0, scope: !2041)
!2051 = !DILocation(line: 287, column: 3, scope: !2041)
!2052 = !DILocation(line: 288, column: 3, scope: !2041)
!2053 = !DILocation(line: 289, column: 3, scope: !2041)
!2054 = !DILocation(line: 290, column: 3, scope: !2041)
!2055 = !DILocation(line: 291, column: 1, scope: !2041)
!2056 = !DILocation(line: 0, scope: !452)
!2057 = !DILocation(line: 302, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !452, file: !445, line: 302, column: 7)
!2059 = !DILocation(line: 302, column: 7, scope: !452)
!2060 = !DILocation(line: 307, column: 11, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !445, line: 307, column: 11)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !445, line: 303, column: 5)
!2063 = !DILocation(line: 307, column: 27, scope: !2061)
!2064 = !DILocation(line: 308, column: 11, scope: !2061)
!2065 = !DILocation(line: 308, column: 28, scope: !2061)
!2066 = !DILocation(line: 308, column: 25, scope: !2061)
!2067 = !DILocation(line: 309, column: 15, scope: !2061)
!2068 = !DILocation(line: 309, column: 33, scope: !2061)
!2069 = !DILocation(line: 310, column: 19, scope: !2061)
!2070 = !DILocation(line: 311, column: 22, scope: !2061)
!2071 = !DILocation(line: 311, column: 56, scope: !2061)
!2072 = !DILocation(line: 307, column: 11, scope: !2062)
!2073 = !DILocation(line: 316, column: 21, scope: !2062)
!2074 = !DILocation(line: 317, column: 23, scope: !2062)
!2075 = !DILocation(line: 318, column: 5, scope: !2062)
!2076 = !DILocation(line: 327, column: 3, scope: !452)
!2077 = !DILocation(line: 331, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !452, file: !445, line: 331, column: 7)
!2079 = !DILocation(line: 331, column: 7, scope: !452)
!2080 = !DILocation(line: 332, column: 5, scope: !2078)
!2081 = !DILocation(line: 338, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !445, line: 334, column: 5)
!2083 = !DILocation(line: 346, column: 3, scope: !452)
!2084 = !DILocation(line: 350, column: 3, scope: !452)
!2085 = !DILocation(line: 356, column: 1, scope: !452)
!2086 = distinct !DISubprogram(name: "error_at_line", scope: !445, file: !445, line: 359, type: !2087, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !78, !78, !138, !84, !138, null}
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2095}
!2090 = !DILocalVariable(name: "status", arg: 1, scope: !2086, file: !445, line: 359, type: !78)
!2091 = !DILocalVariable(name: "errnum", arg: 2, scope: !2086, file: !445, line: 359, type: !78)
!2092 = !DILocalVariable(name: "file_name", arg: 3, scope: !2086, file: !445, line: 359, type: !138)
!2093 = !DILocalVariable(name: "line_number", arg: 4, scope: !2086, file: !445, line: 360, type: !84)
!2094 = !DILocalVariable(name: "message", arg: 5, scope: !2086, file: !445, line: 360, type: !138)
!2095 = !DILocalVariable(name: "ap", scope: !2086, file: !445, line: 362, type: !455)
!2096 = distinct !DIAssignID()
!2097 = !DILocation(line: 0, scope: !2086)
!2098 = !DILocation(line: 362, column: 3, scope: !2086)
!2099 = !DILocation(line: 363, column: 3, scope: !2086)
!2100 = !DILocation(line: 364, column: 3, scope: !2086)
!2101 = !DILocation(line: 366, column: 3, scope: !2086)
!2102 = !DILocation(line: 367, column: 1, scope: !2086)
!2103 = distinct !DISubprogram(name: "fdadvise", scope: !765, file: !765, line: 25, type: !2104, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2108)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !78, !2106, !2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !456, line: 63, baseType: !240)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !768, line: 51, baseType: !767)
!2108 = !{!2109, !2110, !2111, !2112}
!2109 = !DILocalVariable(name: "fd", arg: 1, scope: !2103, file: !765, line: 25, type: !78)
!2110 = !DILocalVariable(name: "offset", arg: 2, scope: !2103, file: !765, line: 25, type: !2106)
!2111 = !DILocalVariable(name: "len", arg: 3, scope: !2103, file: !765, line: 25, type: !2106)
!2112 = !DILocalVariable(name: "advice", arg: 4, scope: !2103, file: !765, line: 25, type: !2107)
!2113 = !DILocation(line: 0, scope: !2103)
!2114 = !DILocation(line: 28, column: 3, scope: !2103)
!2115 = !DILocation(line: 30, column: 1, scope: !2103)
!2116 = !DISubprogram(name: "posix_fadvise", scope: !2038, file: !2038, line: 273, type: !2117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!78, !78, !2106, !2106, !78}
!2119 = distinct !DISubprogram(name: "fadvise", scope: !765, file: !765, line: 33, type: !2120, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !2156)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !2122, !2107}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2125)
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2124, file: !218, line: 51, baseType: !78, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2124, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2124, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2124, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2124, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2124, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2124, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2124, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2124, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2124, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2124, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2124, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2124, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2124, file: !218, line: 70, baseType: !2140, size: 64, offset: 832)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2124, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2124, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2124, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2124, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2124, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2124, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2124, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2124, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2124, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2124, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2124, file: !218, line: 93, baseType: !2140, size: 64, offset: 1344)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2124, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2124, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2124, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2124, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "fp", arg: 1, scope: !2119, file: !765, line: 33, type: !2122)
!2158 = !DILocalVariable(name: "advice", arg: 2, scope: !2119, file: !765, line: 33, type: !2107)
!2159 = !DILocation(line: 0, scope: !2119)
!2160 = !DILocation(line: 35, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2119, file: !765, line: 35, column: 7)
!2162 = !DILocation(line: 35, column: 7, scope: !2119)
!2163 = !DILocation(line: 36, column: 15, scope: !2161)
!2164 = !DILocation(line: 0, scope: !2103, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 36, column: 5, scope: !2161)
!2166 = !DILocation(line: 28, column: 3, scope: !2103, inlinedAt: !2165)
!2167 = !DILocation(line: 36, column: 5, scope: !2161)
!2168 = !DILocation(line: 37, column: 1, scope: !2119)
!2169 = !DISubprogram(name: "fileno", scope: !456, file: !456, line: 809, type: !2170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!78, !2122}
!2172 = distinct !DISubprogram(name: "rpl_fclose", scope: !770, file: !770, line: 58, type: !2173, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !2209)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!78, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2177, file: !218, line: 51, baseType: !78, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2177, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2177, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2177, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2177, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2177, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2177, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2177, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2177, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2177, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2177, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2177, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2177, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2177, file: !218, line: 70, baseType: !2193, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2177, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2177, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2177, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2177, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2177, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2177, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2177, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2177, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2177, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2177, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2177, file: !218, line: 93, baseType: !2193, size: 64, offset: 1344)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2177, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2177, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2177, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2177, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2209 = !{!2210, !2211, !2212, !2213}
!2210 = !DILocalVariable(name: "fp", arg: 1, scope: !2172, file: !770, line: 58, type: !2175)
!2211 = !DILocalVariable(name: "saved_errno", scope: !2172, file: !770, line: 60, type: !78)
!2212 = !DILocalVariable(name: "fd", scope: !2172, file: !770, line: 63, type: !78)
!2213 = !DILocalVariable(name: "result", scope: !2172, file: !770, line: 74, type: !78)
!2214 = !DILocation(line: 0, scope: !2172)
!2215 = !DILocation(line: 63, column: 12, scope: !2172)
!2216 = !DILocation(line: 64, column: 10, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2172, file: !770, line: 64, column: 7)
!2218 = !DILocation(line: 64, column: 7, scope: !2172)
!2219 = !DILocation(line: 65, column: 12, scope: !2217)
!2220 = !DILocation(line: 65, column: 5, scope: !2217)
!2221 = !DILocation(line: 70, column: 9, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2172, file: !770, line: 70, column: 7)
!2223 = !DILocation(line: 70, column: 23, scope: !2222)
!2224 = !DILocation(line: 70, column: 33, scope: !2222)
!2225 = !DILocation(line: 70, column: 26, scope: !2222)
!2226 = !DILocation(line: 70, column: 59, scope: !2222)
!2227 = !DILocation(line: 71, column: 7, scope: !2222)
!2228 = !DILocation(line: 71, column: 10, scope: !2222)
!2229 = !DILocation(line: 70, column: 7, scope: !2172)
!2230 = !DILocation(line: 100, column: 12, scope: !2172)
!2231 = !DILocation(line: 105, column: 7, scope: !2172)
!2232 = !DILocation(line: 72, column: 19, scope: !2222)
!2233 = !DILocation(line: 105, column: 19, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2172, file: !770, line: 105, column: 7)
!2235 = !DILocation(line: 107, column: 13, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2234, file: !770, line: 106, column: 5)
!2237 = !DILocation(line: 109, column: 5, scope: !2236)
!2238 = !DILocation(line: 112, column: 1, scope: !2172)
!2239 = !DISubprogram(name: "fclose", scope: !456, file: !456, line: 178, type: !2173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2240 = !DISubprogram(name: "__freading", scope: !2241, file: !2241, line: 51, type: !2173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2241 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2242 = !DISubprogram(name: "lseek", scope: !1897, file: !1897, line: 339, type: !2243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!240, !78, !240, !78}
!2245 = distinct !DISubprogram(name: "rpl_fflush", scope: !772, file: !772, line: 130, type: !2246, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !2282)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!78, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2250)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2250, file: !218, line: 51, baseType: !78, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2250, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2250, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2250, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2250, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2250, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2250, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2250, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2250, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2250, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2250, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2250, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2250, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2250, file: !218, line: 70, baseType: !2266, size: 64, offset: 832)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2250, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2250, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2250, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2250, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2250, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2250, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2250, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2250, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2250, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2250, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2250, file: !218, line: 93, baseType: !2266, size: 64, offset: 1344)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2250, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2250, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2250, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2250, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2282 = !{!2283}
!2283 = !DILocalVariable(name: "stream", arg: 1, scope: !2245, file: !772, line: 130, type: !2248)
!2284 = !DILocation(line: 0, scope: !2245)
!2285 = !DILocation(line: 151, column: 14, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2245, file: !772, line: 151, column: 7)
!2287 = !DILocation(line: 151, column: 22, scope: !2286)
!2288 = !DILocation(line: 151, column: 27, scope: !2286)
!2289 = !DILocation(line: 151, column: 7, scope: !2245)
!2290 = !DILocation(line: 152, column: 12, scope: !2286)
!2291 = !DILocation(line: 152, column: 5, scope: !2286)
!2292 = !DILocalVariable(name: "fp", arg: 1, scope: !2293, file: !772, line: 42, type: !2248)
!2293 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !772, file: !772, line: 42, type: !2294, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !2248}
!2296 = !{!2292}
!2297 = !DILocation(line: 0, scope: !2293, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 157, column: 3, scope: !2245)
!2299 = !DILocation(line: 44, column: 12, scope: !2300, inlinedAt: !2298)
!2300 = distinct !DILexicalBlock(scope: !2293, file: !772, line: 44, column: 7)
!2301 = !DILocation(line: 44, column: 19, scope: !2300, inlinedAt: !2298)
!2302 = !DILocation(line: 44, column: 7, scope: !2293, inlinedAt: !2298)
!2303 = !DILocation(line: 46, column: 5, scope: !2300, inlinedAt: !2298)
!2304 = !DILocation(line: 159, column: 10, scope: !2245)
!2305 = !DILocation(line: 159, column: 3, scope: !2245)
!2306 = !DILocation(line: 236, column: 1, scope: !2245)
!2307 = !DISubprogram(name: "fflush", scope: !456, file: !456, line: 230, type: !2246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2308 = distinct !DISubprogram(name: "fpurge", scope: !775, file: !775, line: 32, type: !2309, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !2345)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!78, !2311}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2313)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2313, file: !218, line: 51, baseType: !78, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2313, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2313, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2313, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2313, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2313, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2313, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2313, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2313, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2313, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2313, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2313, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2313, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2313, file: !218, line: 70, baseType: !2329, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2313, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2313, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2313, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2313, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2313, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2313, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2313, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2313, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2313, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2313, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2313, file: !218, line: 93, baseType: !2329, size: 64, offset: 1344)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2313, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2313, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2313, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2313, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2345 = !{!2346}
!2346 = !DILocalVariable(name: "fp", arg: 1, scope: !2308, file: !775, line: 32, type: !2311)
!2347 = !DILocation(line: 0, scope: !2308)
!2348 = !DILocation(line: 36, column: 3, scope: !2308)
!2349 = !DILocation(line: 38, column: 3, scope: !2308)
!2350 = !DISubprogram(name: "__fpurge", scope: !2241, file: !2241, line: 72, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !2311}
!2353 = distinct !DISubprogram(name: "rpl_fseeko", scope: !777, file: !777, line: 28, type: !2354, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !2390)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!78, !2356, !2106, !78}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !2358)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2358, file: !218, line: 51, baseType: !78, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2358, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2358, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2358, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2358, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2358, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2358, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2358, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2358, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2358, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2358, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2358, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2358, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2358, file: !218, line: 70, baseType: !2374, size: 64, offset: 832)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2358, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2358, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2358, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2358, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2358, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2358, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2358, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2358, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2358, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2358, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2358, file: !218, line: 93, baseType: !2374, size: 64, offset: 1344)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2358, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2358, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2358, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2358, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DILocalVariable(name: "fp", arg: 1, scope: !2353, file: !777, line: 28, type: !2356)
!2392 = !DILocalVariable(name: "offset", arg: 2, scope: !2353, file: !777, line: 28, type: !2106)
!2393 = !DILocalVariable(name: "whence", arg: 3, scope: !2353, file: !777, line: 28, type: !78)
!2394 = !DILocalVariable(name: "pos", scope: !2395, file: !777, line: 123, type: !2106)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !777, line: 119, column: 5)
!2396 = distinct !DILexicalBlock(scope: !2353, file: !777, line: 55, column: 7)
!2397 = !DILocation(line: 0, scope: !2353)
!2398 = !DILocation(line: 55, column: 12, scope: !2396)
!2399 = !DILocation(line: 55, column: 33, scope: !2396)
!2400 = !DILocation(line: 55, column: 25, scope: !2396)
!2401 = !DILocation(line: 56, column: 7, scope: !2396)
!2402 = !DILocation(line: 56, column: 15, scope: !2396)
!2403 = !DILocation(line: 56, column: 37, scope: !2396)
!2404 = !{!1354, !853, i64 32}
!2405 = !DILocation(line: 56, column: 29, scope: !2396)
!2406 = !DILocation(line: 57, column: 7, scope: !2396)
!2407 = !DILocation(line: 57, column: 15, scope: !2396)
!2408 = !{!1354, !853, i64 72}
!2409 = !DILocation(line: 57, column: 29, scope: !2396)
!2410 = !DILocation(line: 55, column: 7, scope: !2353)
!2411 = !DILocation(line: 123, column: 26, scope: !2395)
!2412 = !DILocation(line: 123, column: 19, scope: !2395)
!2413 = !DILocation(line: 0, scope: !2395)
!2414 = !DILocation(line: 124, column: 15, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2395, file: !777, line: 124, column: 11)
!2416 = !DILocation(line: 124, column: 11, scope: !2395)
!2417 = !DILocation(line: 135, column: 19, scope: !2395)
!2418 = !DILocation(line: 136, column: 12, scope: !2395)
!2419 = !DILocation(line: 136, column: 20, scope: !2395)
!2420 = !{!1354, !1146, i64 144}
!2421 = !DILocation(line: 167, column: 7, scope: !2395)
!2422 = !DILocation(line: 169, column: 10, scope: !2353)
!2423 = !DILocation(line: 169, column: 3, scope: !2353)
!2424 = !DILocation(line: 170, column: 1, scope: !2353)
!2425 = !DISubprogram(name: "fseeko", scope: !456, file: !456, line: 736, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!78, !2356, !240, !78}
!2428 = distinct !DISubprogram(name: "getprogname", scope: !779, file: !779, line: 54, type: !2429, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!138}
!2431 = !DILocation(line: 58, column: 10, scope: !2428)
!2432 = !DILocation(line: 58, column: 3, scope: !2428)
!2433 = distinct !DISubprogram(name: "set_program_name", scope: !501, file: !501, line: 37, type: !872, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !2434)
!2434 = !{!2435, !2436, !2437}
!2435 = !DILocalVariable(name: "argv0", arg: 1, scope: !2433, file: !501, line: 37, type: !138)
!2436 = !DILocalVariable(name: "slash", scope: !2433, file: !501, line: 44, type: !138)
!2437 = !DILocalVariable(name: "base", scope: !2433, file: !501, line: 45, type: !138)
!2438 = !DILocation(line: 0, scope: !2433)
!2439 = !DILocation(line: 44, column: 23, scope: !2433)
!2440 = !DILocation(line: 45, column: 22, scope: !2433)
!2441 = !DILocation(line: 46, column: 17, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2433, file: !501, line: 46, column: 7)
!2443 = !DILocation(line: 46, column: 9, scope: !2442)
!2444 = !DILocation(line: 46, column: 25, scope: !2442)
!2445 = !DILocation(line: 46, column: 40, scope: !2442)
!2446 = !DILocalVariable(name: "__s1", arg: 1, scope: !2447, file: !934, line: 974, type: !1066)
!2447 = distinct !DISubprogram(name: "memeq", scope: !934, file: !934, line: 974, type: !2448, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!172, !1066, !1066, !135}
!2450 = !{!2446, !2451, !2452}
!2451 = !DILocalVariable(name: "__s2", arg: 2, scope: !2447, file: !934, line: 974, type: !1066)
!2452 = !DILocalVariable(name: "__n", arg: 3, scope: !2447, file: !934, line: 974, type: !135)
!2453 = !DILocation(line: 0, scope: !2447, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 46, column: 28, scope: !2442)
!2455 = !DILocation(line: 976, column: 11, scope: !2447, inlinedAt: !2454)
!2456 = !DILocation(line: 976, column: 10, scope: !2447, inlinedAt: !2454)
!2457 = !DILocation(line: 46, column: 7, scope: !2433)
!2458 = !DILocation(line: 49, column: 11, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !501, line: 49, column: 11)
!2460 = distinct !DILexicalBlock(scope: !2442, file: !501, line: 47, column: 5)
!2461 = !DILocation(line: 49, column: 36, scope: !2459)
!2462 = !DILocation(line: 49, column: 11, scope: !2460)
!2463 = !DILocation(line: 65, column: 16, scope: !2433)
!2464 = !DILocation(line: 71, column: 27, scope: !2433)
!2465 = !DILocation(line: 74, column: 33, scope: !2433)
!2466 = !DILocation(line: 76, column: 1, scope: !2433)
!2467 = !DISubprogram(name: "strrchr", scope: !1038, file: !1038, line: 273, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2468 = distinct !DIAssignID()
!2469 = !DILocation(line: 0, scope: !510)
!2470 = distinct !DIAssignID()
!2471 = !DILocation(line: 40, column: 29, scope: !510)
!2472 = !DILocation(line: 41, column: 19, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !510, file: !511, line: 41, column: 7)
!2474 = !DILocation(line: 41, column: 7, scope: !510)
!2475 = !DILocation(line: 47, column: 3, scope: !510)
!2476 = !DILocation(line: 48, column: 3, scope: !510)
!2477 = !DILocalVariable(name: "ps", arg: 1, scope: !2478, file: !2479, line: 1135, type: !2482)
!2478 = distinct !DISubprogram(name: "mbszero", scope: !2479, file: !2479, line: 1135, type: !2480, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2483)
!2479 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !2482}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!2483 = !{!2477}
!2484 = !DILocation(line: 0, scope: !2478, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 48, column: 18, scope: !510)
!2486 = !DILocalVariable(name: "__dest", arg: 1, scope: !2487, file: !1242, line: 57, type: !133)
!2487 = distinct !DISubprogram(name: "memset", scope: !1242, file: !1242, line: 57, type: !2488, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!133, !133, !78, !135}
!2490 = !{!2486, !2491, !2492}
!2491 = !DILocalVariable(name: "__ch", arg: 2, scope: !2487, file: !1242, line: 57, type: !78)
!2492 = !DILocalVariable(name: "__len", arg: 3, scope: !2487, file: !1242, line: 57, type: !135)
!2493 = !DILocation(line: 0, scope: !2487, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 1137, column: 3, scope: !2478, inlinedAt: !2485)
!2495 = !DILocation(line: 59, column: 10, scope: !2487, inlinedAt: !2494)
!2496 = !DILocation(line: 49, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !510, file: !511, line: 49, column: 7)
!2498 = !DILocation(line: 49, column: 39, scope: !2497)
!2499 = !DILocation(line: 49, column: 44, scope: !2497)
!2500 = !DILocation(line: 54, column: 1, scope: !510)
!2501 = distinct !DISubprogram(name: "clone_quoting_options", scope: !541, file: !541, line: 113, type: !2502, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2505)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!2504, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!2505 = !{!2506, !2507, !2508}
!2506 = !DILocalVariable(name: "o", arg: 1, scope: !2501, file: !541, line: 113, type: !2504)
!2507 = !DILocalVariable(name: "saved_errno", scope: !2501, file: !541, line: 115, type: !78)
!2508 = !DILocalVariable(name: "p", scope: !2501, file: !541, line: 116, type: !2504)
!2509 = !DILocation(line: 0, scope: !2501)
!2510 = !DILocation(line: 115, column: 21, scope: !2501)
!2511 = !DILocation(line: 116, column: 40, scope: !2501)
!2512 = !DILocation(line: 116, column: 31, scope: !2501)
!2513 = !DILocation(line: 118, column: 9, scope: !2501)
!2514 = !DILocation(line: 119, column: 3, scope: !2501)
!2515 = distinct !DISubprogram(name: "get_quoting_style", scope: !541, file: !541, line: 124, type: !2516, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2520)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!567, !2518}
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!2520 = !{!2521}
!2521 = !DILocalVariable(name: "o", arg: 1, scope: !2515, file: !541, line: 124, type: !2518)
!2522 = !DILocation(line: 0, scope: !2515)
!2523 = !DILocation(line: 126, column: 11, scope: !2515)
!2524 = !DILocation(line: 126, column: 46, scope: !2515)
!2525 = !{!2526, !922, i64 0}
!2526 = !{!"quoting_options", !922, i64 0, !922, i64 4, !854, i64 8, !853, i64 40, !853, i64 48}
!2527 = !DILocation(line: 126, column: 3, scope: !2515)
!2528 = distinct !DISubprogram(name: "set_quoting_style", scope: !541, file: !541, line: 132, type: !2529, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !2504, !567}
!2531 = !{!2532, !2533}
!2532 = !DILocalVariable(name: "o", arg: 1, scope: !2528, file: !541, line: 132, type: !2504)
!2533 = !DILocalVariable(name: "s", arg: 2, scope: !2528, file: !541, line: 132, type: !567)
!2534 = !DILocation(line: 0, scope: !2528)
!2535 = !DILocation(line: 134, column: 4, scope: !2528)
!2536 = !DILocation(line: 134, column: 45, scope: !2528)
!2537 = !DILocation(line: 135, column: 1, scope: !2528)
!2538 = distinct !DISubprogram(name: "set_char_quoting", scope: !541, file: !541, line: 143, type: !2539, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2541)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!78, !2504, !4, !78}
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2548, !2549}
!2542 = !DILocalVariable(name: "o", arg: 1, scope: !2538, file: !541, line: 143, type: !2504)
!2543 = !DILocalVariable(name: "c", arg: 2, scope: !2538, file: !541, line: 143, type: !4)
!2544 = !DILocalVariable(name: "i", arg: 3, scope: !2538, file: !541, line: 143, type: !78)
!2545 = !DILocalVariable(name: "uc", scope: !2538, file: !541, line: 145, type: !140)
!2546 = !DILocalVariable(name: "p", scope: !2538, file: !541, line: 146, type: !2547)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2548 = !DILocalVariable(name: "shift", scope: !2538, file: !541, line: 148, type: !78)
!2549 = !DILocalVariable(name: "r", scope: !2538, file: !541, line: 149, type: !84)
!2550 = !DILocation(line: 0, scope: !2538)
!2551 = !DILocation(line: 147, column: 6, scope: !2538)
!2552 = !DILocation(line: 147, column: 41, scope: !2538)
!2553 = !DILocation(line: 147, column: 62, scope: !2538)
!2554 = !DILocation(line: 147, column: 57, scope: !2538)
!2555 = !DILocation(line: 148, column: 15, scope: !2538)
!2556 = !DILocation(line: 149, column: 21, scope: !2538)
!2557 = !DILocation(line: 149, column: 24, scope: !2538)
!2558 = !DILocation(line: 149, column: 34, scope: !2538)
!2559 = !DILocation(line: 150, column: 19, scope: !2538)
!2560 = !DILocation(line: 150, column: 24, scope: !2538)
!2561 = !DILocation(line: 150, column: 6, scope: !2538)
!2562 = !DILocation(line: 151, column: 3, scope: !2538)
!2563 = distinct !DISubprogram(name: "set_quoting_flags", scope: !541, file: !541, line: 159, type: !2564, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!78, !2504, !78}
!2566 = !{!2567, !2568, !2569}
!2567 = !DILocalVariable(name: "o", arg: 1, scope: !2563, file: !541, line: 159, type: !2504)
!2568 = !DILocalVariable(name: "i", arg: 2, scope: !2563, file: !541, line: 159, type: !78)
!2569 = !DILocalVariable(name: "r", scope: !2563, file: !541, line: 163, type: !78)
!2570 = !DILocation(line: 0, scope: !2563)
!2571 = !DILocation(line: 161, column: 8, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2563, file: !541, line: 161, column: 7)
!2573 = !DILocation(line: 161, column: 7, scope: !2563)
!2574 = !DILocation(line: 163, column: 14, scope: !2563)
!2575 = !{!2526, !922, i64 4}
!2576 = !DILocation(line: 164, column: 12, scope: !2563)
!2577 = !DILocation(line: 165, column: 3, scope: !2563)
!2578 = distinct !DISubprogram(name: "set_custom_quoting", scope: !541, file: !541, line: 169, type: !2579, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !2504, !138, !138}
!2581 = !{!2582, !2583, !2584}
!2582 = !DILocalVariable(name: "o", arg: 1, scope: !2578, file: !541, line: 169, type: !2504)
!2583 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2578, file: !541, line: 170, type: !138)
!2584 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2578, file: !541, line: 170, type: !138)
!2585 = !DILocation(line: 0, scope: !2578)
!2586 = !DILocation(line: 172, column: 8, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2578, file: !541, line: 172, column: 7)
!2588 = !DILocation(line: 172, column: 7, scope: !2578)
!2589 = !DILocation(line: 174, column: 12, scope: !2578)
!2590 = !DILocation(line: 175, column: 8, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2578, file: !541, line: 175, column: 7)
!2592 = !DILocation(line: 175, column: 19, scope: !2591)
!2593 = !DILocation(line: 176, column: 5, scope: !2591)
!2594 = !DILocation(line: 177, column: 6, scope: !2578)
!2595 = !DILocation(line: 177, column: 17, scope: !2578)
!2596 = !{!2526, !853, i64 40}
!2597 = !DILocation(line: 178, column: 6, scope: !2578)
!2598 = !DILocation(line: 178, column: 18, scope: !2578)
!2599 = !{!2526, !853, i64 48}
!2600 = !DILocation(line: 179, column: 1, scope: !2578)
!2601 = !DISubprogram(name: "abort", scope: !1042, file: !1042, line: 598, type: !496, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2602 = distinct !DISubprogram(name: "quotearg_buffer", scope: !541, file: !541, line: 774, type: !2603, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!135, !132, !135, !138, !135, !2518}
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2606 = !DILocalVariable(name: "buffer", arg: 1, scope: !2602, file: !541, line: 774, type: !132)
!2607 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2602, file: !541, line: 774, type: !135)
!2608 = !DILocalVariable(name: "arg", arg: 3, scope: !2602, file: !541, line: 775, type: !138)
!2609 = !DILocalVariable(name: "argsize", arg: 4, scope: !2602, file: !541, line: 775, type: !135)
!2610 = !DILocalVariable(name: "o", arg: 5, scope: !2602, file: !541, line: 776, type: !2518)
!2611 = !DILocalVariable(name: "p", scope: !2602, file: !541, line: 778, type: !2518)
!2612 = !DILocalVariable(name: "saved_errno", scope: !2602, file: !541, line: 779, type: !78)
!2613 = !DILocalVariable(name: "r", scope: !2602, file: !541, line: 780, type: !135)
!2614 = !DILocation(line: 0, scope: !2602)
!2615 = !DILocation(line: 778, column: 37, scope: !2602)
!2616 = !DILocation(line: 779, column: 21, scope: !2602)
!2617 = !DILocation(line: 781, column: 43, scope: !2602)
!2618 = !DILocation(line: 781, column: 53, scope: !2602)
!2619 = !DILocation(line: 781, column: 63, scope: !2602)
!2620 = !DILocation(line: 782, column: 43, scope: !2602)
!2621 = !DILocation(line: 782, column: 58, scope: !2602)
!2622 = !DILocation(line: 780, column: 14, scope: !2602)
!2623 = !DILocation(line: 783, column: 9, scope: !2602)
!2624 = !DILocation(line: 784, column: 3, scope: !2602)
!2625 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !541, file: !541, line: 251, type: !2626, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2630)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!135, !132, !135, !138, !135, !567, !78, !2628, !138, !138}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2656, !2658, !2661, !2662, !2663, !2664, !2667, !2668, !2670, !2671, !2674, !2678, !2679, !2687, !2690, !2691, !2692}
!2631 = !DILocalVariable(name: "buffer", arg: 1, scope: !2625, file: !541, line: 251, type: !132)
!2632 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2625, file: !541, line: 251, type: !135)
!2633 = !DILocalVariable(name: "arg", arg: 3, scope: !2625, file: !541, line: 252, type: !138)
!2634 = !DILocalVariable(name: "argsize", arg: 4, scope: !2625, file: !541, line: 252, type: !135)
!2635 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2625, file: !541, line: 253, type: !567)
!2636 = !DILocalVariable(name: "flags", arg: 6, scope: !2625, file: !541, line: 253, type: !78)
!2637 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2625, file: !541, line: 254, type: !2628)
!2638 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2625, file: !541, line: 255, type: !138)
!2639 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2625, file: !541, line: 256, type: !138)
!2640 = !DILocalVariable(name: "unibyte_locale", scope: !2625, file: !541, line: 258, type: !172)
!2641 = !DILocalVariable(name: "len", scope: !2625, file: !541, line: 260, type: !135)
!2642 = !DILocalVariable(name: "orig_buffersize", scope: !2625, file: !541, line: 261, type: !135)
!2643 = !DILocalVariable(name: "quote_string", scope: !2625, file: !541, line: 262, type: !138)
!2644 = !DILocalVariable(name: "quote_string_len", scope: !2625, file: !541, line: 263, type: !135)
!2645 = !DILocalVariable(name: "backslash_escapes", scope: !2625, file: !541, line: 264, type: !172)
!2646 = !DILocalVariable(name: "elide_outer_quotes", scope: !2625, file: !541, line: 265, type: !172)
!2647 = !DILocalVariable(name: "encountered_single_quote", scope: !2625, file: !541, line: 266, type: !172)
!2648 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2625, file: !541, line: 267, type: !172)
!2649 = !DILabel(scope: !2625, name: "process_input", file: !541, line: 308)
!2650 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2625, file: !541, line: 309, type: !172)
!2651 = !DILocalVariable(name: "lq", scope: !2652, file: !541, line: 361, type: !138)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !541, line: 361, column: 11)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !541, line: 360, column: 13)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !541, line: 333, column: 7)
!2655 = distinct !DILexicalBlock(scope: !2625, file: !541, line: 312, column: 5)
!2656 = !DILocalVariable(name: "i", scope: !2657, file: !541, line: 395, type: !135)
!2657 = distinct !DILexicalBlock(scope: !2625, file: !541, line: 395, column: 3)
!2658 = !DILocalVariable(name: "is_right_quote", scope: !2659, file: !541, line: 397, type: !172)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !541, line: 396, column: 5)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !541, line: 395, column: 3)
!2661 = !DILocalVariable(name: "escaping", scope: !2659, file: !541, line: 398, type: !172)
!2662 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2659, file: !541, line: 399, type: !172)
!2663 = !DILocalVariable(name: "c", scope: !2659, file: !541, line: 417, type: !140)
!2664 = !DILabel(scope: !2665, name: "c_and_shell_escape", file: !541, line: 502)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !541, line: 478, column: 9)
!2666 = distinct !DILexicalBlock(scope: !2659, file: !541, line: 419, column: 9)
!2667 = !DILabel(scope: !2665, name: "c_escape", file: !541, line: 507)
!2668 = !DILocalVariable(name: "m", scope: !2669, file: !541, line: 598, type: !135)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !541, line: 596, column: 11)
!2670 = !DILocalVariable(name: "printable", scope: !2669, file: !541, line: 600, type: !172)
!2671 = !DILocalVariable(name: "mbs", scope: !2672, file: !541, line: 609, type: !616)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !541, line: 608, column: 15)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !541, line: 602, column: 17)
!2674 = !DILocalVariable(name: "w", scope: !2675, file: !541, line: 618, type: !521)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !541, line: 617, column: 19)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !541, line: 616, column: 17)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !541, line: 616, column: 17)
!2678 = !DILocalVariable(name: "bytes", scope: !2675, file: !541, line: 619, type: !135)
!2679 = !DILocalVariable(name: "j", scope: !2680, file: !541, line: 648, type: !135)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !541, line: 648, column: 29)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !541, line: 647, column: 27)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !541, line: 645, column: 29)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !541, line: 636, column: 23)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !541, line: 628, column: 30)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !541, line: 623, column: 30)
!2686 = distinct !DILexicalBlock(scope: !2675, file: !541, line: 621, column: 25)
!2687 = !DILocalVariable(name: "ilim", scope: !2688, file: !541, line: 674, type: !135)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !541, line: 671, column: 15)
!2689 = distinct !DILexicalBlock(scope: !2669, file: !541, line: 670, column: 17)
!2690 = !DILabel(scope: !2659, name: "store_escape", file: !541, line: 709)
!2691 = !DILabel(scope: !2659, name: "store_c", file: !541, line: 712)
!2692 = !DILabel(scope: !2625, name: "force_outer_quoting_style", file: !541, line: 753)
!2693 = distinct !DIAssignID()
!2694 = distinct !DIAssignID()
!2695 = distinct !DIAssignID()
!2696 = distinct !DIAssignID()
!2697 = distinct !DIAssignID()
!2698 = !DILocation(line: 0, scope: !2672)
!2699 = distinct !DIAssignID()
!2700 = !DILocation(line: 0, scope: !2675)
!2701 = !DILocation(line: 0, scope: !2625)
!2702 = !DILocation(line: 258, column: 25, scope: !2625)
!2703 = !DILocation(line: 258, column: 36, scope: !2625)
!2704 = !DILocation(line: 267, column: 3, scope: !2625)
!2705 = !DILocation(line: 261, column: 10, scope: !2625)
!2706 = !DILocation(line: 262, column: 15, scope: !2625)
!2707 = !DILocation(line: 263, column: 10, scope: !2625)
!2708 = !DILocation(line: 308, column: 2, scope: !2625)
!2709 = !DILocation(line: 311, column: 3, scope: !2625)
!2710 = !DILocation(line: 318, column: 11, scope: !2655)
!2711 = !DILocation(line: 319, column: 9, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !541, line: 319, column: 9)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !541, line: 319, column: 9)
!2714 = distinct !DILexicalBlock(scope: !2655, file: !541, line: 318, column: 11)
!2715 = !DILocation(line: 319, column: 9, scope: !2713)
!2716 = !DILocation(line: 0, scope: !607, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 357, column: 26, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !541, line: 335, column: 11)
!2719 = distinct !DILexicalBlock(scope: !2654, file: !541, line: 334, column: 13)
!2720 = !DILocation(line: 199, column: 29, scope: !607, inlinedAt: !2717)
!2721 = !DILocation(line: 201, column: 19, scope: !2722, inlinedAt: !2717)
!2722 = distinct !DILexicalBlock(scope: !607, file: !541, line: 201, column: 7)
!2723 = !DILocation(line: 201, column: 7, scope: !607, inlinedAt: !2717)
!2724 = !DILocation(line: 229, column: 3, scope: !607, inlinedAt: !2717)
!2725 = !DILocation(line: 230, column: 3, scope: !607, inlinedAt: !2717)
!2726 = !DILocalVariable(name: "ps", arg: 1, scope: !2727, file: !2479, line: 1135, type: !2730)
!2727 = distinct !DISubprogram(name: "mbszero", scope: !2479, file: !2479, line: 1135, type: !2728, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2731)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !2730}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!2731 = !{!2726}
!2732 = !DILocation(line: 0, scope: !2727, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 230, column: 18, scope: !607, inlinedAt: !2717)
!2734 = !DILocalVariable(name: "__dest", arg: 1, scope: !2735, file: !1242, line: 57, type: !133)
!2735 = distinct !DISubprogram(name: "memset", scope: !1242, file: !1242, line: 57, type: !2488, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2736)
!2736 = !{!2734, !2737, !2738}
!2737 = !DILocalVariable(name: "__ch", arg: 2, scope: !2735, file: !1242, line: 57, type: !78)
!2738 = !DILocalVariable(name: "__len", arg: 3, scope: !2735, file: !1242, line: 57, type: !135)
!2739 = !DILocation(line: 0, scope: !2735, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 1137, column: 3, scope: !2727, inlinedAt: !2733)
!2741 = !DILocation(line: 59, column: 10, scope: !2735, inlinedAt: !2740)
!2742 = !DILocation(line: 231, column: 7, scope: !2743, inlinedAt: !2717)
!2743 = distinct !DILexicalBlock(scope: !607, file: !541, line: 231, column: 7)
!2744 = !DILocation(line: 231, column: 40, scope: !2743, inlinedAt: !2717)
!2745 = !DILocation(line: 231, column: 45, scope: !2743, inlinedAt: !2717)
!2746 = !DILocation(line: 235, column: 1, scope: !607, inlinedAt: !2717)
!2747 = !DILocation(line: 0, scope: !607, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 358, column: 27, scope: !2718)
!2749 = !DILocation(line: 199, column: 29, scope: !607, inlinedAt: !2748)
!2750 = !DILocation(line: 201, column: 19, scope: !2722, inlinedAt: !2748)
!2751 = !DILocation(line: 201, column: 7, scope: !607, inlinedAt: !2748)
!2752 = !DILocation(line: 229, column: 3, scope: !607, inlinedAt: !2748)
!2753 = !DILocation(line: 230, column: 3, scope: !607, inlinedAt: !2748)
!2754 = !DILocation(line: 0, scope: !2727, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 230, column: 18, scope: !607, inlinedAt: !2748)
!2756 = !DILocation(line: 0, scope: !2735, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1137, column: 3, scope: !2727, inlinedAt: !2755)
!2758 = !DILocation(line: 59, column: 10, scope: !2735, inlinedAt: !2757)
!2759 = !DILocation(line: 231, column: 7, scope: !2743, inlinedAt: !2748)
!2760 = !DILocation(line: 231, column: 40, scope: !2743, inlinedAt: !2748)
!2761 = !DILocation(line: 231, column: 45, scope: !2743, inlinedAt: !2748)
!2762 = !DILocation(line: 235, column: 1, scope: !607, inlinedAt: !2748)
!2763 = !DILocation(line: 360, column: 13, scope: !2654)
!2764 = !DILocation(line: 0, scope: !2652)
!2765 = !DILocation(line: 361, column: 45, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2652, file: !541, line: 361, column: 11)
!2767 = !DILocation(line: 361, column: 11, scope: !2652)
!2768 = !DILocation(line: 362, column: 13, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !541, line: 362, column: 13)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !541, line: 362, column: 13)
!2771 = !DILocation(line: 362, column: 13, scope: !2770)
!2772 = !DILocation(line: 361, column: 52, scope: !2766)
!2773 = distinct !{!2773, !2767, !2774, !968}
!2774 = !DILocation(line: 362, column: 13, scope: !2652)
!2775 = !DILocation(line: 365, column: 28, scope: !2654)
!2776 = !DILocation(line: 260, column: 10, scope: !2625)
!2777 = !DILocation(line: 367, column: 7, scope: !2655)
!2778 = !DILocation(line: 373, column: 7, scope: !2655)
!2779 = !DILocation(line: 381, column: 11, scope: !2655)
!2780 = !DILocation(line: 376, column: 11, scope: !2655)
!2781 = !DILocation(line: 382, column: 9, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !541, line: 382, column: 9)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !541, line: 382, column: 9)
!2784 = distinct !DILexicalBlock(scope: !2655, file: !541, line: 381, column: 11)
!2785 = !DILocation(line: 382, column: 9, scope: !2783)
!2786 = !DILocation(line: 389, column: 7, scope: !2655)
!2787 = !DILocation(line: 392, column: 7, scope: !2655)
!2788 = !DILocation(line: 0, scope: !2657)
!2789 = !DILocation(line: 395, column: 8, scope: !2657)
!2790 = !DILocation(line: 395, scope: !2657)
!2791 = !DILocation(line: 395, column: 34, scope: !2660)
!2792 = !DILocation(line: 395, column: 26, scope: !2660)
!2793 = !DILocation(line: 395, column: 48, scope: !2660)
!2794 = !DILocation(line: 395, column: 55, scope: !2660)
!2795 = !DILocation(line: 395, column: 3, scope: !2657)
!2796 = !DILocation(line: 395, column: 67, scope: !2660)
!2797 = !DILocation(line: 0, scope: !2659)
!2798 = !DILocation(line: 402, column: 11, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2659, file: !541, line: 401, column: 11)
!2800 = !DILocation(line: 404, column: 17, scope: !2799)
!2801 = !DILocation(line: 405, column: 39, scope: !2799)
!2802 = !DILocation(line: 409, column: 32, scope: !2799)
!2803 = !DILocation(line: 405, column: 19, scope: !2799)
!2804 = !DILocation(line: 405, column: 15, scope: !2799)
!2805 = !DILocation(line: 410, column: 11, scope: !2799)
!2806 = !DILocation(line: 410, column: 25, scope: !2799)
!2807 = !DILocalVariable(name: "__s1", arg: 1, scope: !2808, file: !934, line: 974, type: !1066)
!2808 = distinct !DISubprogram(name: "memeq", scope: !934, file: !934, line: 974, type: !2448, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2809)
!2809 = !{!2807, !2810, !2811}
!2810 = !DILocalVariable(name: "__s2", arg: 2, scope: !2808, file: !934, line: 974, type: !1066)
!2811 = !DILocalVariable(name: "__n", arg: 3, scope: !2808, file: !934, line: 974, type: !135)
!2812 = !DILocation(line: 0, scope: !2808, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 410, column: 14, scope: !2799)
!2814 = !DILocation(line: 976, column: 11, scope: !2808, inlinedAt: !2813)
!2815 = !DILocation(line: 976, column: 10, scope: !2808, inlinedAt: !2813)
!2816 = !DILocation(line: 401, column: 11, scope: !2659)
!2817 = !DILocation(line: 417, column: 25, scope: !2659)
!2818 = !DILocation(line: 418, column: 7, scope: !2659)
!2819 = !DILocation(line: 421, column: 15, scope: !2666)
!2820 = !DILocation(line: 423, column: 15, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !541, line: 423, column: 15)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !541, line: 422, column: 13)
!2823 = distinct !DILexicalBlock(scope: !2666, file: !541, line: 421, column: 15)
!2824 = !DILocation(line: 423, column: 15, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !541, line: 423, column: 15)
!2826 = !DILocation(line: 423, column: 15, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !541, line: 423, column: 15)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !541, line: 423, column: 15)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !541, line: 423, column: 15)
!2830 = !DILocation(line: 423, column: 15, scope: !2828)
!2831 = !DILocation(line: 423, column: 15, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !541, line: 423, column: 15)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !541, line: 423, column: 15)
!2834 = !DILocation(line: 423, column: 15, scope: !2833)
!2835 = !DILocation(line: 423, column: 15, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !541, line: 423, column: 15)
!2837 = distinct !DILexicalBlock(scope: !2829, file: !541, line: 423, column: 15)
!2838 = !DILocation(line: 423, column: 15, scope: !2837)
!2839 = !DILocation(line: 423, column: 15, scope: !2829)
!2840 = !DILocation(line: 423, column: 15, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !541, line: 423, column: 15)
!2842 = distinct !DILexicalBlock(scope: !2821, file: !541, line: 423, column: 15)
!2843 = !DILocation(line: 423, column: 15, scope: !2842)
!2844 = !DILocation(line: 431, column: 19, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2822, file: !541, line: 430, column: 19)
!2846 = !DILocation(line: 431, column: 24, scope: !2845)
!2847 = !DILocation(line: 431, column: 28, scope: !2845)
!2848 = !DILocation(line: 431, column: 38, scope: !2845)
!2849 = !DILocation(line: 431, column: 48, scope: !2845)
!2850 = !DILocation(line: 431, column: 59, scope: !2845)
!2851 = !DILocation(line: 433, column: 19, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !541, line: 433, column: 19)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !541, line: 433, column: 19)
!2854 = distinct !DILexicalBlock(scope: !2845, file: !541, line: 432, column: 17)
!2855 = !DILocation(line: 433, column: 19, scope: !2853)
!2856 = !DILocation(line: 434, column: 19, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !541, line: 434, column: 19)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !541, line: 434, column: 19)
!2859 = !DILocation(line: 434, column: 19, scope: !2858)
!2860 = !DILocation(line: 435, column: 17, scope: !2854)
!2861 = !DILocation(line: 442, column: 20, scope: !2823)
!2862 = !DILocation(line: 447, column: 11, scope: !2666)
!2863 = !DILocation(line: 450, column: 19, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2666, file: !541, line: 448, column: 13)
!2865 = !DILocation(line: 456, column: 19, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2864, file: !541, line: 455, column: 19)
!2867 = !DILocation(line: 456, column: 24, scope: !2866)
!2868 = !DILocation(line: 456, column: 28, scope: !2866)
!2869 = !DILocation(line: 456, column: 38, scope: !2866)
!2870 = !DILocation(line: 456, column: 41, scope: !2866)
!2871 = !DILocation(line: 456, column: 52, scope: !2866)
!2872 = !DILocation(line: 455, column: 19, scope: !2864)
!2873 = !DILocation(line: 457, column: 25, scope: !2866)
!2874 = !DILocation(line: 457, column: 17, scope: !2866)
!2875 = !DILocation(line: 464, column: 25, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2866, file: !541, line: 458, column: 19)
!2877 = !DILocation(line: 468, column: 21, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !541, line: 468, column: 21)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !541, line: 468, column: 21)
!2880 = !DILocation(line: 468, column: 21, scope: !2879)
!2881 = !DILocation(line: 469, column: 21, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !541, line: 469, column: 21)
!2883 = distinct !DILexicalBlock(scope: !2876, file: !541, line: 469, column: 21)
!2884 = !DILocation(line: 469, column: 21, scope: !2883)
!2885 = !DILocation(line: 470, column: 21, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !541, line: 470, column: 21)
!2887 = distinct !DILexicalBlock(scope: !2876, file: !541, line: 470, column: 21)
!2888 = !DILocation(line: 470, column: 21, scope: !2887)
!2889 = !DILocation(line: 471, column: 21, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !541, line: 471, column: 21)
!2891 = distinct !DILexicalBlock(scope: !2876, file: !541, line: 471, column: 21)
!2892 = !DILocation(line: 471, column: 21, scope: !2891)
!2893 = !DILocation(line: 472, column: 21, scope: !2876)
!2894 = !DILocation(line: 482, column: 33, scope: !2665)
!2895 = !DILocation(line: 483, column: 33, scope: !2665)
!2896 = !DILocation(line: 485, column: 33, scope: !2665)
!2897 = !DILocation(line: 486, column: 33, scope: !2665)
!2898 = !DILocation(line: 487, column: 33, scope: !2665)
!2899 = !DILocation(line: 490, column: 17, scope: !2665)
!2900 = !DILocation(line: 492, column: 21, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !541, line: 491, column: 15)
!2902 = distinct !DILexicalBlock(scope: !2665, file: !541, line: 490, column: 17)
!2903 = !DILocation(line: 499, column: 35, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2665, file: !541, line: 499, column: 17)
!2905 = !DILocation(line: 0, scope: !2665)
!2906 = !DILocation(line: 502, column: 11, scope: !2665)
!2907 = !DILocation(line: 504, column: 17, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2665, file: !541, line: 503, column: 17)
!2909 = !DILocation(line: 507, column: 11, scope: !2665)
!2910 = !DILocation(line: 508, column: 17, scope: !2665)
!2911 = !DILocation(line: 517, column: 15, scope: !2666)
!2912 = !DILocation(line: 517, column: 40, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2666, file: !541, line: 517, column: 15)
!2914 = !DILocation(line: 517, column: 47, scope: !2913)
!2915 = !DILocation(line: 517, column: 18, scope: !2913)
!2916 = !DILocation(line: 521, column: 17, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2666, file: !541, line: 521, column: 15)
!2918 = !DILocation(line: 521, column: 15, scope: !2666)
!2919 = !DILocation(line: 525, column: 11, scope: !2666)
!2920 = !DILocation(line: 537, column: 15, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2666, file: !541, line: 536, column: 15)
!2922 = !DILocation(line: 536, column: 15, scope: !2666)
!2923 = !DILocation(line: 544, column: 15, scope: !2666)
!2924 = !DILocation(line: 546, column: 19, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !541, line: 545, column: 13)
!2926 = distinct !DILexicalBlock(scope: !2666, file: !541, line: 544, column: 15)
!2927 = !DILocation(line: 549, column: 19, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2925, file: !541, line: 549, column: 19)
!2929 = !DILocation(line: 549, column: 30, scope: !2928)
!2930 = !DILocation(line: 558, column: 15, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !541, line: 558, column: 15)
!2932 = distinct !DILexicalBlock(scope: !2925, file: !541, line: 558, column: 15)
!2933 = !DILocation(line: 558, column: 15, scope: !2932)
!2934 = !DILocation(line: 559, column: 15, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !541, line: 559, column: 15)
!2936 = distinct !DILexicalBlock(scope: !2925, file: !541, line: 559, column: 15)
!2937 = !DILocation(line: 559, column: 15, scope: !2936)
!2938 = !DILocation(line: 560, column: 15, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !541, line: 560, column: 15)
!2940 = distinct !DILexicalBlock(scope: !2925, file: !541, line: 560, column: 15)
!2941 = !DILocation(line: 560, column: 15, scope: !2940)
!2942 = !DILocation(line: 562, column: 13, scope: !2925)
!2943 = !DILocation(line: 602, column: 17, scope: !2669)
!2944 = !DILocation(line: 0, scope: !2669)
!2945 = !DILocation(line: 605, column: 29, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2673, file: !541, line: 603, column: 15)
!2947 = !DILocation(line: 605, column: 41, scope: !2946)
!2948 = !DILocation(line: 606, column: 15, scope: !2946)
!2949 = !DILocation(line: 609, column: 17, scope: !2672)
!2950 = !DILocation(line: 0, scope: !2727, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 609, column: 32, scope: !2672)
!2952 = !DILocation(line: 0, scope: !2735, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 1137, column: 3, scope: !2727, inlinedAt: !2951)
!2954 = !DILocation(line: 59, column: 10, scope: !2735, inlinedAt: !2953)
!2955 = !DILocation(line: 613, column: 29, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2672, file: !541, line: 613, column: 21)
!2957 = !DILocation(line: 613, column: 21, scope: !2672)
!2958 = !DILocation(line: 614, column: 29, scope: !2956)
!2959 = !DILocation(line: 614, column: 19, scope: !2956)
!2960 = !DILocation(line: 618, column: 21, scope: !2675)
!2961 = !DILocation(line: 620, column: 54, scope: !2675)
!2962 = !DILocation(line: 619, column: 36, scope: !2675)
!2963 = !DILocation(line: 621, column: 25, scope: !2675)
!2964 = !DILocation(line: 631, column: 38, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2684, file: !541, line: 629, column: 23)
!2966 = !DILocation(line: 631, column: 48, scope: !2965)
!2967 = !DILocation(line: 631, column: 25, scope: !2965)
!2968 = !DILocation(line: 626, column: 25, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2685, file: !541, line: 624, column: 23)
!2970 = !DILocation(line: 631, column: 51, scope: !2965)
!2971 = !DILocation(line: 632, column: 28, scope: !2965)
!2972 = !DILocation(line: 631, column: 34, scope: !2965)
!2973 = distinct !{!2973, !2967, !2971, !968}
!2974 = !DILocation(line: 0, scope: !2680)
!2975 = !DILocation(line: 646, column: 29, scope: !2682)
!2976 = !DILocation(line: 648, column: 29, scope: !2680)
!2977 = !DILocation(line: 649, column: 39, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2680, file: !541, line: 648, column: 29)
!2979 = !DILocation(line: 649, column: 31, scope: !2978)
!2980 = !DILocation(line: 648, column: 60, scope: !2978)
!2981 = !DILocation(line: 648, column: 50, scope: !2978)
!2982 = distinct !{!2982, !2976, !2983, !968}
!2983 = !DILocation(line: 654, column: 33, scope: !2680)
!2984 = !DILocation(line: 657, column: 43, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2683, file: !541, line: 657, column: 29)
!2986 = !DILocalVariable(name: "wc", arg: 1, scope: !2987, file: !2988, line: 865, type: !2991)
!2987 = distinct !DISubprogram(name: "c32isprint", scope: !2988, file: !2988, line: 865, type: !2989, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2993)
!2988 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!78, !2991}
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2992, line: 20, baseType: !84)
!2992 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2993 = !{!2986}
!2994 = !DILocation(line: 0, scope: !2987, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 657, column: 31, scope: !2985)
!2996 = !DILocation(line: 871, column: 10, scope: !2987, inlinedAt: !2995)
!2997 = !DILocation(line: 657, column: 31, scope: !2985)
!2998 = !DILocation(line: 664, column: 23, scope: !2675)
!2999 = !DILocation(line: 665, column: 19, scope: !2676)
!3000 = !DILocation(line: 666, column: 15, scope: !2673)
!3001 = !DILocation(line: 753, column: 2, scope: !2625)
!3002 = !DILocation(line: 756, column: 51, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2625, file: !541, line: 756, column: 7)
!3004 = !DILocation(line: 0, scope: !2673)
!3005 = !DILocation(line: 670, column: 19, scope: !2689)
!3006 = !DILocation(line: 670, column: 23, scope: !2689)
!3007 = !DILocation(line: 674, column: 33, scope: !2688)
!3008 = !DILocation(line: 0, scope: !2688)
!3009 = !DILocation(line: 676, column: 17, scope: !2688)
!3010 = !DILocation(line: 678, column: 43, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !541, line: 678, column: 25)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !541, line: 677, column: 19)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !541, line: 676, column: 17)
!3014 = distinct !DILexicalBlock(scope: !2688, file: !541, line: 676, column: 17)
!3015 = !DILocation(line: 680, column: 25, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !541, line: 680, column: 25)
!3017 = distinct !DILexicalBlock(scope: !3011, file: !541, line: 679, column: 23)
!3018 = !DILocation(line: 680, column: 25, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3016, file: !541, line: 680, column: 25)
!3020 = !DILocation(line: 680, column: 25, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !541, line: 680, column: 25)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !541, line: 680, column: 25)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !541, line: 680, column: 25)
!3024 = !DILocation(line: 680, column: 25, scope: !3022)
!3025 = !DILocation(line: 680, column: 25, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !541, line: 680, column: 25)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !541, line: 680, column: 25)
!3028 = !DILocation(line: 680, column: 25, scope: !3027)
!3029 = !DILocation(line: 680, column: 25, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !541, line: 680, column: 25)
!3031 = distinct !DILexicalBlock(scope: !3023, file: !541, line: 680, column: 25)
!3032 = !DILocation(line: 680, column: 25, scope: !3031)
!3033 = !DILocation(line: 680, column: 25, scope: !3023)
!3034 = !DILocation(line: 680, column: 25, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !541, line: 680, column: 25)
!3036 = distinct !DILexicalBlock(scope: !3016, file: !541, line: 680, column: 25)
!3037 = !DILocation(line: 680, column: 25, scope: !3036)
!3038 = !DILocation(line: 681, column: 25, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !541, line: 681, column: 25)
!3040 = distinct !DILexicalBlock(scope: !3017, file: !541, line: 681, column: 25)
!3041 = !DILocation(line: 681, column: 25, scope: !3040)
!3042 = !DILocation(line: 682, column: 25, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !541, line: 682, column: 25)
!3044 = distinct !DILexicalBlock(scope: !3017, file: !541, line: 682, column: 25)
!3045 = !DILocation(line: 682, column: 25, scope: !3044)
!3046 = !DILocation(line: 683, column: 38, scope: !3017)
!3047 = !DILocation(line: 683, column: 33, scope: !3017)
!3048 = !DILocation(line: 684, column: 23, scope: !3017)
!3049 = !DILocation(line: 685, column: 30, scope: !3011)
!3050 = !DILocation(line: 687, column: 25, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !541, line: 687, column: 25)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !541, line: 687, column: 25)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !541, line: 686, column: 23)
!3054 = distinct !DILexicalBlock(scope: !3011, file: !541, line: 685, column: 30)
!3055 = !DILocation(line: 687, column: 25, scope: !3052)
!3056 = !DILocation(line: 689, column: 23, scope: !3053)
!3057 = !DILocation(line: 690, column: 35, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3012, file: !541, line: 690, column: 25)
!3059 = !DILocation(line: 690, column: 30, scope: !3058)
!3060 = !DILocation(line: 690, column: 25, scope: !3012)
!3061 = !DILocation(line: 692, column: 21, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !541, line: 692, column: 21)
!3063 = distinct !DILexicalBlock(scope: !3012, file: !541, line: 692, column: 21)
!3064 = !DILocation(line: 692, column: 21, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !541, line: 692, column: 21)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !541, line: 692, column: 21)
!3067 = distinct !DILexicalBlock(scope: !3062, file: !541, line: 692, column: 21)
!3068 = !DILocation(line: 692, column: 21, scope: !3066)
!3069 = !DILocation(line: 692, column: 21, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !541, line: 692, column: 21)
!3071 = distinct !DILexicalBlock(scope: !3067, file: !541, line: 692, column: 21)
!3072 = !DILocation(line: 692, column: 21, scope: !3071)
!3073 = !DILocation(line: 692, column: 21, scope: !3067)
!3074 = !DILocation(line: 0, scope: !3012)
!3075 = !DILocation(line: 693, column: 21, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !541, line: 693, column: 21)
!3077 = distinct !DILexicalBlock(scope: !3012, file: !541, line: 693, column: 21)
!3078 = !DILocation(line: 693, column: 21, scope: !3077)
!3079 = !DILocation(line: 694, column: 25, scope: !3012)
!3080 = !DILocation(line: 676, column: 17, scope: !3013)
!3081 = distinct !{!3081, !3082, !3083}
!3082 = !DILocation(line: 676, column: 17, scope: !3014)
!3083 = !DILocation(line: 695, column: 19, scope: !3014)
!3084 = !DILocation(line: 409, column: 30, scope: !2799)
!3085 = !DILocation(line: 702, column: 34, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2659, file: !541, line: 702, column: 11)
!3087 = !DILocation(line: 704, column: 14, scope: !3086)
!3088 = !DILocation(line: 705, column: 14, scope: !3086)
!3089 = !DILocation(line: 705, column: 35, scope: !3086)
!3090 = !DILocation(line: 705, column: 17, scope: !3086)
!3091 = !DILocation(line: 705, column: 47, scope: !3086)
!3092 = !DILocation(line: 705, column: 65, scope: !3086)
!3093 = !DILocation(line: 706, column: 11, scope: !3086)
!3094 = !DILocation(line: 702, column: 11, scope: !2659)
!3095 = !DILocation(line: 395, column: 15, scope: !2657)
!3096 = !DILocation(line: 709, column: 5, scope: !2659)
!3097 = !DILocation(line: 710, column: 7, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !2659, file: !541, line: 710, column: 7)
!3099 = !DILocation(line: 710, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3098, file: !541, line: 710, column: 7)
!3101 = !DILocation(line: 710, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !541, line: 710, column: 7)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !541, line: 710, column: 7)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !541, line: 710, column: 7)
!3105 = !DILocation(line: 710, column: 7, scope: !3103)
!3106 = !DILocation(line: 710, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !541, line: 710, column: 7)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !541, line: 710, column: 7)
!3109 = !DILocation(line: 710, column: 7, scope: !3108)
!3110 = !DILocation(line: 710, column: 7, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !541, line: 710, column: 7)
!3112 = distinct !DILexicalBlock(scope: !3104, file: !541, line: 710, column: 7)
!3113 = !DILocation(line: 710, column: 7, scope: !3112)
!3114 = !DILocation(line: 710, column: 7, scope: !3104)
!3115 = !DILocation(line: 710, column: 7, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !541, line: 710, column: 7)
!3117 = distinct !DILexicalBlock(scope: !3098, file: !541, line: 710, column: 7)
!3118 = !DILocation(line: 710, column: 7, scope: !3117)
!3119 = !DILocation(line: 712, column: 5, scope: !2659)
!3120 = !DILocation(line: 713, column: 7, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !541, line: 713, column: 7)
!3122 = distinct !DILexicalBlock(scope: !2659, file: !541, line: 713, column: 7)
!3123 = !DILocation(line: 417, column: 21, scope: !2659)
!3124 = !DILocation(line: 713, column: 7, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !541, line: 713, column: 7)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !541, line: 713, column: 7)
!3127 = distinct !DILexicalBlock(scope: !3121, file: !541, line: 713, column: 7)
!3128 = !DILocation(line: 713, column: 7, scope: !3126)
!3129 = !DILocation(line: 713, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !541, line: 713, column: 7)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !541, line: 713, column: 7)
!3132 = !DILocation(line: 713, column: 7, scope: !3131)
!3133 = !DILocation(line: 713, column: 7, scope: !3127)
!3134 = !DILocation(line: 714, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !541, line: 714, column: 7)
!3136 = distinct !DILexicalBlock(scope: !2659, file: !541, line: 714, column: 7)
!3137 = !DILocation(line: 714, column: 7, scope: !3136)
!3138 = !DILocation(line: 716, column: 11, scope: !2659)
!3139 = !DILocation(line: 718, column: 5, scope: !2660)
!3140 = !DILocation(line: 395, column: 82, scope: !2660)
!3141 = !DILocation(line: 395, column: 3, scope: !2660)
!3142 = distinct !{!3142, !2795, !3143, !968}
!3143 = !DILocation(line: 718, column: 5, scope: !2657)
!3144 = !DILocation(line: 720, column: 11, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !2625, file: !541, line: 720, column: 7)
!3146 = !DILocation(line: 720, column: 16, scope: !3145)
!3147 = !DILocation(line: 728, column: 51, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !2625, file: !541, line: 728, column: 7)
!3149 = !DILocation(line: 731, column: 11, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3148, file: !541, line: 730, column: 5)
!3151 = !DILocation(line: 732, column: 16, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3150, file: !541, line: 731, column: 11)
!3153 = !DILocation(line: 732, column: 9, scope: !3152)
!3154 = !DILocation(line: 736, column: 18, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3152, file: !541, line: 736, column: 16)
!3156 = !DILocation(line: 736, column: 29, scope: !3155)
!3157 = !DILocation(line: 745, column: 7, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !2625, file: !541, line: 745, column: 7)
!3159 = !DILocation(line: 745, column: 20, scope: !3158)
!3160 = !DILocation(line: 746, column: 12, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !541, line: 746, column: 5)
!3162 = distinct !DILexicalBlock(scope: !3158, file: !541, line: 746, column: 5)
!3163 = !DILocation(line: 746, column: 5, scope: !3162)
!3164 = !DILocation(line: 747, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !541, line: 747, column: 7)
!3166 = distinct !DILexicalBlock(scope: !3161, file: !541, line: 747, column: 7)
!3167 = !DILocation(line: 747, column: 7, scope: !3166)
!3168 = !DILocation(line: 746, column: 39, scope: !3161)
!3169 = distinct !{!3169, !3163, !3170, !968}
!3170 = !DILocation(line: 747, column: 7, scope: !3162)
!3171 = !DILocation(line: 749, column: 11, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !2625, file: !541, line: 749, column: 7)
!3173 = !DILocation(line: 749, column: 7, scope: !2625)
!3174 = !DILocation(line: 750, column: 5, scope: !3172)
!3175 = !DILocation(line: 750, column: 17, scope: !3172)
!3176 = !DILocation(line: 756, column: 21, scope: !3003)
!3177 = !DILocation(line: 760, column: 42, scope: !2625)
!3178 = !DILocation(line: 758, column: 10, scope: !2625)
!3179 = !DILocation(line: 758, column: 3, scope: !2625)
!3180 = !DILocation(line: 762, column: 1, scope: !2625)
!3181 = !DISubprogram(name: "iswprint", scope: !3182, file: !3182, line: 120, type: !2989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3182 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3183 = distinct !DISubprogram(name: "quotearg_alloc", scope: !541, file: !541, line: 788, type: !3184, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!132, !138, !135, !2518}
!3186 = !{!3187, !3188, !3189}
!3187 = !DILocalVariable(name: "arg", arg: 1, scope: !3183, file: !541, line: 788, type: !138)
!3188 = !DILocalVariable(name: "argsize", arg: 2, scope: !3183, file: !541, line: 788, type: !135)
!3189 = !DILocalVariable(name: "o", arg: 3, scope: !3183, file: !541, line: 789, type: !2518)
!3190 = !DILocation(line: 0, scope: !3183)
!3191 = !DILocalVariable(name: "arg", arg: 1, scope: !3192, file: !541, line: 801, type: !138)
!3192 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !541, file: !541, line: 801, type: !3193, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!132, !138, !135, !179, !2518}
!3195 = !{!3191, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203}
!3196 = !DILocalVariable(name: "argsize", arg: 2, scope: !3192, file: !541, line: 801, type: !135)
!3197 = !DILocalVariable(name: "size", arg: 3, scope: !3192, file: !541, line: 801, type: !179)
!3198 = !DILocalVariable(name: "o", arg: 4, scope: !3192, file: !541, line: 802, type: !2518)
!3199 = !DILocalVariable(name: "p", scope: !3192, file: !541, line: 804, type: !2518)
!3200 = !DILocalVariable(name: "saved_errno", scope: !3192, file: !541, line: 805, type: !78)
!3201 = !DILocalVariable(name: "flags", scope: !3192, file: !541, line: 807, type: !78)
!3202 = !DILocalVariable(name: "bufsize", scope: !3192, file: !541, line: 808, type: !135)
!3203 = !DILocalVariable(name: "buf", scope: !3192, file: !541, line: 812, type: !132)
!3204 = !DILocation(line: 0, scope: !3192, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 791, column: 10, scope: !3183)
!3206 = !DILocation(line: 804, column: 37, scope: !3192, inlinedAt: !3205)
!3207 = !DILocation(line: 805, column: 21, scope: !3192, inlinedAt: !3205)
!3208 = !DILocation(line: 807, column: 18, scope: !3192, inlinedAt: !3205)
!3209 = !DILocation(line: 807, column: 24, scope: !3192, inlinedAt: !3205)
!3210 = !DILocation(line: 808, column: 72, scope: !3192, inlinedAt: !3205)
!3211 = !DILocation(line: 809, column: 56, scope: !3192, inlinedAt: !3205)
!3212 = !DILocation(line: 810, column: 49, scope: !3192, inlinedAt: !3205)
!3213 = !DILocation(line: 811, column: 49, scope: !3192, inlinedAt: !3205)
!3214 = !DILocation(line: 808, column: 20, scope: !3192, inlinedAt: !3205)
!3215 = !DILocation(line: 811, column: 62, scope: !3192, inlinedAt: !3205)
!3216 = !DILocation(line: 812, column: 15, scope: !3192, inlinedAt: !3205)
!3217 = !DILocation(line: 813, column: 60, scope: !3192, inlinedAt: !3205)
!3218 = !DILocation(line: 815, column: 32, scope: !3192, inlinedAt: !3205)
!3219 = !DILocation(line: 815, column: 47, scope: !3192, inlinedAt: !3205)
!3220 = !DILocation(line: 813, column: 3, scope: !3192, inlinedAt: !3205)
!3221 = !DILocation(line: 816, column: 9, scope: !3192, inlinedAt: !3205)
!3222 = !DILocation(line: 791, column: 3, scope: !3183)
!3223 = !DILocation(line: 0, scope: !3192)
!3224 = !DILocation(line: 804, column: 37, scope: !3192)
!3225 = !DILocation(line: 805, column: 21, scope: !3192)
!3226 = !DILocation(line: 807, column: 18, scope: !3192)
!3227 = !DILocation(line: 807, column: 27, scope: !3192)
!3228 = !DILocation(line: 807, column: 24, scope: !3192)
!3229 = !DILocation(line: 808, column: 72, scope: !3192)
!3230 = !DILocation(line: 809, column: 56, scope: !3192)
!3231 = !DILocation(line: 810, column: 49, scope: !3192)
!3232 = !DILocation(line: 811, column: 49, scope: !3192)
!3233 = !DILocation(line: 808, column: 20, scope: !3192)
!3234 = !DILocation(line: 811, column: 62, scope: !3192)
!3235 = !DILocation(line: 812, column: 15, scope: !3192)
!3236 = !DILocation(line: 813, column: 60, scope: !3192)
!3237 = !DILocation(line: 815, column: 32, scope: !3192)
!3238 = !DILocation(line: 815, column: 47, scope: !3192)
!3239 = !DILocation(line: 813, column: 3, scope: !3192)
!3240 = !DILocation(line: 816, column: 9, scope: !3192)
!3241 = !DILocation(line: 817, column: 7, scope: !3192)
!3242 = !DILocation(line: 818, column: 11, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3192, file: !541, line: 817, column: 7)
!3244 = !DILocation(line: 818, column: 5, scope: !3243)
!3245 = !DILocation(line: 819, column: 3, scope: !3192)
!3246 = distinct !DISubprogram(name: "quotearg_free", scope: !541, file: !541, line: 837, type: !496, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3247)
!3247 = !{!3248, !3249}
!3248 = !DILocalVariable(name: "sv", scope: !3246, file: !541, line: 839, type: !630)
!3249 = !DILocalVariable(name: "i", scope: !3250, file: !541, line: 840, type: !78)
!3250 = distinct !DILexicalBlock(scope: !3246, file: !541, line: 840, column: 3)
!3251 = !DILocation(line: 839, column: 24, scope: !3246)
!3252 = !DILocation(line: 0, scope: !3246)
!3253 = !DILocation(line: 0, scope: !3250)
!3254 = !DILocation(line: 840, column: 21, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3250, file: !541, line: 840, column: 3)
!3256 = !DILocation(line: 840, column: 3, scope: !3250)
!3257 = !DILocation(line: 842, column: 13, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3246, file: !541, line: 842, column: 7)
!3259 = !{!3260, !853, i64 8}
!3260 = !{!"slotvec", !1146, i64 0, !853, i64 8}
!3261 = !DILocation(line: 842, column: 17, scope: !3258)
!3262 = !DILocation(line: 842, column: 7, scope: !3246)
!3263 = !DILocation(line: 841, column: 17, scope: !3255)
!3264 = !DILocation(line: 841, column: 5, scope: !3255)
!3265 = !DILocation(line: 840, column: 32, scope: !3255)
!3266 = distinct !{!3266, !3256, !3267, !968}
!3267 = !DILocation(line: 841, column: 20, scope: !3250)
!3268 = !DILocation(line: 844, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3258, file: !541, line: 843, column: 5)
!3270 = !DILocation(line: 845, column: 21, scope: !3269)
!3271 = !{!3260, !1146, i64 0}
!3272 = !DILocation(line: 846, column: 20, scope: !3269)
!3273 = !DILocation(line: 847, column: 5, scope: !3269)
!3274 = !DILocation(line: 848, column: 10, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3246, file: !541, line: 848, column: 7)
!3276 = !DILocation(line: 848, column: 7, scope: !3246)
!3277 = !DILocation(line: 850, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3275, file: !541, line: 849, column: 5)
!3279 = !DILocation(line: 851, column: 15, scope: !3278)
!3280 = !DILocation(line: 852, column: 5, scope: !3278)
!3281 = !DILocation(line: 853, column: 10, scope: !3246)
!3282 = !DILocation(line: 854, column: 1, scope: !3246)
!3283 = distinct !DISubprogram(name: "quotearg_n", scope: !541, file: !541, line: 919, type: !1035, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3284)
!3284 = !{!3285, !3286}
!3285 = !DILocalVariable(name: "n", arg: 1, scope: !3283, file: !541, line: 919, type: !78)
!3286 = !DILocalVariable(name: "arg", arg: 2, scope: !3283, file: !541, line: 919, type: !138)
!3287 = !DILocation(line: 0, scope: !3283)
!3288 = !DILocation(line: 921, column: 10, scope: !3283)
!3289 = !DILocation(line: 921, column: 3, scope: !3283)
!3290 = distinct !DISubprogram(name: "quotearg_n_options", scope: !541, file: !541, line: 866, type: !3291, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!132, !78, !138, !135, !2518}
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3304, !3305, !3307, !3308, !3309}
!3294 = !DILocalVariable(name: "n", arg: 1, scope: !3290, file: !541, line: 866, type: !78)
!3295 = !DILocalVariable(name: "arg", arg: 2, scope: !3290, file: !541, line: 866, type: !138)
!3296 = !DILocalVariable(name: "argsize", arg: 3, scope: !3290, file: !541, line: 866, type: !135)
!3297 = !DILocalVariable(name: "options", arg: 4, scope: !3290, file: !541, line: 867, type: !2518)
!3298 = !DILocalVariable(name: "saved_errno", scope: !3290, file: !541, line: 869, type: !78)
!3299 = !DILocalVariable(name: "sv", scope: !3290, file: !541, line: 871, type: !630)
!3300 = !DILocalVariable(name: "nslots_max", scope: !3290, file: !541, line: 873, type: !78)
!3301 = !DILocalVariable(name: "preallocated", scope: !3302, file: !541, line: 879, type: !172)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !541, line: 878, column: 5)
!3303 = distinct !DILexicalBlock(scope: !3290, file: !541, line: 877, column: 7)
!3304 = !DILocalVariable(name: "new_nslots", scope: !3302, file: !541, line: 880, type: !805)
!3305 = !DILocalVariable(name: "size", scope: !3306, file: !541, line: 891, type: !135)
!3306 = distinct !DILexicalBlock(scope: !3290, file: !541, line: 890, column: 3)
!3307 = !DILocalVariable(name: "val", scope: !3306, file: !541, line: 892, type: !132)
!3308 = !DILocalVariable(name: "flags", scope: !3306, file: !541, line: 894, type: !78)
!3309 = !DILocalVariable(name: "qsize", scope: !3306, file: !541, line: 895, type: !135)
!3310 = distinct !DIAssignID()
!3311 = !DILocation(line: 0, scope: !3302)
!3312 = !DILocation(line: 0, scope: !3290)
!3313 = !DILocation(line: 869, column: 21, scope: !3290)
!3314 = !DILocation(line: 871, column: 24, scope: !3290)
!3315 = !DILocation(line: 874, column: 17, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3290, file: !541, line: 874, column: 7)
!3317 = !DILocation(line: 875, column: 5, scope: !3316)
!3318 = !DILocation(line: 877, column: 7, scope: !3303)
!3319 = !DILocation(line: 877, column: 14, scope: !3303)
!3320 = !DILocation(line: 877, column: 7, scope: !3290)
!3321 = !DILocation(line: 879, column: 31, scope: !3302)
!3322 = !DILocation(line: 880, column: 7, scope: !3302)
!3323 = !DILocation(line: 880, column: 26, scope: !3302)
!3324 = !DILocation(line: 880, column: 13, scope: !3302)
!3325 = distinct !DIAssignID()
!3326 = !DILocation(line: 882, column: 31, scope: !3302)
!3327 = !DILocation(line: 883, column: 33, scope: !3302)
!3328 = !DILocation(line: 883, column: 42, scope: !3302)
!3329 = !DILocation(line: 883, column: 31, scope: !3302)
!3330 = !DILocation(line: 882, column: 22, scope: !3302)
!3331 = !DILocation(line: 882, column: 15, scope: !3302)
!3332 = !DILocation(line: 884, column: 11, scope: !3302)
!3333 = !DILocation(line: 885, column: 15, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3302, file: !541, line: 884, column: 11)
!3335 = !{i64 0, i64 8, !1145, i64 8, i64 8, !852}
!3336 = !DILocation(line: 885, column: 9, scope: !3334)
!3337 = !DILocation(line: 886, column: 20, scope: !3302)
!3338 = !DILocation(line: 886, column: 18, scope: !3302)
!3339 = !DILocation(line: 886, column: 32, scope: !3302)
!3340 = !DILocation(line: 886, column: 43, scope: !3302)
!3341 = !DILocation(line: 886, column: 53, scope: !3302)
!3342 = !DILocation(line: 0, scope: !2735, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 886, column: 7, scope: !3302)
!3344 = !DILocation(line: 59, column: 10, scope: !2735, inlinedAt: !3343)
!3345 = !DILocation(line: 887, column: 16, scope: !3302)
!3346 = !DILocation(line: 887, column: 14, scope: !3302)
!3347 = !DILocation(line: 888, column: 5, scope: !3303)
!3348 = !DILocation(line: 888, column: 5, scope: !3302)
!3349 = !DILocation(line: 891, column: 19, scope: !3306)
!3350 = !DILocation(line: 891, column: 25, scope: !3306)
!3351 = !DILocation(line: 0, scope: !3306)
!3352 = !DILocation(line: 892, column: 23, scope: !3306)
!3353 = !DILocation(line: 894, column: 26, scope: !3306)
!3354 = !DILocation(line: 894, column: 32, scope: !3306)
!3355 = !DILocation(line: 896, column: 55, scope: !3306)
!3356 = !DILocation(line: 897, column: 55, scope: !3306)
!3357 = !DILocation(line: 898, column: 55, scope: !3306)
!3358 = !DILocation(line: 899, column: 55, scope: !3306)
!3359 = !DILocation(line: 895, column: 20, scope: !3306)
!3360 = !DILocation(line: 901, column: 14, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3306, file: !541, line: 901, column: 9)
!3362 = !DILocation(line: 901, column: 9, scope: !3306)
!3363 = !DILocation(line: 903, column: 35, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3361, file: !541, line: 902, column: 7)
!3365 = !DILocation(line: 903, column: 20, scope: !3364)
!3366 = !DILocation(line: 904, column: 17, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3364, file: !541, line: 904, column: 13)
!3368 = !DILocation(line: 904, column: 13, scope: !3364)
!3369 = !DILocation(line: 905, column: 11, scope: !3367)
!3370 = !DILocation(line: 906, column: 27, scope: !3364)
!3371 = !DILocation(line: 906, column: 19, scope: !3364)
!3372 = !DILocation(line: 907, column: 69, scope: !3364)
!3373 = !DILocation(line: 909, column: 44, scope: !3364)
!3374 = !DILocation(line: 910, column: 44, scope: !3364)
!3375 = !DILocation(line: 907, column: 9, scope: !3364)
!3376 = !DILocation(line: 911, column: 7, scope: !3364)
!3377 = !DILocation(line: 913, column: 11, scope: !3306)
!3378 = !DILocation(line: 914, column: 5, scope: !3306)
!3379 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !541, file: !541, line: 925, type: !3380, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!132, !78, !138, !135}
!3382 = !{!3383, !3384, !3385}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !541, line: 925, type: !78)
!3384 = !DILocalVariable(name: "arg", arg: 2, scope: !3379, file: !541, line: 925, type: !138)
!3385 = !DILocalVariable(name: "argsize", arg: 3, scope: !3379, file: !541, line: 925, type: !135)
!3386 = !DILocation(line: 0, scope: !3379)
!3387 = !DILocation(line: 927, column: 10, scope: !3379)
!3388 = !DILocation(line: 927, column: 3, scope: !3379)
!3389 = distinct !DISubprogram(name: "quotearg", scope: !541, file: !541, line: 931, type: !1044, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3390)
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "arg", arg: 1, scope: !3389, file: !541, line: 931, type: !138)
!3392 = !DILocation(line: 0, scope: !3389)
!3393 = !DILocation(line: 0, scope: !3283, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 933, column: 10, scope: !3389)
!3395 = !DILocation(line: 921, column: 10, scope: !3283, inlinedAt: !3394)
!3396 = !DILocation(line: 933, column: 3, scope: !3389)
!3397 = distinct !DISubprogram(name: "quotearg_mem", scope: !541, file: !541, line: 937, type: !3398, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!132, !138, !135}
!3400 = !{!3401, !3402}
!3401 = !DILocalVariable(name: "arg", arg: 1, scope: !3397, file: !541, line: 937, type: !138)
!3402 = !DILocalVariable(name: "argsize", arg: 2, scope: !3397, file: !541, line: 937, type: !135)
!3403 = !DILocation(line: 0, scope: !3397)
!3404 = !DILocation(line: 0, scope: !3379, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 939, column: 10, scope: !3397)
!3406 = !DILocation(line: 927, column: 10, scope: !3379, inlinedAt: !3405)
!3407 = !DILocation(line: 939, column: 3, scope: !3397)
!3408 = distinct !DISubprogram(name: "quotearg_n_style", scope: !541, file: !541, line: 943, type: !3409, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!132, !78, !567, !138}
!3411 = !{!3412, !3413, !3414, !3415}
!3412 = !DILocalVariable(name: "n", arg: 1, scope: !3408, file: !541, line: 943, type: !78)
!3413 = !DILocalVariable(name: "s", arg: 2, scope: !3408, file: !541, line: 943, type: !567)
!3414 = !DILocalVariable(name: "arg", arg: 3, scope: !3408, file: !541, line: 943, type: !138)
!3415 = !DILocalVariable(name: "o", scope: !3408, file: !541, line: 945, type: !2519)
!3416 = distinct !DIAssignID()
!3417 = !DILocation(line: 0, scope: !3408)
!3418 = !DILocation(line: 945, column: 3, scope: !3408)
!3419 = !{!3420}
!3420 = distinct !{!3420, !3421, !"quoting_options_from_style: argument 0"}
!3421 = distinct !{!3421, !"quoting_options_from_style"}
!3422 = !DILocation(line: 945, column: 36, scope: !3408)
!3423 = !DILocalVariable(name: "style", arg: 1, scope: !3424, file: !541, line: 183, type: !567)
!3424 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !541, file: !541, line: 183, type: !3425, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!582, !567}
!3427 = !{!3423, !3428}
!3428 = !DILocalVariable(name: "o", scope: !3424, file: !541, line: 185, type: !582)
!3429 = !DILocation(line: 0, scope: !3424, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 945, column: 36, scope: !3408)
!3431 = !DILocation(line: 185, column: 26, scope: !3424, inlinedAt: !3430)
!3432 = distinct !DIAssignID()
!3433 = !DILocation(line: 186, column: 13, scope: !3434, inlinedAt: !3430)
!3434 = distinct !DILexicalBlock(scope: !3424, file: !541, line: 186, column: 7)
!3435 = !DILocation(line: 186, column: 7, scope: !3424, inlinedAt: !3430)
!3436 = !DILocation(line: 187, column: 5, scope: !3434, inlinedAt: !3430)
!3437 = !DILocation(line: 188, column: 11, scope: !3424, inlinedAt: !3430)
!3438 = distinct !DIAssignID()
!3439 = !DILocation(line: 946, column: 10, scope: !3408)
!3440 = !DILocation(line: 947, column: 1, scope: !3408)
!3441 = !DILocation(line: 946, column: 3, scope: !3408)
!3442 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !541, file: !541, line: 950, type: !3443, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!132, !78, !567, !138, !135}
!3445 = !{!3446, !3447, !3448, !3449, !3450}
!3446 = !DILocalVariable(name: "n", arg: 1, scope: !3442, file: !541, line: 950, type: !78)
!3447 = !DILocalVariable(name: "s", arg: 2, scope: !3442, file: !541, line: 950, type: !567)
!3448 = !DILocalVariable(name: "arg", arg: 3, scope: !3442, file: !541, line: 951, type: !138)
!3449 = !DILocalVariable(name: "argsize", arg: 4, scope: !3442, file: !541, line: 951, type: !135)
!3450 = !DILocalVariable(name: "o", scope: !3442, file: !541, line: 953, type: !2519)
!3451 = distinct !DIAssignID()
!3452 = !DILocation(line: 0, scope: !3442)
!3453 = !DILocation(line: 953, column: 3, scope: !3442)
!3454 = !{!3455}
!3455 = distinct !{!3455, !3456, !"quoting_options_from_style: argument 0"}
!3456 = distinct !{!3456, !"quoting_options_from_style"}
!3457 = !DILocation(line: 953, column: 36, scope: !3442)
!3458 = !DILocation(line: 0, scope: !3424, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 953, column: 36, scope: !3442)
!3460 = !DILocation(line: 185, column: 26, scope: !3424, inlinedAt: !3459)
!3461 = distinct !DIAssignID()
!3462 = !DILocation(line: 186, column: 13, scope: !3434, inlinedAt: !3459)
!3463 = !DILocation(line: 186, column: 7, scope: !3424, inlinedAt: !3459)
!3464 = !DILocation(line: 187, column: 5, scope: !3434, inlinedAt: !3459)
!3465 = !DILocation(line: 188, column: 11, scope: !3424, inlinedAt: !3459)
!3466 = distinct !DIAssignID()
!3467 = !DILocation(line: 954, column: 10, scope: !3442)
!3468 = !DILocation(line: 955, column: 1, scope: !3442)
!3469 = !DILocation(line: 954, column: 3, scope: !3442)
!3470 = distinct !DISubprogram(name: "quotearg_style", scope: !541, file: !541, line: 958, type: !3471, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!132, !567, !138}
!3473 = !{!3474, !3475}
!3474 = !DILocalVariable(name: "s", arg: 1, scope: !3470, file: !541, line: 958, type: !567)
!3475 = !DILocalVariable(name: "arg", arg: 2, scope: !3470, file: !541, line: 958, type: !138)
!3476 = distinct !DIAssignID()
!3477 = !DILocation(line: 0, scope: !3470)
!3478 = !DILocation(line: 0, scope: !3408, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 960, column: 10, scope: !3470)
!3480 = !DILocation(line: 945, column: 3, scope: !3408, inlinedAt: !3479)
!3481 = !{!3482}
!3482 = distinct !{!3482, !3483, !"quoting_options_from_style: argument 0"}
!3483 = distinct !{!3483, !"quoting_options_from_style"}
!3484 = !DILocation(line: 945, column: 36, scope: !3408, inlinedAt: !3479)
!3485 = !DILocation(line: 0, scope: !3424, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 945, column: 36, scope: !3408, inlinedAt: !3479)
!3487 = !DILocation(line: 185, column: 26, scope: !3424, inlinedAt: !3486)
!3488 = distinct !DIAssignID()
!3489 = !DILocation(line: 186, column: 13, scope: !3434, inlinedAt: !3486)
!3490 = !DILocation(line: 186, column: 7, scope: !3424, inlinedAt: !3486)
!3491 = !DILocation(line: 187, column: 5, scope: !3434, inlinedAt: !3486)
!3492 = !DILocation(line: 188, column: 11, scope: !3424, inlinedAt: !3486)
!3493 = distinct !DIAssignID()
!3494 = !DILocation(line: 946, column: 10, scope: !3408, inlinedAt: !3479)
!3495 = !DILocation(line: 947, column: 1, scope: !3408, inlinedAt: !3479)
!3496 = !DILocation(line: 960, column: 3, scope: !3470)
!3497 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !541, file: !541, line: 964, type: !3498, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!132, !567, !138, !135}
!3500 = !{!3501, !3502, !3503}
!3501 = !DILocalVariable(name: "s", arg: 1, scope: !3497, file: !541, line: 964, type: !567)
!3502 = !DILocalVariable(name: "arg", arg: 2, scope: !3497, file: !541, line: 964, type: !138)
!3503 = !DILocalVariable(name: "argsize", arg: 3, scope: !3497, file: !541, line: 964, type: !135)
!3504 = distinct !DIAssignID()
!3505 = !DILocation(line: 0, scope: !3497)
!3506 = !DILocation(line: 0, scope: !3442, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 966, column: 10, scope: !3497)
!3508 = !DILocation(line: 953, column: 3, scope: !3442, inlinedAt: !3507)
!3509 = !{!3510}
!3510 = distinct !{!3510, !3511, !"quoting_options_from_style: argument 0"}
!3511 = distinct !{!3511, !"quoting_options_from_style"}
!3512 = !DILocation(line: 953, column: 36, scope: !3442, inlinedAt: !3507)
!3513 = !DILocation(line: 0, scope: !3424, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 953, column: 36, scope: !3442, inlinedAt: !3507)
!3515 = !DILocation(line: 185, column: 26, scope: !3424, inlinedAt: !3514)
!3516 = distinct !DIAssignID()
!3517 = !DILocation(line: 186, column: 13, scope: !3434, inlinedAt: !3514)
!3518 = !DILocation(line: 186, column: 7, scope: !3424, inlinedAt: !3514)
!3519 = !DILocation(line: 187, column: 5, scope: !3434, inlinedAt: !3514)
!3520 = !DILocation(line: 188, column: 11, scope: !3424, inlinedAt: !3514)
!3521 = distinct !DIAssignID()
!3522 = !DILocation(line: 954, column: 10, scope: !3442, inlinedAt: !3507)
!3523 = !DILocation(line: 955, column: 1, scope: !3442, inlinedAt: !3507)
!3524 = !DILocation(line: 966, column: 3, scope: !3497)
!3525 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !541, file: !541, line: 970, type: !3526, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!132, !138, !135, !4}
!3528 = !{!3529, !3530, !3531, !3532}
!3529 = !DILocalVariable(name: "arg", arg: 1, scope: !3525, file: !541, line: 970, type: !138)
!3530 = !DILocalVariable(name: "argsize", arg: 2, scope: !3525, file: !541, line: 970, type: !135)
!3531 = !DILocalVariable(name: "ch", arg: 3, scope: !3525, file: !541, line: 970, type: !4)
!3532 = !DILocalVariable(name: "options", scope: !3525, file: !541, line: 972, type: !582)
!3533 = distinct !DIAssignID()
!3534 = !DILocation(line: 0, scope: !3525)
!3535 = !DILocation(line: 972, column: 3, scope: !3525)
!3536 = !DILocation(line: 973, column: 13, scope: !3525)
!3537 = !{i64 0, i64 4, !921, i64 4, i64 4, !921, i64 8, i64 32, !930, i64 40, i64 8, !852, i64 48, i64 8, !852}
!3538 = distinct !DIAssignID()
!3539 = !DILocation(line: 0, scope: !2538, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 974, column: 3, scope: !3525)
!3541 = !DILocation(line: 147, column: 41, scope: !2538, inlinedAt: !3540)
!3542 = !DILocation(line: 147, column: 62, scope: !2538, inlinedAt: !3540)
!3543 = !DILocation(line: 147, column: 57, scope: !2538, inlinedAt: !3540)
!3544 = !DILocation(line: 148, column: 15, scope: !2538, inlinedAt: !3540)
!3545 = !DILocation(line: 149, column: 21, scope: !2538, inlinedAt: !3540)
!3546 = !DILocation(line: 149, column: 24, scope: !2538, inlinedAt: !3540)
!3547 = !DILocation(line: 150, column: 19, scope: !2538, inlinedAt: !3540)
!3548 = !DILocation(line: 150, column: 24, scope: !2538, inlinedAt: !3540)
!3549 = !DILocation(line: 150, column: 6, scope: !2538, inlinedAt: !3540)
!3550 = !DILocation(line: 975, column: 10, scope: !3525)
!3551 = !DILocation(line: 976, column: 1, scope: !3525)
!3552 = !DILocation(line: 975, column: 3, scope: !3525)
!3553 = distinct !DISubprogram(name: "quotearg_char", scope: !541, file: !541, line: 979, type: !3554, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!132, !138, !4}
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "arg", arg: 1, scope: !3553, file: !541, line: 979, type: !138)
!3558 = !DILocalVariable(name: "ch", arg: 2, scope: !3553, file: !541, line: 979, type: !4)
!3559 = distinct !DIAssignID()
!3560 = !DILocation(line: 0, scope: !3553)
!3561 = !DILocation(line: 0, scope: !3525, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 981, column: 10, scope: !3553)
!3563 = !DILocation(line: 972, column: 3, scope: !3525, inlinedAt: !3562)
!3564 = !DILocation(line: 973, column: 13, scope: !3525, inlinedAt: !3562)
!3565 = distinct !DIAssignID()
!3566 = !DILocation(line: 0, scope: !2538, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 974, column: 3, scope: !3525, inlinedAt: !3562)
!3568 = !DILocation(line: 147, column: 41, scope: !2538, inlinedAt: !3567)
!3569 = !DILocation(line: 147, column: 62, scope: !2538, inlinedAt: !3567)
!3570 = !DILocation(line: 147, column: 57, scope: !2538, inlinedAt: !3567)
!3571 = !DILocation(line: 148, column: 15, scope: !2538, inlinedAt: !3567)
!3572 = !DILocation(line: 149, column: 21, scope: !2538, inlinedAt: !3567)
!3573 = !DILocation(line: 149, column: 24, scope: !2538, inlinedAt: !3567)
!3574 = !DILocation(line: 150, column: 19, scope: !2538, inlinedAt: !3567)
!3575 = !DILocation(line: 150, column: 24, scope: !2538, inlinedAt: !3567)
!3576 = !DILocation(line: 150, column: 6, scope: !2538, inlinedAt: !3567)
!3577 = !DILocation(line: 975, column: 10, scope: !3525, inlinedAt: !3562)
!3578 = !DILocation(line: 976, column: 1, scope: !3525, inlinedAt: !3562)
!3579 = !DILocation(line: 981, column: 3, scope: !3553)
!3580 = distinct !DISubprogram(name: "quotearg_colon", scope: !541, file: !541, line: 985, type: !1044, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3581)
!3581 = !{!3582}
!3582 = !DILocalVariable(name: "arg", arg: 1, scope: !3580, file: !541, line: 985, type: !138)
!3583 = distinct !DIAssignID()
!3584 = !DILocation(line: 0, scope: !3580)
!3585 = !DILocation(line: 0, scope: !3553, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 987, column: 10, scope: !3580)
!3587 = !DILocation(line: 0, scope: !3525, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 981, column: 10, scope: !3553, inlinedAt: !3586)
!3589 = !DILocation(line: 972, column: 3, scope: !3525, inlinedAt: !3588)
!3590 = !DILocation(line: 973, column: 13, scope: !3525, inlinedAt: !3588)
!3591 = distinct !DIAssignID()
!3592 = !DILocation(line: 0, scope: !2538, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 974, column: 3, scope: !3525, inlinedAt: !3588)
!3594 = !DILocation(line: 147, column: 57, scope: !2538, inlinedAt: !3593)
!3595 = !DILocation(line: 149, column: 21, scope: !2538, inlinedAt: !3593)
!3596 = !DILocation(line: 150, column: 6, scope: !2538, inlinedAt: !3593)
!3597 = !DILocation(line: 975, column: 10, scope: !3525, inlinedAt: !3588)
!3598 = !DILocation(line: 976, column: 1, scope: !3525, inlinedAt: !3588)
!3599 = !DILocation(line: 987, column: 3, scope: !3580)
!3600 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !541, file: !541, line: 991, type: !3398, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3601)
!3601 = !{!3602, !3603}
!3602 = !DILocalVariable(name: "arg", arg: 1, scope: !3600, file: !541, line: 991, type: !138)
!3603 = !DILocalVariable(name: "argsize", arg: 2, scope: !3600, file: !541, line: 991, type: !135)
!3604 = distinct !DIAssignID()
!3605 = !DILocation(line: 0, scope: !3600)
!3606 = !DILocation(line: 0, scope: !3525, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 993, column: 10, scope: !3600)
!3608 = !DILocation(line: 972, column: 3, scope: !3525, inlinedAt: !3607)
!3609 = !DILocation(line: 973, column: 13, scope: !3525, inlinedAt: !3607)
!3610 = distinct !DIAssignID()
!3611 = !DILocation(line: 0, scope: !2538, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 974, column: 3, scope: !3525, inlinedAt: !3607)
!3613 = !DILocation(line: 147, column: 57, scope: !2538, inlinedAt: !3612)
!3614 = !DILocation(line: 149, column: 21, scope: !2538, inlinedAt: !3612)
!3615 = !DILocation(line: 150, column: 6, scope: !2538, inlinedAt: !3612)
!3616 = !DILocation(line: 975, column: 10, scope: !3525, inlinedAt: !3607)
!3617 = !DILocation(line: 976, column: 1, scope: !3525, inlinedAt: !3607)
!3618 = !DILocation(line: 993, column: 3, scope: !3600)
!3619 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !541, file: !541, line: 997, type: !3409, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3620)
!3620 = !{!3621, !3622, !3623, !3624}
!3621 = !DILocalVariable(name: "n", arg: 1, scope: !3619, file: !541, line: 997, type: !78)
!3622 = !DILocalVariable(name: "s", arg: 2, scope: !3619, file: !541, line: 997, type: !567)
!3623 = !DILocalVariable(name: "arg", arg: 3, scope: !3619, file: !541, line: 997, type: !138)
!3624 = !DILocalVariable(name: "options", scope: !3619, file: !541, line: 999, type: !582)
!3625 = distinct !DIAssignID()
!3626 = !DILocation(line: 0, scope: !3619)
!3627 = !DILocation(line: 185, column: 26, scope: !3424, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 1000, column: 13, scope: !3619)
!3629 = !DILocation(line: 999, column: 3, scope: !3619)
!3630 = !DILocation(line: 0, scope: !3424, inlinedAt: !3628)
!3631 = !DILocation(line: 186, column: 13, scope: !3434, inlinedAt: !3628)
!3632 = !DILocation(line: 186, column: 7, scope: !3424, inlinedAt: !3628)
!3633 = !DILocation(line: 187, column: 5, scope: !3434, inlinedAt: !3628)
!3634 = !{!3635}
!3635 = distinct !{!3635, !3636, !"quoting_options_from_style: argument 0"}
!3636 = distinct !{!3636, !"quoting_options_from_style"}
!3637 = !DILocation(line: 1000, column: 13, scope: !3619)
!3638 = distinct !DIAssignID()
!3639 = distinct !DIAssignID()
!3640 = !DILocation(line: 0, scope: !2538, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 1001, column: 3, scope: !3619)
!3642 = !DILocation(line: 147, column: 57, scope: !2538, inlinedAt: !3641)
!3643 = !DILocation(line: 149, column: 21, scope: !2538, inlinedAt: !3641)
!3644 = !DILocation(line: 150, column: 6, scope: !2538, inlinedAt: !3641)
!3645 = distinct !DIAssignID()
!3646 = !DILocation(line: 1002, column: 10, scope: !3619)
!3647 = !DILocation(line: 1003, column: 1, scope: !3619)
!3648 = !DILocation(line: 1002, column: 3, scope: !3619)
!3649 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !541, file: !541, line: 1006, type: !3650, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!132, !78, !138, !138, !138}
!3652 = !{!3653, !3654, !3655, !3656}
!3653 = !DILocalVariable(name: "n", arg: 1, scope: !3649, file: !541, line: 1006, type: !78)
!3654 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3649, file: !541, line: 1006, type: !138)
!3655 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3649, file: !541, line: 1007, type: !138)
!3656 = !DILocalVariable(name: "arg", arg: 4, scope: !3649, file: !541, line: 1007, type: !138)
!3657 = distinct !DIAssignID()
!3658 = !DILocation(line: 0, scope: !3649)
!3659 = !DILocalVariable(name: "o", scope: !3660, file: !541, line: 1018, type: !582)
!3660 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !541, file: !541, line: 1014, type: !3661, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!132, !78, !138, !138, !138, !135}
!3663 = !{!3664, !3665, !3666, !3667, !3668, !3659}
!3664 = !DILocalVariable(name: "n", arg: 1, scope: !3660, file: !541, line: 1014, type: !78)
!3665 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3660, file: !541, line: 1014, type: !138)
!3666 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3660, file: !541, line: 1015, type: !138)
!3667 = !DILocalVariable(name: "arg", arg: 4, scope: !3660, file: !541, line: 1016, type: !138)
!3668 = !DILocalVariable(name: "argsize", arg: 5, scope: !3660, file: !541, line: 1016, type: !135)
!3669 = !DILocation(line: 0, scope: !3660, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1009, column: 10, scope: !3649)
!3671 = !DILocation(line: 1018, column: 3, scope: !3660, inlinedAt: !3670)
!3672 = !DILocation(line: 1018, column: 30, scope: !3660, inlinedAt: !3670)
!3673 = distinct !DIAssignID()
!3674 = distinct !DIAssignID()
!3675 = !DILocation(line: 0, scope: !2578, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 1019, column: 3, scope: !3660, inlinedAt: !3670)
!3677 = !DILocation(line: 174, column: 12, scope: !2578, inlinedAt: !3676)
!3678 = distinct !DIAssignID()
!3679 = !DILocation(line: 175, column: 8, scope: !2591, inlinedAt: !3676)
!3680 = !DILocation(line: 175, column: 19, scope: !2591, inlinedAt: !3676)
!3681 = !DILocation(line: 176, column: 5, scope: !2591, inlinedAt: !3676)
!3682 = !DILocation(line: 177, column: 6, scope: !2578, inlinedAt: !3676)
!3683 = !DILocation(line: 177, column: 17, scope: !2578, inlinedAt: !3676)
!3684 = distinct !DIAssignID()
!3685 = !DILocation(line: 178, column: 6, scope: !2578, inlinedAt: !3676)
!3686 = !DILocation(line: 178, column: 18, scope: !2578, inlinedAt: !3676)
!3687 = distinct !DIAssignID()
!3688 = !DILocation(line: 1020, column: 10, scope: !3660, inlinedAt: !3670)
!3689 = !DILocation(line: 1021, column: 1, scope: !3660, inlinedAt: !3670)
!3690 = !DILocation(line: 1009, column: 3, scope: !3649)
!3691 = distinct !DIAssignID()
!3692 = !DILocation(line: 0, scope: !3660)
!3693 = !DILocation(line: 1018, column: 3, scope: !3660)
!3694 = !DILocation(line: 1018, column: 30, scope: !3660)
!3695 = distinct !DIAssignID()
!3696 = distinct !DIAssignID()
!3697 = !DILocation(line: 0, scope: !2578, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 1019, column: 3, scope: !3660)
!3699 = !DILocation(line: 174, column: 12, scope: !2578, inlinedAt: !3698)
!3700 = distinct !DIAssignID()
!3701 = !DILocation(line: 175, column: 8, scope: !2591, inlinedAt: !3698)
!3702 = !DILocation(line: 175, column: 19, scope: !2591, inlinedAt: !3698)
!3703 = !DILocation(line: 176, column: 5, scope: !2591, inlinedAt: !3698)
!3704 = !DILocation(line: 177, column: 6, scope: !2578, inlinedAt: !3698)
!3705 = !DILocation(line: 177, column: 17, scope: !2578, inlinedAt: !3698)
!3706 = distinct !DIAssignID()
!3707 = !DILocation(line: 178, column: 6, scope: !2578, inlinedAt: !3698)
!3708 = !DILocation(line: 178, column: 18, scope: !2578, inlinedAt: !3698)
!3709 = distinct !DIAssignID()
!3710 = !DILocation(line: 1020, column: 10, scope: !3660)
!3711 = !DILocation(line: 1021, column: 1, scope: !3660)
!3712 = !DILocation(line: 1020, column: 3, scope: !3660)
!3713 = distinct !DISubprogram(name: "quotearg_custom", scope: !541, file: !541, line: 1024, type: !3714, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!132, !138, !138, !138}
!3716 = !{!3717, !3718, !3719}
!3717 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3713, file: !541, line: 1024, type: !138)
!3718 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3713, file: !541, line: 1024, type: !138)
!3719 = !DILocalVariable(name: "arg", arg: 3, scope: !3713, file: !541, line: 1025, type: !138)
!3720 = distinct !DIAssignID()
!3721 = !DILocation(line: 0, scope: !3713)
!3722 = !DILocation(line: 0, scope: !3649, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 1027, column: 10, scope: !3713)
!3724 = !DILocation(line: 0, scope: !3660, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 1009, column: 10, scope: !3649, inlinedAt: !3723)
!3726 = !DILocation(line: 1018, column: 3, scope: !3660, inlinedAt: !3725)
!3727 = !DILocation(line: 1018, column: 30, scope: !3660, inlinedAt: !3725)
!3728 = distinct !DIAssignID()
!3729 = distinct !DIAssignID()
!3730 = !DILocation(line: 0, scope: !2578, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 1019, column: 3, scope: !3660, inlinedAt: !3725)
!3732 = !DILocation(line: 174, column: 12, scope: !2578, inlinedAt: !3731)
!3733 = distinct !DIAssignID()
!3734 = !DILocation(line: 175, column: 8, scope: !2591, inlinedAt: !3731)
!3735 = !DILocation(line: 175, column: 19, scope: !2591, inlinedAt: !3731)
!3736 = !DILocation(line: 176, column: 5, scope: !2591, inlinedAt: !3731)
!3737 = !DILocation(line: 177, column: 6, scope: !2578, inlinedAt: !3731)
!3738 = !DILocation(line: 177, column: 17, scope: !2578, inlinedAt: !3731)
!3739 = distinct !DIAssignID()
!3740 = !DILocation(line: 178, column: 6, scope: !2578, inlinedAt: !3731)
!3741 = !DILocation(line: 178, column: 18, scope: !2578, inlinedAt: !3731)
!3742 = distinct !DIAssignID()
!3743 = !DILocation(line: 1020, column: 10, scope: !3660, inlinedAt: !3725)
!3744 = !DILocation(line: 1021, column: 1, scope: !3660, inlinedAt: !3725)
!3745 = !DILocation(line: 1027, column: 3, scope: !3713)
!3746 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !541, file: !541, line: 1031, type: !3747, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!132, !138, !138, !138, !135}
!3749 = !{!3750, !3751, !3752, !3753}
!3750 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3746, file: !541, line: 1031, type: !138)
!3751 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3746, file: !541, line: 1031, type: !138)
!3752 = !DILocalVariable(name: "arg", arg: 3, scope: !3746, file: !541, line: 1032, type: !138)
!3753 = !DILocalVariable(name: "argsize", arg: 4, scope: !3746, file: !541, line: 1032, type: !135)
!3754 = distinct !DIAssignID()
!3755 = !DILocation(line: 0, scope: !3746)
!3756 = !DILocation(line: 0, scope: !3660, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 1034, column: 10, scope: !3746)
!3758 = !DILocation(line: 1018, column: 3, scope: !3660, inlinedAt: !3757)
!3759 = !DILocation(line: 1018, column: 30, scope: !3660, inlinedAt: !3757)
!3760 = distinct !DIAssignID()
!3761 = distinct !DIAssignID()
!3762 = !DILocation(line: 0, scope: !2578, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 1019, column: 3, scope: !3660, inlinedAt: !3757)
!3764 = !DILocation(line: 174, column: 12, scope: !2578, inlinedAt: !3763)
!3765 = distinct !DIAssignID()
!3766 = !DILocation(line: 175, column: 8, scope: !2591, inlinedAt: !3763)
!3767 = !DILocation(line: 175, column: 19, scope: !2591, inlinedAt: !3763)
!3768 = !DILocation(line: 176, column: 5, scope: !2591, inlinedAt: !3763)
!3769 = !DILocation(line: 177, column: 6, scope: !2578, inlinedAt: !3763)
!3770 = !DILocation(line: 177, column: 17, scope: !2578, inlinedAt: !3763)
!3771 = distinct !DIAssignID()
!3772 = !DILocation(line: 178, column: 6, scope: !2578, inlinedAt: !3763)
!3773 = !DILocation(line: 178, column: 18, scope: !2578, inlinedAt: !3763)
!3774 = distinct !DIAssignID()
!3775 = !DILocation(line: 1020, column: 10, scope: !3660, inlinedAt: !3757)
!3776 = !DILocation(line: 1021, column: 1, scope: !3660, inlinedAt: !3757)
!3777 = !DILocation(line: 1034, column: 3, scope: !3746)
!3778 = distinct !DISubprogram(name: "quote_n_mem", scope: !541, file: !541, line: 1049, type: !3779, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!138, !78, !138, !135}
!3781 = !{!3782, !3783, !3784}
!3782 = !DILocalVariable(name: "n", arg: 1, scope: !3778, file: !541, line: 1049, type: !78)
!3783 = !DILocalVariable(name: "arg", arg: 2, scope: !3778, file: !541, line: 1049, type: !138)
!3784 = !DILocalVariable(name: "argsize", arg: 3, scope: !3778, file: !541, line: 1049, type: !135)
!3785 = !DILocation(line: 0, scope: !3778)
!3786 = !DILocation(line: 1051, column: 10, scope: !3778)
!3787 = !DILocation(line: 1051, column: 3, scope: !3778)
!3788 = distinct !DISubprogram(name: "quote_mem", scope: !541, file: !541, line: 1055, type: !3789, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!138, !138, !135}
!3791 = !{!3792, !3793}
!3792 = !DILocalVariable(name: "arg", arg: 1, scope: !3788, file: !541, line: 1055, type: !138)
!3793 = !DILocalVariable(name: "argsize", arg: 2, scope: !3788, file: !541, line: 1055, type: !135)
!3794 = !DILocation(line: 0, scope: !3788)
!3795 = !DILocation(line: 0, scope: !3778, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 1057, column: 10, scope: !3788)
!3797 = !DILocation(line: 1051, column: 10, scope: !3778, inlinedAt: !3796)
!3798 = !DILocation(line: 1057, column: 3, scope: !3788)
!3799 = distinct !DISubprogram(name: "quote_n", scope: !541, file: !541, line: 1061, type: !3800, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!138, !78, !138}
!3802 = !{!3803, !3804}
!3803 = !DILocalVariable(name: "n", arg: 1, scope: !3799, file: !541, line: 1061, type: !78)
!3804 = !DILocalVariable(name: "arg", arg: 2, scope: !3799, file: !541, line: 1061, type: !138)
!3805 = !DILocation(line: 0, scope: !3799)
!3806 = !DILocation(line: 0, scope: !3778, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 1063, column: 10, scope: !3799)
!3808 = !DILocation(line: 1051, column: 10, scope: !3778, inlinedAt: !3807)
!3809 = !DILocation(line: 1063, column: 3, scope: !3799)
!3810 = distinct !DISubprogram(name: "quote", scope: !541, file: !541, line: 1067, type: !3811, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!138, !138}
!3813 = !{!3814}
!3814 = !DILocalVariable(name: "arg", arg: 1, scope: !3810, file: !541, line: 1067, type: !138)
!3815 = !DILocation(line: 0, scope: !3810)
!3816 = !DILocation(line: 0, scope: !3799, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 1069, column: 10, scope: !3810)
!3818 = !DILocation(line: 0, scope: !3778, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 1063, column: 10, scope: !3799, inlinedAt: !3817)
!3820 = !DILocation(line: 1051, column: 10, scope: !3778, inlinedAt: !3819)
!3821 = !DILocation(line: 1069, column: 3, scope: !3810)
!3822 = distinct !DISubprogram(name: "version_etc_arn", scope: !643, file: !643, line: 61, type: !3823, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3860)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3825, !138, !138, !138, !3859, !135}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !3827)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3827, file: !218, line: 51, baseType: !78, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3827, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3827, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3827, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3827, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3827, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3827, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3827, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3827, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3827, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3827, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3827, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3827, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3827, file: !218, line: 70, baseType: !3843, size: 64, offset: 832)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3827, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3827, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3827, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3827, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3827, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3827, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3827, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3827, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3827, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3827, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3827, file: !218, line: 93, baseType: !3843, size: 64, offset: 1344)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3827, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3827, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3827, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3827, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866}
!3861 = !DILocalVariable(name: "stream", arg: 1, scope: !3822, file: !643, line: 61, type: !3825)
!3862 = !DILocalVariable(name: "command_name", arg: 2, scope: !3822, file: !643, line: 62, type: !138)
!3863 = !DILocalVariable(name: "package", arg: 3, scope: !3822, file: !643, line: 62, type: !138)
!3864 = !DILocalVariable(name: "version", arg: 4, scope: !3822, file: !643, line: 63, type: !138)
!3865 = !DILocalVariable(name: "authors", arg: 5, scope: !3822, file: !643, line: 64, type: !3859)
!3866 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3822, file: !643, line: 64, type: !135)
!3867 = !DILocation(line: 0, scope: !3822)
!3868 = !DILocation(line: 66, column: 7, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3822, file: !643, line: 66, column: 7)
!3870 = !DILocation(line: 66, column: 7, scope: !3822)
!3871 = !DILocation(line: 67, column: 5, scope: !3869)
!3872 = !DILocation(line: 69, column: 5, scope: !3869)
!3873 = !DILocation(line: 83, column: 3, scope: !3822)
!3874 = !DILocation(line: 85, column: 3, scope: !3822)
!3875 = !DILocation(line: 88, column: 3, scope: !3822)
!3876 = !DILocation(line: 95, column: 3, scope: !3822)
!3877 = !DILocation(line: 97, column: 3, scope: !3822)
!3878 = !DILocation(line: 105, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3822, file: !643, line: 98, column: 5)
!3880 = !DILocation(line: 106, column: 7, scope: !3879)
!3881 = !DILocation(line: 109, column: 7, scope: !3879)
!3882 = !DILocation(line: 110, column: 7, scope: !3879)
!3883 = !DILocation(line: 113, column: 7, scope: !3879)
!3884 = !DILocation(line: 115, column: 7, scope: !3879)
!3885 = !DILocation(line: 120, column: 7, scope: !3879)
!3886 = !DILocation(line: 122, column: 7, scope: !3879)
!3887 = !DILocation(line: 127, column: 7, scope: !3879)
!3888 = !DILocation(line: 129, column: 7, scope: !3879)
!3889 = !DILocation(line: 134, column: 7, scope: !3879)
!3890 = !DILocation(line: 137, column: 7, scope: !3879)
!3891 = !DILocation(line: 142, column: 7, scope: !3879)
!3892 = !DILocation(line: 145, column: 7, scope: !3879)
!3893 = !DILocation(line: 150, column: 7, scope: !3879)
!3894 = !DILocation(line: 154, column: 7, scope: !3879)
!3895 = !DILocation(line: 159, column: 7, scope: !3879)
!3896 = !DILocation(line: 163, column: 7, scope: !3879)
!3897 = !DILocation(line: 170, column: 7, scope: !3879)
!3898 = !DILocation(line: 174, column: 7, scope: !3879)
!3899 = !DILocation(line: 176, column: 1, scope: !3822)
!3900 = distinct !DISubprogram(name: "version_etc_ar", scope: !643, file: !643, line: 183, type: !3901, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3903)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3825, !138, !138, !138, !3859}
!3903 = !{!3904, !3905, !3906, !3907, !3908, !3909}
!3904 = !DILocalVariable(name: "stream", arg: 1, scope: !3900, file: !643, line: 183, type: !3825)
!3905 = !DILocalVariable(name: "command_name", arg: 2, scope: !3900, file: !643, line: 184, type: !138)
!3906 = !DILocalVariable(name: "package", arg: 3, scope: !3900, file: !643, line: 184, type: !138)
!3907 = !DILocalVariable(name: "version", arg: 4, scope: !3900, file: !643, line: 185, type: !138)
!3908 = !DILocalVariable(name: "authors", arg: 5, scope: !3900, file: !643, line: 185, type: !3859)
!3909 = !DILocalVariable(name: "n_authors", scope: !3900, file: !643, line: 187, type: !135)
!3910 = !DILocation(line: 0, scope: !3900)
!3911 = !DILocation(line: 189, column: 8, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3900, file: !643, line: 189, column: 3)
!3913 = !DILocation(line: 189, scope: !3912)
!3914 = !DILocation(line: 189, column: 23, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3912, file: !643, line: 189, column: 3)
!3916 = !DILocation(line: 189, column: 3, scope: !3912)
!3917 = !DILocation(line: 189, column: 52, scope: !3915)
!3918 = distinct !{!3918, !3916, !3919, !968}
!3919 = !DILocation(line: 190, column: 5, scope: !3912)
!3920 = !DILocation(line: 191, column: 3, scope: !3900)
!3921 = !DILocation(line: 192, column: 1, scope: !3900)
!3922 = distinct !DISubprogram(name: "version_etc_va", scope: !643, file: !643, line: 199, type: !3923, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3935)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{null, !3825, !138, !138, !138, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !456, line: 52, baseType: !3926)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !458, line: 12, baseType: !3927)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !643, baseType: !3928)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3928, file: !643, line: 192, baseType: !133, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3928, file: !643, line: 192, baseType: !133, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3928, file: !643, line: 192, baseType: !133, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3928, file: !643, line: 192, baseType: !78, size: 32, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3928, file: !643, line: 192, baseType: !78, size: 32, offset: 224)
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942}
!3936 = !DILocalVariable(name: "stream", arg: 1, scope: !3922, file: !643, line: 199, type: !3825)
!3937 = !DILocalVariable(name: "command_name", arg: 2, scope: !3922, file: !643, line: 200, type: !138)
!3938 = !DILocalVariable(name: "package", arg: 3, scope: !3922, file: !643, line: 200, type: !138)
!3939 = !DILocalVariable(name: "version", arg: 4, scope: !3922, file: !643, line: 201, type: !138)
!3940 = !DILocalVariable(name: "authors", arg: 5, scope: !3922, file: !643, line: 201, type: !3925)
!3941 = !DILocalVariable(name: "n_authors", scope: !3922, file: !643, line: 203, type: !135)
!3942 = !DILocalVariable(name: "authtab", scope: !3922, file: !643, line: 204, type: !3943)
!3943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !60)
!3944 = distinct !DIAssignID()
!3945 = !DILocation(line: 0, scope: !3922)
!3946 = !DILocation(line: 204, column: 3, scope: !3922)
!3947 = !DILocation(line: 208, column: 35, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !643, line: 206, column: 3)
!3949 = distinct !DILexicalBlock(scope: !3922, file: !643, line: 206, column: 3)
!3950 = !DILocation(line: 208, column: 33, scope: !3948)
!3951 = !DILocation(line: 208, column: 67, scope: !3948)
!3952 = !DILocation(line: 206, column: 3, scope: !3949)
!3953 = !DILocation(line: 208, column: 14, scope: !3948)
!3954 = !DILocation(line: 0, scope: !3949)
!3955 = !DILocation(line: 211, column: 3, scope: !3922)
!3956 = !DILocation(line: 213, column: 1, scope: !3922)
!3957 = distinct !DISubprogram(name: "version_etc", scope: !643, file: !643, line: 230, type: !3958, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3960)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{null, !3825, !138, !138, !138, null}
!3960 = !{!3961, !3962, !3963, !3964, !3965}
!3961 = !DILocalVariable(name: "stream", arg: 1, scope: !3957, file: !643, line: 230, type: !3825)
!3962 = !DILocalVariable(name: "command_name", arg: 2, scope: !3957, file: !643, line: 231, type: !138)
!3963 = !DILocalVariable(name: "package", arg: 3, scope: !3957, file: !643, line: 231, type: !138)
!3964 = !DILocalVariable(name: "version", arg: 4, scope: !3957, file: !643, line: 232, type: !138)
!3965 = !DILocalVariable(name: "authors", scope: !3957, file: !643, line: 234, type: !3925)
!3966 = distinct !DIAssignID()
!3967 = !DILocation(line: 0, scope: !3957)
!3968 = !DILocation(line: 234, column: 3, scope: !3957)
!3969 = !DILocation(line: 235, column: 3, scope: !3957)
!3970 = !DILocation(line: 236, column: 3, scope: !3957)
!3971 = !DILocation(line: 237, column: 3, scope: !3957)
!3972 = !DILocation(line: 238, column: 1, scope: !3957)
!3973 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !643, file: !643, line: 241, type: !496, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780)
!3974 = !DILocation(line: 243, column: 3, scope: !3973)
!3975 = !DILocation(line: 248, column: 3, scope: !3973)
!3976 = !DILocation(line: 254, column: 3, scope: !3973)
!3977 = !DILocation(line: 259, column: 3, scope: !3973)
!3978 = !DILocation(line: 261, column: 1, scope: !3973)
!3979 = distinct !DISubprogram(name: "xnrealloc", scope: !3980, file: !3980, line: 147, type: !3981, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !3983)
!3980 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!133, !133, !135, !135}
!3983 = !{!3984, !3985, !3986}
!3984 = !DILocalVariable(name: "p", arg: 1, scope: !3979, file: !3980, line: 147, type: !133)
!3985 = !DILocalVariable(name: "n", arg: 2, scope: !3979, file: !3980, line: 147, type: !135)
!3986 = !DILocalVariable(name: "s", arg: 3, scope: !3979, file: !3980, line: 147, type: !135)
!3987 = !DILocation(line: 0, scope: !3979)
!3988 = !DILocalVariable(name: "p", arg: 1, scope: !3989, file: !787, line: 83, type: !133)
!3989 = distinct !DISubprogram(name: "xreallocarray", scope: !787, file: !787, line: 83, type: !3981, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !3990)
!3990 = !{!3988, !3991, !3992}
!3991 = !DILocalVariable(name: "n", arg: 2, scope: !3989, file: !787, line: 83, type: !135)
!3992 = !DILocalVariable(name: "s", arg: 3, scope: !3989, file: !787, line: 83, type: !135)
!3993 = !DILocation(line: 0, scope: !3989, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 149, column: 10, scope: !3979)
!3995 = !DILocation(line: 85, column: 25, scope: !3989, inlinedAt: !3994)
!3996 = !DILocalVariable(name: "p", arg: 1, scope: !3997, file: !787, line: 37, type: !133)
!3997 = distinct !DISubprogram(name: "check_nonnull", scope: !787, file: !787, line: 37, type: !3998, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!133, !133}
!4000 = !{!3996}
!4001 = !DILocation(line: 0, scope: !3997, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 85, column: 10, scope: !3989, inlinedAt: !3994)
!4003 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4002)
!4004 = distinct !DILexicalBlock(scope: !3997, file: !787, line: 39, column: 7)
!4005 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4002)
!4006 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4002)
!4007 = !DILocation(line: 149, column: 3, scope: !3979)
!4008 = !DILocation(line: 0, scope: !3989)
!4009 = !DILocation(line: 85, column: 25, scope: !3989)
!4010 = !DILocation(line: 0, scope: !3997, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 85, column: 10, scope: !3989)
!4012 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4011)
!4013 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4011)
!4014 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4011)
!4015 = !DILocation(line: 85, column: 3, scope: !3989)
!4016 = distinct !DISubprogram(name: "xmalloc", scope: !787, file: !787, line: 47, type: !4017, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!133, !135}
!4019 = !{!4020}
!4020 = !DILocalVariable(name: "s", arg: 1, scope: !4016, file: !787, line: 47, type: !135)
!4021 = !DILocation(line: 0, scope: !4016)
!4022 = !DILocation(line: 49, column: 25, scope: !4016)
!4023 = !DILocation(line: 0, scope: !3997, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 49, column: 10, scope: !4016)
!4025 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4024)
!4026 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4024)
!4027 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4024)
!4028 = !DILocation(line: 49, column: 3, scope: !4016)
!4029 = !DISubprogram(name: "malloc", scope: !1042, file: !1042, line: 540, type: !4017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4030 = distinct !DISubprogram(name: "ximalloc", scope: !787, file: !787, line: 53, type: !4031, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4033)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!133, !805}
!4033 = !{!4034}
!4034 = !DILocalVariable(name: "s", arg: 1, scope: !4030, file: !787, line: 53, type: !805)
!4035 = !DILocation(line: 0, scope: !4030)
!4036 = !DILocalVariable(name: "s", arg: 1, scope: !4037, file: !4038, line: 55, type: !805)
!4037 = distinct !DISubprogram(name: "imalloc", scope: !4038, file: !4038, line: 55, type: !4031, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4039)
!4038 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4039 = !{!4036}
!4040 = !DILocation(line: 0, scope: !4037, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 55, column: 25, scope: !4030)
!4042 = !DILocation(line: 57, column: 26, scope: !4037, inlinedAt: !4041)
!4043 = !DILocation(line: 0, scope: !3997, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 55, column: 10, scope: !4030)
!4045 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4044)
!4046 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4044)
!4047 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4044)
!4048 = !DILocation(line: 55, column: 3, scope: !4030)
!4049 = distinct !DISubprogram(name: "xcharalloc", scope: !787, file: !787, line: 59, type: !4050, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!132, !135}
!4052 = !{!4053}
!4053 = !DILocalVariable(name: "n", arg: 1, scope: !4049, file: !787, line: 59, type: !135)
!4054 = !DILocation(line: 0, scope: !4049)
!4055 = !DILocation(line: 0, scope: !4016, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 61, column: 10, scope: !4049)
!4057 = !DILocation(line: 49, column: 25, scope: !4016, inlinedAt: !4056)
!4058 = !DILocation(line: 0, scope: !3997, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 49, column: 10, scope: !4016, inlinedAt: !4056)
!4060 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4059)
!4061 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4059)
!4062 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4059)
!4063 = !DILocation(line: 61, column: 3, scope: !4049)
!4064 = distinct !DISubprogram(name: "xrealloc", scope: !787, file: !787, line: 68, type: !4065, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!133, !133, !135}
!4067 = !{!4068, !4069}
!4068 = !DILocalVariable(name: "p", arg: 1, scope: !4064, file: !787, line: 68, type: !133)
!4069 = !DILocalVariable(name: "s", arg: 2, scope: !4064, file: !787, line: 68, type: !135)
!4070 = !DILocation(line: 0, scope: !4064)
!4071 = !DILocalVariable(name: "ptr", arg: 1, scope: !4072, file: !4073, line: 2057, type: !133)
!4072 = distinct !DISubprogram(name: "rpl_realloc", scope: !4073, file: !4073, line: 2057, type: !4065, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4074)
!4073 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4074 = !{!4071, !4075}
!4075 = !DILocalVariable(name: "size", arg: 2, scope: !4072, file: !4073, line: 2057, type: !135)
!4076 = !DILocation(line: 0, scope: !4072, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 70, column: 25, scope: !4064)
!4078 = !DILocation(line: 2059, column: 24, scope: !4072, inlinedAt: !4077)
!4079 = !DILocation(line: 2059, column: 10, scope: !4072, inlinedAt: !4077)
!4080 = !DILocation(line: 0, scope: !3997, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 70, column: 10, scope: !4064)
!4082 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4081)
!4083 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4081)
!4084 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4081)
!4085 = !DILocation(line: 70, column: 3, scope: !4064)
!4086 = !DISubprogram(name: "realloc", scope: !1042, file: !1042, line: 551, type: !4065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4087 = distinct !DISubprogram(name: "xirealloc", scope: !787, file: !787, line: 74, type: !4088, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4090)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!133, !133, !805}
!4090 = !{!4091, !4092}
!4091 = !DILocalVariable(name: "p", arg: 1, scope: !4087, file: !787, line: 74, type: !133)
!4092 = !DILocalVariable(name: "s", arg: 2, scope: !4087, file: !787, line: 74, type: !805)
!4093 = !DILocation(line: 0, scope: !4087)
!4094 = !DILocalVariable(name: "p", arg: 1, scope: !4095, file: !4038, line: 66, type: !133)
!4095 = distinct !DISubprogram(name: "irealloc", scope: !4038, file: !4038, line: 66, type: !4088, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4096)
!4096 = !{!4094, !4097}
!4097 = !DILocalVariable(name: "s", arg: 2, scope: !4095, file: !4038, line: 66, type: !805)
!4098 = !DILocation(line: 0, scope: !4095, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 76, column: 25, scope: !4087)
!4100 = !DILocation(line: 0, scope: !4072, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 68, column: 26, scope: !4095, inlinedAt: !4099)
!4102 = !DILocation(line: 2059, column: 24, scope: !4072, inlinedAt: !4101)
!4103 = !DILocation(line: 2059, column: 10, scope: !4072, inlinedAt: !4101)
!4104 = !DILocation(line: 0, scope: !3997, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 76, column: 10, scope: !4087)
!4106 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4105)
!4107 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4105)
!4108 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4105)
!4109 = !DILocation(line: 76, column: 3, scope: !4087)
!4110 = distinct !DISubprogram(name: "xireallocarray", scope: !787, file: !787, line: 89, type: !4111, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4113)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!133, !133, !805, !805}
!4113 = !{!4114, !4115, !4116}
!4114 = !DILocalVariable(name: "p", arg: 1, scope: !4110, file: !787, line: 89, type: !133)
!4115 = !DILocalVariable(name: "n", arg: 2, scope: !4110, file: !787, line: 89, type: !805)
!4116 = !DILocalVariable(name: "s", arg: 3, scope: !4110, file: !787, line: 89, type: !805)
!4117 = !DILocation(line: 0, scope: !4110)
!4118 = !DILocalVariable(name: "p", arg: 1, scope: !4119, file: !4038, line: 98, type: !133)
!4119 = distinct !DISubprogram(name: "ireallocarray", scope: !4038, file: !4038, line: 98, type: !4111, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4120)
!4120 = !{!4118, !4121, !4122}
!4121 = !DILocalVariable(name: "n", arg: 2, scope: !4119, file: !4038, line: 98, type: !805)
!4122 = !DILocalVariable(name: "s", arg: 3, scope: !4119, file: !4038, line: 98, type: !805)
!4123 = !DILocation(line: 0, scope: !4119, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 91, column: 25, scope: !4110)
!4125 = !DILocation(line: 101, column: 13, scope: !4119, inlinedAt: !4124)
!4126 = !DILocation(line: 0, scope: !3997, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 91, column: 10, scope: !4110)
!4128 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4127)
!4129 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4127)
!4130 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4127)
!4131 = !DILocation(line: 91, column: 3, scope: !4110)
!4132 = distinct !DISubprogram(name: "xnmalloc", scope: !787, file: !787, line: 98, type: !4133, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!133, !135, !135}
!4135 = !{!4136, !4137}
!4136 = !DILocalVariable(name: "n", arg: 1, scope: !4132, file: !787, line: 98, type: !135)
!4137 = !DILocalVariable(name: "s", arg: 2, scope: !4132, file: !787, line: 98, type: !135)
!4138 = !DILocation(line: 0, scope: !4132)
!4139 = !DILocation(line: 0, scope: !3989, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 100, column: 10, scope: !4132)
!4141 = !DILocation(line: 85, column: 25, scope: !3989, inlinedAt: !4140)
!4142 = !DILocation(line: 0, scope: !3997, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 85, column: 10, scope: !3989, inlinedAt: !4140)
!4144 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4143)
!4145 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4143)
!4146 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4143)
!4147 = !DILocation(line: 100, column: 3, scope: !4132)
!4148 = distinct !DISubprogram(name: "xinmalloc", scope: !787, file: !787, line: 104, type: !4149, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!133, !805, !805}
!4151 = !{!4152, !4153}
!4152 = !DILocalVariable(name: "n", arg: 1, scope: !4148, file: !787, line: 104, type: !805)
!4153 = !DILocalVariable(name: "s", arg: 2, scope: !4148, file: !787, line: 104, type: !805)
!4154 = !DILocation(line: 0, scope: !4148)
!4155 = !DILocation(line: 0, scope: !4110, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 106, column: 10, scope: !4148)
!4157 = !DILocation(line: 0, scope: !4119, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 91, column: 25, scope: !4110, inlinedAt: !4156)
!4159 = !DILocation(line: 101, column: 13, scope: !4119, inlinedAt: !4158)
!4160 = !DILocation(line: 0, scope: !3997, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 91, column: 10, scope: !4110, inlinedAt: !4156)
!4162 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4161)
!4163 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4161)
!4164 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4161)
!4165 = !DILocation(line: 106, column: 3, scope: !4148)
!4166 = distinct !DISubprogram(name: "x2realloc", scope: !787, file: !787, line: 116, type: !4167, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!133, !133, !179}
!4169 = !{!4170, !4171}
!4170 = !DILocalVariable(name: "p", arg: 1, scope: !4166, file: !787, line: 116, type: !133)
!4171 = !DILocalVariable(name: "ps", arg: 2, scope: !4166, file: !787, line: 116, type: !179)
!4172 = !DILocation(line: 0, scope: !4166)
!4173 = !DILocation(line: 0, scope: !790, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 118, column: 10, scope: !4166)
!4175 = !DILocation(line: 178, column: 14, scope: !790, inlinedAt: !4174)
!4176 = !DILocation(line: 180, column: 9, scope: !4177, inlinedAt: !4174)
!4177 = distinct !DILexicalBlock(scope: !790, file: !787, line: 180, column: 7)
!4178 = !DILocation(line: 180, column: 7, scope: !790, inlinedAt: !4174)
!4179 = !DILocation(line: 182, column: 13, scope: !4180, inlinedAt: !4174)
!4180 = distinct !DILexicalBlock(scope: !4181, file: !787, line: 182, column: 11)
!4181 = distinct !DILexicalBlock(scope: !4177, file: !787, line: 181, column: 5)
!4182 = !DILocation(line: 182, column: 11, scope: !4181, inlinedAt: !4174)
!4183 = !DILocation(line: 197, column: 11, scope: !4184, inlinedAt: !4174)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !787, line: 197, column: 11)
!4185 = distinct !DILexicalBlock(scope: !4177, file: !787, line: 195, column: 5)
!4186 = !DILocation(line: 197, column: 11, scope: !4185, inlinedAt: !4174)
!4187 = !DILocation(line: 198, column: 9, scope: !4184, inlinedAt: !4174)
!4188 = !DILocation(line: 0, scope: !3989, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 201, column: 7, scope: !790, inlinedAt: !4174)
!4190 = !DILocation(line: 85, column: 25, scope: !3989, inlinedAt: !4189)
!4191 = !DILocation(line: 0, scope: !3997, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 85, column: 10, scope: !3989, inlinedAt: !4189)
!4193 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4192)
!4194 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4192)
!4195 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4192)
!4196 = !DILocation(line: 202, column: 7, scope: !790, inlinedAt: !4174)
!4197 = !DILocation(line: 118, column: 3, scope: !4166)
!4198 = !DILocation(line: 0, scope: !790)
!4199 = !DILocation(line: 178, column: 14, scope: !790)
!4200 = !DILocation(line: 180, column: 9, scope: !4177)
!4201 = !DILocation(line: 180, column: 7, scope: !790)
!4202 = !DILocation(line: 182, column: 13, scope: !4180)
!4203 = !DILocation(line: 182, column: 11, scope: !4181)
!4204 = !DILocation(line: 190, column: 30, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4180, file: !787, line: 183, column: 9)
!4206 = !DILocation(line: 191, column: 16, scope: !4205)
!4207 = !DILocation(line: 191, column: 13, scope: !4205)
!4208 = !DILocation(line: 192, column: 9, scope: !4205)
!4209 = !DILocation(line: 197, column: 11, scope: !4184)
!4210 = !DILocation(line: 197, column: 11, scope: !4185)
!4211 = !DILocation(line: 198, column: 9, scope: !4184)
!4212 = !DILocation(line: 0, scope: !3989, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 201, column: 7, scope: !790)
!4214 = !DILocation(line: 85, column: 25, scope: !3989, inlinedAt: !4213)
!4215 = !DILocation(line: 0, scope: !3997, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 85, column: 10, scope: !3989, inlinedAt: !4213)
!4217 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4216)
!4218 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4216)
!4219 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4216)
!4220 = !DILocation(line: 202, column: 7, scope: !790)
!4221 = !DILocation(line: 203, column: 3, scope: !790)
!4222 = !DILocation(line: 0, scope: !801)
!4223 = !DILocation(line: 230, column: 14, scope: !801)
!4224 = !DILocation(line: 238, column: 7, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !801, file: !787, line: 238, column: 7)
!4226 = !DILocation(line: 238, column: 7, scope: !801)
!4227 = !DILocation(line: 240, column: 9, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !801, file: !787, line: 240, column: 7)
!4229 = !DILocation(line: 240, column: 18, scope: !4228)
!4230 = !DILocation(line: 253, column: 8, scope: !801)
!4231 = !DILocation(line: 256, column: 7, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !801, file: !787, line: 256, column: 7)
!4233 = !DILocation(line: 256, column: 7, scope: !801)
!4234 = !DILocation(line: 258, column: 27, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4232, file: !787, line: 257, column: 5)
!4236 = !DILocation(line: 259, column: 32, scope: !4235)
!4237 = !DILocation(line: 260, column: 5, scope: !4235)
!4238 = !DILocation(line: 262, column: 9, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !801, file: !787, line: 262, column: 7)
!4240 = !DILocation(line: 262, column: 7, scope: !801)
!4241 = !DILocation(line: 263, column: 9, scope: !4239)
!4242 = !DILocation(line: 263, column: 5, scope: !4239)
!4243 = !DILocation(line: 264, column: 9, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !801, file: !787, line: 264, column: 7)
!4245 = !DILocation(line: 264, column: 14, scope: !4244)
!4246 = !DILocation(line: 265, column: 7, scope: !4244)
!4247 = !DILocation(line: 265, column: 11, scope: !4244)
!4248 = !DILocation(line: 266, column: 11, scope: !4244)
!4249 = !DILocation(line: 267, column: 14, scope: !4244)
!4250 = !DILocation(line: 264, column: 7, scope: !801)
!4251 = !DILocation(line: 268, column: 5, scope: !4244)
!4252 = !DILocation(line: 0, scope: !4064, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 269, column: 8, scope: !801)
!4254 = !DILocation(line: 0, scope: !4072, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 70, column: 25, scope: !4064, inlinedAt: !4253)
!4256 = !DILocation(line: 2059, column: 24, scope: !4072, inlinedAt: !4255)
!4257 = !DILocation(line: 2059, column: 10, scope: !4072, inlinedAt: !4255)
!4258 = !DILocation(line: 0, scope: !3997, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 70, column: 10, scope: !4064, inlinedAt: !4253)
!4260 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4259)
!4261 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4259)
!4262 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4259)
!4263 = !DILocation(line: 270, column: 7, scope: !801)
!4264 = !DILocation(line: 271, column: 3, scope: !801)
!4265 = distinct !DISubprogram(name: "xzalloc", scope: !787, file: !787, line: 279, type: !4017, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4266)
!4266 = !{!4267}
!4267 = !DILocalVariable(name: "s", arg: 1, scope: !4265, file: !787, line: 279, type: !135)
!4268 = !DILocation(line: 0, scope: !4265)
!4269 = !DILocalVariable(name: "n", arg: 1, scope: !4270, file: !787, line: 294, type: !135)
!4270 = distinct !DISubprogram(name: "xcalloc", scope: !787, file: !787, line: 294, type: !4133, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4271)
!4271 = !{!4269, !4272}
!4272 = !DILocalVariable(name: "s", arg: 2, scope: !4270, file: !787, line: 294, type: !135)
!4273 = !DILocation(line: 0, scope: !4270, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 281, column: 10, scope: !4265)
!4275 = !DILocation(line: 296, column: 25, scope: !4270, inlinedAt: !4274)
!4276 = !DILocation(line: 0, scope: !3997, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 296, column: 10, scope: !4270, inlinedAt: !4274)
!4278 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4277)
!4279 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4277)
!4280 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4277)
!4281 = !DILocation(line: 281, column: 3, scope: !4265)
!4282 = !DISubprogram(name: "calloc", scope: !1042, file: !1042, line: 543, type: !4133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4283 = !DILocation(line: 0, scope: !4270)
!4284 = !DILocation(line: 296, column: 25, scope: !4270)
!4285 = !DILocation(line: 0, scope: !3997, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 296, column: 10, scope: !4270)
!4287 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4286)
!4288 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4286)
!4289 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4286)
!4290 = !DILocation(line: 296, column: 3, scope: !4270)
!4291 = distinct !DISubprogram(name: "xizalloc", scope: !787, file: !787, line: 285, type: !4031, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4292)
!4292 = !{!4293}
!4293 = !DILocalVariable(name: "s", arg: 1, scope: !4291, file: !787, line: 285, type: !805)
!4294 = !DILocation(line: 0, scope: !4291)
!4295 = !DILocalVariable(name: "n", arg: 1, scope: !4296, file: !787, line: 300, type: !805)
!4296 = distinct !DISubprogram(name: "xicalloc", scope: !787, file: !787, line: 300, type: !4149, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4297)
!4297 = !{!4295, !4298}
!4298 = !DILocalVariable(name: "s", arg: 2, scope: !4296, file: !787, line: 300, type: !805)
!4299 = !DILocation(line: 0, scope: !4296, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 287, column: 10, scope: !4291)
!4301 = !DILocalVariable(name: "n", arg: 1, scope: !4302, file: !4038, line: 77, type: !805)
!4302 = distinct !DISubprogram(name: "icalloc", scope: !4038, file: !4038, line: 77, type: !4149, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4303)
!4303 = !{!4301, !4304}
!4304 = !DILocalVariable(name: "s", arg: 2, scope: !4302, file: !4038, line: 77, type: !805)
!4305 = !DILocation(line: 0, scope: !4302, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 302, column: 25, scope: !4296, inlinedAt: !4300)
!4307 = !DILocation(line: 91, column: 10, scope: !4302, inlinedAt: !4306)
!4308 = !DILocation(line: 0, scope: !3997, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 302, column: 10, scope: !4296, inlinedAt: !4300)
!4310 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4309)
!4311 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4309)
!4312 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4309)
!4313 = !DILocation(line: 287, column: 3, scope: !4291)
!4314 = !DILocation(line: 0, scope: !4296)
!4315 = !DILocation(line: 0, scope: !4302, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 302, column: 25, scope: !4296)
!4317 = !DILocation(line: 91, column: 10, scope: !4302, inlinedAt: !4316)
!4318 = !DILocation(line: 0, scope: !3997, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 302, column: 10, scope: !4296)
!4320 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4319)
!4321 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4319)
!4322 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4319)
!4323 = !DILocation(line: 302, column: 3, scope: !4296)
!4324 = distinct !DISubprogram(name: "xmemdup", scope: !787, file: !787, line: 310, type: !4325, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4327)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!133, !1066, !135}
!4327 = !{!4328, !4329}
!4328 = !DILocalVariable(name: "p", arg: 1, scope: !4324, file: !787, line: 310, type: !1066)
!4329 = !DILocalVariable(name: "s", arg: 2, scope: !4324, file: !787, line: 310, type: !135)
!4330 = !DILocation(line: 0, scope: !4324)
!4331 = !DILocation(line: 0, scope: !4016, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 312, column: 18, scope: !4324)
!4333 = !DILocation(line: 49, column: 25, scope: !4016, inlinedAt: !4332)
!4334 = !DILocation(line: 0, scope: !3997, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 49, column: 10, scope: !4016, inlinedAt: !4332)
!4336 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4335)
!4337 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4335)
!4338 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4335)
!4339 = !DILocalVariable(name: "__dest", arg: 1, scope: !4340, file: !1242, line: 26, type: !1245)
!4340 = distinct !DISubprogram(name: "memcpy", scope: !1242, file: !1242, line: 26, type: !1243, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4341)
!4341 = !{!4339, !4342, !4343}
!4342 = !DILocalVariable(name: "__src", arg: 2, scope: !4340, file: !1242, line: 26, type: !1065)
!4343 = !DILocalVariable(name: "__len", arg: 3, scope: !4340, file: !1242, line: 26, type: !135)
!4344 = !DILocation(line: 0, scope: !4340, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 312, column: 10, scope: !4324)
!4346 = !DILocation(line: 29, column: 10, scope: !4340, inlinedAt: !4345)
!4347 = !DILocation(line: 312, column: 3, scope: !4324)
!4348 = distinct !DISubprogram(name: "ximemdup", scope: !787, file: !787, line: 316, type: !4349, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4351)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!133, !1066, !805}
!4351 = !{!4352, !4353}
!4352 = !DILocalVariable(name: "p", arg: 1, scope: !4348, file: !787, line: 316, type: !1066)
!4353 = !DILocalVariable(name: "s", arg: 2, scope: !4348, file: !787, line: 316, type: !805)
!4354 = !DILocation(line: 0, scope: !4348)
!4355 = !DILocation(line: 0, scope: !4030, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 318, column: 18, scope: !4348)
!4357 = !DILocation(line: 0, scope: !4037, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 55, column: 25, scope: !4030, inlinedAt: !4356)
!4359 = !DILocation(line: 57, column: 26, scope: !4037, inlinedAt: !4358)
!4360 = !DILocation(line: 0, scope: !3997, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 55, column: 10, scope: !4030, inlinedAt: !4356)
!4362 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4361)
!4363 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4361)
!4364 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4361)
!4365 = !DILocation(line: 0, scope: !4340, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 318, column: 10, scope: !4348)
!4367 = !DILocation(line: 29, column: 10, scope: !4340, inlinedAt: !4366)
!4368 = !DILocation(line: 318, column: 3, scope: !4348)
!4369 = distinct !DISubprogram(name: "ximemdup0", scope: !787, file: !787, line: 325, type: !4370, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4372)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!132, !1066, !805}
!4372 = !{!4373, !4374, !4375}
!4373 = !DILocalVariable(name: "p", arg: 1, scope: !4369, file: !787, line: 325, type: !1066)
!4374 = !DILocalVariable(name: "s", arg: 2, scope: !4369, file: !787, line: 325, type: !805)
!4375 = !DILocalVariable(name: "result", scope: !4369, file: !787, line: 327, type: !132)
!4376 = !DILocation(line: 0, scope: !4369)
!4377 = !DILocation(line: 327, column: 30, scope: !4369)
!4378 = !DILocation(line: 0, scope: !4030, inlinedAt: !4379)
!4379 = distinct !DILocation(line: 327, column: 18, scope: !4369)
!4380 = !DILocation(line: 0, scope: !4037, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 55, column: 25, scope: !4030, inlinedAt: !4379)
!4382 = !DILocation(line: 57, column: 26, scope: !4037, inlinedAt: !4381)
!4383 = !DILocation(line: 0, scope: !3997, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 55, column: 10, scope: !4030, inlinedAt: !4379)
!4385 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4384)
!4386 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4384)
!4387 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4384)
!4388 = !DILocation(line: 328, column: 3, scope: !4369)
!4389 = !DILocation(line: 328, column: 13, scope: !4369)
!4390 = !DILocation(line: 0, scope: !4340, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 329, column: 10, scope: !4369)
!4392 = !DILocation(line: 29, column: 10, scope: !4340, inlinedAt: !4391)
!4393 = !DILocation(line: 329, column: 3, scope: !4369)
!4394 = distinct !DISubprogram(name: "xstrdup", scope: !787, file: !787, line: 335, type: !1044, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4395)
!4395 = !{!4396}
!4396 = !DILocalVariable(name: "string", arg: 1, scope: !4394, file: !787, line: 335, type: !138)
!4397 = !DILocation(line: 0, scope: !4394)
!4398 = !DILocation(line: 337, column: 27, scope: !4394)
!4399 = !DILocation(line: 337, column: 43, scope: !4394)
!4400 = !DILocation(line: 0, scope: !4324, inlinedAt: !4401)
!4401 = distinct !DILocation(line: 337, column: 10, scope: !4394)
!4402 = !DILocation(line: 0, scope: !4016, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 312, column: 18, scope: !4324, inlinedAt: !4401)
!4404 = !DILocation(line: 49, column: 25, scope: !4016, inlinedAt: !4403)
!4405 = !DILocation(line: 0, scope: !3997, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 49, column: 10, scope: !4016, inlinedAt: !4403)
!4407 = !DILocation(line: 39, column: 8, scope: !4004, inlinedAt: !4406)
!4408 = !DILocation(line: 39, column: 7, scope: !3997, inlinedAt: !4406)
!4409 = !DILocation(line: 40, column: 5, scope: !4004, inlinedAt: !4406)
!4410 = !DILocation(line: 0, scope: !4340, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 312, column: 10, scope: !4324, inlinedAt: !4401)
!4412 = !DILocation(line: 29, column: 10, scope: !4340, inlinedAt: !4411)
!4413 = !DILocation(line: 337, column: 3, scope: !4394)
!4414 = distinct !DISubprogram(name: "xalloc_die", scope: !736, file: !736, line: 32, type: !496, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4415)
!4415 = !{!4416}
!4416 = !DILocalVariable(name: "__errstatus", scope: !4417, file: !736, line: 34, type: !4418)
!4417 = distinct !DILexicalBlock(scope: !4414, file: !736, line: 34, column: 3)
!4418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!4419 = !DILocation(line: 34, column: 3, scope: !4417)
!4420 = !DILocation(line: 0, scope: !4417)
!4421 = !DILocation(line: 40, column: 3, scope: !4414)
!4422 = distinct !DISubprogram(name: "rpl_fopen", scope: !821, file: !821, line: 46, type: !4423, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4459)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!4425, !138, !138}
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !4427)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !4428)
!4428 = !{!4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4427, file: !218, line: 51, baseType: !78, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4427, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4427, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4427, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4427, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4427, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4427, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4427, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4427, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4427, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4427, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4427, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4427, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4427, file: !218, line: 70, baseType: !4443, size: 64, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4427, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4427, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4427, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4427, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4427, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4427, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4427, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4427, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4427, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4427, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4427, file: !218, line: 93, baseType: !4443, size: 64, offset: 1344)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4427, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4427, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4427, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4427, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465, !4469, !4471, !4472, !4477, !4480, !4481}
!4460 = !DILocalVariable(name: "filename", arg: 1, scope: !4422, file: !821, line: 46, type: !138)
!4461 = !DILocalVariable(name: "mode", arg: 2, scope: !4422, file: !821, line: 46, type: !138)
!4462 = !DILocalVariable(name: "open_direction", scope: !4422, file: !821, line: 54, type: !78)
!4463 = !DILocalVariable(name: "open_flags", scope: !4422, file: !821, line: 55, type: !78)
!4464 = !DILocalVariable(name: "open_flags_gnu", scope: !4422, file: !821, line: 57, type: !172)
!4465 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4422, file: !821, line: 59, type: !4466)
!4466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4467)
!4467 = !{!4468}
!4468 = !DISubrange(count: 81)
!4469 = !DILocalVariable(name: "p", scope: !4470, file: !821, line: 62, type: !138)
!4470 = distinct !DILexicalBlock(scope: !4422, file: !821, line: 61, column: 3)
!4471 = !DILocalVariable(name: "q", scope: !4470, file: !821, line: 64, type: !132)
!4472 = !DILocalVariable(name: "len", scope: !4473, file: !821, line: 128, type: !135)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !821, line: 127, column: 9)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !821, line: 68, column: 7)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !821, line: 67, column: 5)
!4476 = distinct !DILexicalBlock(scope: !4470, file: !821, line: 67, column: 5)
!4477 = !DILocalVariable(name: "fd", scope: !4478, file: !821, line: 199, type: !78)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !821, line: 198, column: 5)
!4479 = distinct !DILexicalBlock(scope: !4422, file: !821, line: 197, column: 7)
!4480 = !DILocalVariable(name: "fp", scope: !4478, file: !821, line: 204, type: !4425)
!4481 = !DILocalVariable(name: "saved_errno", scope: !4482, file: !821, line: 207, type: !78)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !821, line: 206, column: 9)
!4483 = distinct !DILexicalBlock(scope: !4478, file: !821, line: 205, column: 11)
!4484 = distinct !DIAssignID()
!4485 = !DILocation(line: 0, scope: !4422)
!4486 = !DILocation(line: 59, column: 3, scope: !4422)
!4487 = !DILocation(line: 0, scope: !4470)
!4488 = !DILocation(line: 67, column: 5, scope: !4470)
!4489 = !DILocation(line: 54, column: 7, scope: !4422)
!4490 = !DILocation(line: 67, column: 12, scope: !4475)
!4491 = !DILocation(line: 67, column: 5, scope: !4476)
!4492 = !DILocation(line: 74, column: 19, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !821, line: 74, column: 17)
!4494 = distinct !DILexicalBlock(scope: !4474, file: !821, line: 70, column: 11)
!4495 = !DILocation(line: 74, column: 17, scope: !4494)
!4496 = !DILocation(line: 75, column: 17, scope: !4493)
!4497 = !DILocation(line: 75, column: 20, scope: !4493)
!4498 = !DILocation(line: 75, column: 15, scope: !4493)
!4499 = !DILocation(line: 80, column: 24, scope: !4494)
!4500 = !DILocation(line: 82, column: 19, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4494, file: !821, line: 82, column: 17)
!4502 = !DILocation(line: 82, column: 17, scope: !4494)
!4503 = !DILocation(line: 83, column: 17, scope: !4501)
!4504 = !DILocation(line: 83, column: 20, scope: !4501)
!4505 = !DILocation(line: 83, column: 15, scope: !4501)
!4506 = !DILocation(line: 88, column: 24, scope: !4494)
!4507 = !DILocation(line: 90, column: 19, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4494, file: !821, line: 90, column: 17)
!4509 = !DILocation(line: 90, column: 17, scope: !4494)
!4510 = !DILocation(line: 91, column: 17, scope: !4508)
!4511 = !DILocation(line: 91, column: 20, scope: !4508)
!4512 = !DILocation(line: 91, column: 15, scope: !4508)
!4513 = !DILocation(line: 100, column: 19, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4494, file: !821, line: 100, column: 17)
!4515 = !DILocation(line: 100, column: 17, scope: !4494)
!4516 = !DILocation(line: 101, column: 17, scope: !4514)
!4517 = !DILocation(line: 101, column: 20, scope: !4514)
!4518 = !DILocation(line: 101, column: 15, scope: !4514)
!4519 = !DILocation(line: 107, column: 19, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4494, file: !821, line: 107, column: 17)
!4521 = !DILocation(line: 107, column: 17, scope: !4494)
!4522 = !DILocation(line: 108, column: 17, scope: !4520)
!4523 = !DILocation(line: 108, column: 20, scope: !4520)
!4524 = !DILocation(line: 108, column: 15, scope: !4520)
!4525 = !DILocation(line: 113, column: 24, scope: !4494)
!4526 = !DILocation(line: 115, column: 13, scope: !4494)
!4527 = !DILocation(line: 117, column: 24, scope: !4494)
!4528 = !DILocation(line: 119, column: 13, scope: !4494)
!4529 = !DILocation(line: 128, column: 24, scope: !4473)
!4530 = !DILocation(line: 0, scope: !4473)
!4531 = !DILocation(line: 129, column: 48, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4473, file: !821, line: 129, column: 15)
!4533 = !DILocation(line: 129, column: 15, scope: !4473)
!4534 = !DILocalVariable(name: "__dest", arg: 1, scope: !4535, file: !1242, line: 26, type: !1245)
!4535 = distinct !DISubprogram(name: "memcpy", scope: !1242, file: !1242, line: 26, type: !1243, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4536)
!4536 = !{!4534, !4537, !4538}
!4537 = !DILocalVariable(name: "__src", arg: 2, scope: !4535, file: !1242, line: 26, type: !1065)
!4538 = !DILocalVariable(name: "__len", arg: 3, scope: !4535, file: !1242, line: 26, type: !135)
!4539 = !DILocation(line: 0, scope: !4535, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 131, column: 11, scope: !4473)
!4541 = !DILocation(line: 29, column: 10, scope: !4535, inlinedAt: !4540)
!4542 = !DILocation(line: 132, column: 13, scope: !4473)
!4543 = !DILocation(line: 135, column: 9, scope: !4474)
!4544 = !DILocation(line: 67, column: 25, scope: !4475)
!4545 = !DILocation(line: 67, column: 5, scope: !4475)
!4546 = distinct !{!4546, !4491, !4547, !968}
!4547 = !DILocation(line: 136, column: 7, scope: !4476)
!4548 = !DILocation(line: 138, column: 8, scope: !4470)
!4549 = !DILocation(line: 197, column: 7, scope: !4422)
!4550 = !DILocation(line: 199, column: 47, scope: !4478)
!4551 = !DILocation(line: 199, column: 16, scope: !4478)
!4552 = !DILocation(line: 0, scope: !4478)
!4553 = !DILocation(line: 201, column: 14, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4478, file: !821, line: 201, column: 11)
!4555 = !DILocation(line: 201, column: 11, scope: !4478)
!4556 = !DILocation(line: 204, column: 18, scope: !4478)
!4557 = !DILocation(line: 205, column: 14, scope: !4483)
!4558 = !DILocation(line: 205, column: 11, scope: !4478)
!4559 = !DILocation(line: 207, column: 29, scope: !4482)
!4560 = !DILocation(line: 0, scope: !4482)
!4561 = !DILocation(line: 208, column: 11, scope: !4482)
!4562 = !DILocation(line: 209, column: 17, scope: !4482)
!4563 = !DILocation(line: 210, column: 9, scope: !4482)
!4564 = !DILocalVariable(name: "filename", arg: 1, scope: !4565, file: !821, line: 30, type: !138)
!4565 = distinct !DISubprogram(name: "orig_fopen", scope: !821, file: !821, line: 30, type: !4423, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4566)
!4566 = !{!4564, !4567}
!4567 = !DILocalVariable(name: "mode", arg: 2, scope: !4565, file: !821, line: 30, type: !138)
!4568 = !DILocation(line: 0, scope: !4565, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 219, column: 10, scope: !4422)
!4570 = !DILocation(line: 32, column: 10, scope: !4565, inlinedAt: !4569)
!4571 = !DILocation(line: 219, column: 3, scope: !4422)
!4572 = !DILocation(line: 220, column: 1, scope: !4422)
!4573 = !DISubprogram(name: "open", scope: !2038, file: !2038, line: 181, type: !4574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!78, !138, !78, null}
!4576 = !DISubprogram(name: "fdopen", scope: !456, file: !456, line: 293, type: !4577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!4425, !78, !138}
!4579 = !DISubprogram(name: "close", scope: !1897, file: !1897, line: 358, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4580 = !DISubprogram(name: "fopen", scope: !456, file: !456, line: 258, type: !4581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!4425, !912, !912}
!4583 = distinct !DISubprogram(name: "close_stream", scope: !823, file: !823, line: 55, type: !4584, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4620)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!78, !4586}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !4588)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !4589)
!4589 = !{!4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4588, file: !218, line: 51, baseType: !78, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4588, file: !218, line: 54, baseType: !132, size: 64, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4588, file: !218, line: 55, baseType: !132, size: 64, offset: 128)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4588, file: !218, line: 56, baseType: !132, size: 64, offset: 192)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4588, file: !218, line: 57, baseType: !132, size: 64, offset: 256)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4588, file: !218, line: 58, baseType: !132, size: 64, offset: 320)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4588, file: !218, line: 59, baseType: !132, size: 64, offset: 384)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4588, file: !218, line: 60, baseType: !132, size: 64, offset: 448)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4588, file: !218, line: 61, baseType: !132, size: 64, offset: 512)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4588, file: !218, line: 64, baseType: !132, size: 64, offset: 576)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4588, file: !218, line: 65, baseType: !132, size: 64, offset: 640)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4588, file: !218, line: 66, baseType: !132, size: 64, offset: 704)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4588, file: !218, line: 68, baseType: !233, size: 64, offset: 768)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4588, file: !218, line: 70, baseType: !4604, size: 64, offset: 832)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4588, file: !218, line: 72, baseType: !78, size: 32, offset: 896)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4588, file: !218, line: 73, baseType: !78, size: 32, offset: 928)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4588, file: !218, line: 74, baseType: !240, size: 64, offset: 960)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4588, file: !218, line: 77, baseType: !134, size: 16, offset: 1024)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4588, file: !218, line: 78, baseType: !245, size: 8, offset: 1040)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4588, file: !218, line: 79, baseType: !54, size: 8, offset: 1048)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4588, file: !218, line: 81, baseType: !248, size: 64, offset: 1088)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4588, file: !218, line: 89, baseType: !251, size: 64, offset: 1152)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4588, file: !218, line: 91, baseType: !253, size: 64, offset: 1216)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4588, file: !218, line: 92, baseType: !256, size: 64, offset: 1280)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4588, file: !218, line: 93, baseType: !4604, size: 64, offset: 1344)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4588, file: !218, line: 94, baseType: !133, size: 64, offset: 1408)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4588, file: !218, line: 95, baseType: !135, size: 64, offset: 1472)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4588, file: !218, line: 96, baseType: !78, size: 32, offset: 1536)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4588, file: !218, line: 98, baseType: !263, size: 160, offset: 1568)
!4620 = !{!4621, !4622, !4624, !4625}
!4621 = !DILocalVariable(name: "stream", arg: 1, scope: !4583, file: !823, line: 55, type: !4586)
!4622 = !DILocalVariable(name: "some_pending", scope: !4583, file: !823, line: 57, type: !4623)
!4623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!4624 = !DILocalVariable(name: "prev_fail", scope: !4583, file: !823, line: 58, type: !4623)
!4625 = !DILocalVariable(name: "fclose_fail", scope: !4583, file: !823, line: 59, type: !4623)
!4626 = !DILocation(line: 0, scope: !4583)
!4627 = !DILocation(line: 57, column: 30, scope: !4583)
!4628 = !DILocalVariable(name: "__stream", arg: 1, scope: !4629, file: !1346, line: 135, type: !4586)
!4629 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1346, file: !1346, line: 135, type: !4584, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4630)
!4630 = !{!4628}
!4631 = !DILocation(line: 0, scope: !4629, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 58, column: 27, scope: !4583)
!4633 = !DILocation(line: 137, column: 10, scope: !4629, inlinedAt: !4632)
!4634 = !DILocation(line: 58, column: 43, scope: !4583)
!4635 = !DILocation(line: 59, column: 29, scope: !4583)
!4636 = !DILocation(line: 59, column: 45, scope: !4583)
!4637 = !DILocation(line: 69, column: 17, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4583, file: !823, line: 69, column: 7)
!4639 = !DILocation(line: 57, column: 50, scope: !4583)
!4640 = !DILocation(line: 69, column: 33, scope: !4638)
!4641 = !DILocation(line: 69, column: 53, scope: !4638)
!4642 = !DILocation(line: 69, column: 59, scope: !4638)
!4643 = !DILocation(line: 69, column: 7, scope: !4583)
!4644 = !DILocation(line: 71, column: 11, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4638, file: !823, line: 70, column: 5)
!4646 = !DILocation(line: 72, column: 9, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4645, file: !823, line: 71, column: 11)
!4648 = !DILocation(line: 72, column: 15, scope: !4647)
!4649 = !DILocation(line: 77, column: 1, scope: !4583)
!4650 = !DISubprogram(name: "__fpending", scope: !2241, file: !2241, line: 75, type: !4651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!135, !4586}
!4653 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !743, file: !743, line: 100, type: !4654, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4657)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!135, !1300, !138, !135, !4656}
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!4657 = !{!4658, !4659, !4660, !4661, !4662}
!4658 = !DILocalVariable(name: "pwc", arg: 1, scope: !4653, file: !743, line: 100, type: !1300)
!4659 = !DILocalVariable(name: "s", arg: 2, scope: !4653, file: !743, line: 100, type: !138)
!4660 = !DILocalVariable(name: "n", arg: 3, scope: !4653, file: !743, line: 100, type: !135)
!4661 = !DILocalVariable(name: "ps", arg: 4, scope: !4653, file: !743, line: 100, type: !4656)
!4662 = !DILocalVariable(name: "ret", scope: !4653, file: !743, line: 130, type: !135)
!4663 = !DILocation(line: 0, scope: !4653)
!4664 = !DILocation(line: 105, column: 9, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4653, file: !743, line: 105, column: 7)
!4666 = !DILocation(line: 105, column: 7, scope: !4653)
!4667 = !DILocation(line: 117, column: 10, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4653, file: !743, line: 117, column: 7)
!4669 = !DILocation(line: 117, column: 7, scope: !4653)
!4670 = !DILocation(line: 130, column: 16, scope: !4653)
!4671 = !DILocation(line: 135, column: 11, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4653, file: !743, line: 135, column: 7)
!4673 = !DILocation(line: 135, column: 25, scope: !4672)
!4674 = !DILocation(line: 135, column: 30, scope: !4672)
!4675 = !DILocation(line: 135, column: 7, scope: !4653)
!4676 = !DILocalVariable(name: "ps", arg: 1, scope: !4677, file: !2479, line: 1135, type: !4656)
!4677 = distinct !DISubprogram(name: "mbszero", scope: !2479, file: !2479, line: 1135, type: !4678, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4680)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !4656}
!4680 = !{!4676}
!4681 = !DILocation(line: 0, scope: !4677, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 137, column: 5, scope: !4672)
!4683 = !DILocalVariable(name: "__dest", arg: 1, scope: !4684, file: !1242, line: 57, type: !133)
!4684 = distinct !DISubprogram(name: "memset", scope: !1242, file: !1242, line: 57, type: !2488, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4685)
!4685 = !{!4683, !4686, !4687}
!4686 = !DILocalVariable(name: "__ch", arg: 2, scope: !4684, file: !1242, line: 57, type: !78)
!4687 = !DILocalVariable(name: "__len", arg: 3, scope: !4684, file: !1242, line: 57, type: !135)
!4688 = !DILocation(line: 0, scope: !4684, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 1137, column: 3, scope: !4677, inlinedAt: !4682)
!4690 = !DILocation(line: 59, column: 10, scope: !4684, inlinedAt: !4689)
!4691 = !DILocation(line: 137, column: 5, scope: !4672)
!4692 = !DILocation(line: 138, column: 11, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4653, file: !743, line: 138, column: 7)
!4694 = !DILocation(line: 138, column: 7, scope: !4653)
!4695 = !DILocation(line: 139, column: 5, scope: !4693)
!4696 = !DILocation(line: 143, column: 26, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4653, file: !743, line: 143, column: 7)
!4698 = !DILocation(line: 143, column: 41, scope: !4697)
!4699 = !DILocation(line: 143, column: 7, scope: !4653)
!4700 = !DILocation(line: 145, column: 15, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !743, line: 145, column: 11)
!4702 = distinct !DILexicalBlock(scope: !4697, file: !743, line: 144, column: 5)
!4703 = !DILocation(line: 145, column: 11, scope: !4702)
!4704 = !DILocation(line: 146, column: 32, scope: !4701)
!4705 = !DILocation(line: 146, column: 16, scope: !4701)
!4706 = !DILocation(line: 146, column: 14, scope: !4701)
!4707 = !DILocation(line: 146, column: 9, scope: !4701)
!4708 = !DILocation(line: 286, column: 1, scope: !4653)
!4709 = !DISubprogram(name: "mbsinit", scope: !4710, file: !4710, line: 293, type: !4711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4710 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!78, !4713}
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!4715 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !825, file: !825, line: 27, type: !3981, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4716)
!4716 = !{!4717, !4718, !4719, !4720}
!4717 = !DILocalVariable(name: "ptr", arg: 1, scope: !4715, file: !825, line: 27, type: !133)
!4718 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4715, file: !825, line: 27, type: !135)
!4719 = !DILocalVariable(name: "size", arg: 3, scope: !4715, file: !825, line: 27, type: !135)
!4720 = !DILocalVariable(name: "nbytes", scope: !4715, file: !825, line: 29, type: !135)
!4721 = !DILocation(line: 0, scope: !4715)
!4722 = !DILocation(line: 30, column: 7, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4715, file: !825, line: 30, column: 7)
!4724 = !DILocation(line: 30, column: 7, scope: !4715)
!4725 = !DILocation(line: 32, column: 7, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4723, file: !825, line: 31, column: 5)
!4727 = !DILocation(line: 32, column: 13, scope: !4726)
!4728 = !DILocation(line: 33, column: 7, scope: !4726)
!4729 = !DILocalVariable(name: "ptr", arg: 1, scope: !4730, file: !4073, line: 2057, type: !133)
!4730 = distinct !DISubprogram(name: "rpl_realloc", scope: !4073, file: !4073, line: 2057, type: !4065, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4731)
!4731 = !{!4729, !4732}
!4732 = !DILocalVariable(name: "size", arg: 2, scope: !4730, file: !4073, line: 2057, type: !135)
!4733 = !DILocation(line: 0, scope: !4730, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 37, column: 10, scope: !4715)
!4735 = !DILocation(line: 2059, column: 24, scope: !4730, inlinedAt: !4734)
!4736 = !DILocation(line: 2059, column: 10, scope: !4730, inlinedAt: !4734)
!4737 = !DILocation(line: 37, column: 3, scope: !4715)
!4738 = !DILocation(line: 38, column: 1, scope: !4715)
!4739 = distinct !DISubprogram(name: "hard_locale", scope: !761, file: !761, line: 28, type: !4740, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4742)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!172, !78}
!4742 = !{!4743, !4744}
!4743 = !DILocalVariable(name: "category", arg: 1, scope: !4739, file: !761, line: 28, type: !78)
!4744 = !DILocalVariable(name: "locale", scope: !4739, file: !761, line: 30, type: !4745)
!4745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4746)
!4746 = !{!4747}
!4747 = !DISubrange(count: 257)
!4748 = distinct !DIAssignID()
!4749 = !DILocation(line: 0, scope: !4739)
!4750 = !DILocation(line: 30, column: 3, scope: !4739)
!4751 = !DILocation(line: 32, column: 7, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4739, file: !761, line: 32, column: 7)
!4753 = !DILocation(line: 32, column: 7, scope: !4739)
!4754 = !DILocalVariable(name: "__s1", arg: 1, scope: !4755, file: !934, line: 1359, type: !138)
!4755 = distinct !DISubprogram(name: "streq", scope: !934, file: !934, line: 1359, type: !935, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4756)
!4756 = !{!4754, !4757}
!4757 = !DILocalVariable(name: "__s2", arg: 2, scope: !4755, file: !934, line: 1359, type: !138)
!4758 = !DILocation(line: 0, scope: !4755, inlinedAt: !4759)
!4759 = distinct !DILocation(line: 35, column: 9, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4739, file: !761, line: 35, column: 7)
!4761 = !DILocation(line: 1361, column: 11, scope: !4755, inlinedAt: !4759)
!4762 = !DILocation(line: 1361, column: 10, scope: !4755, inlinedAt: !4759)
!4763 = !DILocation(line: 35, column: 29, scope: !4760)
!4764 = !DILocation(line: 0, scope: !4755, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 35, column: 32, scope: !4760)
!4766 = !DILocation(line: 1361, column: 11, scope: !4755, inlinedAt: !4765)
!4767 = !DILocation(line: 1361, column: 10, scope: !4755, inlinedAt: !4765)
!4768 = !DILocation(line: 35, column: 7, scope: !4739)
!4769 = !DILocation(line: 46, column: 3, scope: !4739)
!4770 = !DILocation(line: 47, column: 1, scope: !4739)
!4771 = distinct !DISubprogram(name: "setlocale_null_r", scope: !829, file: !829, line: 154, type: !4772, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4774)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!78, !78, !132, !135}
!4774 = !{!4775, !4776, !4777}
!4775 = !DILocalVariable(name: "category", arg: 1, scope: !4771, file: !829, line: 154, type: !78)
!4776 = !DILocalVariable(name: "buf", arg: 2, scope: !4771, file: !829, line: 154, type: !132)
!4777 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4771, file: !829, line: 154, type: !135)
!4778 = !DILocation(line: 0, scope: !4771)
!4779 = !DILocation(line: 159, column: 10, scope: !4771)
!4780 = !DILocation(line: 159, column: 3, scope: !4771)
!4781 = distinct !DISubprogram(name: "setlocale_null", scope: !829, file: !829, line: 186, type: !4782, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4784)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!138, !78}
!4784 = !{!4785}
!4785 = !DILocalVariable(name: "category", arg: 1, scope: !4781, file: !829, line: 186, type: !78)
!4786 = !DILocation(line: 0, scope: !4781)
!4787 = !DILocation(line: 189, column: 10, scope: !4781)
!4788 = !DILocation(line: 189, column: 3, scope: !4781)
!4789 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !831, file: !831, line: 35, type: !4782, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4790)
!4790 = !{!4791, !4792}
!4791 = !DILocalVariable(name: "category", arg: 1, scope: !4789, file: !831, line: 35, type: !78)
!4792 = !DILocalVariable(name: "result", scope: !4789, file: !831, line: 37, type: !138)
!4793 = !DILocation(line: 0, scope: !4789)
!4794 = !DILocation(line: 37, column: 24, scope: !4789)
!4795 = !DILocation(line: 62, column: 3, scope: !4789)
!4796 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !831, file: !831, line: 66, type: !4772, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4797)
!4797 = !{!4798, !4799, !4800, !4801, !4802}
!4798 = !DILocalVariable(name: "category", arg: 1, scope: !4796, file: !831, line: 66, type: !78)
!4799 = !DILocalVariable(name: "buf", arg: 2, scope: !4796, file: !831, line: 66, type: !132)
!4800 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4796, file: !831, line: 66, type: !135)
!4801 = !DILocalVariable(name: "result", scope: !4796, file: !831, line: 111, type: !138)
!4802 = !DILocalVariable(name: "length", scope: !4803, file: !831, line: 125, type: !135)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !831, line: 124, column: 5)
!4804 = distinct !DILexicalBlock(scope: !4796, file: !831, line: 113, column: 7)
!4805 = !DILocation(line: 0, scope: !4796)
!4806 = !DILocation(line: 0, scope: !4789, inlinedAt: !4807)
!4807 = distinct !DILocation(line: 111, column: 24, scope: !4796)
!4808 = !DILocation(line: 37, column: 24, scope: !4789, inlinedAt: !4807)
!4809 = !DILocation(line: 113, column: 14, scope: !4804)
!4810 = !DILocation(line: 113, column: 7, scope: !4796)
!4811 = !DILocation(line: 116, column: 19, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !831, line: 116, column: 11)
!4813 = distinct !DILexicalBlock(scope: !4804, file: !831, line: 114, column: 5)
!4814 = !DILocation(line: 116, column: 11, scope: !4813)
!4815 = !DILocation(line: 120, column: 16, scope: !4812)
!4816 = !DILocation(line: 120, column: 9, scope: !4812)
!4817 = !DILocation(line: 125, column: 23, scope: !4803)
!4818 = !DILocation(line: 0, scope: !4803)
!4819 = !DILocation(line: 126, column: 18, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4803, file: !831, line: 126, column: 11)
!4821 = !DILocation(line: 126, column: 11, scope: !4803)
!4822 = !DILocation(line: 128, column: 39, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4820, file: !831, line: 127, column: 9)
!4824 = !DILocalVariable(name: "__dest", arg: 1, scope: !4825, file: !1242, line: 26, type: !1245)
!4825 = distinct !DISubprogram(name: "memcpy", scope: !1242, file: !1242, line: 26, type: !1243, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4826)
!4826 = !{!4824, !4827, !4828}
!4827 = !DILocalVariable(name: "__src", arg: 2, scope: !4825, file: !1242, line: 26, type: !1065)
!4828 = !DILocalVariable(name: "__len", arg: 3, scope: !4825, file: !1242, line: 26, type: !135)
!4829 = !DILocation(line: 0, scope: !4825, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 128, column: 11, scope: !4823)
!4831 = !DILocation(line: 29, column: 10, scope: !4825, inlinedAt: !4830)
!4832 = !DILocation(line: 129, column: 11, scope: !4823)
!4833 = !DILocation(line: 133, column: 23, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4835, file: !831, line: 133, column: 15)
!4835 = distinct !DILexicalBlock(scope: !4820, file: !831, line: 132, column: 9)
!4836 = !DILocation(line: 133, column: 15, scope: !4835)
!4837 = !DILocation(line: 138, column: 44, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4834, file: !831, line: 134, column: 13)
!4839 = !DILocation(line: 0, scope: !4825, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 138, column: 15, scope: !4838)
!4841 = !DILocation(line: 29, column: 10, scope: !4825, inlinedAt: !4840)
!4842 = !DILocation(line: 139, column: 15, scope: !4838)
!4843 = !DILocation(line: 139, column: 32, scope: !4838)
!4844 = !DILocation(line: 140, column: 13, scope: !4838)
!4845 = !DILocation(line: 0, scope: !4804)
!4846 = !DILocation(line: 145, column: 1, scope: !4796)
