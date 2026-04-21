; ModuleID = 'src/fold.bc'
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
@.str.2 = private unnamed_addr constant [60 x i8] c"Wrap input lines in each FILE, writing to standard output.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c"fold\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [56 x i8] c"  -b, --bytes\0A         count bytes rather than columns\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [66 x i8] c"  -c, --characters\0A         count characters rather than columns\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [76 x i8] c"  -s, --spaces\0A         break after blanks, or in words greater than WIDTH\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"  -w, --width=WIDTH\0A         use WIDTH columns instead of 80\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !49
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !59
@shortopts = internal constant [36 x i8] c"bcsw:0::1::2::3::4::5::6::7::8::9::\00", align 1, !dbg !64
@longopts = internal constant [7 x %struct.option] [%struct.option { ptr @.str.54, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.57, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !387
@counting_mode = internal unnamed_addr global i32 0, align 4, !dbg !399
@break_spaces = internal unnamed_addr global i1 false, align 1, !dbg !472
@optarg = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1, !dbg !146
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !151
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !156
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !161
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !473
@stdin = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !171
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !173
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !178
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !260
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !262
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !264
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !269
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !309
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !311
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !313
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !318
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !323
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !328
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !333
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !335
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !337
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !339
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !350
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !352
@.str.51 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !357
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !362
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !367
@.str.54 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1, !dbg !372
@.str.55 = private unnamed_addr constant [11 x i8] c"characters\00", align 1, !dbg !374
@.str.56 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1, !dbg !379
@.str.57 = private unnamed_addr constant [6 x i8] c"width\00", align 1, !dbg !381
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !383
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !385
@fold_file.line_out = internal global [262144 x i8] zeroinitializer, align 1, !dbg !401
@fold_file.line_in = internal global [262144 x i8] zeroinitializer, align 1, !dbg !459
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !461
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !463
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !465
@last_character_width = internal unnamed_addr global i32 0, align 4, !dbg !467
@.str.23 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !474
@Version = dso_local local_unnamed_addr global ptr @.str.23, align 8, !dbg !477
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !481
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !494
@.str.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !486
@.str.1.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !488
@.str.2.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !490
@.str.3.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !492
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !496
@stderr = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !502
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !538
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !504
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !528
@.str.1.36 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !530
@.str.2.38 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !532
@.str.3.37 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !534
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !536
@.str.4.31 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !540
@.str.5.32 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !542
@.str.6.33 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !547
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !552
@.str.63 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !558
@.str.1.64 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !560
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !562
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !589
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !592
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !594
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !599
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !601
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !603
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !605
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !607
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !609
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !611
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.67, ptr @.str.1.68, ptr @.str.2.69, ptr @.str.3.70, ptr @.str.4.71, ptr @.str.5.72, ptr @.str.6.73, ptr @.str.7.74, ptr @.str.8.75, ptr @.str.9.76, ptr null], align 8, !dbg !613
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !626
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !640
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !678
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !685
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !642
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !687
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !630
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !647
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !649
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !651
@.str.13.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !653
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !655
@.str.85 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !691
@.str.1.86 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !694
@.str.2.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !696
@.str.3.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !698
@.str.4.89 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !700
@.str.5.90 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !702
@.str.6.91 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !707
@.str.7.92 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !712
@.str.8.93 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !714
@.str.9.94 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !719
@.str.10.95 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !724
@.str.11.96 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !729
@.str.12.97 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !732
@.str.13.98 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !734
@.str.14.99 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !739
@.str.15.100 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !744
@.str.16.101 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !749
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.106 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !751
@.str.18.107 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !753
@.str.19.108 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !755
@.str.20.109 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !757
@.str.21.110 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !759
@.str.22.111 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !761
@.str.23.112 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !763
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !768
@exit_failure = dso_local global i32 1, align 4, !dbg !776
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !782
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !785
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !787
@.str.128 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !789
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !792
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !795
@.str.142 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !810
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !813

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !916 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !920, metadata !DIExpression()), !dbg !921
  %2 = icmp eq i32 %0, 0, !dbg !922
  br i1 %2, label %8, label %3, !dbg !924

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !925, !tbaa !927
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !925
  %6 = load ptr, ptr @program_name, align 8, !dbg !925, !tbaa !927
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !925
  br label %41, !dbg !925

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !931
  %10 = load ptr, ptr @program_name, align 8, !dbg !931, !tbaa !927
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !931
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !933
  %13 = load ptr, ptr @stdout, align 8, !dbg !933, !tbaa !927
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !933
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !934
  %16 = load ptr, ptr @stdout, align 8, !dbg !934, !tbaa !927
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !934
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !937
  %19 = load ptr, ptr @stdout, align 8, !dbg !937, !tbaa !927
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !937
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !940
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !940
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !941
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !941
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !942
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !942
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !943
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !943
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !944
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !944
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !945
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !945
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !946, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata !965, metadata !959, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr poison, metadata !958, metadata !DIExpression()), !dbg !963
  tail call void @emit_bug_reporting_address() #39, !dbg !966
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !967
  call void @llvm.dbg.value(metadata ptr %27, metadata !961, metadata !DIExpression()), !dbg !963
  %28 = icmp eq ptr %27, null, !dbg !968
  br i1 %28, label %36, label %29, !dbg !970

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #40, !dbg !971
  %31 = icmp eq i32 %30, 0, !dbg !971
  br i1 %31, label %36, label %32, !dbg !972

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !973
  %34 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !927
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !973
  br label %36, !dbg !975

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !958, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !962, metadata !DIExpression()), !dbg !963
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #39, !dbg !976
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #39, !dbg !976
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #39, !dbg !977
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #39, !dbg !977
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !978
  unreachable, !dbg !978
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !979 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !983 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !989 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !992 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !180 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !184, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !185, metadata !DIExpression()), !dbg !995
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !996, !tbaa !997
  %3 = icmp eq i32 %2, -1, !dbg !999
  br i1 %3, label %4, label %16, !dbg !1000

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #39, !dbg !1001
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !186, metadata !DIExpression()), !dbg !1002
  %6 = icmp eq ptr %5, null, !dbg !1003
  br i1 %6, label %14, label %7, !dbg !1004

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1005, !tbaa !1006
  %9 = icmp eq i8 %8, 0, !dbg !1005
  br i1 %9, label %14, label %10, !dbg !1007

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1008, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !1014, metadata !DIExpression()), !dbg !1015
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #40, !dbg !1017
  %12 = icmp eq i32 %11, 0, !dbg !1018
  %13 = zext i1 %12 to i32, !dbg !1007
  br label %14, !dbg !1007

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1019, !tbaa !997
  br label %16, !dbg !1020

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1021
  %18 = icmp eq i32 %17, 0, !dbg !1021
  br i1 %18, label %22, label %19, !dbg !1023

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !927
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1024
  br label %121, !dbg !1026

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !189, metadata !DIExpression()), !dbg !995
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #40, !dbg !1027
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1028
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !190, metadata !DIExpression()), !dbg !995
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1029
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !191, metadata !DIExpression()), !dbg !995
  %26 = icmp eq ptr %25, null, !dbg !1030
  br i1 %26, label %53, label %27, !dbg !1031

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1032
  br i1 %28, label %53, label %29, !dbg !1033

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !192, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !1034
  %30 = icmp ult ptr %24, %25, !dbg !1035
  br i1 %30, label %31, label %53, !dbg !1036

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !995
  %33 = load ptr, ptr %32, align 8, !tbaa !927
  br label %34, !dbg !1036

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !192, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !196, metadata !DIExpression()), !dbg !1034
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1037
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !192, metadata !DIExpression()), !dbg !1034
  %38 = load i8, ptr %35, align 1, !dbg !1037, !tbaa !1006
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1037
  %41 = load i16, ptr %40, align 2, !dbg !1037, !tbaa !1038
  %42 = freeze i16 %41, !dbg !1040
  %43 = lshr i16 %42, 13, !dbg !1040
  %44 = and i16 %43, 1, !dbg !1040
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !196, metadata !DIExpression()), !dbg !1034
  %47 = icmp ult ptr %37, %25, !dbg !1035
  %48 = icmp ult i64 %46, 2, !dbg !1042
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1042
  br i1 %49, label %34, label %50, !dbg !1036, !llvm.loop !1043

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1041
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1045
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1047
  br label %53, !dbg !1047

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !995
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !189, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !191, metadata !DIExpression()), !dbg !995
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.22) #40, !dbg !1048
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !197, metadata !DIExpression()), !dbg !995
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !198, metadata !DIExpression()), !dbg !995
  br label %58, !dbg !1050

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !995
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !189, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !198, metadata !DIExpression()), !dbg !995
  %61 = load i8, ptr %59, align 1, !dbg !1051, !tbaa !1006
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1052

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1053
  %64 = load i8, ptr %63, align 1, !dbg !1056, !tbaa !1006
  %65 = icmp ne i8 %64, 45, !dbg !1057
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1058
  br label %67, !dbg !1058

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !189, metadata !DIExpression()), !dbg !995
  %69 = tail call ptr @__ctype_b_loc() #42, !dbg !1059
  %70 = load ptr, ptr %69, align 8, !dbg !1059, !tbaa !927
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1059
  %73 = load i16, ptr %72, align 2, !dbg !1059, !tbaa !1038
  %74 = and i16 %73, 8192, !dbg !1059
  %75 = icmp eq i16 %74, 0, !dbg !1059
  br i1 %75, label %89, label %76, !dbg !1061

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1062
  br i1 %77, label %91, label %78, !dbg !1065

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1066
  %80 = load i8, ptr %79, align 1, !dbg !1066, !tbaa !1006
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1066
  %83 = load i16, ptr %82, align 2, !dbg !1066, !tbaa !1038
  %84 = and i16 %83, 8192, !dbg !1066
  %85 = icmp eq i16 %84, 0, !dbg !1066
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1067
  br i1 %88, label %89, label %91, !dbg !1067

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1068
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !198, metadata !DIExpression()), !dbg !995
  br label %58, !dbg !1050, !llvm.loop !1069

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !995
  %92 = ptrtoint ptr %24 to i64, !dbg !1071
  %93 = load ptr, ptr @stdout, align 8, !dbg !1071, !tbaa !927
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1071
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata !965, metadata !1014, metadata !DIExpression()), !dbg !1090
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !255, metadata !DIExpression()), !dbg !995
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #40, !dbg !1092
  %96 = icmp eq i32 %95, 0, !dbg !1092
  br i1 %96, label %100, label %97, !dbg !1094

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #40, !dbg !1095
  %99 = icmp eq i32 %98, 0, !dbg !1095
  br i1 %99, label %100, label %103, !dbg !1096

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1097
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #39, !dbg !1097
  br label %106, !dbg !1099

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1100
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #39, !dbg !1100
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1102, !tbaa !927
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %107), !dbg !1102
  %109 = load ptr, ptr @stdout, align 8, !dbg !1103, !tbaa !927
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %109), !dbg !1103
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1104
  %112 = sub i64 %111, %92, !dbg !1104
  %113 = load ptr, ptr @stdout, align 8, !dbg !1104, !tbaa !927
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1104
  %115 = load ptr, ptr @stdout, align 8, !dbg !1105, !tbaa !927
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %115), !dbg !1105
  %117 = load ptr, ptr @stdout, align 8, !dbg !1106, !tbaa !927
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %117), !dbg !1106
  %119 = load ptr, ptr @stdout, align 8, !dbg !1107, !tbaa !927
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1107
  br label %121, !dbg !1108

121:                                              ; preds = %106, %19
  ret void, !dbg !1108
}

; Function Attrs: nounwind
declare !dbg !1109 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1113 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1117 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1119 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1122 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1125 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1128 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1131 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1137 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1138 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1144 {
  %3 = alloca [2 x i8], align 4, !DIAssignID !1160
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1154, metadata !DIExpression(), metadata !1160, metadata ptr %3, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1149, metadata !DIExpression()), !dbg !1162
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1150, metadata !DIExpression()), !dbg !1162
  tail call void @llvm.dbg.value(metadata i64 80, metadata !1151, metadata !DIExpression()), !dbg !1162
  %4 = load ptr, ptr %1, align 8, !dbg !1163, !tbaa !927
  tail call void @set_program_name(ptr noundef %4) #39, !dbg !1164
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #39, !dbg !1165
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #39, !dbg !1166
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #39, !dbg !1167
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1168
  tail call void @llvm.dbg.value(metadata i64 80, metadata !1151, metadata !DIExpression()), !dbg !1162
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1152, metadata !DIExpression()), !dbg !1162
  %10 = icmp eq i32 %9, -1, !dbg !1170
  br i1 %10, label %42, label %11, !dbg !1171

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  br label %13, !dbg !1171

13:                                               ; preds = %11, %38
  %14 = phi i32 [ %9, %11 ], [ %40, %38 ]
  %15 = phi i64 [ 80, %11 ], [ %39, %38 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1151, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #39, !dbg !1172
  switch i32 %14, label %37 [
    i32 98, label %18
    i32 99, label %19
    i32 115, label %20
    i32 48, label %21
    i32 49, label %21
    i32 50, label %21
    i32 51, label %21
    i32 52, label %21
    i32 53, label %21
    i32 54, label %21
    i32 55, label %21
    i32 56, label %21
    i32 57, label %21
    i32 119, label %16
    i32 -2, label %32
    i32 -3, label %33
  ], !dbg !1173

16:                                               ; preds = %13
  %17 = load ptr, ptr @optarg, align 8, !dbg !1174, !tbaa !927
  br label %28, !dbg !1173

18:                                               ; preds = %13
  store i32 1, ptr @counting_mode, align 4, !dbg !1176, !tbaa !997
  br label %38, !dbg !1177

19:                                               ; preds = %13
  store i32 2, ptr @counting_mode, align 4, !dbg !1178, !tbaa !997
  br label %38, !dbg !1179

20:                                               ; preds = %13
  store i1 true, ptr @break_spaces, align 1, !dbg !1180
  br label %38, !dbg !1181

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %22 = load ptr, ptr @optarg, align 8, !dbg !1182, !tbaa !927
  %23 = icmp eq ptr %22, null, !dbg !1182
  br i1 %23, label %26, label %24, !dbg !1184

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 -1, !dbg !1185
  store ptr %25, ptr @optarg, align 8, !dbg !1185, !tbaa !927
  br label %28, !dbg !1186

26:                                               ; preds = %21
  %27 = trunc i32 %14 to i8, !dbg !1187
  store i8 %27, ptr %3, align 4, !dbg !1189, !tbaa !1006, !DIAssignID !1190
  call void @llvm.dbg.assign(metadata i8 %27, metadata !1154, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8), metadata !1190, metadata ptr %3, metadata !DIExpression()), !dbg !1161
  store i8 0, ptr %12, align 1, !dbg !1191, !tbaa !1006, !DIAssignID !1192
  call void @llvm.dbg.assign(metadata i8 0, metadata !1154, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8), metadata !1192, metadata ptr %12, metadata !DIExpression()), !dbg !1161
  store ptr %3, ptr @optarg, align 8, !dbg !1193, !tbaa !927
  br label %28

28:                                               ; preds = %16, %24, %26
  %29 = phi ptr [ %17, %16 ], [ %25, %24 ], [ %3, %26 ], !dbg !1174
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1194
  %31 = call i64 @xnumtoumax(ptr noundef %29, i32 noundef 10, i64 noundef 1, i64 noundef -10, ptr noundef nonnull @.str.10, ptr noundef %30, i32 noundef 0, i32 noundef 12) #39, !dbg !1195
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1151, metadata !DIExpression()), !dbg !1162
  br label %38, !dbg !1196

32:                                               ; preds = %13
  call void @usage(i32 noundef 0) #43, !dbg !1197
  unreachable, !dbg !1197

33:                                               ; preds = %13
  %34 = load ptr, ptr @stdout, align 8, !dbg !1198, !tbaa !927
  %35 = load ptr, ptr @Version, align 8, !dbg !1198, !tbaa !927
  %36 = call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #39, !dbg !1198
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %35, ptr noundef %36, ptr noundef null) #39, !dbg !1198
  call void @exit(i32 noundef 0) #41, !dbg !1198
  unreachable, !dbg !1198

37:                                               ; preds = %13
  call void @usage(i32 noundef 1) #43, !dbg !1199
  unreachable, !dbg !1199

38:                                               ; preds = %28, %20, %19, %18
  %39 = phi i64 [ %31, %28 ], [ %15, %20 ], [ %15, %19 ], [ %15, %18 ], !dbg !1162
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1151, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #39, !dbg !1200
  %40 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1152, metadata !DIExpression()), !dbg !1162
  %41 = icmp eq i32 %40, -1, !dbg !1170
  br i1 %41, label %.loopexit1, label %13, !dbg !1171, !llvm.loop !1201

.loopexit1:                                       ; preds = %38
  %.lcssa2 = phi i64 [ %39, %38 ], !dbg !1162
  br label %42, !dbg !1202

42:                                               ; preds = %.loopexit1, %2
  %43 = phi i64 [ 80, %2 ], [ %.lcssa2, %.loopexit1 ], !dbg !1162
  %44 = load i32, ptr @optind, align 4, !dbg !1202, !tbaa !997
  %45 = icmp eq i32 %44, %0, !dbg !1203
  br i1 %45, label %50, label %46, !dbg !1204

46:                                               ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !1156, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1153, metadata !DIExpression()), !dbg !1162
  %47 = icmp slt i32 %44, %0, !dbg !1206
  br i1 %47, label %48, label %62, !dbg !1208

48:                                               ; preds = %46
  %49 = sext i32 %44 to i64, !dbg !1208
  br label %52, !dbg !1208

50:                                               ; preds = %42
  %51 = call fastcc i1 @fold_file(ptr noundef nonnull @.str.16, i64 noundef %43), !dbg !1209
  tail call void @llvm.dbg.value(metadata i1 %51, metadata !1153, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1162
  br label %62, !dbg !1210

52:                                               ; preds = %48, %52
  %53 = phi i64 [ %49, %48 ], [ %59, %52 ]
  %54 = phi i1 [ true, %48 ], [ %58, %52 ]
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !1156, metadata !DIExpression()), !dbg !1205
  %55 = getelementptr inbounds ptr, ptr %1, i64 %53, !dbg !1211
  %56 = load ptr, ptr %55, align 8, !dbg !1211, !tbaa !927
  %57 = call fastcc i1 @fold_file(ptr noundef %56, i64 noundef %43), !dbg !1212
  %58 = and i1 %54, %57, !dbg !1213
  tail call void @llvm.dbg.value(metadata i1 %58, metadata !1153, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1162
  %59 = add nsw i64 %53, 1, !dbg !1214
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !1156, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1153, metadata !DIExpression()), !dbg !1162
  %60 = trunc i64 %59 to i32, !dbg !1206
  %61 = icmp eq i32 %60, %0, !dbg !1206
  br i1 %61, label %.loopexit, label %52, !dbg !1208, !llvm.loop !1215

.loopexit:                                        ; preds = %52
  %.lcssa = phi i1 [ %58, %52 ], !dbg !1213
  br label %62, !dbg !1217

62:                                               ; preds = %.loopexit, %46, %50
  %63 = phi i1 [ %51, %50 ], [ true, %46 ], [ %.lcssa, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1153, metadata !DIExpression()), !dbg !1162
  %64 = load i1, ptr @have_read_stdin, align 1, !dbg !1217
  br i1 %64, label %65, label %72, !dbg !1219

65:                                               ; preds = %62
  %66 = load ptr, ptr @stdin, align 8, !dbg !1220, !tbaa !927
  %67 = call i32 @rpl_fclose(ptr noundef %66) #39, !dbg !1221
  %68 = icmp eq i32 %67, -1, !dbg !1222
  br i1 %68, label %69, label %72, !dbg !1223

69:                                               ; preds = %65
  %70 = tail call ptr @__errno_location() #42, !dbg !1224
  %71 = load i32, ptr %70, align 4, !dbg !1224, !tbaa !997
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %71, ptr noundef nonnull @.str.16) #39, !dbg !1224
  unreachable, !dbg !1224

72:                                               ; preds = %65, %62
  %73 = xor i1 %63, true, !dbg !1225
  %74 = zext i1 %73 to i32, !dbg !1225
  ret i32 %74, !dbg !1226
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1227 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1230 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1231 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1234 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define internal fastcc noundef i1 @fold_file(ptr noundef %0, i64 noundef %1) unnamed_addr #10 !dbg !403 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1240
  %4 = alloca i32, align 4, !DIAssignID !1241
  %5 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1242
  %6 = alloca i32, align 4, !DIAssignID !1243
  %7 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1244
  %8 = alloca i32, align 4, !DIAssignID !1245
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !407, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !408, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr %0, metadata !1008, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1014, metadata !DIExpression()), !dbg !1247
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.16) #40, !dbg !1250
  %10 = icmp eq i32 %9, 0, !dbg !1251
  br i1 %10, label %11, label %13, !dbg !1252

11:                                               ; preds = %2
  %12 = load ptr, ptr @stdin, align 8, !dbg !1253, !tbaa !927
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !409, metadata !DIExpression()), !dbg !1246
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1255
  br label %15, !dbg !1256

13:                                               ; preds = %2
  %14 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.60) #39, !dbg !1257
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !409, metadata !DIExpression()), !dbg !1246
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ], !dbg !1258
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !409, metadata !DIExpression()), !dbg !1246
  %17 = icmp eq ptr %16, null, !dbg !1259
  br i1 %17, label %18, label %22, !dbg !1261

18:                                               ; preds = %15
  %19 = tail call ptr @__errno_location() #42, !dbg !1262
  %20 = load i32, ptr %19, align 4, !dbg !1262, !tbaa !997
  %21 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1262
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.61, ptr noundef %21) #39, !dbg !1262
  br label %290, !dbg !1264

22:                                               ; preds = %15
  tail call void @fadvise(ptr noundef nonnull %16, i32 noundef 2) #39, !dbg !1265
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_in, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 262144, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  br label %23, !dbg !1266

23:                                               ; preds = %97, %22
  %24 = phi i64 [ 0, %22 ], [ %94, %97 ], !dbg !1246
  %25 = phi i64 [ 0, %22 ], [ %52, %97 ], !dbg !1246
  %26 = phi i64 [ 0, %22 ], [ %98, %97 ], !dbg !1246
  %27 = phi i64 [ 0, %22 ], [ %99, %97 ], !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !410, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !411, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr undef, metadata !1267, metadata !DIExpression()), !dbg !1278
  %28 = sub nsw i64 %25, %24, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %28, metadata !1273, metadata !DIExpression()), !dbg !1278
  %29 = icmp slt i64 %28, 4, !dbg !1281
  br i1 %29, label %30, label %50, !dbg !1282

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %16, metadata !1283, metadata !DIExpression()), !dbg !1289
  %31 = load i32, ptr %16, align 8, !dbg !1291, !tbaa !1292
  %32 = and i32 %31, 16, !dbg !1295
  %33 = icmp eq i32 %32, 0, !dbg !1295
  br i1 %33, label %34, label %45, !dbg !1296

34:                                               ; preds = %30
  %35 = icmp sgt i64 %28, 0, !dbg !1297
  br i1 %35, label %36, label %39, !dbg !1299

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %24, !dbg !1300
  call void @llvm.dbg.value(metadata ptr @fold_file.line_in, metadata !1302, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %37, metadata !1308, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %28, metadata !1309, metadata !DIExpression()), !dbg !1310
  %38 = call ptr @__memmove_chk(ptr noundef nonnull @fold_file.line_in, ptr noundef nonnull %37, i64 noundef %28, i64 noundef 262144) #39, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %28, metadata !1274, metadata !DIExpression()), !dbg !1313
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i64 [ %28, %36 ], [ 0, %34 ], !dbg !1314
  call void @llvm.dbg.value(metadata i64 %40, metadata !1274, metadata !DIExpression()), !dbg !1313
  %41 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %40, !dbg !1315
  %42 = sub nuw nsw i64 262144, %40, !dbg !1315
  %43 = call i64 @fread_unlocked(ptr noundef nonnull %41, i64 noundef 1, i64 noundef %42, ptr noundef nonnull %16), !dbg !1315
  %44 = add i64 %43, %40, !dbg !1316
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %44, metadata !1273, metadata !DIExpression()), !dbg !1278
  br label %45, !dbg !1317

45:                                               ; preds = %39, %30
  %46 = phi i64 [ 0, %39 ], [ %24, %30 ], !dbg !1246
  %47 = phi i64 [ %44, %39 ], [ %25, %30 ], !dbg !1246
  %48 = phi i64 [ %44, %39 ], [ %28, %30 ], !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %48, metadata !1273, metadata !DIExpression()), !dbg !1278
  %49 = icmp slt i64 %48, 1, !dbg !1318
  br i1 %49, label %265, label %50, !dbg !1320

50:                                               ; preds = %45, %23
  %51 = phi i64 [ %46, %45 ], [ %24, %23 ], !dbg !1246
  %52 = phi i64 [ %47, %45 ], [ %25, %23 ], !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  %53 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %51, !dbg !1321
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1322, metadata !DIExpression(), metadata !1244, metadata ptr %7, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1330, metadata !DIExpression(), metadata !1245, metadata ptr %8, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr %53, metadata !1327, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1328, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1342
  %54 = load i8, ptr %53, align 1, !dbg !1344, !tbaa !1006
  call void @llvm.dbg.value(metadata i8 %54, metadata !1329, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i8 %54, metadata !1345, metadata !DIExpression()), !dbg !1350
  %55 = icmp sgt i8 %54, -1, !dbg !1353
  br i1 %55, label %56, label %59, !dbg !1354

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 1, metadata !1355, metadata !DIExpression()), !dbg !1361
  %57 = zext nneg i8 %54 to i64, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %57, metadata !1360, metadata !DIExpression()), !dbg !1361
  %58 = or disjoint i64 %57, 1099511627776, !dbg !1363
  br label %80, !dbg !1364

59:                                               ; preds = %50
  call void @llvm.dbg.value(metadata !DIArgList(ptr @fold_file.line_in, i64 %52), metadata !1328, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1342
  %60 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %52, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %60, metadata !1328, metadata !DIExpression()), !dbg !1342
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !1366
  store i32 0, ptr %7, align 4, !dbg !1367, !tbaa !1368, !DIAssignID !1370
  call void @llvm.dbg.assign(metadata i32 0, metadata !1322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1370, metadata ptr %7, metadata !DIExpression()), !dbg !1342
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #39, !dbg !1371
  %61 = ptrtoint ptr %60 to i64, !dbg !1372
  %62 = ptrtoint ptr %53 to i64, !dbg !1372
  %63 = sub i64 %61, %62, !dbg !1372
  %64 = call i64 @mbrtoc32(ptr noundef nonnull %8, ptr noundef nonnull %53, i64 noundef %63, ptr noundef nonnull %7) #39, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %64, metadata !1331, metadata !DIExpression()), !dbg !1342
  %65 = icmp slt i64 %64, 0, !dbg !1374
  br i1 %65, label %66, label %70, !dbg !1376, !prof !1377

66:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i8 %54, metadata !1378, metadata !DIExpression()), !dbg !1383
  %67 = zext i8 %54 to i64, !dbg !1385
  %68 = shl nuw nsw i64 %67, 32, !dbg !1385
  %69 = or disjoint i64 %68, 1099511627776, !dbg !1385
  br label %78, !dbg !1386

70:                                               ; preds = %59
  %71 = load i32, ptr %8, align 4, !dbg !1387, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %71, metadata !1360, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %64, metadata !1355, metadata !DIExpression()), !dbg !1388
  %72 = icmp ne i64 %64, 0, !dbg !1390
  call void @llvm.assume(i1 %72), !dbg !1390
  %73 = icmp ult i64 %64, 5, !dbg !1391
  call void @llvm.assume(i1 %73), !dbg !1391
  %74 = icmp ult i32 %71, 1114112, !dbg !1392
  call void @llvm.assume(i1 %74), !dbg !1392
  %75 = shl nuw nsw i64 %64, 40, !dbg !1393
  %76 = zext nneg i32 %71 to i64, !dbg !1393
  %77 = or disjoint i64 %75, %76, !dbg !1393
  br label %78, !dbg !1394

78:                                               ; preds = %70, %66
  %79 = phi i64 [ %69, %66 ], [ %77, %70 ], !dbg !1342
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #39, !dbg !1395
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !1395
  br label %80

80:                                               ; preds = %78, %56
  %81 = phi i64 [ %58, %56 ], [ %79, %78 ], !dbg !1342
  call void @llvm.dbg.value(metadata i64 %81, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %81, metadata !1277, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %81, metadata !1277, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %81, metadata !1277, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1278
  %82 = and i64 %81, 1095216660480, !dbg !1396
  %83 = icmp eq i64 %82, 0, !dbg !1396
  br i1 %83, label %84, label %86, !dbg !1398

84:                                               ; preds = %80
  %85 = lshr i64 %81, 40, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %85, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %81, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1278
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %51, i64 %85), metadata !416, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  br label %90, !dbg !1400

86:                                               ; preds = %80
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !416, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  %87 = load i8, ptr %53, align 1, !dbg !1401, !tbaa !1006
  %88 = zext i8 %87 to i64, !dbg !1403
  call void @llvm.dbg.value(metadata i8 %87, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1278
  %89 = lshr i64 %81, 40, !dbg !1404
  br label %90

90:                                               ; preds = %84, %86
  %91 = phi i64 [ %85, %84 ], [ %89, %86 ], !dbg !1404
  %92 = phi i64 [ %85, %84 ], [ 1, %86 ]
  %93 = phi i64 [ %81, %84 ], [ %88, %86 ], !dbg !1278
  %94 = add nsw i64 %92, %51, !dbg !1405
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata i32 poison, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1246
  call void @llvm.dbg.value(metadata i64 poison, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1278
  call void @llvm.dbg.value(metadata i64 poison, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1278
  call void @llvm.dbg.value(metadata i64 poison, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1278
  call void @llvm.dbg.value(metadata i64 poison, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1278
  %95 = trunc i64 %93 to i32, !dbg !1404
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !427, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1246
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !427, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !427, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1246
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !427, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1246
  switch i32 %95, label %.preheader [
    i32 -1, label %265
    i32 10, label %96
  ], !dbg !1266

.preheader:                                       ; preds = %90
  br label %100, !dbg !1406

96:                                               ; preds = %90
  call fastcc void @write_out(i64 noundef %26, i1 noundef true), !dbg !1423
  tail call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1246
  br label %97, !dbg !1426

97:                                               ; preds = %96, %247, %258
  %98 = phi i64 [ 0, %96 ], [ %91, %247 ], [ %264, %258 ]
  %99 = phi i64 [ 0, %96 ], [ %.lcssa5, %247 ], [ %254, %258 ]
  br label %23, !dbg !1246, !llvm.loop !1427

100:                                              ; preds = %.preheader, %185
  %101 = phi i64 [ %186, %185 ], [ %26, %.preheader ], !dbg !1246
  %102 = phi i64 [ %187, %185 ], [ %27, %.preheader ], !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !410, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !411, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.label(metadata !438), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %95, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1430
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1430
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1430
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %102, metadata !1411, metadata !DIExpression()), !dbg !1430
  %103 = load i32, ptr @counting_mode, align 4, !dbg !1431, !tbaa !997
  %104 = icmp eq i32 %103, 1, !dbg !1432
  br i1 %104, label %125, label %105, !dbg !1406

105:                                              ; preds = %100
  switch i32 %95, label %115 [
    i32 8, label %106
    i32 13, label %253
    i32 9, label %112
  ], !dbg !1433

106:                                              ; preds = %105
  %107 = icmp eq i64 %102, 0, !dbg !1434
  br i1 %107, label %253, label %108, !dbg !1437

108:                                              ; preds = %106
  %109 = load i32, ptr @last_character_width, align 4, !dbg !1438, !tbaa !997
  %110 = sext i32 %109 to i64, !dbg !1438
  %111 = sub i64 %102, %110, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %111, metadata !1411, metadata !DIExpression()), !dbg !1430
  br label %127, !dbg !1440

112:                                              ; preds = %105
  %113 = and i64 %102, -8, !dbg !1441
  %114 = add i64 %113, 8, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %114, metadata !1411, metadata !DIExpression()), !dbg !1430
  br label %127, !dbg !1442

115:                                              ; preds = %105
  %116 = icmp eq i32 %103, 2, !dbg !1443
  br i1 %116, label %121, label %117, !dbg !1444

117:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %95, metadata !1445, metadata !DIExpression()), !dbg !1451
  %118 = call i32 @wcwidth(i32 noundef %95) #39, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %118, metadata !1413, metadata !DIExpression()), !dbg !1454
  %119 = icmp slt i32 %118, 0, !dbg !1455
  %120 = select i1 %119, i32 1, i32 %118, !dbg !1456
  br label %121

121:                                              ; preds = %117, %115
  %122 = phi i32 [ %120, %117 ], [ 1, %115 ], !dbg !1457
  store i32 %122, ptr @last_character_width, align 4, !dbg !1457, !tbaa !997
  %123 = sext i32 %122 to i64, !dbg !1458
  %124 = add i64 %102, %123, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %124, metadata !1411, metadata !DIExpression()), !dbg !1430
  br label %127

125:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i64 %91, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %91, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1430
  %126 = add i64 %102, %91, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %126, metadata !1411, metadata !DIExpression()), !dbg !1430
  br label %127

127:                                              ; preds = %108, %112, %121, %125
  %128 = phi i64 [ %111, %108 ], [ %114, %112 ], [ %124, %121 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !1411, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !410, metadata !DIExpression()), !dbg !1246
  %129 = icmp ugt i64 %128, %1, !dbg !1461
  br i1 %129, label %130, label %253, !dbg !1462

130:                                              ; preds = %127
  %131 = load i1, ptr @break_spaces, align 1, !dbg !1463
  br i1 %131, label %132, label %245, !dbg !1464

132:                                              ; preds = %130
  tail call void @llvm.dbg.value(metadata i32 0, metadata !440, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !445, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !446, metadata !DIExpression()), !dbg !1465
  %133 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %101, !dbg !1466
  tail call void @llvm.dbg.value(metadata ptr %133, metadata !447, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i32 0, metadata !440, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !445, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !446, metadata !DIExpression()), !dbg !1465
  %134 = icmp sgt i64 %101, 0, !dbg !1467
  br i1 %134, label %135, label %245, !dbg !1469

135:                                              ; preds = %132
  %136 = ptrtoint ptr %133 to i64
  br label %139, !dbg !1469

137:                                              ; preds = %164
  %.lcssa1 = phi i64 [ %173, %164 ], !dbg !1470
  %.lcssa = phi i32 [ %174, %164 ], !dbg !1470
  %138 = icmp eq i32 %.lcssa, 0, !dbg !1472
  br i1 %138, label %245, label %177, !dbg !1473

139:                                              ; preds = %135, %164
  %140 = phi i32 [ 0, %135 ], [ %174, %164 ]
  %141 = phi i64 [ %101, %135 ], [ %173, %164 ]
  %142 = phi ptr [ @fold_file.line_out, %135 ], [ %175, %164 ]
  tail call void @llvm.dbg.value(metadata i32 %140, metadata !440, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !445, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata ptr %142, metadata !446, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1322, metadata !DIExpression(), metadata !1242, metadata ptr %5, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1330, metadata !DIExpression(), metadata !1243, metadata ptr %6, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr %142, metadata !1327, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr %133, metadata !1328, metadata !DIExpression()), !dbg !1474
  %143 = load i8, ptr %142, align 1, !dbg !1476, !tbaa !1006
  call void @llvm.dbg.value(metadata i8 %143, metadata !1329, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8 %143, metadata !1345, metadata !DIExpression()), !dbg !1477
  %144 = icmp sgt i8 %143, -1, !dbg !1479
  br i1 %144, label %145, label %149, !dbg !1480

145:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 1, metadata !1355, metadata !DIExpression()), !dbg !1481
  %146 = zext nneg i8 %143 to i64, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %146, metadata !1360, metadata !DIExpression()), !dbg !1481
  %147 = or disjoint i64 %146, 1099511627776, !dbg !1483
  %148 = ptrtoint ptr %142 to i64, !dbg !1470
  br label %164, !dbg !1484

149:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !1485
  store i32 0, ptr %5, align 4, !dbg !1486, !tbaa !1368, !DIAssignID !1487
  call void @llvm.dbg.assign(metadata i32 0, metadata !1322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1487, metadata ptr %5, metadata !DIExpression()), !dbg !1474
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #39, !dbg !1488
  %150 = ptrtoint ptr %142 to i64, !dbg !1489
  %151 = sub i64 %136, %150, !dbg !1489
  %152 = call i64 @mbrtoc32(ptr noundef nonnull %6, ptr noundef nonnull %142, i64 noundef %151, ptr noundef nonnull %5) #39, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %152, metadata !1331, metadata !DIExpression()), !dbg !1474
  %153 = icmp slt i64 %152, 0, !dbg !1491
  br i1 %153, label %162, label %154, !dbg !1492, !prof !1377

154:                                              ; preds = %149
  %155 = load i32, ptr %6, align 4, !dbg !1493, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %155, metadata !1360, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i64 %152, metadata !1355, metadata !DIExpression()), !dbg !1494
  %156 = icmp ne i64 %152, 0, !dbg !1496
  call void @llvm.assume(i1 %156), !dbg !1496
  %157 = icmp ult i64 %152, 5, !dbg !1497
  call void @llvm.assume(i1 %157), !dbg !1497
  %158 = icmp ult i32 %155, 1114112, !dbg !1498
  call void @llvm.assume(i1 %158), !dbg !1498
  %159 = shl nuw nsw i64 %152, 40, !dbg !1499
  %160 = zext nneg i32 %155 to i64, !dbg !1499
  %161 = or disjoint i64 %159, %160, !dbg !1499
  br label %162, !dbg !1500

162:                                              ; preds = %149, %154
  %163 = phi i64 [ %161, %154 ], [ 1099511627776, %149 ], !dbg !1474
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #39, !dbg !1501
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !1501
  br label %164

164:                                              ; preds = %145, %162
  %165 = phi i64 [ %148, %145 ], [ %150, %162 ], !dbg !1470
  %166 = phi i64 [ %147, %145 ], [ %163, %162 ], !dbg !1474
  %167 = trunc i64 %166 to i32, !dbg !1502
  %168 = lshr i64 %166, 40, !dbg !1502
  tail call void @llvm.dbg.value(metadata i32 %167, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1503
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !448, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1503
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !448, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1503
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !448, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %167, metadata !1504, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i32 %167, metadata !1512, metadata !DIExpression()), !dbg !1519
  %169 = call i32 @iswblank(i32 noundef %167) #39, !dbg !1521
  %170 = icmp eq i32 %169, 0, !dbg !1522
  %171 = trunc i64 %168 to i32, !dbg !1470
  %172 = sub i64 %165, ptrtoint (ptr @fold_file.line_out to i64), !dbg !1470
  %173 = select i1 %170, i64 %141, i64 %172, !dbg !1470
  %174 = select i1 %170, i32 %140, i32 %171, !dbg !1470
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !440, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !445, metadata !DIExpression()), !dbg !1465
  %175 = getelementptr inbounds i8, ptr %142, i64 %168, !dbg !1523
  tail call void @llvm.dbg.value(metadata ptr %175, metadata !446, metadata !DIExpression()), !dbg !1465
  %176 = icmp ult ptr %175, %133, !dbg !1467
  br i1 %176, label %139, label %137, !dbg !1469, !llvm.loop !1524

177:                                              ; preds = %137
  %178 = zext nneg i32 %.lcssa to i64
  %179 = add nsw i64 %.lcssa1, %178, !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !445, metadata !DIExpression()), !dbg !1465
  call fastcc void @write_out(i64 noundef %179, i1 noundef true), !dbg !1527
  %180 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %179, !dbg !1528
  %181 = sub nsw i64 %101, %179, !dbg !1529
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1302, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata ptr %180, metadata !1308, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i64 %181, metadata !1309, metadata !DIExpression()), !dbg !1530
  %182 = call ptr @__memmove_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %180, i64 noundef %181, i64 noundef 262144) #39, !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !411, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !450, metadata !DIExpression()), !dbg !1533
  %183 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %181, !dbg !1534
  tail call void @llvm.dbg.value(metadata ptr %183, metadata !453, metadata !DIExpression()), !dbg !1533
  %184 = icmp sgt i64 %181, 0, !dbg !1535
  br i1 %184, label %188, label %185, !dbg !1537

.loopexit:                                        ; preds = %241
  %.lcssa2 = phi i64 [ %242, %241 ]
  br label %185, !dbg !1246

185:                                              ; preds = %.loopexit, %177, %252
  %186 = phi i64 [ 0, %252 ], [ %181, %177 ], [ %181, %.loopexit ]
  %187 = phi i64 [ 0, %252 ], [ 0, %177 ], [ %.lcssa2, %.loopexit ]
  br label %100, !dbg !1246

188:                                              ; preds = %177
  %189 = ptrtoint ptr %183 to i64
  br label %190, !dbg !1537

190:                                              ; preds = %188, %241
  %191 = phi i64 [ 0, %188 ], [ %242, %241 ]
  %192 = phi ptr [ @fold_file.line_out, %188 ], [ %243, %241 ]
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !410, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata ptr %192, metadata !450, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1322, metadata !DIExpression(), metadata !1240, metadata ptr %3, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1330, metadata !DIExpression(), metadata !1241, metadata ptr %4, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata ptr %192, metadata !1327, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata ptr %183, metadata !1328, metadata !DIExpression()), !dbg !1538
  %193 = load i8, ptr %192, align 1, !dbg !1541, !tbaa !1006
  call void @llvm.dbg.value(metadata i8 %193, metadata !1329, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8 %193, metadata !1345, metadata !DIExpression()), !dbg !1542
  %194 = icmp sgt i8 %193, -1, !dbg !1544
  br i1 %194, label %195, label %198, !dbg !1545

195:                                              ; preds = %190
  call void @llvm.dbg.value(metadata i64 1, metadata !1355, metadata !DIExpression()), !dbg !1546
  %196 = zext nneg i8 %193 to i64, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %196, metadata !1360, metadata !DIExpression()), !dbg !1546
  %197 = or disjoint i64 %196, 1099511627776, !dbg !1548
  br label %213, !dbg !1549

198:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1550
  store i32 0, ptr %3, align 4, !dbg !1551, !tbaa !1368, !DIAssignID !1552
  call void @llvm.dbg.assign(metadata i32 0, metadata !1322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1552, metadata ptr %3, metadata !DIExpression()), !dbg !1538
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #39, !dbg !1553
  %199 = ptrtoint ptr %192 to i64, !dbg !1554
  %200 = sub i64 %189, %199, !dbg !1554
  %201 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %192, i64 noundef %200, ptr noundef nonnull %3) #39, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %201, metadata !1331, metadata !DIExpression()), !dbg !1538
  %202 = icmp slt i64 %201, 0, !dbg !1556
  br i1 %202, label %211, label %203, !dbg !1557, !prof !1377

203:                                              ; preds = %198
  %204 = load i32, ptr %4, align 4, !dbg !1558, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %204, metadata !1360, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i64 %201, metadata !1355, metadata !DIExpression()), !dbg !1559
  %205 = icmp ne i64 %201, 0, !dbg !1561
  call void @llvm.assume(i1 %205), !dbg !1561
  %206 = icmp ult i64 %201, 5, !dbg !1562
  call void @llvm.assume(i1 %206), !dbg !1562
  %207 = icmp ult i32 %204, 1114112, !dbg !1563
  call void @llvm.assume(i1 %207), !dbg !1563
  %208 = shl nuw nsw i64 %201, 40, !dbg !1564
  %209 = zext nneg i32 %204 to i64, !dbg !1564
  %210 = or disjoint i64 %208, %209, !dbg !1564
  br label %211, !dbg !1565

211:                                              ; preds = %198, %203
  %212 = phi i64 [ %210, %203 ], [ 1099511627776, %198 ], !dbg !1538
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #39, !dbg !1566
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1566
  br label %213

213:                                              ; preds = %195, %211
  %214 = phi i64 [ %197, %195 ], [ %212, %211 ], !dbg !1538
  %215 = lshr i64 %214, 40, !dbg !1567
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !454, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !454, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !454, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1568
  %216 = trunc i64 %214 to i32
  call void @llvm.dbg.value(metadata i32 %216, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1569
  call void @llvm.dbg.value(metadata i64 %214, metadata !1412, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1569
  call void @llvm.dbg.value(metadata i64 %214, metadata !1412, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1569
  call void @llvm.dbg.value(metadata i64 %214, metadata !1412, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1569
  call void @llvm.dbg.value(metadata i64 %191, metadata !1411, metadata !DIExpression()), !dbg !1569
  %217 = load i32, ptr @counting_mode, align 4, !dbg !1571, !tbaa !997
  %218 = icmp eq i32 %217, 1, !dbg !1572
  br i1 %218, label %239, label %219, !dbg !1573

219:                                              ; preds = %213
  switch i32 %216, label %229 [
    i32 8, label %220
    i32 13, label %241
    i32 9, label %226
  ], !dbg !1574

220:                                              ; preds = %219
  %221 = icmp eq i64 %191, 0, !dbg !1575
  br i1 %221, label %241, label %222, !dbg !1576

222:                                              ; preds = %220
  %223 = load i32, ptr @last_character_width, align 4, !dbg !1577, !tbaa !997
  %224 = sext i32 %223 to i64, !dbg !1577
  %225 = sub i64 %191, %224, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %225, metadata !1411, metadata !DIExpression()), !dbg !1569
  br label %241, !dbg !1579

226:                                              ; preds = %219
  %227 = and i64 %191, -8, !dbg !1580
  %228 = add i64 %227, 8, !dbg !1580
  call void @llvm.dbg.value(metadata i64 %228, metadata !1411, metadata !DIExpression()), !dbg !1569
  br label %241, !dbg !1581

229:                                              ; preds = %219
  %230 = icmp eq i32 %217, 2, !dbg !1582
  br i1 %230, label %235, label %231, !dbg !1583

231:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i32 %216, metadata !1445, metadata !DIExpression()), !dbg !1584
  %232 = call i32 @wcwidth(i32 noundef %216) #39, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %232, metadata !1413, metadata !DIExpression()), !dbg !1587
  %233 = icmp slt i32 %232, 0, !dbg !1588
  %234 = select i1 %233, i32 1, i32 %232, !dbg !1589
  br label %235

235:                                              ; preds = %231, %229
  %236 = phi i32 [ %234, %231 ], [ 1, %229 ], !dbg !1590
  store i32 %236, ptr @last_character_width, align 4, !dbg !1590, !tbaa !997
  %237 = sext i32 %236 to i64, !dbg !1591
  %238 = add i64 %191, %237, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %238, metadata !1411, metadata !DIExpression()), !dbg !1569
  br label %241

239:                                              ; preds = %213
  call void @llvm.dbg.value(metadata i64 %215, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1569
  %240 = add i64 %215, %191, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %240, metadata !1411, metadata !DIExpression()), !dbg !1569
  br label %241

241:                                              ; preds = %219, %220, %222, %226, %235, %239
  %242 = phi i64 [ %225, %222 ], [ 0, %220 ], [ %228, %226 ], [ %238, %235 ], [ %240, %239 ], [ 0, %219 ]
  call void @llvm.dbg.value(metadata i64 %242, metadata !1411, metadata !DIExpression()), !dbg !1569
  tail call void @llvm.dbg.value(metadata i64 %242, metadata !410, metadata !DIExpression()), !dbg !1246
  %243 = getelementptr inbounds i8, ptr %192, i64 %215, !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %243, metadata !450, metadata !DIExpression()), !dbg !1533
  %244 = icmp ult ptr %243, %183, !dbg !1535
  br i1 %244, label %190, label %.loopexit, !dbg !1537, !llvm.loop !1595

245:                                              ; preds = %132, %137, %130
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !410, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !411, metadata !DIExpression()), !dbg !1246
  %246 = icmp eq i64 %101, 0, !dbg !1597
  br i1 %246, label %247, label %252, !dbg !1599

247:                                              ; preds = %245
  %.lcssa5 = phi i64 [ %128, %245 ]
  call void @llvm.dbg.value(metadata i64 poison, metadata !1600, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %91, metadata !1600, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1606
  call void @llvm.dbg.value(metadata i64 poison, metadata !1600, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1606
  call void @llvm.dbg.value(metadata ptr undef, metadata !1605, metadata !DIExpression()), !dbg !1606
  %248 = icmp sge i64 %94, %91, !dbg !1609
  call void @llvm.assume(i1 %248), !dbg !1611
  %249 = sub nsw i64 %94, %91, !dbg !1612
  %250 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %249, !dbg !1613
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1614, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %250, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %91, metadata !1621, metadata !DIExpression()), !dbg !1622
  %251 = call ptr @__memcpy_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %250, i64 noundef %91, i64 noundef 262144) #39, !dbg !1624, !alias.scope !1625
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !411, metadata !DIExpression()), !dbg !1246
  br label %97, !dbg !1629

252:                                              ; preds = %245
  call fastcc void @write_out(i64 noundef %101, i1 noundef true), !dbg !1630
  tail call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1246
  br label %185, !dbg !1631

253:                                              ; preds = %105, %106, %127
  %.lcssa3 = phi i64 [ %101, %105 ], [ %101, %106 ], [ %101, %127 ], !dbg !1246
  %254 = phi i64 [ %128, %127 ], [ 0, %106 ], [ 0, %105 ]
  %255 = add nsw i64 %.lcssa3, %91, !dbg !1632
  %256 = icmp ugt i64 %255, 262143, !dbg !1634
  br i1 %256, label %257, label %258, !dbg !1635

257:                                              ; preds = %253
  call fastcc void @write_out(i64 noundef %.lcssa3, i1 noundef false), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1246
  br label %258, !dbg !1638

258:                                              ; preds = %257, %253
  %259 = phi i64 [ 0, %257 ], [ %.lcssa3, %253 ], !dbg !1246
  tail call void @llvm.dbg.value(metadata i64 %259, metadata !411, metadata !DIExpression()), !dbg !1246
  %260 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %259, !dbg !1639
  call void @llvm.dbg.value(metadata i64 poison, metadata !1600, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1640
  call void @llvm.dbg.value(metadata i64 poison, metadata !1600, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1640
  call void @llvm.dbg.value(metadata i64 poison, metadata !1600, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1640
  call void @llvm.dbg.value(metadata ptr undef, metadata !1605, metadata !DIExpression()), !dbg !1640
  %261 = icmp sge i64 %94, %91, !dbg !1642
  call void @llvm.assume(i1 %261), !dbg !1643
  %262 = sub nsw i64 %94, %91, !dbg !1644
  %263 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %262, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %260, metadata !1614, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata ptr %263, metadata !1620, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64 %91, metadata !1621, metadata !DIExpression()), !dbg !1646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %260, ptr noundef nonnull align 1 %263, i64 noundef %91, i1 noundef false) #39, !dbg !1648
  %264 = add nsw i64 %259, %91, !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %264, metadata !411, metadata !DIExpression()), !dbg !1246
  br label %97, !dbg !1266

265:                                              ; preds = %45, %90
  %.lcssa6 = phi i64 [ %26, %45 ], [ %26, %90 ], !dbg !1246
  %266 = tail call ptr @__errno_location() #42, !dbg !1650
  %267 = load i32, ptr %266, align 4, !dbg !1650, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %267, metadata !426, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1651, metadata !DIExpression()), !dbg !1654
  %268 = load i32, ptr %16, align 8, !dbg !1657, !tbaa !1292
  %269 = and i32 %268, 32, !dbg !1658
  %270 = icmp eq i32 %269, 0, !dbg !1658
  %271 = select i1 %270, i32 0, i32 %267, !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 %271, metadata !426, metadata !DIExpression()), !dbg !1246
  %272 = icmp eq i64 %.lcssa6, 0, !dbg !1660
  br i1 %272, label %274, label %273, !dbg !1662

273:                                              ; preds = %265
  call fastcc void @write_out(i64 noundef %.lcssa6, i1 noundef false), !dbg !1663
  br label %274, !dbg !1663

274:                                              ; preds = %273, %265
  call void @llvm.dbg.value(metadata ptr %0, metadata !1008, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1014, metadata !DIExpression()), !dbg !1664
  %275 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.16) #40, !dbg !1667
  %276 = icmp eq i32 %275, 0, !dbg !1668
  br i1 %276, label %277, label %278, !dbg !1669

277:                                              ; preds = %274
  call void @clearerr_unlocked(ptr noundef nonnull %16) #39, !dbg !1670
  br label %285, !dbg !1670

278:                                              ; preds = %274
  %279 = call i32 @rpl_fclose(ptr noundef nonnull %16) #39, !dbg !1671
  %280 = icmp eq i32 %279, 0, !dbg !1673
  %281 = icmp ne i32 %271, 0
  %282 = select i1 %280, i1 true, i1 %281, !dbg !1674
  br i1 %282, label %285, label %283, !dbg !1674

283:                                              ; preds = %278
  %284 = load i32, ptr %266, align 4, !dbg !1675, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %284, metadata !426, metadata !DIExpression()), !dbg !1246
  br label %285, !dbg !1676

285:                                              ; preds = %278, %283, %277
  %286 = phi i32 [ %271, %277 ], [ %271, %278 ], [ %284, %283 ], !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %286, metadata !426, metadata !DIExpression()), !dbg !1246
  %287 = icmp eq i32 %286, 0, !dbg !1677
  br i1 %287, label %290, label %288, !dbg !1679

288:                                              ; preds = %285
  %289 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1680
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %286, ptr noundef nonnull @.str.61, ptr noundef %289) #39, !dbg !1680
  br label %290, !dbg !1682

290:                                              ; preds = %288, %285, %18
  %291 = phi i1 [ false, %18 ], [ true, %285 ], [ false, %288 ], !dbg !1246
  ret i1 %291, !dbg !1683
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1684 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1688 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1692 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @write_out(i64 noundef %0, i1 noundef %1) unnamed_addr #10 !dbg !1699 {
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1703, metadata !DIExpression()), !dbg !1711
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1704, metadata !DIExpression()), !dbg !1711
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1705, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1711
  %3 = load ptr, ptr @stdout, align 8, !dbg !1712, !tbaa !927
  %4 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @fold_file.line_out, i64 noundef 1, i64 noundef %0, ptr noundef %3), !dbg !1712
  %5 = icmp eq i64 %4, %0, !dbg !1713
  br i1 %5, label %6, label %19, !dbg !1714

6:                                                ; preds = %2
  br i1 %1, label %7, label %28, !dbg !1715

7:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 10, metadata !1716, metadata !DIExpression()), !dbg !1721
  %8 = load ptr, ptr @stdout, align 8, !dbg !1723, !tbaa !927
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %8, i64 0, i32 5, !dbg !1723
  %10 = load ptr, ptr %9, align 8, !dbg !1723, !tbaa !1724
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %8, i64 0, i32 6, !dbg !1723
  %12 = load ptr, ptr %11, align 8, !dbg !1723, !tbaa !1725
  %13 = icmp ult ptr %10, %12, !dbg !1723
  br i1 %13, label %14, label %16, !dbg !1723, !prof !1726

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1723
  store ptr %15, ptr %9, align 8, !dbg !1723, !tbaa !1724
  store i8 10, ptr %10, align 1, !dbg !1723, !tbaa !1006
  br label %28, !dbg !1727

16:                                               ; preds = %7
  %17 = tail call i32 @__overflow(ptr noundef nonnull %8, i32 noundef 10) #39, !dbg !1723
  %18 = icmp slt i32 %17, 0, !dbg !1728
  br i1 %18, label %19, label %28, !dbg !1727

19:                                               ; preds = %16, %2
  %20 = tail call ptr @__errno_location() #42, !dbg !1729
  %21 = load i32, ptr %20, align 4, !dbg !1729, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %21, metadata !1732, metadata !DIExpression()), !dbg !1734
  %22 = load ptr, ptr @stdout, align 8, !dbg !1735, !tbaa !927
  %23 = tail call i32 @fflush_unlocked(ptr noundef %22) #39, !dbg !1735
  %24 = load ptr, ptr @stdout, align 8, !dbg !1736, !tbaa !927
  %25 = tail call i32 @fpurge(ptr noundef %24) #39, !dbg !1737
  %26 = load ptr, ptr @stdout, align 8, !dbg !1738, !tbaa !927
  tail call void @clearerr_unlocked(ptr noundef %26) #39, !dbg !1738
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #39, !dbg !1739
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %21, ptr noundef %27) #39, !dbg !1739
  unreachable, !dbg !1739

28:                                               ; preds = %14, %16, %6
  ret void, !dbg !1740
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !1741 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1747 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(argmem: readwrite)
declare !dbg !1749 ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nounwind
declare !dbg !1750 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1753 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1756 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1757 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1759, metadata !DIExpression()), !dbg !1760
  store ptr %0, ptr @file_name, align 8, !dbg !1761, !tbaa !927
  ret void, !dbg !1762
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1763 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1767, metadata !DIExpression()), !dbg !1768
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1769, !tbaa !1770
  ret void, !dbg !1772
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1773 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1778, !tbaa !927
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1779
  %3 = icmp eq i32 %2, 0, !dbg !1780
  br i1 %3, label %22, label %4, !dbg !1781

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1782, !tbaa !1770, !range !1783, !noundef !965
  %6 = icmp eq i8 %5, 0, !dbg !1782
  br i1 %6, label %11, label %7, !dbg !1784

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1785
  %9 = load i32, ptr %8, align 4, !dbg !1785, !tbaa !997
  %10 = icmp eq i32 %9, 32, !dbg !1786
  br i1 %10, label %22, label %11, !dbg !1787

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 5) #39, !dbg !1788
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1775, metadata !DIExpression()), !dbg !1789
  %13 = load ptr, ptr @file_name, align 8, !dbg !1790, !tbaa !927
  %14 = icmp eq ptr %13, null, !dbg !1790
  %15 = tail call ptr @__errno_location() #42, !dbg !1792
  %16 = load i32, ptr %15, align 4, !dbg !1792, !tbaa !997
  br i1 %14, label %19, label %17, !dbg !1793

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1794
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.28, ptr noundef %18, ptr noundef %12) #39, !dbg !1794
  br label %20, !dbg !1794

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.29, ptr noundef %12) #39, !dbg !1795
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1796, !tbaa !997
  tail call void @_exit(i32 noundef %21) #41, !dbg !1797
  unreachable, !dbg !1797

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1798, !tbaa !927
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1800
  %25 = icmp eq i32 %24, 0, !dbg !1801
  br i1 %25, label %28, label %26, !dbg !1802

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1803, !tbaa !997
  tail call void @_exit(i32 noundef %27) #41, !dbg !1804
  unreachable, !dbg !1804

28:                                               ; preds = %22
  ret void, !dbg !1805
}

; Function Attrs: noreturn
declare !dbg !1806 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1808 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1812, metadata !DIExpression()), !dbg !1816
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1813, metadata !DIExpression()), !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1814, metadata !DIExpression()), !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1815, metadata !DIExpression(DW_OP_deref)), !dbg !1816
  tail call fastcc void @flush_stdout(), !dbg !1817
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1818, !tbaa !927
  %7 = icmp eq ptr %6, null, !dbg !1818
  br i1 %7, label %9, label %8, !dbg !1820

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1821
  br label %13, !dbg !1821

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1822, !tbaa !927
  %11 = tail call ptr @getprogname() #40, !dbg !1822
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef %11) #39, !dbg !1822
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1824, !tbaa.struct !1825
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1824
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1824
  ret void, !dbg !1826
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1827 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1829, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 1, metadata !1831, metadata !DIExpression()), !dbg !1834
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1837
  %2 = icmp slt i32 %1, 0, !dbg !1838
  br i1 %2, label %6, label %3, !dbg !1839

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1840, !tbaa !927
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1840
  br label %6, !dbg !1840

6:                                                ; preds = %3, %0
  ret void, !dbg !1841
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1842 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1848
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1844, metadata !DIExpression()), !dbg !1849
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1845, metadata !DIExpression()), !dbg !1849
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1846, metadata !DIExpression()), !dbg !1849
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1847, metadata !DIExpression(DW_OP_deref)), !dbg !1849
  %7 = load ptr, ptr @stderr, align 8, !dbg !1850, !tbaa !927
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1851, !noalias !1895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1899
  call void @llvm.dbg.value(metadata ptr %7, metadata !1891, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata ptr %2, metadata !1892, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata ptr poison, metadata !1893, metadata !DIExpression(DW_OP_deref)), !dbg !1900
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1851
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1851, !noalias !1895
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1901, !tbaa !997
  %10 = add i32 %9, 1, !dbg !1901
  store i32 %10, ptr @error_message_count, align 4, !dbg !1901, !tbaa !997
  %11 = icmp eq i32 %1, 0, !dbg !1902
  br i1 %11, label %21, label %12, !dbg !1904

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1905, metadata !DIExpression(), metadata !1848, metadata ptr %5, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i32 %1, metadata !1908, metadata !DIExpression()), !dbg !1913
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1915
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1916
  call void @llvm.dbg.value(metadata ptr %13, metadata !1909, metadata !DIExpression()), !dbg !1913
  %14 = icmp eq ptr %13, null, !dbg !1917
  br i1 %14, label %15, label %17, !dbg !1919

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.31, ptr noundef nonnull @.str.5.32, i32 noundef 5) #39, !dbg !1920
  call void @llvm.dbg.value(metadata ptr %16, metadata !1909, metadata !DIExpression()), !dbg !1913
  br label %17, !dbg !1921

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1913
  call void @llvm.dbg.value(metadata ptr %18, metadata !1909, metadata !DIExpression()), !dbg !1913
  %19 = load ptr, ptr @stderr, align 8, !dbg !1922, !tbaa !927
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.33, ptr noundef %18) #39, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1923
  br label %21, !dbg !1924

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1925, !tbaa !927
  call void @llvm.dbg.value(metadata i32 10, metadata !1926, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %22, metadata !1931, metadata !DIExpression()), !dbg !1932
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1934
  %24 = load ptr, ptr %23, align 8, !dbg !1934, !tbaa !1724
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1934
  %26 = load ptr, ptr %25, align 8, !dbg !1934, !tbaa !1725
  %27 = icmp ult ptr %24, %26, !dbg !1934
  br i1 %27, label %30, label %28, !dbg !1934, !prof !1726

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1934
  br label %32, !dbg !1934

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1934
  store ptr %31, ptr %23, align 8, !dbg !1934, !tbaa !1724
  store i8 10, ptr %24, align 1, !dbg !1934, !tbaa !1006
  br label %32, !dbg !1934

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1935, !tbaa !927
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1935
  %35 = icmp eq i32 %0, 0, !dbg !1936
  br i1 %35, label %37, label %36, !dbg !1938

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1939
  unreachable, !dbg !1939

37:                                               ; preds = %32
  ret void, !dbg !1940
}

declare !dbg !1941 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1944 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1947 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1951 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1958, metadata !DIExpression(), metadata !1959, metadata ptr %4, metadata !DIExpression()), !dbg !1960
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1955, metadata !DIExpression()), !dbg !1960
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1956, metadata !DIExpression()), !dbg !1960
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1957, metadata !DIExpression()), !dbg !1960
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1961
  call void @llvm.va_start(ptr nonnull %4), !dbg !1962
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1963, !tbaa.struct !1825
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1963
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1963
  call void @llvm.va_end(ptr nonnull %4), !dbg !1964
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1965
  ret void, !dbg !1965
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !506 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !522, metadata !DIExpression()), !dbg !1966
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !523, metadata !DIExpression()), !dbg !1966
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !524, metadata !DIExpression()), !dbg !1966
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !525, metadata !DIExpression()), !dbg !1966
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !526, metadata !DIExpression()), !dbg !1966
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !527, metadata !DIExpression(DW_OP_deref)), !dbg !1966
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1967, !tbaa !997
  %9 = icmp eq i32 %8, 0, !dbg !1967
  br i1 %9, label %24, label %10, !dbg !1969

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1970, !tbaa !997
  %12 = icmp eq i32 %11, %3, !dbg !1973
  br i1 %12, label %13, label %23, !dbg !1974

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1975, !tbaa !927
  %15 = icmp eq ptr %14, %2, !dbg !1976
  br i1 %15, label %37, label %16, !dbg !1977

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1978
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1979
  br i1 %19, label %20, label %23, !dbg !1979

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1980
  %22 = icmp eq i32 %21, 0, !dbg !1981
  br i1 %22, label %37, label %23, !dbg !1982

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1983, !tbaa !927
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1984, !tbaa !997
  br label %24, !dbg !1985

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1986
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1987, !tbaa !927
  %26 = icmp eq ptr %25, null, !dbg !1987
  br i1 %26, label %28, label %27, !dbg !1989

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1990
  br label %32, !dbg !1990

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1991, !tbaa !927
  %30 = tail call ptr @getprogname() #40, !dbg !1991
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.36, ptr noundef %30) #39, !dbg !1991
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1993, !tbaa !927
  %34 = icmp eq ptr %2, null, !dbg !1993
  %35 = select i1 %34, ptr @.str.3.37, ptr @.str.2.38, !dbg !1993
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1993
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1994, !tbaa.struct !1825
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1994
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1994
  br label %37, !dbg !1995

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1995
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1996 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2006
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2005, metadata !DIExpression(), metadata !2006, metadata ptr %6, metadata !DIExpression()), !dbg !2007
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2000, metadata !DIExpression()), !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2001, metadata !DIExpression()), !dbg !2007
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2002, metadata !DIExpression()), !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2003, metadata !DIExpression()), !dbg !2007
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2008
  call void @llvm.va_start(ptr nonnull %6), !dbg !2009
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2010, !tbaa.struct !1825
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !2010
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2010
  call void @llvm.va_end(ptr nonnull %6), !dbg !2011
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2012
  ret void, !dbg !2012
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2013 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2019, metadata !DIExpression()), !dbg !2023
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2020, metadata !DIExpression()), !dbg !2023
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2021, metadata !DIExpression()), !dbg !2023
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2022, metadata !DIExpression()), !dbg !2023
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #39, !dbg !2024
  ret void, !dbg !2025
}

; Function Attrs: nounwind
declare !dbg !2026 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2029 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2067, metadata !DIExpression()), !dbg !2069
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2068, metadata !DIExpression()), !dbg !2069
  %3 = icmp eq ptr %0, null, !dbg !2070
  br i1 %3, label %7, label %4, !dbg !2072

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %5, metadata !2019, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 0, metadata !2021, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 %1, metadata !2022, metadata !DIExpression()), !dbg !2074
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #39, !dbg !2076
  br label %7, !dbg !2077

7:                                                ; preds = %4, %2
  ret void, !dbg !2078
}

; Function Attrs: nofree nounwind
declare !dbg !2079 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2082 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2120, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2121, metadata !DIExpression()), !dbg !2124
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2125
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2122, metadata !DIExpression()), !dbg !2124
  %3 = icmp slt i32 %2, 0, !dbg !2126
  br i1 %3, label %4, label %6, !dbg !2128

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2129
  br label %24, !dbg !2130

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2131
  %8 = icmp eq i32 %7, 0, !dbg !2131
  br i1 %8, label %13, label %9, !dbg !2133

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2134
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !2135
  %12 = icmp eq i64 %11, -1, !dbg !2136
  br i1 %12, label %16, label %13, !dbg !2137

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !2138
  %15 = icmp eq i32 %14, 0, !dbg !2138
  br i1 %15, label %16, label %18, !dbg !2139

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2121, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2123, metadata !DIExpression()), !dbg !2124
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2140
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2123, metadata !DIExpression()), !dbg !2124
  br label %24, !dbg !2141

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !2142
  %20 = load i32, ptr %19, align 4, !dbg !2142, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2121, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2123, metadata !DIExpression()), !dbg !2124
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2140
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2123, metadata !DIExpression()), !dbg !2124
  %22 = icmp eq i32 %20, 0, !dbg !2143
  br i1 %22, label %24, label %23, !dbg !2141

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2145, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2123, metadata !DIExpression()), !dbg !2124
  br label %24, !dbg !2147

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2124
  ret i32 %25, !dbg !2148
}

; Function Attrs: nofree nounwind
declare !dbg !2149 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2150 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2152 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2155 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2193, metadata !DIExpression()), !dbg !2194
  %2 = icmp eq ptr %0, null, !dbg !2195
  br i1 %2, label %6, label %3, !dbg !2197

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2198
  %5 = icmp eq i32 %4, 0, !dbg !2198
  br i1 %5, label %6, label %8, !dbg !2199

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2200
  br label %16, !dbg !2201

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2202, metadata !DIExpression()), !dbg !2207
  %9 = load i32, ptr %0, align 8, !dbg !2209, !tbaa !1292
  %10 = and i32 %9, 256, !dbg !2211
  %11 = icmp eq i32 %10, 0, !dbg !2211
  br i1 %11, label %14, label %12, !dbg !2212

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !2213
  br label %14, !dbg !2213

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2214
  br label %16, !dbg !2215

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2194
  ret i32 %17, !dbg !2216
}

; Function Attrs: nofree nounwind
declare !dbg !2217 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2218 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2256, metadata !DIExpression()), !dbg !2257
  tail call void @__fpurge(ptr noundef nonnull %0) #39, !dbg !2258
  ret i32 0, !dbg !2259
}

; Function Attrs: nounwind
declare !dbg !2260 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2263 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2301, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2302, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2303, metadata !DIExpression()), !dbg !2307
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2308
  %5 = load ptr, ptr %4, align 8, !dbg !2308, !tbaa !2309
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2310
  %7 = load ptr, ptr %6, align 8, !dbg !2310, !tbaa !2311
  %8 = icmp eq ptr %5, %7, !dbg !2312
  br i1 %8, label %9, label %27, !dbg !2313

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2314
  %11 = load ptr, ptr %10, align 8, !dbg !2314, !tbaa !1724
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2315
  %13 = load ptr, ptr %12, align 8, !dbg !2315, !tbaa !2316
  %14 = icmp eq ptr %11, %13, !dbg !2317
  br i1 %14, label %15, label %27, !dbg !2318

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2319
  %17 = load ptr, ptr %16, align 8, !dbg !2319, !tbaa !2320
  %18 = icmp eq ptr %17, null, !dbg !2321
  br i1 %18, label %19, label %27, !dbg !2322

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2323
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2304, metadata !DIExpression()), !dbg !2325
  %22 = icmp eq i64 %21, -1, !dbg !2326
  br i1 %22, label %29, label %23, !dbg !2328

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2329, !tbaa !1292
  %25 = and i32 %24, -17, !dbg !2329
  store i32 %25, ptr %0, align 8, !dbg !2329, !tbaa !1292
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2330
  store i64 %21, ptr %26, align 8, !dbg !2331, !tbaa !2332
  br label %29, !dbg !2333

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2334
  br label %29, !dbg !2335

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2307
  ret i32 %30, !dbg !2336
}

; Function Attrs: nofree nounwind
declare !dbg !2337 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2340 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2343, !tbaa !927
  ret ptr %1, !dbg !2344
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2345 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2347, metadata !DIExpression()), !dbg !2350
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2351
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2348, metadata !DIExpression()), !dbg !2350
  %3 = icmp eq ptr %2, null, !dbg !2352
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2352
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2352
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2349, metadata !DIExpression()), !dbg !2350
  %6 = ptrtoint ptr %5 to i64, !dbg !2353
  %7 = ptrtoint ptr %0 to i64, !dbg !2353
  %8 = sub i64 %6, %7, !dbg !2353
  %9 = icmp sgt i64 %8, 6, !dbg !2355
  br i1 %9, label %10, label %19, !dbg !2356

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2357
  call void @llvm.dbg.value(metadata ptr %11, metadata !2358, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr @.str.63, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 7, metadata !2364, metadata !DIExpression()), !dbg !2365
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.63, i64 7), !dbg !2367
  %13 = icmp eq i32 %12, 0, !dbg !2368
  br i1 %13, label %14, label %19, !dbg !2369

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2347, metadata !DIExpression()), !dbg !2350
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.64, i64 noundef 3) #40, !dbg !2370
  %16 = icmp eq i32 %15, 0, !dbg !2373
  %17 = select i1 %16, i64 3, i64 0, !dbg !2374
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2374
  br label %19, !dbg !2374

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2350
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2349, metadata !DIExpression()), !dbg !2350
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2347, metadata !DIExpression()), !dbg !2350
  store ptr %20, ptr @program_name, align 8, !dbg !2375, !tbaa !927
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2376, !tbaa !927
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2377, !tbaa !927
  ret void, !dbg !2378
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2379 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !564 {
  %3 = alloca i32, align 4, !DIAssignID !2380
  call void @llvm.dbg.assign(metadata i1 undef, metadata !574, metadata !DIExpression(), metadata !2380, metadata ptr %3, metadata !DIExpression()), !dbg !2381
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !575, metadata !DIExpression(), metadata !2382, metadata ptr %4, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !571, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !572, metadata !DIExpression()), !dbg !2381
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2383
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !573, metadata !DIExpression()), !dbg !2381
  %6 = icmp eq ptr %5, %0, !dbg !2384
  br i1 %6, label %7, label %14, !dbg !2386

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2387
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2388
  call void @llvm.dbg.value(metadata ptr %4, metadata !2389, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata ptr %4, metadata !2398, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 0, metadata !2403, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 8, metadata !2404, metadata !DIExpression()), !dbg !2405
  store i64 0, ptr %4, align 8, !dbg !2407
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2408
  %9 = icmp eq i64 %8, 2, !dbg !2410
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2411
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2381
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2412
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2412
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2381
  ret ptr %15, !dbg !2412
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2413 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2418, metadata !DIExpression()), !dbg !2421
  %2 = tail call ptr @__errno_location() #42, !dbg !2422
  %3 = load i32, ptr %2, align 4, !dbg !2422, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2419, metadata !DIExpression()), !dbg !2421
  %4 = icmp eq ptr %0, null, !dbg !2423
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2423
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !2424
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2420, metadata !DIExpression()), !dbg !2421
  store i32 %3, ptr %2, align 4, !dbg !2425, !tbaa !997
  ret ptr %6, !dbg !2426
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !2427 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2433, metadata !DIExpression()), !dbg !2434
  %2 = icmp eq ptr %0, null, !dbg !2435
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2435
  %4 = load i32, ptr %3, align 8, !dbg !2436, !tbaa !2437
  ret i32 %4, !dbg !2439
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2440 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2444, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2445, metadata !DIExpression()), !dbg !2446
  %3 = icmp eq ptr %0, null, !dbg !2447
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2447
  store i32 %1, ptr %4, align 8, !dbg !2448, !tbaa !2437
  ret void, !dbg !2449
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2454, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2455, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2456, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2457, metadata !DIExpression()), !dbg !2462
  %4 = icmp eq ptr %0, null, !dbg !2463
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2463
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2464
  %7 = lshr i8 %1, 5, !dbg !2465
  %8 = zext nneg i8 %7 to i64, !dbg !2465
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2466
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2458, metadata !DIExpression()), !dbg !2462
  %10 = and i8 %1, 31, !dbg !2467
  %11 = zext nneg i8 %10 to i32, !dbg !2467
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2460, metadata !DIExpression()), !dbg !2462
  %12 = load i32, ptr %9, align 4, !dbg !2468, !tbaa !997
  %13 = lshr i32 %12, %11, !dbg !2469
  %14 = and i32 %13, 1, !dbg !2470
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2461, metadata !DIExpression()), !dbg !2462
  %15 = xor i32 %13, %2, !dbg !2471
  %16 = and i32 %15, 1, !dbg !2471
  %17 = shl nuw i32 %16, %11, !dbg !2472
  %18 = xor i32 %17, %12, !dbg !2473
  store i32 %18, ptr %9, align 4, !dbg !2473, !tbaa !997
  ret i32 %14, !dbg !2474
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2475 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2479, metadata !DIExpression()), !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2480, metadata !DIExpression()), !dbg !2482
  %3 = icmp eq ptr %0, null, !dbg !2483
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2485
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2479, metadata !DIExpression()), !dbg !2482
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2486
  %6 = load i32, ptr %5, align 4, !dbg !2486, !tbaa !2487
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2481, metadata !DIExpression()), !dbg !2482
  store i32 %1, ptr %5, align 4, !dbg !2488, !tbaa !2487
  ret i32 %6, !dbg !2489
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2490 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2494, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2495, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2496, metadata !DIExpression()), !dbg !2497
  %4 = icmp eq ptr %0, null, !dbg !2498
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2500
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2494, metadata !DIExpression()), !dbg !2497
  store i32 10, ptr %5, align 8, !dbg !2501, !tbaa !2437
  %6 = icmp ne ptr %1, null, !dbg !2502
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2504
  br i1 %8, label %10, label %9, !dbg !2504

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2505
  unreachable, !dbg !2505

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2506
  store ptr %1, ptr %11, align 8, !dbg !2507, !tbaa !2508
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2509
  store ptr %2, ptr %12, align 8, !dbg !2510, !tbaa !2511
  ret void, !dbg !2512
}

; Function Attrs: noreturn nounwind
declare !dbg !2513 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2514 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2519, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2520, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2521, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2522, metadata !DIExpression()), !dbg !2526
  %6 = icmp eq ptr %4, null, !dbg !2527
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2527
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2523, metadata !DIExpression()), !dbg !2526
  %8 = tail call ptr @__errno_location() #42, !dbg !2528
  %9 = load i32, ptr %8, align 4, !dbg !2528, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2524, metadata !DIExpression()), !dbg !2526
  %10 = load i32, ptr %7, align 8, !dbg !2529, !tbaa !2437
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2530
  %12 = load i32, ptr %11, align 4, !dbg !2530, !tbaa !2487
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2531
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2532
  %15 = load ptr, ptr %14, align 8, !dbg !2532, !tbaa !2508
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2533
  %17 = load ptr, ptr %16, align 8, !dbg !2533, !tbaa !2511
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2534
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2525, metadata !DIExpression()), !dbg !2526
  store i32 %9, ptr %8, align 4, !dbg !2535, !tbaa !997
  ret i64 %18, !dbg !2536
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2537 {
  %10 = alloca i32, align 4, !DIAssignID !2605
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2606
  %12 = alloca i32, align 4, !DIAssignID !2607
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2608
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2583, metadata !DIExpression(), metadata !2609, metadata ptr %14, metadata !DIExpression()), !dbg !2610
  %15 = alloca i32, align 4, !DIAssignID !2611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2586, metadata !DIExpression(), metadata !2611, metadata ptr %15, metadata !DIExpression()), !dbg !2612
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2543, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2545, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2546, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2547, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2548, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2549, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2550, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2551, metadata !DIExpression()), !dbg !2613
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2614
  %17 = icmp eq i64 %16, 1, !dbg !2615
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2552, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2554, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2555, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2556, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2557, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2558, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2560, metadata !DIExpression()), !dbg !2613
  %18 = and i32 %5, 2, !dbg !2616
  %19 = icmp ne i32 %18, 0, !dbg !2616
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2616

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2617
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2618
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2619
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2560, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2556, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2555, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2554, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2546, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2551, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2550, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2547, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.label(metadata !2561), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2613
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
  ], !dbg !2621

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2547, metadata !DIExpression()), !dbg !2613
  br label %101, !dbg !2622

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2547, metadata !DIExpression()), !dbg !2613
  br i1 %36, label %101, label %42, !dbg !2622

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2623
  br i1 %43, label %101, label %44, !dbg !2627

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2623, !tbaa !1006
  br label %101, !dbg !2623

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !664, metadata !DIExpression(), metadata !2607, metadata ptr %12, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.assign(metadata i1 undef, metadata !665, metadata !DIExpression(), metadata !2608, metadata ptr %13, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata ptr @.str.11.77, metadata !661, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %28, metadata !662, metadata !DIExpression()), !dbg !2628
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.78, ptr noundef nonnull @.str.11.77, i32 noundef 5) #39, !dbg !2632
  call void @llvm.dbg.value(metadata ptr %46, metadata !663, metadata !DIExpression()), !dbg !2628
  %47 = icmp eq ptr %46, @.str.11.77, !dbg !2633
  br i1 %47, label %48, label %57, !dbg !2635

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2636
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2637
  call void @llvm.dbg.value(metadata ptr %13, metadata !2638, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata ptr %13, metadata !2646, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i64 8, metadata !2650, metadata !DIExpression()), !dbg !2651
  store i64 0, ptr %13, align 8, !dbg !2653
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2654
  %50 = icmp eq i64 %49, 3, !dbg !2656
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2657
  %54 = icmp eq i32 %28, 9, !dbg !2657
  %55 = select i1 %54, ptr @.str.10.79, ptr @.str.12.80, !dbg !2657
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2657
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2658
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2658
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2628
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2550, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.assign(metadata i1 undef, metadata !664, metadata !DIExpression(), metadata !2605, metadata ptr %10, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !665, metadata !DIExpression(), metadata !2606, metadata ptr %11, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr @.str.12.80, metadata !661, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i32 %28, metadata !662, metadata !DIExpression()), !dbg !2659
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.78, ptr noundef nonnull @.str.12.80, i32 noundef 5) #39, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %59, metadata !663, metadata !DIExpression()), !dbg !2659
  %60 = icmp eq ptr %59, @.str.12.80, !dbg !2662
  br i1 %60, label %61, label %70, !dbg !2663

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2664
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2665
  call void @llvm.dbg.value(metadata ptr %11, metadata !2638, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %11, metadata !2646, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i64 8, metadata !2650, metadata !DIExpression()), !dbg !2668
  store i64 0, ptr %11, align 8, !dbg !2670
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2671
  %63 = icmp eq i64 %62, 3, !dbg !2672
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2673
  %67 = icmp eq i32 %28, 9, !dbg !2673
  %68 = select i1 %67, ptr @.str.10.79, ptr @.str.12.80, !dbg !2673
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2674
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2674
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2551, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2550, metadata !DIExpression()), !dbg !2613
  br i1 %36, label %88, label %73, !dbg !2675

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2563, metadata !DIExpression()), !dbg !2676
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2553, metadata !DIExpression()), !dbg !2613
  %74 = load i8, ptr %71, align 1, !dbg !2677, !tbaa !1006
  %75 = icmp eq i8 %74, 0, !dbg !2679
  br i1 %75, label %88, label %.preheader11, !dbg !2679

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2679

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2563, metadata !DIExpression()), !dbg !2676
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2553, metadata !DIExpression()), !dbg !2613
  %80 = icmp ult i64 %79, %39, !dbg !2680
  br i1 %80, label %81, label %83, !dbg !2683

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2680
  store i8 %77, ptr %82, align 1, !dbg !2680, !tbaa !1006
  br label %83, !dbg !2680

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2553, metadata !DIExpression()), !dbg !2613
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2684
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2563, metadata !DIExpression()), !dbg !2676
  %86 = load i8, ptr %85, align 1, !dbg !2677, !tbaa !1006
  %87 = icmp eq i8 %86, 0, !dbg !2679
  br i1 %87, label %.loopexit12, label %76, !dbg !2679, !llvm.loop !2685

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2683
  br label %88, !dbg !2687

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2688
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2557, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2555, metadata !DIExpression()), !dbg !2613
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2556, metadata !DIExpression()), !dbg !2613
  br label %101, !dbg !2689

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2558, metadata !DIExpression()), !dbg !2613
  br label %101, !dbg !2690

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2547, metadata !DIExpression()), !dbg !2613
  br label %101, !dbg !2691

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2613
  br i1 %36, label %101, label %95, !dbg !2692

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2547, metadata !DIExpression()), !dbg !2613
  br i1 %36, label %101, label %95, !dbg !2691

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2693
  br i1 %97, label %101, label %98, !dbg !2697

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2693, !tbaa !1006
  br label %101, !dbg !2693

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2558, metadata !DIExpression()), !dbg !2613
  br label %101, !dbg !2698

100:                                              ; preds = %27
  call void @abort() #41, !dbg !2699
  unreachable, !dbg !2699

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2688
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.79, %42 ], [ @.str.10.79, %44 ], [ @.str.10.79, %41 ], [ %33, %27 ], [ @.str.12.80, %95 ], [ @.str.12.80, %98 ], [ @.str.12.80, %94 ], [ @.str.10.79, %40 ], [ @.str.12.80, %91 ], [ @.str.12.80, %92 ], [ @.str.12.80, %93 ], !dbg !2613
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2613
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2558, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2557, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2556, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2555, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2551, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2550, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2547, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2568, metadata !DIExpression()), !dbg !2700
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
  br label %121, !dbg !2701

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2688
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2617
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2702
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2568, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2560, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2554, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2546, metadata !DIExpression()), !dbg !2613
  %130 = icmp eq i64 %122, -1, !dbg !2703
  br i1 %130, label %131, label %135, !dbg !2704

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2705
  %133 = load i8, ptr %132, align 1, !dbg !2705, !tbaa !1006
  %134 = icmp eq i8 %133, 0, !dbg !2706
  br i1 %134, label %573, label %137, !dbg !2707

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2708
  br i1 %136, label %573, label %137, !dbg !2707

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2573, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2574, metadata !DIExpression()), !dbg !2709
  br i1 %113, label %138, label %151, !dbg !2710

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2712
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2713
  br i1 %140, label %141, label %143, !dbg !2713

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2546, metadata !DIExpression()), !dbg !2613
  br label %143, !dbg !2715

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2715
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2546, metadata !DIExpression()), !dbg !2613
  %145 = icmp ugt i64 %139, %144, !dbg !2716
  br i1 %145, label %151, label %146, !dbg !2717

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2718
  call void @llvm.dbg.value(metadata ptr %147, metadata !2719, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %106, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %107, metadata !2723, metadata !DIExpression()), !dbg !2724
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2726
  %149 = icmp eq i32 %148, 0, !dbg !2727
  %150 = and i1 %149, %109, !dbg !2728
  br i1 %150, label %.loopexit7, label %151, !dbg !2728

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2546, metadata !DIExpression()), !dbg !2613
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2729
  %155 = load i8, ptr %154, align 1, !dbg !2729, !tbaa !1006
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2575, metadata !DIExpression()), !dbg !2709
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
  ], !dbg !2730

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2731

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2732

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2573, metadata !DIExpression()), !dbg !2709
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2736
  br i1 %159, label %176, label %160, !dbg !2736

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2738
  br i1 %161, label %162, label %164, !dbg !2742

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2738
  store i8 39, ptr %163, align 1, !dbg !2738, !tbaa !1006
  br label %164, !dbg !2738

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2742
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2553, metadata !DIExpression()), !dbg !2613
  %166 = icmp ult i64 %165, %129, !dbg !2743
  br i1 %166, label %167, label %169, !dbg !2746

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2743
  store i8 36, ptr %168, align 1, !dbg !2743, !tbaa !1006
  br label %169, !dbg !2743

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2553, metadata !DIExpression()), !dbg !2613
  %171 = icmp ult i64 %170, %129, !dbg !2747
  br i1 %171, label %172, label %174, !dbg !2750

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2747
  store i8 39, ptr %173, align 1, !dbg !2747, !tbaa !1006
  br label %174, !dbg !2747

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2750
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2562, metadata !DIExpression()), !dbg !2613
  br label %176, !dbg !2751

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2613
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2553, metadata !DIExpression()), !dbg !2613
  %179 = icmp ult i64 %177, %129, !dbg !2752
  br i1 %179, label %180, label %182, !dbg !2755

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2752
  store i8 92, ptr %181, align 1, !dbg !2752, !tbaa !1006
  br label %182, !dbg !2752

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2755
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2553, metadata !DIExpression()), !dbg !2613
  br i1 %110, label %184, label %476, !dbg !2756

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2758
  %186 = icmp ult i64 %185, %152, !dbg !2759
  br i1 %186, label %187, label %433, !dbg !2760

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2761
  %189 = load i8, ptr %188, align 1, !dbg !2761, !tbaa !1006
  %190 = add i8 %189, -48, !dbg !2762
  %191 = icmp ult i8 %190, 10, !dbg !2762
  br i1 %191, label %192, label %433, !dbg !2762

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2763
  br i1 %193, label %194, label %196, !dbg !2767

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2763
  store i8 48, ptr %195, align 1, !dbg !2763, !tbaa !1006
  br label %196, !dbg !2763

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2553, metadata !DIExpression()), !dbg !2613
  %198 = icmp ult i64 %197, %129, !dbg !2768
  br i1 %198, label %199, label %201, !dbg !2771

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2768
  store i8 48, ptr %200, align 1, !dbg !2768, !tbaa !1006
  br label %201, !dbg !2768

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2553, metadata !DIExpression()), !dbg !2613
  br label %433, !dbg !2772

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2773

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2774

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2775

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2777

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2779
  %209 = icmp ult i64 %208, %152, !dbg !2780
  br i1 %209, label %210, label %433, !dbg !2781

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2782
  %212 = load i8, ptr %211, align 1, !dbg !2782, !tbaa !1006
  %213 = icmp eq i8 %212, 63, !dbg !2783
  br i1 %213, label %214, label %433, !dbg !2784

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2785
  %216 = load i8, ptr %215, align 1, !dbg !2785, !tbaa !1006
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
  ], !dbg !2786

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2787

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2575, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2568, metadata !DIExpression()), !dbg !2700
  %219 = icmp ult i64 %123, %129, !dbg !2789
  br i1 %219, label %220, label %222, !dbg !2792

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2789
  store i8 63, ptr %221, align 1, !dbg !2789, !tbaa !1006
  br label %222, !dbg !2789

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2553, metadata !DIExpression()), !dbg !2613
  %224 = icmp ult i64 %223, %129, !dbg !2793
  br i1 %224, label %225, label %227, !dbg !2796

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2793
  store i8 34, ptr %226, align 1, !dbg !2793, !tbaa !1006
  br label %227, !dbg !2793

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2553, metadata !DIExpression()), !dbg !2613
  %229 = icmp ult i64 %228, %129, !dbg !2797
  br i1 %229, label %230, label %232, !dbg !2800

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2797
  store i8 34, ptr %231, align 1, !dbg !2797, !tbaa !1006
  br label %232, !dbg !2797

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2800
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2553, metadata !DIExpression()), !dbg !2613
  %234 = icmp ult i64 %233, %129, !dbg !2801
  br i1 %234, label %235, label %237, !dbg !2804

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2801
  store i8 63, ptr %236, align 1, !dbg !2801, !tbaa !1006
  br label %237, !dbg !2801

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2804
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2553, metadata !DIExpression()), !dbg !2613
  br label %433, !dbg !2805

239:                                              ; preds = %151
  br label %249, !dbg !2806

240:                                              ; preds = %151
  br label %249, !dbg !2807

241:                                              ; preds = %151
  br label %247, !dbg !2808

242:                                              ; preds = %151
  br label %247, !dbg !2809

243:                                              ; preds = %151
  br label %249, !dbg !2810

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2811

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2812

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2815

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2817
  call void @llvm.dbg.label(metadata !2576), !dbg !2818
  br i1 %118, label %.loopexit8, label %249, !dbg !2819

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2817
  call void @llvm.dbg.label(metadata !2579), !dbg !2821
  br i1 %108, label %487, label %444, !dbg !2822

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2823

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2824, !tbaa !1006
  %254 = icmp eq i8 %253, 0, !dbg !2826
  br i1 %254, label %255, label %433, !dbg !2827

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2828
  br i1 %256, label %257, label %433, !dbg !2830

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2574, metadata !DIExpression()), !dbg !2709
  br label %258, !dbg !2831

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2709
  br i1 %115, label %260, label %433, !dbg !2832

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2834

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2574, metadata !DIExpression()), !dbg !2709
  br i1 %115, label %262, label %433, !dbg !2835

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2836

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2839
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2841
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2841
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2554, metadata !DIExpression()), !dbg !2613
  %269 = icmp ult i64 %123, %268, !dbg !2842
  br i1 %269, label %270, label %272, !dbg !2845

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2842
  store i8 39, ptr %271, align 1, !dbg !2842, !tbaa !1006
  br label %272, !dbg !2842

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2845
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2553, metadata !DIExpression()), !dbg !2613
  %274 = icmp ult i64 %273, %268, !dbg !2846
  br i1 %274, label %275, label %277, !dbg !2849

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2846
  store i8 92, ptr %276, align 1, !dbg !2846, !tbaa !1006
  br label %277, !dbg !2846

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2849
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2553, metadata !DIExpression()), !dbg !2613
  %279 = icmp ult i64 %278, %268, !dbg !2850
  br i1 %279, label %280, label %282, !dbg !2853

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2850
  store i8 39, ptr %281, align 1, !dbg !2850, !tbaa !1006
  br label %282, !dbg !2850

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2853
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2613
  br label %433, !dbg !2854

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2855

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2580, metadata !DIExpression()), !dbg !2856
  %286 = tail call ptr @__ctype_b_loc() #42, !dbg !2857
  %287 = load ptr, ptr %286, align 8, !dbg !2857, !tbaa !927
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2857
  %290 = load i16, ptr %289, align 2, !dbg !2857, !tbaa !1038
  %291 = and i16 %290, 16384, !dbg !2857
  %292 = icmp ne i16 %291, 0, !dbg !2859
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2582, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2856
  br label %334, !dbg !2860

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2861
  call void @llvm.dbg.value(metadata ptr %14, metadata !2638, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %14, metadata !2646, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 8, metadata !2650, metadata !DIExpression()), !dbg !2864
  store i64 0, ptr %14, align 8, !dbg !2866
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2580, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2856
  %294 = icmp eq i64 %152, -1, !dbg !2867
  br i1 %294, label %295, label %297, !dbg !2869

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2546, metadata !DIExpression()), !dbg !2613
  br label %297, !dbg !2871

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2546, metadata !DIExpression()), !dbg !2613
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2872
  %299 = sub i64 %298, %128, !dbg !2873
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #39, !dbg !2874
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2590, metadata !DIExpression()), !dbg !2612
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2875

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2580, metadata !DIExpression()), !dbg !2856
  %302 = icmp ult i64 %128, %298, !dbg !2876
  br i1 %302, label %.preheader5, label %329, !dbg !2878

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2879

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2856
  br label %329, !dbg !2880

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2580, metadata !DIExpression()), !dbg !2856
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2882
  %308 = load i8, ptr %307, align 1, !dbg !2882, !tbaa !1006
  %309 = icmp eq i8 %308, 0, !dbg !2878
  br i1 %309, label %.loopexit6, label %310, !dbg !2879

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2883
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2580, metadata !DIExpression()), !dbg !2856
  %312 = add i64 %311, %128, !dbg !2884
  %313 = icmp eq i64 %311, %299, !dbg !2876
  br i1 %313, label %.loopexit6, label %304, !dbg !2878, !llvm.loop !2885

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2591, metadata !DIExpression()), !dbg !2886
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2887
  %317 = and i1 %316, %109, !dbg !2887
  br i1 %317, label %.preheader3, label %325, !dbg !2887

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2888

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2591, metadata !DIExpression()), !dbg !2886
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2889
  %321 = load i8, ptr %320, align 1, !dbg !2889, !tbaa !1006
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2891

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2591, metadata !DIExpression()), !dbg !2886
  %324 = icmp eq i64 %323, %300, !dbg !2893
  br i1 %324, label %.loopexit4, label %318, !dbg !2888, !llvm.loop !2894

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2896

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2896, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %326, metadata !2898, metadata !DIExpression()), !dbg !2901
  %327 = call i32 @iswprint(i32 noundef %326) #39, !dbg !2903
  %328 = icmp ne i32 %327, 0, !dbg !2904
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2580, metadata !DIExpression()), !dbg !2856
  br label %329, !dbg !2905

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2906

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2580, metadata !DIExpression()), !dbg !2856
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2906
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2907
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2580, metadata !DIExpression()), !dbg !2856
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2906
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2907
  call void @llvm.dbg.label(metadata !2604), !dbg !2908
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2909
  br label %624, !dbg !2909

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2709
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2911
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2580, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2546, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2574, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2709
  %338 = icmp ult i64 %336, 2, !dbg !2912
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2913
  br i1 %340, label %433, label %341, !dbg !2913

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2599, metadata !DIExpression()), !dbg !2915
  br label %343, !dbg !2916

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2613
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2700
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2575, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2573, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2568, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2553, metadata !DIExpression()), !dbg !2613
  br i1 %339, label %394, label %350, !dbg !2917

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2922

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2573, metadata !DIExpression()), !dbg !2709
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2925
  br i1 %352, label %369, label %353, !dbg !2925

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2927
  br i1 %354, label %355, label %357, !dbg !2931

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2927
  store i8 39, ptr %356, align 1, !dbg !2927, !tbaa !1006
  br label %357, !dbg !2927

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2553, metadata !DIExpression()), !dbg !2613
  %359 = icmp ult i64 %358, %129, !dbg !2932
  br i1 %359, label %360, label %362, !dbg !2935

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2932
  store i8 36, ptr %361, align 1, !dbg !2932, !tbaa !1006
  br label %362, !dbg !2932

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2553, metadata !DIExpression()), !dbg !2613
  %364 = icmp ult i64 %363, %129, !dbg !2936
  br i1 %364, label %365, label %367, !dbg !2939

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2936
  store i8 39, ptr %366, align 1, !dbg !2936, !tbaa !1006
  br label %367, !dbg !2936

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2562, metadata !DIExpression()), !dbg !2613
  br label %369, !dbg !2940

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2613
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2553, metadata !DIExpression()), !dbg !2613
  %372 = icmp ult i64 %370, %129, !dbg !2941
  br i1 %372, label %373, label %375, !dbg !2944

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2941
  store i8 92, ptr %374, align 1, !dbg !2941, !tbaa !1006
  br label %375, !dbg !2941

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2553, metadata !DIExpression()), !dbg !2613
  %377 = icmp ult i64 %376, %129, !dbg !2945
  br i1 %377, label %378, label %382, !dbg !2948

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2945
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2945
  store i8 %380, ptr %381, align 1, !dbg !2945, !tbaa !1006
  br label %382, !dbg !2945

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2553, metadata !DIExpression()), !dbg !2613
  %384 = icmp ult i64 %383, %129, !dbg !2949
  br i1 %384, label %385, label %390, !dbg !2952

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2949
  %388 = or disjoint i8 %387, 48, !dbg !2949
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2949
  store i8 %388, ptr %389, align 1, !dbg !2949, !tbaa !1006
  br label %390, !dbg !2949

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2553, metadata !DIExpression()), !dbg !2613
  %392 = and i8 %349, 7, !dbg !2953
  %393 = or disjoint i8 %392, 48, !dbg !2954
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2575, metadata !DIExpression()), !dbg !2709
  br label %401, !dbg !2955

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2956

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2957
  br i1 %396, label %397, label %399, !dbg !2962

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2957
  store i8 92, ptr %398, align 1, !dbg !2957, !tbaa !1006
  br label %399, !dbg !2957

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2709
  br label %401, !dbg !2963

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2613
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2575, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2573, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2553, metadata !DIExpression()), !dbg !2613
  %407 = add i64 %346, 1, !dbg !2964
  %408 = icmp ugt i64 %342, %407, !dbg !2966
  br i1 %408, label %409, label %.loopexit2, !dbg !2967

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2968
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2968
  br i1 %411, label %423, label %412, !dbg !2968

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2971
  br i1 %413, label %414, label %416, !dbg !2975

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2971
  store i8 39, ptr %415, align 1, !dbg !2971, !tbaa !1006
  br label %416, !dbg !2971

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2553, metadata !DIExpression()), !dbg !2613
  %418 = icmp ult i64 %417, %129, !dbg !2976
  br i1 %418, label %419, label %421, !dbg !2979

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2976
  store i8 39, ptr %420, align 1, !dbg !2976, !tbaa !1006
  br label %421, !dbg !2976

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2613
  br label %423, !dbg !2980

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2981
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2553, metadata !DIExpression()), !dbg !2613
  %426 = icmp ult i64 %424, %129, !dbg !2982
  br i1 %426, label %427, label %429, !dbg !2985

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2982
  store i8 %406, ptr %428, align 1, !dbg !2982, !tbaa !1006
  br label %429, !dbg !2982

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2568, metadata !DIExpression()), !dbg !2700
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2986
  %432 = load i8, ptr %431, align 1, !dbg !2986, !tbaa !1006
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2575, metadata !DIExpression()), !dbg !2709
  br label %343, !dbg !2987, !llvm.loop !2988

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2991
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2613
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2617
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2700
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2709
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2575, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2573, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2568, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2554, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2546, metadata !DIExpression()), !dbg !2613
  br i1 %111, label %455, label %444, !dbg !2992

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
  br i1 %120, label %456, label %476, !dbg !2994

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2995

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
  %467 = lshr i8 %458, 5, !dbg !2996
  %468 = zext nneg i8 %467 to i64, !dbg !2996
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2997
  %470 = load i32, ptr %469, align 4, !dbg !2997, !tbaa !997
  %471 = and i8 %458, 31, !dbg !2998
  %472 = zext nneg i8 %471 to i32, !dbg !2998
  %473 = shl nuw i32 1, %472, !dbg !2999
  %474 = and i32 %470, %473, !dbg !2999
  %475 = icmp eq i32 %474, 0, !dbg !2999
  br i1 %475, label %476, label %487, !dbg !3000

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
  br i1 %153, label %487, label %523, !dbg !3001

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2991
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2613
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2617
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3002
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2709
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2575, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2568, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2554, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2546, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.label(metadata !2602), !dbg !3003
  br i1 %109, label %.loopexit8, label %497, !dbg !3004

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2573, metadata !DIExpression()), !dbg !2709
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3006
  br i1 %498, label %515, label %499, !dbg !3006

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3008
  br i1 %500, label %501, label %503, !dbg !3012

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3008
  store i8 39, ptr %502, align 1, !dbg !3008, !tbaa !1006
  br label %503, !dbg !3008

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2553, metadata !DIExpression()), !dbg !2613
  %505 = icmp ult i64 %504, %496, !dbg !3013
  br i1 %505, label %506, label %508, !dbg !3016

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3013
  store i8 36, ptr %507, align 1, !dbg !3013, !tbaa !1006
  br label %508, !dbg !3013

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2553, metadata !DIExpression()), !dbg !2613
  %510 = icmp ult i64 %509, %496, !dbg !3017
  br i1 %510, label %511, label %513, !dbg !3020

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3017
  store i8 39, ptr %512, align 1, !dbg !3017, !tbaa !1006
  br label %513, !dbg !3017

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3020
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2562, metadata !DIExpression()), !dbg !2613
  br label %515, !dbg !3021

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2709
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2553, metadata !DIExpression()), !dbg !2613
  %518 = icmp ult i64 %516, %496, !dbg !3022
  br i1 %518, label %519, label %521, !dbg !3025

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3022
  store i8 92, ptr %520, align 1, !dbg !3022, !tbaa !1006
  br label %521, !dbg !3022

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3025
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2575, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2573, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2568, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2554, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2546, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.label(metadata !2603), !dbg !3026
  br label %547, !dbg !3027

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2613
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2709
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2700
  br label %523, !dbg !3027

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2991
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2613
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2617
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3002
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3030
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2575, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2573, metadata !DIExpression()), !dbg !2709
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2568, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2554, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2546, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.label(metadata !2603), !dbg !3026
  %534 = xor i1 %528, true, !dbg !3027
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3027
  br i1 %535, label %547, label %536, !dbg !3027

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3031
  br i1 %537, label %538, label %540, !dbg !3035

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3031
  store i8 39, ptr %539, align 1, !dbg !3031, !tbaa !1006
  br label %540, !dbg !3031

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2553, metadata !DIExpression()), !dbg !2613
  %542 = icmp ult i64 %541, %533, !dbg !3036
  br i1 %542, label %543, label %545, !dbg !3039

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3036
  store i8 39, ptr %544, align 1, !dbg !3036, !tbaa !1006
  br label %545, !dbg !3036

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2613
  br label %547, !dbg !3040

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2709
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2553, metadata !DIExpression()), !dbg !2613
  %557 = icmp ult i64 %555, %548, !dbg !3041
  br i1 %557, label %558, label %560, !dbg !3044

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3041
  store i8 %549, ptr %559, align 1, !dbg !3041, !tbaa !1006
  br label %560, !dbg !3041

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2553, metadata !DIExpression()), !dbg !2613
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2560, metadata !DIExpression()), !dbg !2613
  br label %563, !dbg !3046

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2991
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2613
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2617
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3002
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2568, metadata !DIExpression()), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2560, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2554, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2546, metadata !DIExpression()), !dbg !2613
  %572 = add i64 %570, 1, !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2568, metadata !DIExpression()), !dbg !2700
  br label %121, !dbg !3048, !llvm.loop !3049

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2688
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2617
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2544, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2560, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2559, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2554, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2553, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2546, metadata !DIExpression()), !dbg !2613
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3051
  %575 = xor i1 %109, true, !dbg !3053
  %576 = or i1 %574, %575, !dbg !3053
  %577 = or i1 %576, %110, !dbg !3053
  br i1 %577, label %578, label %.loopexit13, !dbg !3053

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3054
  %580 = xor i1 %.lcssa38, true, !dbg !3054
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3054
  br i1 %581, label %589, label %582, !dbg !3054

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3056

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2617
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3058
  br label %638, !dbg !3060

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3061
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3063
  br i1 %588, label %27, label %589, !dbg !3063

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2613
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2688
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3064
  %592 = or i1 %591, %590, !dbg !3066
  br i1 %592, label %608, label %593, !dbg !3066

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2555, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2553, metadata !DIExpression()), !dbg !2613
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3067, !tbaa !1006
  %595 = icmp eq i8 %594, 0, !dbg !3070
  br i1 %595, label %608, label %.preheader, !dbg !3070

.preheader:                                       ; preds = %593
  br label %596, !dbg !3070

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2555, metadata !DIExpression()), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2553, metadata !DIExpression()), !dbg !2613
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3071
  br i1 %600, label %601, label %603, !dbg !3074

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3071
  store i8 %597, ptr %602, align 1, !dbg !3071, !tbaa !1006
  br label %603, !dbg !3071

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3074
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2553, metadata !DIExpression()), !dbg !2613
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3075
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2555, metadata !DIExpression()), !dbg !2613
  %606 = load i8, ptr %605, align 1, !dbg !3067, !tbaa !1006
  %607 = icmp eq i8 %606, 0, !dbg !3070
  br i1 %607, label %.loopexit, label %596, !dbg !3070, !llvm.loop !3076

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3074
  br label %608, !dbg !3078

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2688
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2553, metadata !DIExpression()), !dbg !2613
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3078
  br i1 %610, label %611, label %638, !dbg !3080

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3081
  store i8 0, ptr %612, align 1, !dbg !3082, !tbaa !1006
  br label %638, !dbg !3081

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2604), !dbg !2908
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3083
  br i1 %614, label %624, label %630, !dbg !2909

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2709
  br label %615, !dbg !3083

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3083

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3083

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2604), !dbg !2908
  %622 = icmp eq i32 %616, 2, !dbg !3083
  %623 = select i1 %619, i32 4, i32 2, !dbg !2909
  br i1 %622, label %624, label %630, !dbg !2909

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2909

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2715
  br label %630, !dbg !3084

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2547, metadata !DIExpression()), !dbg !2613
  %636 = and i32 %5, -3, !dbg !3084
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3085
  br label %638, !dbg !3086

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3087
}

; Function Attrs: nounwind
declare !dbg !3088 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3091 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3094 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3095 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3099, metadata !DIExpression()), !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3102
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3101, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %0, metadata !3103, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr null, metadata !3109, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %2, metadata !3110, metadata !DIExpression()), !dbg !3116
  %4 = icmp eq ptr %2, null, !dbg !3118
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3118
  call void @llvm.dbg.value(metadata ptr %5, metadata !3111, metadata !DIExpression()), !dbg !3116
  %6 = tail call ptr @__errno_location() #42, !dbg !3119
  %7 = load i32, ptr %6, align 4, !dbg !3119, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %7, metadata !3112, metadata !DIExpression()), !dbg !3116
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3120
  %9 = load i32, ptr %8, align 4, !dbg !3120, !tbaa !2487
  %10 = or i32 %9, 1, !dbg !3121
  call void @llvm.dbg.value(metadata i32 %10, metadata !3113, metadata !DIExpression()), !dbg !3116
  %11 = load i32, ptr %5, align 8, !dbg !3122, !tbaa !2437
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3123
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3124
  %14 = load ptr, ptr %13, align 8, !dbg !3124, !tbaa !2508
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3125
  %16 = load ptr, ptr %15, align 8, !dbg !3125, !tbaa !2511
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3126
  %18 = add i64 %17, 1, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %18, metadata !3114, metadata !DIExpression()), !dbg !3116
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !3128
  call void @llvm.dbg.value(metadata ptr %19, metadata !3115, metadata !DIExpression()), !dbg !3116
  %20 = load i32, ptr %5, align 8, !dbg !3129, !tbaa !2437
  %21 = load ptr, ptr %13, align 8, !dbg !3130, !tbaa !2508
  %22 = load ptr, ptr %15, align 8, !dbg !3131, !tbaa !2511
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3132
  store i32 %7, ptr %6, align 4, !dbg !3133, !tbaa !997
  ret ptr %19, !dbg !3134
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3104 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3103, metadata !DIExpression()), !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3135
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3109, metadata !DIExpression()), !dbg !3135
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3110, metadata !DIExpression()), !dbg !3135
  %5 = icmp eq ptr %3, null, !dbg !3136
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3136
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3111, metadata !DIExpression()), !dbg !3135
  %7 = tail call ptr @__errno_location() #42, !dbg !3137
  %8 = load i32, ptr %7, align 4, !dbg !3137, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3112, metadata !DIExpression()), !dbg !3135
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3138
  %10 = load i32, ptr %9, align 4, !dbg !3138, !tbaa !2487
  %11 = icmp eq ptr %2, null, !dbg !3139
  %12 = zext i1 %11 to i32, !dbg !3139
  %13 = or i32 %10, %12, !dbg !3140
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3113, metadata !DIExpression()), !dbg !3135
  %14 = load i32, ptr %6, align 8, !dbg !3141, !tbaa !2437
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3142
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3143
  %17 = load ptr, ptr %16, align 8, !dbg !3143, !tbaa !2508
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3144
  %19 = load ptr, ptr %18, align 8, !dbg !3144, !tbaa !2511
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3145
  %21 = add i64 %20, 1, !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3114, metadata !DIExpression()), !dbg !3135
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !3147
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3115, metadata !DIExpression()), !dbg !3135
  %23 = load i32, ptr %6, align 8, !dbg !3148, !tbaa !2437
  %24 = load ptr, ptr %16, align 8, !dbg !3149, !tbaa !2508
  %25 = load ptr, ptr %18, align 8, !dbg !3150, !tbaa !2511
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3151
  store i32 %8, ptr %7, align 4, !dbg !3152, !tbaa !997
  br i1 %11, label %28, label %27, !dbg !3153

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3154, !tbaa !3156
  br label %28, !dbg !3157

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3158
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3159 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3164, !tbaa !927
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3161, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3162, metadata !DIExpression()), !dbg !3166
  %2 = load i32, ptr @nslots, align 4, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3162, metadata !DIExpression()), !dbg !3166
  %3 = icmp sgt i32 %2, 1, !dbg !3167
  br i1 %3, label %4, label %6, !dbg !3169

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3167
  br label %10, !dbg !3169

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3170

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3170
  %8 = load ptr, ptr %7, align 8, !dbg !3170, !tbaa !3172
  %9 = icmp eq ptr %8, @slot0, !dbg !3174
  br i1 %9, label %17, label %16, !dbg !3175

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3162, metadata !DIExpression()), !dbg !3166
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3176
  %13 = load ptr, ptr %12, align 8, !dbg !3176, !tbaa !3172
  tail call void @free(ptr noundef %13) #39, !dbg !3177
  %14 = add nuw nsw i64 %11, 1, !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3162, metadata !DIExpression()), !dbg !3166
  %15 = icmp eq i64 %14, %5, !dbg !3167
  br i1 %15, label %.loopexit, label %10, !dbg !3169, !llvm.loop !3179

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3181
  store i64 256, ptr @slotvec0, align 8, !dbg !3183, !tbaa !3184
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3185, !tbaa !3172
  br label %17, !dbg !3186

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3187
  br i1 %18, label %20, label %19, !dbg !3189

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3190
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3192, !tbaa !927
  br label %20, !dbg !3193

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3194, !tbaa !997
  ret void, !dbg !3195
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3196 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3199 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()), !dbg !3203
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3202, metadata !DIExpression()), !dbg !3203
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3204
  ret ptr %3, !dbg !3205
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3206 {
  %5 = alloca i64, align 8, !DIAssignID !3226
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3220, metadata !DIExpression(), metadata !3226, metadata ptr %5, metadata !DIExpression()), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3210, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3211, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3212, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3213, metadata !DIExpression()), !dbg !3228
  %6 = tail call ptr @__errno_location() #42, !dbg !3229
  %7 = load i32, ptr %6, align 4, !dbg !3229, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3214, metadata !DIExpression()), !dbg !3228
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3230, !tbaa !927
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3215, metadata !DIExpression()), !dbg !3228
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3216, metadata !DIExpression()), !dbg !3228
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3231
  br i1 %9, label %10, label %11, !dbg !3231

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3233
  unreachable, !dbg !3233

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3234, !tbaa !997
  %13 = icmp sgt i32 %12, %0, !dbg !3235
  br i1 %13, label %32, label %14, !dbg !3236

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3237
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3217, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3227
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3238
  %16 = sext i32 %12 to i64, !dbg !3239
  store i64 %16, ptr %5, align 8, !dbg !3240, !tbaa !3156, !DIAssignID !3241
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3220, metadata !DIExpression(), metadata !3241, metadata ptr %5, metadata !DIExpression()), !dbg !3227
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3242
  %18 = add nuw nsw i32 %0, 1, !dbg !3243
  %19 = sub i32 %18, %12, !dbg !3244
  %20 = sext i32 %19 to i64, !dbg !3245
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3246
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3215, metadata !DIExpression()), !dbg !3228
  store ptr %21, ptr @slotvec, align 8, !dbg !3247, !tbaa !927
  br i1 %15, label %22, label %23, !dbg !3248

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3249, !tbaa.struct !3251
  br label %23, !dbg !3252

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3253, !tbaa !997
  %25 = sext i32 %24 to i64, !dbg !3254
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3254
  %27 = load i64, ptr %5, align 8, !dbg !3255, !tbaa !3156
  %28 = sub nsw i64 %27, %25, !dbg !3256
  %29 = shl i64 %28, 4, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %26, metadata !2646, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %29, metadata !2650, metadata !DIExpression()), !dbg !3258
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3260
  %30 = load i64, ptr %5, align 8, !dbg !3261, !tbaa !3156
  %31 = trunc i64 %30 to i32, !dbg !3261
  store i32 %31, ptr @nslots, align 4, !dbg !3262, !tbaa !997
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3263
  br label %32, !dbg !3264

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3228
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3215, metadata !DIExpression()), !dbg !3228
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3265
  %36 = load i64, ptr %35, align 8, !dbg !3266, !tbaa !3184
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3221, metadata !DIExpression()), !dbg !3267
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3268
  %38 = load ptr, ptr %37, align 8, !dbg !3268, !tbaa !3172
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3223, metadata !DIExpression()), !dbg !3267
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3269
  %40 = load i32, ptr %39, align 4, !dbg !3269, !tbaa !2487
  %41 = or i32 %40, 1, !dbg !3270
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3224, metadata !DIExpression()), !dbg !3267
  %42 = load i32, ptr %3, align 8, !dbg !3271, !tbaa !2437
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3272
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3273
  %45 = load ptr, ptr %44, align 8, !dbg !3273, !tbaa !2508
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3274
  %47 = load ptr, ptr %46, align 8, !dbg !3274, !tbaa !2511
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3225, metadata !DIExpression()), !dbg !3267
  %49 = icmp ugt i64 %36, %48, !dbg !3276
  br i1 %49, label %60, label %50, !dbg !3278

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3221, metadata !DIExpression()), !dbg !3267
  store i64 %51, ptr %35, align 8, !dbg !3281, !tbaa !3184
  %52 = icmp eq ptr %38, @slot0, !dbg !3282
  br i1 %52, label %54, label %53, !dbg !3284

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3285
  br label %54, !dbg !3285

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3286
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3223, metadata !DIExpression()), !dbg !3267
  store ptr %55, ptr %37, align 8, !dbg !3287, !tbaa !3172
  %56 = load i32, ptr %3, align 8, !dbg !3288, !tbaa !2437
  %57 = load ptr, ptr %44, align 8, !dbg !3289, !tbaa !2508
  %58 = load ptr, ptr %46, align 8, !dbg !3290, !tbaa !2511
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3291
  br label %60, !dbg !3292

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3267
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3223, metadata !DIExpression()), !dbg !3267
  store i32 %7, ptr %6, align 4, !dbg !3293, !tbaa !997
  ret ptr %61, !dbg !3294
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3295 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3299, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3300, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3301, metadata !DIExpression()), !dbg !3302
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3303
  ret ptr %4, !dbg !3304
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3305 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3307, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 0, metadata !3201, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata ptr %0, metadata !3202, metadata !DIExpression()), !dbg !3309
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3311
  ret ptr %2, !dbg !3312
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3313 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3317, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3318, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32 0, metadata !3299, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata ptr %0, metadata !3300, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3320
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3322
  ret ptr %3, !dbg !3323
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3324 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3332
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3331, metadata !DIExpression(), metadata !3332, metadata ptr %4, metadata !DIExpression()), !dbg !3333
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3328, metadata !DIExpression()), !dbg !3333
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3333
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3330, metadata !DIExpression()), !dbg !3333
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3335), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %1, metadata !3339, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3344, metadata !DIExpression()), !dbg !3347
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3347, !alias.scope !3335, !DIAssignID !3348
  call void @llvm.dbg.assign(metadata i8 0, metadata !3331, metadata !DIExpression(), metadata !3348, metadata ptr %4, metadata !DIExpression()), !dbg !3333
  %5 = icmp eq i32 %1, 10, !dbg !3349
  br i1 %5, label %6, label %7, !dbg !3351

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3352, !noalias !3335
  unreachable, !dbg !3352

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3353, !tbaa !2437, !alias.scope !3335, !DIAssignID !3354
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3331, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3354, metadata ptr %4, metadata !DIExpression()), !dbg !3333
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3355
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3356
  ret ptr %8, !dbg !3357
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3358 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3367
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3366, metadata !DIExpression(), metadata !3367, metadata ptr %5, metadata !DIExpression()), !dbg !3368
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3362, metadata !DIExpression()), !dbg !3368
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3363, metadata !DIExpression()), !dbg !3368
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3364, metadata !DIExpression()), !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3365, metadata !DIExpression()), !dbg !3368
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3370), !dbg !3373
  call void @llvm.dbg.value(metadata i32 %1, metadata !3339, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3344, metadata !DIExpression()), !dbg !3376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3376, !alias.scope !3370, !DIAssignID !3377
  call void @llvm.dbg.assign(metadata i8 0, metadata !3366, metadata !DIExpression(), metadata !3377, metadata ptr %5, metadata !DIExpression()), !dbg !3368
  %6 = icmp eq i32 %1, 10, !dbg !3378
  br i1 %6, label %7, label %8, !dbg !3379

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3380, !noalias !3370
  unreachable, !dbg !3380

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3381, !tbaa !2437, !alias.scope !3370, !DIAssignID !3382
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3382, metadata ptr %5, metadata !DIExpression()), !dbg !3368
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3383
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3384
  ret ptr %9, !dbg !3385
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3386 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3392
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3390, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3391, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3331, metadata !DIExpression(), metadata !3392, metadata ptr %3, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 0, metadata !3328, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 %0, metadata !3329, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata ptr %1, metadata !3330, metadata !DIExpression()), !dbg !3394
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3397), !dbg !3400
  call void @llvm.dbg.value(metadata i32 %0, metadata !3339, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3344, metadata !DIExpression()), !dbg !3403
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3403, !alias.scope !3397, !DIAssignID !3404
  call void @llvm.dbg.assign(metadata i8 0, metadata !3331, metadata !DIExpression(), metadata !3404, metadata ptr %3, metadata !DIExpression()), !dbg !3394
  %4 = icmp eq i32 %0, 10, !dbg !3405
  br i1 %4, label %5, label %6, !dbg !3406

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3407, !noalias !3397
  unreachable, !dbg !3407

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3408, !tbaa !2437, !alias.scope !3397, !DIAssignID !3409
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3331, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3409, metadata ptr %3, metadata !DIExpression()), !dbg !3394
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3410
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3411
  ret ptr %7, !dbg !3412
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3413 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3420
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3417, metadata !DIExpression()), !dbg !3421
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3418, metadata !DIExpression()), !dbg !3421
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3419, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3366, metadata !DIExpression(), metadata !3420, metadata ptr %4, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i32 0, metadata !3362, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i32 %0, metadata !3363, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata ptr %1, metadata !3364, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %2, metadata !3365, metadata !DIExpression()), !dbg !3422
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3425), !dbg !3428
  call void @llvm.dbg.value(metadata i32 %0, metadata !3339, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3344, metadata !DIExpression()), !dbg !3431
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3431, !alias.scope !3425, !DIAssignID !3432
  call void @llvm.dbg.assign(metadata i8 0, metadata !3366, metadata !DIExpression(), metadata !3432, metadata ptr %4, metadata !DIExpression()), !dbg !3422
  %5 = icmp eq i32 %0, 10, !dbg !3433
  br i1 %5, label %6, label %7, !dbg !3434

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3435, !noalias !3425
  unreachable, !dbg !3435

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3436, !tbaa !2437, !alias.scope !3425, !DIAssignID !3437
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3437, metadata ptr %4, metadata !DIExpression()), !dbg !3422
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3438
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3439
  ret ptr %8, !dbg !3440
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3441 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3449
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3448, metadata !DIExpression(), metadata !3449, metadata ptr %4, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3447, metadata !DIExpression()), !dbg !3450
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3452, !tbaa.struct !3453, !DIAssignID !3454
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3448, metadata !DIExpression(), metadata !3454, metadata ptr %4, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2454, metadata !DIExpression()), !dbg !3455
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2455, metadata !DIExpression()), !dbg !3455
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2456, metadata !DIExpression()), !dbg !3455
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2457, metadata !DIExpression()), !dbg !3455
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3457
  %6 = lshr i8 %2, 5, !dbg !3458
  %7 = zext nneg i8 %6 to i64, !dbg !3458
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3459
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2458, metadata !DIExpression()), !dbg !3455
  %9 = and i8 %2, 31, !dbg !3460
  %10 = zext nneg i8 %9 to i32, !dbg !3460
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2460, metadata !DIExpression()), !dbg !3455
  %11 = load i32, ptr %8, align 4, !dbg !3461, !tbaa !997
  %12 = lshr i32 %11, %10, !dbg !3462
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2461, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3455
  %13 = and i32 %12, 1, !dbg !3463
  %14 = xor i32 %13, 1, !dbg !3463
  %15 = shl nuw i32 %14, %10, !dbg !3464
  %16 = xor i32 %15, %11, !dbg !3465
  store i32 %16, ptr %8, align 4, !dbg !3465, !tbaa !997
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3466
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3467
  ret ptr %17, !dbg !3468
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3469 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3475
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3473, metadata !DIExpression()), !dbg !3476
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3474, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3448, metadata !DIExpression(), metadata !3475, metadata ptr %3, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 -1, metadata !3446, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i8 %1, metadata !3447, metadata !DIExpression()), !dbg !3477
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3480, !tbaa.struct !3453, !DIAssignID !3481
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3448, metadata !DIExpression(), metadata !3481, metadata ptr %3, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr %3, metadata !2454, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %1, metadata !2455, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 1, metadata !2456, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %1, metadata !2457, metadata !DIExpression()), !dbg !3482
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3484
  %5 = lshr i8 %1, 5, !dbg !3485
  %6 = zext nneg i8 %5 to i64, !dbg !3485
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3486
  call void @llvm.dbg.value(metadata ptr %7, metadata !2458, metadata !DIExpression()), !dbg !3482
  %8 = and i8 %1, 31, !dbg !3487
  %9 = zext nneg i8 %8 to i32, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %9, metadata !2460, metadata !DIExpression()), !dbg !3482
  %10 = load i32, ptr %7, align 4, !dbg !3488, !tbaa !997
  %11 = lshr i32 %10, %9, !dbg !3489
  call void @llvm.dbg.value(metadata i32 %11, metadata !2461, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3482
  %12 = and i32 %11, 1, !dbg !3490
  %13 = xor i32 %12, 1, !dbg !3490
  %14 = shl nuw i32 %13, %9, !dbg !3491
  %15 = xor i32 %14, %10, !dbg !3492
  store i32 %15, ptr %7, align 4, !dbg !3492, !tbaa !997
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3493
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3494
  ret ptr %16, !dbg !3495
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3496 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3499
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3498, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata ptr %0, metadata !3473, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 58, metadata !3474, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3448, metadata !DIExpression(), metadata !3499, metadata ptr %2, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 -1, metadata !3446, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i8 58, metadata !3447, metadata !DIExpression()), !dbg !3503
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3506, !tbaa.struct !3453, !DIAssignID !3507
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3448, metadata !DIExpression(), metadata !3507, metadata ptr %2, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr %2, metadata !2454, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8 58, metadata !2455, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i32 1, metadata !2456, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8 58, metadata !2457, metadata !DIExpression()), !dbg !3508
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3510
  call void @llvm.dbg.value(metadata ptr %3, metadata !2458, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i32 26, metadata !2460, metadata !DIExpression()), !dbg !3508
  %4 = load i32, ptr %3, align 4, !dbg !3511, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %4, metadata !2461, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3508
  %5 = or i32 %4, 67108864, !dbg !3512
  store i32 %5, ptr %3, align 4, !dbg !3512, !tbaa !997
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3513
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3514
  ret ptr %6, !dbg !3515
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3516 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3520
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3519, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3448, metadata !DIExpression(), metadata !3520, metadata ptr %3, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8 58, metadata !3447, metadata !DIExpression()), !dbg !3522
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3525, !tbaa.struct !3453, !DIAssignID !3526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3448, metadata !DIExpression(), metadata !3526, metadata ptr %3, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %3, metadata !2454, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8 58, metadata !2455, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 1, metadata !2456, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8 58, metadata !2457, metadata !DIExpression()), !dbg !3527
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3529
  call void @llvm.dbg.value(metadata ptr %4, metadata !2458, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 26, metadata !2460, metadata !DIExpression()), !dbg !3527
  %5 = load i32, ptr %4, align 4, !dbg !3530, !tbaa !997
  call void @llvm.dbg.value(metadata i32 %5, metadata !2461, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3527
  %6 = or i32 %5, 67108864, !dbg !3531
  store i32 %6, ptr %4, align 4, !dbg !3531, !tbaa !997
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3532
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3533
  ret ptr %7, !dbg !3534
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3535 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3541
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3540, metadata !DIExpression(), metadata !3541, metadata ptr %4, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3344, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3537, metadata !DIExpression()), !dbg !3542
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3538, metadata !DIExpression()), !dbg !3542
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3539, metadata !DIExpression()), !dbg !3542
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %1, metadata !3339, metadata !DIExpression()), !dbg !3546
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3546
  %5 = icmp eq i32 %1, 10, !dbg !3547
  br i1 %5, label %6, label %7, !dbg !3548

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3549, !noalias !3550
  unreachable, !dbg !3549

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3546
  store i32 %1, ptr %4, align 8, !dbg !3553, !tbaa.struct !3453, !DIAssignID !3554
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3553
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3553
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3540, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3554, metadata ptr %4, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3540, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3555, metadata ptr %8, metadata !DIExpression()), !dbg !3542
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2454, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2455, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2456, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2457, metadata !DIExpression()), !dbg !3556
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3558
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2458, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2460, metadata !DIExpression()), !dbg !3556
  %10 = load i32, ptr %9, align 4, !dbg !3559, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2461, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3556
  %11 = or i32 %10, 67108864, !dbg !3560
  store i32 %11, ptr %9, align 4, !dbg !3560, !tbaa !997, !DIAssignID !3561
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3540, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3561, metadata ptr %9, metadata !DIExpression()), !dbg !3542
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3562
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3563
  ret ptr %12, !dbg !3564
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3565 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3573
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3569, metadata !DIExpression()), !dbg !3574
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3570, metadata !DIExpression()), !dbg !3574
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3571, metadata !DIExpression()), !dbg !3574
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3572, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(), metadata !3573, metadata ptr %5, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %0, metadata !3580, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata ptr %1, metadata !3581, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata ptr %2, metadata !3582, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata ptr %3, metadata !3583, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 -1, metadata !3584, metadata !DIExpression()), !dbg !3585
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3588, !tbaa.struct !3453, !DIAssignID !3589
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(), metadata !3589, metadata ptr %5, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3590, metadata ptr undef, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata ptr %5, metadata !2494, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %1, metadata !2495, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %2, metadata !2496, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %5, metadata !2494, metadata !DIExpression()), !dbg !3591
  store i32 10, ptr %5, align 8, !dbg !3593, !tbaa !2437, !DIAssignID !3594
  call void @llvm.dbg.assign(metadata i32 10, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3594, metadata ptr %5, metadata !DIExpression()), !dbg !3585
  %6 = icmp ne ptr %1, null, !dbg !3595
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3596
  br i1 %8, label %10, label %9, !dbg !3596

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3597
  unreachable, !dbg !3597

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3598
  store ptr %1, ptr %11, align 8, !dbg !3599, !tbaa !2508, !DIAssignID !3600
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3600, metadata ptr %11, metadata !DIExpression()), !dbg !3585
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3601
  store ptr %2, ptr %12, align 8, !dbg !3602, !tbaa !2511, !DIAssignID !3603
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3603, metadata ptr %12, metadata !DIExpression()), !dbg !3585
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3604
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3605
  ret ptr %13, !dbg !3606
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3576 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3607
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(), metadata !3607, metadata ptr %6, metadata !DIExpression()), !dbg !3608
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3580, metadata !DIExpression()), !dbg !3608
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3581, metadata !DIExpression()), !dbg !3608
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3582, metadata !DIExpression()), !dbg !3608
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3583, metadata !DIExpression()), !dbg !3608
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3584, metadata !DIExpression()), !dbg !3608
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3610, !tbaa.struct !3453, !DIAssignID !3611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(), metadata !3611, metadata ptr %6, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3612, metadata ptr undef, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %6, metadata !2494, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %1, metadata !2495, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %2, metadata !2496, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %6, metadata !2494, metadata !DIExpression()), !dbg !3613
  store i32 10, ptr %6, align 8, !dbg !3615, !tbaa !2437, !DIAssignID !3616
  call void @llvm.dbg.assign(metadata i32 10, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3616, metadata ptr %6, metadata !DIExpression()), !dbg !3608
  %7 = icmp ne ptr %1, null, !dbg !3617
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3618
  br i1 %9, label %11, label %10, !dbg !3618

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3619
  unreachable, !dbg !3619

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3620
  store ptr %1, ptr %12, align 8, !dbg !3621, !tbaa !2508, !DIAssignID !3622
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3622, metadata ptr %12, metadata !DIExpression()), !dbg !3608
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3623
  store ptr %2, ptr %13, align 8, !dbg !3624, !tbaa !2511, !DIAssignID !3625
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3625, metadata ptr %13, metadata !DIExpression()), !dbg !3608
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3626
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3627
  ret ptr %14, !dbg !3628
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3629 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3636
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3633, metadata !DIExpression()), !dbg !3637
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3634, metadata !DIExpression()), !dbg !3637
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3635, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !3569, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr %0, metadata !3570, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr %1, metadata !3571, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr %2, metadata !3572, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(), metadata !3636, metadata ptr %4, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i32 0, metadata !3580, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata ptr %0, metadata !3581, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata ptr %1, metadata !3582, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata ptr %2, metadata !3583, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 -1, metadata !3584, metadata !DIExpression()), !dbg !3640
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3643, !tbaa.struct !3453, !DIAssignID !3644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(), metadata !3644, metadata ptr %4, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3645, metadata ptr undef, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata ptr %4, metadata !2494, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %1, metadata !2496, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %4, metadata !2494, metadata !DIExpression()), !dbg !3646
  store i32 10, ptr %4, align 8, !dbg !3648, !tbaa !2437, !DIAssignID !3649
  call void @llvm.dbg.assign(metadata i32 10, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3649, metadata ptr %4, metadata !DIExpression()), !dbg !3640
  %5 = icmp ne ptr %0, null, !dbg !3650
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3651
  br i1 %7, label %9, label %8, !dbg !3651

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3652
  unreachable, !dbg !3652

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3653
  store ptr %0, ptr %10, align 8, !dbg !3654, !tbaa !2508, !DIAssignID !3655
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3655, metadata ptr %10, metadata !DIExpression()), !dbg !3640
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3656
  store ptr %1, ptr %11, align 8, !dbg !3657, !tbaa !2511, !DIAssignID !3658
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3658, metadata ptr %11, metadata !DIExpression()), !dbg !3640
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3659
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3660
  ret ptr %12, !dbg !3661
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3662 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3670
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3666, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3667, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3668, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3669, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(), metadata !3670, metadata ptr %5, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i32 0, metadata !3580, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %0, metadata !3581, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %1, metadata !3582, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %2, metadata !3583, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %3, metadata !3584, metadata !DIExpression()), !dbg !3672
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3675, !tbaa.struct !3453, !DIAssignID !3676
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(), metadata !3676, metadata ptr %5, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3677, metadata ptr undef, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %5, metadata !2494, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata ptr %1, metadata !2496, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata ptr %5, metadata !2494, metadata !DIExpression()), !dbg !3678
  store i32 10, ptr %5, align 8, !dbg !3680, !tbaa !2437, !DIAssignID !3681
  call void @llvm.dbg.assign(metadata i32 10, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3681, metadata ptr %5, metadata !DIExpression()), !dbg !3672
  %6 = icmp ne ptr %0, null, !dbg !3682
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3683
  br i1 %8, label %10, label %9, !dbg !3683

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3684
  unreachable, !dbg !3684

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3685
  store ptr %0, ptr %11, align 8, !dbg !3686, !tbaa !2508, !DIAssignID !3687
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3687, metadata ptr %11, metadata !DIExpression()), !dbg !3672
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3688
  store ptr %1, ptr %12, align 8, !dbg !3689, !tbaa !2511, !DIAssignID !3690
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3575, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3690, metadata ptr %12, metadata !DIExpression()), !dbg !3672
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3691
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3692
  ret ptr %13, !dbg !3693
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3694 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()), !dbg !3701
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3699, metadata !DIExpression()), !dbg !3701
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3700, metadata !DIExpression()), !dbg !3701
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3702
  ret ptr %4, !dbg !3703
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3704 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3709, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 0, metadata !3698, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %0, metadata !3699, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %1, metadata !3700, metadata !DIExpression()), !dbg !3711
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3713
  ret ptr %3, !dbg !3714
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3715 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3719, metadata !DIExpression()), !dbg !3721
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3720, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %1, metadata !3699, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 -1, metadata !3700, metadata !DIExpression()), !dbg !3722
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3724
  ret ptr %3, !dbg !3725
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3726 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3730, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i32 0, metadata !3719, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata ptr %0, metadata !3720, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 0, metadata !3698, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata ptr %0, metadata !3699, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 -1, metadata !3700, metadata !DIExpression()), !dbg !3734
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3736
  ret ptr %2, !dbg !3737
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3738 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3777, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3778, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3779, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3780, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3781, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3782, metadata !DIExpression()), !dbg !3783
  %7 = icmp eq ptr %1, null, !dbg !3784
  br i1 %7, label %10, label %8, !dbg !3786

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.85, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3787
  br label %12, !dbg !3787

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.86, ptr noundef %2, ptr noundef %3) #39, !dbg !3788
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.3.88, i32 noundef 5) #39, !dbg !3789
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3789
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %0), !dbg !3790
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.5.90, i32 noundef 5) #39, !dbg !3791
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.91) #39, !dbg !3791
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %0), !dbg !3792
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
  ], !dbg !3793

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.7.92, i32 noundef 5) #39, !dbg !3794
  %21 = load ptr, ptr %4, align 8, !dbg !3794, !tbaa !927
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3794
  br label %147, !dbg !3796

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.8.93, i32 noundef 5) #39, !dbg !3797
  %25 = load ptr, ptr %4, align 8, !dbg !3797, !tbaa !927
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3797
  %27 = load ptr, ptr %26, align 8, !dbg !3797, !tbaa !927
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3797
  br label %147, !dbg !3798

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.9.94, i32 noundef 5) #39, !dbg !3799
  %31 = load ptr, ptr %4, align 8, !dbg !3799, !tbaa !927
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3799
  %33 = load ptr, ptr %32, align 8, !dbg !3799, !tbaa !927
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3799
  %35 = load ptr, ptr %34, align 8, !dbg !3799, !tbaa !927
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3799
  br label %147, !dbg !3800

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.10.95, i32 noundef 5) #39, !dbg !3801
  %39 = load ptr, ptr %4, align 8, !dbg !3801, !tbaa !927
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3801
  %41 = load ptr, ptr %40, align 8, !dbg !3801, !tbaa !927
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3801
  %43 = load ptr, ptr %42, align 8, !dbg !3801, !tbaa !927
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3801
  %45 = load ptr, ptr %44, align 8, !dbg !3801, !tbaa !927
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3801
  br label %147, !dbg !3802

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.11.96, i32 noundef 5) #39, !dbg !3803
  %49 = load ptr, ptr %4, align 8, !dbg !3803, !tbaa !927
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3803
  %51 = load ptr, ptr %50, align 8, !dbg !3803, !tbaa !927
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3803
  %53 = load ptr, ptr %52, align 8, !dbg !3803, !tbaa !927
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3803
  %55 = load ptr, ptr %54, align 8, !dbg !3803, !tbaa !927
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3803
  %57 = load ptr, ptr %56, align 8, !dbg !3803, !tbaa !927
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3803
  br label %147, !dbg !3804

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.12.97, i32 noundef 5) #39, !dbg !3805
  %61 = load ptr, ptr %4, align 8, !dbg !3805, !tbaa !927
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3805
  %63 = load ptr, ptr %62, align 8, !dbg !3805, !tbaa !927
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3805
  %65 = load ptr, ptr %64, align 8, !dbg !3805, !tbaa !927
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3805
  %67 = load ptr, ptr %66, align 8, !dbg !3805, !tbaa !927
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3805
  %69 = load ptr, ptr %68, align 8, !dbg !3805, !tbaa !927
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3805
  %71 = load ptr, ptr %70, align 8, !dbg !3805, !tbaa !927
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3805
  br label %147, !dbg !3806

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.13.98, i32 noundef 5) #39, !dbg !3807
  %75 = load ptr, ptr %4, align 8, !dbg !3807, !tbaa !927
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3807
  %77 = load ptr, ptr %76, align 8, !dbg !3807, !tbaa !927
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3807
  %79 = load ptr, ptr %78, align 8, !dbg !3807, !tbaa !927
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3807
  %81 = load ptr, ptr %80, align 8, !dbg !3807, !tbaa !927
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3807
  %83 = load ptr, ptr %82, align 8, !dbg !3807, !tbaa !927
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3807
  %85 = load ptr, ptr %84, align 8, !dbg !3807, !tbaa !927
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3807
  %87 = load ptr, ptr %86, align 8, !dbg !3807, !tbaa !927
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3807
  br label %147, !dbg !3808

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.14.99, i32 noundef 5) #39, !dbg !3809
  %91 = load ptr, ptr %4, align 8, !dbg !3809, !tbaa !927
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3809
  %93 = load ptr, ptr %92, align 8, !dbg !3809, !tbaa !927
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3809
  %95 = load ptr, ptr %94, align 8, !dbg !3809, !tbaa !927
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3809
  %97 = load ptr, ptr %96, align 8, !dbg !3809, !tbaa !927
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3809
  %99 = load ptr, ptr %98, align 8, !dbg !3809, !tbaa !927
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3809
  %101 = load ptr, ptr %100, align 8, !dbg !3809, !tbaa !927
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3809
  %103 = load ptr, ptr %102, align 8, !dbg !3809, !tbaa !927
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3809
  %105 = load ptr, ptr %104, align 8, !dbg !3809, !tbaa !927
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3809
  br label %147, !dbg !3810

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.15.100, i32 noundef 5) #39, !dbg !3811
  %109 = load ptr, ptr %4, align 8, !dbg !3811, !tbaa !927
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3811
  %111 = load ptr, ptr %110, align 8, !dbg !3811, !tbaa !927
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3811
  %113 = load ptr, ptr %112, align 8, !dbg !3811, !tbaa !927
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3811
  %115 = load ptr, ptr %114, align 8, !dbg !3811, !tbaa !927
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3811
  %117 = load ptr, ptr %116, align 8, !dbg !3811, !tbaa !927
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3811
  %119 = load ptr, ptr %118, align 8, !dbg !3811, !tbaa !927
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3811
  %121 = load ptr, ptr %120, align 8, !dbg !3811, !tbaa !927
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3811
  %123 = load ptr, ptr %122, align 8, !dbg !3811, !tbaa !927
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3811
  %125 = load ptr, ptr %124, align 8, !dbg !3811, !tbaa !927
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3811
  br label %147, !dbg !3812

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.16.101, i32 noundef 5) #39, !dbg !3813
  %129 = load ptr, ptr %4, align 8, !dbg !3813, !tbaa !927
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3813
  %131 = load ptr, ptr %130, align 8, !dbg !3813, !tbaa !927
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3813
  %133 = load ptr, ptr %132, align 8, !dbg !3813, !tbaa !927
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3813
  %135 = load ptr, ptr %134, align 8, !dbg !3813, !tbaa !927
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3813
  %137 = load ptr, ptr %136, align 8, !dbg !3813, !tbaa !927
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3813
  %139 = load ptr, ptr %138, align 8, !dbg !3813, !tbaa !927
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3813
  %141 = load ptr, ptr %140, align 8, !dbg !3813, !tbaa !927
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3813
  %143 = load ptr, ptr %142, align 8, !dbg !3813, !tbaa !927
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3813
  %145 = load ptr, ptr %144, align 8, !dbg !3813, !tbaa !927
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3813
  br label %147, !dbg !3814

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3815
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3816 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3820, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3821, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3822, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3823, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3824, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3825, metadata !DIExpression()), !dbg !3826
  br label %6, !dbg !3827

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3825, metadata !DIExpression()), !dbg !3826
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3830
  %9 = load ptr, ptr %8, align 8, !dbg !3830, !tbaa !927
  %10 = icmp eq ptr %9, null, !dbg !3832
  %11 = add i64 %7, 1, !dbg !3833
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3825, metadata !DIExpression()), !dbg !3826
  br i1 %10, label %12, label %6, !dbg !3832, !llvm.loop !3834

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3829
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3836
  ret void, !dbg !3837
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3838 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3860
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3858, metadata !DIExpression(), metadata !3860, metadata ptr %6, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3852, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3853, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3854, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3855, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3856, metadata !DIExpression(DW_OP_deref)), !dbg !3861
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3857, metadata !DIExpression()), !dbg !3861
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3857, metadata !DIExpression()), !dbg !3861
  %10 = icmp sgt i32 %9, -1, !dbg !3863
  br i1 %10, label %18, label %11, !dbg !3863

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3863
  store i32 %12, ptr %7, align 8, !dbg !3863
  %13 = icmp ult i32 %9, -7, !dbg !3863
  br i1 %13, label %14, label %18, !dbg !3863

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3863
  %16 = sext i32 %9 to i64, !dbg !3863
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3863
  br label %22, !dbg !3863

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3863
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3863
  store ptr %21, ptr %4, align 8, !dbg !3863
  br label %22, !dbg !3863

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3863
  %25 = load ptr, ptr %24, align 8, !dbg !3863
  store ptr %25, ptr %6, align 8, !dbg !3866, !tbaa !927
  %26 = icmp eq ptr %25, null, !dbg !3867
  br i1 %26, label %197, label %27, !dbg !3868

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3857, metadata !DIExpression()), !dbg !3861
  %28 = icmp sgt i32 %23, -1, !dbg !3863
  br i1 %28, label %36, label %29, !dbg !3863

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3863
  store i32 %30, ptr %7, align 8, !dbg !3863
  %31 = icmp ult i32 %23, -7, !dbg !3863
  br i1 %31, label %32, label %36, !dbg !3863

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3863
  %34 = sext i32 %23 to i64, !dbg !3863
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3863
  br label %40, !dbg !3863

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3863
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3863
  store ptr %39, ptr %4, align 8, !dbg !3863
  br label %40, !dbg !3863

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3863
  %43 = load ptr, ptr %42, align 8, !dbg !3863
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3869
  store ptr %43, ptr %44, align 8, !dbg !3866, !tbaa !927
  %45 = icmp eq ptr %43, null, !dbg !3867
  br i1 %45, label %197, label %46, !dbg !3868

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3857, metadata !DIExpression()), !dbg !3861
  %47 = icmp sgt i32 %41, -1, !dbg !3863
  br i1 %47, label %55, label %48, !dbg !3863

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3863
  store i32 %49, ptr %7, align 8, !dbg !3863
  %50 = icmp ult i32 %41, -7, !dbg !3863
  br i1 %50, label %51, label %55, !dbg !3863

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3863
  %53 = sext i32 %41 to i64, !dbg !3863
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3863
  br label %59, !dbg !3863

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3863
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3863
  store ptr %58, ptr %4, align 8, !dbg !3863
  br label %59, !dbg !3863

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3863
  %62 = load ptr, ptr %61, align 8, !dbg !3863
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3869
  store ptr %62, ptr %63, align 8, !dbg !3866, !tbaa !927
  %64 = icmp eq ptr %62, null, !dbg !3867
  br i1 %64, label %197, label %65, !dbg !3868

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3857, metadata !DIExpression()), !dbg !3861
  %66 = icmp sgt i32 %60, -1, !dbg !3863
  br i1 %66, label %74, label %67, !dbg !3863

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3863
  store i32 %68, ptr %7, align 8, !dbg !3863
  %69 = icmp ult i32 %60, -7, !dbg !3863
  br i1 %69, label %70, label %74, !dbg !3863

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3863
  %72 = sext i32 %60 to i64, !dbg !3863
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3863
  br label %78, !dbg !3863

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3863
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3863
  store ptr %77, ptr %4, align 8, !dbg !3863
  br label %78, !dbg !3863

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3863
  %81 = load ptr, ptr %80, align 8, !dbg !3863
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3869
  store ptr %81, ptr %82, align 8, !dbg !3866, !tbaa !927
  %83 = icmp eq ptr %81, null, !dbg !3867
  br i1 %83, label %197, label %84, !dbg !3868

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3857, metadata !DIExpression()), !dbg !3861
  %85 = icmp sgt i32 %79, -1, !dbg !3863
  br i1 %85, label %93, label %86, !dbg !3863

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3863
  store i32 %87, ptr %7, align 8, !dbg !3863
  %88 = icmp ult i32 %79, -7, !dbg !3863
  br i1 %88, label %89, label %93, !dbg !3863

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3863
  %91 = sext i32 %79 to i64, !dbg !3863
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3863
  br label %97, !dbg !3863

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3863
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3863
  store ptr %96, ptr %4, align 8, !dbg !3863
  br label %97, !dbg !3863

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3863
  %100 = load ptr, ptr %99, align 8, !dbg !3863
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3869
  store ptr %100, ptr %101, align 8, !dbg !3866, !tbaa !927
  %102 = icmp eq ptr %100, null, !dbg !3867
  br i1 %102, label %197, label %103, !dbg !3868

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3857, metadata !DIExpression()), !dbg !3861
  %104 = icmp sgt i32 %98, -1, !dbg !3863
  br i1 %104, label %112, label %105, !dbg !3863

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3863
  store i32 %106, ptr %7, align 8, !dbg !3863
  %107 = icmp ult i32 %98, -7, !dbg !3863
  br i1 %107, label %108, label %112, !dbg !3863

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3863
  %110 = sext i32 %98 to i64, !dbg !3863
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3863
  br label %116, !dbg !3863

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3863
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3863
  store ptr %115, ptr %4, align 8, !dbg !3863
  br label %116, !dbg !3863

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3863
  %119 = load ptr, ptr %118, align 8, !dbg !3863
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3869
  store ptr %119, ptr %120, align 8, !dbg !3866, !tbaa !927
  %121 = icmp eq ptr %119, null, !dbg !3867
  br i1 %121, label %197, label %122, !dbg !3868

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3857, metadata !DIExpression()), !dbg !3861
  %123 = icmp sgt i32 %117, -1, !dbg !3863
  br i1 %123, label %131, label %124, !dbg !3863

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3863
  store i32 %125, ptr %7, align 8, !dbg !3863
  %126 = icmp ult i32 %117, -7, !dbg !3863
  br i1 %126, label %127, label %131, !dbg !3863

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3863
  %129 = sext i32 %117 to i64, !dbg !3863
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3863
  br label %135, !dbg !3863

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3863
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3863
  store ptr %134, ptr %4, align 8, !dbg !3863
  br label %135, !dbg !3863

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3863
  %138 = load ptr, ptr %137, align 8, !dbg !3863
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3869
  store ptr %138, ptr %139, align 8, !dbg !3866, !tbaa !927
  %140 = icmp eq ptr %138, null, !dbg !3867
  br i1 %140, label %197, label %141, !dbg !3868

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3857, metadata !DIExpression()), !dbg !3861
  %142 = icmp sgt i32 %136, -1, !dbg !3863
  br i1 %142, label %150, label %143, !dbg !3863

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3863
  store i32 %144, ptr %7, align 8, !dbg !3863
  %145 = icmp ult i32 %136, -7, !dbg !3863
  br i1 %145, label %146, label %150, !dbg !3863

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3863
  %148 = sext i32 %136 to i64, !dbg !3863
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3863
  br label %154, !dbg !3863

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3863
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3863
  store ptr %153, ptr %4, align 8, !dbg !3863
  br label %154, !dbg !3863

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3863
  %157 = load ptr, ptr %156, align 8, !dbg !3863
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3869
  store ptr %157, ptr %158, align 8, !dbg !3866, !tbaa !927
  %159 = icmp eq ptr %157, null, !dbg !3867
  br i1 %159, label %197, label %160, !dbg !3868

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3857, metadata !DIExpression()), !dbg !3861
  %161 = icmp sgt i32 %155, -1, !dbg !3863
  br i1 %161, label %169, label %162, !dbg !3863

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3863
  store i32 %163, ptr %7, align 8, !dbg !3863
  %164 = icmp ult i32 %155, -7, !dbg !3863
  br i1 %164, label %165, label %169, !dbg !3863

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3863
  %167 = sext i32 %155 to i64, !dbg !3863
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3863
  br label %173, !dbg !3863

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3863
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3863
  store ptr %172, ptr %4, align 8, !dbg !3863
  br label %173, !dbg !3863

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3863
  %176 = load ptr, ptr %175, align 8, !dbg !3863
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3869
  store ptr %176, ptr %177, align 8, !dbg !3866, !tbaa !927
  %178 = icmp eq ptr %176, null, !dbg !3867
  br i1 %178, label %197, label %179, !dbg !3868

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3857, metadata !DIExpression()), !dbg !3861
  %180 = icmp sgt i32 %174, -1, !dbg !3863
  br i1 %180, label %188, label %181, !dbg !3863

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3863
  store i32 %182, ptr %7, align 8, !dbg !3863
  %183 = icmp ult i32 %174, -7, !dbg !3863
  br i1 %183, label %184, label %188, !dbg !3863

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3863
  %186 = sext i32 %174 to i64, !dbg !3863
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3863
  br label %191, !dbg !3863

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3863
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3863
  store ptr %190, ptr %4, align 8, !dbg !3863
  br label %191, !dbg !3863

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3863
  %193 = load ptr, ptr %192, align 8, !dbg !3863
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3869
  store ptr %193, ptr %194, align 8, !dbg !3866, !tbaa !927
  %195 = icmp eq ptr %193, null, !dbg !3867
  %196 = select i1 %195, i64 9, i64 10, !dbg !3868
  br label %197, !dbg !3868

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3870
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3871
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3872
  ret void, !dbg !3872
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3873 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3882
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3881, metadata !DIExpression(), metadata !3882, metadata ptr %5, metadata !DIExpression()), !dbg !3883
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3883
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3878, metadata !DIExpression()), !dbg !3883
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3879, metadata !DIExpression()), !dbg !3883
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3884
  call void @llvm.va_start(ptr nonnull %5), !dbg !3885
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3886, !tbaa.struct !1825
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3886
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3886
  call void @llvm.va_end(ptr nonnull %5), !dbg !3887
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3888
  ret void, !dbg !3888
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3889 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3890, !tbaa !927
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %1), !dbg !3890
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.17.106, i32 noundef 5) #39, !dbg !3891
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.107) #39, !dbg !3891
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.19.108, i32 noundef 5) #39, !dbg !3892
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.109, ptr noundef nonnull @.str.21.110) #39, !dbg !3892
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.22.111, i32 noundef 5) #39, !dbg !3893
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.112) #39, !dbg !3893
  ret void, !dbg !3894
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3895 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3900, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3901, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3902, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata ptr %0, metadata !3904, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()), !dbg !3909
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3911
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !3917
  %5 = icmp eq ptr %4, null, !dbg !3919
  br i1 %5, label %6, label %7, !dbg !3921

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3922
  unreachable, !dbg !3922

7:                                                ; preds = %3
  ret ptr %4, !dbg !3923
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3905 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3904, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()), !dbg !3924
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3925
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !3926
  %5 = icmp eq ptr %4, null, !dbg !3928
  br i1 %5, label %6, label %7, !dbg !3929

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3930
  unreachable, !dbg !3930

7:                                                ; preds = %3
  ret ptr %4, !dbg !3931
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3932 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !3937
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3938
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !3939
  %3 = icmp eq ptr %2, null, !dbg !3941
  br i1 %3, label %4, label %5, !dbg !3942

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3943
  unreachable, !dbg !3943

5:                                                ; preds = %1
  ret ptr %2, !dbg !3944
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3945 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3946 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3950, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i64 %0, metadata !3952, metadata !DIExpression()), !dbg !3956
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3958
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !3959
  %3 = icmp eq ptr %2, null, !dbg !3961
  br i1 %3, label %4, label %5, !dbg !3962

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3963
  unreachable, !dbg !3963

5:                                                ; preds = %1
  ret ptr %2, !dbg !3964
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3965 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !3971
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3973
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !3974
  %3 = icmp eq ptr %2, null, !dbg !3976
  br i1 %3, label %4, label %5, !dbg !3977

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3978
  unreachable, !dbg !3978

5:                                                ; preds = %1
  ret ptr %2, !dbg !3979
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3980 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3984, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3985, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata ptr %0, metadata !3987, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !3992
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3994
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3995
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !3996
  %5 = icmp eq ptr %4, null, !dbg !3998
  br i1 %5, label %6, label %7, !dbg !3999

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4000
  unreachable, !dbg !4000

7:                                                ; preds = %2
  ret ptr %4, !dbg !4001
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4002 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4003 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4007, metadata !DIExpression()), !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4008, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata ptr %0, metadata !4010, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %1, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata ptr %0, metadata !3987, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !4016
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4018
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4019
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !4020
  %5 = icmp eq ptr %4, null, !dbg !4022
  br i1 %5, label %6, label %7, !dbg !4023

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4024
  unreachable, !dbg !4024

7:                                                ; preds = %2
  ret ptr %4, !dbg !4025
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4026 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4030, metadata !DIExpression()), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4031, metadata !DIExpression()), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4032, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata ptr %0, metadata !4034, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %1, metadata !4037, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %2, metadata !4038, metadata !DIExpression()), !dbg !4039
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4041
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !4042
  %5 = icmp eq ptr %4, null, !dbg !4044
  br i1 %5, label %6, label %7, !dbg !4045

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4046
  unreachable, !dbg !4046

7:                                                ; preds = %3
  ret ptr %4, !dbg !4047
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4048 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4052, metadata !DIExpression()), !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr null, metadata !3904, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i64 %0, metadata !3907, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i64 %1, metadata !3908, metadata !DIExpression()), !dbg !4055
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4057
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4058
  %4 = icmp eq ptr %3, null, !dbg !4060
  br i1 %4, label %5, label %6, !dbg !4061

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4062
  unreachable, !dbg !4062

6:                                                ; preds = %2
  ret ptr %3, !dbg !4063
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4064 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4068, metadata !DIExpression()), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr null, metadata !4030, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %0, metadata !4031, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4032, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata ptr null, metadata !4034, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %0, metadata !4037, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %1, metadata !4038, metadata !DIExpression()), !dbg !4073
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4075
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4076
  %4 = icmp eq ptr %3, null, !dbg !4078
  br i1 %4, label %5, label %6, !dbg !4079

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4080
  unreachable, !dbg !4080

6:                                                ; preds = %2
  ret ptr %3, !dbg !4081
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4082 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4086, metadata !DIExpression()), !dbg !4088
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4087, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata ptr %0, metadata !846, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %1, metadata !847, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 1, metadata !848, metadata !DIExpression()), !dbg !4089
  %3 = load i64, ptr %1, align 8, !dbg !4091, !tbaa !3156
  call void @llvm.dbg.value(metadata i64 %3, metadata !849, metadata !DIExpression()), !dbg !4089
  %4 = icmp eq ptr %0, null, !dbg !4092
  br i1 %4, label %5, label %8, !dbg !4094

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4095
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4098
  br label %15, !dbg !4098

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4099
  %10 = add nuw i64 %9, 1, !dbg !4099
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4099
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4099
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %13, metadata !849, metadata !DIExpression()), !dbg !4089
  br i1 %12, label %14, label %15, !dbg !4102

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4103
  unreachable, !dbg !4103

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4089
  call void @llvm.dbg.value(metadata i64 %16, metadata !849, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %0, metadata !3904, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 %16, metadata !3907, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 1, metadata !3908, metadata !DIExpression()), !dbg !4104
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4106
  call void @llvm.dbg.value(metadata ptr %17, metadata !3912, metadata !DIExpression()), !dbg !4107
  %18 = icmp eq ptr %17, null, !dbg !4109
  br i1 %18, label %19, label %20, !dbg !4110

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4111
  unreachable, !dbg !4111

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !846, metadata !DIExpression()), !dbg !4089
  store i64 %16, ptr %1, align 8, !dbg !4112, !tbaa !3156
  ret ptr %17, !dbg !4113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !841 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !846, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !847, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !848, metadata !DIExpression()), !dbg !4114
  %4 = load i64, ptr %1, align 8, !dbg !4115, !tbaa !3156
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !849, metadata !DIExpression()), !dbg !4114
  %5 = icmp eq ptr %0, null, !dbg !4116
  br i1 %5, label %6, label %13, !dbg !4117

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4118
  br i1 %7, label %8, label %20, !dbg !4119

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4120
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !849, metadata !DIExpression()), !dbg !4114
  %10 = icmp ugt i64 %2, 128, !dbg !4122
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !849, metadata !DIExpression()), !dbg !4114
  br label %20, !dbg !4124

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4125
  %15 = add nuw i64 %14, 1, !dbg !4125
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4125
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4125
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !849, metadata !DIExpression()), !dbg !4114
  br i1 %17, label %19, label %20, !dbg !4126

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4127
  unreachable, !dbg !4127

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !849, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata ptr %0, metadata !3904, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %21, metadata !3907, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()), !dbg !4128
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4130
  call void @llvm.dbg.value(metadata ptr %22, metadata !3912, metadata !DIExpression()), !dbg !4131
  %23 = icmp eq ptr %22, null, !dbg !4133
  br i1 %23, label %24, label %25, !dbg !4134

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4135
  unreachable, !dbg !4135

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !846, metadata !DIExpression()), !dbg !4114
  store i64 %21, ptr %1, align 8, !dbg !4136, !tbaa !3156
  ret ptr %22, !dbg !4137
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !853 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !860, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !861, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !862, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !863, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !864, metadata !DIExpression()), !dbg !4138
  %6 = load i64, ptr %1, align 8, !dbg !4139, !tbaa !3156
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !865, metadata !DIExpression()), !dbg !4138
  %7 = ashr i64 %6, 1, !dbg !4140
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4140
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4140
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !866, metadata !DIExpression()), !dbg !4138
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4142
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !866, metadata !DIExpression()), !dbg !4138
  %12 = icmp sgt i64 %3, -1, !dbg !4143
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4145
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4145
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !866, metadata !DIExpression()), !dbg !4138
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4146
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4146
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4146
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !867, metadata !DIExpression()), !dbg !4138
  %18 = icmp slt i64 %17, 128, !dbg !4146
  %19 = select i1 %18, i64 128, i64 0, !dbg !4146
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4146
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !868, metadata !DIExpression()), !dbg !4138
  %21 = icmp eq i64 %20, 0, !dbg !4147
  br i1 %21, label %28, label %22, !dbg !4149

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4150
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !866, metadata !DIExpression()), !dbg !4138
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !867, metadata !DIExpression()), !dbg !4138
  br label %28, !dbg !4153

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4138
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !867, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !866, metadata !DIExpression()), !dbg !4138
  %31 = icmp eq ptr %0, null, !dbg !4154
  br i1 %31, label %32, label %33, !dbg !4156

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4157, !tbaa !3156
  br label %33, !dbg !4158

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4159
  %35 = icmp slt i64 %34, %2, !dbg !4161
  br i1 %35, label %36, label %48, !dbg !4162

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4163
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4163
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !866, metadata !DIExpression()), !dbg !4138
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4164
  br i1 %42, label %47, label %43, !dbg !4164

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4165
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4165
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4165
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !867, metadata !DIExpression()), !dbg !4138
  br i1 %45, label %47, label %48, !dbg !4166

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #41, !dbg !4167
  unreachable, !dbg !4167

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4138
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !867, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !866, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %0, metadata !3984, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i64 %50, metadata !3985, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata ptr %0, metadata !3987, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %50, metadata !3991, metadata !DIExpression()), !dbg !4170
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4172
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !4173
  call void @llvm.dbg.value(metadata ptr %52, metadata !3912, metadata !DIExpression()), !dbg !4174
  %53 = icmp eq ptr %52, null, !dbg !4176
  br i1 %53, label %54, label %55, !dbg !4177

54:                                               ; preds = %48
  tail call void @xalloc_die() #41, !dbg !4178
  unreachable, !dbg !4178

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !860, metadata !DIExpression()), !dbg !4138
  store i64 %49, ptr %1, align 8, !dbg !4179, !tbaa !3156
  ret ptr %52, !dbg !4180
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4181 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %0, metadata !4185, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 1, metadata !4188, metadata !DIExpression()), !dbg !4189
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4191
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !4192
  %3 = icmp eq ptr %2, null, !dbg !4194
  br i1 %3, label %4, label %5, !dbg !4195

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4196
  unreachable, !dbg !4196

5:                                                ; preds = %1
  ret ptr %2, !dbg !4197
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4198 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4186 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4185, metadata !DIExpression()), !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4188, metadata !DIExpression()), !dbg !4199
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4200
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4201
  %4 = icmp eq ptr %3, null, !dbg !4203
  br i1 %4, label %5, label %6, !dbg !4204

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4205
  unreachable, !dbg !4205

6:                                                ; preds = %2
  ret ptr %3, !dbg !4206
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4207 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4209, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %0, metadata !4211, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 1, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %0, metadata !4217, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 1, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 %0, metadata !4217, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 1, metadata !4220, metadata !DIExpression()), !dbg !4221
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4223
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !4224
  %3 = icmp eq ptr %2, null, !dbg !4226
  br i1 %3, label %4, label %5, !dbg !4227

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4228
  unreachable, !dbg !4228

5:                                                ; preds = %1
  ret ptr %2, !dbg !4229
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4212 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4211, metadata !DIExpression()), !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4214, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 %0, metadata !4217, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %1, metadata !4220, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %0, metadata !4217, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %1, metadata !4220, metadata !DIExpression()), !dbg !4231
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4233
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4234
  %4 = icmp eq ptr %3, null, !dbg !4236
  br i1 %4, label %5, label %6, !dbg !4237

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4238
  unreachable, !dbg !4238

6:                                                ; preds = %2
  ret ptr %3, !dbg !4239
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4240 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4245, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()), !dbg !4247
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4249
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4250
  %4 = icmp eq ptr %3, null, !dbg !4252
  br i1 %4, label %5, label %6, !dbg !4253

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4254
  unreachable, !dbg !4254

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4255, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata ptr %0, metadata !4258, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata i64 %1, metadata !4259, metadata !DIExpression()), !dbg !4260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4262
  ret ptr %3, !dbg !4263
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4264 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4270
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4269, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i64 %1, metadata !3950, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %1, metadata !3952, metadata !DIExpression()), !dbg !4273
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4275
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4276
  %4 = icmp eq ptr %3, null, !dbg !4278
  br i1 %4, label %5, label %6, !dbg !4279

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4280
  unreachable, !dbg !4280

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4255, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata ptr %0, metadata !4258, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %1, metadata !4259, metadata !DIExpression()), !dbg !4281
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4283
  ret ptr %3, !dbg !4284
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4285 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4289, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4290, metadata !DIExpression()), !dbg !4292
  %3 = add nsw i64 %1, 1, !dbg !4293
  call void @llvm.dbg.value(metadata i64 %3, metadata !3950, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i64 %3, metadata !3952, metadata !DIExpression()), !dbg !4296
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4298
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !4299
  %5 = icmp eq ptr %4, null, !dbg !4301
  br i1 %5, label %6, label %7, !dbg !4302

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4303
  unreachable, !dbg !4303

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4291, metadata !DIExpression()), !dbg !4292
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4304
  store i8 0, ptr %8, align 1, !dbg !4305, !tbaa !1006
  call void @llvm.dbg.value(metadata ptr %4, metadata !4255, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata ptr %0, metadata !4258, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i64 %1, metadata !4259, metadata !DIExpression()), !dbg !4306
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4308
  ret ptr %4, !dbg !4309
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4310 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4312, metadata !DIExpression()), !dbg !4313
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4314
  %3 = add i64 %2, 1, !dbg !4315
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %3, metadata !4245, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %3, metadata !3936, metadata !DIExpression()), !dbg !4318
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4320
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !4321
  %5 = icmp eq ptr %4, null, !dbg !4323
  br i1 %5, label %6, label %7, !dbg !4324

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4325
  unreachable, !dbg !4325

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4255, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata ptr %0, metadata !4258, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %3, metadata !4259, metadata !DIExpression()), !dbg !4326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4328
  ret ptr %4, !dbg !4329
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4330 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4335, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4332, metadata !DIExpression()), !dbg !4336
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.123, ptr noundef nonnull @.str.2.124, i32 noundef 5) #39, !dbg !4335
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef %2) #39, !dbg !4335
  %3 = icmp eq i32 %1, 0, !dbg !4335
  tail call void @llvm.assume(i1 %3), !dbg !4335
  tail call void @abort() #41, !dbg !4337
  unreachable, !dbg !4337
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4338 {
  %9 = alloca i64, align 8, !DIAssignID !4359
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4350, metadata !DIExpression(), metadata !4359, metadata ptr %9, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4342, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4343, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4344, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4345, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4346, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !4347, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !4348, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4349, metadata !DIExpression()), !dbg !4360
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #39, !dbg !4361
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #39, !dbg !4362
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4352, metadata !DIExpression()), !dbg !4360
  %11 = icmp eq i32 %10, 4, !dbg !4363
  br i1 %11, label %27, label %12, !dbg !4365

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4366, !tbaa !3156
  %14 = icmp ult i64 %13, %2, !dbg !4369
  br i1 %14, label %15, label %20, !dbg !4370

15:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4351, metadata !DIExpression()), !dbg !4360
  %16 = and i32 %7, 4, !dbg !4371
  %17 = icmp eq i32 %16, 0, !dbg !4373
  %18 = select i1 %17, i32 75, i32 34, !dbg !4373
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !4354, metadata !DIExpression()), !dbg !4360
  %19 = call i32 @llvm.umax.i32(i32 %10, i32 1), !dbg !4374
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !4352, metadata !DIExpression()), !dbg !4360
  br label %27, !dbg !4375

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4376
  br i1 %21, label %22, label %33, !dbg !4378

22:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4351, metadata !DIExpression()), !dbg !4360
  %23 = and i32 %7, 8, !dbg !4379
  %24 = icmp eq i32 %23, 0, !dbg !4381
  %25 = select i1 %24, i32 75, i32 34, !dbg !4381
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !4354, metadata !DIExpression()), !dbg !4360
  %26 = call i32 @llvm.umax.i32(i32 %10, i32 1), !dbg !4382
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4352, metadata !DIExpression()), !dbg !4360
  br label %27, !dbg !4383

27:                                               ; preds = %15, %22, %8
  %28 = phi i32 [ undef, %8 ], [ %25, %22 ], [ %18, %15 ]
  %29 = phi i32 [ 4, %8 ], [ %26, %22 ], [ %19, %15 ]
  %30 = phi i64 [ undef, %8 ], [ %3, %22 ], [ %2, %15 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !4351, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !4352, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !4354, metadata !DIExpression()), !dbg !4360
  %31 = icmp eq i32 %29, 1, !dbg !4384
  %32 = select i1 %31, i32 %28, i32 0, !dbg !4385
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !4355, metadata !DIExpression()), !dbg !4360
  br label %37, !dbg !4386

33:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !4351, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4352, metadata !DIExpression()), !dbg !4360
  tail call void @llvm.dbg.value(metadata i32 75, metadata !4354, metadata !DIExpression()), !dbg !4360
  %34 = icmp eq i32 %10, 1, !dbg !4384
  %35 = select i1 %34, i32 75, i32 0, !dbg !4385
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4355, metadata !DIExpression()), !dbg !4360
  %36 = icmp eq i32 %10, 0, !dbg !4387
  br i1 %36, label %47, label %37, !dbg !4386

37:                                               ; preds = %27, %33
  %38 = phi i32 [ %32, %27 ], [ %35, %33 ]
  %39 = phi i1 [ %31, %27 ], [ %34, %33 ]
  %40 = phi i64 [ %30, %27 ], [ %13, %33 ]
  %41 = and i32 %7, 2
  %42 = icmp ne i32 %41, 0
  %43 = and i1 %42, %39, !dbg !4388
  br i1 %43, label %47, label %44, !dbg !4388

44:                                               ; preds = %37
  %45 = call i32 @llvm.umax.i32(i32 %6, i32 1), !dbg !4389
  %46 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !4389
  call void (i32, i32, ptr, ...) @error(i32 noundef %45, i32 noundef %38, ptr noundef nonnull @.str.128, ptr noundef nonnull %5, ptr noundef %46) #39, !dbg !4389
  unreachable, !dbg !4389

47:                                               ; preds = %37, %33
  %48 = phi i32 [ %38, %37 ], [ %35, %33 ]
  %49 = phi i64 [ %40, %37 ], [ %13, %33 ]
  %50 = tail call ptr @__errno_location() #42, !dbg !4390
  store i32 %48, ptr %50, align 4, !dbg !4391, !tbaa !997
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !4392
  ret i64 %49, !dbg !4393
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4394 {
  %7 = alloca i64, align 8, !DIAssignID !4404
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4398, metadata !DIExpression()), !dbg !4405
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4399, metadata !DIExpression()), !dbg !4405
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4400, metadata !DIExpression()), !dbg !4405
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4401, metadata !DIExpression()), !dbg !4405
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4402, metadata !DIExpression()), !dbg !4405
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4403, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4350, metadata !DIExpression(), metadata !4404, metadata ptr %7, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata ptr %0, metadata !4342, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 10, metadata !4343, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64 %1, metadata !4344, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64 %2, metadata !4345, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata ptr %3, metadata !4346, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata ptr %4, metadata !4347, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 %5, metadata !4348, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 0, metadata !4349, metadata !DIExpression()), !dbg !4406
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !4408
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #39, !dbg !4409
  call void @llvm.dbg.value(metadata i32 %8, metadata !4352, metadata !DIExpression()), !dbg !4406
  %9 = freeze i32 %8, !dbg !4410
  %10 = icmp eq i32 %9, 4, !dbg !4411
  br i1 %10, label %23, label %11, !dbg !4412

11:                                               ; preds = %6
  %12 = load i64, ptr %7, align 8, !dbg !4413, !tbaa !3156
  %13 = icmp ult i64 %12, %1, !dbg !4414
  %14 = icmp ugt i64 %12, %2
  %15 = or i1 %13, %14, !dbg !4415
  br i1 %15, label %16, label %19, !dbg !4415

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 poison, metadata !4351, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 poison, metadata !4352, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 75, metadata !4354, metadata !DIExpression()), !dbg !4406
  %17 = icmp ult i32 %9, 2, !dbg !4416
  %18 = select i1 %17, i32 75, i32 0, !dbg !4417
  br label %23, !dbg !4417

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %12, metadata !4351, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 %8, metadata !4352, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 75, metadata !4354, metadata !DIExpression()), !dbg !4406
  %20 = icmp eq i32 %9, 1, !dbg !4416
  %21 = select i1 %20, i32 75, i32 0, !dbg !4417
  call void @llvm.dbg.value(metadata i32 %21, metadata !4355, metadata !DIExpression()), !dbg !4406
  %22 = icmp eq i32 %9, 0, !dbg !4418
  br i1 %22, label %27, label %23, !dbg !4419

23:                                               ; preds = %16, %6, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %6 ], [ %18, %16 ]
  %25 = call i32 @llvm.umax.i32(i32 %5, i32 1), !dbg !4420
  %26 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !4420
  call void (i32, i32, ptr, ...) @error(i32 noundef %25, i32 noundef %24, ptr noundef nonnull @.str.128, ptr noundef nonnull %4, ptr noundef %26) #39, !dbg !4420
  unreachable, !dbg !4420

27:                                               ; preds = %19
  %28 = tail call ptr @__errno_location() #42, !dbg !4421
  store i32 0, ptr %28, align 4, !dbg !4422, !tbaa !997
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !4423
  ret i64 %12, !dbg !4424
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4425 {
  %6 = alloca ptr, align 8, !DIAssignID !4450
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4437, metadata !DIExpression(), metadata !4450, metadata ptr %6, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4432, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4433, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4434, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4435, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4436, metadata !DIExpression()), !dbg !4451
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !4452
  %7 = icmp eq ptr %1, null, !dbg !4453
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4438, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4439, metadata !DIExpression()), !dbg !4454
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4442, metadata !DIExpression()), !dbg !4454
  %8 = tail call ptr @__ctype_b_loc() #42, !dbg !4451
  %9 = load ptr, ptr %8, align 8, !tbaa !927
  br label %10, !dbg !4455

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4454
  %12 = load i8, ptr %11, align 1, !dbg !4454, !tbaa !1006
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !4442, metadata !DIExpression()), !dbg !4454
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !4439, metadata !DIExpression()), !dbg !4454
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4456
  %15 = load i16, ptr %14, align 2, !dbg !4456, !tbaa !1038
  %16 = and i16 %15, 8192, !dbg !4456
  %17 = icmp eq i16 %16, 0, !dbg !4455
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4457
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !4439, metadata !DIExpression()), !dbg !4454
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4442, metadata !DIExpression()), !dbg !4454
  br i1 %17, label %19, label %10, !dbg !4455, !llvm.loop !4458

19:                                               ; preds = %10
  %.lcssa = phi i8 [ %12, %10 ], !dbg !4454
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4453
  %21 = icmp eq i8 %.lcssa, 45, !dbg !4460
  br i1 %21, label %22, label %23, !dbg !4462

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4463, !tbaa !927
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #42, !dbg !4465
  store i32 0, ptr %24, align 4, !dbg !4466, !tbaa !997
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %2) #39, !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4443, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4444, metadata !DIExpression()), !dbg !4451
  %26 = load ptr, ptr %20, align 8, !dbg !4468, !tbaa !927
  %27 = icmp eq ptr %26, %0, !dbg !4470
  br i1 %27, label %28, label %37, !dbg !4471

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4472
  br i1 %29, label %386, label %30, !dbg !4475

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4476, !tbaa !1006
  %32 = icmp eq i8 %31, 0, !dbg !4476
  br i1 %32, label %386, label %33, !dbg !4477

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32, !dbg !4476
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #40, !dbg !4478
  %36 = icmp eq ptr %35, null, !dbg !4478
  br i1 %36, label %386, label %44, !dbg !4479

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4480, !tbaa !997
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4482

39:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4444, metadata !DIExpression()), !dbg !4451
  br label %40, !dbg !4483

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4451
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4443, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !4444, metadata !DIExpression()), !dbg !4451
  %42 = icmp eq ptr %4, null, !dbg !4485
  br i1 %42, label %43, label %44, !dbg !4487

43:                                               ; preds = %40
  store i64 %25, ptr %3, align 8, !dbg !4488, !tbaa !3156
  br label %386, !dbg !4490

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4491, !tbaa !1006
  %48 = icmp eq i8 %47, 0, !dbg !4492
  br i1 %48, label %383, label %49, !dbg !4493

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32, !dbg !4491
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #40, !dbg !4494
  %52 = icmp eq ptr %51, null, !dbg !4494
  br i1 %52, label %53, label %55, !dbg !4496

53:                                               ; preds = %49
  store i64 %46, ptr %3, align 8, !dbg !4497, !tbaa !3156
  %54 = or disjoint i32 %45, 2, !dbg !4499
  br label %386, !dbg !4500

55:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4445, metadata !DIExpression()), !dbg !4501
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4448, metadata !DIExpression()), !dbg !4501
  switch i8 %47, label %68 [
    i8 69, label %56
    i8 71, label %56
    i8 103, label %56
    i8 107, label %56
    i8 75, label %56
    i8 77, label %56
    i8 109, label %56
    i8 80, label %56
    i8 81, label %56
    i8 82, label %56
    i8 84, label %56
    i8 116, label %56
    i8 89, label %56
    i8 90, label %56
  ], !dbg !4502

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #40, !dbg !4503
  %58 = icmp eq ptr %57, null, !dbg !4503
  br i1 %58, label %68, label %59, !dbg !4506

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4507
  %61 = load i8, ptr %60, align 1, !dbg !4507, !tbaa !1006
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4508

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4509
  %64 = load i8, ptr %63, align 1, !dbg !4509, !tbaa !1006
  %65 = icmp eq i8 %64, 66, !dbg !4512
  %66 = select i1 %65, i64 3, i64 1, !dbg !4513
  br label %68, !dbg !4513

67:                                               ; preds = %59, %59
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4445, metadata !DIExpression()), !dbg !4501
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4448, metadata !DIExpression()), !dbg !4501
  br label %68, !dbg !4514

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ], !dbg !4501
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ], !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !4448, metadata !DIExpression()), !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !4445, metadata !DIExpression()), !dbg !4501
  switch i8 %47, label %381 [
    i8 98, label %302
    i8 66, label %307
    i8 99, label %372
    i8 69, label %271
    i8 71, label %312
    i8 103, label %312
    i8 107, label %328
    i8 75, label %328
    i8 77, label %334
    i8 109, label %334
    i8 80, label %245
    i8 81, label %194
    i8 82, label %148
    i8 84, label %345
    i8 116, label %345
    i8 119, label %366
    i8 89, label %107
    i8 90, label %71
  ], !dbg !4515

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4534
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4536
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4536
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4534
  %74 = extractvalue { i64, i1 } %72, 0, !dbg !4538
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4538
  call void @llvm.dbg.value(metadata i1 %73, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i1 %73, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4534
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4536
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4536
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4534
  %78 = extractvalue { i64, i1 } %76, 0, !dbg !4538
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4538
  %80 = or i1 %73, %77, !dbg !4539
  call void @llvm.dbg.value(metadata i1 %80, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i1 %80, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4534
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4536
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4536
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4534
  %83 = extractvalue { i64, i1 } %81, 0, !dbg !4538
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4538
  %85 = or i1 %80, %82, !dbg !4539
  call void @llvm.dbg.value(metadata i1 %85, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i1 %85, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4534
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4536
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4536
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4534
  %88 = extractvalue { i64, i1 } %86, 0, !dbg !4538
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4538
  %90 = or i1 %85, %87, !dbg !4539
  call void @llvm.dbg.value(metadata i1 %90, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i1 %90, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4534
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4536
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4536
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4534
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4538
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4538
  %95 = or i1 %90, %92, !dbg !4539
  call void @llvm.dbg.value(metadata i1 %95, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i1 %95, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4534
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4536
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4536
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4534
  %98 = extractvalue { i64, i1 } %96, 0, !dbg !4538
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4538
  %100 = or i1 %95, %97, !dbg !4539
  call void @llvm.dbg.value(metadata i1 %100, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i1 %100, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4524
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4534
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4536
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4536
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4534
  %103 = extractvalue { i64, i1 } %101, 0, !dbg !4538
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4538
  %105 = or i1 %100, %102, !dbg !4539
  %106 = zext i1 %105 to i32, !dbg !4539
  call void @llvm.dbg.value(metadata i32 %106, metadata !4516, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4524
  br label %372, !dbg !4540

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 8, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4543
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4545
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4545
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4543
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !4546
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4546
  call void @llvm.dbg.value(metadata i1 %109, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i1 %109, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4543
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4545
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4545
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4543
  %114 = extractvalue { i64, i1 } %112, 0, !dbg !4546
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4546
  %116 = or i1 %109, %113, !dbg !4547
  call void @llvm.dbg.value(metadata i1 %116, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i1 %116, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4543
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4545
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4545
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4543
  %119 = extractvalue { i64, i1 } %117, 0, !dbg !4546
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4546
  %121 = or i1 %116, %118, !dbg !4547
  call void @llvm.dbg.value(metadata i1 %121, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i1 %121, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4543
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4545
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4545
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4543
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !4546
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4546
  %126 = or i1 %121, %123, !dbg !4547
  call void @llvm.dbg.value(metadata i1 %126, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i1 %126, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4543
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4545
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4545
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4543
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4546
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4546
  %131 = or i1 %126, %128, !dbg !4547
  call void @llvm.dbg.value(metadata i1 %131, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i1 %131, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4543
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4545
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4545
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4543
  %134 = extractvalue { i64, i1 } %132, 0, !dbg !4546
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4546
  %136 = or i1 %131, %133, !dbg !4547
  call void @llvm.dbg.value(metadata i1 %136, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i1 %136, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4543
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4545
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4545
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4543
  %139 = extractvalue { i64, i1 } %137, 0, !dbg !4546
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4546
  %141 = or i1 %136, %138, !dbg !4547
  call void @llvm.dbg.value(metadata i1 %141, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i1 %141, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4541
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4543
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4545
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4545
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4543
  %144 = extractvalue { i64, i1 } %142, 0, !dbg !4546
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4546
  %146 = or i1 %141, %143, !dbg !4547
  %147 = zext i1 %146 to i32, !dbg !4547
  call void @llvm.dbg.value(metadata i32 %147, metadata !4516, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4541
  br label %372, !dbg !4540

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 9, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 8, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4550
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4552
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4550
  %151 = extractvalue { i64, i1 } %149, 0, !dbg !4553
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4553
  call void @llvm.dbg.value(metadata i1 %150, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 8, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i1 %150, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 8, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4550
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4552
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4550
  %155 = extractvalue { i64, i1 } %153, 0, !dbg !4553
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4553
  %157 = or i1 %150, %154, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %157, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i1 %157, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4550
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4552
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4550
  %160 = extractvalue { i64, i1 } %158, 0, !dbg !4553
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4553
  %162 = or i1 %157, %159, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %162, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i1 %162, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4550
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4552
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4550
  %165 = extractvalue { i64, i1 } %163, 0, !dbg !4553
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4553
  %167 = or i1 %162, %164, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %167, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i1 %167, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4550
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4552
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4550
  %170 = extractvalue { i64, i1 } %168, 0, !dbg !4553
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4553
  %172 = or i1 %167, %169, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %172, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i1 %172, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4550
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4552
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4550
  %175 = extractvalue { i64, i1 } %173, 0, !dbg !4553
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4553
  %177 = or i1 %172, %174, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %177, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i1 %177, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4550
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4552
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4550
  %180 = extractvalue { i64, i1 } %178, 0, !dbg !4553
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4553
  %182 = or i1 %177, %179, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %182, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i1 %182, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4550
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4552
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4550
  %185 = extractvalue { i64, i1 } %183, 0, !dbg !4553
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4553
  %187 = or i1 %182, %184, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %187, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i1 %187, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4550
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4552
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4550
  %190 = extractvalue { i64, i1 } %188, 0, !dbg !4553
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4553
  %192 = or i1 %187, %189, !dbg !4554
  %193 = zext i1 %192 to i32, !dbg !4554
  call void @llvm.dbg.value(metadata i32 %193, metadata !4516, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  br label %372, !dbg !4540

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 10, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 9, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4559
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %197 = extractvalue { i64, i1 } %195, 0, !dbg !4560
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4560
  call void @llvm.dbg.value(metadata i1 %196, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 9, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i1 %196, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 9, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 8, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4559
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !4560
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4560
  %203 = or i1 %196, %200, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %203, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 8, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i1 %203, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 8, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4559
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %206 = extractvalue { i64, i1 } %204, 0, !dbg !4560
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4560
  %208 = or i1 %203, %205, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %208, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i1 %208, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 7, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4559
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %211 = extractvalue { i64, i1 } %209, 0, !dbg !4560
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4560
  %213 = or i1 %208, %210, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %213, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i1 %213, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4559
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %216 = extractvalue { i64, i1 } %214, 0, !dbg !4560
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4560
  %218 = or i1 %213, %215, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %218, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i1 %218, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4559
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4560
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4560
  %223 = or i1 %218, %220, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %223, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i1 %223, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4559
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %226 = extractvalue { i64, i1 } %224, 0, !dbg !4560
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4560
  %228 = or i1 %223, %225, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %228, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i1 %228, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4559
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %231 = extractvalue { i64, i1 } %229, 0, !dbg !4560
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4560
  %233 = or i1 %228, %230, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %233, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i1 %233, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4559
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4560
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4560
  %238 = or i1 %233, %235, !dbg !4561
  call void @llvm.dbg.value(metadata i1 %238, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i1 %238, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4555
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4557
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4559
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4559
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4557
  %241 = extractvalue { i64, i1 } %239, 0, !dbg !4560
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4560
  %243 = or i1 %238, %240, !dbg !4561
  %244 = zext i1 %243 to i32, !dbg !4561
  call void @llvm.dbg.value(metadata i32 %244, metadata !4516, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4555
  br label %372, !dbg !4540

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4564
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4566
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4566
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4564
  %248 = extractvalue { i64, i1 } %246, 0, !dbg !4567
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4567
  call void @llvm.dbg.value(metadata i1 %247, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i1 %247, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4564
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4566
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4566
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4564
  %252 = extractvalue { i64, i1 } %250, 0, !dbg !4567
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4567
  %254 = or i1 %247, %251, !dbg !4568
  call void @llvm.dbg.value(metadata i1 %254, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i1 %254, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4564
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4566
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4566
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4564
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4567
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4567
  %259 = or i1 %254, %256, !dbg !4568
  call void @llvm.dbg.value(metadata i1 %259, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i1 %259, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4564
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4566
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4566
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4564
  %262 = extractvalue { i64, i1 } %260, 0, !dbg !4567
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4567
  %264 = or i1 %259, %261, !dbg !4568
  call void @llvm.dbg.value(metadata i1 %264, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i1 %264, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4562
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4564
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4566
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4566
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4564
  %267 = extractvalue { i64, i1 } %265, 0, !dbg !4567
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4567
  %269 = or i1 %264, %266, !dbg !4568
  %270 = zext i1 %269 to i32, !dbg !4568
  call void @llvm.dbg.value(metadata i32 %270, metadata !4516, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4562
  br label %372, !dbg !4540

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 6, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4571
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4573
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4573
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4571
  %274 = extractvalue { i64, i1 } %272, 0, !dbg !4574
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4574
  call void @llvm.dbg.value(metadata i1 %273, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i1 %273, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 5, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4571
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4573
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4573
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4571
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4574
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4574
  %280 = or i1 %273, %277, !dbg !4575
  call void @llvm.dbg.value(metadata i1 %280, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i1 %280, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4571
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4573
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4573
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4571
  %283 = extractvalue { i64, i1 } %281, 0, !dbg !4574
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4574
  %285 = or i1 %280, %282, !dbg !4575
  call void @llvm.dbg.value(metadata i1 %285, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i1 %285, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4571
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4573
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4573
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4571
  %288 = extractvalue { i64, i1 } %286, 0, !dbg !4574
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4574
  %290 = or i1 %285, %287, !dbg !4575
  call void @llvm.dbg.value(metadata i1 %290, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i1 %290, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4571
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4573
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4573
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4571
  %293 = extractvalue { i64, i1 } %291, 0, !dbg !4574
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4574
  %295 = or i1 %290, %292, !dbg !4575
  call void @llvm.dbg.value(metadata i1 %295, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i1 %295, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4569
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4571
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4573
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4573
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4571
  %298 = extractvalue { i64, i1 } %296, 0, !dbg !4574
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4574
  %300 = or i1 %295, %297, !dbg !4575
  %301 = zext i1 %300 to i32, !dbg !4575
  call void @llvm.dbg.value(metadata i32 %301, metadata !4516, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4569
  br label %372, !dbg !4540

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i32 512, metadata !4532, metadata !DIExpression()), !dbg !4576
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4578
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4576
  %304 = shl i64 %46, 9, !dbg !4579
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4579
  %306 = zext i1 %303 to i32, !dbg !4579
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !4443, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata i32 %306, metadata !4449, metadata !DIExpression()), !dbg !4501
  br label %372, !dbg !4580

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i32 1024, metadata !4532, metadata !DIExpression()), !dbg !4581
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4583
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4581
  %309 = shl i64 %46, 10, !dbg !4584
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4584
  %311 = zext i1 %308 to i32, !dbg !4584
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !4443, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata i32 %311, metadata !4449, metadata !DIExpression()), !dbg !4501
  br label %372, !dbg !4585

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4521, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %69, metadata !4522, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4586
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4588
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4590
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4590
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4588
  %315 = extractvalue { i64, i1 } %313, 0, !dbg !4591
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4591
  call void @llvm.dbg.value(metadata i1 %314, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4586
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4586
  call void @llvm.dbg.value(metadata i1 %314, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4586
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4588
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4590
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4590
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4588
  %319 = extractvalue { i64, i1 } %317, 0, !dbg !4591
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4591
  %321 = or i1 %314, %318, !dbg !4592
  call void @llvm.dbg.value(metadata i1 %321, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4586
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4586
  call void @llvm.dbg.value(metadata i1 %321, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4586
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4588
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4590
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4590
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4588
  %324 = extractvalue { i64, i1 } %322, 0, !dbg !4591
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4591
  %326 = or i1 %321, %323, !dbg !4592
  %327 = zext i1 %326 to i32, !dbg !4592
  call void @llvm.dbg.value(metadata i32 %327, metadata !4516, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4586
  br label %372, !dbg !4540

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4521, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %69, metadata !4522, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4593
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4595
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4595
  %331 = extractvalue { i64, i1 } %329, 0, !dbg !4597
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4597
  %333 = zext i1 %330 to i32, !dbg !4597
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4598
  br label %372, !dbg !4540

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4521, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 %69, metadata !4522, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4601
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4603
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4603
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4601
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4604
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4604
  call void @llvm.dbg.value(metadata i1 %336, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4599
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4599
  call void @llvm.dbg.value(metadata i1 %336, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4599
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4601
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4603
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4603
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4601
  %341 = extractvalue { i64, i1 } %339, 0, !dbg !4604
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4604
  %343 = or i1 %336, %340, !dbg !4605
  %344 = zext i1 %343 to i32, !dbg !4605
  call void @llvm.dbg.value(metadata i32 %344, metadata !4516, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4599
  br label %372, !dbg !4540

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4521, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i64 %69, metadata !4522, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i32 0, metadata !4516, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i32 4, metadata !4523, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4608
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4610
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4610
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4608
  %348 = extractvalue { i64, i1 } %346, 0, !dbg !4611
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4611
  call void @llvm.dbg.value(metadata i1 %347, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i1 %347, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i32 3, metadata !4523, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4608
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4610
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4610
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4608
  %352 = extractvalue { i64, i1 } %350, 0, !dbg !4611
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4611
  %354 = or i1 %347, %351, !dbg !4612
  call void @llvm.dbg.value(metadata i1 %354, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i1 %354, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i32 2, metadata !4523, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4608
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4610
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4610
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4608
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4611
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4611
  %359 = or i1 %354, %356, !dbg !4612
  call void @llvm.dbg.value(metadata i1 %359, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i1 %359, metadata !4516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i32 1, metadata !4523, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %69, metadata !4532, metadata !DIExpression()), !dbg !4608
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4610
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4610
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4608
  %362 = extractvalue { i64, i1 } %360, 0, !dbg !4611
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4611
  %364 = or i1 %359, %361, !dbg !4612
  %365 = zext i1 %364 to i32, !dbg !4612
  call void @llvm.dbg.value(metadata i32 %365, metadata !4516, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4606
  br label %372, !dbg !4540

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4527, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i32 2, metadata !4532, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4613
  %367 = shl i64 %46, 1, !dbg !4615
  %368 = icmp sgt i64 %46, -1, !dbg !4615
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4615
  %370 = lshr i64 %46, 63, !dbg !4615
  %371 = trunc i64 %370 to i32, !dbg !4615
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !4443, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata i32 %371, metadata !4449, metadata !DIExpression()), !dbg !4501
  br label %372, !dbg !4616

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4451
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4617
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !4443, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata i32 %374, metadata !4449, metadata !DIExpression()), !dbg !4501
  %375 = or i32 %374, %45, !dbg !4540
  tail call void @llvm.dbg.value(metadata i32 %375, metadata !4444, metadata !DIExpression()), !dbg !4451
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4618
  store ptr %376, ptr %20, align 8, !dbg !4618, !tbaa !927
  %377 = load i8, ptr %376, align 1, !dbg !4619, !tbaa !1006
  %378 = icmp eq i8 %377, 0, !dbg !4619
  %379 = or disjoint i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4621
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !4444, metadata !DIExpression()), !dbg !4451
  br label %383

381:                                              ; preds = %68
  store i64 %46, ptr %3, align 8, !dbg !4622, !tbaa !3156
  %382 = or disjoint i32 %45, 2, !dbg !4623
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !4443, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !4444, metadata !DIExpression()), !dbg !4451
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4624
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4625
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !4443, metadata !DIExpression()), !dbg !4451
  tail call void @llvm.dbg.value(metadata i32 %385, metadata !4444, metadata !DIExpression()), !dbg !4451
  store i64 %384, ptr %3, align 8, !dbg !4626, !tbaa !3156
  br label %386, !dbg !4627

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4451
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !4628
  ret i32 %387, !dbg !4628
}

; Function Attrs: nounwind
declare !dbg !4629 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4634 {
  %3 = alloca [81 x i8], align 1, !DIAssignID !4696
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4677, metadata !DIExpression(), metadata !4696, metadata ptr %3, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4672, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4673, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4674, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4675, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4676, metadata !DIExpression()), !dbg !4697
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #39, !dbg !4698
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4681, metadata !DIExpression()), !dbg !4699
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4683, metadata !DIExpression()), !dbg !4699
  br label %4, !dbg !4700

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4699
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4697
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4701
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4702
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4674, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4675, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4683, metadata !DIExpression()), !dbg !4699
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4681, metadata !DIExpression()), !dbg !4699
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4676, metadata !DIExpression()), !dbg !4697
  %11 = load i8, ptr %6, align 1, !dbg !4702, !tbaa !1006
  switch i8 %11, label %38 [
    i8 0, label %.loopexit
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4703

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4674, metadata !DIExpression()), !dbg !4697
  %13 = icmp slt i64 %7, 80, !dbg !4704
  br i1 %13, label %14, label %43, !dbg !4707

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4708
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4683, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4699
  store i8 114, ptr %10, align 1, !dbg !4709, !tbaa !1006
  br label %43, !dbg !4710

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4674, metadata !DIExpression()), !dbg !4697
  %17 = or i32 %8, 576, !dbg !4711
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4675, metadata !DIExpression()), !dbg !4697
  %18 = icmp slt i64 %7, 80, !dbg !4712
  br i1 %18, label %19, label %43, !dbg !4714

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4715
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4683, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4699
  store i8 119, ptr %10, align 1, !dbg !4716, !tbaa !1006
  br label %43, !dbg !4717

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4674, metadata !DIExpression()), !dbg !4697
  %22 = or i32 %8, 1088, !dbg !4718
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4675, metadata !DIExpression()), !dbg !4697
  %23 = icmp slt i64 %7, 80, !dbg !4719
  br i1 %23, label %24, label %43, !dbg !4721

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4722
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4683, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4699
  store i8 97, ptr %10, align 1, !dbg !4723, !tbaa !1006
  br label %43, !dbg !4724

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4675, metadata !DIExpression()), !dbg !4697
  %27 = icmp slt i64 %7, 80, !dbg !4725
  br i1 %27, label %28, label %43, !dbg !4727

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4728
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4683, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4699
  store i8 98, ptr %10, align 1, !dbg !4729, !tbaa !1006
  br label %43, !dbg !4730

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4674, metadata !DIExpression()), !dbg !4697
  %31 = icmp slt i64 %7, 80, !dbg !4731
  br i1 %31, label %32, label %43, !dbg !4733

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4734
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4683, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4699
  store i8 43, ptr %10, align 1, !dbg !4735, !tbaa !1006
  br label %43, !dbg !4736

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4737
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4675, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4676, metadata !DIExpression()), !dbg !4697
  br label %43, !dbg !4738

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4739
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4675, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4676, metadata !DIExpression()), !dbg !4697
  br label %43, !dbg !4740

38:                                               ; preds = %4
  %.lcssa10 = phi i1 [ %5, %4 ]
  %.lcssa8 = phi ptr [ %6, %4 ], !dbg !4699
  %.lcssa6 = phi i64 [ %7, %4 ]
  %.lcssa4 = phi i32 [ %8, %4 ], !dbg !4697
  %.lcssa2 = phi i32 [ %9, %4 ], !dbg !4701
  %.lcssa = phi ptr [ %10, %4 ], !dbg !4702
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #40, !dbg !4741
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4684, metadata !DIExpression()), !dbg !4742
  %40 = sub nsw i64 80, %.lcssa6, !dbg !4743
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4745
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4684, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !4746, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata ptr %.lcssa8, metadata !4749, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 %41, metadata !4750, metadata !DIExpression()), !dbg !4751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.lcssa, ptr noundef nonnull align 1 %.lcssa8, i64 noundef %41, i1 noundef false) #39, !dbg !4753
  %42 = getelementptr inbounds i8, ptr %.lcssa, i64 %41, !dbg !4754
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4683, metadata !DIExpression()), !dbg !4699
  br label %49, !dbg !4755

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4697
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4674, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4675, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4683, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4699
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4676, metadata !DIExpression()), !dbg !4697
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4756
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4681, metadata !DIExpression()), !dbg !4699
  br label %4, !dbg !4757, !llvm.loop !4758

.loopexit:                                        ; preds = %4
  %.lcssa11 = phi i1 [ %5, %4 ]
  %.lcssa5 = phi i32 [ %8, %4 ], !dbg !4697
  %.lcssa3 = phi i32 [ %9, %4 ], !dbg !4701
  %.lcssa1 = phi ptr [ %10, %4 ], !dbg !4702
  br label %49, !dbg !4760

49:                                               ; preds = %.loopexit, %38
  %50 = phi i1 [ %.lcssa10, %38 ], [ %.lcssa11, %.loopexit ]
  %51 = phi i32 [ %.lcssa4, %38 ], [ %.lcssa5, %.loopexit ]
  %52 = phi i32 [ %.lcssa2, %38 ], [ %.lcssa3, %.loopexit ]
  %53 = phi ptr [ %42, %38 ], [ %.lcssa1, %.loopexit ], !dbg !4699
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !4683, metadata !DIExpression()), !dbg !4699
  store i8 0, ptr %53, align 1, !dbg !4760, !tbaa !1006
  br i1 %50, label %54, label %65, !dbg !4761

54:                                               ; preds = %49
  %55 = or i32 %52, %51, !dbg !4762
  %56 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %55, i32 noundef 438) #39, !dbg !4763
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !4689, metadata !DIExpression()), !dbg !4764
  %57 = icmp slt i32 %56, 0, !dbg !4765
  br i1 %57, label %67, label %58, !dbg !4767

58:                                               ; preds = %54
  %59 = call noalias ptr @fdopen(i32 noundef %56, ptr noundef nonnull %3) #39, !dbg !4768
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !4692, metadata !DIExpression()), !dbg !4764
  %60 = icmp eq ptr %59, null, !dbg !4769
  br i1 %60, label %61, label %67, !dbg !4770

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #42, !dbg !4771
  %63 = load i32, ptr %62, align 4, !dbg !4771, !tbaa !997
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !4693, metadata !DIExpression()), !dbg !4772
  %64 = tail call i32 @close(i32 noundef %56) #39, !dbg !4773
  store i32 %63, ptr %62, align 4, !dbg !4774, !tbaa !997
  br label %67, !dbg !4775

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4776, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata ptr %1, metadata !4779, metadata !DIExpression()), !dbg !4780
  %66 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4782
  br label %67, !dbg !4783

67:                                               ; preds = %54, %61, %58, %65
  %68 = phi ptr [ %66, %65 ], [ null, %54 ], [ null, %61 ], [ %59, %58 ], !dbg !4697
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #39, !dbg !4784
  ret ptr %68, !dbg !4784
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4785 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare !dbg !4788 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4791 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4792 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4795 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4833, metadata !DIExpression()), !dbg !4838
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4839
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4834, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4838
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4840, metadata !DIExpression()), !dbg !4843
  %3 = load i32, ptr %0, align 8, !dbg !4845, !tbaa !1292
  %4 = and i32 %3, 32, !dbg !4846
  %5 = icmp eq i32 %4, 0, !dbg !4846
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4836, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4838
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4847
  %7 = icmp eq i32 %6, 0, !dbg !4848
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4837, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4838
  br i1 %5, label %8, label %18, !dbg !4849

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4851
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4834, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4838
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4852
  %11 = xor i1 %7, true, !dbg !4852
  %12 = sext i1 %11 to i32, !dbg !4852
  br i1 %10, label %21, label %13, !dbg !4852

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4853
  %15 = load i32, ptr %14, align 4, !dbg !4853, !tbaa !997
  %16 = icmp ne i32 %15, 9, !dbg !4854
  %17 = sext i1 %16 to i32, !dbg !4855
  br label %21, !dbg !4855

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4856

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4858
  store i32 0, ptr %20, align 4, !dbg !4860, !tbaa !997
  br label %21, !dbg !4858

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4838
  ret i32 %22, !dbg !4861
}

; Function Attrs: nounwind
declare !dbg !4862 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4865 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4870, metadata !DIExpression()), !dbg !4875
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4871, metadata !DIExpression()), !dbg !4875
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4872, metadata !DIExpression()), !dbg !4875
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4873, metadata !DIExpression()), !dbg !4875
  %5 = icmp eq ptr %1, null, !dbg !4876
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4878
  %7 = select i1 %5, ptr @.str.137, ptr %1, !dbg !4878
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4878
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4872, metadata !DIExpression()), !dbg !4875
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4871, metadata !DIExpression()), !dbg !4875
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4870, metadata !DIExpression()), !dbg !4875
  %9 = icmp eq ptr %3, null, !dbg !4879
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4881
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4873, metadata !DIExpression()), !dbg !4875
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4882
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4874, metadata !DIExpression()), !dbg !4875
  %12 = icmp ult i64 %11, -3, !dbg !4883
  br i1 %12, label %13, label %17, !dbg !4885

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4886
  %15 = icmp eq i32 %14, 0, !dbg !4886
  br i1 %15, label %16, label %29, !dbg !4887

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4888, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr %10, metadata !4895, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 0, metadata !4898, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i64 8, metadata !4899, metadata !DIExpression()), !dbg !4900
  store i64 0, ptr %10, align 1, !dbg !4902
  br label %29, !dbg !4903

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4904
  br i1 %18, label %19, label %20, !dbg !4906

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4907
  unreachable, !dbg !4907

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4908

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4910
  br i1 %23, label %29, label %24, !dbg !4911

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4912
  br i1 %25, label %29, label %26, !dbg !4915

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4916, !tbaa !1006
  %28 = zext i8 %27 to i32, !dbg !4917
  store i32 %28, ptr %6, align 4, !dbg !4918, !tbaa !997
  br label %29, !dbg !4919

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4875
  ret i64 %30, !dbg !4920
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4921 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4926 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4928, metadata !DIExpression()), !dbg !4932
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4929, metadata !DIExpression()), !dbg !4932
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4930, metadata !DIExpression()), !dbg !4932
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4933
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4933
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4931, metadata !DIExpression()), !dbg !4932
  br i1 %5, label %6, label %8, !dbg !4935

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4936
  store i32 12, ptr %7, align 4, !dbg !4938, !tbaa !997
  br label %12, !dbg !4939

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4933
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4931, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr %0, metadata !4940, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i64 %9, metadata !4943, metadata !DIExpression()), !dbg !4944
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4946
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4947
  br label %12, !dbg !4948

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4932
  ret ptr %13, !dbg !4949
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4950 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4955, metadata !DIExpression(), metadata !4959, metadata ptr %2, metadata !DIExpression()), !dbg !4960
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4954, metadata !DIExpression()), !dbg !4960
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4961
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4962
  %4 = icmp eq i32 %3, 0, !dbg !4962
  br i1 %4, label %5, label %12, !dbg !4964

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4965, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata ptr @.str.142, metadata !4968, metadata !DIExpression()), !dbg !4969
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.142, i64 2), !dbg !4972
  %7 = icmp eq i32 %6, 0, !dbg !4973
  br i1 %7, label %11, label %8, !dbg !4974

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4965, metadata !DIExpression()), !dbg !4975
  call void @llvm.dbg.value(metadata ptr @.str.1.143, metadata !4968, metadata !DIExpression()), !dbg !4975
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.143, i64 6), !dbg !4977
  %10 = icmp eq i32 %9, 0, !dbg !4978
  br i1 %10, label %11, label %12, !dbg !4979

11:                                               ; preds = %8, %5
  br label %12, !dbg !4980

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4960
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4981
  ret i1 %13, !dbg !4981
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4982 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4986, metadata !DIExpression()), !dbg !4989
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4987, metadata !DIExpression()), !dbg !4989
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4988, metadata !DIExpression()), !dbg !4989
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4990
  ret i32 %4, !dbg !4991
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4992 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4996, metadata !DIExpression()), !dbg !4997
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4998
  ret ptr %2, !dbg !4999
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5000 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5002, metadata !DIExpression()), !dbg !5004
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5005
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5003, metadata !DIExpression()), !dbg !5004
  ret ptr %2, !dbg !5006
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5007 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5009, metadata !DIExpression()), !dbg !5016
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5010, metadata !DIExpression()), !dbg !5016
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5011, metadata !DIExpression()), !dbg !5016
  call void @llvm.dbg.value(metadata i32 %0, metadata !5002, metadata !DIExpression()), !dbg !5017
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5019
  call void @llvm.dbg.value(metadata ptr %4, metadata !5003, metadata !DIExpression()), !dbg !5017
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5012, metadata !DIExpression()), !dbg !5016
  %5 = icmp eq ptr %4, null, !dbg !5020
  br i1 %5, label %6, label %9, !dbg !5021

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5022
  br i1 %7, label %19, label %8, !dbg !5025

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5026, !tbaa !1006
  br label %19, !dbg !5027

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5028
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5013, metadata !DIExpression()), !dbg !5029
  %11 = icmp ult i64 %10, %2, !dbg !5030
  br i1 %11, label %12, label %14, !dbg !5032

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5033
  call void @llvm.dbg.value(metadata ptr %1, metadata !5035, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.value(metadata ptr %4, metadata !5038, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.value(metadata i64 %13, metadata !5039, metadata !DIExpression()), !dbg !5040
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !5042
  br label %19, !dbg !5043

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5044
  br i1 %15, label %19, label %16, !dbg !5047

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5048
  call void @llvm.dbg.value(metadata ptr %1, metadata !5035, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.value(metadata ptr %4, metadata !5038, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.value(metadata i64 %17, metadata !5039, metadata !DIExpression()), !dbg !5050
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5052
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5053
  store i8 0, ptr %18, align 1, !dbg !5054, !tbaa !1006
  br label %19, !dbg !5055

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5056
  ret i32 %20, !dbg !5057
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
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nofree nounwind memory(argmem: readwrite) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!66, !479, !483, !498, !778, !815, !820, !822, !825, !827, !829, !554, !568, !615, !831, !770, !837, !870, !872, !886, !895, !897, !797, !899, !901, !903, !905}
!llvm.ident = !{!907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907, !907}
!llvm.module.flags = !{!908, !909, !910, !911, !912, !913, !914, !915}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/fold.c", directory: "/src", checksumkind: CSK_MD5, checksum: "eee9b3e52e2800e339faad5506a934a5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 60)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 56)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 66)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 76)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 62)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 50)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !39, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 10)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 24)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "shortopts", scope: !66, file: !2, line: 56, type: !469, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/fold.o -MD -MP -MF src/.deps/fold.Tpo -c src/fold.c -o src/.fold.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !135, globals: !145, splitDebugInlining: false, nameTableKind: None)
!67 = !{!68, !74, !81, !87, !102, !116, !125, !129, !132}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 43, baseType: !69, size: 32, elements: !70)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "COUNT_COLUMNS", value: 0)
!72 = !DIEnumerator(name: "COUNT_BYTES", value: 1)
!73 = !DIEnumerator(name: "COUNT_CHARACTERS", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 24, baseType: !69, size: 32, elements: !76)
!75 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!78 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!79 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!80 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 337, baseType: !83, size: 32, elements: !84)
!82 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!86 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 46, baseType: !69, size: 32, elements: !89)
!88 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!90 = !DIEnumerator(name: "_ISupper", value: 256)
!91 = !DIEnumerator(name: "_ISlower", value: 512)
!92 = !DIEnumerator(name: "_ISalpha", value: 1024)
!93 = !DIEnumerator(name: "_ISdigit", value: 2048)
!94 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!95 = !DIEnumerator(name: "_ISspace", value: 8192)
!96 = !DIEnumerator(name: "_ISprint", value: 16384)
!97 = !DIEnumerator(name: "_ISgraph", value: 32768)
!98 = !DIEnumerator(name: "_ISblank", value: 1)
!99 = !DIEnumerator(name: "_IScntrl", value: 2)
!100 = !DIEnumerator(name: "_ISpunct", value: 4)
!101 = !DIEnumerator(name: "_ISalnum", value: 8)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !103, line: 42, baseType: !69, size: 32, elements: !104)
!103 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!105 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!106 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!107 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!108 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!109 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!110 = !DIEnumerator(name: "c_quoting_style", value: 5)
!111 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!112 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!113 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!114 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!115 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 44, baseType: !69, size: 32, elements: !118)
!117 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!120 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!121 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!122 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!123 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!124 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 127, baseType: !69, size: 32, elements: !127)
!126 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!127 = !{!128}
!128 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 131, baseType: !69, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 130, baseType: !69, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!135 = !{!136, !137, !83, !138, !139, !142, !144}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 18, baseType: !141)
!140 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!141 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!144 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49, !54, !59, !146, !151, !156, !161, !166, !169, !171, !173, !178, !260, !262, !264, !269, !274, !276, !278, !280, !285, !287, !289, !291, !296, !301, !303, !305, !307, !309, !311, !313, !318, !323, !328, !333, !335, !337, !339, !341, !343, !348, !350, !352, !357, !362, !367, !64, !372, !374, !379, !381, !383, !385, !387, !399, !401, !459, !461, !463, !465, !467}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 26)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 14)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 16)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 2)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "break_spaces", scope: !66, file: !2, line: 40, type: !168, isLocal: true, isDefinition: true)
!168 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !66, file: !2, line: 51, type: !168, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !82, line: 729, type: !24, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !82, line: 736, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 75)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !180, file: !82, line: 575, type: !83, isLocal: true, isDefinition: true)
!180 = distinct !DISubprogram(name: "oputs_", scope: !82, file: !82, line: 573, type: !181, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !183)
!181 = !DISubroutineType(cc: DW_CC_nocall, types: !182)
!182 = !{null, !142, !142}
!183 = !{!184, !185, !186, !189, !190, !191, !192, !196, !197, !198, !199, !201, !254, !255, !256, !258, !259}
!184 = !DILocalVariable(name: "program", arg: 1, scope: !180, file: !82, line: 573, type: !142)
!185 = !DILocalVariable(name: "option", arg: 2, scope: !180, file: !82, line: 573, type: !142)
!186 = !DILocalVariable(name: "term", scope: !187, file: !82, line: 585, type: !142)
!187 = distinct !DILexicalBlock(scope: !188, file: !82, line: 582, column: 5)
!188 = distinct !DILexicalBlock(scope: !180, file: !82, line: 581, column: 7)
!189 = !DILocalVariable(name: "double_space", scope: !180, file: !82, line: 594, type: !168)
!190 = !DILocalVariable(name: "first_word", scope: !180, file: !82, line: 595, type: !142)
!191 = !DILocalVariable(name: "option_text", scope: !180, file: !82, line: 596, type: !142)
!192 = !DILocalVariable(name: "s", scope: !193, file: !82, line: 608, type: !142)
!193 = distinct !DILexicalBlock(scope: !194, file: !82, line: 605, column: 5)
!194 = distinct !DILexicalBlock(scope: !195, file: !82, line: 604, column: 12)
!195 = distinct !DILexicalBlock(scope: !180, file: !82, line: 597, column: 7)
!196 = !DILocalVariable(name: "spaces", scope: !193, file: !82, line: 609, type: !139)
!197 = !DILocalVariable(name: "anchor_len", scope: !180, file: !82, line: 620, type: !139)
!198 = !DILocalVariable(name: "desc_text", scope: !180, file: !82, line: 625, type: !142)
!199 = !DILocalVariable(name: "__ptr", scope: !200, file: !82, line: 644, type: !142)
!200 = distinct !DILexicalBlock(scope: !180, file: !82, line: 644, column: 3)
!201 = !DILocalVariable(name: "__stream", scope: !200, file: !82, line: 644, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !205)
!204 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !207)
!206 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !223, !225, !226, !227, !231, !232, !234, !235, !238, !240, !243, !246, !247, !248, !249, !250}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !205, file: !206, line: 51, baseType: !83, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !205, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !205, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !205, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !205, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !205, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !205, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !205, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !205, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !205, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !205, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !205, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !205, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !206, line: 36, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !205, file: !206, line: 70, baseType: !224, size: 64, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !205, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !205, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !205, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !229, line: 152, baseType: !230)
!229 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!230 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !205, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !205, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!233 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !205, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !205, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !206, line: 43, baseType: null)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !205, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !229, line: 153, baseType: !230)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !205, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !206, line: 37, flags: DIFlagFwdDecl)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !205, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !206, line: 38, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !205, file: !206, line: 93, baseType: !224, size: 64, offset: 1344)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !205, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !205, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !205, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !205, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 20)
!254 = !DILocalVariable(name: "__cnt", scope: !200, file: !82, line: 644, type: !139)
!255 = !DILocalVariable(name: "url_program", scope: !180, file: !82, line: 648, type: !142)
!256 = !DILocalVariable(name: "__ptr", scope: !257, file: !82, line: 686, type: !142)
!257 = distinct !DILexicalBlock(scope: !180, file: !82, line: 686, column: 3)
!258 = !DILocalVariable(name: "__stream", scope: !257, file: !82, line: 686, type: !202)
!259 = !DILocalVariable(name: "__cnt", scope: !257, file: !82, line: 686, type: !139)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !82, line: 585, type: !19, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !82, line: 586, type: !19, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !82, line: 595, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 4)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !82, line: 620, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 6)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !82, line: 648, type: !163, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !82, line: 648, type: !19, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !82, line: 649, type: !266, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !82, line: 649, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 3)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !82, line: 650, type: !19, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !82, line: 651, type: !271, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !82, line: 651, type: !271, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !82, line: 652, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 7)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !82, line: 653, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 8)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !82, line: 654, type: !56, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !82, line: 655, type: !56, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !82, line: 656, type: !56, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !82, line: 657, type: !56, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !82, line: 663, type: !293, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !82, line: 664, type: !56, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !82, line: 669, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 17)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !82, line: 669, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 40)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !82, line: 676, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 15)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !82, line: 676, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 61)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !82, line: 679, type: !282, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !82, line: 683, type: !19, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !19, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !82, line: 691, type: !298, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !82, line: 839, type: !158, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !82, line: 840, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 22)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !82, line: 841, type: !325, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !82, line: 862, type: !266, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !82, line: 868, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 71)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !82, line: 875, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 27)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !82, line: 877, type: !364, isLocal: true, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 51)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !82, line: 877, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 12)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !271, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 11)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !293, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !271, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !19, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !298, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "longopts", scope: !66, file: !2, line: 58, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 1792, elements: !294)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !392, line: 50, size: 256, elements: !393)
!392 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!393 = !{!394, !395, !396, !398}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !392, line: 52, baseType: !142, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !391, file: !392, line: 55, baseType: !83, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !391, file: !392, line: 56, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !391, file: !392, line: 57, baseType: !83, size: 32, offset: 192)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "counting_mode", scope: !66, file: !2, line: 48, type: !68, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "line_out", scope: !403, file: !2, line: 164, type: !456, isLocal: true, isDefinition: true)
!403 = distinct !DISubprogram(name: "fold_file", scope: !2, file: !2, line: 159, type: !404, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!168, !142, !139}
!406 = !{!407, !408, !409, !410, !411, !416, !426, !427, !438, !440, !445, !446, !447, !448, !450, !453, !454}
!407 = !DILocalVariable(name: "filename", arg: 1, scope: !403, file: !2, line: 159, type: !142)
!408 = !DILocalVariable(name: "width", arg: 2, scope: !403, file: !2, line: 159, type: !139)
!409 = !DILocalVariable(name: "istream", scope: !403, file: !2, line: 161, type: !202)
!410 = !DILocalVariable(name: "column", scope: !403, file: !2, line: 162, type: !139)
!411 = !DILocalVariable(name: "offset_out", scope: !403, file: !2, line: 163, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !413, line: 130, baseType: !414)
!413 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !415, line: 18, baseType: !230)
!415 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!416 = !DILocalVariable(name: "mbbuf", scope: !403, file: !2, line: 166, type: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !418, line: 50, baseType: !419)
!418 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 43, size: 320, elements: !420)
!420 = !{!421, !422, !423, !424, !425}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !419, file: !418, line: 45, baseType: !136, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !419, file: !418, line: 46, baseType: !202, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !419, file: !418, line: 47, baseType: !412, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !419, file: !418, line: 48, baseType: !412, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !419, file: !418, line: 49, baseType: !412, size: 64, offset: 256)
!426 = !DILocalVariable(name: "saved_errno", scope: !403, file: !2, line: 167, type: !83)
!427 = !DILocalVariable(name: "g", scope: !403, file: !2, line: 186, type: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !126, line: 143, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 138, size: 64, elements: !430)
!430 = !{!431, !436, !437}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !429, file: !126, line: 140, baseType: !432, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !433, line: 37, baseType: !434)
!433 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !229, line: 57, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !229, line: 42, baseType: !69)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !429, file: !126, line: 141, baseType: !144, size: 8, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !429, file: !126, line: 142, baseType: !144, size: 8, offset: 40)
!438 = !DILabel(scope: !439, name: "rescan", file: !2, line: 195)
!439 = distinct !DILexicalBlock(scope: !403, file: !2, line: 188, column: 5)
!440 = !DILocalVariable(name: "space_length", scope: !441, file: !2, line: 205, type: !83)
!441 = distinct !DILexicalBlock(scope: !442, file: !2, line: 204, column: 13)
!442 = distinct !DILexicalBlock(scope: !443, file: !2, line: 203, column: 15)
!443 = distinct !DILexicalBlock(scope: !444, file: !2, line: 199, column: 9)
!444 = distinct !DILexicalBlock(scope: !439, file: !2, line: 198, column: 11)
!445 = !DILocalVariable(name: "logical_end", scope: !441, file: !2, line: 206, type: !412)
!446 = !DILocalVariable(name: "logical_p", scope: !441, file: !2, line: 207, type: !136)
!447 = !DILocalVariable(name: "logical_lim", scope: !441, file: !2, line: 208, type: !136)
!448 = !DILocalVariable(name: "g2", scope: !449, file: !2, line: 210, type: !428)
!449 = distinct !DILexicalBlock(scope: !441, file: !2, line: 210, column: 15)
!450 = !DILocalVariable(name: "printed_p", scope: !451, file: !2, line: 231, type: !136)
!451 = distinct !DILexicalBlock(scope: !452, file: !2, line: 221, column: 17)
!452 = distinct !DILexicalBlock(scope: !441, file: !2, line: 220, column: 19)
!453 = !DILocalVariable(name: "printed_lim", scope: !451, file: !2, line: 232, type: !136)
!454 = !DILocalVariable(name: "g2", scope: !455, file: !2, line: 233, type: !428)
!455 = distinct !DILexicalBlock(scope: !451, file: !2, line: 233, column: 19)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 262144)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "line_in", scope: !403, file: !2, line: 165, type: !456, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !163, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !282, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !82, line: 952, type: !369, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "last_character_width", scope: !66, file: !2, line: 54, type: !83, isLocal: true, isDefinition: true)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 288, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 36)
!472 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!473 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !476, line: 3, type: !325, isLocal: true, isDefinition: true)
!476 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "Version", scope: !479, file: !476, line: 3, type: !142, isLocal: false, isDefinition: true)
!479 = distinct !DICompileUnit(language: DW_LANG_C11, file: !476, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !480, splitDebugInlining: false, nameTableKind: None)
!480 = !{!474, !477}
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "file_name", scope: !483, file: !484, line: 45, type: !142, isLocal: true, isDefinition: true)
!483 = distinct !DICompileUnit(language: DW_LANG_C11, file: !484, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !485, splitDebugInlining: false, nameTableKind: None)
!484 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!485 = !{!486, !488, !490, !492, !481, !494}
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !484, line: 121, type: !293, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !484, line: 121, type: !369, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !484, line: 123, type: !293, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !484, line: 126, type: !282, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !483, file: !484, line: 55, type: !168, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !498, file: !499, line: 66, type: !549, isLocal: false, isDefinition: true)
!498 = distinct !DICompileUnit(language: DW_LANG_C11, file: !499, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !500, globals: !501, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!500 = !{!137, !144}
!501 = !{!502, !504, !528, !530, !532, !534, !496, !536, !538, !540, !542, !547}
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !499, line: 272, type: !19, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "old_file_name", scope: !506, file: !499, line: 304, type: !142, isLocal: true, isDefinition: true)
!506 = distinct !DISubprogram(name: "verror_at_line", scope: !499, file: !499, line: 298, type: !507, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !521)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !83, !83, !142, !69, !142, !509}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !510, line: 52, baseType: !511)
!510 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !512, line: 12, baseType: !513)
!512 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !499, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !515)
!515 = !{!516, !517, !518, !519, !520}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !514, file: !499, baseType: !137, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !514, file: !499, baseType: !137, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !514, file: !499, baseType: !137, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !514, file: !499, baseType: !83, size: 32, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !514, file: !499, baseType: !83, size: 32, offset: 224)
!521 = !{!522, !523, !524, !525, !526, !527}
!522 = !DILocalVariable(name: "status", arg: 1, scope: !506, file: !499, line: 298, type: !83)
!523 = !DILocalVariable(name: "errnum", arg: 2, scope: !506, file: !499, line: 298, type: !83)
!524 = !DILocalVariable(name: "file_name", arg: 3, scope: !506, file: !499, line: 298, type: !142)
!525 = !DILocalVariable(name: "line_number", arg: 4, scope: !506, file: !499, line: 298, type: !69)
!526 = !DILocalVariable(name: "message", arg: 5, scope: !506, file: !499, line: 298, type: !142)
!527 = !DILocalVariable(name: "args", arg: 6, scope: !506, file: !499, line: 298, type: !509)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "old_line_number", scope: !506, file: !499, line: 305, type: !69, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !499, line: 338, type: !266, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !499, line: 346, type: !298, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !499, line: 346, type: !163, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "error_message_count", scope: !498, file: !499, line: 69, type: !69, isLocal: false, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !498, file: !499, line: 295, type: !83, isLocal: false, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !499, line: 208, type: !293, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !499, line: 208, type: !544, isLocal: true, isDefinition: true)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 21)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !499, line: 214, type: !19, isLocal: true, isDefinition: true)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null}
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "program_name", scope: !554, file: !555, line: 31, type: !142, isLocal: false, isDefinition: true)
!554 = distinct !DICompileUnit(language: DW_LANG_C11, file: !555, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !556, globals: !557, splitDebugInlining: false, nameTableKind: None)
!555 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!556 = !{!137, !136}
!557 = !{!552, !558, !560}
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !555, line: 46, type: !298, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !555, line: 49, type: !266, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "utf07FF", scope: !564, file: !565, line: 46, type: !588, isLocal: true, isDefinition: true)
!564 = distinct !DISubprogram(name: "proper_name_lite", scope: !565, file: !565, line: 38, type: !566, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !570)
!565 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!566 = !DISubroutineType(types: !567)
!567 = !{!142, !142, !142}
!568 = distinct !DICompileUnit(language: DW_LANG_C11, file: !565, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !569, splitDebugInlining: false, nameTableKind: None)
!569 = !{!562}
!570 = !{!571, !572, !573, !574, !575}
!571 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !564, file: !565, line: 38, type: !142)
!572 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !564, file: !565, line: 38, type: !142)
!573 = !DILocalVariable(name: "translation", scope: !564, file: !565, line: 40, type: !142)
!574 = !DILocalVariable(name: "w", scope: !564, file: !565, line: 47, type: !432)
!575 = !DILocalVariable(name: "mbs", scope: !564, file: !565, line: 48, type: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !578)
!577 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !580)
!579 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !580, file: !579, line: 15, baseType: !83, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !580, file: !579, line: 20, baseType: !584, size: 32, offset: 32)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !579, line: 16, size: 32, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !584, file: !579, line: 18, baseType: !69, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !584, file: !579, line: 19, baseType: !266, size: 32)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 16, elements: !164)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !591, line: 78, type: !298, isLocal: true, isDefinition: true)
!591 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !591, line: 79, type: !271, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !591, line: 80, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 13)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !591, line: 81, type: !596, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !591, line: 82, type: !251, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !591, line: 83, type: !163, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !591, line: 84, type: !298, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !591, line: 85, type: !293, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !591, line: 86, type: !293, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !591, line: 87, type: !298, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !615, file: !591, line: 76, type: !689, isLocal: false, isDefinition: true)
!615 = distinct !DICompileUnit(language: DW_LANG_C11, file: !591, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !616, retainedTypes: !624, globals: !625, splitDebugInlining: false, nameTableKind: None)
!616 = !{!617, !619, !87}
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !618, line: 42, baseType: !69, size: 32, elements: !104)
!618 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!619 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !618, line: 254, baseType: !69, size: 32, elements: !620)
!620 = !{!621, !622, !623}
!621 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!622 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!623 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!624 = !{!137, !83, !138, !139}
!625 = !{!589, !592, !594, !599, !601, !603, !605, !607, !609, !611, !613, !626, !630, !640, !642, !647, !649, !651, !653, !655, !678, !685, !687}
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !615, file: !591, line: 92, type: !628, isLocal: false, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 320, elements: !57)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !615, file: !591, line: 1040, type: !632, isLocal: false, isDefinition: true)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !591, line: 56, size: 448, elements: !633)
!633 = !{!634, !635, !636, !638, !639}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !632, file: !591, line: 59, baseType: !617, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !591, line: 62, baseType: !83, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !632, file: !591, line: 66, baseType: !637, size: 256, offset: 64)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !299)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !632, file: !591, line: 69, baseType: !142, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !632, file: !591, line: 72, baseType: !142, size: 64, offset: 384)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !615, file: !591, line: 107, type: !632, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "slot0", scope: !615, file: !591, line: 831, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 256)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !591, line: 321, type: !163, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !591, line: 357, type: !163, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !591, line: 358, type: !163, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !591, line: 199, type: !293, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "quote", scope: !657, file: !591, line: 228, type: !676, isLocal: true, isDefinition: true)
!657 = distinct !DISubprogram(name: "gettext_quote", scope: !591, file: !591, line: 197, type: !658, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{!142, !142, !617}
!660 = !{!661, !662, !663, !664, !665}
!661 = !DILocalVariable(name: "msgid", arg: 1, scope: !657, file: !591, line: 197, type: !142)
!662 = !DILocalVariable(name: "s", arg: 2, scope: !657, file: !591, line: 197, type: !617)
!663 = !DILocalVariable(name: "translation", scope: !657, file: !591, line: 199, type: !142)
!664 = !DILocalVariable(name: "w", scope: !657, file: !591, line: 229, type: !432)
!665 = !DILocalVariable(name: "mbs", scope: !657, file: !591, line: 230, type: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !668, file: !579, line: 15, baseType: !83, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !668, file: !579, line: 20, baseType: !672, size: 32, offset: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !579, line: 16, size: 32, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !672, file: !579, line: 18, baseType: !69, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !672, file: !579, line: 19, baseType: !266, size: 32)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !677)
!677 = !{!165, !268}
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(name: "slotvec", scope: !615, file: !591, line: 834, type: !680, isLocal: true, isDefinition: true)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !591, line: 823, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !681, file: !591, line: 825, baseType: !139, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !591, line: 826, baseType: !136, size: 64, offset: 64)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "nslots", scope: !615, file: !591, line: 832, type: !83, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "slotvec0", scope: !615, file: !591, line: 833, type: !681, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 704, elements: !377)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !693, line: 67, type: !369, isLocal: true, isDefinition: true)
!693 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !693, line: 69, type: !293, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !693, line: 83, type: !293, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !693, line: 83, type: !266, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !693, line: 85, type: !163, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !693, line: 88, type: !704, isLocal: true, isDefinition: true)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 171)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !693, line: 88, type: !709, isLocal: true, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 34)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !693, line: 105, type: !158, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !693, line: 109, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 23)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !693, line: 113, type: !721, isLocal: true, isDefinition: true)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 28)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !693, line: 120, type: !726, isLocal: true, isDefinition: true)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 32)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !693, line: 127, type: !731, isLocal: true, isDefinition: true)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !470)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !693, line: 134, type: !320, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !693, line: 142, type: !736, isLocal: true, isDefinition: true)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 44)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !693, line: 150, type: !741, isLocal: true, isDefinition: true)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 48)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !693, line: 159, type: !746, isLocal: true, isDefinition: true)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 52)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !693, line: 170, type: !14, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !693, line: 248, type: !251, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !693, line: 248, type: !345, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !693, line: 254, type: !251, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !693, line: 254, type: !153, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !693, line: 254, type: !320, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !693, line: 259, type: !3, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !693, line: 259, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 29)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !770, file: !771, line: 26, type: !773, isLocal: false, isDefinition: true)
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !772, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!772 = !{!768}
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 376, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 47)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "exit_failure", scope: !778, file: !779, line: 24, type: !781, isLocal: false, isDefinition: true)
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !780, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!780 = !{!776}
!781 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !784, line: 34, type: !282, isLocal: true, isDefinition: true)
!784 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !784, line: 34, type: !293, isLocal: true, isDefinition: true)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !784, line: 34, type: !315, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !791, line: 80, type: !293, isLocal: true, isDefinition: true)
!791 = !DIFile(filename: "lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !794, line: 108, type: !51, isLocal: true, isDefinition: true)
!794 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(name: "internal_state", scope: !797, file: !794, line: 97, type: !800, isLocal: true, isDefinition: true)
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !798, globals: !799, splitDebugInlining: false, nameTableKind: None)
!798 = !{!137, !139, !144}
!799 = !{!792, !795}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !802, file: !579, line: 15, baseType: !83, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !802, file: !579, line: 20, baseType: !806, size: 32, offset: 32)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !802, file: !579, line: 16, size: 32, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !806, file: !579, line: 18, baseType: !69, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !806, file: !579, line: 19, baseType: !266, size: 32)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !812, line: 35, type: !163, isLocal: true, isDefinition: true)
!812 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !812, line: 35, type: !271, isLocal: true, isDefinition: true)
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !816, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !817, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!817 = !{!818}
!818 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !819, line: 44, baseType: !69, size: 32, elements: !118)
!819 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!824 = !{!137}
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !828, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!828 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !830, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!830 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!831 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !832, retainedTypes: !824, globals: !836, splitDebugInlining: false, nameTableKind: None)
!832 = !{!833}
!833 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !693, line: 40, baseType: !69, size: 32, elements: !834)
!834 = !{!835}
!835 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!836 = !{!691, !694, !696, !698, !700, !702, !707, !712, !714, !719, !724, !729, !732, !734, !739, !744, !749, !751, !753, !755, !757, !759, !761, !763}
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !838, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !839, retainedTypes: !869, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!839 = !{!840, !852}
!840 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !841, file: !838, line: 188, baseType: !69, size: 32, elements: !850)
!841 = distinct !DISubprogram(name: "x2nrealloc", scope: !838, file: !838, line: 176, type: !842, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !845)
!842 = !DISubroutineType(types: !843)
!843 = !{!137, !137, !844, !139}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!845 = !{!846, !847, !848, !849}
!846 = !DILocalVariable(name: "p", arg: 1, scope: !841, file: !838, line: 176, type: !137)
!847 = !DILocalVariable(name: "pn", arg: 2, scope: !841, file: !838, line: 176, type: !844)
!848 = !DILocalVariable(name: "s", arg: 3, scope: !841, file: !838, line: 176, type: !139)
!849 = !DILocalVariable(name: "n", scope: !841, file: !838, line: 178, type: !139)
!850 = !{!851}
!851 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!852 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !853, file: !838, line: 228, baseType: !69, size: 32, elements: !850)
!853 = distinct !DISubprogram(name: "xpalloc", scope: !838, file: !838, line: 223, type: !854, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !859)
!854 = !DISubroutineType(types: !855)
!855 = !{!137, !137, !856, !857, !414, !857}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !858, line: 130, baseType: !414)
!858 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !868}
!860 = !DILocalVariable(name: "pa", arg: 1, scope: !853, file: !838, line: 223, type: !137)
!861 = !DILocalVariable(name: "pn", arg: 2, scope: !853, file: !838, line: 223, type: !856)
!862 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !853, file: !838, line: 223, type: !857)
!863 = !DILocalVariable(name: "n_max", arg: 4, scope: !853, file: !838, line: 223, type: !414)
!864 = !DILocalVariable(name: "s", arg: 5, scope: !853, file: !838, line: 223, type: !857)
!865 = !DILocalVariable(name: "n0", scope: !853, file: !838, line: 230, type: !857)
!866 = !DILocalVariable(name: "n", scope: !853, file: !838, line: 237, type: !857)
!867 = !DILocalVariable(name: "nbytes", scope: !853, file: !838, line: 248, type: !857)
!868 = !DILocalVariable(name: "adjusted_nbytes", scope: !853, file: !838, line: 252, type: !857)
!869 = !{!136, !137}
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !871, splitDebugInlining: false, nameTableKind: None)
!871 = !{!782, !785, !787}
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !873, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xdectoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xdectoumax.Tpo -c lib/xdectoumax.c -o lib/.libcoreutils_a-xdectoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !874, globals: !885, splitDebugInlining: false, nameTableKind: None)
!873 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!874 = !{!875, !883}
!875 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !876, line: 30, baseType: !69, size: 32, elements: !877)
!876 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!877 = !{!878, !879, !880, !881, !882}
!878 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!879 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!880 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!881 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!882 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!883 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !884, line: 24, baseType: !69, size: 32, elements: !76)
!884 = !DIFile(filename: "lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!885 = !{!789}
!886 = distinct !DICompileUnit(language: DW_LANG_C11, file: !887, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoumax.Tpo -c lib/xstrtoumax.c -o lib/.libcoreutils_a-xstrtoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !888, retainedTypes: !891, splitDebugInlining: false, nameTableKind: None)
!887 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!888 = !{!889, !87}
!889 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !890, line: 30, baseType: !69, size: 32, elements: !877)
!890 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!891 = !{!83, !138, !136, !892}
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !893, line: 102, baseType: !894)
!893 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !229, line: 73, baseType: !141)
!895 = distinct !DICompileUnit(language: DW_LANG_C11, file: !896, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!896 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!897 = distinct !DICompileUnit(language: DW_LANG_C11, file: !898, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!898 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!899 = distinct !DICompileUnit(language: DW_LANG_C11, file: !900, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!900 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!901 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !902, splitDebugInlining: false, nameTableKind: None)
!902 = !{!810, !813}
!903 = distinct !DICompileUnit(language: DW_LANG_C11, file: !904, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!904 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!905 = distinct !DICompileUnit(language: DW_LANG_C11, file: !906, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!906 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!907 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!908 = !{i32 7, !"Dwarf Version", i32 5}
!909 = !{i32 2, !"Debug Info Version", i32 3}
!910 = !{i32 1, !"wchar_size", i32 4}
!911 = !{i32 8, !"PIC Level", i32 2}
!912 = !{i32 7, !"PIE Level", i32 2}
!913 = !{i32 7, !"uwtable", i32 2}
!914 = !{i32 7, !"frame-pointer", i32 1}
!915 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!916 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 70, type: !917, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !919)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !83}
!919 = !{!920}
!920 = !DILocalVariable(name: "status", arg: 1, scope: !916, file: !2, line: 70, type: !83)
!921 = !DILocation(line: 0, scope: !916)
!922 = !DILocation(line: 72, column: 14, scope: !923)
!923 = distinct !DILexicalBlock(scope: !916, file: !2, line: 72, column: 7)
!924 = !DILocation(line: 72, column: 7, scope: !916)
!925 = !DILocation(line: 73, column: 5, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !2, line: 73, column: 5)
!927 = !{!928, !928, i64 0}
!928 = !{!"any pointer", !929, i64 0}
!929 = !{!"omnipotent char", !930, i64 0}
!930 = !{!"Simple C/C++ TBAA"}
!931 = !DILocation(line: 76, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !923, file: !2, line: 75, column: 5)
!933 = !DILocation(line: 80, column: 7, scope: !932)
!934 = !DILocation(line: 729, column: 3, scope: !935, inlinedAt: !936)
!935 = distinct !DISubprogram(name: "emit_stdin_note", scope: !82, file: !82, line: 727, type: !550, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!936 = distinct !DILocation(line: 84, column: 7, scope: !932)
!937 = !DILocation(line: 736, column: 3, scope: !938, inlinedAt: !939)
!938 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !82, file: !82, line: 734, type: !550, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!939 = distinct !DILocation(line: 85, column: 7, scope: !932)
!940 = !DILocation(line: 87, column: 7, scope: !932)
!941 = !DILocation(line: 91, column: 7, scope: !932)
!942 = !DILocation(line: 95, column: 7, scope: !932)
!943 = !DILocation(line: 99, column: 7, scope: !932)
!944 = !DILocation(line: 103, column: 7, scope: !932)
!945 = !DILocation(line: 104, column: 7, scope: !932)
!946 = !DILocalVariable(name: "program", arg: 1, scope: !947, file: !82, line: 836, type: !142)
!947 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 836, type: !948, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !142}
!950 = !{!946, !951, !958, !959, !961, !962}
!951 = !DILocalVariable(name: "infomap", scope: !947, file: !82, line: 838, type: !952)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 896, elements: !294)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !947, file: !82, line: 838, size: 128, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !954, file: !82, line: 838, baseType: !142, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !954, file: !82, line: 838, baseType: !142, size: 64, offset: 64)
!958 = !DILocalVariable(name: "node", scope: !947, file: !82, line: 848, type: !142)
!959 = !DILocalVariable(name: "map_prog", scope: !947, file: !82, line: 849, type: !960)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!961 = !DILocalVariable(name: "lc_messages", scope: !947, file: !82, line: 861, type: !142)
!962 = !DILocalVariable(name: "url_program", scope: !947, file: !82, line: 874, type: !142)
!963 = !DILocation(line: 0, scope: !947, inlinedAt: !964)
!964 = distinct !DILocation(line: 105, column: 7, scope: !932)
!965 = !{}
!966 = !DILocation(line: 857, column: 3, scope: !947, inlinedAt: !964)
!967 = !DILocation(line: 861, column: 29, scope: !947, inlinedAt: !964)
!968 = !DILocation(line: 862, column: 7, scope: !969, inlinedAt: !964)
!969 = distinct !DILexicalBlock(scope: !947, file: !82, line: 862, column: 7)
!970 = !DILocation(line: 862, column: 19, scope: !969, inlinedAt: !964)
!971 = !DILocation(line: 862, column: 22, scope: !969, inlinedAt: !964)
!972 = !DILocation(line: 862, column: 7, scope: !947, inlinedAt: !964)
!973 = !DILocation(line: 868, column: 7, scope: !974, inlinedAt: !964)
!974 = distinct !DILexicalBlock(scope: !969, file: !82, line: 863, column: 5)
!975 = !DILocation(line: 870, column: 5, scope: !974, inlinedAt: !964)
!976 = !DILocation(line: 875, column: 3, scope: !947, inlinedAt: !964)
!977 = !DILocation(line: 877, column: 3, scope: !947, inlinedAt: !964)
!978 = !DILocation(line: 107, column: 3, scope: !916)
!979 = !DISubprogram(name: "dcgettext", scope: !980, file: !980, line: 51, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!981 = !DISubroutineType(types: !982)
!982 = !{!136, !142, !142, !83}
!983 = !DISubprogram(name: "__fprintf_chk", scope: !984, file: !984, line: 93, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!985 = !DISubroutineType(types: !986)
!986 = !{!83, !987, !83, !988, null}
!987 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!988 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!989 = !DISubprogram(name: "__printf_chk", scope: !984, file: !984, line: 95, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{!83, !83, !988, null}
!992 = !DISubprogram(name: "fputs_unlocked", scope: !510, file: !510, line: 691, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DISubroutineType(types: !994)
!994 = !{!83, !988, !987}
!995 = !DILocation(line: 0, scope: !180)
!996 = !DILocation(line: 581, column: 7, scope: !188)
!997 = !{!998, !998, i64 0}
!998 = !{!"int", !929, i64 0}
!999 = !DILocation(line: 581, column: 19, scope: !188)
!1000 = !DILocation(line: 581, column: 7, scope: !180)
!1001 = !DILocation(line: 585, column: 26, scope: !187)
!1002 = !DILocation(line: 0, scope: !187)
!1003 = !DILocation(line: 586, column: 23, scope: !187)
!1004 = !DILocation(line: 586, column: 28, scope: !187)
!1005 = !DILocation(line: 586, column: 32, scope: !187)
!1006 = !{!929, !929, i64 0}
!1007 = !DILocation(line: 586, column: 38, scope: !187)
!1008 = !DILocalVariable(name: "__s1", arg: 1, scope: !1009, file: !1010, line: 1359, type: !142)
!1009 = distinct !DISubprogram(name: "streq", scope: !1010, file: !1010, line: 1359, type: !1011, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1013)
!1010 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!168, !142, !142}
!1013 = !{!1008, !1014}
!1014 = !DILocalVariable(name: "__s2", arg: 2, scope: !1009, file: !1010, line: 1359, type: !142)
!1015 = !DILocation(line: 0, scope: !1009, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 586, column: 41, scope: !187)
!1017 = !DILocation(line: 1361, column: 11, scope: !1009, inlinedAt: !1016)
!1018 = !DILocation(line: 1361, column: 10, scope: !1009, inlinedAt: !1016)
!1019 = !DILocation(line: 586, column: 19, scope: !187)
!1020 = !DILocation(line: 587, column: 5, scope: !187)
!1021 = !DILocation(line: 588, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !180, file: !82, line: 588, column: 7)
!1023 = !DILocation(line: 588, column: 7, scope: !180)
!1024 = !DILocation(line: 590, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !82, line: 589, column: 5)
!1026 = !DILocation(line: 591, column: 7, scope: !1025)
!1027 = !DILocation(line: 595, column: 37, scope: !180)
!1028 = !DILocation(line: 595, column: 35, scope: !180)
!1029 = !DILocation(line: 596, column: 29, scope: !180)
!1030 = !DILocation(line: 597, column: 8, scope: !195)
!1031 = !DILocation(line: 597, column: 7, scope: !180)
!1032 = !DILocation(line: 604, column: 24, scope: !194)
!1033 = !DILocation(line: 604, column: 12, scope: !195)
!1034 = !DILocation(line: 0, scope: !193)
!1035 = !DILocation(line: 610, column: 16, scope: !193)
!1036 = !DILocation(line: 610, column: 7, scope: !193)
!1037 = !DILocation(line: 611, column: 21, scope: !193)
!1038 = !{!1039, !1039, i64 0}
!1039 = !{!"short", !929, i64 0}
!1040 = !DILocation(line: 611, column: 19, scope: !193)
!1041 = !DILocation(line: 611, column: 16, scope: !193)
!1042 = !DILocation(line: 610, column: 30, scope: !193)
!1043 = distinct !{!1043, !1036, !1037, !1044}
!1044 = !{!"llvm.loop.mustprogress"}
!1045 = !DILocation(line: 612, column: 18, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !193, file: !82, line: 612, column: 11)
!1047 = !DILocation(line: 612, column: 11, scope: !193)
!1048 = !DILocation(line: 620, column: 23, scope: !180)
!1049 = !DILocation(line: 625, column: 39, scope: !180)
!1050 = !DILocation(line: 626, column: 3, scope: !180)
!1051 = !DILocation(line: 626, column: 10, scope: !180)
!1052 = !DILocation(line: 626, column: 21, scope: !180)
!1053 = !DILocation(line: 628, column: 44, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !82, line: 628, column: 11)
!1055 = distinct !DILexicalBlock(scope: !180, file: !82, line: 627, column: 5)
!1056 = !DILocation(line: 628, column: 32, scope: !1054)
!1057 = !DILocation(line: 628, column: 49, scope: !1054)
!1058 = !DILocation(line: 628, column: 11, scope: !1055)
!1059 = !DILocation(line: 630, column: 11, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !82, line: 630, column: 11)
!1061 = !DILocation(line: 630, column: 11, scope: !1055)
!1062 = !DILocation(line: 632, column: 26, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !82, line: 632, column: 15)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !82, line: 631, column: 9)
!1065 = !DILocation(line: 632, column: 34, scope: !1063)
!1066 = !DILocation(line: 632, column: 37, scope: !1063)
!1067 = !DILocation(line: 632, column: 15, scope: !1064)
!1068 = !DILocation(line: 640, column: 16, scope: !1055)
!1069 = distinct !{!1069, !1050, !1070, !1044}
!1070 = !DILocation(line: 641, column: 5, scope: !180)
!1071 = !DILocation(line: 644, column: 3, scope: !180)
!1072 = !DILocation(line: 0, scope: !1009, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 648, column: 31, scope: !180)
!1074 = !DILocation(line: 0, scope: !1009, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 649, column: 31, scope: !180)
!1076 = !DILocation(line: 0, scope: !1009, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 650, column: 31, scope: !180)
!1078 = !DILocation(line: 0, scope: !1009, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 651, column: 31, scope: !180)
!1080 = !DILocation(line: 0, scope: !1009, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 652, column: 31, scope: !180)
!1082 = !DILocation(line: 0, scope: !1009, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 653, column: 31, scope: !180)
!1084 = !DILocation(line: 0, scope: !1009, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 654, column: 31, scope: !180)
!1086 = !DILocation(line: 0, scope: !1009, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 655, column: 31, scope: !180)
!1088 = !DILocation(line: 0, scope: !1009, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 656, column: 31, scope: !180)
!1090 = !DILocation(line: 0, scope: !1009, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 657, column: 31, scope: !180)
!1092 = !DILocation(line: 663, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !180, file: !82, line: 663, column: 7)
!1094 = !DILocation(line: 664, column: 7, scope: !1093)
!1095 = !DILocation(line: 664, column: 10, scope: !1093)
!1096 = !DILocation(line: 663, column: 7, scope: !180)
!1097 = !DILocation(line: 669, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !82, line: 665, column: 5)
!1099 = !DILocation(line: 671, column: 5, scope: !1098)
!1100 = !DILocation(line: 676, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1093, file: !82, line: 673, column: 5)
!1102 = !DILocation(line: 679, column: 3, scope: !180)
!1103 = !DILocation(line: 683, column: 3, scope: !180)
!1104 = !DILocation(line: 686, column: 3, scope: !180)
!1105 = !DILocation(line: 688, column: 3, scope: !180)
!1106 = !DILocation(line: 691, column: 3, scope: !180)
!1107 = !DILocation(line: 695, column: 3, scope: !180)
!1108 = !DILocation(line: 696, column: 1, scope: !180)
!1109 = !DISubprogram(name: "setlocale", scope: !1110, file: !1110, line: 122, type: !1111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1110 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!136, !83, !142}
!1113 = !DISubprogram(name: "strncmp", scope: !1114, file: !1114, line: 159, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1114 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!83, !142, !142, !139}
!1117 = !DISubprogram(name: "exit", scope: !1118, file: !1118, line: 624, type: !917, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1118 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1119 = !DISubprogram(name: "getenv", scope: !1118, file: !1118, line: 641, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!136, !142}
!1122 = !DISubprogram(name: "strcmp", scope: !1114, file: !1114, line: 156, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!83, !142, !142}
!1125 = !DISubprogram(name: "strspn", scope: !1114, file: !1114, line: 297, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!141, !142, !142}
!1128 = !DISubprogram(name: "strchr", scope: !1114, file: !1114, line: 246, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!136, !142, !83}
!1131 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!1137 = !DISubprogram(name: "strcspn", scope: !1114, file: !1114, line: 293, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DISubprogram(name: "fwrite_unlocked", scope: !510, file: !510, line: 704, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!139, !1141, !139, !139, !987}
!1141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1144 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 289, type: !1145, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1148)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!83, !83, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1156}
!1149 = !DILocalVariable(name: "argc", arg: 1, scope: !1144, file: !2, line: 289, type: !83)
!1150 = !DILocalVariable(name: "argv", arg: 2, scope: !1144, file: !2, line: 289, type: !1147)
!1151 = !DILocalVariable(name: "width", scope: !1144, file: !2, line: 291, type: !139)
!1152 = !DILocalVariable(name: "optc", scope: !1144, file: !2, line: 292, type: !83)
!1153 = !DILocalVariable(name: "ok", scope: !1144, file: !2, line: 293, type: !168)
!1154 = !DILocalVariable(name: "optargbuf", scope: !1155, file: !2, line: 305, type: !163)
!1155 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 304, column: 5)
!1156 = !DILocalVariable(name: "i", scope: !1157, file: !2, line: 352, type: !83)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 352, column: 7)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 350, column: 5)
!1159 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 347, column: 7)
!1160 = distinct !DIAssignID()
!1161 = !DILocation(line: 0, scope: !1155)
!1162 = !DILocation(line: 0, scope: !1144)
!1163 = !DILocation(line: 296, column: 21, scope: !1144)
!1164 = !DILocation(line: 296, column: 3, scope: !1144)
!1165 = !DILocation(line: 297, column: 3, scope: !1144)
!1166 = !DILocation(line: 298, column: 3, scope: !1144)
!1167 = !DILocation(line: 299, column: 3, scope: !1144)
!1168 = !DILocation(line: 301, column: 3, scope: !1144)
!1169 = !DILocation(line: 303, column: 18, scope: !1144)
!1170 = !DILocation(line: 303, column: 71, scope: !1144)
!1171 = !DILocation(line: 303, column: 3, scope: !1144)
!1172 = !DILocation(line: 305, column: 7, scope: !1155)
!1173 = !DILocation(line: 307, column: 7, scope: !1155)
!1174 = !DILocation(line: 333, column: 31, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 308, column: 9)
!1176 = !DILocation(line: 310, column: 25, scope: !1175)
!1177 = !DILocation(line: 311, column: 11, scope: !1175)
!1178 = !DILocation(line: 314, column: 25, scope: !1175)
!1179 = !DILocation(line: 315, column: 11, scope: !1175)
!1180 = !DILocation(line: 318, column: 24, scope: !1175)
!1181 = !DILocation(line: 319, column: 11, scope: !1175)
!1182 = !DILocation(line: 323, column: 15, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 323, column: 15)
!1184 = !DILocation(line: 323, column: 15, scope: !1175)
!1185 = !DILocation(line: 324, column: 19, scope: !1183)
!1186 = !DILocation(line: 324, column: 13, scope: !1183)
!1187 = !DILocation(line: 327, column: 30, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 326, column: 13)
!1189 = !DILocation(line: 327, column: 28, scope: !1188)
!1190 = distinct !DIAssignID()
!1191 = !DILocation(line: 328, column: 28, scope: !1188)
!1192 = distinct !DIAssignID()
!1193 = !DILocation(line: 329, column: 22, scope: !1188)
!1194 = !DILocation(line: 334, column: 31, scope: !1175)
!1195 = !DILocation(line: 333, column: 19, scope: !1175)
!1196 = !DILocation(line: 336, column: 11, scope: !1175)
!1197 = !DILocation(line: 338, column: 9, scope: !1175)
!1198 = !DILocation(line: 340, column: 9, scope: !1175)
!1199 = !DILocation(line: 343, column: 11, scope: !1175)
!1200 = !DILocation(line: 345, column: 5, scope: !1144)
!1201 = distinct !{!1201, !1171, !1200, !1044}
!1202 = !DILocation(line: 347, column: 15, scope: !1159)
!1203 = !DILocation(line: 347, column: 12, scope: !1159)
!1204 = !DILocation(line: 347, column: 7, scope: !1144)
!1205 = !DILocation(line: 0, scope: !1157)
!1206 = !DILocation(line: 352, column: 30, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 352, column: 7)
!1208 = !DILocation(line: 352, column: 7, scope: !1157)
!1209 = !DILocation(line: 348, column: 10, scope: !1159)
!1210 = !DILocation(line: 348, column: 5, scope: !1159)
!1211 = !DILocation(line: 353, column: 26, scope: !1207)
!1212 = !DILocation(line: 353, column: 15, scope: !1207)
!1213 = !DILocation(line: 353, column: 12, scope: !1207)
!1214 = !DILocation(line: 352, column: 39, scope: !1207)
!1215 = distinct !{!1215, !1208, !1216, !1044}
!1216 = !DILocation(line: 353, column: 40, scope: !1157)
!1217 = !DILocation(line: 356, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 356, column: 7)
!1219 = !DILocation(line: 356, column: 23, scope: !1218)
!1220 = !DILocation(line: 356, column: 34, scope: !1218)
!1221 = !DILocation(line: 356, column: 26, scope: !1218)
!1222 = !DILocation(line: 356, column: 41, scope: !1218)
!1223 = !DILocation(line: 356, column: 7, scope: !1144)
!1224 = !DILocation(line: 357, column: 5, scope: !1218)
!1225 = !DILocation(line: 359, column: 10, scope: !1144)
!1226 = !DILocation(line: 359, column: 3, scope: !1144)
!1227 = !DISubprogram(name: "bindtextdomain", scope: !980, file: !980, line: 86, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!136, !142, !142}
!1230 = !DISubprogram(name: "textdomain", scope: !980, file: !980, line: 82, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1231 = !DISubprogram(name: "atexit", scope: !1118, file: !1118, line: 602, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!83, !549}
!1234 = !DISubprogram(name: "getopt_long", scope: !392, file: !392, line: 66, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!83, !83, !1237, !142, !1239, !397}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1240 = distinct !DIAssignID()
!1241 = distinct !DIAssignID()
!1242 = distinct !DIAssignID()
!1243 = distinct !DIAssignID()
!1244 = distinct !DIAssignID()
!1245 = distinct !DIAssignID()
!1246 = !DILocation(line: 0, scope: !403)
!1247 = !DILocation(line: 0, scope: !1009, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 169, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !403, file: !2, line: 169, column: 7)
!1250 = !DILocation(line: 1361, column: 11, scope: !1009, inlinedAt: !1248)
!1251 = !DILocation(line: 1361, column: 10, scope: !1009, inlinedAt: !1248)
!1252 = !DILocation(line: 169, column: 7, scope: !403)
!1253 = !DILocation(line: 171, column: 17, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 170, column: 5)
!1255 = !DILocation(line: 172, column: 23, scope: !1254)
!1256 = !DILocation(line: 173, column: 5, scope: !1254)
!1257 = !DILocation(line: 175, column: 15, scope: !1249)
!1258 = !DILocation(line: 0, scope: !1249)
!1259 = !DILocation(line: 177, column: 15, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !403, file: !2, line: 177, column: 7)
!1261 = !DILocation(line: 177, column: 7, scope: !403)
!1262 = !DILocation(line: 179, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 178, column: 5)
!1264 = !DILocation(line: 180, column: 7, scope: !1263)
!1265 = !DILocation(line: 183, column: 3, scope: !403)
!1266 = !DILocation(line: 187, column: 3, scope: !403)
!1267 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1268, file: !418, line: 71, type: !1271)
!1268 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !418, file: !418, line: 71, type: !1269, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1272)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!428, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1272 = !{!1267, !1273, !1274, !1277}
!1273 = !DILocalVariable(name: "available", scope: !1268, file: !418, line: 73, type: !412)
!1274 = !DILocalVariable(name: "start", scope: !1275, file: !418, line: 77, type: !412)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !418, line: 76, column: 5)
!1276 = distinct !DILexicalBlock(scope: !1268, file: !418, line: 75, column: 7)
!1277 = !DILocalVariable(name: "g", scope: !1268, file: !418, line: 92, type: !428)
!1278 = !DILocation(line: 0, scope: !1268, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 187, column: 15, scope: !403)
!1280 = !DILocation(line: 73, column: 35, scope: !1268, inlinedAt: !1279)
!1281 = !DILocation(line: 75, column: 17, scope: !1276, inlinedAt: !1279)
!1282 = !DILocation(line: 75, column: 32, scope: !1276, inlinedAt: !1279)
!1283 = !DILocalVariable(name: "__stream", arg: 1, scope: !1284, file: !1285, line: 128, type: !202)
!1284 = distinct !DISubprogram(name: "feof_unlocked", scope: !1285, file: !1285, line: 128, type: !1286, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1288)
!1285 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!83, !202}
!1288 = !{!1283}
!1289 = !DILocation(line: 0, scope: !1284, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 75, column: 37, scope: !1276, inlinedAt: !1279)
!1291 = !DILocation(line: 130, column: 10, scope: !1284, inlinedAt: !1290)
!1292 = !{!1293, !998, i64 0}
!1293 = !{!"_IO_FILE", !998, i64 0, !928, i64 8, !928, i64 16, !928, i64 24, !928, i64 32, !928, i64 40, !928, i64 48, !928, i64 56, !928, i64 64, !928, i64 72, !928, i64 80, !928, i64 88, !928, i64 96, !928, i64 104, !998, i64 112, !998, i64 116, !1294, i64 120, !1039, i64 128, !929, i64 130, !929, i64 131, !928, i64 136, !1294, i64 144, !928, i64 152, !928, i64 160, !928, i64 168, !928, i64 176, !1294, i64 184, !998, i64 192, !929, i64 196}
!1294 = !{!"long", !929, i64 0}
!1295 = !DILocation(line: 75, column: 37, scope: !1276, inlinedAt: !1279)
!1296 = !DILocation(line: 75, column: 7, scope: !1268, inlinedAt: !1279)
!1297 = !DILocation(line: 78, column: 15, scope: !1298, inlinedAt: !1279)
!1298 = distinct !DILexicalBlock(scope: !1275, file: !418, line: 78, column: 11)
!1299 = !DILocation(line: 78, column: 11, scope: !1275, inlinedAt: !1279)
!1300 = !DILocation(line: 82, column: 49, scope: !1301, inlinedAt: !1279)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !418, line: 81, column: 9)
!1302 = !DILocalVariable(name: "__dest", arg: 1, scope: !1303, file: !1304, line: 34, type: !137)
!1303 = distinct !DISubprogram(name: "memmove", scope: !1304, file: !1304, line: 34, type: !1305, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1307)
!1304 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!137, !137, !1142, !139}
!1307 = !{!1302, !1308, !1309}
!1308 = !DILocalVariable(name: "__src", arg: 2, scope: !1303, file: !1304, line: 34, type: !1142)
!1309 = !DILocalVariable(name: "__len", arg: 3, scope: !1303, file: !1304, line: 34, type: !139)
!1310 = !DILocation(line: 0, scope: !1303, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 82, column: 11, scope: !1301, inlinedAt: !1279)
!1312 = !DILocation(line: 36, column: 10, scope: !1303, inlinedAt: !1311)
!1313 = !DILocation(line: 0, scope: !1275, inlinedAt: !1279)
!1314 = !DILocation(line: 0, scope: !1298, inlinedAt: !1279)
!1315 = !DILocation(line: 85, column: 23, scope: !1275, inlinedAt: !1279)
!1316 = !DILocation(line: 86, column: 41, scope: !1275, inlinedAt: !1279)
!1317 = !DILocation(line: 89, column: 5, scope: !1275, inlinedAt: !1279)
!1318 = !DILocation(line: 90, column: 17, scope: !1319, inlinedAt: !1279)
!1319 = distinct !DILexicalBlock(scope: !1268, file: !418, line: 90, column: 7)
!1320 = !DILocation(line: 90, column: 7, scope: !1268, inlinedAt: !1279)
!1321 = !DILocation(line: 92, column: 39, scope: !1268, inlinedAt: !1279)
!1322 = !DILocalVariable(name: "mbs", scope: !1323, file: !126, line: 244, type: !1332)
!1323 = distinct !DISubprogram(name: "mcel_scan", scope: !126, file: !126, line: 230, type: !1324, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!428, !142, !142}
!1326 = !{!1327, !1328, !1329, !1322, !1330, !1331}
!1327 = !DILocalVariable(name: "p", arg: 1, scope: !1323, file: !126, line: 230, type: !142)
!1328 = !DILocalVariable(name: "lim", arg: 2, scope: !1323, file: !126, line: 230, type: !142)
!1329 = !DILocalVariable(name: "c", scope: !1323, file: !126, line: 235, type: !4)
!1330 = !DILocalVariable(name: "ch", scope: !1323, file: !126, line: 267, type: !432)
!1331 = !DILocalVariable(name: "len", scope: !1323, file: !126, line: 268, type: !139)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1334, file: !579, line: 15, baseType: !83, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1334, file: !579, line: 20, baseType: !1338, size: 32, offset: 32)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1334, file: !579, line: 16, size: 32, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1338, file: !579, line: 18, baseType: !69, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1338, file: !579, line: 19, baseType: !266, size: 32)
!1342 = !DILocation(line: 0, scope: !1323, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 92, column: 14, scope: !1268, inlinedAt: !1279)
!1344 = !DILocation(line: 235, column: 12, scope: !1323, inlinedAt: !1343)
!1345 = !DILocalVariable(name: "c", arg: 1, scope: !1346, file: !126, line: 215, type: !4)
!1346 = distinct !DISubprogram(name: "mcel_isbasic", scope: !126, file: !126, line: 215, type: !1347, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!168, !4}
!1349 = !{!1345}
!1350 = !DILocation(line: 0, scope: !1346, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 236, column: 7, scope: !1352, inlinedAt: !1343)
!1352 = distinct !DILexicalBlock(scope: !1323, file: !126, line: 236, column: 7)
!1353 = !DILocation(line: 217, column: 10, scope: !1346, inlinedAt: !1351)
!1354 = !DILocation(line: 236, column: 7, scope: !1323, inlinedAt: !1343)
!1355 = !DILocalVariable(name: "len", arg: 2, scope: !1356, file: !126, line: 167, type: !139)
!1356 = distinct !DISubprogram(name: "mcel_ch", scope: !126, file: !126, line: 167, type: !1357, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!428, !432, !139}
!1359 = !{!1360, !1355}
!1360 = !DILocalVariable(name: "ch", arg: 1, scope: !1356, file: !126, line: 167, type: !432)
!1361 = !DILocation(line: 0, scope: !1356, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 237, column: 12, scope: !1352, inlinedAt: !1343)
!1363 = !DILocation(line: 172, column: 3, scope: !1356, inlinedAt: !1362)
!1364 = !DILocation(line: 237, column: 5, scope: !1352, inlinedAt: !1343)
!1365 = !DILocation(line: 93, column: 39, scope: !1268, inlinedAt: !1279)
!1366 = !DILocation(line: 244, column: 3, scope: !1323, inlinedAt: !1343)
!1367 = !DILocation(line: 244, column: 30, scope: !1323, inlinedAt: !1343)
!1368 = !{!1369, !998, i64 0}
!1369 = !{!"", !998, i64 0, !929, i64 4}
!1370 = distinct !DIAssignID()
!1371 = !DILocation(line: 267, column: 3, scope: !1323, inlinedAt: !1343)
!1372 = !DILocation(line: 268, column: 38, scope: !1323, inlinedAt: !1343)
!1373 = !DILocation(line: 268, column: 16, scope: !1323, inlinedAt: !1343)
!1374 = !DILocation(line: 274, column: 7, scope: !1375, inlinedAt: !1343)
!1375 = distinct !DILexicalBlock(scope: !1323, file: !126, line: 274, column: 7)
!1376 = !DILocation(line: 274, column: 7, scope: !1323, inlinedAt: !1343)
!1377 = !{!"branch_weights", i32 1, i32 2000}
!1378 = !DILocalVariable(name: "err", arg: 1, scope: !1379, file: !126, line: 175, type: !144)
!1379 = distinct !DISubprogram(name: "mcel_err", scope: !126, file: !126, line: 175, type: !1380, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!428, !144}
!1382 = !{!1378}
!1383 = !DILocation(line: 0, scope: !1379, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 275, column: 12, scope: !1375, inlinedAt: !1343)
!1385 = !DILocation(line: 178, column: 3, scope: !1379, inlinedAt: !1384)
!1386 = !DILocation(line: 275, column: 5, scope: !1375, inlinedAt: !1343)
!1387 = !DILocation(line: 279, column: 19, scope: !1323, inlinedAt: !1343)
!1388 = !DILocation(line: 0, scope: !1356, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 279, column: 10, scope: !1323, inlinedAt: !1343)
!1390 = !DILocation(line: 169, column: 3, scope: !1356, inlinedAt: !1389)
!1391 = !DILocation(line: 170, column: 3, scope: !1356, inlinedAt: !1389)
!1392 = !DILocation(line: 171, column: 3, scope: !1356, inlinedAt: !1389)
!1393 = !DILocation(line: 172, column: 3, scope: !1356, inlinedAt: !1389)
!1394 = !DILocation(line: 279, column: 3, scope: !1323, inlinedAt: !1343)
!1395 = !DILocation(line: 280, column: 1, scope: !1323, inlinedAt: !1343)
!1396 = !DILocation(line: 94, column: 9, scope: !1397, inlinedAt: !1279)
!1397 = distinct !DILexicalBlock(scope: !1268, file: !418, line: 94, column: 7)
!1398 = !DILocation(line: 94, column: 7, scope: !1268, inlinedAt: !1279)
!1399 = !DILocation(line: 92, column: 14, scope: !1268, inlinedAt: !1279)
!1400 = !DILocation(line: 95, column: 5, scope: !1397, inlinedAt: !1279)
!1401 = !DILocation(line: 99, column: 30, scope: !1402, inlinedAt: !1279)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !418, line: 97, column: 5)
!1403 = !DILocation(line: 99, column: 14, scope: !1402, inlinedAt: !1279)
!1404 = !DILocation(line: 187, column: 15, scope: !403)
!1405 = !DILocation(line: 0, scope: !1397, inlinedAt: !1279)
!1406 = !DILocation(line: 117, column: 7, scope: !1407, inlinedAt: !1422)
!1407 = distinct !DISubprogram(name: "adjust_column", scope: !2, file: !2, line: 115, type: !1408, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!139, !139, !428}
!1410 = !{!1411, !1412, !1413}
!1411 = !DILocalVariable(name: "column", arg: 1, scope: !1407, file: !2, line: 115, type: !139)
!1412 = !DILocalVariable(name: "g", arg: 2, scope: !1407, file: !2, line: 115, type: !428)
!1413 = !DILocalVariable(name: "width", scope: !1414, file: !2, line: 134, type: !83)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 133, column: 13)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 130, column: 15)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 129, column: 9)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 126, column: 16)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 124, column: 16)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 119, column: 11)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 118, column: 5)
!1421 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 117, column: 7)
!1422 = distinct !DILocation(line: 196, column: 16, scope: !439)
!1423 = !DILocation(line: 191, column: 11, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 190, column: 9)
!1425 = distinct !DILexicalBlock(scope: !439, file: !2, line: 189, column: 11)
!1426 = !DILocation(line: 193, column: 11, scope: !1424)
!1427 = distinct !{!1427, !1266, !1428, !1044}
!1428 = !DILocation(line: 265, column: 5, scope: !403)
!1429 = !DILocation(line: 195, column: 5, scope: !439)
!1430 = !DILocation(line: 0, scope: !1407, inlinedAt: !1422)
!1431 = !DILocation(line: 117, column: 7, scope: !1421, inlinedAt: !1422)
!1432 = !DILocation(line: 117, column: 21, scope: !1421, inlinedAt: !1422)
!1433 = !DILocation(line: 119, column: 11, scope: !1420, inlinedAt: !1422)
!1434 = !DILocation(line: 121, column: 22, scope: !1435, inlinedAt: !1422)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 121, column: 15)
!1436 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 120, column: 9)
!1437 = !DILocation(line: 121, column: 15, scope: !1436, inlinedAt: !1422)
!1438 = !DILocation(line: 122, column: 23, scope: !1435, inlinedAt: !1422)
!1439 = !DILocation(line: 122, column: 20, scope: !1435, inlinedAt: !1422)
!1440 = !DILocation(line: 122, column: 13, scope: !1435, inlinedAt: !1422)
!1441 = !DILocation(line: 127, column: 16, scope: !1417, inlinedAt: !1422)
!1442 = !DILocation(line: 127, column: 9, scope: !1417, inlinedAt: !1422)
!1443 = !DILocation(line: 130, column: 29, scope: !1415, inlinedAt: !1422)
!1444 = !DILocation(line: 130, column: 15, scope: !1416, inlinedAt: !1422)
!1445 = !DILocalVariable(name: "wc", arg: 1, scope: !1446, file: !1447, line: 1004, type: !432)
!1446 = distinct !DISubprogram(name: "c32width", scope: !1447, file: !1447, line: 1004, type: !1448, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1450)
!1447 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!83, !432}
!1450 = !{!1445}
!1451 = !DILocation(line: 0, scope: !1446, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 134, column: 27, scope: !1414, inlinedAt: !1422)
!1453 = !DILocation(line: 1010, column: 10, scope: !1446, inlinedAt: !1452)
!1454 = !DILocation(line: 0, scope: !1414, inlinedAt: !1422)
!1455 = !DILocation(line: 136, column: 44, scope: !1414, inlinedAt: !1422)
!1456 = !DILocation(line: 136, column: 38, scope: !1414, inlinedAt: !1422)
!1457 = !DILocation(line: 0, scope: !1415, inlinedAt: !1422)
!1458 = !DILocation(line: 138, column: 21, scope: !1416, inlinedAt: !1422)
!1459 = !DILocation(line: 138, column: 18, scope: !1416, inlinedAt: !1422)
!1460 = !DILocation(line: 142, column: 12, scope: !1421, inlinedAt: !1422)
!1461 = !DILocation(line: 198, column: 18, scope: !444)
!1462 = !DILocation(line: 198, column: 11, scope: !439)
!1463 = !DILocation(line: 203, column: 15, scope: !442)
!1464 = !DILocation(line: 203, column: 15, scope: !443)
!1465 = !DILocation(line: 0, scope: !441)
!1466 = !DILocation(line: 208, column: 45, scope: !441)
!1467 = !DILocation(line: 210, column: 41, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !449, file: !2, line: 210, column: 15)
!1469 = !DILocation(line: 210, column: 15, scope: !449)
!1470 = !DILocation(line: 213, column: 23, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 211, column: 17)
!1472 = !DILocation(line: 220, column: 19, scope: !452)
!1473 = !DILocation(line: 220, column: 19, scope: !441)
!1474 = !DILocation(line: 0, scope: !1323, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 212, column: 24, scope: !1471)
!1476 = !DILocation(line: 235, column: 12, scope: !1323, inlinedAt: !1475)
!1477 = !DILocation(line: 0, scope: !1346, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 236, column: 7, scope: !1352, inlinedAt: !1475)
!1479 = !DILocation(line: 217, column: 10, scope: !1346, inlinedAt: !1478)
!1480 = !DILocation(line: 236, column: 7, scope: !1323, inlinedAt: !1475)
!1481 = !DILocation(line: 0, scope: !1356, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 237, column: 12, scope: !1352, inlinedAt: !1475)
!1483 = !DILocation(line: 172, column: 3, scope: !1356, inlinedAt: !1482)
!1484 = !DILocation(line: 237, column: 5, scope: !1352, inlinedAt: !1475)
!1485 = !DILocation(line: 244, column: 3, scope: !1323, inlinedAt: !1475)
!1486 = !DILocation(line: 244, column: 30, scope: !1323, inlinedAt: !1475)
!1487 = distinct !DIAssignID()
!1488 = !DILocation(line: 267, column: 3, scope: !1323, inlinedAt: !1475)
!1489 = !DILocation(line: 268, column: 38, scope: !1323, inlinedAt: !1475)
!1490 = !DILocation(line: 268, column: 16, scope: !1323, inlinedAt: !1475)
!1491 = !DILocation(line: 274, column: 7, scope: !1375, inlinedAt: !1475)
!1492 = !DILocation(line: 274, column: 7, scope: !1323, inlinedAt: !1475)
!1493 = !DILocation(line: 279, column: 19, scope: !1323, inlinedAt: !1475)
!1494 = !DILocation(line: 0, scope: !1356, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 279, column: 10, scope: !1323, inlinedAt: !1475)
!1496 = !DILocation(line: 169, column: 3, scope: !1356, inlinedAt: !1495)
!1497 = !DILocation(line: 170, column: 3, scope: !1356, inlinedAt: !1495)
!1498 = !DILocation(line: 171, column: 3, scope: !1356, inlinedAt: !1495)
!1499 = !DILocation(line: 172, column: 3, scope: !1356, inlinedAt: !1495)
!1500 = !DILocation(line: 279, column: 3, scope: !1323, inlinedAt: !1475)
!1501 = !DILocation(line: 280, column: 1, scope: !1323, inlinedAt: !1475)
!1502 = !DILocation(line: 212, column: 24, scope: !1471)
!1503 = !DILocation(line: 0, scope: !449)
!1504 = !DILocalVariable(name: "wc", arg: 1, scope: !1505, file: !82, line: 178, type: !432)
!1505 = distinct !DISubprogram(name: "c32issep", scope: !82, file: !82, line: 178, type: !1506, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!168, !432}
!1508 = !{!1504}
!1509 = !DILocation(line: 0, scope: !1505, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 213, column: 23, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 213, column: 23)
!1512 = !DILocalVariable(name: "wc", arg: 1, scope: !1513, file: !1447, line: 770, type: !1516)
!1513 = distinct !DISubprogram(name: "c32isblank", scope: !1447, file: !1447, line: 770, type: !1514, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1518)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!83, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1517, line: 20, baseType: !69)
!1517 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1518 = !{!1512}
!1519 = !DILocation(line: 0, scope: !1513, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 181, column: 13, scope: !1505, inlinedAt: !1510)
!1521 = !DILocation(line: 776, column: 10, scope: !1513, inlinedAt: !1520)
!1522 = !DILocation(line: 181, column: 11, scope: !1505, inlinedAt: !1510)
!1523 = !DILocation(line: 210, column: 66, scope: !1468)
!1524 = distinct !{!1524, !1469, !1525, !1044}
!1525 = !DILocation(line: 218, column: 17, scope: !449)
!1526 = !DILocation(line: 222, column: 31, scope: !451)
!1527 = !DILocation(line: 224, column: 19, scope: !451)
!1528 = !DILocation(line: 227, column: 47, scope: !451)
!1529 = !DILocation(line: 228, column: 39, scope: !451)
!1530 = !DILocation(line: 0, scope: !1303, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 227, column: 19, scope: !451)
!1532 = !DILocation(line: 36, column: 10, scope: !1303, inlinedAt: !1531)
!1533 = !DILocation(line: 0, scope: !451)
!1534 = !DILocation(line: 232, column: 49, scope: !451)
!1535 = !DILocation(line: 233, column: 45, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !455, file: !2, line: 233, column: 19)
!1537 = !DILocation(line: 233, column: 19, scope: !455)
!1538 = !DILocation(line: 0, scope: !1323, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 236, column: 28, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 235, column: 21)
!1541 = !DILocation(line: 235, column: 12, scope: !1323, inlinedAt: !1539)
!1542 = !DILocation(line: 0, scope: !1346, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 236, column: 7, scope: !1352, inlinedAt: !1539)
!1544 = !DILocation(line: 217, column: 10, scope: !1346, inlinedAt: !1543)
!1545 = !DILocation(line: 236, column: 7, scope: !1323, inlinedAt: !1539)
!1546 = !DILocation(line: 0, scope: !1356, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 237, column: 12, scope: !1352, inlinedAt: !1539)
!1548 = !DILocation(line: 172, column: 3, scope: !1356, inlinedAt: !1547)
!1549 = !DILocation(line: 237, column: 5, scope: !1352, inlinedAt: !1539)
!1550 = !DILocation(line: 244, column: 3, scope: !1323, inlinedAt: !1539)
!1551 = !DILocation(line: 244, column: 30, scope: !1323, inlinedAt: !1539)
!1552 = distinct !DIAssignID()
!1553 = !DILocation(line: 267, column: 3, scope: !1323, inlinedAt: !1539)
!1554 = !DILocation(line: 268, column: 38, scope: !1323, inlinedAt: !1539)
!1555 = !DILocation(line: 268, column: 16, scope: !1323, inlinedAt: !1539)
!1556 = !DILocation(line: 274, column: 7, scope: !1375, inlinedAt: !1539)
!1557 = !DILocation(line: 274, column: 7, scope: !1323, inlinedAt: !1539)
!1558 = !DILocation(line: 279, column: 19, scope: !1323, inlinedAt: !1539)
!1559 = !DILocation(line: 0, scope: !1356, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 279, column: 10, scope: !1323, inlinedAt: !1539)
!1561 = !DILocation(line: 169, column: 3, scope: !1356, inlinedAt: !1560)
!1562 = !DILocation(line: 170, column: 3, scope: !1356, inlinedAt: !1560)
!1563 = !DILocation(line: 171, column: 3, scope: !1356, inlinedAt: !1560)
!1564 = !DILocation(line: 172, column: 3, scope: !1356, inlinedAt: !1560)
!1565 = !DILocation(line: 279, column: 3, scope: !1323, inlinedAt: !1539)
!1566 = !DILocation(line: 280, column: 1, scope: !1323, inlinedAt: !1539)
!1567 = !DILocation(line: 236, column: 28, scope: !1540)
!1568 = !DILocation(line: 0, scope: !455)
!1569 = !DILocation(line: 0, scope: !1407, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 237, column: 32, scope: !1540)
!1571 = !DILocation(line: 117, column: 7, scope: !1421, inlinedAt: !1570)
!1572 = !DILocation(line: 117, column: 21, scope: !1421, inlinedAt: !1570)
!1573 = !DILocation(line: 117, column: 7, scope: !1407, inlinedAt: !1570)
!1574 = !DILocation(line: 119, column: 11, scope: !1420, inlinedAt: !1570)
!1575 = !DILocation(line: 121, column: 22, scope: !1435, inlinedAt: !1570)
!1576 = !DILocation(line: 121, column: 15, scope: !1436, inlinedAt: !1570)
!1577 = !DILocation(line: 122, column: 23, scope: !1435, inlinedAt: !1570)
!1578 = !DILocation(line: 122, column: 20, scope: !1435, inlinedAt: !1570)
!1579 = !DILocation(line: 122, column: 13, scope: !1435, inlinedAt: !1570)
!1580 = !DILocation(line: 127, column: 16, scope: !1417, inlinedAt: !1570)
!1581 = !DILocation(line: 127, column: 9, scope: !1417, inlinedAt: !1570)
!1582 = !DILocation(line: 130, column: 29, scope: !1415, inlinedAt: !1570)
!1583 = !DILocation(line: 130, column: 15, scope: !1416, inlinedAt: !1570)
!1584 = !DILocation(line: 0, scope: !1446, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 134, column: 27, scope: !1414, inlinedAt: !1570)
!1586 = !DILocation(line: 1010, column: 10, scope: !1446, inlinedAt: !1585)
!1587 = !DILocation(line: 0, scope: !1414, inlinedAt: !1570)
!1588 = !DILocation(line: 136, column: 44, scope: !1414, inlinedAt: !1570)
!1589 = !DILocation(line: 136, column: 38, scope: !1414, inlinedAt: !1570)
!1590 = !DILocation(line: 0, scope: !1415, inlinedAt: !1570)
!1591 = !DILocation(line: 138, column: 21, scope: !1416, inlinedAt: !1570)
!1592 = !DILocation(line: 138, column: 18, scope: !1416, inlinedAt: !1570)
!1593 = !DILocation(line: 142, column: 12, scope: !1421, inlinedAt: !1570)
!1594 = !DILocation(line: 234, column: 34, scope: !1536)
!1595 = distinct !{!1595, !1537, !1596, !1044}
!1596 = !DILocation(line: 238, column: 21, scope: !455)
!1597 = !DILocation(line: 243, column: 26, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !443, file: !2, line: 243, column: 15)
!1599 = !DILocation(line: 243, column: 15, scope: !443)
!1600 = !DILocalVariable(name: "g", arg: 2, scope: !1601, file: !418, line: 107, type: !428)
!1601 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !418, file: !418, line: 107, type: !1602, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!136, !1271, !428}
!1604 = !{!1605, !1600}
!1605 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1601, file: !418, line: 107, type: !1271)
!1606 = !DILocation(line: 0, scope: !1601, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 245, column: 33, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 244, column: 13)
!1609 = !DILocation(line: 109, column: 21, scope: !1610, inlinedAt: !1607)
!1610 = distinct !DILexicalBlock(scope: !1601, file: !418, line: 109, column: 7)
!1611 = !DILocation(line: 109, column: 7, scope: !1601, inlinedAt: !1607)
!1612 = !DILocation(line: 111, column: 41, scope: !1601, inlinedAt: !1607)
!1613 = !DILocation(line: 111, column: 24, scope: !1601, inlinedAt: !1607)
!1614 = !DILocalVariable(name: "__dest", arg: 1, scope: !1615, file: !1304, line: 26, type: !1618)
!1615 = distinct !DISubprogram(name: "memcpy", scope: !1304, file: !1304, line: 26, type: !1616, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1619)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!137, !1618, !1141, !139}
!1618 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1619 = !{!1614, !1620, !1621}
!1620 = !DILocalVariable(name: "__src", arg: 2, scope: !1615, file: !1304, line: 26, type: !1141)
!1621 = !DILocalVariable(name: "__len", arg: 3, scope: !1615, file: !1304, line: 26, type: !139)
!1622 = !DILocation(line: 0, scope: !1615, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 245, column: 15, scope: !1608)
!1624 = !DILocation(line: 29, column: 10, scope: !1615, inlinedAt: !1623)
!1625 = !{!1626, !1628}
!1626 = distinct !{!1626, !1627, !"memcpy.inline: argument 0"}
!1627 = distinct !{!1627, !"memcpy.inline"}
!1628 = distinct !{!1628, !1627, !"memcpy.inline: argument 1"}
!1629 = !DILocation(line: 247, column: 15, scope: !1608)
!1630 = !DILocation(line: 250, column: 11, scope: !443)
!1631 = !DILocation(line: 252, column: 11, scope: !443)
!1632 = !DILocation(line: 257, column: 41, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !439, file: !2, line: 257, column: 11)
!1634 = !DILocation(line: 257, column: 27, scope: !1633)
!1635 = !DILocation(line: 257, column: 11, scope: !439)
!1636 = !DILocation(line: 259, column: 11, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 258, column: 9)
!1638 = !DILocation(line: 261, column: 9, scope: !1637)
!1639 = !DILocation(line: 263, column: 24, scope: !439)
!1640 = !DILocation(line: 0, scope: !1601, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 263, column: 38, scope: !439)
!1642 = !DILocation(line: 109, column: 21, scope: !1610, inlinedAt: !1641)
!1643 = !DILocation(line: 109, column: 7, scope: !1601, inlinedAt: !1641)
!1644 = !DILocation(line: 111, column: 41, scope: !1601, inlinedAt: !1641)
!1645 = !DILocation(line: 111, column: 24, scope: !1601, inlinedAt: !1641)
!1646 = !DILocation(line: 0, scope: !1615, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 263, column: 7, scope: !439)
!1648 = !DILocation(line: 29, column: 10, scope: !1615, inlinedAt: !1647)
!1649 = !DILocation(line: 264, column: 18, scope: !439)
!1650 = !DILocation(line: 267, column: 17, scope: !403)
!1651 = !DILocalVariable(name: "__stream", arg: 1, scope: !1652, file: !1285, line: 135, type: !202)
!1652 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1285, file: !1285, line: 135, type: !1286, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1653)
!1653 = !{!1651}
!1654 = !DILocation(line: 0, scope: !1652, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 268, column: 8, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !403, file: !2, line: 268, column: 7)
!1657 = !DILocation(line: 137, column: 10, scope: !1652, inlinedAt: !1655)
!1658 = !DILocation(line: 268, column: 8, scope: !1656)
!1659 = !DILocation(line: 268, column: 7, scope: !403)
!1660 = !DILocation(line: 271, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !403, file: !2, line: 271, column: 7)
!1662 = !DILocation(line: 271, column: 7, scope: !403)
!1663 = !DILocation(line: 272, column: 5, scope: !1661)
!1664 = !DILocation(line: 0, scope: !1009, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 274, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !403, file: !2, line: 274, column: 7)
!1667 = !DILocation(line: 1361, column: 11, scope: !1009, inlinedAt: !1665)
!1668 = !DILocation(line: 1361, column: 10, scope: !1009, inlinedAt: !1665)
!1669 = !DILocation(line: 274, column: 7, scope: !403)
!1670 = !DILocation(line: 275, column: 5, scope: !1666)
!1671 = !DILocation(line: 276, column: 12, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 276, column: 12)
!1673 = !DILocation(line: 276, column: 29, scope: !1672)
!1674 = !DILocation(line: 276, column: 34, scope: !1672)
!1675 = !DILocation(line: 277, column: 19, scope: !1672)
!1676 = !DILocation(line: 277, column: 5, scope: !1672)
!1677 = !DILocation(line: 279, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !403, file: !2, line: 279, column: 7)
!1679 = !DILocation(line: 279, column: 7, scope: !403)
!1680 = !DILocation(line: 281, column: 7, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 280, column: 5)
!1682 = !DILocation(line: 282, column: 7, scope: !1681)
!1683 = !DILocation(line: 286, column: 1, scope: !403)
!1684 = !DISubprogram(name: "__errno_location", scope: !1685, file: !1685, line: 37, type: !1686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!397}
!1688 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1689, file: !1689, line: 25, type: !1690, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1689 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!137, !137, !1142, !141, !141}
!1692 = !DISubprogram(name: "mbrtoc32", scope: !433, file: !433, line: 57, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!139, !1695, !988, !139, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1698)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1699 = distinct !DISubprogram(name: "write_out", scope: !2, file: !2, line: 147, type: !1700, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1702)
!1700 = !DISubroutineType(cc: DW_CC_nocall, types: !1701)
!1701 = !{null, !142, !139, !168}
!1702 = !{!1703, !1704, !1705, !1706, !1709, !1710}
!1703 = !DILocalVariable(name: "line", arg: 1, scope: !1699, file: !2, line: 147, type: !142)
!1704 = !DILocalVariable(name: "line_len", arg: 2, scope: !1699, file: !2, line: 147, type: !139)
!1705 = !DILocalVariable(name: "newline", arg: 3, scope: !1699, file: !2, line: 147, type: !168)
!1706 = !DILocalVariable(name: "__ptr", scope: !1707, file: !2, line: 149, type: !142)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 149, column: 7)
!1708 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 149, column: 7)
!1709 = !DILocalVariable(name: "__stream", scope: !1707, file: !2, line: 149, type: !202)
!1710 = !DILocalVariable(name: "__cnt", scope: !1707, file: !2, line: 149, type: !139)
!1711 = !DILocation(line: 0, scope: !1699)
!1712 = !DILocation(line: 149, column: 7, scope: !1708)
!1713 = !DILocation(line: 149, column: 54, scope: !1708)
!1714 = !DILocation(line: 150, column: 7, scope: !1708)
!1715 = !DILocation(line: 150, column: 19, scope: !1708)
!1716 = !DILocalVariable(name: "__c", arg: 1, scope: !1717, file: !1285, line: 108, type: !83)
!1717 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1285, file: !1285, line: 108, type: !1718, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!83, !83}
!1720 = !{!1716}
!1721 = !DILocation(line: 0, scope: !1717, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 150, column: 22, scope: !1708)
!1723 = !DILocation(line: 110, column: 10, scope: !1717, inlinedAt: !1722)
!1724 = !{!1293, !928, i64 40}
!1725 = !{!1293, !928, i64 48}
!1726 = !{!"branch_weights", i32 2000, i32 1}
!1727 = !DILocation(line: 149, column: 7, scope: !1699)
!1728 = !DILocation(line: 150, column: 37, scope: !1708)
!1729 = !DILocation(line: 948, column: 21, scope: !1730, inlinedAt: !1733)
!1730 = distinct !DISubprogram(name: "write_error", scope: !82, file: !82, line: 946, type: !550, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1731)
!1731 = !{!1732}
!1732 = !DILocalVariable(name: "saved_errno", scope: !1730, file: !82, line: 948, type: !83)
!1733 = distinct !DILocation(line: 151, column: 5, scope: !1708)
!1734 = !DILocation(line: 0, scope: !1730, inlinedAt: !1733)
!1735 = !DILocation(line: 949, column: 3, scope: !1730, inlinedAt: !1733)
!1736 = !DILocation(line: 950, column: 11, scope: !1730, inlinedAt: !1733)
!1737 = !DILocation(line: 950, column: 3, scope: !1730, inlinedAt: !1733)
!1738 = !DILocation(line: 951, column: 3, scope: !1730, inlinedAt: !1733)
!1739 = !DILocation(line: 952, column: 3, scope: !1730, inlinedAt: !1733)
!1740 = !DILocation(line: 152, column: 1, scope: !1699)
!1741 = !DISubprogram(name: "wcwidth", scope: !1742, file: !1742, line: 368, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1742 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!83, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1746, line: 24, baseType: !69)
!1746 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_wchar_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1bf0c51e90dd5eb05cdcc01afdea587a")
!1747 = !DISubprogram(name: "iswblank", scope: !1748, file: !1748, line: 146, type: !1514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1748 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1749 = !DISubprogram(name: "__builtin___memcpy_chk", scope: !1304, file: !1304, line: 29, type: !1690, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1750 = !DISubprogram(name: "clearerr_unlocked", scope: !510, file: !510, line: 794, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !202}
!1753 = !DISubprogram(name: "__overflow", scope: !510, file: !510, line: 886, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!83, !202, !83}
!1756 = !DISubprogram(name: "fflush_unlocked", scope: !510, file: !510, line: 239, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1757 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !484, file: !484, line: 50, type: !948, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1758)
!1758 = !{!1759}
!1759 = !DILocalVariable(name: "file", arg: 1, scope: !1757, file: !484, line: 50, type: !142)
!1760 = !DILocation(line: 0, scope: !1757)
!1761 = !DILocation(line: 52, column: 13, scope: !1757)
!1762 = !DILocation(line: 53, column: 1, scope: !1757)
!1763 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !484, file: !484, line: 87, type: !1764, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !168}
!1766 = !{!1767}
!1767 = !DILocalVariable(name: "ignore", arg: 1, scope: !1763, file: !484, line: 87, type: !168)
!1768 = !DILocation(line: 0, scope: !1763)
!1769 = !DILocation(line: 89, column: 16, scope: !1763)
!1770 = !{!1771, !1771, i64 0}
!1771 = !{!"_Bool", !929, i64 0}
!1772 = !DILocation(line: 90, column: 1, scope: !1763)
!1773 = distinct !DISubprogram(name: "close_stdout", scope: !484, file: !484, line: 116, type: !550, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1774)
!1774 = !{!1775}
!1775 = !DILocalVariable(name: "write_error", scope: !1776, file: !484, line: 121, type: !142)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !484, line: 120, column: 5)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !484, line: 118, column: 7)
!1778 = !DILocation(line: 118, column: 21, scope: !1777)
!1779 = !DILocation(line: 118, column: 7, scope: !1777)
!1780 = !DILocation(line: 118, column: 29, scope: !1777)
!1781 = !DILocation(line: 119, column: 7, scope: !1777)
!1782 = !DILocation(line: 119, column: 12, scope: !1777)
!1783 = !{i8 0, i8 2}
!1784 = !DILocation(line: 119, column: 25, scope: !1777)
!1785 = !DILocation(line: 119, column: 28, scope: !1777)
!1786 = !DILocation(line: 119, column: 34, scope: !1777)
!1787 = !DILocation(line: 118, column: 7, scope: !1773)
!1788 = !DILocation(line: 121, column: 33, scope: !1776)
!1789 = !DILocation(line: 0, scope: !1776)
!1790 = !DILocation(line: 122, column: 11, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1776, file: !484, line: 122, column: 11)
!1792 = !DILocation(line: 0, scope: !1791)
!1793 = !DILocation(line: 122, column: 11, scope: !1776)
!1794 = !DILocation(line: 123, column: 9, scope: !1791)
!1795 = !DILocation(line: 126, column: 9, scope: !1791)
!1796 = !DILocation(line: 128, column: 14, scope: !1776)
!1797 = !DILocation(line: 128, column: 7, scope: !1776)
!1798 = !DILocation(line: 133, column: 42, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1773, file: !484, line: 133, column: 7)
!1800 = !DILocation(line: 133, column: 28, scope: !1799)
!1801 = !DILocation(line: 133, column: 50, scope: !1799)
!1802 = !DILocation(line: 133, column: 7, scope: !1773)
!1803 = !DILocation(line: 134, column: 12, scope: !1799)
!1804 = !DILocation(line: 134, column: 5, scope: !1799)
!1805 = !DILocation(line: 135, column: 1, scope: !1773)
!1806 = !DISubprogram(name: "_exit", scope: !1807, file: !1807, line: 624, type: !917, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1807 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1808 = distinct !DISubprogram(name: "verror", scope: !499, file: !499, line: 251, type: !1809, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !83, !83, !142, !509}
!1811 = !{!1812, !1813, !1814, !1815}
!1812 = !DILocalVariable(name: "status", arg: 1, scope: !1808, file: !499, line: 251, type: !83)
!1813 = !DILocalVariable(name: "errnum", arg: 2, scope: !1808, file: !499, line: 251, type: !83)
!1814 = !DILocalVariable(name: "message", arg: 3, scope: !1808, file: !499, line: 251, type: !142)
!1815 = !DILocalVariable(name: "args", arg: 4, scope: !1808, file: !499, line: 251, type: !509)
!1816 = !DILocation(line: 0, scope: !1808)
!1817 = !DILocation(line: 261, column: 3, scope: !1808)
!1818 = !DILocation(line: 265, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1808, file: !499, line: 265, column: 7)
!1820 = !DILocation(line: 265, column: 7, scope: !1808)
!1821 = !DILocation(line: 266, column: 5, scope: !1819)
!1822 = !DILocation(line: 272, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !499, line: 268, column: 5)
!1824 = !DILocation(line: 276, column: 3, scope: !1808)
!1825 = !{i64 0, i64 8, !927, i64 8, i64 8, !927, i64 16, i64 8, !927, i64 24, i64 4, !997, i64 28, i64 4, !997}
!1826 = !DILocation(line: 282, column: 1, scope: !1808)
!1827 = distinct !DISubprogram(name: "flush_stdout", scope: !499, file: !499, line: 163, type: !550, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1828)
!1828 = !{!1829}
!1829 = !DILocalVariable(name: "stdout_fd", scope: !1827, file: !499, line: 166, type: !83)
!1830 = !DILocation(line: 0, scope: !1827)
!1831 = !DILocalVariable(name: "fd", arg: 1, scope: !1832, file: !499, line: 145, type: !83)
!1832 = distinct !DISubprogram(name: "is_open", scope: !499, file: !499, line: 145, type: !1718, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1833)
!1833 = !{!1831}
!1834 = !DILocation(line: 0, scope: !1832, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 182, column: 25, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1827, file: !499, line: 182, column: 7)
!1837 = !DILocation(line: 157, column: 15, scope: !1832, inlinedAt: !1835)
!1838 = !DILocation(line: 157, column: 12, scope: !1832, inlinedAt: !1835)
!1839 = !DILocation(line: 182, column: 7, scope: !1827)
!1840 = !DILocation(line: 184, column: 5, scope: !1836)
!1841 = !DILocation(line: 185, column: 1, scope: !1827)
!1842 = distinct !DISubprogram(name: "error_tail", scope: !499, file: !499, line: 219, type: !1809, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1843)
!1843 = !{!1844, !1845, !1846, !1847}
!1844 = !DILocalVariable(name: "status", arg: 1, scope: !1842, file: !499, line: 219, type: !83)
!1845 = !DILocalVariable(name: "errnum", arg: 2, scope: !1842, file: !499, line: 219, type: !83)
!1846 = !DILocalVariable(name: "message", arg: 3, scope: !1842, file: !499, line: 219, type: !142)
!1847 = !DILocalVariable(name: "args", arg: 4, scope: !1842, file: !499, line: 219, type: !509)
!1848 = distinct !DIAssignID()
!1849 = !DILocation(line: 0, scope: !1842)
!1850 = !DILocation(line: 229, column: 13, scope: !1842)
!1851 = !DILocation(line: 135, column: 10, scope: !1852, inlinedAt: !1894)
!1852 = distinct !DISubprogram(name: "vfprintf", scope: !984, file: !984, line: 132, type: !1853, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1890)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!83, !1855, !988, !511}
!1855 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !1858)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1858, file: !206, line: 51, baseType: !83, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1858, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1858, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1858, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1858, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1858, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1858, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1858, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1858, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1858, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1858, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1858, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1858, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1858, file: !206, line: 70, baseType: !1874, size: 64, offset: 832)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1858, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1858, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1858, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1858, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1858, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1858, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1858, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1858, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1858, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1858, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1858, file: !206, line: 93, baseType: !1874, size: 64, offset: 1344)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1858, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1858, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1858, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1858, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!1890 = !{!1891, !1892, !1893}
!1891 = !DILocalVariable(name: "__stream", arg: 1, scope: !1852, file: !984, line: 132, type: !1855)
!1892 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1852, file: !984, line: 133, type: !988)
!1893 = !DILocalVariable(name: "__ap", arg: 3, scope: !1852, file: !984, line: 133, type: !511)
!1894 = distinct !DILocation(line: 229, column: 3, scope: !1842)
!1895 = !{!1896, !1898}
!1896 = distinct !{!1896, !1897, !"vfprintf.inline: argument 0"}
!1897 = distinct !{!1897, !"vfprintf.inline"}
!1898 = distinct !{!1898, !1897, !"vfprintf.inline: argument 1"}
!1899 = !DILocation(line: 229, column: 3, scope: !1842)
!1900 = !DILocation(line: 0, scope: !1852, inlinedAt: !1894)
!1901 = !DILocation(line: 232, column: 3, scope: !1842)
!1902 = !DILocation(line: 233, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1842, file: !499, line: 233, column: 7)
!1904 = !DILocation(line: 233, column: 7, scope: !1842)
!1905 = !DILocalVariable(name: "errbuf", scope: !1906, file: !499, line: 193, type: !1910)
!1906 = distinct !DISubprogram(name: "print_errno_message", scope: !499, file: !499, line: 188, type: !917, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1907)
!1907 = !{!1908, !1909, !1905}
!1908 = !DILocalVariable(name: "errnum", arg: 1, scope: !1906, file: !499, line: 188, type: !83)
!1909 = !DILocalVariable(name: "s", scope: !1906, file: !499, line: 190, type: !142)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1911)
!1911 = !{!1912}
!1912 = !DISubrange(count: 1024)
!1913 = !DILocation(line: 0, scope: !1906, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 234, column: 5, scope: !1903)
!1915 = !DILocation(line: 193, column: 3, scope: !1906, inlinedAt: !1914)
!1916 = !DILocation(line: 195, column: 7, scope: !1906, inlinedAt: !1914)
!1917 = !DILocation(line: 207, column: 9, scope: !1918, inlinedAt: !1914)
!1918 = distinct !DILexicalBlock(scope: !1906, file: !499, line: 207, column: 7)
!1919 = !DILocation(line: 207, column: 7, scope: !1906, inlinedAt: !1914)
!1920 = !DILocation(line: 208, column: 9, scope: !1918, inlinedAt: !1914)
!1921 = !DILocation(line: 208, column: 5, scope: !1918, inlinedAt: !1914)
!1922 = !DILocation(line: 214, column: 3, scope: !1906, inlinedAt: !1914)
!1923 = !DILocation(line: 216, column: 1, scope: !1906, inlinedAt: !1914)
!1924 = !DILocation(line: 234, column: 5, scope: !1903)
!1925 = !DILocation(line: 238, column: 3, scope: !1842)
!1926 = !DILocalVariable(name: "__c", arg: 1, scope: !1927, file: !1285, line: 101, type: !83)
!1927 = distinct !DISubprogram(name: "putc_unlocked", scope: !1285, file: !1285, line: 101, type: !1928, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!83, !83, !1856}
!1930 = !{!1926, !1931}
!1931 = !DILocalVariable(name: "__stream", arg: 2, scope: !1927, file: !1285, line: 101, type: !1856)
!1932 = !DILocation(line: 0, scope: !1927, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 238, column: 3, scope: !1842)
!1934 = !DILocation(line: 103, column: 10, scope: !1927, inlinedAt: !1933)
!1935 = !DILocation(line: 240, column: 3, scope: !1842)
!1936 = !DILocation(line: 241, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1842, file: !499, line: 241, column: 7)
!1938 = !DILocation(line: 241, column: 7, scope: !1842)
!1939 = !DILocation(line: 242, column: 5, scope: !1937)
!1940 = !DILocation(line: 243, column: 1, scope: !1842)
!1941 = !DISubprogram(name: "__vfprintf_chk", scope: !984, file: !984, line: 96, type: !1942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!83, !1855, !83, !988, !511}
!1944 = !DISubprogram(name: "strerror_r", scope: !1114, file: !1114, line: 444, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!136, !83, !136, !139}
!1947 = !DISubprogram(name: "fcntl", scope: !1948, file: !1948, line: 149, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1948 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!83, !83, !83, null}
!1951 = distinct !DISubprogram(name: "error", scope: !499, file: !499, line: 285, type: !1952, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1954)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !83, !83, !142, null}
!1954 = !{!1955, !1956, !1957, !1958}
!1955 = !DILocalVariable(name: "status", arg: 1, scope: !1951, file: !499, line: 285, type: !83)
!1956 = !DILocalVariable(name: "errnum", arg: 2, scope: !1951, file: !499, line: 285, type: !83)
!1957 = !DILocalVariable(name: "message", arg: 3, scope: !1951, file: !499, line: 285, type: !142)
!1958 = !DILocalVariable(name: "ap", scope: !1951, file: !499, line: 287, type: !509)
!1959 = distinct !DIAssignID()
!1960 = !DILocation(line: 0, scope: !1951)
!1961 = !DILocation(line: 287, column: 3, scope: !1951)
!1962 = !DILocation(line: 288, column: 3, scope: !1951)
!1963 = !DILocation(line: 289, column: 3, scope: !1951)
!1964 = !DILocation(line: 290, column: 3, scope: !1951)
!1965 = !DILocation(line: 291, column: 1, scope: !1951)
!1966 = !DILocation(line: 0, scope: !506)
!1967 = !DILocation(line: 302, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !506, file: !499, line: 302, column: 7)
!1969 = !DILocation(line: 302, column: 7, scope: !506)
!1970 = !DILocation(line: 307, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !499, line: 307, column: 11)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !499, line: 303, column: 5)
!1973 = !DILocation(line: 307, column: 27, scope: !1971)
!1974 = !DILocation(line: 308, column: 11, scope: !1971)
!1975 = !DILocation(line: 308, column: 28, scope: !1971)
!1976 = !DILocation(line: 308, column: 25, scope: !1971)
!1977 = !DILocation(line: 309, column: 15, scope: !1971)
!1978 = !DILocation(line: 309, column: 33, scope: !1971)
!1979 = !DILocation(line: 310, column: 19, scope: !1971)
!1980 = !DILocation(line: 311, column: 22, scope: !1971)
!1981 = !DILocation(line: 311, column: 56, scope: !1971)
!1982 = !DILocation(line: 307, column: 11, scope: !1972)
!1983 = !DILocation(line: 316, column: 21, scope: !1972)
!1984 = !DILocation(line: 317, column: 23, scope: !1972)
!1985 = !DILocation(line: 318, column: 5, scope: !1972)
!1986 = !DILocation(line: 327, column: 3, scope: !506)
!1987 = !DILocation(line: 331, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !506, file: !499, line: 331, column: 7)
!1989 = !DILocation(line: 331, column: 7, scope: !506)
!1990 = !DILocation(line: 332, column: 5, scope: !1988)
!1991 = !DILocation(line: 338, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !499, line: 334, column: 5)
!1993 = !DILocation(line: 346, column: 3, scope: !506)
!1994 = !DILocation(line: 350, column: 3, scope: !506)
!1995 = !DILocation(line: 356, column: 1, scope: !506)
!1996 = distinct !DISubprogram(name: "error_at_line", scope: !499, file: !499, line: 359, type: !1997, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !83, !83, !142, !69, !142, null}
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005}
!2000 = !DILocalVariable(name: "status", arg: 1, scope: !1996, file: !499, line: 359, type: !83)
!2001 = !DILocalVariable(name: "errnum", arg: 2, scope: !1996, file: !499, line: 359, type: !83)
!2002 = !DILocalVariable(name: "file_name", arg: 3, scope: !1996, file: !499, line: 359, type: !142)
!2003 = !DILocalVariable(name: "line_number", arg: 4, scope: !1996, file: !499, line: 360, type: !69)
!2004 = !DILocalVariable(name: "message", arg: 5, scope: !1996, file: !499, line: 360, type: !142)
!2005 = !DILocalVariable(name: "ap", scope: !1996, file: !499, line: 362, type: !509)
!2006 = distinct !DIAssignID()
!2007 = !DILocation(line: 0, scope: !1996)
!2008 = !DILocation(line: 362, column: 3, scope: !1996)
!2009 = !DILocation(line: 363, column: 3, scope: !1996)
!2010 = !DILocation(line: 364, column: 3, scope: !1996)
!2011 = !DILocation(line: 366, column: 3, scope: !1996)
!2012 = !DILocation(line: 367, column: 1, scope: !1996)
!2013 = distinct !DISubprogram(name: "fdadvise", scope: !816, file: !816, line: 25, type: !2014, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !2018)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !83, !2016, !2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !510, line: 63, baseType: !228)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !819, line: 51, baseType: !818)
!2018 = !{!2019, !2020, !2021, !2022}
!2019 = !DILocalVariable(name: "fd", arg: 1, scope: !2013, file: !816, line: 25, type: !83)
!2020 = !DILocalVariable(name: "offset", arg: 2, scope: !2013, file: !816, line: 25, type: !2016)
!2021 = !DILocalVariable(name: "len", arg: 3, scope: !2013, file: !816, line: 25, type: !2016)
!2022 = !DILocalVariable(name: "advice", arg: 4, scope: !2013, file: !816, line: 25, type: !2017)
!2023 = !DILocation(line: 0, scope: !2013)
!2024 = !DILocation(line: 28, column: 3, scope: !2013)
!2025 = !DILocation(line: 30, column: 1, scope: !2013)
!2026 = !DISubprogram(name: "posix_fadvise", scope: !1948, file: !1948, line: 273, type: !2027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!83, !83, !2016, !2016, !83}
!2029 = distinct !DISubprogram(name: "fadvise", scope: !816, file: !816, line: 33, type: !2030, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !2066)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !2032, !2017}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2034)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2035)
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2034, file: !206, line: 51, baseType: !83, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2034, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2034, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2034, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2034, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2034, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2034, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2034, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2034, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2034, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2034, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2034, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2034, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2034, file: !206, line: 70, baseType: !2050, size: 64, offset: 832)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2034, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2034, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2034, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2034, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2034, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2034, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2034, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2034, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2034, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2034, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2034, file: !206, line: 93, baseType: !2050, size: 64, offset: 1344)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2034, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2034, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2034, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2034, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2066 = !{!2067, !2068}
!2067 = !DILocalVariable(name: "fp", arg: 1, scope: !2029, file: !816, line: 33, type: !2032)
!2068 = !DILocalVariable(name: "advice", arg: 2, scope: !2029, file: !816, line: 33, type: !2017)
!2069 = !DILocation(line: 0, scope: !2029)
!2070 = !DILocation(line: 35, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2029, file: !816, line: 35, column: 7)
!2072 = !DILocation(line: 35, column: 7, scope: !2029)
!2073 = !DILocation(line: 36, column: 15, scope: !2071)
!2074 = !DILocation(line: 0, scope: !2013, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 36, column: 5, scope: !2071)
!2076 = !DILocation(line: 28, column: 3, scope: !2013, inlinedAt: !2075)
!2077 = !DILocation(line: 36, column: 5, scope: !2071)
!2078 = !DILocation(line: 37, column: 1, scope: !2029)
!2079 = !DISubprogram(name: "fileno", scope: !510, file: !510, line: 809, type: !2080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!83, !2032}
!2082 = distinct !DISubprogram(name: "rpl_fclose", scope: !821, file: !821, line: 58, type: !2083, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !2119)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!83, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2087)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2087, file: !206, line: 51, baseType: !83, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2087, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2087, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2087, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2087, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2087, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2087, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2087, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2087, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2087, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2087, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2087, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2087, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2087, file: !206, line: 70, baseType: !2103, size: 64, offset: 832)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2087, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2087, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2087, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2087, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2087, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2087, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2087, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2087, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2087, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2087, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2087, file: !206, line: 93, baseType: !2103, size: 64, offset: 1344)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2087, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2087, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2087, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2087, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2119 = !{!2120, !2121, !2122, !2123}
!2120 = !DILocalVariable(name: "fp", arg: 1, scope: !2082, file: !821, line: 58, type: !2085)
!2121 = !DILocalVariable(name: "saved_errno", scope: !2082, file: !821, line: 60, type: !83)
!2122 = !DILocalVariable(name: "fd", scope: !2082, file: !821, line: 63, type: !83)
!2123 = !DILocalVariable(name: "result", scope: !2082, file: !821, line: 74, type: !83)
!2124 = !DILocation(line: 0, scope: !2082)
!2125 = !DILocation(line: 63, column: 12, scope: !2082)
!2126 = !DILocation(line: 64, column: 10, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2082, file: !821, line: 64, column: 7)
!2128 = !DILocation(line: 64, column: 7, scope: !2082)
!2129 = !DILocation(line: 65, column: 12, scope: !2127)
!2130 = !DILocation(line: 65, column: 5, scope: !2127)
!2131 = !DILocation(line: 70, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2082, file: !821, line: 70, column: 7)
!2133 = !DILocation(line: 70, column: 23, scope: !2132)
!2134 = !DILocation(line: 70, column: 33, scope: !2132)
!2135 = !DILocation(line: 70, column: 26, scope: !2132)
!2136 = !DILocation(line: 70, column: 59, scope: !2132)
!2137 = !DILocation(line: 71, column: 7, scope: !2132)
!2138 = !DILocation(line: 71, column: 10, scope: !2132)
!2139 = !DILocation(line: 70, column: 7, scope: !2082)
!2140 = !DILocation(line: 100, column: 12, scope: !2082)
!2141 = !DILocation(line: 105, column: 7, scope: !2082)
!2142 = !DILocation(line: 72, column: 19, scope: !2132)
!2143 = !DILocation(line: 105, column: 19, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2082, file: !821, line: 105, column: 7)
!2145 = !DILocation(line: 107, column: 13, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2144, file: !821, line: 106, column: 5)
!2147 = !DILocation(line: 109, column: 5, scope: !2146)
!2148 = !DILocation(line: 112, column: 1, scope: !2082)
!2149 = !DISubprogram(name: "fclose", scope: !510, file: !510, line: 178, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2150 = !DISubprogram(name: "__freading", scope: !2151, file: !2151, line: 51, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2151 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2152 = !DISubprogram(name: "lseek", scope: !1807, file: !1807, line: 339, type: !2153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!228, !83, !228, !83}
!2155 = distinct !DISubprogram(name: "rpl_fflush", scope: !823, file: !823, line: 130, type: !2156, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !2192)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!83, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2160)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2160, file: !206, line: 51, baseType: !83, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2160, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2160, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2160, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2160, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2160, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2160, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2160, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2160, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2160, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2160, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2160, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2160, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2160, file: !206, line: 70, baseType: !2176, size: 64, offset: 832)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2160, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2160, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2160, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2160, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2160, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2160, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2160, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2160, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2160, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2160, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2160, file: !206, line: 93, baseType: !2176, size: 64, offset: 1344)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2160, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2160, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2160, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2160, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2192 = !{!2193}
!2193 = !DILocalVariable(name: "stream", arg: 1, scope: !2155, file: !823, line: 130, type: !2158)
!2194 = !DILocation(line: 0, scope: !2155)
!2195 = !DILocation(line: 151, column: 14, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2155, file: !823, line: 151, column: 7)
!2197 = !DILocation(line: 151, column: 22, scope: !2196)
!2198 = !DILocation(line: 151, column: 27, scope: !2196)
!2199 = !DILocation(line: 151, column: 7, scope: !2155)
!2200 = !DILocation(line: 152, column: 12, scope: !2196)
!2201 = !DILocation(line: 152, column: 5, scope: !2196)
!2202 = !DILocalVariable(name: "fp", arg: 1, scope: !2203, file: !823, line: 42, type: !2158)
!2203 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !823, file: !823, line: 42, type: !2204, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !2158}
!2206 = !{!2202}
!2207 = !DILocation(line: 0, scope: !2203, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 157, column: 3, scope: !2155)
!2209 = !DILocation(line: 44, column: 12, scope: !2210, inlinedAt: !2208)
!2210 = distinct !DILexicalBlock(scope: !2203, file: !823, line: 44, column: 7)
!2211 = !DILocation(line: 44, column: 19, scope: !2210, inlinedAt: !2208)
!2212 = !DILocation(line: 44, column: 7, scope: !2203, inlinedAt: !2208)
!2213 = !DILocation(line: 46, column: 5, scope: !2210, inlinedAt: !2208)
!2214 = !DILocation(line: 159, column: 10, scope: !2155)
!2215 = !DILocation(line: 159, column: 3, scope: !2155)
!2216 = !DILocation(line: 236, column: 1, scope: !2155)
!2217 = !DISubprogram(name: "fflush", scope: !510, file: !510, line: 230, type: !2156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2218 = distinct !DISubprogram(name: "fpurge", scope: !826, file: !826, line: 32, type: !2219, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2255)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!83, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2224)
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2223, file: !206, line: 51, baseType: !83, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2223, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2223, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2223, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2223, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2223, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2223, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2223, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2223, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2223, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2223, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2223, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2223, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2223, file: !206, line: 70, baseType: !2239, size: 64, offset: 832)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2223, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2223, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2223, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2223, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2223, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2223, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2223, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2223, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2223, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2223, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2223, file: !206, line: 93, baseType: !2239, size: 64, offset: 1344)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2223, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2223, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2223, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2223, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2255 = !{!2256}
!2256 = !DILocalVariable(name: "fp", arg: 1, scope: !2218, file: !826, line: 32, type: !2221)
!2257 = !DILocation(line: 0, scope: !2218)
!2258 = !DILocation(line: 36, column: 3, scope: !2218)
!2259 = !DILocation(line: 38, column: 3, scope: !2218)
!2260 = !DISubprogram(name: "__fpurge", scope: !2151, file: !2151, line: 72, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !2221}
!2263 = distinct !DISubprogram(name: "rpl_fseeko", scope: !828, file: !828, line: 28, type: !2264, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !2300)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!83, !2266, !2016, !83}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2268)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2269)
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2268, file: !206, line: 51, baseType: !83, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2268, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2268, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2268, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2268, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2268, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2268, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2268, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2268, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2268, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2268, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2268, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2268, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2268, file: !206, line: 70, baseType: !2284, size: 64, offset: 832)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2268, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2268, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2268, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2268, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2268, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2268, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2268, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2268, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2268, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2268, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2268, file: !206, line: 93, baseType: !2284, size: 64, offset: 1344)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2268, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2268, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2268, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2268, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2300 = !{!2301, !2302, !2303, !2304}
!2301 = !DILocalVariable(name: "fp", arg: 1, scope: !2263, file: !828, line: 28, type: !2266)
!2302 = !DILocalVariable(name: "offset", arg: 2, scope: !2263, file: !828, line: 28, type: !2016)
!2303 = !DILocalVariable(name: "whence", arg: 3, scope: !2263, file: !828, line: 28, type: !83)
!2304 = !DILocalVariable(name: "pos", scope: !2305, file: !828, line: 123, type: !2016)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !828, line: 119, column: 5)
!2306 = distinct !DILexicalBlock(scope: !2263, file: !828, line: 55, column: 7)
!2307 = !DILocation(line: 0, scope: !2263)
!2308 = !DILocation(line: 55, column: 12, scope: !2306)
!2309 = !{!1293, !928, i64 16}
!2310 = !DILocation(line: 55, column: 33, scope: !2306)
!2311 = !{!1293, !928, i64 8}
!2312 = !DILocation(line: 55, column: 25, scope: !2306)
!2313 = !DILocation(line: 56, column: 7, scope: !2306)
!2314 = !DILocation(line: 56, column: 15, scope: !2306)
!2315 = !DILocation(line: 56, column: 37, scope: !2306)
!2316 = !{!1293, !928, i64 32}
!2317 = !DILocation(line: 56, column: 29, scope: !2306)
!2318 = !DILocation(line: 57, column: 7, scope: !2306)
!2319 = !DILocation(line: 57, column: 15, scope: !2306)
!2320 = !{!1293, !928, i64 72}
!2321 = !DILocation(line: 57, column: 29, scope: !2306)
!2322 = !DILocation(line: 55, column: 7, scope: !2263)
!2323 = !DILocation(line: 123, column: 26, scope: !2305)
!2324 = !DILocation(line: 123, column: 19, scope: !2305)
!2325 = !DILocation(line: 0, scope: !2305)
!2326 = !DILocation(line: 124, column: 15, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2305, file: !828, line: 124, column: 11)
!2328 = !DILocation(line: 124, column: 11, scope: !2305)
!2329 = !DILocation(line: 135, column: 19, scope: !2305)
!2330 = !DILocation(line: 136, column: 12, scope: !2305)
!2331 = !DILocation(line: 136, column: 20, scope: !2305)
!2332 = !{!1293, !1294, i64 144}
!2333 = !DILocation(line: 167, column: 7, scope: !2305)
!2334 = !DILocation(line: 169, column: 10, scope: !2263)
!2335 = !DILocation(line: 169, column: 3, scope: !2263)
!2336 = !DILocation(line: 170, column: 1, scope: !2263)
!2337 = !DISubprogram(name: "fseeko", scope: !510, file: !510, line: 736, type: !2338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!83, !2266, !228, !83}
!2340 = distinct !DISubprogram(name: "getprogname", scope: !830, file: !830, line: 54, type: !2341, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!142}
!2343 = !DILocation(line: 58, column: 10, scope: !2340)
!2344 = !DILocation(line: 58, column: 3, scope: !2340)
!2345 = distinct !DISubprogram(name: "set_program_name", scope: !555, file: !555, line: 37, type: !948, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2346)
!2346 = !{!2347, !2348, !2349}
!2347 = !DILocalVariable(name: "argv0", arg: 1, scope: !2345, file: !555, line: 37, type: !142)
!2348 = !DILocalVariable(name: "slash", scope: !2345, file: !555, line: 44, type: !142)
!2349 = !DILocalVariable(name: "base", scope: !2345, file: !555, line: 45, type: !142)
!2350 = !DILocation(line: 0, scope: !2345)
!2351 = !DILocation(line: 44, column: 23, scope: !2345)
!2352 = !DILocation(line: 45, column: 22, scope: !2345)
!2353 = !DILocation(line: 46, column: 17, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2345, file: !555, line: 46, column: 7)
!2355 = !DILocation(line: 46, column: 9, scope: !2354)
!2356 = !DILocation(line: 46, column: 25, scope: !2354)
!2357 = !DILocation(line: 46, column: 40, scope: !2354)
!2358 = !DILocalVariable(name: "__s1", arg: 1, scope: !2359, file: !1010, line: 974, type: !1142)
!2359 = distinct !DISubprogram(name: "memeq", scope: !1010, file: !1010, line: 974, type: !2360, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!168, !1142, !1142, !139}
!2362 = !{!2358, !2363, !2364}
!2363 = !DILocalVariable(name: "__s2", arg: 2, scope: !2359, file: !1010, line: 974, type: !1142)
!2364 = !DILocalVariable(name: "__n", arg: 3, scope: !2359, file: !1010, line: 974, type: !139)
!2365 = !DILocation(line: 0, scope: !2359, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 46, column: 28, scope: !2354)
!2367 = !DILocation(line: 976, column: 11, scope: !2359, inlinedAt: !2366)
!2368 = !DILocation(line: 976, column: 10, scope: !2359, inlinedAt: !2366)
!2369 = !DILocation(line: 46, column: 7, scope: !2345)
!2370 = !DILocation(line: 49, column: 11, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !555, line: 49, column: 11)
!2372 = distinct !DILexicalBlock(scope: !2354, file: !555, line: 47, column: 5)
!2373 = !DILocation(line: 49, column: 36, scope: !2371)
!2374 = !DILocation(line: 49, column: 11, scope: !2372)
!2375 = !DILocation(line: 65, column: 16, scope: !2345)
!2376 = !DILocation(line: 71, column: 27, scope: !2345)
!2377 = !DILocation(line: 74, column: 33, scope: !2345)
!2378 = !DILocation(line: 76, column: 1, scope: !2345)
!2379 = !DISubprogram(name: "strrchr", scope: !1114, file: !1114, line: 273, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2380 = distinct !DIAssignID()
!2381 = !DILocation(line: 0, scope: !564)
!2382 = distinct !DIAssignID()
!2383 = !DILocation(line: 40, column: 29, scope: !564)
!2384 = !DILocation(line: 41, column: 19, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !564, file: !565, line: 41, column: 7)
!2386 = !DILocation(line: 41, column: 7, scope: !564)
!2387 = !DILocation(line: 47, column: 3, scope: !564)
!2388 = !DILocation(line: 48, column: 3, scope: !564)
!2389 = !DILocalVariable(name: "ps", arg: 1, scope: !2390, file: !2391, line: 1135, type: !2394)
!2390 = distinct !DISubprogram(name: "mbszero", scope: !2391, file: !2391, line: 1135, type: !2392, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2395)
!2391 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2395 = !{!2389}
!2396 = !DILocation(line: 0, scope: !2390, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 48, column: 18, scope: !564)
!2398 = !DILocalVariable(name: "__dest", arg: 1, scope: !2399, file: !1304, line: 57, type: !137)
!2399 = distinct !DISubprogram(name: "memset", scope: !1304, file: !1304, line: 57, type: !2400, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!137, !137, !83, !139}
!2402 = !{!2398, !2403, !2404}
!2403 = !DILocalVariable(name: "__ch", arg: 2, scope: !2399, file: !1304, line: 57, type: !83)
!2404 = !DILocalVariable(name: "__len", arg: 3, scope: !2399, file: !1304, line: 57, type: !139)
!2405 = !DILocation(line: 0, scope: !2399, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 1137, column: 3, scope: !2390, inlinedAt: !2397)
!2407 = !DILocation(line: 59, column: 10, scope: !2399, inlinedAt: !2406)
!2408 = !DILocation(line: 49, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !564, file: !565, line: 49, column: 7)
!2410 = !DILocation(line: 49, column: 39, scope: !2409)
!2411 = !DILocation(line: 49, column: 44, scope: !2409)
!2412 = !DILocation(line: 54, column: 1, scope: !564)
!2413 = distinct !DISubprogram(name: "clone_quoting_options", scope: !591, file: !591, line: 113, type: !2414, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2417)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2416, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!2417 = !{!2418, !2419, !2420}
!2418 = !DILocalVariable(name: "o", arg: 1, scope: !2413, file: !591, line: 113, type: !2416)
!2419 = !DILocalVariable(name: "saved_errno", scope: !2413, file: !591, line: 115, type: !83)
!2420 = !DILocalVariable(name: "p", scope: !2413, file: !591, line: 116, type: !2416)
!2421 = !DILocation(line: 0, scope: !2413)
!2422 = !DILocation(line: 115, column: 21, scope: !2413)
!2423 = !DILocation(line: 116, column: 40, scope: !2413)
!2424 = !DILocation(line: 116, column: 31, scope: !2413)
!2425 = !DILocation(line: 118, column: 9, scope: !2413)
!2426 = !DILocation(line: 119, column: 3, scope: !2413)
!2427 = distinct !DISubprogram(name: "get_quoting_style", scope: !591, file: !591, line: 124, type: !2428, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2432)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!617, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!2432 = !{!2433}
!2433 = !DILocalVariable(name: "o", arg: 1, scope: !2427, file: !591, line: 124, type: !2430)
!2434 = !DILocation(line: 0, scope: !2427)
!2435 = !DILocation(line: 126, column: 11, scope: !2427)
!2436 = !DILocation(line: 126, column: 46, scope: !2427)
!2437 = !{!2438, !998, i64 0}
!2438 = !{!"quoting_options", !998, i64 0, !998, i64 4, !929, i64 8, !928, i64 40, !928, i64 48}
!2439 = !DILocation(line: 126, column: 3, scope: !2427)
!2440 = distinct !DISubprogram(name: "set_quoting_style", scope: !591, file: !591, line: 132, type: !2441, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !2416, !617}
!2443 = !{!2444, !2445}
!2444 = !DILocalVariable(name: "o", arg: 1, scope: !2440, file: !591, line: 132, type: !2416)
!2445 = !DILocalVariable(name: "s", arg: 2, scope: !2440, file: !591, line: 132, type: !617)
!2446 = !DILocation(line: 0, scope: !2440)
!2447 = !DILocation(line: 134, column: 4, scope: !2440)
!2448 = !DILocation(line: 134, column: 45, scope: !2440)
!2449 = !DILocation(line: 135, column: 1, scope: !2440)
!2450 = distinct !DISubprogram(name: "set_char_quoting", scope: !591, file: !591, line: 143, type: !2451, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!83, !2416, !4, !83}
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2460, !2461}
!2454 = !DILocalVariable(name: "o", arg: 1, scope: !2450, file: !591, line: 143, type: !2416)
!2455 = !DILocalVariable(name: "c", arg: 2, scope: !2450, file: !591, line: 143, type: !4)
!2456 = !DILocalVariable(name: "i", arg: 3, scope: !2450, file: !591, line: 143, type: !83)
!2457 = !DILocalVariable(name: "uc", scope: !2450, file: !591, line: 145, type: !144)
!2458 = !DILocalVariable(name: "p", scope: !2450, file: !591, line: 146, type: !2459)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2460 = !DILocalVariable(name: "shift", scope: !2450, file: !591, line: 148, type: !83)
!2461 = !DILocalVariable(name: "r", scope: !2450, file: !591, line: 149, type: !69)
!2462 = !DILocation(line: 0, scope: !2450)
!2463 = !DILocation(line: 147, column: 6, scope: !2450)
!2464 = !DILocation(line: 147, column: 41, scope: !2450)
!2465 = !DILocation(line: 147, column: 62, scope: !2450)
!2466 = !DILocation(line: 147, column: 57, scope: !2450)
!2467 = !DILocation(line: 148, column: 15, scope: !2450)
!2468 = !DILocation(line: 149, column: 21, scope: !2450)
!2469 = !DILocation(line: 149, column: 24, scope: !2450)
!2470 = !DILocation(line: 149, column: 34, scope: !2450)
!2471 = !DILocation(line: 150, column: 19, scope: !2450)
!2472 = !DILocation(line: 150, column: 24, scope: !2450)
!2473 = !DILocation(line: 150, column: 6, scope: !2450)
!2474 = !DILocation(line: 151, column: 3, scope: !2450)
!2475 = distinct !DISubprogram(name: "set_quoting_flags", scope: !591, file: !591, line: 159, type: !2476, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!83, !2416, !83}
!2478 = !{!2479, !2480, !2481}
!2479 = !DILocalVariable(name: "o", arg: 1, scope: !2475, file: !591, line: 159, type: !2416)
!2480 = !DILocalVariable(name: "i", arg: 2, scope: !2475, file: !591, line: 159, type: !83)
!2481 = !DILocalVariable(name: "r", scope: !2475, file: !591, line: 163, type: !83)
!2482 = !DILocation(line: 0, scope: !2475)
!2483 = !DILocation(line: 161, column: 8, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2475, file: !591, line: 161, column: 7)
!2485 = !DILocation(line: 161, column: 7, scope: !2475)
!2486 = !DILocation(line: 163, column: 14, scope: !2475)
!2487 = !{!2438, !998, i64 4}
!2488 = !DILocation(line: 164, column: 12, scope: !2475)
!2489 = !DILocation(line: 165, column: 3, scope: !2475)
!2490 = distinct !DISubprogram(name: "set_custom_quoting", scope: !591, file: !591, line: 169, type: !2491, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2416, !142, !142}
!2493 = !{!2494, !2495, !2496}
!2494 = !DILocalVariable(name: "o", arg: 1, scope: !2490, file: !591, line: 169, type: !2416)
!2495 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2490, file: !591, line: 170, type: !142)
!2496 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2490, file: !591, line: 170, type: !142)
!2497 = !DILocation(line: 0, scope: !2490)
!2498 = !DILocation(line: 172, column: 8, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2490, file: !591, line: 172, column: 7)
!2500 = !DILocation(line: 172, column: 7, scope: !2490)
!2501 = !DILocation(line: 174, column: 12, scope: !2490)
!2502 = !DILocation(line: 175, column: 8, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2490, file: !591, line: 175, column: 7)
!2504 = !DILocation(line: 175, column: 19, scope: !2503)
!2505 = !DILocation(line: 176, column: 5, scope: !2503)
!2506 = !DILocation(line: 177, column: 6, scope: !2490)
!2507 = !DILocation(line: 177, column: 17, scope: !2490)
!2508 = !{!2438, !928, i64 40}
!2509 = !DILocation(line: 178, column: 6, scope: !2490)
!2510 = !DILocation(line: 178, column: 18, scope: !2490)
!2511 = !{!2438, !928, i64 48}
!2512 = !DILocation(line: 179, column: 1, scope: !2490)
!2513 = !DISubprogram(name: "abort", scope: !1118, file: !1118, line: 598, type: !550, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2514 = distinct !DISubprogram(name: "quotearg_buffer", scope: !591, file: !591, line: 774, type: !2515, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!139, !136, !139, !142, !139, !2430}
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525}
!2518 = !DILocalVariable(name: "buffer", arg: 1, scope: !2514, file: !591, line: 774, type: !136)
!2519 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2514, file: !591, line: 774, type: !139)
!2520 = !DILocalVariable(name: "arg", arg: 3, scope: !2514, file: !591, line: 775, type: !142)
!2521 = !DILocalVariable(name: "argsize", arg: 4, scope: !2514, file: !591, line: 775, type: !139)
!2522 = !DILocalVariable(name: "o", arg: 5, scope: !2514, file: !591, line: 776, type: !2430)
!2523 = !DILocalVariable(name: "p", scope: !2514, file: !591, line: 778, type: !2430)
!2524 = !DILocalVariable(name: "saved_errno", scope: !2514, file: !591, line: 779, type: !83)
!2525 = !DILocalVariable(name: "r", scope: !2514, file: !591, line: 780, type: !139)
!2526 = !DILocation(line: 0, scope: !2514)
!2527 = !DILocation(line: 778, column: 37, scope: !2514)
!2528 = !DILocation(line: 779, column: 21, scope: !2514)
!2529 = !DILocation(line: 781, column: 43, scope: !2514)
!2530 = !DILocation(line: 781, column: 53, scope: !2514)
!2531 = !DILocation(line: 781, column: 63, scope: !2514)
!2532 = !DILocation(line: 782, column: 43, scope: !2514)
!2533 = !DILocation(line: 782, column: 58, scope: !2514)
!2534 = !DILocation(line: 780, column: 14, scope: !2514)
!2535 = !DILocation(line: 783, column: 9, scope: !2514)
!2536 = !DILocation(line: 784, column: 3, scope: !2514)
!2537 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !591, file: !591, line: 251, type: !2538, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2542)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!139, !136, !139, !142, !139, !617, !83, !2540, !142, !142}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2568, !2570, !2573, !2574, !2575, !2576, !2579, !2580, !2582, !2583, !2586, !2590, !2591, !2599, !2602, !2603, !2604}
!2543 = !DILocalVariable(name: "buffer", arg: 1, scope: !2537, file: !591, line: 251, type: !136)
!2544 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2537, file: !591, line: 251, type: !139)
!2545 = !DILocalVariable(name: "arg", arg: 3, scope: !2537, file: !591, line: 252, type: !142)
!2546 = !DILocalVariable(name: "argsize", arg: 4, scope: !2537, file: !591, line: 252, type: !139)
!2547 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2537, file: !591, line: 253, type: !617)
!2548 = !DILocalVariable(name: "flags", arg: 6, scope: !2537, file: !591, line: 253, type: !83)
!2549 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2537, file: !591, line: 254, type: !2540)
!2550 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2537, file: !591, line: 255, type: !142)
!2551 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2537, file: !591, line: 256, type: !142)
!2552 = !DILocalVariable(name: "unibyte_locale", scope: !2537, file: !591, line: 258, type: !168)
!2553 = !DILocalVariable(name: "len", scope: !2537, file: !591, line: 260, type: !139)
!2554 = !DILocalVariable(name: "orig_buffersize", scope: !2537, file: !591, line: 261, type: !139)
!2555 = !DILocalVariable(name: "quote_string", scope: !2537, file: !591, line: 262, type: !142)
!2556 = !DILocalVariable(name: "quote_string_len", scope: !2537, file: !591, line: 263, type: !139)
!2557 = !DILocalVariable(name: "backslash_escapes", scope: !2537, file: !591, line: 264, type: !168)
!2558 = !DILocalVariable(name: "elide_outer_quotes", scope: !2537, file: !591, line: 265, type: !168)
!2559 = !DILocalVariable(name: "encountered_single_quote", scope: !2537, file: !591, line: 266, type: !168)
!2560 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2537, file: !591, line: 267, type: !168)
!2561 = !DILabel(scope: !2537, name: "process_input", file: !591, line: 308)
!2562 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2537, file: !591, line: 309, type: !168)
!2563 = !DILocalVariable(name: "lq", scope: !2564, file: !591, line: 361, type: !142)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !591, line: 361, column: 11)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !591, line: 360, column: 13)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !591, line: 333, column: 7)
!2567 = distinct !DILexicalBlock(scope: !2537, file: !591, line: 312, column: 5)
!2568 = !DILocalVariable(name: "i", scope: !2569, file: !591, line: 395, type: !139)
!2569 = distinct !DILexicalBlock(scope: !2537, file: !591, line: 395, column: 3)
!2570 = !DILocalVariable(name: "is_right_quote", scope: !2571, file: !591, line: 397, type: !168)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !591, line: 396, column: 5)
!2572 = distinct !DILexicalBlock(scope: !2569, file: !591, line: 395, column: 3)
!2573 = !DILocalVariable(name: "escaping", scope: !2571, file: !591, line: 398, type: !168)
!2574 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2571, file: !591, line: 399, type: !168)
!2575 = !DILocalVariable(name: "c", scope: !2571, file: !591, line: 417, type: !144)
!2576 = !DILabel(scope: !2577, name: "c_and_shell_escape", file: !591, line: 502)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !591, line: 478, column: 9)
!2578 = distinct !DILexicalBlock(scope: !2571, file: !591, line: 419, column: 9)
!2579 = !DILabel(scope: !2577, name: "c_escape", file: !591, line: 507)
!2580 = !DILocalVariable(name: "m", scope: !2581, file: !591, line: 598, type: !139)
!2581 = distinct !DILexicalBlock(scope: !2578, file: !591, line: 596, column: 11)
!2582 = !DILocalVariable(name: "printable", scope: !2581, file: !591, line: 600, type: !168)
!2583 = !DILocalVariable(name: "mbs", scope: !2584, file: !591, line: 609, type: !666)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !591, line: 608, column: 15)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !591, line: 602, column: 17)
!2586 = !DILocalVariable(name: "w", scope: !2587, file: !591, line: 618, type: !432)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !591, line: 617, column: 19)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !591, line: 616, column: 17)
!2589 = distinct !DILexicalBlock(scope: !2584, file: !591, line: 616, column: 17)
!2590 = !DILocalVariable(name: "bytes", scope: !2587, file: !591, line: 619, type: !139)
!2591 = !DILocalVariable(name: "j", scope: !2592, file: !591, line: 648, type: !139)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !591, line: 648, column: 29)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !591, line: 647, column: 27)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !591, line: 645, column: 29)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !591, line: 636, column: 23)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !591, line: 628, column: 30)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !591, line: 623, column: 30)
!2598 = distinct !DILexicalBlock(scope: !2587, file: !591, line: 621, column: 25)
!2599 = !DILocalVariable(name: "ilim", scope: !2600, file: !591, line: 674, type: !139)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !591, line: 671, column: 15)
!2601 = distinct !DILexicalBlock(scope: !2581, file: !591, line: 670, column: 17)
!2602 = !DILabel(scope: !2571, name: "store_escape", file: !591, line: 709)
!2603 = !DILabel(scope: !2571, name: "store_c", file: !591, line: 712)
!2604 = !DILabel(scope: !2537, name: "force_outer_quoting_style", file: !591, line: 753)
!2605 = distinct !DIAssignID()
!2606 = distinct !DIAssignID()
!2607 = distinct !DIAssignID()
!2608 = distinct !DIAssignID()
!2609 = distinct !DIAssignID()
!2610 = !DILocation(line: 0, scope: !2584)
!2611 = distinct !DIAssignID()
!2612 = !DILocation(line: 0, scope: !2587)
!2613 = !DILocation(line: 0, scope: !2537)
!2614 = !DILocation(line: 258, column: 25, scope: !2537)
!2615 = !DILocation(line: 258, column: 36, scope: !2537)
!2616 = !DILocation(line: 267, column: 3, scope: !2537)
!2617 = !DILocation(line: 261, column: 10, scope: !2537)
!2618 = !DILocation(line: 262, column: 15, scope: !2537)
!2619 = !DILocation(line: 263, column: 10, scope: !2537)
!2620 = !DILocation(line: 308, column: 2, scope: !2537)
!2621 = !DILocation(line: 311, column: 3, scope: !2537)
!2622 = !DILocation(line: 318, column: 11, scope: !2567)
!2623 = !DILocation(line: 319, column: 9, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !591, line: 319, column: 9)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !591, line: 319, column: 9)
!2626 = distinct !DILexicalBlock(scope: !2567, file: !591, line: 318, column: 11)
!2627 = !DILocation(line: 319, column: 9, scope: !2625)
!2628 = !DILocation(line: 0, scope: !657, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 357, column: 26, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !591, line: 335, column: 11)
!2631 = distinct !DILexicalBlock(scope: !2566, file: !591, line: 334, column: 13)
!2632 = !DILocation(line: 199, column: 29, scope: !657, inlinedAt: !2629)
!2633 = !DILocation(line: 201, column: 19, scope: !2634, inlinedAt: !2629)
!2634 = distinct !DILexicalBlock(scope: !657, file: !591, line: 201, column: 7)
!2635 = !DILocation(line: 201, column: 7, scope: !657, inlinedAt: !2629)
!2636 = !DILocation(line: 229, column: 3, scope: !657, inlinedAt: !2629)
!2637 = !DILocation(line: 230, column: 3, scope: !657, inlinedAt: !2629)
!2638 = !DILocalVariable(name: "ps", arg: 1, scope: !2639, file: !2391, line: 1135, type: !2642)
!2639 = distinct !DISubprogram(name: "mbszero", scope: !2391, file: !2391, line: 1135, type: !2640, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2643)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !2642}
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!2643 = !{!2638}
!2644 = !DILocation(line: 0, scope: !2639, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 230, column: 18, scope: !657, inlinedAt: !2629)
!2646 = !DILocalVariable(name: "__dest", arg: 1, scope: !2647, file: !1304, line: 57, type: !137)
!2647 = distinct !DISubprogram(name: "memset", scope: !1304, file: !1304, line: 57, type: !2400, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2648)
!2648 = !{!2646, !2649, !2650}
!2649 = !DILocalVariable(name: "__ch", arg: 2, scope: !2647, file: !1304, line: 57, type: !83)
!2650 = !DILocalVariable(name: "__len", arg: 3, scope: !2647, file: !1304, line: 57, type: !139)
!2651 = !DILocation(line: 0, scope: !2647, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 1137, column: 3, scope: !2639, inlinedAt: !2645)
!2653 = !DILocation(line: 59, column: 10, scope: !2647, inlinedAt: !2652)
!2654 = !DILocation(line: 231, column: 7, scope: !2655, inlinedAt: !2629)
!2655 = distinct !DILexicalBlock(scope: !657, file: !591, line: 231, column: 7)
!2656 = !DILocation(line: 231, column: 40, scope: !2655, inlinedAt: !2629)
!2657 = !DILocation(line: 231, column: 45, scope: !2655, inlinedAt: !2629)
!2658 = !DILocation(line: 235, column: 1, scope: !657, inlinedAt: !2629)
!2659 = !DILocation(line: 0, scope: !657, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 358, column: 27, scope: !2630)
!2661 = !DILocation(line: 199, column: 29, scope: !657, inlinedAt: !2660)
!2662 = !DILocation(line: 201, column: 19, scope: !2634, inlinedAt: !2660)
!2663 = !DILocation(line: 201, column: 7, scope: !657, inlinedAt: !2660)
!2664 = !DILocation(line: 229, column: 3, scope: !657, inlinedAt: !2660)
!2665 = !DILocation(line: 230, column: 3, scope: !657, inlinedAt: !2660)
!2666 = !DILocation(line: 0, scope: !2639, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 230, column: 18, scope: !657, inlinedAt: !2660)
!2668 = !DILocation(line: 0, scope: !2647, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 1137, column: 3, scope: !2639, inlinedAt: !2667)
!2670 = !DILocation(line: 59, column: 10, scope: !2647, inlinedAt: !2669)
!2671 = !DILocation(line: 231, column: 7, scope: !2655, inlinedAt: !2660)
!2672 = !DILocation(line: 231, column: 40, scope: !2655, inlinedAt: !2660)
!2673 = !DILocation(line: 231, column: 45, scope: !2655, inlinedAt: !2660)
!2674 = !DILocation(line: 235, column: 1, scope: !657, inlinedAt: !2660)
!2675 = !DILocation(line: 360, column: 13, scope: !2566)
!2676 = !DILocation(line: 0, scope: !2564)
!2677 = !DILocation(line: 361, column: 45, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2564, file: !591, line: 361, column: 11)
!2679 = !DILocation(line: 361, column: 11, scope: !2564)
!2680 = !DILocation(line: 362, column: 13, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !591, line: 362, column: 13)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !591, line: 362, column: 13)
!2683 = !DILocation(line: 362, column: 13, scope: !2682)
!2684 = !DILocation(line: 361, column: 52, scope: !2678)
!2685 = distinct !{!2685, !2679, !2686, !1044}
!2686 = !DILocation(line: 362, column: 13, scope: !2564)
!2687 = !DILocation(line: 365, column: 28, scope: !2566)
!2688 = !DILocation(line: 260, column: 10, scope: !2537)
!2689 = !DILocation(line: 367, column: 7, scope: !2567)
!2690 = !DILocation(line: 373, column: 7, scope: !2567)
!2691 = !DILocation(line: 381, column: 11, scope: !2567)
!2692 = !DILocation(line: 376, column: 11, scope: !2567)
!2693 = !DILocation(line: 382, column: 9, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !591, line: 382, column: 9)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !591, line: 382, column: 9)
!2696 = distinct !DILexicalBlock(scope: !2567, file: !591, line: 381, column: 11)
!2697 = !DILocation(line: 382, column: 9, scope: !2695)
!2698 = !DILocation(line: 389, column: 7, scope: !2567)
!2699 = !DILocation(line: 392, column: 7, scope: !2567)
!2700 = !DILocation(line: 0, scope: !2569)
!2701 = !DILocation(line: 395, column: 8, scope: !2569)
!2702 = !DILocation(line: 395, scope: !2569)
!2703 = !DILocation(line: 395, column: 34, scope: !2572)
!2704 = !DILocation(line: 395, column: 26, scope: !2572)
!2705 = !DILocation(line: 395, column: 48, scope: !2572)
!2706 = !DILocation(line: 395, column: 55, scope: !2572)
!2707 = !DILocation(line: 395, column: 3, scope: !2569)
!2708 = !DILocation(line: 395, column: 67, scope: !2572)
!2709 = !DILocation(line: 0, scope: !2571)
!2710 = !DILocation(line: 402, column: 11, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2571, file: !591, line: 401, column: 11)
!2712 = !DILocation(line: 404, column: 17, scope: !2711)
!2713 = !DILocation(line: 405, column: 39, scope: !2711)
!2714 = !DILocation(line: 409, column: 32, scope: !2711)
!2715 = !DILocation(line: 405, column: 19, scope: !2711)
!2716 = !DILocation(line: 405, column: 15, scope: !2711)
!2717 = !DILocation(line: 410, column: 11, scope: !2711)
!2718 = !DILocation(line: 410, column: 25, scope: !2711)
!2719 = !DILocalVariable(name: "__s1", arg: 1, scope: !2720, file: !1010, line: 974, type: !1142)
!2720 = distinct !DISubprogram(name: "memeq", scope: !1010, file: !1010, line: 974, type: !2360, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2721)
!2721 = !{!2719, !2722, !2723}
!2722 = !DILocalVariable(name: "__s2", arg: 2, scope: !2720, file: !1010, line: 974, type: !1142)
!2723 = !DILocalVariable(name: "__n", arg: 3, scope: !2720, file: !1010, line: 974, type: !139)
!2724 = !DILocation(line: 0, scope: !2720, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 410, column: 14, scope: !2711)
!2726 = !DILocation(line: 976, column: 11, scope: !2720, inlinedAt: !2725)
!2727 = !DILocation(line: 976, column: 10, scope: !2720, inlinedAt: !2725)
!2728 = !DILocation(line: 401, column: 11, scope: !2571)
!2729 = !DILocation(line: 417, column: 25, scope: !2571)
!2730 = !DILocation(line: 418, column: 7, scope: !2571)
!2731 = !DILocation(line: 421, column: 15, scope: !2578)
!2732 = !DILocation(line: 423, column: 15, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !591, line: 423, column: 15)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !591, line: 422, column: 13)
!2735 = distinct !DILexicalBlock(scope: !2578, file: !591, line: 421, column: 15)
!2736 = !DILocation(line: 423, column: 15, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2733, file: !591, line: 423, column: 15)
!2738 = !DILocation(line: 423, column: 15, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !591, line: 423, column: 15)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !591, line: 423, column: 15)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !591, line: 423, column: 15)
!2742 = !DILocation(line: 423, column: 15, scope: !2740)
!2743 = !DILocation(line: 423, column: 15, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !591, line: 423, column: 15)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !591, line: 423, column: 15)
!2746 = !DILocation(line: 423, column: 15, scope: !2745)
!2747 = !DILocation(line: 423, column: 15, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !591, line: 423, column: 15)
!2749 = distinct !DILexicalBlock(scope: !2741, file: !591, line: 423, column: 15)
!2750 = !DILocation(line: 423, column: 15, scope: !2749)
!2751 = !DILocation(line: 423, column: 15, scope: !2741)
!2752 = !DILocation(line: 423, column: 15, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !591, line: 423, column: 15)
!2754 = distinct !DILexicalBlock(scope: !2733, file: !591, line: 423, column: 15)
!2755 = !DILocation(line: 423, column: 15, scope: !2754)
!2756 = !DILocation(line: 431, column: 19, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2734, file: !591, line: 430, column: 19)
!2758 = !DILocation(line: 431, column: 24, scope: !2757)
!2759 = !DILocation(line: 431, column: 28, scope: !2757)
!2760 = !DILocation(line: 431, column: 38, scope: !2757)
!2761 = !DILocation(line: 431, column: 48, scope: !2757)
!2762 = !DILocation(line: 431, column: 59, scope: !2757)
!2763 = !DILocation(line: 433, column: 19, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !591, line: 433, column: 19)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !591, line: 433, column: 19)
!2766 = distinct !DILexicalBlock(scope: !2757, file: !591, line: 432, column: 17)
!2767 = !DILocation(line: 433, column: 19, scope: !2765)
!2768 = !DILocation(line: 434, column: 19, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !591, line: 434, column: 19)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !591, line: 434, column: 19)
!2771 = !DILocation(line: 434, column: 19, scope: !2770)
!2772 = !DILocation(line: 435, column: 17, scope: !2766)
!2773 = !DILocation(line: 442, column: 20, scope: !2735)
!2774 = !DILocation(line: 447, column: 11, scope: !2578)
!2775 = !DILocation(line: 450, column: 19, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2578, file: !591, line: 448, column: 13)
!2777 = !DILocation(line: 456, column: 19, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2776, file: !591, line: 455, column: 19)
!2779 = !DILocation(line: 456, column: 24, scope: !2778)
!2780 = !DILocation(line: 456, column: 28, scope: !2778)
!2781 = !DILocation(line: 456, column: 38, scope: !2778)
!2782 = !DILocation(line: 456, column: 41, scope: !2778)
!2783 = !DILocation(line: 456, column: 52, scope: !2778)
!2784 = !DILocation(line: 455, column: 19, scope: !2776)
!2785 = !DILocation(line: 457, column: 25, scope: !2778)
!2786 = !DILocation(line: 457, column: 17, scope: !2778)
!2787 = !DILocation(line: 464, column: 25, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2778, file: !591, line: 458, column: 19)
!2789 = !DILocation(line: 468, column: 21, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !591, line: 468, column: 21)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !591, line: 468, column: 21)
!2792 = !DILocation(line: 468, column: 21, scope: !2791)
!2793 = !DILocation(line: 469, column: 21, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !591, line: 469, column: 21)
!2795 = distinct !DILexicalBlock(scope: !2788, file: !591, line: 469, column: 21)
!2796 = !DILocation(line: 469, column: 21, scope: !2795)
!2797 = !DILocation(line: 470, column: 21, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !591, line: 470, column: 21)
!2799 = distinct !DILexicalBlock(scope: !2788, file: !591, line: 470, column: 21)
!2800 = !DILocation(line: 470, column: 21, scope: !2799)
!2801 = !DILocation(line: 471, column: 21, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !591, line: 471, column: 21)
!2803 = distinct !DILexicalBlock(scope: !2788, file: !591, line: 471, column: 21)
!2804 = !DILocation(line: 471, column: 21, scope: !2803)
!2805 = !DILocation(line: 472, column: 21, scope: !2788)
!2806 = !DILocation(line: 482, column: 33, scope: !2577)
!2807 = !DILocation(line: 483, column: 33, scope: !2577)
!2808 = !DILocation(line: 485, column: 33, scope: !2577)
!2809 = !DILocation(line: 486, column: 33, scope: !2577)
!2810 = !DILocation(line: 487, column: 33, scope: !2577)
!2811 = !DILocation(line: 490, column: 17, scope: !2577)
!2812 = !DILocation(line: 492, column: 21, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !591, line: 491, column: 15)
!2814 = distinct !DILexicalBlock(scope: !2577, file: !591, line: 490, column: 17)
!2815 = !DILocation(line: 499, column: 35, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2577, file: !591, line: 499, column: 17)
!2817 = !DILocation(line: 0, scope: !2577)
!2818 = !DILocation(line: 502, column: 11, scope: !2577)
!2819 = !DILocation(line: 504, column: 17, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2577, file: !591, line: 503, column: 17)
!2821 = !DILocation(line: 507, column: 11, scope: !2577)
!2822 = !DILocation(line: 508, column: 17, scope: !2577)
!2823 = !DILocation(line: 517, column: 15, scope: !2578)
!2824 = !DILocation(line: 517, column: 40, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2578, file: !591, line: 517, column: 15)
!2826 = !DILocation(line: 517, column: 47, scope: !2825)
!2827 = !DILocation(line: 517, column: 18, scope: !2825)
!2828 = !DILocation(line: 521, column: 17, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2578, file: !591, line: 521, column: 15)
!2830 = !DILocation(line: 521, column: 15, scope: !2578)
!2831 = !DILocation(line: 525, column: 11, scope: !2578)
!2832 = !DILocation(line: 537, column: 15, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2578, file: !591, line: 536, column: 15)
!2834 = !DILocation(line: 536, column: 15, scope: !2578)
!2835 = !DILocation(line: 544, column: 15, scope: !2578)
!2836 = !DILocation(line: 546, column: 19, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !591, line: 545, column: 13)
!2838 = distinct !DILexicalBlock(scope: !2578, file: !591, line: 544, column: 15)
!2839 = !DILocation(line: 549, column: 19, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2837, file: !591, line: 549, column: 19)
!2841 = !DILocation(line: 549, column: 30, scope: !2840)
!2842 = !DILocation(line: 558, column: 15, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !591, line: 558, column: 15)
!2844 = distinct !DILexicalBlock(scope: !2837, file: !591, line: 558, column: 15)
!2845 = !DILocation(line: 558, column: 15, scope: !2844)
!2846 = !DILocation(line: 559, column: 15, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !591, line: 559, column: 15)
!2848 = distinct !DILexicalBlock(scope: !2837, file: !591, line: 559, column: 15)
!2849 = !DILocation(line: 559, column: 15, scope: !2848)
!2850 = !DILocation(line: 560, column: 15, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !591, line: 560, column: 15)
!2852 = distinct !DILexicalBlock(scope: !2837, file: !591, line: 560, column: 15)
!2853 = !DILocation(line: 560, column: 15, scope: !2852)
!2854 = !DILocation(line: 562, column: 13, scope: !2837)
!2855 = !DILocation(line: 602, column: 17, scope: !2581)
!2856 = !DILocation(line: 0, scope: !2581)
!2857 = !DILocation(line: 605, column: 29, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2585, file: !591, line: 603, column: 15)
!2859 = !DILocation(line: 605, column: 41, scope: !2858)
!2860 = !DILocation(line: 606, column: 15, scope: !2858)
!2861 = !DILocation(line: 609, column: 17, scope: !2584)
!2862 = !DILocation(line: 0, scope: !2639, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 609, column: 32, scope: !2584)
!2864 = !DILocation(line: 0, scope: !2647, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1137, column: 3, scope: !2639, inlinedAt: !2863)
!2866 = !DILocation(line: 59, column: 10, scope: !2647, inlinedAt: !2865)
!2867 = !DILocation(line: 613, column: 29, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2584, file: !591, line: 613, column: 21)
!2869 = !DILocation(line: 613, column: 21, scope: !2584)
!2870 = !DILocation(line: 614, column: 29, scope: !2868)
!2871 = !DILocation(line: 614, column: 19, scope: !2868)
!2872 = !DILocation(line: 618, column: 21, scope: !2587)
!2873 = !DILocation(line: 620, column: 54, scope: !2587)
!2874 = !DILocation(line: 619, column: 36, scope: !2587)
!2875 = !DILocation(line: 621, column: 25, scope: !2587)
!2876 = !DILocation(line: 631, column: 38, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2596, file: !591, line: 629, column: 23)
!2878 = !DILocation(line: 631, column: 48, scope: !2877)
!2879 = !DILocation(line: 631, column: 25, scope: !2877)
!2880 = !DILocation(line: 626, column: 25, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2597, file: !591, line: 624, column: 23)
!2882 = !DILocation(line: 631, column: 51, scope: !2877)
!2883 = !DILocation(line: 632, column: 28, scope: !2877)
!2884 = !DILocation(line: 631, column: 34, scope: !2877)
!2885 = distinct !{!2885, !2879, !2883, !1044}
!2886 = !DILocation(line: 0, scope: !2592)
!2887 = !DILocation(line: 646, column: 29, scope: !2594)
!2888 = !DILocation(line: 648, column: 29, scope: !2592)
!2889 = !DILocation(line: 649, column: 39, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2592, file: !591, line: 648, column: 29)
!2891 = !DILocation(line: 649, column: 31, scope: !2890)
!2892 = !DILocation(line: 648, column: 60, scope: !2890)
!2893 = !DILocation(line: 648, column: 50, scope: !2890)
!2894 = distinct !{!2894, !2888, !2895, !1044}
!2895 = !DILocation(line: 654, column: 33, scope: !2592)
!2896 = !DILocation(line: 657, column: 43, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2595, file: !591, line: 657, column: 29)
!2898 = !DILocalVariable(name: "wc", arg: 1, scope: !2899, file: !1447, line: 865, type: !1516)
!2899 = distinct !DISubprogram(name: "c32isprint", scope: !1447, file: !1447, line: 865, type: !1514, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2900)
!2900 = !{!2898}
!2901 = !DILocation(line: 0, scope: !2899, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 657, column: 31, scope: !2897)
!2903 = !DILocation(line: 871, column: 10, scope: !2899, inlinedAt: !2902)
!2904 = !DILocation(line: 657, column: 31, scope: !2897)
!2905 = !DILocation(line: 664, column: 23, scope: !2587)
!2906 = !DILocation(line: 665, column: 19, scope: !2588)
!2907 = !DILocation(line: 666, column: 15, scope: !2585)
!2908 = !DILocation(line: 753, column: 2, scope: !2537)
!2909 = !DILocation(line: 756, column: 51, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2537, file: !591, line: 756, column: 7)
!2911 = !DILocation(line: 0, scope: !2585)
!2912 = !DILocation(line: 670, column: 19, scope: !2601)
!2913 = !DILocation(line: 670, column: 23, scope: !2601)
!2914 = !DILocation(line: 674, column: 33, scope: !2600)
!2915 = !DILocation(line: 0, scope: !2600)
!2916 = !DILocation(line: 676, column: 17, scope: !2600)
!2917 = !DILocation(line: 678, column: 43, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !591, line: 678, column: 25)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !591, line: 677, column: 19)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !591, line: 676, column: 17)
!2921 = distinct !DILexicalBlock(scope: !2600, file: !591, line: 676, column: 17)
!2922 = !DILocation(line: 680, column: 25, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !591, line: 680, column: 25)
!2924 = distinct !DILexicalBlock(scope: !2918, file: !591, line: 679, column: 23)
!2925 = !DILocation(line: 680, column: 25, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2923, file: !591, line: 680, column: 25)
!2927 = !DILocation(line: 680, column: 25, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !591, line: 680, column: 25)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !591, line: 680, column: 25)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !591, line: 680, column: 25)
!2931 = !DILocation(line: 680, column: 25, scope: !2929)
!2932 = !DILocation(line: 680, column: 25, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !591, line: 680, column: 25)
!2934 = distinct !DILexicalBlock(scope: !2930, file: !591, line: 680, column: 25)
!2935 = !DILocation(line: 680, column: 25, scope: !2934)
!2936 = !DILocation(line: 680, column: 25, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !591, line: 680, column: 25)
!2938 = distinct !DILexicalBlock(scope: !2930, file: !591, line: 680, column: 25)
!2939 = !DILocation(line: 680, column: 25, scope: !2938)
!2940 = !DILocation(line: 680, column: 25, scope: !2930)
!2941 = !DILocation(line: 680, column: 25, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !591, line: 680, column: 25)
!2943 = distinct !DILexicalBlock(scope: !2923, file: !591, line: 680, column: 25)
!2944 = !DILocation(line: 680, column: 25, scope: !2943)
!2945 = !DILocation(line: 681, column: 25, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !591, line: 681, column: 25)
!2947 = distinct !DILexicalBlock(scope: !2924, file: !591, line: 681, column: 25)
!2948 = !DILocation(line: 681, column: 25, scope: !2947)
!2949 = !DILocation(line: 682, column: 25, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !591, line: 682, column: 25)
!2951 = distinct !DILexicalBlock(scope: !2924, file: !591, line: 682, column: 25)
!2952 = !DILocation(line: 682, column: 25, scope: !2951)
!2953 = !DILocation(line: 683, column: 38, scope: !2924)
!2954 = !DILocation(line: 683, column: 33, scope: !2924)
!2955 = !DILocation(line: 684, column: 23, scope: !2924)
!2956 = !DILocation(line: 685, column: 30, scope: !2918)
!2957 = !DILocation(line: 687, column: 25, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !591, line: 687, column: 25)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !591, line: 687, column: 25)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !591, line: 686, column: 23)
!2961 = distinct !DILexicalBlock(scope: !2918, file: !591, line: 685, column: 30)
!2962 = !DILocation(line: 687, column: 25, scope: !2959)
!2963 = !DILocation(line: 689, column: 23, scope: !2960)
!2964 = !DILocation(line: 690, column: 35, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2919, file: !591, line: 690, column: 25)
!2966 = !DILocation(line: 690, column: 30, scope: !2965)
!2967 = !DILocation(line: 690, column: 25, scope: !2919)
!2968 = !DILocation(line: 692, column: 21, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !591, line: 692, column: 21)
!2970 = distinct !DILexicalBlock(scope: !2919, file: !591, line: 692, column: 21)
!2971 = !DILocation(line: 692, column: 21, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !591, line: 692, column: 21)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !591, line: 692, column: 21)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !591, line: 692, column: 21)
!2975 = !DILocation(line: 692, column: 21, scope: !2973)
!2976 = !DILocation(line: 692, column: 21, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !591, line: 692, column: 21)
!2978 = distinct !DILexicalBlock(scope: !2974, file: !591, line: 692, column: 21)
!2979 = !DILocation(line: 692, column: 21, scope: !2978)
!2980 = !DILocation(line: 692, column: 21, scope: !2974)
!2981 = !DILocation(line: 0, scope: !2919)
!2982 = !DILocation(line: 693, column: 21, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !591, line: 693, column: 21)
!2984 = distinct !DILexicalBlock(scope: !2919, file: !591, line: 693, column: 21)
!2985 = !DILocation(line: 693, column: 21, scope: !2984)
!2986 = !DILocation(line: 694, column: 25, scope: !2919)
!2987 = !DILocation(line: 676, column: 17, scope: !2920)
!2988 = distinct !{!2988, !2989, !2990}
!2989 = !DILocation(line: 676, column: 17, scope: !2921)
!2990 = !DILocation(line: 695, column: 19, scope: !2921)
!2991 = !DILocation(line: 409, column: 30, scope: !2711)
!2992 = !DILocation(line: 702, column: 34, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2571, file: !591, line: 702, column: 11)
!2994 = !DILocation(line: 704, column: 14, scope: !2993)
!2995 = !DILocation(line: 705, column: 14, scope: !2993)
!2996 = !DILocation(line: 705, column: 35, scope: !2993)
!2997 = !DILocation(line: 705, column: 17, scope: !2993)
!2998 = !DILocation(line: 705, column: 47, scope: !2993)
!2999 = !DILocation(line: 705, column: 65, scope: !2993)
!3000 = !DILocation(line: 706, column: 11, scope: !2993)
!3001 = !DILocation(line: 702, column: 11, scope: !2571)
!3002 = !DILocation(line: 395, column: 15, scope: !2569)
!3003 = !DILocation(line: 709, column: 5, scope: !2571)
!3004 = !DILocation(line: 710, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2571, file: !591, line: 710, column: 7)
!3006 = !DILocation(line: 710, column: 7, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3005, file: !591, line: 710, column: 7)
!3008 = !DILocation(line: 710, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !591, line: 710, column: 7)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !591, line: 710, column: 7)
!3011 = distinct !DILexicalBlock(scope: !3007, file: !591, line: 710, column: 7)
!3012 = !DILocation(line: 710, column: 7, scope: !3010)
!3013 = !DILocation(line: 710, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !591, line: 710, column: 7)
!3015 = distinct !DILexicalBlock(scope: !3011, file: !591, line: 710, column: 7)
!3016 = !DILocation(line: 710, column: 7, scope: !3015)
!3017 = !DILocation(line: 710, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !591, line: 710, column: 7)
!3019 = distinct !DILexicalBlock(scope: !3011, file: !591, line: 710, column: 7)
!3020 = !DILocation(line: 710, column: 7, scope: !3019)
!3021 = !DILocation(line: 710, column: 7, scope: !3011)
!3022 = !DILocation(line: 710, column: 7, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !591, line: 710, column: 7)
!3024 = distinct !DILexicalBlock(scope: !3005, file: !591, line: 710, column: 7)
!3025 = !DILocation(line: 710, column: 7, scope: !3024)
!3026 = !DILocation(line: 712, column: 5, scope: !2571)
!3027 = !DILocation(line: 713, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !591, line: 713, column: 7)
!3029 = distinct !DILexicalBlock(scope: !2571, file: !591, line: 713, column: 7)
!3030 = !DILocation(line: 417, column: 21, scope: !2571)
!3031 = !DILocation(line: 713, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !591, line: 713, column: 7)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !591, line: 713, column: 7)
!3034 = distinct !DILexicalBlock(scope: !3028, file: !591, line: 713, column: 7)
!3035 = !DILocation(line: 713, column: 7, scope: !3033)
!3036 = !DILocation(line: 713, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !591, line: 713, column: 7)
!3038 = distinct !DILexicalBlock(scope: !3034, file: !591, line: 713, column: 7)
!3039 = !DILocation(line: 713, column: 7, scope: !3038)
!3040 = !DILocation(line: 713, column: 7, scope: !3034)
!3041 = !DILocation(line: 714, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !591, line: 714, column: 7)
!3043 = distinct !DILexicalBlock(scope: !2571, file: !591, line: 714, column: 7)
!3044 = !DILocation(line: 714, column: 7, scope: !3043)
!3045 = !DILocation(line: 716, column: 11, scope: !2571)
!3046 = !DILocation(line: 718, column: 5, scope: !2572)
!3047 = !DILocation(line: 395, column: 82, scope: !2572)
!3048 = !DILocation(line: 395, column: 3, scope: !2572)
!3049 = distinct !{!3049, !2707, !3050, !1044}
!3050 = !DILocation(line: 718, column: 5, scope: !2569)
!3051 = !DILocation(line: 720, column: 11, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2537, file: !591, line: 720, column: 7)
!3053 = !DILocation(line: 720, column: 16, scope: !3052)
!3054 = !DILocation(line: 728, column: 51, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2537, file: !591, line: 728, column: 7)
!3056 = !DILocation(line: 731, column: 11, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3055, file: !591, line: 730, column: 5)
!3058 = !DILocation(line: 732, column: 16, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3057, file: !591, line: 731, column: 11)
!3060 = !DILocation(line: 732, column: 9, scope: !3059)
!3061 = !DILocation(line: 736, column: 18, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3059, file: !591, line: 736, column: 16)
!3063 = !DILocation(line: 736, column: 29, scope: !3062)
!3064 = !DILocation(line: 745, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2537, file: !591, line: 745, column: 7)
!3066 = !DILocation(line: 745, column: 20, scope: !3065)
!3067 = !DILocation(line: 746, column: 12, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !591, line: 746, column: 5)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !591, line: 746, column: 5)
!3070 = !DILocation(line: 746, column: 5, scope: !3069)
!3071 = !DILocation(line: 747, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !591, line: 747, column: 7)
!3073 = distinct !DILexicalBlock(scope: !3068, file: !591, line: 747, column: 7)
!3074 = !DILocation(line: 747, column: 7, scope: !3073)
!3075 = !DILocation(line: 746, column: 39, scope: !3068)
!3076 = distinct !{!3076, !3070, !3077, !1044}
!3077 = !DILocation(line: 747, column: 7, scope: !3069)
!3078 = !DILocation(line: 749, column: 11, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !2537, file: !591, line: 749, column: 7)
!3080 = !DILocation(line: 749, column: 7, scope: !2537)
!3081 = !DILocation(line: 750, column: 5, scope: !3079)
!3082 = !DILocation(line: 750, column: 17, scope: !3079)
!3083 = !DILocation(line: 756, column: 21, scope: !2910)
!3084 = !DILocation(line: 760, column: 42, scope: !2537)
!3085 = !DILocation(line: 758, column: 10, scope: !2537)
!3086 = !DILocation(line: 758, column: 3, scope: !2537)
!3087 = !DILocation(line: 762, column: 1, scope: !2537)
!3088 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1118, file: !1118, line: 98, type: !3089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!139}
!3091 = !DISubprogram(name: "strlen", scope: !1114, file: !1114, line: 407, type: !3092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!141, !142}
!3094 = !DISubprogram(name: "iswprint", scope: !1748, file: !1748, line: 120, type: !1514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3095 = distinct !DISubprogram(name: "quotearg_alloc", scope: !591, file: !591, line: 788, type: !3096, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!136, !142, !139, !2430}
!3098 = !{!3099, !3100, !3101}
!3099 = !DILocalVariable(name: "arg", arg: 1, scope: !3095, file: !591, line: 788, type: !142)
!3100 = !DILocalVariable(name: "argsize", arg: 2, scope: !3095, file: !591, line: 788, type: !139)
!3101 = !DILocalVariable(name: "o", arg: 3, scope: !3095, file: !591, line: 789, type: !2430)
!3102 = !DILocation(line: 0, scope: !3095)
!3103 = !DILocalVariable(name: "arg", arg: 1, scope: !3104, file: !591, line: 801, type: !142)
!3104 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !591, file: !591, line: 801, type: !3105, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!136, !142, !139, !844, !2430}
!3107 = !{!3103, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115}
!3108 = !DILocalVariable(name: "argsize", arg: 2, scope: !3104, file: !591, line: 801, type: !139)
!3109 = !DILocalVariable(name: "size", arg: 3, scope: !3104, file: !591, line: 801, type: !844)
!3110 = !DILocalVariable(name: "o", arg: 4, scope: !3104, file: !591, line: 802, type: !2430)
!3111 = !DILocalVariable(name: "p", scope: !3104, file: !591, line: 804, type: !2430)
!3112 = !DILocalVariable(name: "saved_errno", scope: !3104, file: !591, line: 805, type: !83)
!3113 = !DILocalVariable(name: "flags", scope: !3104, file: !591, line: 807, type: !83)
!3114 = !DILocalVariable(name: "bufsize", scope: !3104, file: !591, line: 808, type: !139)
!3115 = !DILocalVariable(name: "buf", scope: !3104, file: !591, line: 812, type: !136)
!3116 = !DILocation(line: 0, scope: !3104, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 791, column: 10, scope: !3095)
!3118 = !DILocation(line: 804, column: 37, scope: !3104, inlinedAt: !3117)
!3119 = !DILocation(line: 805, column: 21, scope: !3104, inlinedAt: !3117)
!3120 = !DILocation(line: 807, column: 18, scope: !3104, inlinedAt: !3117)
!3121 = !DILocation(line: 807, column: 24, scope: !3104, inlinedAt: !3117)
!3122 = !DILocation(line: 808, column: 72, scope: !3104, inlinedAt: !3117)
!3123 = !DILocation(line: 809, column: 56, scope: !3104, inlinedAt: !3117)
!3124 = !DILocation(line: 810, column: 49, scope: !3104, inlinedAt: !3117)
!3125 = !DILocation(line: 811, column: 49, scope: !3104, inlinedAt: !3117)
!3126 = !DILocation(line: 808, column: 20, scope: !3104, inlinedAt: !3117)
!3127 = !DILocation(line: 811, column: 62, scope: !3104, inlinedAt: !3117)
!3128 = !DILocation(line: 812, column: 15, scope: !3104, inlinedAt: !3117)
!3129 = !DILocation(line: 813, column: 60, scope: !3104, inlinedAt: !3117)
!3130 = !DILocation(line: 815, column: 32, scope: !3104, inlinedAt: !3117)
!3131 = !DILocation(line: 815, column: 47, scope: !3104, inlinedAt: !3117)
!3132 = !DILocation(line: 813, column: 3, scope: !3104, inlinedAt: !3117)
!3133 = !DILocation(line: 816, column: 9, scope: !3104, inlinedAt: !3117)
!3134 = !DILocation(line: 791, column: 3, scope: !3095)
!3135 = !DILocation(line: 0, scope: !3104)
!3136 = !DILocation(line: 804, column: 37, scope: !3104)
!3137 = !DILocation(line: 805, column: 21, scope: !3104)
!3138 = !DILocation(line: 807, column: 18, scope: !3104)
!3139 = !DILocation(line: 807, column: 27, scope: !3104)
!3140 = !DILocation(line: 807, column: 24, scope: !3104)
!3141 = !DILocation(line: 808, column: 72, scope: !3104)
!3142 = !DILocation(line: 809, column: 56, scope: !3104)
!3143 = !DILocation(line: 810, column: 49, scope: !3104)
!3144 = !DILocation(line: 811, column: 49, scope: !3104)
!3145 = !DILocation(line: 808, column: 20, scope: !3104)
!3146 = !DILocation(line: 811, column: 62, scope: !3104)
!3147 = !DILocation(line: 812, column: 15, scope: !3104)
!3148 = !DILocation(line: 813, column: 60, scope: !3104)
!3149 = !DILocation(line: 815, column: 32, scope: !3104)
!3150 = !DILocation(line: 815, column: 47, scope: !3104)
!3151 = !DILocation(line: 813, column: 3, scope: !3104)
!3152 = !DILocation(line: 816, column: 9, scope: !3104)
!3153 = !DILocation(line: 817, column: 7, scope: !3104)
!3154 = !DILocation(line: 818, column: 11, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3104, file: !591, line: 817, column: 7)
!3156 = !{!1294, !1294, i64 0}
!3157 = !DILocation(line: 818, column: 5, scope: !3155)
!3158 = !DILocation(line: 819, column: 3, scope: !3104)
!3159 = distinct !DISubprogram(name: "quotearg_free", scope: !591, file: !591, line: 837, type: !550, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3160)
!3160 = !{!3161, !3162}
!3161 = !DILocalVariable(name: "sv", scope: !3159, file: !591, line: 839, type: !680)
!3162 = !DILocalVariable(name: "i", scope: !3163, file: !591, line: 840, type: !83)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !591, line: 840, column: 3)
!3164 = !DILocation(line: 839, column: 24, scope: !3159)
!3165 = !DILocation(line: 0, scope: !3159)
!3166 = !DILocation(line: 0, scope: !3163)
!3167 = !DILocation(line: 840, column: 21, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !591, line: 840, column: 3)
!3169 = !DILocation(line: 840, column: 3, scope: !3163)
!3170 = !DILocation(line: 842, column: 13, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3159, file: !591, line: 842, column: 7)
!3172 = !{!3173, !928, i64 8}
!3173 = !{!"slotvec", !1294, i64 0, !928, i64 8}
!3174 = !DILocation(line: 842, column: 17, scope: !3171)
!3175 = !DILocation(line: 842, column: 7, scope: !3159)
!3176 = !DILocation(line: 841, column: 17, scope: !3168)
!3177 = !DILocation(line: 841, column: 5, scope: !3168)
!3178 = !DILocation(line: 840, column: 32, scope: !3168)
!3179 = distinct !{!3179, !3169, !3180, !1044}
!3180 = !DILocation(line: 841, column: 20, scope: !3163)
!3181 = !DILocation(line: 844, column: 7, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3171, file: !591, line: 843, column: 5)
!3183 = !DILocation(line: 845, column: 21, scope: !3182)
!3184 = !{!3173, !1294, i64 0}
!3185 = !DILocation(line: 846, column: 20, scope: !3182)
!3186 = !DILocation(line: 847, column: 5, scope: !3182)
!3187 = !DILocation(line: 848, column: 10, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3159, file: !591, line: 848, column: 7)
!3189 = !DILocation(line: 848, column: 7, scope: !3159)
!3190 = !DILocation(line: 850, column: 7, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3188, file: !591, line: 849, column: 5)
!3192 = !DILocation(line: 851, column: 15, scope: !3191)
!3193 = !DILocation(line: 852, column: 5, scope: !3191)
!3194 = !DILocation(line: 853, column: 10, scope: !3159)
!3195 = !DILocation(line: 854, column: 1, scope: !3159)
!3196 = !DISubprogram(name: "free", scope: !2391, file: !2391, line: 786, type: !3197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !137}
!3199 = distinct !DISubprogram(name: "quotearg_n", scope: !591, file: !591, line: 919, type: !1111, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3200)
!3200 = !{!3201, !3202}
!3201 = !DILocalVariable(name: "n", arg: 1, scope: !3199, file: !591, line: 919, type: !83)
!3202 = !DILocalVariable(name: "arg", arg: 2, scope: !3199, file: !591, line: 919, type: !142)
!3203 = !DILocation(line: 0, scope: !3199)
!3204 = !DILocation(line: 921, column: 10, scope: !3199)
!3205 = !DILocation(line: 921, column: 3, scope: !3199)
!3206 = distinct !DISubprogram(name: "quotearg_n_options", scope: !591, file: !591, line: 866, type: !3207, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!136, !83, !142, !139, !2430}
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3220, !3221, !3223, !3224, !3225}
!3210 = !DILocalVariable(name: "n", arg: 1, scope: !3206, file: !591, line: 866, type: !83)
!3211 = !DILocalVariable(name: "arg", arg: 2, scope: !3206, file: !591, line: 866, type: !142)
!3212 = !DILocalVariable(name: "argsize", arg: 3, scope: !3206, file: !591, line: 866, type: !139)
!3213 = !DILocalVariable(name: "options", arg: 4, scope: !3206, file: !591, line: 867, type: !2430)
!3214 = !DILocalVariable(name: "saved_errno", scope: !3206, file: !591, line: 869, type: !83)
!3215 = !DILocalVariable(name: "sv", scope: !3206, file: !591, line: 871, type: !680)
!3216 = !DILocalVariable(name: "nslots_max", scope: !3206, file: !591, line: 873, type: !83)
!3217 = !DILocalVariable(name: "preallocated", scope: !3218, file: !591, line: 879, type: !168)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !591, line: 878, column: 5)
!3219 = distinct !DILexicalBlock(scope: !3206, file: !591, line: 877, column: 7)
!3220 = !DILocalVariable(name: "new_nslots", scope: !3218, file: !591, line: 880, type: !857)
!3221 = !DILocalVariable(name: "size", scope: !3222, file: !591, line: 891, type: !139)
!3222 = distinct !DILexicalBlock(scope: !3206, file: !591, line: 890, column: 3)
!3223 = !DILocalVariable(name: "val", scope: !3222, file: !591, line: 892, type: !136)
!3224 = !DILocalVariable(name: "flags", scope: !3222, file: !591, line: 894, type: !83)
!3225 = !DILocalVariable(name: "qsize", scope: !3222, file: !591, line: 895, type: !139)
!3226 = distinct !DIAssignID()
!3227 = !DILocation(line: 0, scope: !3218)
!3228 = !DILocation(line: 0, scope: !3206)
!3229 = !DILocation(line: 869, column: 21, scope: !3206)
!3230 = !DILocation(line: 871, column: 24, scope: !3206)
!3231 = !DILocation(line: 874, column: 17, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3206, file: !591, line: 874, column: 7)
!3233 = !DILocation(line: 875, column: 5, scope: !3232)
!3234 = !DILocation(line: 877, column: 7, scope: !3219)
!3235 = !DILocation(line: 877, column: 14, scope: !3219)
!3236 = !DILocation(line: 877, column: 7, scope: !3206)
!3237 = !DILocation(line: 879, column: 31, scope: !3218)
!3238 = !DILocation(line: 880, column: 7, scope: !3218)
!3239 = !DILocation(line: 880, column: 26, scope: !3218)
!3240 = !DILocation(line: 880, column: 13, scope: !3218)
!3241 = distinct !DIAssignID()
!3242 = !DILocation(line: 882, column: 31, scope: !3218)
!3243 = !DILocation(line: 883, column: 33, scope: !3218)
!3244 = !DILocation(line: 883, column: 42, scope: !3218)
!3245 = !DILocation(line: 883, column: 31, scope: !3218)
!3246 = !DILocation(line: 882, column: 22, scope: !3218)
!3247 = !DILocation(line: 882, column: 15, scope: !3218)
!3248 = !DILocation(line: 884, column: 11, scope: !3218)
!3249 = !DILocation(line: 885, column: 15, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3218, file: !591, line: 884, column: 11)
!3251 = !{i64 0, i64 8, !3156, i64 8, i64 8, !927}
!3252 = !DILocation(line: 885, column: 9, scope: !3250)
!3253 = !DILocation(line: 886, column: 20, scope: !3218)
!3254 = !DILocation(line: 886, column: 18, scope: !3218)
!3255 = !DILocation(line: 886, column: 32, scope: !3218)
!3256 = !DILocation(line: 886, column: 43, scope: !3218)
!3257 = !DILocation(line: 886, column: 53, scope: !3218)
!3258 = !DILocation(line: 0, scope: !2647, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 886, column: 7, scope: !3218)
!3260 = !DILocation(line: 59, column: 10, scope: !2647, inlinedAt: !3259)
!3261 = !DILocation(line: 887, column: 16, scope: !3218)
!3262 = !DILocation(line: 887, column: 14, scope: !3218)
!3263 = !DILocation(line: 888, column: 5, scope: !3219)
!3264 = !DILocation(line: 888, column: 5, scope: !3218)
!3265 = !DILocation(line: 891, column: 19, scope: !3222)
!3266 = !DILocation(line: 891, column: 25, scope: !3222)
!3267 = !DILocation(line: 0, scope: !3222)
!3268 = !DILocation(line: 892, column: 23, scope: !3222)
!3269 = !DILocation(line: 894, column: 26, scope: !3222)
!3270 = !DILocation(line: 894, column: 32, scope: !3222)
!3271 = !DILocation(line: 896, column: 55, scope: !3222)
!3272 = !DILocation(line: 897, column: 55, scope: !3222)
!3273 = !DILocation(line: 898, column: 55, scope: !3222)
!3274 = !DILocation(line: 899, column: 55, scope: !3222)
!3275 = !DILocation(line: 895, column: 20, scope: !3222)
!3276 = !DILocation(line: 901, column: 14, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3222, file: !591, line: 901, column: 9)
!3278 = !DILocation(line: 901, column: 9, scope: !3222)
!3279 = !DILocation(line: 903, column: 35, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3277, file: !591, line: 902, column: 7)
!3281 = !DILocation(line: 903, column: 20, scope: !3280)
!3282 = !DILocation(line: 904, column: 17, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3280, file: !591, line: 904, column: 13)
!3284 = !DILocation(line: 904, column: 13, scope: !3280)
!3285 = !DILocation(line: 905, column: 11, scope: !3283)
!3286 = !DILocation(line: 906, column: 27, scope: !3280)
!3287 = !DILocation(line: 906, column: 19, scope: !3280)
!3288 = !DILocation(line: 907, column: 69, scope: !3280)
!3289 = !DILocation(line: 909, column: 44, scope: !3280)
!3290 = !DILocation(line: 910, column: 44, scope: !3280)
!3291 = !DILocation(line: 907, column: 9, scope: !3280)
!3292 = !DILocation(line: 911, column: 7, scope: !3280)
!3293 = !DILocation(line: 913, column: 11, scope: !3222)
!3294 = !DILocation(line: 914, column: 5, scope: !3222)
!3295 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !591, file: !591, line: 925, type: !3296, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!136, !83, !142, !139}
!3298 = !{!3299, !3300, !3301}
!3299 = !DILocalVariable(name: "n", arg: 1, scope: !3295, file: !591, line: 925, type: !83)
!3300 = !DILocalVariable(name: "arg", arg: 2, scope: !3295, file: !591, line: 925, type: !142)
!3301 = !DILocalVariable(name: "argsize", arg: 3, scope: !3295, file: !591, line: 925, type: !139)
!3302 = !DILocation(line: 0, scope: !3295)
!3303 = !DILocation(line: 927, column: 10, scope: !3295)
!3304 = !DILocation(line: 927, column: 3, scope: !3295)
!3305 = distinct !DISubprogram(name: "quotearg", scope: !591, file: !591, line: 931, type: !1120, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3306)
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "arg", arg: 1, scope: !3305, file: !591, line: 931, type: !142)
!3308 = !DILocation(line: 0, scope: !3305)
!3309 = !DILocation(line: 0, scope: !3199, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 933, column: 10, scope: !3305)
!3311 = !DILocation(line: 921, column: 10, scope: !3199, inlinedAt: !3310)
!3312 = !DILocation(line: 933, column: 3, scope: !3305)
!3313 = distinct !DISubprogram(name: "quotearg_mem", scope: !591, file: !591, line: 937, type: !3314, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!136, !142, !139}
!3316 = !{!3317, !3318}
!3317 = !DILocalVariable(name: "arg", arg: 1, scope: !3313, file: !591, line: 937, type: !142)
!3318 = !DILocalVariable(name: "argsize", arg: 2, scope: !3313, file: !591, line: 937, type: !139)
!3319 = !DILocation(line: 0, scope: !3313)
!3320 = !DILocation(line: 0, scope: !3295, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 939, column: 10, scope: !3313)
!3322 = !DILocation(line: 927, column: 10, scope: !3295, inlinedAt: !3321)
!3323 = !DILocation(line: 939, column: 3, scope: !3313)
!3324 = distinct !DISubprogram(name: "quotearg_n_style", scope: !591, file: !591, line: 943, type: !3325, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!136, !83, !617, !142}
!3327 = !{!3328, !3329, !3330, !3331}
!3328 = !DILocalVariable(name: "n", arg: 1, scope: !3324, file: !591, line: 943, type: !83)
!3329 = !DILocalVariable(name: "s", arg: 2, scope: !3324, file: !591, line: 943, type: !617)
!3330 = !DILocalVariable(name: "arg", arg: 3, scope: !3324, file: !591, line: 943, type: !142)
!3331 = !DILocalVariable(name: "o", scope: !3324, file: !591, line: 945, type: !2431)
!3332 = distinct !DIAssignID()
!3333 = !DILocation(line: 0, scope: !3324)
!3334 = !DILocation(line: 945, column: 3, scope: !3324)
!3335 = !{!3336}
!3336 = distinct !{!3336, !3337, !"quoting_options_from_style: argument 0"}
!3337 = distinct !{!3337, !"quoting_options_from_style"}
!3338 = !DILocation(line: 945, column: 36, scope: !3324)
!3339 = !DILocalVariable(name: "style", arg: 1, scope: !3340, file: !591, line: 183, type: !617)
!3340 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !591, file: !591, line: 183, type: !3341, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!632, !617}
!3343 = !{!3339, !3344}
!3344 = !DILocalVariable(name: "o", scope: !3340, file: !591, line: 185, type: !632)
!3345 = !DILocation(line: 0, scope: !3340, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 945, column: 36, scope: !3324)
!3347 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3346)
!3348 = distinct !DIAssignID()
!3349 = !DILocation(line: 186, column: 13, scope: !3350, inlinedAt: !3346)
!3350 = distinct !DILexicalBlock(scope: !3340, file: !591, line: 186, column: 7)
!3351 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3346)
!3352 = !DILocation(line: 187, column: 5, scope: !3350, inlinedAt: !3346)
!3353 = !DILocation(line: 188, column: 11, scope: !3340, inlinedAt: !3346)
!3354 = distinct !DIAssignID()
!3355 = !DILocation(line: 946, column: 10, scope: !3324)
!3356 = !DILocation(line: 947, column: 1, scope: !3324)
!3357 = !DILocation(line: 946, column: 3, scope: !3324)
!3358 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !591, file: !591, line: 950, type: !3359, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!136, !83, !617, !142, !139}
!3361 = !{!3362, !3363, !3364, !3365, !3366}
!3362 = !DILocalVariable(name: "n", arg: 1, scope: !3358, file: !591, line: 950, type: !83)
!3363 = !DILocalVariable(name: "s", arg: 2, scope: !3358, file: !591, line: 950, type: !617)
!3364 = !DILocalVariable(name: "arg", arg: 3, scope: !3358, file: !591, line: 951, type: !142)
!3365 = !DILocalVariable(name: "argsize", arg: 4, scope: !3358, file: !591, line: 951, type: !139)
!3366 = !DILocalVariable(name: "o", scope: !3358, file: !591, line: 953, type: !2431)
!3367 = distinct !DIAssignID()
!3368 = !DILocation(line: 0, scope: !3358)
!3369 = !DILocation(line: 953, column: 3, scope: !3358)
!3370 = !{!3371}
!3371 = distinct !{!3371, !3372, !"quoting_options_from_style: argument 0"}
!3372 = distinct !{!3372, !"quoting_options_from_style"}
!3373 = !DILocation(line: 953, column: 36, scope: !3358)
!3374 = !DILocation(line: 0, scope: !3340, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 953, column: 36, scope: !3358)
!3376 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3375)
!3377 = distinct !DIAssignID()
!3378 = !DILocation(line: 186, column: 13, scope: !3350, inlinedAt: !3375)
!3379 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3375)
!3380 = !DILocation(line: 187, column: 5, scope: !3350, inlinedAt: !3375)
!3381 = !DILocation(line: 188, column: 11, scope: !3340, inlinedAt: !3375)
!3382 = distinct !DIAssignID()
!3383 = !DILocation(line: 954, column: 10, scope: !3358)
!3384 = !DILocation(line: 955, column: 1, scope: !3358)
!3385 = !DILocation(line: 954, column: 3, scope: !3358)
!3386 = distinct !DISubprogram(name: "quotearg_style", scope: !591, file: !591, line: 958, type: !3387, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!136, !617, !142}
!3389 = !{!3390, !3391}
!3390 = !DILocalVariable(name: "s", arg: 1, scope: !3386, file: !591, line: 958, type: !617)
!3391 = !DILocalVariable(name: "arg", arg: 2, scope: !3386, file: !591, line: 958, type: !142)
!3392 = distinct !DIAssignID()
!3393 = !DILocation(line: 0, scope: !3386)
!3394 = !DILocation(line: 0, scope: !3324, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 960, column: 10, scope: !3386)
!3396 = !DILocation(line: 945, column: 3, scope: !3324, inlinedAt: !3395)
!3397 = !{!3398}
!3398 = distinct !{!3398, !3399, !"quoting_options_from_style: argument 0"}
!3399 = distinct !{!3399, !"quoting_options_from_style"}
!3400 = !DILocation(line: 945, column: 36, scope: !3324, inlinedAt: !3395)
!3401 = !DILocation(line: 0, scope: !3340, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 945, column: 36, scope: !3324, inlinedAt: !3395)
!3403 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3402)
!3404 = distinct !DIAssignID()
!3405 = !DILocation(line: 186, column: 13, scope: !3350, inlinedAt: !3402)
!3406 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3402)
!3407 = !DILocation(line: 187, column: 5, scope: !3350, inlinedAt: !3402)
!3408 = !DILocation(line: 188, column: 11, scope: !3340, inlinedAt: !3402)
!3409 = distinct !DIAssignID()
!3410 = !DILocation(line: 946, column: 10, scope: !3324, inlinedAt: !3395)
!3411 = !DILocation(line: 947, column: 1, scope: !3324, inlinedAt: !3395)
!3412 = !DILocation(line: 960, column: 3, scope: !3386)
!3413 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !591, file: !591, line: 964, type: !3414, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!136, !617, !142, !139}
!3416 = !{!3417, !3418, !3419}
!3417 = !DILocalVariable(name: "s", arg: 1, scope: !3413, file: !591, line: 964, type: !617)
!3418 = !DILocalVariable(name: "arg", arg: 2, scope: !3413, file: !591, line: 964, type: !142)
!3419 = !DILocalVariable(name: "argsize", arg: 3, scope: !3413, file: !591, line: 964, type: !139)
!3420 = distinct !DIAssignID()
!3421 = !DILocation(line: 0, scope: !3413)
!3422 = !DILocation(line: 0, scope: !3358, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 966, column: 10, scope: !3413)
!3424 = !DILocation(line: 953, column: 3, scope: !3358, inlinedAt: !3423)
!3425 = !{!3426}
!3426 = distinct !{!3426, !3427, !"quoting_options_from_style: argument 0"}
!3427 = distinct !{!3427, !"quoting_options_from_style"}
!3428 = !DILocation(line: 953, column: 36, scope: !3358, inlinedAt: !3423)
!3429 = !DILocation(line: 0, scope: !3340, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 953, column: 36, scope: !3358, inlinedAt: !3423)
!3431 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3430)
!3432 = distinct !DIAssignID()
!3433 = !DILocation(line: 186, column: 13, scope: !3350, inlinedAt: !3430)
!3434 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3430)
!3435 = !DILocation(line: 187, column: 5, scope: !3350, inlinedAt: !3430)
!3436 = !DILocation(line: 188, column: 11, scope: !3340, inlinedAt: !3430)
!3437 = distinct !DIAssignID()
!3438 = !DILocation(line: 954, column: 10, scope: !3358, inlinedAt: !3423)
!3439 = !DILocation(line: 955, column: 1, scope: !3358, inlinedAt: !3423)
!3440 = !DILocation(line: 966, column: 3, scope: !3413)
!3441 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !591, file: !591, line: 970, type: !3442, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!136, !142, !139, !4}
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "arg", arg: 1, scope: !3441, file: !591, line: 970, type: !142)
!3446 = !DILocalVariable(name: "argsize", arg: 2, scope: !3441, file: !591, line: 970, type: !139)
!3447 = !DILocalVariable(name: "ch", arg: 3, scope: !3441, file: !591, line: 970, type: !4)
!3448 = !DILocalVariable(name: "options", scope: !3441, file: !591, line: 972, type: !632)
!3449 = distinct !DIAssignID()
!3450 = !DILocation(line: 0, scope: !3441)
!3451 = !DILocation(line: 972, column: 3, scope: !3441)
!3452 = !DILocation(line: 973, column: 13, scope: !3441)
!3453 = !{i64 0, i64 4, !997, i64 4, i64 4, !997, i64 8, i64 32, !1006, i64 40, i64 8, !927, i64 48, i64 8, !927}
!3454 = distinct !DIAssignID()
!3455 = !DILocation(line: 0, scope: !2450, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 974, column: 3, scope: !3441)
!3457 = !DILocation(line: 147, column: 41, scope: !2450, inlinedAt: !3456)
!3458 = !DILocation(line: 147, column: 62, scope: !2450, inlinedAt: !3456)
!3459 = !DILocation(line: 147, column: 57, scope: !2450, inlinedAt: !3456)
!3460 = !DILocation(line: 148, column: 15, scope: !2450, inlinedAt: !3456)
!3461 = !DILocation(line: 149, column: 21, scope: !2450, inlinedAt: !3456)
!3462 = !DILocation(line: 149, column: 24, scope: !2450, inlinedAt: !3456)
!3463 = !DILocation(line: 150, column: 19, scope: !2450, inlinedAt: !3456)
!3464 = !DILocation(line: 150, column: 24, scope: !2450, inlinedAt: !3456)
!3465 = !DILocation(line: 150, column: 6, scope: !2450, inlinedAt: !3456)
!3466 = !DILocation(line: 975, column: 10, scope: !3441)
!3467 = !DILocation(line: 976, column: 1, scope: !3441)
!3468 = !DILocation(line: 975, column: 3, scope: !3441)
!3469 = distinct !DISubprogram(name: "quotearg_char", scope: !591, file: !591, line: 979, type: !3470, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!136, !142, !4}
!3472 = !{!3473, !3474}
!3473 = !DILocalVariable(name: "arg", arg: 1, scope: !3469, file: !591, line: 979, type: !142)
!3474 = !DILocalVariable(name: "ch", arg: 2, scope: !3469, file: !591, line: 979, type: !4)
!3475 = distinct !DIAssignID()
!3476 = !DILocation(line: 0, scope: !3469)
!3477 = !DILocation(line: 0, scope: !3441, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 981, column: 10, scope: !3469)
!3479 = !DILocation(line: 972, column: 3, scope: !3441, inlinedAt: !3478)
!3480 = !DILocation(line: 973, column: 13, scope: !3441, inlinedAt: !3478)
!3481 = distinct !DIAssignID()
!3482 = !DILocation(line: 0, scope: !2450, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 974, column: 3, scope: !3441, inlinedAt: !3478)
!3484 = !DILocation(line: 147, column: 41, scope: !2450, inlinedAt: !3483)
!3485 = !DILocation(line: 147, column: 62, scope: !2450, inlinedAt: !3483)
!3486 = !DILocation(line: 147, column: 57, scope: !2450, inlinedAt: !3483)
!3487 = !DILocation(line: 148, column: 15, scope: !2450, inlinedAt: !3483)
!3488 = !DILocation(line: 149, column: 21, scope: !2450, inlinedAt: !3483)
!3489 = !DILocation(line: 149, column: 24, scope: !2450, inlinedAt: !3483)
!3490 = !DILocation(line: 150, column: 19, scope: !2450, inlinedAt: !3483)
!3491 = !DILocation(line: 150, column: 24, scope: !2450, inlinedAt: !3483)
!3492 = !DILocation(line: 150, column: 6, scope: !2450, inlinedAt: !3483)
!3493 = !DILocation(line: 975, column: 10, scope: !3441, inlinedAt: !3478)
!3494 = !DILocation(line: 976, column: 1, scope: !3441, inlinedAt: !3478)
!3495 = !DILocation(line: 981, column: 3, scope: !3469)
!3496 = distinct !DISubprogram(name: "quotearg_colon", scope: !591, file: !591, line: 985, type: !1120, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3497)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "arg", arg: 1, scope: !3496, file: !591, line: 985, type: !142)
!3499 = distinct !DIAssignID()
!3500 = !DILocation(line: 0, scope: !3496)
!3501 = !DILocation(line: 0, scope: !3469, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 987, column: 10, scope: !3496)
!3503 = !DILocation(line: 0, scope: !3441, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 981, column: 10, scope: !3469, inlinedAt: !3502)
!3505 = !DILocation(line: 972, column: 3, scope: !3441, inlinedAt: !3504)
!3506 = !DILocation(line: 973, column: 13, scope: !3441, inlinedAt: !3504)
!3507 = distinct !DIAssignID()
!3508 = !DILocation(line: 0, scope: !2450, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 974, column: 3, scope: !3441, inlinedAt: !3504)
!3510 = !DILocation(line: 147, column: 57, scope: !2450, inlinedAt: !3509)
!3511 = !DILocation(line: 149, column: 21, scope: !2450, inlinedAt: !3509)
!3512 = !DILocation(line: 150, column: 6, scope: !2450, inlinedAt: !3509)
!3513 = !DILocation(line: 975, column: 10, scope: !3441, inlinedAt: !3504)
!3514 = !DILocation(line: 976, column: 1, scope: !3441, inlinedAt: !3504)
!3515 = !DILocation(line: 987, column: 3, scope: !3496)
!3516 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !591, file: !591, line: 991, type: !3314, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3517)
!3517 = !{!3518, !3519}
!3518 = !DILocalVariable(name: "arg", arg: 1, scope: !3516, file: !591, line: 991, type: !142)
!3519 = !DILocalVariable(name: "argsize", arg: 2, scope: !3516, file: !591, line: 991, type: !139)
!3520 = distinct !DIAssignID()
!3521 = !DILocation(line: 0, scope: !3516)
!3522 = !DILocation(line: 0, scope: !3441, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 993, column: 10, scope: !3516)
!3524 = !DILocation(line: 972, column: 3, scope: !3441, inlinedAt: !3523)
!3525 = !DILocation(line: 973, column: 13, scope: !3441, inlinedAt: !3523)
!3526 = distinct !DIAssignID()
!3527 = !DILocation(line: 0, scope: !2450, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 974, column: 3, scope: !3441, inlinedAt: !3523)
!3529 = !DILocation(line: 147, column: 57, scope: !2450, inlinedAt: !3528)
!3530 = !DILocation(line: 149, column: 21, scope: !2450, inlinedAt: !3528)
!3531 = !DILocation(line: 150, column: 6, scope: !2450, inlinedAt: !3528)
!3532 = !DILocation(line: 975, column: 10, scope: !3441, inlinedAt: !3523)
!3533 = !DILocation(line: 976, column: 1, scope: !3441, inlinedAt: !3523)
!3534 = !DILocation(line: 993, column: 3, scope: !3516)
!3535 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !591, file: !591, line: 997, type: !3325, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3536)
!3536 = !{!3537, !3538, !3539, !3540}
!3537 = !DILocalVariable(name: "n", arg: 1, scope: !3535, file: !591, line: 997, type: !83)
!3538 = !DILocalVariable(name: "s", arg: 2, scope: !3535, file: !591, line: 997, type: !617)
!3539 = !DILocalVariable(name: "arg", arg: 3, scope: !3535, file: !591, line: 997, type: !142)
!3540 = !DILocalVariable(name: "options", scope: !3535, file: !591, line: 999, type: !632)
!3541 = distinct !DIAssignID()
!3542 = !DILocation(line: 0, scope: !3535)
!3543 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 1000, column: 13, scope: !3535)
!3545 = !DILocation(line: 999, column: 3, scope: !3535)
!3546 = !DILocation(line: 0, scope: !3340, inlinedAt: !3544)
!3547 = !DILocation(line: 186, column: 13, scope: !3350, inlinedAt: !3544)
!3548 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3544)
!3549 = !DILocation(line: 187, column: 5, scope: !3350, inlinedAt: !3544)
!3550 = !{!3551}
!3551 = distinct !{!3551, !3552, !"quoting_options_from_style: argument 0"}
!3552 = distinct !{!3552, !"quoting_options_from_style"}
!3553 = !DILocation(line: 1000, column: 13, scope: !3535)
!3554 = distinct !DIAssignID()
!3555 = distinct !DIAssignID()
!3556 = !DILocation(line: 0, scope: !2450, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 1001, column: 3, scope: !3535)
!3558 = !DILocation(line: 147, column: 57, scope: !2450, inlinedAt: !3557)
!3559 = !DILocation(line: 149, column: 21, scope: !2450, inlinedAt: !3557)
!3560 = !DILocation(line: 150, column: 6, scope: !2450, inlinedAt: !3557)
!3561 = distinct !DIAssignID()
!3562 = !DILocation(line: 1002, column: 10, scope: !3535)
!3563 = !DILocation(line: 1003, column: 1, scope: !3535)
!3564 = !DILocation(line: 1002, column: 3, scope: !3535)
!3565 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !591, file: !591, line: 1006, type: !3566, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!136, !83, !142, !142, !142}
!3568 = !{!3569, !3570, !3571, !3572}
!3569 = !DILocalVariable(name: "n", arg: 1, scope: !3565, file: !591, line: 1006, type: !83)
!3570 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3565, file: !591, line: 1006, type: !142)
!3571 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3565, file: !591, line: 1007, type: !142)
!3572 = !DILocalVariable(name: "arg", arg: 4, scope: !3565, file: !591, line: 1007, type: !142)
!3573 = distinct !DIAssignID()
!3574 = !DILocation(line: 0, scope: !3565)
!3575 = !DILocalVariable(name: "o", scope: !3576, file: !591, line: 1018, type: !632)
!3576 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !591, file: !591, line: 1014, type: !3577, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!136, !83, !142, !142, !142, !139}
!3579 = !{!3580, !3581, !3582, !3583, !3584, !3575}
!3580 = !DILocalVariable(name: "n", arg: 1, scope: !3576, file: !591, line: 1014, type: !83)
!3581 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3576, file: !591, line: 1014, type: !142)
!3582 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3576, file: !591, line: 1015, type: !142)
!3583 = !DILocalVariable(name: "arg", arg: 4, scope: !3576, file: !591, line: 1016, type: !142)
!3584 = !DILocalVariable(name: "argsize", arg: 5, scope: !3576, file: !591, line: 1016, type: !139)
!3585 = !DILocation(line: 0, scope: !3576, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 1009, column: 10, scope: !3565)
!3587 = !DILocation(line: 1018, column: 3, scope: !3576, inlinedAt: !3586)
!3588 = !DILocation(line: 1018, column: 30, scope: !3576, inlinedAt: !3586)
!3589 = distinct !DIAssignID()
!3590 = distinct !DIAssignID()
!3591 = !DILocation(line: 0, scope: !2490, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 1019, column: 3, scope: !3576, inlinedAt: !3586)
!3593 = !DILocation(line: 174, column: 12, scope: !2490, inlinedAt: !3592)
!3594 = distinct !DIAssignID()
!3595 = !DILocation(line: 175, column: 8, scope: !2503, inlinedAt: !3592)
!3596 = !DILocation(line: 175, column: 19, scope: !2503, inlinedAt: !3592)
!3597 = !DILocation(line: 176, column: 5, scope: !2503, inlinedAt: !3592)
!3598 = !DILocation(line: 177, column: 6, scope: !2490, inlinedAt: !3592)
!3599 = !DILocation(line: 177, column: 17, scope: !2490, inlinedAt: !3592)
!3600 = distinct !DIAssignID()
!3601 = !DILocation(line: 178, column: 6, scope: !2490, inlinedAt: !3592)
!3602 = !DILocation(line: 178, column: 18, scope: !2490, inlinedAt: !3592)
!3603 = distinct !DIAssignID()
!3604 = !DILocation(line: 1020, column: 10, scope: !3576, inlinedAt: !3586)
!3605 = !DILocation(line: 1021, column: 1, scope: !3576, inlinedAt: !3586)
!3606 = !DILocation(line: 1009, column: 3, scope: !3565)
!3607 = distinct !DIAssignID()
!3608 = !DILocation(line: 0, scope: !3576)
!3609 = !DILocation(line: 1018, column: 3, scope: !3576)
!3610 = !DILocation(line: 1018, column: 30, scope: !3576)
!3611 = distinct !DIAssignID()
!3612 = distinct !DIAssignID()
!3613 = !DILocation(line: 0, scope: !2490, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 1019, column: 3, scope: !3576)
!3615 = !DILocation(line: 174, column: 12, scope: !2490, inlinedAt: !3614)
!3616 = distinct !DIAssignID()
!3617 = !DILocation(line: 175, column: 8, scope: !2503, inlinedAt: !3614)
!3618 = !DILocation(line: 175, column: 19, scope: !2503, inlinedAt: !3614)
!3619 = !DILocation(line: 176, column: 5, scope: !2503, inlinedAt: !3614)
!3620 = !DILocation(line: 177, column: 6, scope: !2490, inlinedAt: !3614)
!3621 = !DILocation(line: 177, column: 17, scope: !2490, inlinedAt: !3614)
!3622 = distinct !DIAssignID()
!3623 = !DILocation(line: 178, column: 6, scope: !2490, inlinedAt: !3614)
!3624 = !DILocation(line: 178, column: 18, scope: !2490, inlinedAt: !3614)
!3625 = distinct !DIAssignID()
!3626 = !DILocation(line: 1020, column: 10, scope: !3576)
!3627 = !DILocation(line: 1021, column: 1, scope: !3576)
!3628 = !DILocation(line: 1020, column: 3, scope: !3576)
!3629 = distinct !DISubprogram(name: "quotearg_custom", scope: !591, file: !591, line: 1024, type: !3630, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3632)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!136, !142, !142, !142}
!3632 = !{!3633, !3634, !3635}
!3633 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3629, file: !591, line: 1024, type: !142)
!3634 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3629, file: !591, line: 1024, type: !142)
!3635 = !DILocalVariable(name: "arg", arg: 3, scope: !3629, file: !591, line: 1025, type: !142)
!3636 = distinct !DIAssignID()
!3637 = !DILocation(line: 0, scope: !3629)
!3638 = !DILocation(line: 0, scope: !3565, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 1027, column: 10, scope: !3629)
!3640 = !DILocation(line: 0, scope: !3576, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 1009, column: 10, scope: !3565, inlinedAt: !3639)
!3642 = !DILocation(line: 1018, column: 3, scope: !3576, inlinedAt: !3641)
!3643 = !DILocation(line: 1018, column: 30, scope: !3576, inlinedAt: !3641)
!3644 = distinct !DIAssignID()
!3645 = distinct !DIAssignID()
!3646 = !DILocation(line: 0, scope: !2490, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 1019, column: 3, scope: !3576, inlinedAt: !3641)
!3648 = !DILocation(line: 174, column: 12, scope: !2490, inlinedAt: !3647)
!3649 = distinct !DIAssignID()
!3650 = !DILocation(line: 175, column: 8, scope: !2503, inlinedAt: !3647)
!3651 = !DILocation(line: 175, column: 19, scope: !2503, inlinedAt: !3647)
!3652 = !DILocation(line: 176, column: 5, scope: !2503, inlinedAt: !3647)
!3653 = !DILocation(line: 177, column: 6, scope: !2490, inlinedAt: !3647)
!3654 = !DILocation(line: 177, column: 17, scope: !2490, inlinedAt: !3647)
!3655 = distinct !DIAssignID()
!3656 = !DILocation(line: 178, column: 6, scope: !2490, inlinedAt: !3647)
!3657 = !DILocation(line: 178, column: 18, scope: !2490, inlinedAt: !3647)
!3658 = distinct !DIAssignID()
!3659 = !DILocation(line: 1020, column: 10, scope: !3576, inlinedAt: !3641)
!3660 = !DILocation(line: 1021, column: 1, scope: !3576, inlinedAt: !3641)
!3661 = !DILocation(line: 1027, column: 3, scope: !3629)
!3662 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !591, file: !591, line: 1031, type: !3663, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!136, !142, !142, !142, !139}
!3665 = !{!3666, !3667, !3668, !3669}
!3666 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3662, file: !591, line: 1031, type: !142)
!3667 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3662, file: !591, line: 1031, type: !142)
!3668 = !DILocalVariable(name: "arg", arg: 3, scope: !3662, file: !591, line: 1032, type: !142)
!3669 = !DILocalVariable(name: "argsize", arg: 4, scope: !3662, file: !591, line: 1032, type: !139)
!3670 = distinct !DIAssignID()
!3671 = !DILocation(line: 0, scope: !3662)
!3672 = !DILocation(line: 0, scope: !3576, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 1034, column: 10, scope: !3662)
!3674 = !DILocation(line: 1018, column: 3, scope: !3576, inlinedAt: !3673)
!3675 = !DILocation(line: 1018, column: 30, scope: !3576, inlinedAt: !3673)
!3676 = distinct !DIAssignID()
!3677 = distinct !DIAssignID()
!3678 = !DILocation(line: 0, scope: !2490, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 1019, column: 3, scope: !3576, inlinedAt: !3673)
!3680 = !DILocation(line: 174, column: 12, scope: !2490, inlinedAt: !3679)
!3681 = distinct !DIAssignID()
!3682 = !DILocation(line: 175, column: 8, scope: !2503, inlinedAt: !3679)
!3683 = !DILocation(line: 175, column: 19, scope: !2503, inlinedAt: !3679)
!3684 = !DILocation(line: 176, column: 5, scope: !2503, inlinedAt: !3679)
!3685 = !DILocation(line: 177, column: 6, scope: !2490, inlinedAt: !3679)
!3686 = !DILocation(line: 177, column: 17, scope: !2490, inlinedAt: !3679)
!3687 = distinct !DIAssignID()
!3688 = !DILocation(line: 178, column: 6, scope: !2490, inlinedAt: !3679)
!3689 = !DILocation(line: 178, column: 18, scope: !2490, inlinedAt: !3679)
!3690 = distinct !DIAssignID()
!3691 = !DILocation(line: 1020, column: 10, scope: !3576, inlinedAt: !3673)
!3692 = !DILocation(line: 1021, column: 1, scope: !3576, inlinedAt: !3673)
!3693 = !DILocation(line: 1034, column: 3, scope: !3662)
!3694 = distinct !DISubprogram(name: "quote_n_mem", scope: !591, file: !591, line: 1049, type: !3695, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!142, !83, !142, !139}
!3697 = !{!3698, !3699, !3700}
!3698 = !DILocalVariable(name: "n", arg: 1, scope: !3694, file: !591, line: 1049, type: !83)
!3699 = !DILocalVariable(name: "arg", arg: 2, scope: !3694, file: !591, line: 1049, type: !142)
!3700 = !DILocalVariable(name: "argsize", arg: 3, scope: !3694, file: !591, line: 1049, type: !139)
!3701 = !DILocation(line: 0, scope: !3694)
!3702 = !DILocation(line: 1051, column: 10, scope: !3694)
!3703 = !DILocation(line: 1051, column: 3, scope: !3694)
!3704 = distinct !DISubprogram(name: "quote_mem", scope: !591, file: !591, line: 1055, type: !3705, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!142, !142, !139}
!3707 = !{!3708, !3709}
!3708 = !DILocalVariable(name: "arg", arg: 1, scope: !3704, file: !591, line: 1055, type: !142)
!3709 = !DILocalVariable(name: "argsize", arg: 2, scope: !3704, file: !591, line: 1055, type: !139)
!3710 = !DILocation(line: 0, scope: !3704)
!3711 = !DILocation(line: 0, scope: !3694, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1057, column: 10, scope: !3704)
!3713 = !DILocation(line: 1051, column: 10, scope: !3694, inlinedAt: !3712)
!3714 = !DILocation(line: 1057, column: 3, scope: !3704)
!3715 = distinct !DISubprogram(name: "quote_n", scope: !591, file: !591, line: 1061, type: !3716, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!142, !83, !142}
!3718 = !{!3719, !3720}
!3719 = !DILocalVariable(name: "n", arg: 1, scope: !3715, file: !591, line: 1061, type: !83)
!3720 = !DILocalVariable(name: "arg", arg: 2, scope: !3715, file: !591, line: 1061, type: !142)
!3721 = !DILocation(line: 0, scope: !3715)
!3722 = !DILocation(line: 0, scope: !3694, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 1063, column: 10, scope: !3715)
!3724 = !DILocation(line: 1051, column: 10, scope: !3694, inlinedAt: !3723)
!3725 = !DILocation(line: 1063, column: 3, scope: !3715)
!3726 = distinct !DISubprogram(name: "quote", scope: !591, file: !591, line: 1067, type: !3727, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!142, !142}
!3729 = !{!3730}
!3730 = !DILocalVariable(name: "arg", arg: 1, scope: !3726, file: !591, line: 1067, type: !142)
!3731 = !DILocation(line: 0, scope: !3726)
!3732 = !DILocation(line: 0, scope: !3715, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 1069, column: 10, scope: !3726)
!3734 = !DILocation(line: 0, scope: !3694, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1063, column: 10, scope: !3715, inlinedAt: !3733)
!3736 = !DILocation(line: 1051, column: 10, scope: !3694, inlinedAt: !3735)
!3737 = !DILocation(line: 1069, column: 3, scope: !3726)
!3738 = distinct !DISubprogram(name: "version_etc_arn", scope: !693, file: !693, line: 61, type: !3739, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !3776)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{null, !3741, !142, !142, !142, !3775, !139}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !3743)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3743, file: !206, line: 51, baseType: !83, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3743, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3743, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3743, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3743, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3743, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3743, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3743, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3743, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3743, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3743, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3743, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3743, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3743, file: !206, line: 70, baseType: !3759, size: 64, offset: 832)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3743, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3743, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3743, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3743, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3743, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3743, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3743, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3743, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3743, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3743, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3743, file: !206, line: 93, baseType: !3759, size: 64, offset: 1344)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3743, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3743, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3743, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3743, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782}
!3777 = !DILocalVariable(name: "stream", arg: 1, scope: !3738, file: !693, line: 61, type: !3741)
!3778 = !DILocalVariable(name: "command_name", arg: 2, scope: !3738, file: !693, line: 62, type: !142)
!3779 = !DILocalVariable(name: "package", arg: 3, scope: !3738, file: !693, line: 62, type: !142)
!3780 = !DILocalVariable(name: "version", arg: 4, scope: !3738, file: !693, line: 63, type: !142)
!3781 = !DILocalVariable(name: "authors", arg: 5, scope: !3738, file: !693, line: 64, type: !3775)
!3782 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3738, file: !693, line: 64, type: !139)
!3783 = !DILocation(line: 0, scope: !3738)
!3784 = !DILocation(line: 66, column: 7, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3738, file: !693, line: 66, column: 7)
!3786 = !DILocation(line: 66, column: 7, scope: !3738)
!3787 = !DILocation(line: 67, column: 5, scope: !3785)
!3788 = !DILocation(line: 69, column: 5, scope: !3785)
!3789 = !DILocation(line: 83, column: 3, scope: !3738)
!3790 = !DILocation(line: 85, column: 3, scope: !3738)
!3791 = !DILocation(line: 88, column: 3, scope: !3738)
!3792 = !DILocation(line: 95, column: 3, scope: !3738)
!3793 = !DILocation(line: 97, column: 3, scope: !3738)
!3794 = !DILocation(line: 105, column: 7, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3738, file: !693, line: 98, column: 5)
!3796 = !DILocation(line: 106, column: 7, scope: !3795)
!3797 = !DILocation(line: 109, column: 7, scope: !3795)
!3798 = !DILocation(line: 110, column: 7, scope: !3795)
!3799 = !DILocation(line: 113, column: 7, scope: !3795)
!3800 = !DILocation(line: 115, column: 7, scope: !3795)
!3801 = !DILocation(line: 120, column: 7, scope: !3795)
!3802 = !DILocation(line: 122, column: 7, scope: !3795)
!3803 = !DILocation(line: 127, column: 7, scope: !3795)
!3804 = !DILocation(line: 129, column: 7, scope: !3795)
!3805 = !DILocation(line: 134, column: 7, scope: !3795)
!3806 = !DILocation(line: 137, column: 7, scope: !3795)
!3807 = !DILocation(line: 142, column: 7, scope: !3795)
!3808 = !DILocation(line: 145, column: 7, scope: !3795)
!3809 = !DILocation(line: 150, column: 7, scope: !3795)
!3810 = !DILocation(line: 154, column: 7, scope: !3795)
!3811 = !DILocation(line: 159, column: 7, scope: !3795)
!3812 = !DILocation(line: 163, column: 7, scope: !3795)
!3813 = !DILocation(line: 170, column: 7, scope: !3795)
!3814 = !DILocation(line: 174, column: 7, scope: !3795)
!3815 = !DILocation(line: 176, column: 1, scope: !3738)
!3816 = distinct !DISubprogram(name: "version_etc_ar", scope: !693, file: !693, line: 183, type: !3817, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3741, !142, !142, !142, !3775}
!3819 = !{!3820, !3821, !3822, !3823, !3824, !3825}
!3820 = !DILocalVariable(name: "stream", arg: 1, scope: !3816, file: !693, line: 183, type: !3741)
!3821 = !DILocalVariable(name: "command_name", arg: 2, scope: !3816, file: !693, line: 184, type: !142)
!3822 = !DILocalVariable(name: "package", arg: 3, scope: !3816, file: !693, line: 184, type: !142)
!3823 = !DILocalVariable(name: "version", arg: 4, scope: !3816, file: !693, line: 185, type: !142)
!3824 = !DILocalVariable(name: "authors", arg: 5, scope: !3816, file: !693, line: 185, type: !3775)
!3825 = !DILocalVariable(name: "n_authors", scope: !3816, file: !693, line: 187, type: !139)
!3826 = !DILocation(line: 0, scope: !3816)
!3827 = !DILocation(line: 189, column: 8, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3816, file: !693, line: 189, column: 3)
!3829 = !DILocation(line: 189, scope: !3828)
!3830 = !DILocation(line: 189, column: 23, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3828, file: !693, line: 189, column: 3)
!3832 = !DILocation(line: 189, column: 3, scope: !3828)
!3833 = !DILocation(line: 189, column: 52, scope: !3831)
!3834 = distinct !{!3834, !3832, !3835, !1044}
!3835 = !DILocation(line: 190, column: 5, scope: !3828)
!3836 = !DILocation(line: 191, column: 3, scope: !3816)
!3837 = !DILocation(line: 192, column: 1, scope: !3816)
!3838 = distinct !DISubprogram(name: "version_etc_va", scope: !693, file: !693, line: 199, type: !3839, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !3851)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !3741, !142, !142, !142, !3841}
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !510, line: 52, baseType: !3842)
!3842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !512, line: 12, baseType: !3843)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !693, baseType: !3844)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3844, file: !693, line: 192, baseType: !137, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3844, file: !693, line: 192, baseType: !137, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3844, file: !693, line: 192, baseType: !137, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3844, file: !693, line: 192, baseType: !83, size: 32, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3844, file: !693, line: 192, baseType: !83, size: 32, offset: 224)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858}
!3852 = !DILocalVariable(name: "stream", arg: 1, scope: !3838, file: !693, line: 199, type: !3741)
!3853 = !DILocalVariable(name: "command_name", arg: 2, scope: !3838, file: !693, line: 200, type: !142)
!3854 = !DILocalVariable(name: "package", arg: 3, scope: !3838, file: !693, line: 200, type: !142)
!3855 = !DILocalVariable(name: "version", arg: 4, scope: !3838, file: !693, line: 201, type: !142)
!3856 = !DILocalVariable(name: "authors", arg: 5, scope: !3838, file: !693, line: 201, type: !3841)
!3857 = !DILocalVariable(name: "n_authors", scope: !3838, file: !693, line: 203, type: !139)
!3858 = !DILocalVariable(name: "authtab", scope: !3838, file: !693, line: 204, type: !3859)
!3859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 640, elements: !57)
!3860 = distinct !DIAssignID()
!3861 = !DILocation(line: 0, scope: !3838)
!3862 = !DILocation(line: 204, column: 3, scope: !3838)
!3863 = !DILocation(line: 208, column: 35, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !693, line: 206, column: 3)
!3865 = distinct !DILexicalBlock(scope: !3838, file: !693, line: 206, column: 3)
!3866 = !DILocation(line: 208, column: 33, scope: !3864)
!3867 = !DILocation(line: 208, column: 67, scope: !3864)
!3868 = !DILocation(line: 206, column: 3, scope: !3865)
!3869 = !DILocation(line: 208, column: 14, scope: !3864)
!3870 = !DILocation(line: 0, scope: !3865)
!3871 = !DILocation(line: 211, column: 3, scope: !3838)
!3872 = !DILocation(line: 213, column: 1, scope: !3838)
!3873 = distinct !DISubprogram(name: "version_etc", scope: !693, file: !693, line: 230, type: !3874, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3741, !142, !142, !142, null}
!3876 = !{!3877, !3878, !3879, !3880, !3881}
!3877 = !DILocalVariable(name: "stream", arg: 1, scope: !3873, file: !693, line: 230, type: !3741)
!3878 = !DILocalVariable(name: "command_name", arg: 2, scope: !3873, file: !693, line: 231, type: !142)
!3879 = !DILocalVariable(name: "package", arg: 3, scope: !3873, file: !693, line: 231, type: !142)
!3880 = !DILocalVariable(name: "version", arg: 4, scope: !3873, file: !693, line: 232, type: !142)
!3881 = !DILocalVariable(name: "authors", scope: !3873, file: !693, line: 234, type: !3841)
!3882 = distinct !DIAssignID()
!3883 = !DILocation(line: 0, scope: !3873)
!3884 = !DILocation(line: 234, column: 3, scope: !3873)
!3885 = !DILocation(line: 235, column: 3, scope: !3873)
!3886 = !DILocation(line: 236, column: 3, scope: !3873)
!3887 = !DILocation(line: 237, column: 3, scope: !3873)
!3888 = !DILocation(line: 238, column: 1, scope: !3873)
!3889 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !693, file: !693, line: 241, type: !550, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831)
!3890 = !DILocation(line: 243, column: 3, scope: !3889)
!3891 = !DILocation(line: 248, column: 3, scope: !3889)
!3892 = !DILocation(line: 254, column: 3, scope: !3889)
!3893 = !DILocation(line: 259, column: 3, scope: !3889)
!3894 = !DILocation(line: 261, column: 1, scope: !3889)
!3895 = distinct !DISubprogram(name: "xnrealloc", scope: !3896, file: !3896, line: 147, type: !3897, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3899)
!3896 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!137, !137, !139, !139}
!3899 = !{!3900, !3901, !3902}
!3900 = !DILocalVariable(name: "p", arg: 1, scope: !3895, file: !3896, line: 147, type: !137)
!3901 = !DILocalVariable(name: "n", arg: 2, scope: !3895, file: !3896, line: 147, type: !139)
!3902 = !DILocalVariable(name: "s", arg: 3, scope: !3895, file: !3896, line: 147, type: !139)
!3903 = !DILocation(line: 0, scope: !3895)
!3904 = !DILocalVariable(name: "p", arg: 1, scope: !3905, file: !838, line: 83, type: !137)
!3905 = distinct !DISubprogram(name: "xreallocarray", scope: !838, file: !838, line: 83, type: !3897, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3906)
!3906 = !{!3904, !3907, !3908}
!3907 = !DILocalVariable(name: "n", arg: 2, scope: !3905, file: !838, line: 83, type: !139)
!3908 = !DILocalVariable(name: "s", arg: 3, scope: !3905, file: !838, line: 83, type: !139)
!3909 = !DILocation(line: 0, scope: !3905, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 149, column: 10, scope: !3895)
!3911 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !3910)
!3912 = !DILocalVariable(name: "p", arg: 1, scope: !3913, file: !838, line: 37, type: !137)
!3913 = distinct !DISubprogram(name: "check_nonnull", scope: !838, file: !838, line: 37, type: !3914, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!137, !137}
!3916 = !{!3912}
!3917 = !DILocation(line: 0, scope: !3913, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !3910)
!3919 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3918)
!3920 = distinct !DILexicalBlock(scope: !3913, file: !838, line: 39, column: 7)
!3921 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3918)
!3922 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3918)
!3923 = !DILocation(line: 149, column: 3, scope: !3895)
!3924 = !DILocation(line: 0, scope: !3905)
!3925 = !DILocation(line: 85, column: 25, scope: !3905)
!3926 = !DILocation(line: 0, scope: !3913, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 85, column: 10, scope: !3905)
!3928 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3927)
!3929 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3927)
!3930 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3927)
!3931 = !DILocation(line: 85, column: 3, scope: !3905)
!3932 = distinct !DISubprogram(name: "xmalloc", scope: !838, file: !838, line: 47, type: !3933, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!137, !139}
!3935 = !{!3936}
!3936 = !DILocalVariable(name: "s", arg: 1, scope: !3932, file: !838, line: 47, type: !139)
!3937 = !DILocation(line: 0, scope: !3932)
!3938 = !DILocation(line: 49, column: 25, scope: !3932)
!3939 = !DILocation(line: 0, scope: !3913, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 49, column: 10, scope: !3932)
!3941 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3940)
!3942 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3940)
!3943 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3940)
!3944 = !DILocation(line: 49, column: 3, scope: !3932)
!3945 = !DISubprogram(name: "malloc", scope: !1118, file: !1118, line: 540, type: !3933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3946 = distinct !DISubprogram(name: "ximalloc", scope: !838, file: !838, line: 53, type: !3947, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!137, !857}
!3949 = !{!3950}
!3950 = !DILocalVariable(name: "s", arg: 1, scope: !3946, file: !838, line: 53, type: !857)
!3951 = !DILocation(line: 0, scope: !3946)
!3952 = !DILocalVariable(name: "s", arg: 1, scope: !3953, file: !3954, line: 55, type: !857)
!3953 = distinct !DISubprogram(name: "imalloc", scope: !3954, file: !3954, line: 55, type: !3947, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3955)
!3954 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3955 = !{!3952}
!3956 = !DILocation(line: 0, scope: !3953, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 55, column: 25, scope: !3946)
!3958 = !DILocation(line: 57, column: 26, scope: !3953, inlinedAt: !3957)
!3959 = !DILocation(line: 0, scope: !3913, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 55, column: 10, scope: !3946)
!3961 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3960)
!3962 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3960)
!3963 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3960)
!3964 = !DILocation(line: 55, column: 3, scope: !3946)
!3965 = distinct !DISubprogram(name: "xcharalloc", scope: !838, file: !838, line: 59, type: !3966, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3968)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!136, !139}
!3968 = !{!3969}
!3969 = !DILocalVariable(name: "n", arg: 1, scope: !3965, file: !838, line: 59, type: !139)
!3970 = !DILocation(line: 0, scope: !3965)
!3971 = !DILocation(line: 0, scope: !3932, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 61, column: 10, scope: !3965)
!3973 = !DILocation(line: 49, column: 25, scope: !3932, inlinedAt: !3972)
!3974 = !DILocation(line: 0, scope: !3913, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 49, column: 10, scope: !3932, inlinedAt: !3972)
!3976 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3975)
!3977 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3975)
!3978 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3975)
!3979 = !DILocation(line: 61, column: 3, scope: !3965)
!3980 = distinct !DISubprogram(name: "xrealloc", scope: !838, file: !838, line: 68, type: !3981, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!137, !137, !139}
!3983 = !{!3984, !3985}
!3984 = !DILocalVariable(name: "p", arg: 1, scope: !3980, file: !838, line: 68, type: !137)
!3985 = !DILocalVariable(name: "s", arg: 2, scope: !3980, file: !838, line: 68, type: !139)
!3986 = !DILocation(line: 0, scope: !3980)
!3987 = !DILocalVariable(name: "ptr", arg: 1, scope: !3988, file: !3989, line: 2057, type: !137)
!3988 = distinct !DISubprogram(name: "rpl_realloc", scope: !3989, file: !3989, line: 2057, type: !3981, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3990)
!3989 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3990 = !{!3987, !3991}
!3991 = !DILocalVariable(name: "size", arg: 2, scope: !3988, file: !3989, line: 2057, type: !139)
!3992 = !DILocation(line: 0, scope: !3988, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 70, column: 25, scope: !3980)
!3994 = !DILocation(line: 2059, column: 24, scope: !3988, inlinedAt: !3993)
!3995 = !DILocation(line: 2059, column: 10, scope: !3988, inlinedAt: !3993)
!3996 = !DILocation(line: 0, scope: !3913, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 70, column: 10, scope: !3980)
!3998 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3997)
!3999 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3997)
!4000 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3997)
!4001 = !DILocation(line: 70, column: 3, scope: !3980)
!4002 = !DISubprogram(name: "realloc", scope: !1118, file: !1118, line: 551, type: !3981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4003 = distinct !DISubprogram(name: "xirealloc", scope: !838, file: !838, line: 74, type: !4004, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!137, !137, !857}
!4006 = !{!4007, !4008}
!4007 = !DILocalVariable(name: "p", arg: 1, scope: !4003, file: !838, line: 74, type: !137)
!4008 = !DILocalVariable(name: "s", arg: 2, scope: !4003, file: !838, line: 74, type: !857)
!4009 = !DILocation(line: 0, scope: !4003)
!4010 = !DILocalVariable(name: "p", arg: 1, scope: !4011, file: !3954, line: 66, type: !137)
!4011 = distinct !DISubprogram(name: "irealloc", scope: !3954, file: !3954, line: 66, type: !4004, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4012)
!4012 = !{!4010, !4013}
!4013 = !DILocalVariable(name: "s", arg: 2, scope: !4011, file: !3954, line: 66, type: !857)
!4014 = !DILocation(line: 0, scope: !4011, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 76, column: 25, scope: !4003)
!4016 = !DILocation(line: 0, scope: !3988, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 68, column: 26, scope: !4011, inlinedAt: !4015)
!4018 = !DILocation(line: 2059, column: 24, scope: !3988, inlinedAt: !4017)
!4019 = !DILocation(line: 2059, column: 10, scope: !3988, inlinedAt: !4017)
!4020 = !DILocation(line: 0, scope: !3913, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 76, column: 10, scope: !4003)
!4022 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4021)
!4023 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4021)
!4024 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4021)
!4025 = !DILocation(line: 76, column: 3, scope: !4003)
!4026 = distinct !DISubprogram(name: "xireallocarray", scope: !838, file: !838, line: 89, type: !4027, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4029)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!137, !137, !857, !857}
!4029 = !{!4030, !4031, !4032}
!4030 = !DILocalVariable(name: "p", arg: 1, scope: !4026, file: !838, line: 89, type: !137)
!4031 = !DILocalVariable(name: "n", arg: 2, scope: !4026, file: !838, line: 89, type: !857)
!4032 = !DILocalVariable(name: "s", arg: 3, scope: !4026, file: !838, line: 89, type: !857)
!4033 = !DILocation(line: 0, scope: !4026)
!4034 = !DILocalVariable(name: "p", arg: 1, scope: !4035, file: !3954, line: 98, type: !137)
!4035 = distinct !DISubprogram(name: "ireallocarray", scope: !3954, file: !3954, line: 98, type: !4027, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4036)
!4036 = !{!4034, !4037, !4038}
!4037 = !DILocalVariable(name: "n", arg: 2, scope: !4035, file: !3954, line: 98, type: !857)
!4038 = !DILocalVariable(name: "s", arg: 3, scope: !4035, file: !3954, line: 98, type: !857)
!4039 = !DILocation(line: 0, scope: !4035, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 91, column: 25, scope: !4026)
!4041 = !DILocation(line: 101, column: 13, scope: !4035, inlinedAt: !4040)
!4042 = !DILocation(line: 0, scope: !3913, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 91, column: 10, scope: !4026)
!4044 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4043)
!4045 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4043)
!4046 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4043)
!4047 = !DILocation(line: 91, column: 3, scope: !4026)
!4048 = distinct !DISubprogram(name: "xnmalloc", scope: !838, file: !838, line: 98, type: !4049, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4051)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!137, !139, !139}
!4051 = !{!4052, !4053}
!4052 = !DILocalVariable(name: "n", arg: 1, scope: !4048, file: !838, line: 98, type: !139)
!4053 = !DILocalVariable(name: "s", arg: 2, scope: !4048, file: !838, line: 98, type: !139)
!4054 = !DILocation(line: 0, scope: !4048)
!4055 = !DILocation(line: 0, scope: !3905, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 100, column: 10, scope: !4048)
!4057 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !4056)
!4058 = !DILocation(line: 0, scope: !3913, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !4056)
!4060 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4059)
!4061 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4059)
!4062 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4059)
!4063 = !DILocation(line: 100, column: 3, scope: !4048)
!4064 = distinct !DISubprogram(name: "xinmalloc", scope: !838, file: !838, line: 104, type: !4065, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!137, !857, !857}
!4067 = !{!4068, !4069}
!4068 = !DILocalVariable(name: "n", arg: 1, scope: !4064, file: !838, line: 104, type: !857)
!4069 = !DILocalVariable(name: "s", arg: 2, scope: !4064, file: !838, line: 104, type: !857)
!4070 = !DILocation(line: 0, scope: !4064)
!4071 = !DILocation(line: 0, scope: !4026, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 106, column: 10, scope: !4064)
!4073 = !DILocation(line: 0, scope: !4035, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 91, column: 25, scope: !4026, inlinedAt: !4072)
!4075 = !DILocation(line: 101, column: 13, scope: !4035, inlinedAt: !4074)
!4076 = !DILocation(line: 0, scope: !3913, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 91, column: 10, scope: !4026, inlinedAt: !4072)
!4078 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4077)
!4079 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4077)
!4080 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4077)
!4081 = !DILocation(line: 106, column: 3, scope: !4064)
!4082 = distinct !DISubprogram(name: "x2realloc", scope: !838, file: !838, line: 116, type: !4083, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!137, !137, !844}
!4085 = !{!4086, !4087}
!4086 = !DILocalVariable(name: "p", arg: 1, scope: !4082, file: !838, line: 116, type: !137)
!4087 = !DILocalVariable(name: "ps", arg: 2, scope: !4082, file: !838, line: 116, type: !844)
!4088 = !DILocation(line: 0, scope: !4082)
!4089 = !DILocation(line: 0, scope: !841, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 118, column: 10, scope: !4082)
!4091 = !DILocation(line: 178, column: 14, scope: !841, inlinedAt: !4090)
!4092 = !DILocation(line: 180, column: 9, scope: !4093, inlinedAt: !4090)
!4093 = distinct !DILexicalBlock(scope: !841, file: !838, line: 180, column: 7)
!4094 = !DILocation(line: 180, column: 7, scope: !841, inlinedAt: !4090)
!4095 = !DILocation(line: 182, column: 13, scope: !4096, inlinedAt: !4090)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !838, line: 182, column: 11)
!4097 = distinct !DILexicalBlock(scope: !4093, file: !838, line: 181, column: 5)
!4098 = !DILocation(line: 182, column: 11, scope: !4097, inlinedAt: !4090)
!4099 = !DILocation(line: 197, column: 11, scope: !4100, inlinedAt: !4090)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !838, line: 197, column: 11)
!4101 = distinct !DILexicalBlock(scope: !4093, file: !838, line: 195, column: 5)
!4102 = !DILocation(line: 197, column: 11, scope: !4101, inlinedAt: !4090)
!4103 = !DILocation(line: 198, column: 9, scope: !4100, inlinedAt: !4090)
!4104 = !DILocation(line: 0, scope: !3905, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 201, column: 7, scope: !841, inlinedAt: !4090)
!4106 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !4105)
!4107 = !DILocation(line: 0, scope: !3913, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !4105)
!4109 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4108)
!4110 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4108)
!4111 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4108)
!4112 = !DILocation(line: 202, column: 7, scope: !841, inlinedAt: !4090)
!4113 = !DILocation(line: 118, column: 3, scope: !4082)
!4114 = !DILocation(line: 0, scope: !841)
!4115 = !DILocation(line: 178, column: 14, scope: !841)
!4116 = !DILocation(line: 180, column: 9, scope: !4093)
!4117 = !DILocation(line: 180, column: 7, scope: !841)
!4118 = !DILocation(line: 182, column: 13, scope: !4096)
!4119 = !DILocation(line: 182, column: 11, scope: !4097)
!4120 = !DILocation(line: 190, column: 30, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4096, file: !838, line: 183, column: 9)
!4122 = !DILocation(line: 191, column: 16, scope: !4121)
!4123 = !DILocation(line: 191, column: 13, scope: !4121)
!4124 = !DILocation(line: 192, column: 9, scope: !4121)
!4125 = !DILocation(line: 197, column: 11, scope: !4100)
!4126 = !DILocation(line: 197, column: 11, scope: !4101)
!4127 = !DILocation(line: 198, column: 9, scope: !4100)
!4128 = !DILocation(line: 0, scope: !3905, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 201, column: 7, scope: !841)
!4130 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !4129)
!4131 = !DILocation(line: 0, scope: !3913, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !4129)
!4133 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4132)
!4134 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4132)
!4135 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4132)
!4136 = !DILocation(line: 202, column: 7, scope: !841)
!4137 = !DILocation(line: 203, column: 3, scope: !841)
!4138 = !DILocation(line: 0, scope: !853)
!4139 = !DILocation(line: 230, column: 14, scope: !853)
!4140 = !DILocation(line: 238, column: 7, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !853, file: !838, line: 238, column: 7)
!4142 = !DILocation(line: 238, column: 7, scope: !853)
!4143 = !DILocation(line: 240, column: 9, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !853, file: !838, line: 240, column: 7)
!4145 = !DILocation(line: 240, column: 18, scope: !4144)
!4146 = !DILocation(line: 253, column: 8, scope: !853)
!4147 = !DILocation(line: 256, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !853, file: !838, line: 256, column: 7)
!4149 = !DILocation(line: 256, column: 7, scope: !853)
!4150 = !DILocation(line: 258, column: 27, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4148, file: !838, line: 257, column: 5)
!4152 = !DILocation(line: 259, column: 32, scope: !4151)
!4153 = !DILocation(line: 260, column: 5, scope: !4151)
!4154 = !DILocation(line: 262, column: 9, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !853, file: !838, line: 262, column: 7)
!4156 = !DILocation(line: 262, column: 7, scope: !853)
!4157 = !DILocation(line: 263, column: 9, scope: !4155)
!4158 = !DILocation(line: 263, column: 5, scope: !4155)
!4159 = !DILocation(line: 264, column: 9, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !853, file: !838, line: 264, column: 7)
!4161 = !DILocation(line: 264, column: 14, scope: !4160)
!4162 = !DILocation(line: 265, column: 7, scope: !4160)
!4163 = !DILocation(line: 265, column: 11, scope: !4160)
!4164 = !DILocation(line: 266, column: 11, scope: !4160)
!4165 = !DILocation(line: 267, column: 14, scope: !4160)
!4166 = !DILocation(line: 264, column: 7, scope: !853)
!4167 = !DILocation(line: 268, column: 5, scope: !4160)
!4168 = !DILocation(line: 0, scope: !3980, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 269, column: 8, scope: !853)
!4170 = !DILocation(line: 0, scope: !3988, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 70, column: 25, scope: !3980, inlinedAt: !4169)
!4172 = !DILocation(line: 2059, column: 24, scope: !3988, inlinedAt: !4171)
!4173 = !DILocation(line: 2059, column: 10, scope: !3988, inlinedAt: !4171)
!4174 = !DILocation(line: 0, scope: !3913, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 70, column: 10, scope: !3980, inlinedAt: !4169)
!4176 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4175)
!4177 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4175)
!4178 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4175)
!4179 = !DILocation(line: 270, column: 7, scope: !853)
!4180 = !DILocation(line: 271, column: 3, scope: !853)
!4181 = distinct !DISubprogram(name: "xzalloc", scope: !838, file: !838, line: 279, type: !3933, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4182)
!4182 = !{!4183}
!4183 = !DILocalVariable(name: "s", arg: 1, scope: !4181, file: !838, line: 279, type: !139)
!4184 = !DILocation(line: 0, scope: !4181)
!4185 = !DILocalVariable(name: "n", arg: 1, scope: !4186, file: !838, line: 294, type: !139)
!4186 = distinct !DISubprogram(name: "xcalloc", scope: !838, file: !838, line: 294, type: !4049, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4187)
!4187 = !{!4185, !4188}
!4188 = !DILocalVariable(name: "s", arg: 2, scope: !4186, file: !838, line: 294, type: !139)
!4189 = !DILocation(line: 0, scope: !4186, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 281, column: 10, scope: !4181)
!4191 = !DILocation(line: 296, column: 25, scope: !4186, inlinedAt: !4190)
!4192 = !DILocation(line: 0, scope: !3913, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 296, column: 10, scope: !4186, inlinedAt: !4190)
!4194 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4193)
!4195 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4193)
!4196 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4193)
!4197 = !DILocation(line: 281, column: 3, scope: !4181)
!4198 = !DISubprogram(name: "calloc", scope: !1118, file: !1118, line: 543, type: !4049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4199 = !DILocation(line: 0, scope: !4186)
!4200 = !DILocation(line: 296, column: 25, scope: !4186)
!4201 = !DILocation(line: 0, scope: !3913, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 296, column: 10, scope: !4186)
!4203 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4202)
!4204 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4202)
!4205 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4202)
!4206 = !DILocation(line: 296, column: 3, scope: !4186)
!4207 = distinct !DISubprogram(name: "xizalloc", scope: !838, file: !838, line: 285, type: !3947, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4208)
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "s", arg: 1, scope: !4207, file: !838, line: 285, type: !857)
!4210 = !DILocation(line: 0, scope: !4207)
!4211 = !DILocalVariable(name: "n", arg: 1, scope: !4212, file: !838, line: 300, type: !857)
!4212 = distinct !DISubprogram(name: "xicalloc", scope: !838, file: !838, line: 300, type: !4065, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4213)
!4213 = !{!4211, !4214}
!4214 = !DILocalVariable(name: "s", arg: 2, scope: !4212, file: !838, line: 300, type: !857)
!4215 = !DILocation(line: 0, scope: !4212, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 287, column: 10, scope: !4207)
!4217 = !DILocalVariable(name: "n", arg: 1, scope: !4218, file: !3954, line: 77, type: !857)
!4218 = distinct !DISubprogram(name: "icalloc", scope: !3954, file: !3954, line: 77, type: !4065, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4219)
!4219 = !{!4217, !4220}
!4220 = !DILocalVariable(name: "s", arg: 2, scope: !4218, file: !3954, line: 77, type: !857)
!4221 = !DILocation(line: 0, scope: !4218, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 302, column: 25, scope: !4212, inlinedAt: !4216)
!4223 = !DILocation(line: 91, column: 10, scope: !4218, inlinedAt: !4222)
!4224 = !DILocation(line: 0, scope: !3913, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 302, column: 10, scope: !4212, inlinedAt: !4216)
!4226 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4225)
!4227 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4225)
!4228 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4225)
!4229 = !DILocation(line: 287, column: 3, scope: !4207)
!4230 = !DILocation(line: 0, scope: !4212)
!4231 = !DILocation(line: 0, scope: !4218, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 302, column: 25, scope: !4212)
!4233 = !DILocation(line: 91, column: 10, scope: !4218, inlinedAt: !4232)
!4234 = !DILocation(line: 0, scope: !3913, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 302, column: 10, scope: !4212)
!4236 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4235)
!4237 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4235)
!4238 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4235)
!4239 = !DILocation(line: 302, column: 3, scope: !4212)
!4240 = distinct !DISubprogram(name: "xmemdup", scope: !838, file: !838, line: 310, type: !4241, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!137, !1142, !139}
!4243 = !{!4244, !4245}
!4244 = !DILocalVariable(name: "p", arg: 1, scope: !4240, file: !838, line: 310, type: !1142)
!4245 = !DILocalVariable(name: "s", arg: 2, scope: !4240, file: !838, line: 310, type: !139)
!4246 = !DILocation(line: 0, scope: !4240)
!4247 = !DILocation(line: 0, scope: !3932, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 312, column: 18, scope: !4240)
!4249 = !DILocation(line: 49, column: 25, scope: !3932, inlinedAt: !4248)
!4250 = !DILocation(line: 0, scope: !3913, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 49, column: 10, scope: !3932, inlinedAt: !4248)
!4252 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4251)
!4253 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4251)
!4254 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4251)
!4255 = !DILocalVariable(name: "__dest", arg: 1, scope: !4256, file: !1304, line: 26, type: !1618)
!4256 = distinct !DISubprogram(name: "memcpy", scope: !1304, file: !1304, line: 26, type: !1616, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4257)
!4257 = !{!4255, !4258, !4259}
!4258 = !DILocalVariable(name: "__src", arg: 2, scope: !4256, file: !1304, line: 26, type: !1141)
!4259 = !DILocalVariable(name: "__len", arg: 3, scope: !4256, file: !1304, line: 26, type: !139)
!4260 = !DILocation(line: 0, scope: !4256, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 312, column: 10, scope: !4240)
!4262 = !DILocation(line: 29, column: 10, scope: !4256, inlinedAt: !4261)
!4263 = !DILocation(line: 312, column: 3, scope: !4240)
!4264 = distinct !DISubprogram(name: "ximemdup", scope: !838, file: !838, line: 316, type: !4265, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4267)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!137, !1142, !857}
!4267 = !{!4268, !4269}
!4268 = !DILocalVariable(name: "p", arg: 1, scope: !4264, file: !838, line: 316, type: !1142)
!4269 = !DILocalVariable(name: "s", arg: 2, scope: !4264, file: !838, line: 316, type: !857)
!4270 = !DILocation(line: 0, scope: !4264)
!4271 = !DILocation(line: 0, scope: !3946, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 318, column: 18, scope: !4264)
!4273 = !DILocation(line: 0, scope: !3953, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 55, column: 25, scope: !3946, inlinedAt: !4272)
!4275 = !DILocation(line: 57, column: 26, scope: !3953, inlinedAt: !4274)
!4276 = !DILocation(line: 0, scope: !3913, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 55, column: 10, scope: !3946, inlinedAt: !4272)
!4278 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4277)
!4279 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4277)
!4280 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4277)
!4281 = !DILocation(line: 0, scope: !4256, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 318, column: 10, scope: !4264)
!4283 = !DILocation(line: 29, column: 10, scope: !4256, inlinedAt: !4282)
!4284 = !DILocation(line: 318, column: 3, scope: !4264)
!4285 = distinct !DISubprogram(name: "ximemdup0", scope: !838, file: !838, line: 325, type: !4286, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!136, !1142, !857}
!4288 = !{!4289, !4290, !4291}
!4289 = !DILocalVariable(name: "p", arg: 1, scope: !4285, file: !838, line: 325, type: !1142)
!4290 = !DILocalVariable(name: "s", arg: 2, scope: !4285, file: !838, line: 325, type: !857)
!4291 = !DILocalVariable(name: "result", scope: !4285, file: !838, line: 327, type: !136)
!4292 = !DILocation(line: 0, scope: !4285)
!4293 = !DILocation(line: 327, column: 30, scope: !4285)
!4294 = !DILocation(line: 0, scope: !3946, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 327, column: 18, scope: !4285)
!4296 = !DILocation(line: 0, scope: !3953, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 55, column: 25, scope: !3946, inlinedAt: !4295)
!4298 = !DILocation(line: 57, column: 26, scope: !3953, inlinedAt: !4297)
!4299 = !DILocation(line: 0, scope: !3913, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 55, column: 10, scope: !3946, inlinedAt: !4295)
!4301 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4300)
!4302 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4300)
!4303 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4300)
!4304 = !DILocation(line: 328, column: 3, scope: !4285)
!4305 = !DILocation(line: 328, column: 13, scope: !4285)
!4306 = !DILocation(line: 0, scope: !4256, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 329, column: 10, scope: !4285)
!4308 = !DILocation(line: 29, column: 10, scope: !4256, inlinedAt: !4307)
!4309 = !DILocation(line: 329, column: 3, scope: !4285)
!4310 = distinct !DISubprogram(name: "xstrdup", scope: !838, file: !838, line: 335, type: !1120, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4311)
!4311 = !{!4312}
!4312 = !DILocalVariable(name: "string", arg: 1, scope: !4310, file: !838, line: 335, type: !142)
!4313 = !DILocation(line: 0, scope: !4310)
!4314 = !DILocation(line: 337, column: 27, scope: !4310)
!4315 = !DILocation(line: 337, column: 43, scope: !4310)
!4316 = !DILocation(line: 0, scope: !4240, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 337, column: 10, scope: !4310)
!4318 = !DILocation(line: 0, scope: !3932, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 312, column: 18, scope: !4240, inlinedAt: !4317)
!4320 = !DILocation(line: 49, column: 25, scope: !3932, inlinedAt: !4319)
!4321 = !DILocation(line: 0, scope: !3913, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 49, column: 10, scope: !3932, inlinedAt: !4319)
!4323 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4322)
!4324 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4322)
!4325 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4322)
!4326 = !DILocation(line: 0, scope: !4256, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 312, column: 10, scope: !4240, inlinedAt: !4317)
!4328 = !DILocation(line: 29, column: 10, scope: !4256, inlinedAt: !4327)
!4329 = !DILocation(line: 337, column: 3, scope: !4310)
!4330 = distinct !DISubprogram(name: "xalloc_die", scope: !784, file: !784, line: 32, type: !550, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4331)
!4331 = !{!4332}
!4332 = !DILocalVariable(name: "__errstatus", scope: !4333, file: !784, line: 34, type: !4334)
!4333 = distinct !DILexicalBlock(scope: !4330, file: !784, line: 34, column: 3)
!4334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!4335 = !DILocation(line: 34, column: 3, scope: !4333)
!4336 = !DILocation(line: 0, scope: !4333)
!4337 = !DILocation(line: 40, column: 3, scope: !4330)
!4338 = distinct !DISubprogram(name: "xnumtoumax", scope: !791, file: !791, line: 42, type: !4339, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4341)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!892, !142, !83, !892, !892, !142, !142, !83, !83}
!4341 = !{!4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4354, !4355, !4356}
!4342 = !DILocalVariable(name: "n_str", arg: 1, scope: !4338, file: !791, line: 42, type: !142)
!4343 = !DILocalVariable(name: "base", arg: 2, scope: !4338, file: !791, line: 42, type: !83)
!4344 = !DILocalVariable(name: "min", arg: 3, scope: !4338, file: !791, line: 42, type: !892)
!4345 = !DILocalVariable(name: "max", arg: 4, scope: !4338, file: !791, line: 42, type: !892)
!4346 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4338, file: !791, line: 43, type: !142)
!4347 = !DILocalVariable(name: "err", arg: 6, scope: !4338, file: !791, line: 43, type: !142)
!4348 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4338, file: !791, line: 43, type: !83)
!4349 = !DILocalVariable(name: "flags", arg: 8, scope: !4338, file: !791, line: 44, type: !83)
!4350 = !DILocalVariable(name: "tnum", scope: !4338, file: !791, line: 46, type: !892)
!4351 = !DILocalVariable(name: "r", scope: !4338, file: !791, line: 46, type: !892)
!4352 = !DILocalVariable(name: "s_err", scope: !4338, file: !791, line: 47, type: !4353)
!4353 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !876, line: 43, baseType: !875)
!4354 = !DILocalVariable(name: "overflow_errno", scope: !4338, file: !791, line: 50, type: !83)
!4355 = !DILocalVariable(name: "e", scope: !4338, file: !791, line: 75, type: !83)
!4356 = !DILocalVariable(name: "__errstatus", scope: !4357, file: !791, line: 80, type: !4334)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !791, line: 80, column: 5)
!4358 = distinct !DILexicalBlock(scope: !4338, file: !791, line: 77, column: 7)
!4359 = distinct !DIAssignID()
!4360 = !DILocation(line: 0, scope: !4338)
!4361 = !DILocation(line: 46, column: 3, scope: !4338)
!4362 = !DILocation(line: 47, column: 24, scope: !4338)
!4363 = !DILocation(line: 52, column: 13, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4338, file: !791, line: 52, column: 7)
!4365 = !DILocation(line: 52, column: 7, scope: !4338)
!4366 = !DILocation(line: 54, column: 11, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !791, line: 54, column: 11)
!4368 = distinct !DILexicalBlock(scope: !4364, file: !791, line: 53, column: 5)
!4369 = !DILocation(line: 54, column: 16, scope: !4367)
!4370 = !DILocation(line: 54, column: 11, scope: !4368)
!4371 = !DILocation(line: 57, column: 34, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4367, file: !791, line: 55, column: 9)
!4373 = !DILocation(line: 57, column: 28, scope: !4372)
!4374 = !DILocation(line: 58, column: 15, scope: !4372)
!4375 = !DILocation(line: 60, column: 9, scope: !4372)
!4376 = !DILocation(line: 61, column: 20, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4367, file: !791, line: 61, column: 16)
!4378 = !DILocation(line: 61, column: 16, scope: !4367)
!4379 = !DILocation(line: 64, column: 34, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4377, file: !791, line: 62, column: 9)
!4381 = !DILocation(line: 64, column: 28, scope: !4380)
!4382 = !DILocation(line: 65, column: 15, scope: !4380)
!4383 = !DILocation(line: 67, column: 9, scope: !4380)
!4384 = !DILocation(line: 75, column: 17, scope: !4338)
!4385 = !DILocation(line: 75, column: 11, scope: !4338)
!4386 = !DILocation(line: 78, column: 10, scope: !4358)
!4387 = !DILocation(line: 77, column: 16, scope: !4358)
!4388 = !DILocation(line: 79, column: 14, scope: !4358)
!4389 = !DILocation(line: 80, column: 5, scope: !4358)
!4390 = !DILocation(line: 82, column: 3, scope: !4338)
!4391 = !DILocation(line: 82, column: 9, scope: !4338)
!4392 = !DILocation(line: 84, column: 1, scope: !4338)
!4393 = !DILocation(line: 83, column: 3, scope: !4338)
!4394 = distinct !DISubprogram(name: "xdectoumax", scope: !791, file: !791, line: 92, type: !4395, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4397)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!892, !142, !892, !892, !142, !142, !83}
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4403}
!4398 = !DILocalVariable(name: "n_str", arg: 1, scope: !4394, file: !791, line: 92, type: !142)
!4399 = !DILocalVariable(name: "min", arg: 2, scope: !4394, file: !791, line: 92, type: !892)
!4400 = !DILocalVariable(name: "max", arg: 3, scope: !4394, file: !791, line: 92, type: !892)
!4401 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4394, file: !791, line: 93, type: !142)
!4402 = !DILocalVariable(name: "err", arg: 5, scope: !4394, file: !791, line: 93, type: !142)
!4403 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4394, file: !791, line: 93, type: !83)
!4404 = distinct !DIAssignID()
!4405 = !DILocation(line: 0, scope: !4394)
!4406 = !DILocation(line: 0, scope: !4338, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 95, column: 10, scope: !4394)
!4408 = !DILocation(line: 46, column: 3, scope: !4338, inlinedAt: !4407)
!4409 = !DILocation(line: 47, column: 24, scope: !4338, inlinedAt: !4407)
!4410 = !DILocation(line: 0, scope: !4367, inlinedAt: !4407)
!4411 = !DILocation(line: 52, column: 13, scope: !4364, inlinedAt: !4407)
!4412 = !DILocation(line: 52, column: 7, scope: !4338, inlinedAt: !4407)
!4413 = !DILocation(line: 54, column: 11, scope: !4367, inlinedAt: !4407)
!4414 = !DILocation(line: 54, column: 16, scope: !4367, inlinedAt: !4407)
!4415 = !DILocation(line: 54, column: 11, scope: !4368, inlinedAt: !4407)
!4416 = !DILocation(line: 75, column: 17, scope: !4338, inlinedAt: !4407)
!4417 = !DILocation(line: 75, column: 11, scope: !4338, inlinedAt: !4407)
!4418 = !DILocation(line: 77, column: 16, scope: !4358, inlinedAt: !4407)
!4419 = !DILocation(line: 78, column: 10, scope: !4358, inlinedAt: !4407)
!4420 = !DILocation(line: 80, column: 5, scope: !4358, inlinedAt: !4407)
!4421 = !DILocation(line: 82, column: 3, scope: !4338, inlinedAt: !4407)
!4422 = !DILocation(line: 82, column: 9, scope: !4338, inlinedAt: !4407)
!4423 = !DILocation(line: 84, column: 1, scope: !4338, inlinedAt: !4407)
!4424 = !DILocation(line: 95, column: 3, scope: !4394)
!4425 = distinct !DISubprogram(name: "xstrtoumax", scope: !4426, file: !4426, line: 71, type: !4427, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4431)
!4426 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!4429, !142, !1147, !83, !4430, !142}
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !890, line: 43, baseType: !889)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4442, !4443, !4444, !4445, !4448, !4449}
!4432 = !DILocalVariable(name: "nptr", arg: 1, scope: !4425, file: !4426, line: 71, type: !142)
!4433 = !DILocalVariable(name: "endptr", arg: 2, scope: !4425, file: !4426, line: 71, type: !1147)
!4434 = !DILocalVariable(name: "base", arg: 3, scope: !4425, file: !4426, line: 71, type: !83)
!4435 = !DILocalVariable(name: "val", arg: 4, scope: !4425, file: !4426, line: 72, type: !4430)
!4436 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4425, file: !4426, line: 72, type: !142)
!4437 = !DILocalVariable(name: "t_ptr", scope: !4425, file: !4426, line: 74, type: !136)
!4438 = !DILocalVariable(name: "p", scope: !4425, file: !4426, line: 75, type: !1147)
!4439 = !DILocalVariable(name: "q", scope: !4440, file: !4426, line: 79, type: !142)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !4426, line: 78, column: 5)
!4441 = distinct !DILexicalBlock(scope: !4425, file: !4426, line: 77, column: 7)
!4442 = !DILocalVariable(name: "ch", scope: !4440, file: !4426, line: 80, type: !144)
!4443 = !DILocalVariable(name: "tmp", scope: !4425, file: !4426, line: 91, type: !892)
!4444 = !DILocalVariable(name: "err", scope: !4425, file: !4426, line: 92, type: !4429)
!4445 = !DILocalVariable(name: "xbase", scope: !4446, file: !4426, line: 126, type: !83)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !4426, line: 119, column: 5)
!4447 = distinct !DILexicalBlock(scope: !4425, file: !4426, line: 118, column: 7)
!4448 = !DILocalVariable(name: "suffixes", scope: !4446, file: !4426, line: 127, type: !83)
!4449 = !DILocalVariable(name: "overflow", scope: !4446, file: !4426, line: 156, type: !4429)
!4450 = distinct !DIAssignID()
!4451 = !DILocation(line: 0, scope: !4425)
!4452 = !DILocation(line: 74, column: 3, scope: !4425)
!4453 = !DILocation(line: 75, column: 14, scope: !4425)
!4454 = !DILocation(line: 0, scope: !4440)
!4455 = !DILocation(line: 81, column: 7, scope: !4440)
!4456 = !DILocation(line: 81, column: 14, scope: !4440)
!4457 = !DILocation(line: 82, column: 15, scope: !4440)
!4458 = distinct !{!4458, !4455, !4459, !1044}
!4459 = !DILocation(line: 82, column: 17, scope: !4440)
!4460 = !DILocation(line: 83, column: 14, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4440, file: !4426, line: 83, column: 11)
!4462 = !DILocation(line: 83, column: 11, scope: !4440)
!4463 = !DILocation(line: 85, column: 14, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4461, file: !4426, line: 84, column: 9)
!4465 = !DILocation(line: 90, column: 3, scope: !4425)
!4466 = !DILocation(line: 90, column: 9, scope: !4425)
!4467 = !DILocation(line: 91, column: 20, scope: !4425)
!4468 = !DILocation(line: 94, column: 7, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4425, file: !4426, line: 94, column: 7)
!4470 = !DILocation(line: 94, column: 10, scope: !4469)
!4471 = !DILocation(line: 94, column: 7, scope: !4425)
!4472 = !DILocation(line: 98, column: 14, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !4426, line: 98, column: 11)
!4474 = distinct !DILexicalBlock(scope: !4469, file: !4426, line: 95, column: 5)
!4475 = !DILocation(line: 98, column: 29, scope: !4473)
!4476 = !DILocation(line: 98, column: 32, scope: !4473)
!4477 = !DILocation(line: 98, column: 38, scope: !4473)
!4478 = !DILocation(line: 98, column: 41, scope: !4473)
!4479 = !DILocation(line: 98, column: 11, scope: !4474)
!4480 = !DILocation(line: 102, column: 12, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4469, file: !4426, line: 102, column: 12)
!4482 = !DILocation(line: 102, column: 12, scope: !4469)
!4483 = !DILocation(line: 107, column: 5, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4481, file: !4426, line: 103, column: 5)
!4485 = !DILocation(line: 112, column: 8, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4425, file: !4426, line: 112, column: 7)
!4487 = !DILocation(line: 112, column: 7, scope: !4425)
!4488 = !DILocation(line: 114, column: 12, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4486, file: !4426, line: 113, column: 5)
!4490 = !DILocation(line: 115, column: 7, scope: !4489)
!4491 = !DILocation(line: 118, column: 7, scope: !4447)
!4492 = !DILocation(line: 118, column: 11, scope: !4447)
!4493 = !DILocation(line: 118, column: 7, scope: !4425)
!4494 = !DILocation(line: 120, column: 12, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4446, file: !4426, line: 120, column: 11)
!4496 = !DILocation(line: 120, column: 11, scope: !4446)
!4497 = !DILocation(line: 122, column: 16, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4495, file: !4426, line: 121, column: 9)
!4499 = !DILocation(line: 123, column: 22, scope: !4498)
!4500 = !DILocation(line: 123, column: 11, scope: !4498)
!4501 = !DILocation(line: 0, scope: !4446)
!4502 = !DILocation(line: 128, column: 7, scope: !4446)
!4503 = !DILocation(line: 140, column: 15, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !4426, line: 140, column: 15)
!4505 = distinct !DILexicalBlock(scope: !4446, file: !4426, line: 129, column: 9)
!4506 = !DILocation(line: 140, column: 15, scope: !4505)
!4507 = !DILocation(line: 141, column: 21, scope: !4504)
!4508 = !DILocation(line: 141, column: 13, scope: !4504)
!4509 = !DILocation(line: 144, column: 21, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !4426, line: 144, column: 21)
!4511 = distinct !DILexicalBlock(scope: !4504, file: !4426, line: 142, column: 15)
!4512 = !DILocation(line: 144, column: 29, scope: !4510)
!4513 = !DILocation(line: 144, column: 21, scope: !4511)
!4514 = !DILocation(line: 152, column: 17, scope: !4511)
!4515 = !DILocation(line: 157, column: 7, scope: !4446)
!4516 = !DILocalVariable(name: "err", scope: !4517, file: !4426, line: 64, type: !4429)
!4517 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4426, file: !4426, line: 62, type: !4518, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4520)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!4429, !4430, !83, !83}
!4520 = !{!4521, !4522, !4523, !4516}
!4521 = !DILocalVariable(name: "x", arg: 1, scope: !4517, file: !4426, line: 62, type: !4430)
!4522 = !DILocalVariable(name: "base", arg: 2, scope: !4517, file: !4426, line: 62, type: !83)
!4523 = !DILocalVariable(name: "power", arg: 3, scope: !4517, file: !4426, line: 62, type: !83)
!4524 = !DILocation(line: 0, scope: !4517, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 219, column: 22, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4446, file: !4426, line: 158, column: 9)
!4527 = !DILocalVariable(name: "x", arg: 1, scope: !4528, file: !4426, line: 47, type: !4430)
!4528 = distinct !DISubprogram(name: "bkm_scale", scope: !4426, file: !4426, line: 47, type: !4529, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4531)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!4429, !4430, !83}
!4531 = !{!4527, !4532, !4533}
!4532 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4528, file: !4426, line: 47, type: !83)
!4533 = !DILocalVariable(name: "scaled", scope: !4528, file: !4426, line: 49, type: !892)
!4534 = !DILocation(line: 0, scope: !4528, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4525)
!4536 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4535)
!4537 = distinct !DILexicalBlock(scope: !4528, file: !4426, line: 50, column: 7)
!4538 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4535)
!4539 = !DILocation(line: 66, column: 9, scope: !4517, inlinedAt: !4525)
!4540 = !DILocation(line: 227, column: 11, scope: !4446)
!4541 = !DILocation(line: 0, scope: !4517, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 215, column: 22, scope: !4526)
!4543 = !DILocation(line: 0, scope: !4528, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4542)
!4545 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4544)
!4546 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4544)
!4547 = !DILocation(line: 66, column: 9, scope: !4517, inlinedAt: !4542)
!4548 = !DILocation(line: 0, scope: !4517, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 202, column: 22, scope: !4526)
!4550 = !DILocation(line: 0, scope: !4528, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4549)
!4552 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4551)
!4553 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4551)
!4554 = !DILocation(line: 66, column: 9, scope: !4517, inlinedAt: !4549)
!4555 = !DILocation(line: 0, scope: !4517, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 198, column: 22, scope: !4526)
!4557 = !DILocation(line: 0, scope: !4528, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4556)
!4559 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4558)
!4560 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4558)
!4561 = !DILocation(line: 66, column: 9, scope: !4517, inlinedAt: !4556)
!4562 = !DILocation(line: 0, scope: !4517, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 194, column: 22, scope: !4526)
!4564 = !DILocation(line: 0, scope: !4528, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4563)
!4566 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4565)
!4567 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4565)
!4568 = !DILocation(line: 66, column: 9, scope: !4517, inlinedAt: !4563)
!4569 = !DILocation(line: 0, scope: !4517, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 175, column: 22, scope: !4526)
!4571 = !DILocation(line: 0, scope: !4528, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4570)
!4573 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4572)
!4574 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4572)
!4575 = !DILocation(line: 66, column: 9, scope: !4517, inlinedAt: !4570)
!4576 = !DILocation(line: 0, scope: !4528, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 160, column: 22, scope: !4526)
!4578 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4577)
!4579 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4577)
!4580 = !DILocation(line: 161, column: 11, scope: !4526)
!4581 = !DILocation(line: 0, scope: !4528, inlinedAt: !4582)
!4582 = distinct !DILocation(line: 167, column: 22, scope: !4526)
!4583 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4582)
!4584 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4582)
!4585 = !DILocation(line: 168, column: 11, scope: !4526)
!4586 = !DILocation(line: 0, scope: !4517, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 180, column: 22, scope: !4526)
!4588 = !DILocation(line: 0, scope: !4528, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4587)
!4590 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4589)
!4591 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4589)
!4592 = !DILocation(line: 66, column: 9, scope: !4517, inlinedAt: !4587)
!4593 = !DILocation(line: 0, scope: !4517, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 185, column: 22, scope: !4526)
!4595 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4594)
!4597 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4596)
!4598 = !DILocation(line: 0, scope: !4528, inlinedAt: !4596)
!4599 = !DILocation(line: 0, scope: !4517, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 190, column: 22, scope: !4526)
!4601 = !DILocation(line: 0, scope: !4528, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4600)
!4603 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4602)
!4604 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4602)
!4605 = !DILocation(line: 66, column: 9, scope: !4517, inlinedAt: !4600)
!4606 = !DILocation(line: 0, scope: !4517, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 207, column: 22, scope: !4526)
!4608 = !DILocation(line: 0, scope: !4528, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 66, column: 12, scope: !4517, inlinedAt: !4607)
!4610 = !DILocation(line: 50, column: 7, scope: !4537, inlinedAt: !4609)
!4611 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4609)
!4612 = !DILocation(line: 66, column: 9, scope: !4517, inlinedAt: !4607)
!4613 = !DILocation(line: 0, scope: !4528, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 211, column: 22, scope: !4526)
!4615 = !DILocation(line: 50, column: 7, scope: !4528, inlinedAt: !4614)
!4616 = !DILocation(line: 212, column: 11, scope: !4526)
!4617 = !DILocation(line: 0, scope: !4526)
!4618 = !DILocation(line: 228, column: 10, scope: !4446)
!4619 = !DILocation(line: 229, column: 11, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4446, file: !4426, line: 229, column: 11)
!4621 = !DILocation(line: 229, column: 11, scope: !4446)
!4622 = !DILocation(line: 223, column: 16, scope: !4526)
!4623 = !DILocation(line: 224, column: 22, scope: !4526)
!4624 = !DILocation(line: 100, column: 11, scope: !4474)
!4625 = !DILocation(line: 92, column: 16, scope: !4425)
!4626 = !DILocation(line: 233, column: 8, scope: !4425)
!4627 = !DILocation(line: 234, column: 3, scope: !4425)
!4628 = !DILocation(line: 235, column: 1, scope: !4425)
!4629 = !DISubprogram(name: "strtoumax", scope: !4630, file: !4630, line: 301, type: !4631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4630 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!892, !988, !4633, !83}
!4633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1147)
!4634 = distinct !DISubprogram(name: "rpl_fopen", scope: !896, file: !896, line: 46, type: !4635, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !895, retainedNodes: !4671)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!4637, !142, !142}
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !4639)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !4640)
!4640 = !{!4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4639, file: !206, line: 51, baseType: !83, size: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4639, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4639, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4639, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4639, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4639, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4639, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4639, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4639, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4639, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4639, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4639, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4639, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4639, file: !206, line: 70, baseType: !4655, size: 64, offset: 832)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4639, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4639, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4639, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4639, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4639, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4639, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4639, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4639, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4639, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4639, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4639, file: !206, line: 93, baseType: !4655, size: 64, offset: 1344)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4639, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4639, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4639, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4639, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!4671 = !{!4672, !4673, !4674, !4675, !4676, !4677, !4681, !4683, !4684, !4689, !4692, !4693}
!4672 = !DILocalVariable(name: "filename", arg: 1, scope: !4634, file: !896, line: 46, type: !142)
!4673 = !DILocalVariable(name: "mode", arg: 2, scope: !4634, file: !896, line: 46, type: !142)
!4674 = !DILocalVariable(name: "open_direction", scope: !4634, file: !896, line: 54, type: !83)
!4675 = !DILocalVariable(name: "open_flags", scope: !4634, file: !896, line: 55, type: !83)
!4676 = !DILocalVariable(name: "open_flags_gnu", scope: !4634, file: !896, line: 57, type: !168)
!4677 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4634, file: !896, line: 59, type: !4678)
!4678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4679)
!4679 = !{!4680}
!4680 = !DISubrange(count: 81)
!4681 = !DILocalVariable(name: "p", scope: !4682, file: !896, line: 62, type: !142)
!4682 = distinct !DILexicalBlock(scope: !4634, file: !896, line: 61, column: 3)
!4683 = !DILocalVariable(name: "q", scope: !4682, file: !896, line: 64, type: !136)
!4684 = !DILocalVariable(name: "len", scope: !4685, file: !896, line: 128, type: !139)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !896, line: 127, column: 9)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !896, line: 68, column: 7)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !896, line: 67, column: 5)
!4688 = distinct !DILexicalBlock(scope: !4682, file: !896, line: 67, column: 5)
!4689 = !DILocalVariable(name: "fd", scope: !4690, file: !896, line: 199, type: !83)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !896, line: 198, column: 5)
!4691 = distinct !DILexicalBlock(scope: !4634, file: !896, line: 197, column: 7)
!4692 = !DILocalVariable(name: "fp", scope: !4690, file: !896, line: 204, type: !4637)
!4693 = !DILocalVariable(name: "saved_errno", scope: !4694, file: !896, line: 207, type: !83)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !896, line: 206, column: 9)
!4695 = distinct !DILexicalBlock(scope: !4690, file: !896, line: 205, column: 11)
!4696 = distinct !DIAssignID()
!4697 = !DILocation(line: 0, scope: !4634)
!4698 = !DILocation(line: 59, column: 3, scope: !4634)
!4699 = !DILocation(line: 0, scope: !4682)
!4700 = !DILocation(line: 67, column: 5, scope: !4682)
!4701 = !DILocation(line: 54, column: 7, scope: !4634)
!4702 = !DILocation(line: 67, column: 12, scope: !4687)
!4703 = !DILocation(line: 67, column: 5, scope: !4688)
!4704 = !DILocation(line: 74, column: 19, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !896, line: 74, column: 17)
!4706 = distinct !DILexicalBlock(scope: !4686, file: !896, line: 70, column: 11)
!4707 = !DILocation(line: 74, column: 17, scope: !4706)
!4708 = !DILocation(line: 75, column: 17, scope: !4705)
!4709 = !DILocation(line: 75, column: 20, scope: !4705)
!4710 = !DILocation(line: 75, column: 15, scope: !4705)
!4711 = !DILocation(line: 80, column: 24, scope: !4706)
!4712 = !DILocation(line: 82, column: 19, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4706, file: !896, line: 82, column: 17)
!4714 = !DILocation(line: 82, column: 17, scope: !4706)
!4715 = !DILocation(line: 83, column: 17, scope: !4713)
!4716 = !DILocation(line: 83, column: 20, scope: !4713)
!4717 = !DILocation(line: 83, column: 15, scope: !4713)
!4718 = !DILocation(line: 88, column: 24, scope: !4706)
!4719 = !DILocation(line: 90, column: 19, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4706, file: !896, line: 90, column: 17)
!4721 = !DILocation(line: 90, column: 17, scope: !4706)
!4722 = !DILocation(line: 91, column: 17, scope: !4720)
!4723 = !DILocation(line: 91, column: 20, scope: !4720)
!4724 = !DILocation(line: 91, column: 15, scope: !4720)
!4725 = !DILocation(line: 100, column: 19, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4706, file: !896, line: 100, column: 17)
!4727 = !DILocation(line: 100, column: 17, scope: !4706)
!4728 = !DILocation(line: 101, column: 17, scope: !4726)
!4729 = !DILocation(line: 101, column: 20, scope: !4726)
!4730 = !DILocation(line: 101, column: 15, scope: !4726)
!4731 = !DILocation(line: 107, column: 19, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4706, file: !896, line: 107, column: 17)
!4733 = !DILocation(line: 107, column: 17, scope: !4706)
!4734 = !DILocation(line: 108, column: 17, scope: !4732)
!4735 = !DILocation(line: 108, column: 20, scope: !4732)
!4736 = !DILocation(line: 108, column: 15, scope: !4732)
!4737 = !DILocation(line: 113, column: 24, scope: !4706)
!4738 = !DILocation(line: 115, column: 13, scope: !4706)
!4739 = !DILocation(line: 117, column: 24, scope: !4706)
!4740 = !DILocation(line: 119, column: 13, scope: !4706)
!4741 = !DILocation(line: 128, column: 24, scope: !4685)
!4742 = !DILocation(line: 0, scope: !4685)
!4743 = !DILocation(line: 129, column: 48, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4685, file: !896, line: 129, column: 15)
!4745 = !DILocation(line: 129, column: 15, scope: !4685)
!4746 = !DILocalVariable(name: "__dest", arg: 1, scope: !4747, file: !1304, line: 26, type: !1618)
!4747 = distinct !DISubprogram(name: "memcpy", scope: !1304, file: !1304, line: 26, type: !1616, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !895, retainedNodes: !4748)
!4748 = !{!4746, !4749, !4750}
!4749 = !DILocalVariable(name: "__src", arg: 2, scope: !4747, file: !1304, line: 26, type: !1141)
!4750 = !DILocalVariable(name: "__len", arg: 3, scope: !4747, file: !1304, line: 26, type: !139)
!4751 = !DILocation(line: 0, scope: !4747, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 131, column: 11, scope: !4685)
!4753 = !DILocation(line: 29, column: 10, scope: !4747, inlinedAt: !4752)
!4754 = !DILocation(line: 132, column: 13, scope: !4685)
!4755 = !DILocation(line: 135, column: 9, scope: !4686)
!4756 = !DILocation(line: 67, column: 25, scope: !4687)
!4757 = !DILocation(line: 67, column: 5, scope: !4687)
!4758 = distinct !{!4758, !4703, !4759, !1044}
!4759 = !DILocation(line: 136, column: 7, scope: !4688)
!4760 = !DILocation(line: 138, column: 8, scope: !4682)
!4761 = !DILocation(line: 197, column: 7, scope: !4634)
!4762 = !DILocation(line: 199, column: 47, scope: !4690)
!4763 = !DILocation(line: 199, column: 16, scope: !4690)
!4764 = !DILocation(line: 0, scope: !4690)
!4765 = !DILocation(line: 201, column: 14, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4690, file: !896, line: 201, column: 11)
!4767 = !DILocation(line: 201, column: 11, scope: !4690)
!4768 = !DILocation(line: 204, column: 18, scope: !4690)
!4769 = !DILocation(line: 205, column: 14, scope: !4695)
!4770 = !DILocation(line: 205, column: 11, scope: !4690)
!4771 = !DILocation(line: 207, column: 29, scope: !4694)
!4772 = !DILocation(line: 0, scope: !4694)
!4773 = !DILocation(line: 208, column: 11, scope: !4694)
!4774 = !DILocation(line: 209, column: 17, scope: !4694)
!4775 = !DILocation(line: 210, column: 9, scope: !4694)
!4776 = !DILocalVariable(name: "filename", arg: 1, scope: !4777, file: !896, line: 30, type: !142)
!4777 = distinct !DISubprogram(name: "orig_fopen", scope: !896, file: !896, line: 30, type: !4635, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !895, retainedNodes: !4778)
!4778 = !{!4776, !4779}
!4779 = !DILocalVariable(name: "mode", arg: 2, scope: !4777, file: !896, line: 30, type: !142)
!4780 = !DILocation(line: 0, scope: !4777, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 219, column: 10, scope: !4634)
!4782 = !DILocation(line: 32, column: 10, scope: !4777, inlinedAt: !4781)
!4783 = !DILocation(line: 219, column: 3, scope: !4634)
!4784 = !DILocation(line: 220, column: 1, scope: !4634)
!4785 = !DISubprogram(name: "open", scope: !1948, file: !1948, line: 181, type: !4786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!83, !142, !83, null}
!4788 = !DISubprogram(name: "fdopen", scope: !510, file: !510, line: 293, type: !4789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!4637, !83, !142}
!4791 = !DISubprogram(name: "close", scope: !1807, file: !1807, line: 358, type: !1718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4792 = !DISubprogram(name: "fopen", scope: !510, file: !510, line: 258, type: !4793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!4637, !988, !988}
!4795 = distinct !DISubprogram(name: "close_stream", scope: !898, file: !898, line: 55, type: !4796, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !4832)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!83, !4798}
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !4800)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !4801)
!4801 = !{!4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4800, file: !206, line: 51, baseType: !83, size: 32)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4800, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4800, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4800, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4800, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4800, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4800, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4800, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4800, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4800, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4800, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4800, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4800, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4800, file: !206, line: 70, baseType: !4816, size: 64, offset: 832)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4800, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4800, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4800, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4800, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4800, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4800, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4800, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4800, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4800, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4800, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4800, file: !206, line: 93, baseType: !4816, size: 64, offset: 1344)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4800, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4800, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4800, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4800, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!4832 = !{!4833, !4834, !4836, !4837}
!4833 = !DILocalVariable(name: "stream", arg: 1, scope: !4795, file: !898, line: 55, type: !4798)
!4834 = !DILocalVariable(name: "some_pending", scope: !4795, file: !898, line: 57, type: !4835)
!4835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!4836 = !DILocalVariable(name: "prev_fail", scope: !4795, file: !898, line: 58, type: !4835)
!4837 = !DILocalVariable(name: "fclose_fail", scope: !4795, file: !898, line: 59, type: !4835)
!4838 = !DILocation(line: 0, scope: !4795)
!4839 = !DILocation(line: 57, column: 30, scope: !4795)
!4840 = !DILocalVariable(name: "__stream", arg: 1, scope: !4841, file: !1285, line: 135, type: !4798)
!4841 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1285, file: !1285, line: 135, type: !4796, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !4842)
!4842 = !{!4840}
!4843 = !DILocation(line: 0, scope: !4841, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 58, column: 27, scope: !4795)
!4845 = !DILocation(line: 137, column: 10, scope: !4841, inlinedAt: !4844)
!4846 = !DILocation(line: 58, column: 43, scope: !4795)
!4847 = !DILocation(line: 59, column: 29, scope: !4795)
!4848 = !DILocation(line: 59, column: 45, scope: !4795)
!4849 = !DILocation(line: 69, column: 17, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4795, file: !898, line: 69, column: 7)
!4851 = !DILocation(line: 57, column: 50, scope: !4795)
!4852 = !DILocation(line: 69, column: 33, scope: !4850)
!4853 = !DILocation(line: 69, column: 53, scope: !4850)
!4854 = !DILocation(line: 69, column: 59, scope: !4850)
!4855 = !DILocation(line: 69, column: 7, scope: !4795)
!4856 = !DILocation(line: 71, column: 11, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4850, file: !898, line: 70, column: 5)
!4858 = !DILocation(line: 72, column: 9, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4857, file: !898, line: 71, column: 11)
!4860 = !DILocation(line: 72, column: 15, scope: !4859)
!4861 = !DILocation(line: 77, column: 1, scope: !4795)
!4862 = !DISubprogram(name: "__fpending", scope: !2151, file: !2151, line: 75, type: !4863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!139, !4798}
!4865 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !794, file: !794, line: 100, type: !4866, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4869)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!139, !1696, !142, !139, !4868}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!4869 = !{!4870, !4871, !4872, !4873, !4874}
!4870 = !DILocalVariable(name: "pwc", arg: 1, scope: !4865, file: !794, line: 100, type: !1696)
!4871 = !DILocalVariable(name: "s", arg: 2, scope: !4865, file: !794, line: 100, type: !142)
!4872 = !DILocalVariable(name: "n", arg: 3, scope: !4865, file: !794, line: 100, type: !139)
!4873 = !DILocalVariable(name: "ps", arg: 4, scope: !4865, file: !794, line: 100, type: !4868)
!4874 = !DILocalVariable(name: "ret", scope: !4865, file: !794, line: 130, type: !139)
!4875 = !DILocation(line: 0, scope: !4865)
!4876 = !DILocation(line: 105, column: 9, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4865, file: !794, line: 105, column: 7)
!4878 = !DILocation(line: 105, column: 7, scope: !4865)
!4879 = !DILocation(line: 117, column: 10, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4865, file: !794, line: 117, column: 7)
!4881 = !DILocation(line: 117, column: 7, scope: !4865)
!4882 = !DILocation(line: 130, column: 16, scope: !4865)
!4883 = !DILocation(line: 135, column: 11, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4865, file: !794, line: 135, column: 7)
!4885 = !DILocation(line: 135, column: 25, scope: !4884)
!4886 = !DILocation(line: 135, column: 30, scope: !4884)
!4887 = !DILocation(line: 135, column: 7, scope: !4865)
!4888 = !DILocalVariable(name: "ps", arg: 1, scope: !4889, file: !2391, line: 1135, type: !4868)
!4889 = distinct !DISubprogram(name: "mbszero", scope: !2391, file: !2391, line: 1135, type: !4890, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4892)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{null, !4868}
!4892 = !{!4888}
!4893 = !DILocation(line: 0, scope: !4889, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 137, column: 5, scope: !4884)
!4895 = !DILocalVariable(name: "__dest", arg: 1, scope: !4896, file: !1304, line: 57, type: !137)
!4896 = distinct !DISubprogram(name: "memset", scope: !1304, file: !1304, line: 57, type: !2400, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4897)
!4897 = !{!4895, !4898, !4899}
!4898 = !DILocalVariable(name: "__ch", arg: 2, scope: !4896, file: !1304, line: 57, type: !83)
!4899 = !DILocalVariable(name: "__len", arg: 3, scope: !4896, file: !1304, line: 57, type: !139)
!4900 = !DILocation(line: 0, scope: !4896, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 1137, column: 3, scope: !4889, inlinedAt: !4894)
!4902 = !DILocation(line: 59, column: 10, scope: !4896, inlinedAt: !4901)
!4903 = !DILocation(line: 137, column: 5, scope: !4884)
!4904 = !DILocation(line: 138, column: 11, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4865, file: !794, line: 138, column: 7)
!4906 = !DILocation(line: 138, column: 7, scope: !4865)
!4907 = !DILocation(line: 139, column: 5, scope: !4905)
!4908 = !DILocation(line: 143, column: 26, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4865, file: !794, line: 143, column: 7)
!4910 = !DILocation(line: 143, column: 41, scope: !4909)
!4911 = !DILocation(line: 143, column: 7, scope: !4865)
!4912 = !DILocation(line: 145, column: 15, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !794, line: 145, column: 11)
!4914 = distinct !DILexicalBlock(scope: !4909, file: !794, line: 144, column: 5)
!4915 = !DILocation(line: 145, column: 11, scope: !4914)
!4916 = !DILocation(line: 146, column: 32, scope: !4913)
!4917 = !DILocation(line: 146, column: 16, scope: !4913)
!4918 = !DILocation(line: 146, column: 14, scope: !4913)
!4919 = !DILocation(line: 146, column: 9, scope: !4913)
!4920 = !DILocation(line: 286, column: 1, scope: !4865)
!4921 = !DISubprogram(name: "mbsinit", scope: !1742, file: !1742, line: 293, type: !4922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!83, !4924}
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!4926 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !900, file: !900, line: 27, type: !3897, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !899, retainedNodes: !4927)
!4927 = !{!4928, !4929, !4930, !4931}
!4928 = !DILocalVariable(name: "ptr", arg: 1, scope: !4926, file: !900, line: 27, type: !137)
!4929 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4926, file: !900, line: 27, type: !139)
!4930 = !DILocalVariable(name: "size", arg: 3, scope: !4926, file: !900, line: 27, type: !139)
!4931 = !DILocalVariable(name: "nbytes", scope: !4926, file: !900, line: 29, type: !139)
!4932 = !DILocation(line: 0, scope: !4926)
!4933 = !DILocation(line: 30, column: 7, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4926, file: !900, line: 30, column: 7)
!4935 = !DILocation(line: 30, column: 7, scope: !4926)
!4936 = !DILocation(line: 32, column: 7, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4934, file: !900, line: 31, column: 5)
!4938 = !DILocation(line: 32, column: 13, scope: !4937)
!4939 = !DILocation(line: 33, column: 7, scope: !4937)
!4940 = !DILocalVariable(name: "ptr", arg: 1, scope: !4941, file: !3989, line: 2057, type: !137)
!4941 = distinct !DISubprogram(name: "rpl_realloc", scope: !3989, file: !3989, line: 2057, type: !3981, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !899, retainedNodes: !4942)
!4942 = !{!4940, !4943}
!4943 = !DILocalVariable(name: "size", arg: 2, scope: !4941, file: !3989, line: 2057, type: !139)
!4944 = !DILocation(line: 0, scope: !4941, inlinedAt: !4945)
!4945 = distinct !DILocation(line: 37, column: 10, scope: !4926)
!4946 = !DILocation(line: 2059, column: 24, scope: !4941, inlinedAt: !4945)
!4947 = !DILocation(line: 2059, column: 10, scope: !4941, inlinedAt: !4945)
!4948 = !DILocation(line: 37, column: 3, scope: !4926)
!4949 = !DILocation(line: 38, column: 1, scope: !4926)
!4950 = distinct !DISubprogram(name: "hard_locale", scope: !812, file: !812, line: 28, type: !4951, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !4953)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!168, !83}
!4953 = !{!4954, !4955}
!4954 = !DILocalVariable(name: "category", arg: 1, scope: !4950, file: !812, line: 28, type: !83)
!4955 = !DILocalVariable(name: "locale", scope: !4950, file: !812, line: 30, type: !4956)
!4956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4957)
!4957 = !{!4958}
!4958 = !DISubrange(count: 257)
!4959 = distinct !DIAssignID()
!4960 = !DILocation(line: 0, scope: !4950)
!4961 = !DILocation(line: 30, column: 3, scope: !4950)
!4962 = !DILocation(line: 32, column: 7, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4950, file: !812, line: 32, column: 7)
!4964 = !DILocation(line: 32, column: 7, scope: !4950)
!4965 = !DILocalVariable(name: "__s1", arg: 1, scope: !4966, file: !1010, line: 1359, type: !142)
!4966 = distinct !DISubprogram(name: "streq", scope: !1010, file: !1010, line: 1359, type: !1011, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !4967)
!4967 = !{!4965, !4968}
!4968 = !DILocalVariable(name: "__s2", arg: 2, scope: !4966, file: !1010, line: 1359, type: !142)
!4969 = !DILocation(line: 0, scope: !4966, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 35, column: 9, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4950, file: !812, line: 35, column: 7)
!4972 = !DILocation(line: 1361, column: 11, scope: !4966, inlinedAt: !4970)
!4973 = !DILocation(line: 1361, column: 10, scope: !4966, inlinedAt: !4970)
!4974 = !DILocation(line: 35, column: 29, scope: !4971)
!4975 = !DILocation(line: 0, scope: !4966, inlinedAt: !4976)
!4976 = distinct !DILocation(line: 35, column: 32, scope: !4971)
!4977 = !DILocation(line: 1361, column: 11, scope: !4966, inlinedAt: !4976)
!4978 = !DILocation(line: 1361, column: 10, scope: !4966, inlinedAt: !4976)
!4979 = !DILocation(line: 35, column: 7, scope: !4950)
!4980 = !DILocation(line: 46, column: 3, scope: !4950)
!4981 = !DILocation(line: 47, column: 1, scope: !4950)
!4982 = distinct !DISubprogram(name: "setlocale_null_r", scope: !904, file: !904, line: 154, type: !4983, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !903, retainedNodes: !4985)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!83, !83, !136, !139}
!4985 = !{!4986, !4987, !4988}
!4986 = !DILocalVariable(name: "category", arg: 1, scope: !4982, file: !904, line: 154, type: !83)
!4987 = !DILocalVariable(name: "buf", arg: 2, scope: !4982, file: !904, line: 154, type: !136)
!4988 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4982, file: !904, line: 154, type: !139)
!4989 = !DILocation(line: 0, scope: !4982)
!4990 = !DILocation(line: 159, column: 10, scope: !4982)
!4991 = !DILocation(line: 159, column: 3, scope: !4982)
!4992 = distinct !DISubprogram(name: "setlocale_null", scope: !904, file: !904, line: 186, type: !4993, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !903, retainedNodes: !4995)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!142, !83}
!4995 = !{!4996}
!4996 = !DILocalVariable(name: "category", arg: 1, scope: !4992, file: !904, line: 186, type: !83)
!4997 = !DILocation(line: 0, scope: !4992)
!4998 = !DILocation(line: 189, column: 10, scope: !4992)
!4999 = !DILocation(line: 189, column: 3, scope: !4992)
!5000 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !906, file: !906, line: 35, type: !4993, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !5001)
!5001 = !{!5002, !5003}
!5002 = !DILocalVariable(name: "category", arg: 1, scope: !5000, file: !906, line: 35, type: !83)
!5003 = !DILocalVariable(name: "result", scope: !5000, file: !906, line: 37, type: !142)
!5004 = !DILocation(line: 0, scope: !5000)
!5005 = !DILocation(line: 37, column: 24, scope: !5000)
!5006 = !DILocation(line: 62, column: 3, scope: !5000)
!5007 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !906, file: !906, line: 66, type: !4983, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !5008)
!5008 = !{!5009, !5010, !5011, !5012, !5013}
!5009 = !DILocalVariable(name: "category", arg: 1, scope: !5007, file: !906, line: 66, type: !83)
!5010 = !DILocalVariable(name: "buf", arg: 2, scope: !5007, file: !906, line: 66, type: !136)
!5011 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5007, file: !906, line: 66, type: !139)
!5012 = !DILocalVariable(name: "result", scope: !5007, file: !906, line: 111, type: !142)
!5013 = !DILocalVariable(name: "length", scope: !5014, file: !906, line: 125, type: !139)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !906, line: 124, column: 5)
!5015 = distinct !DILexicalBlock(scope: !5007, file: !906, line: 113, column: 7)
!5016 = !DILocation(line: 0, scope: !5007)
!5017 = !DILocation(line: 0, scope: !5000, inlinedAt: !5018)
!5018 = distinct !DILocation(line: 111, column: 24, scope: !5007)
!5019 = !DILocation(line: 37, column: 24, scope: !5000, inlinedAt: !5018)
!5020 = !DILocation(line: 113, column: 14, scope: !5015)
!5021 = !DILocation(line: 113, column: 7, scope: !5007)
!5022 = !DILocation(line: 116, column: 19, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !906, line: 116, column: 11)
!5024 = distinct !DILexicalBlock(scope: !5015, file: !906, line: 114, column: 5)
!5025 = !DILocation(line: 116, column: 11, scope: !5024)
!5026 = !DILocation(line: 120, column: 16, scope: !5023)
!5027 = !DILocation(line: 120, column: 9, scope: !5023)
!5028 = !DILocation(line: 125, column: 23, scope: !5014)
!5029 = !DILocation(line: 0, scope: !5014)
!5030 = !DILocation(line: 126, column: 18, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5014, file: !906, line: 126, column: 11)
!5032 = !DILocation(line: 126, column: 11, scope: !5014)
!5033 = !DILocation(line: 128, column: 39, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5031, file: !906, line: 127, column: 9)
!5035 = !DILocalVariable(name: "__dest", arg: 1, scope: !5036, file: !1304, line: 26, type: !1618)
!5036 = distinct !DISubprogram(name: "memcpy", scope: !1304, file: !1304, line: 26, type: !1616, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !5037)
!5037 = !{!5035, !5038, !5039}
!5038 = !DILocalVariable(name: "__src", arg: 2, scope: !5036, file: !1304, line: 26, type: !1141)
!5039 = !DILocalVariable(name: "__len", arg: 3, scope: !5036, file: !1304, line: 26, type: !139)
!5040 = !DILocation(line: 0, scope: !5036, inlinedAt: !5041)
!5041 = distinct !DILocation(line: 128, column: 11, scope: !5034)
!5042 = !DILocation(line: 29, column: 10, scope: !5036, inlinedAt: !5041)
!5043 = !DILocation(line: 129, column: 11, scope: !5034)
!5044 = !DILocation(line: 133, column: 23, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !906, line: 133, column: 15)
!5046 = distinct !DILexicalBlock(scope: !5031, file: !906, line: 132, column: 9)
!5047 = !DILocation(line: 133, column: 15, scope: !5046)
!5048 = !DILocation(line: 138, column: 44, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5045, file: !906, line: 134, column: 13)
!5050 = !DILocation(line: 0, scope: !5036, inlinedAt: !5051)
!5051 = distinct !DILocation(line: 138, column: 15, scope: !5049)
!5052 = !DILocation(line: 29, column: 10, scope: !5036, inlinedAt: !5051)
!5053 = !DILocation(line: 139, column: 15, scope: !5049)
!5054 = !DILocation(line: 139, column: 32, scope: !5049)
!5055 = !DILocation(line: 140, column: 13, scope: !5049)
!5056 = !DILocation(line: 0, scope: !5015)
!5057 = !DILocation(line: 145, column: 1, scope: !5007)
