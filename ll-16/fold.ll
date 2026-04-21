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
@break_spaces = internal unnamed_addr global i1 false, align 1, !dbg !471
@optarg = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1, !dbg !146
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !151
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !156
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !161
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !472
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
@fold_file.line_in = internal global [262144 x i8] zeroinitializer, align 1, !dbg !458
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !460
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !462
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !464
@last_character_width = internal unnamed_addr global i32 0, align 4, !dbg !466
@.str.23 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !473
@Version = dso_local local_unnamed_addr global ptr @.str.23, align 8, !dbg !476
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !480
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !493
@.str.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !485
@.str.1.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !487
@.str.2.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !489
@.str.3.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !491
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !495
@stderr = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !501
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !538
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !503
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !624
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !638
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !676
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !683
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !640
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !685
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !628
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !645
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !647
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !649
@.str.13.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !651
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !653
@.str.85 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !689
@.str.1.86 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !692
@.str.2.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !694
@.str.3.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !696
@.str.4.89 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !698
@.str.5.90 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !700
@.str.6.91 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !705
@.str.7.92 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !710
@.str.8.93 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !712
@.str.9.94 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !717
@.str.10.95 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !722
@.str.11.96 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !727
@.str.12.97 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !730
@.str.13.98 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !732
@.str.14.99 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !737
@.str.15.100 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !742
@.str.16.101 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !747
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.106 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !749
@.str.18.107 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !751
@.str.19.108 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !753
@.str.20.109 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !755
@.str.21.110 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !757
@.str.22.111 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !759
@.str.23.112 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !761
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !766
@exit_failure = dso_local global i32 1, align 4, !dbg !774
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !780
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !783
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !785
@.str.128 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !787
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !790
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !793
@.str.142 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !808
@.str.1.143 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !811

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !906 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !910, metadata !DIExpression()), !dbg !911
  %2 = icmp eq i32 %0, 0, !dbg !912
  br i1 %2, label %8, label %3, !dbg !914

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !915, !tbaa !917
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !915
  %6 = load ptr, ptr @program_name, align 8, !dbg !915, !tbaa !917
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !915
  br label %41, !dbg !915

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !921
  %10 = load ptr, ptr @program_name, align 8, !dbg !921, !tbaa !917
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !921
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !923
  %13 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !917
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !923
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !924
  %16 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !917
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !924
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !928
  %19 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !917
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !928
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !931
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !931
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !932
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !932
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !933
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !933
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !934
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !934
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !935
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !935
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !936
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !937, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !949, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr poison, metadata !949, metadata !DIExpression()), !dbg !954
  tail call void @emit_bug_reporting_address() #38, !dbg !956
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !957
  call void @llvm.dbg.value(metadata ptr %27, metadata !952, metadata !DIExpression()), !dbg !954
  %28 = icmp eq ptr %27, null, !dbg !958
  br i1 %28, label %36, label %29, !dbg !960

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #39, !dbg !961
  %31 = icmp eq i32 %30, 0, !dbg !961
  br i1 %31, label %36, label %32, !dbg !962

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !963
  %34 = load ptr, ptr @stdout, align 8, !dbg !963, !tbaa !917
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !963
  br label %36, !dbg !965

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !949, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !953, metadata !DIExpression()), !dbg !954
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !966
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #38, !dbg !966
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #38, !dbg !967
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #38, !dbg !967
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !968
  unreachable, !dbg !968
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !969 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !973 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !979 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !982 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !180 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !184, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata ptr %0, metadata !185, metadata !DIExpression()), !dbg !985
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !986, !tbaa !987
  %3 = icmp eq i32 %2, -1, !dbg !989
  br i1 %3, label %4, label %16, !dbg !990

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #38, !dbg !991
  call void @llvm.dbg.value(metadata ptr %5, metadata !186, metadata !DIExpression()), !dbg !992
  %6 = icmp eq ptr %5, null, !dbg !993
  br i1 %6, label %14, label %7, !dbg !994

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !995, !tbaa !996
  %9 = icmp eq i8 %8, 0, !dbg !995
  br i1 %9, label %14, label %10, !dbg !997

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !998, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !1004, metadata !DIExpression()), !dbg !1005
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #39, !dbg !1007
  %12 = icmp eq i32 %11, 0, !dbg !1008
  %13 = zext i1 %12 to i32, !dbg !997
  br label %14, !dbg !997

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1009, !tbaa !987
  br label %16, !dbg !1010

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1011
  %18 = icmp eq i32 %17, 0, !dbg !1011
  br i1 %18, label %22, label %19, !dbg !1013

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1014, !tbaa !917
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1014
  br label %122, !dbg !1016

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !189, metadata !DIExpression()), !dbg !985
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #39, !dbg !1017
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1018
  call void @llvm.dbg.value(metadata ptr %24, metadata !190, metadata !DIExpression()), !dbg !985
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1019
  call void @llvm.dbg.value(metadata ptr %25, metadata !191, metadata !DIExpression()), !dbg !985
  %26 = icmp eq ptr %25, null, !dbg !1020
  br i1 %26, label %54, label %27, !dbg !1021

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1022
  br i1 %28, label %54, label %29, !dbg !1023

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !192, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !1024
  %30 = icmp ult ptr %24, %25, !dbg !1025
  br i1 %30, label %31, label %52, !dbg !1026

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !985
  %33 = load ptr, ptr %32, align 8, !tbaa !917
  br label %34, !dbg !1026

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !192, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %36, metadata !196, metadata !DIExpression()), !dbg !1024
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1027
  call void @llvm.dbg.value(metadata ptr %37, metadata !192, metadata !DIExpression()), !dbg !1024
  %38 = load i8, ptr %35, align 1, !dbg !1027, !tbaa !996
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1027
  %41 = load i16, ptr %40, align 2, !dbg !1027, !tbaa !1028
  %42 = freeze i16 %41, !dbg !1030
  %43 = lshr i16 %42, 13, !dbg !1030
  %44 = and i16 %43, 1, !dbg !1030
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %46, metadata !196, metadata !DIExpression()), !dbg !1024
  %47 = icmp ult ptr %37, %25, !dbg !1025
  %48 = icmp ult i64 %46, 2, !dbg !1032
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1032
  br i1 %49, label %34, label %50, !dbg !1026, !llvm.loop !1033

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1035
  br i1 %51, label %52, label %54, !dbg !1037

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1037

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !985
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !189, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata ptr %55, metadata !191, metadata !DIExpression()), !dbg !985
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.22) #39, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %57, metadata !197, metadata !DIExpression()), !dbg !985
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1039
  call void @llvm.dbg.value(metadata ptr %58, metadata !198, metadata !DIExpression()), !dbg !985
  br label %59, !dbg !1040

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !985
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !189, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata ptr %60, metadata !198, metadata !DIExpression()), !dbg !985
  %62 = load i8, ptr %60, align 1, !dbg !1041, !tbaa !996
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1042

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1043
  %65 = load i8, ptr %64, align 1, !dbg !1046, !tbaa !996
  %66 = icmp ne i8 %65, 45, !dbg !1047
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1048
  br label %68, !dbg !1048

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !189, metadata !DIExpression()), !dbg !985
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !1049
  %71 = load ptr, ptr %70, align 8, !dbg !1049, !tbaa !917
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1049
  %74 = load i16, ptr %73, align 2, !dbg !1049, !tbaa !1028
  %75 = and i16 %74, 8192, !dbg !1049
  %76 = icmp eq i16 %75, 0, !dbg !1049
  br i1 %76, label %90, label %77, !dbg !1051

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1052
  br i1 %78, label %92, label %79, !dbg !1055

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1056
  %81 = load i8, ptr %80, align 1, !dbg !1056, !tbaa !996
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1056
  %84 = load i16, ptr %83, align 2, !dbg !1056, !tbaa !1028
  %85 = and i16 %84, 8192, !dbg !1056
  %86 = icmp eq i16 %85, 0, !dbg !1056
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1057
  br i1 %89, label %90, label %92, !dbg !1057

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1058
  call void @llvm.dbg.value(metadata ptr %91, metadata !198, metadata !DIExpression()), !dbg !985
  br label %59, !dbg !1040, !llvm.loop !1059

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1061
  %94 = load ptr, ptr @stdout, align 8, !dbg !1061, !tbaa !917
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1061
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !255, metadata !DIExpression()), !dbg !985
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #39, !dbg !1082
  %97 = icmp eq i32 %96, 0, !dbg !1082
  br i1 %97, label %101, label %98, !dbg !1084

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #39, !dbg !1085
  %100 = icmp eq i32 %99, 0, !dbg !1085
  br i1 %100, label %101, label %104, !dbg !1086

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1087
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #38, !dbg !1087
  br label %107, !dbg !1089

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1090
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #38, !dbg !1090
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1092, !tbaa !917
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %108), !dbg !1092
  %110 = load ptr, ptr @stdout, align 8, !dbg !1093, !tbaa !917
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %110), !dbg !1093
  %112 = ptrtoint ptr %60 to i64, !dbg !1094
  %113 = sub i64 %112, %93, !dbg !1094
  %114 = load ptr, ptr @stdout, align 8, !dbg !1094, !tbaa !917
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1094
  %116 = load ptr, ptr @stdout, align 8, !dbg !1095, !tbaa !917
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %116), !dbg !1095
  %118 = load ptr, ptr @stdout, align 8, !dbg !1096, !tbaa !917
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %118), !dbg !1096
  %120 = load ptr, ptr @stdout, align 8, !dbg !1097, !tbaa !917
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1097
  br label %122, !dbg !1098

122:                                              ; preds = %107, %19
  ret void, !dbg !1098
}

; Function Attrs: nounwind
declare !dbg !1099 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1103 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1107 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1109 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1112 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1115 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1118 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1121 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1127 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1128 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1134 {
  %3 = alloca [2 x i8], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1139, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata ptr %1, metadata !1140, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 80, metadata !1141, metadata !DIExpression()), !dbg !1150
  %4 = load ptr, ptr %1, align 8, !dbg !1151, !tbaa !917
  tail call void @set_program_name(ptr noundef %4) #38, !dbg !1152
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #38, !dbg !1153
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #38, !dbg !1154
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #38, !dbg !1155
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1156
  call void @llvm.dbg.value(metadata i64 80, metadata !1141, metadata !DIExpression()), !dbg !1150
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1157
  call void @llvm.dbg.value(metadata i32 %9, metadata !1142, metadata !DIExpression()), !dbg !1150
  %10 = icmp eq i32 %9, -1, !dbg !1158
  br i1 %10, label %42, label %11, !dbg !1159

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  br label %13, !dbg !1159

13:                                               ; preds = %11, %38
  %14 = phi i32 [ %9, %11 ], [ %40, %38 ]
  %15 = phi i64 [ 80, %11 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !1141, metadata !DIExpression()), !dbg !1150
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #38, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1144, metadata !DIExpression()), !dbg !1161
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
  ], !dbg !1162

16:                                               ; preds = %13
  %17 = load ptr, ptr @optarg, align 8, !dbg !1163, !tbaa !917
  br label %28, !dbg !1162

18:                                               ; preds = %13
  store i32 1, ptr @counting_mode, align 4, !dbg !1165, !tbaa !996
  br label %38, !dbg !1166

19:                                               ; preds = %13
  store i32 2, ptr @counting_mode, align 4, !dbg !1167, !tbaa !996
  br label %38, !dbg !1168

20:                                               ; preds = %13
  store i1 true, ptr @break_spaces, align 1, !dbg !1169
  br label %38, !dbg !1170

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %22 = load ptr, ptr @optarg, align 8, !dbg !1171, !tbaa !917
  %23 = icmp eq ptr %22, null, !dbg !1171
  br i1 %23, label %26, label %24, !dbg !1173

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 -1, !dbg !1174
  store ptr %25, ptr @optarg, align 8, !dbg !1174, !tbaa !917
  br label %28, !dbg !1175

26:                                               ; preds = %21
  %27 = trunc i32 %14 to i8, !dbg !1176
  store i8 %27, ptr %3, align 4, !dbg !1178, !tbaa !996
  store i8 0, ptr %12, align 1, !dbg !1179, !tbaa !996
  store ptr %3, ptr @optarg, align 8, !dbg !1180, !tbaa !917
  br label %28

28:                                               ; preds = %16, %24, %26
  %29 = phi ptr [ %17, %16 ], [ %25, %24 ], [ %3, %26 ], !dbg !1163
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #38, !dbg !1181
  %31 = call i64 @xnumtoumax(ptr noundef %29, i32 noundef 10, i64 noundef 1, i64 noundef -10, ptr noundef nonnull @.str.10, ptr noundef %30, i32 noundef 0, i32 noundef 12) #38, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %31, metadata !1141, metadata !DIExpression()), !dbg !1150
  br label %38, !dbg !1183

32:                                               ; preds = %13
  call void @usage(i32 noundef 0) #42, !dbg !1184
  unreachable, !dbg !1184

33:                                               ; preds = %13
  %34 = load ptr, ptr @stdout, align 8, !dbg !1185, !tbaa !917
  %35 = load ptr, ptr @Version, align 8, !dbg !1185, !tbaa !917
  %36 = call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #38, !dbg !1185
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %35, ptr noundef %36, ptr noundef null) #38, !dbg !1185
  call void @exit(i32 noundef 0) #40, !dbg !1185
  unreachable, !dbg !1185

37:                                               ; preds = %13
  call void @usage(i32 noundef 1) #42, !dbg !1186
  unreachable, !dbg !1186

38:                                               ; preds = %28, %20, %19, %18
  %39 = phi i64 [ %31, %28 ], [ %15, %20 ], [ %15, %19 ], [ %15, %18 ], !dbg !1150
  call void @llvm.dbg.value(metadata i64 %39, metadata !1141, metadata !DIExpression()), !dbg !1150
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #38, !dbg !1187
  %40 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1157
  call void @llvm.dbg.value(metadata i32 %40, metadata !1142, metadata !DIExpression()), !dbg !1150
  %41 = icmp eq i32 %40, -1, !dbg !1158
  br i1 %41, label %42, label %13, !dbg !1159, !llvm.loop !1188

42:                                               ; preds = %38, %2
  %43 = phi i64 [ 80, %2 ], [ %39, %38 ], !dbg !1150
  %44 = load i32, ptr @optind, align 4, !dbg !1189, !tbaa !987
  %45 = icmp eq i32 %44, %0, !dbg !1190
  br i1 %45, label %50, label %46, !dbg !1191

46:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %44, metadata !1146, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8 poison, metadata !1143, metadata !DIExpression()), !dbg !1150
  %47 = icmp slt i32 %44, %0, !dbg !1193
  br i1 %47, label %48, label %62, !dbg !1195

48:                                               ; preds = %46
  %49 = sext i32 %44 to i64, !dbg !1195
  br label %52, !dbg !1195

50:                                               ; preds = %42
  %51 = call fastcc i1 @fold_file(ptr noundef nonnull @.str.16, i64 noundef %43), !dbg !1196
  call void @llvm.dbg.value(metadata i1 %51, metadata !1143, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1150
  br label %62, !dbg !1197

52:                                               ; preds = %48, %52
  %53 = phi i64 [ %49, %48 ], [ %59, %52 ]
  %54 = phi i1 [ true, %48 ], [ %58, %52 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !1146, metadata !DIExpression()), !dbg !1192
  %55 = getelementptr inbounds ptr, ptr %1, i64 %53, !dbg !1198
  %56 = load ptr, ptr %55, align 8, !dbg !1198, !tbaa !917
  %57 = call fastcc i1 @fold_file(ptr noundef %56, i64 noundef %43), !dbg !1199
  %58 = and i1 %54, %57, !dbg !1200
  call void @llvm.dbg.value(metadata i1 %58, metadata !1143, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1150
  %59 = add nsw i64 %53, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %59, metadata !1146, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8 poison, metadata !1143, metadata !DIExpression()), !dbg !1150
  %60 = trunc i64 %59 to i32, !dbg !1193
  %61 = icmp eq i32 %60, %0, !dbg !1193
  br i1 %61, label %62, label %52, !dbg !1195, !llvm.loop !1202

62:                                               ; preds = %52, %46, %50
  %63 = phi i1 [ %51, %50 ], [ true, %46 ], [ %58, %52 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1143, metadata !DIExpression()), !dbg !1150
  %64 = load i1, ptr @have_read_stdin, align 1, !dbg !1204
  br i1 %64, label %65, label %72, !dbg !1206

65:                                               ; preds = %62
  %66 = load ptr, ptr @stdin, align 8, !dbg !1207, !tbaa !917
  %67 = call i32 @rpl_fclose(ptr noundef %66) #38, !dbg !1208
  %68 = icmp eq i32 %67, -1, !dbg !1209
  br i1 %68, label %69, label %72, !dbg !1210

69:                                               ; preds = %65
  %70 = tail call ptr @__errno_location() #41, !dbg !1211
  %71 = load i32, ptr %70, align 4, !dbg !1211, !tbaa !987
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %71, ptr noundef nonnull @.str.16) #38, !dbg !1211
  unreachable, !dbg !1211

72:                                               ; preds = %65, %62
  %73 = xor i1 %63, true, !dbg !1212
  %74 = zext i1 %73 to i32, !dbg !1212
  ret i32 %74, !dbg !1213
}

; Function Attrs: nounwind
declare !dbg !1214 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1217 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1218 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1221 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define internal fastcc i1 @fold_file(ptr noundef %0, i64 noundef %1) unnamed_addr #10 !dbg !403 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__mbstate_t, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.__mbstate_t, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !407, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %1, metadata !408, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %0, metadata !998, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1004, metadata !DIExpression()), !dbg !1228
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.16) #39, !dbg !1231
  %10 = icmp eq i32 %9, 0, !dbg !1232
  br i1 %10, label %11, label %13, !dbg !1233

11:                                               ; preds = %2
  %12 = load ptr, ptr @stdin, align 8, !dbg !1234, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %12, metadata !409, metadata !DIExpression()), !dbg !1227
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1236
  br label %15, !dbg !1237

13:                                               ; preds = %2
  %14 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.60) #38, !dbg !1238
  call void @llvm.dbg.value(metadata ptr %14, metadata !409, metadata !DIExpression()), !dbg !1227
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ], !dbg !1239
  call void @llvm.dbg.value(metadata ptr %16, metadata !409, metadata !DIExpression()), !dbg !1227
  %17 = icmp eq ptr %16, null, !dbg !1240
  br i1 %17, label %18, label %22, !dbg !1242

18:                                               ; preds = %15
  %19 = tail call ptr @__errno_location() #41, !dbg !1243
  %20 = load i32, ptr %19, align 4, !dbg !1243, !tbaa !987
  %21 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #38, !dbg !1243
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.61, ptr noundef %21) #38, !dbg !1243
  br label %290, !dbg !1245

22:                                               ; preds = %15
  tail call void @fadvise(ptr noundef nonnull %16, i32 noundef 2) #38, !dbg !1246
  call void @llvm.dbg.value(metadata ptr @fold_file.line_in, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %16, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 262144, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1227
  br label %23, !dbg !1247

23:                                               ; preds = %97, %22
  %24 = phi i64 [ 0, %22 ], [ %92, %97 ], !dbg !1227
  %25 = phi i64 [ 0, %22 ], [ %52, %97 ], !dbg !1227
  %26 = phi i64 [ 0, %22 ], [ %98, %97 ], !dbg !1227
  %27 = phi i64 [ 0, %22 ], [ %99, %97 ], !dbg !1227
  call void @llvm.dbg.value(metadata i64 %25, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %24, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %27, metadata !410, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %26, metadata !411, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr undef, metadata !1248, metadata !DIExpression()), !dbg !1259
  %28 = sub nsw i64 %25, %24, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %28, metadata !1254, metadata !DIExpression()), !dbg !1259
  %29 = icmp slt i64 %28, 4, !dbg !1262
  br i1 %29, label %30, label %50, !dbg !1263

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %16, metadata !1264, metadata !DIExpression()), !dbg !1270
  %31 = load i32, ptr %16, align 8, !dbg !1272, !tbaa !1273
  %32 = and i32 %31, 16, !dbg !1276
  %33 = icmp eq i32 %32, 0, !dbg !1276
  br i1 %33, label %34, label %45, !dbg !1277

34:                                               ; preds = %30
  %35 = icmp sgt i64 %28, 0, !dbg !1278
  br i1 %35, label %36, label %39, !dbg !1280

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %24, !dbg !1281
  call void @llvm.dbg.value(metadata ptr @fold_file.line_in, metadata !1283, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata ptr %37, metadata !1289, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i64 %28, metadata !1290, metadata !DIExpression()), !dbg !1291
  %38 = call ptr @__memmove_chk(ptr noundef nonnull @fold_file.line_in, ptr noundef nonnull %37, i64 noundef %28, i64 noundef 262144) #38, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %28, metadata !1255, metadata !DIExpression()), !dbg !1294
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i64 [ %28, %36 ], [ 0, %34 ], !dbg !1295
  call void @llvm.dbg.value(metadata i64 %40, metadata !1255, metadata !DIExpression()), !dbg !1294
  %41 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %40, !dbg !1296
  %42 = sub nuw nsw i64 262144, %40, !dbg !1296
  %43 = call i64 @fread_unlocked(ptr noundef nonnull %41, i64 noundef 1, i64 noundef %42, ptr noundef nonnull %16), !dbg !1296
  %44 = add i64 %43, %40, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %44, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %44, metadata !1254, metadata !DIExpression()), !dbg !1259
  br label %45, !dbg !1298

45:                                               ; preds = %39, %30
  %46 = phi i64 [ 0, %39 ], [ %24, %30 ], !dbg !1227
  %47 = phi i64 [ %44, %39 ], [ %25, %30 ], !dbg !1227
  %48 = phi i64 [ %44, %39 ], [ %28, %30 ], !dbg !1259
  call void @llvm.dbg.value(metadata i64 %47, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %46, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %48, metadata !1254, metadata !DIExpression()), !dbg !1259
  %49 = icmp slt i64 %48, 1, !dbg !1299
  br i1 %49, label %265, label %50, !dbg !1301

50:                                               ; preds = %45, %23
  %51 = phi i64 [ %46, %45 ], [ %24, %23 ], !dbg !1227
  %52 = phi i64 [ %47, %45 ], [ %25, %23 ], !dbg !1227
  call void @llvm.dbg.value(metadata i64 %52, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %51, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1227
  %53 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %51, !dbg !1302
  call void @llvm.dbg.value(metadata ptr %53, metadata !1303, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1323
  %54 = load i8, ptr %53, align 1, !dbg !1325, !tbaa !996
  call void @llvm.dbg.value(metadata i8 %54, metadata !1309, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %54, metadata !1326, metadata !DIExpression()), !dbg !1331
  %55 = icmp sgt i8 %54, -1, !dbg !1334
  br i1 %55, label %56, label %59, !dbg !1335

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 1, metadata !1336, metadata !DIExpression()), !dbg !1342
  %57 = zext i8 %54 to i64, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %57, metadata !1341, metadata !DIExpression()), !dbg !1342
  %58 = or i64 %57, 1099511627776, !dbg !1344
  br label %80, !dbg !1345

59:                                               ; preds = %50
  call void @llvm.dbg.value(metadata !DIArgList(ptr @fold_file.line_in, i64 %52), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1323
  %60 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %52, !dbg !1346
  call void @llvm.dbg.value(metadata ptr %60, metadata !1308, metadata !DIExpression()), !dbg !1323
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #38, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1310, metadata !DIExpression()), !dbg !1348
  store i32 0, ptr %7, align 4, !dbg !1349, !tbaa !1350
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #38, !dbg !1352
  %61 = ptrtoint ptr %60 to i64, !dbg !1353
  %62 = ptrtoint ptr %53 to i64, !dbg !1353
  %63 = sub i64 %61, %62, !dbg !1353
  call void @llvm.dbg.value(metadata ptr %8, metadata !1321, metadata !DIExpression(DW_OP_deref)), !dbg !1323
  %64 = call i64 @mbrtoc32(ptr noundef nonnull %8, ptr noundef nonnull %53, i64 noundef %63, ptr noundef nonnull %7) #38, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %64, metadata !1322, metadata !DIExpression()), !dbg !1323
  %65 = icmp slt i64 %64, 0, !dbg !1355
  br i1 %65, label %66, label %70, !dbg !1357, !prof !1358

66:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i8 %54, metadata !1359, metadata !DIExpression()), !dbg !1364
  %67 = zext i8 %54 to i64, !dbg !1366
  %68 = shl nuw nsw i64 %67, 32, !dbg !1366
  %69 = or i64 %68, 1099511627776, !dbg !1366
  br label %78, !dbg !1367

70:                                               ; preds = %59
  %71 = load i32, ptr %8, align 4, !dbg !1368, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %71, metadata !1321, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i32 %71, metadata !1341, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %64, metadata !1336, metadata !DIExpression()), !dbg !1369
  %72 = icmp ne i64 %64, 0, !dbg !1371
  call void @llvm.assume(i1 %72), !dbg !1371
  %73 = icmp ult i64 %64, 5, !dbg !1372
  call void @llvm.assume(i1 %73), !dbg !1372
  %74 = icmp ult i32 %71, 1114112, !dbg !1373
  call void @llvm.assume(i1 %74), !dbg !1373
  %75 = shl nuw nsw i64 %64, 40, !dbg !1374
  %76 = zext i32 %71 to i64, !dbg !1374
  %77 = or i64 %75, %76, !dbg !1374
  br label %78, !dbg !1375

78:                                               ; preds = %70, %66
  %79 = phi i64 [ %69, %66 ], [ %77, %70 ], !dbg !1323
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #38, !dbg !1376
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #38, !dbg !1376
  br label %80

80:                                               ; preds = %78, %56
  %81 = phi i64 [ %58, %56 ], [ %79, %78 ], !dbg !1323
  call void @llvm.dbg.value(metadata i64 %81, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %81, metadata !1258, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %81, metadata !1258, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %81, metadata !1258, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1259
  %82 = and i64 %81, 1095216660480, !dbg !1377
  %83 = icmp eq i64 %82, 0, !dbg !1377
  br i1 %83, label %84, label %86, !dbg !1379

84:                                               ; preds = %80
  %85 = lshr i64 %81, 40, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %85, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %81, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1259
  call void @llvm.dbg.value(metadata !DIArgList(i64 %51, i64 %85), metadata !415, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1227
  br label %89, !dbg !1381

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 %51, metadata !415, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1227
  %87 = load i8, ptr %53, align 1, !dbg !1382, !tbaa !996
  %88 = zext i8 %87 to i64, !dbg !1384
  call void @llvm.dbg.value(metadata i8 %87, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1259
  br label %89

89:                                               ; preds = %84, %86
  %90 = phi i64 [ %85, %84 ], [ 1, %86 ]
  %91 = phi i64 [ %81, %84 ], [ %88, %86 ], !dbg !1259
  %92 = add nsw i64 %90, %51, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %92, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i32 poison, metadata !1258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %52, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %92, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1227
  call void @llvm.dbg.value(metadata i16 poison, metadata !1258, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1259
  call void @llvm.dbg.value(metadata i32 poison, metadata !1258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1259
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1259
  call void @llvm.dbg.value(metadata i8 poison, metadata !1258, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1259
  %93 = trunc i64 %91 to i32, !dbg !1386
  call void @llvm.dbg.value(metadata i32 %93, metadata !426, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1227
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %81, metadata !426, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1227
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1227
  switch i32 %93, label %94 [
    i32 -1, label %265
    i32 10, label %96
  ], !dbg !1247

94:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i64 %81, metadata !426, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1227
  %95 = lshr i64 %81, 40, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %95, metadata !426, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1227
  br label %100, !dbg !1387

96:                                               ; preds = %89
  call fastcc void @write_out(i64 noundef %26, i1 noundef true), !dbg !1404
  call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1227
  br label %97, !dbg !1407

97:                                               ; preds = %96, %247, %258
  %98 = phi i64 [ 0, %96 ], [ %95, %247 ], [ %264, %258 ]
  %99 = phi i64 [ 0, %96 ], [ %128, %247 ], [ %254, %258 ]
  br label %23, !dbg !1227, !llvm.loop !1408

100:                                              ; preds = %185, %94
  %101 = phi i64 [ %26, %94 ], [ %186, %185 ], !dbg !1227
  %102 = phi i64 [ %27, %94 ], [ %187, %185 ], !dbg !1227
  call void @llvm.dbg.value(metadata i64 %102, metadata !410, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %101, metadata !411, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.label(metadata !454), !dbg !1410
  call void @llvm.dbg.value(metadata i32 %93, metadata !1393, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1411
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1393, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1411
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1393, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1411
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1393, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %102, metadata !1392, metadata !DIExpression()), !dbg !1411
  %103 = load i32, ptr @counting_mode, align 4, !dbg !1412, !tbaa !996
  %104 = icmp eq i32 %103, 1, !dbg !1413
  br i1 %104, label %125, label %105, !dbg !1387

105:                                              ; preds = %100
  switch i32 %93, label %115 [
    i32 8, label %106
    i32 13, label %253
    i32 9, label %112
  ], !dbg !1414

106:                                              ; preds = %105
  %107 = icmp eq i64 %102, 0, !dbg !1415
  br i1 %107, label %253, label %108, !dbg !1418

108:                                              ; preds = %106
  %109 = load i32, ptr @last_character_width, align 4, !dbg !1419, !tbaa !987
  %110 = sext i32 %109 to i64, !dbg !1419
  %111 = sub i64 %102, %110, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %111, metadata !1392, metadata !DIExpression()), !dbg !1411
  br label %127, !dbg !1421

112:                                              ; preds = %105
  %113 = and i64 %102, -8, !dbg !1422
  %114 = add i64 %113, 8, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %114, metadata !1392, metadata !DIExpression()), !dbg !1411
  br label %127, !dbg !1423

115:                                              ; preds = %105
  %116 = icmp eq i32 %103, 2, !dbg !1424
  br i1 %116, label %121, label %117, !dbg !1425

117:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %93, metadata !1426, metadata !DIExpression()), !dbg !1432
  %118 = call i32 @wcwidth(i32 noundef %93) #38, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %118, metadata !1394, metadata !DIExpression()), !dbg !1435
  %119 = icmp slt i32 %118, 0, !dbg !1436
  %120 = select i1 %119, i32 1, i32 %118, !dbg !1437
  br label %121

121:                                              ; preds = %117, %115
  %122 = phi i32 [ %120, %117 ], [ 1, %115 ], !dbg !1438
  store i32 %122, ptr @last_character_width, align 4, !dbg !1438, !tbaa !987
  %123 = zext i32 %122 to i64, !dbg !1439
  %124 = add i64 %102, %123, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %124, metadata !1392, metadata !DIExpression()), !dbg !1411
  br label %127

125:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i64 %81, metadata !1393, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1411
  %126 = add i64 %102, %95, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %126, metadata !1392, metadata !DIExpression()), !dbg !1411
  br label %127

127:                                              ; preds = %108, %112, %121, %125
  %128 = phi i64 [ %111, %108 ], [ %114, %112 ], [ %124, %121 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !1392, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %128, metadata !410, metadata !DIExpression()), !dbg !1227
  %129 = icmp ugt i64 %128, %1, !dbg !1442
  br i1 %129, label %130, label %253, !dbg !1443

130:                                              ; preds = %127
  %131 = load i1, ptr @break_spaces, align 1, !dbg !1444
  br i1 %131, label %132, label %245, !dbg !1445

132:                                              ; preds = %130
  call void @llvm.dbg.value(metadata i32 0, metadata !437, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %101, metadata !443, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !444, metadata !DIExpression()), !dbg !1446
  %133 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %101, !dbg !1447
  call void @llvm.dbg.value(metadata ptr %133, metadata !445, metadata !DIExpression()), !dbg !1446
  %134 = icmp sgt i64 %101, 0, !dbg !1448
  br i1 %134, label %135, label %245, !dbg !1450

135:                                              ; preds = %132
  %136 = ptrtoint ptr %133 to i64
  br label %139, !dbg !1450

137:                                              ; preds = %164
  %138 = icmp eq i32 %174, 0, !dbg !1451
  br i1 %138, label %245, label %177, !dbg !1452

139:                                              ; preds = %135, %164
  %140 = phi i32 [ 0, %135 ], [ %174, %164 ]
  %141 = phi i64 [ %101, %135 ], [ %173, %164 ]
  %142 = phi ptr [ @fold_file.line_out, %135 ], [ %175, %164 ]
  call void @llvm.dbg.value(metadata i32 %140, metadata !437, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %141, metadata !443, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata ptr %142, metadata !444, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata ptr %142, metadata !1303, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata ptr %133, metadata !1308, metadata !DIExpression()), !dbg !1453
  %143 = load i8, ptr %142, align 1, !dbg !1456, !tbaa !996
  call void @llvm.dbg.value(metadata i8 %143, metadata !1309, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %143, metadata !1326, metadata !DIExpression()), !dbg !1457
  %144 = icmp sgt i8 %143, -1, !dbg !1459
  br i1 %144, label %145, label %149, !dbg !1460

145:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 1, metadata !1336, metadata !DIExpression()), !dbg !1461
  %146 = zext i8 %143 to i64, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %146, metadata !1341, metadata !DIExpression()), !dbg !1461
  %147 = or i64 %146, 1099511627776, !dbg !1463
  %148 = ptrtoint ptr %142 to i64, !dbg !1464
  br label %164, !dbg !1465

149:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !1466
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1310, metadata !DIExpression()), !dbg !1467
  store i32 0, ptr %5, align 4, !dbg !1468, !tbaa !1350
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #38, !dbg !1469
  %150 = ptrtoint ptr %142 to i64, !dbg !1470
  %151 = sub i64 %136, %150, !dbg !1470
  call void @llvm.dbg.value(metadata ptr %6, metadata !1321, metadata !DIExpression(DW_OP_deref)), !dbg !1453
  %152 = call i64 @mbrtoc32(ptr noundef nonnull %6, ptr noundef nonnull %142, i64 noundef %151, ptr noundef nonnull %5) #38, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %152, metadata !1322, metadata !DIExpression()), !dbg !1453
  %153 = icmp slt i64 %152, 0, !dbg !1472
  br i1 %153, label %162, label %154, !dbg !1473, !prof !1358

154:                                              ; preds = %149
  %155 = load i32, ptr %6, align 4, !dbg !1474, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %155, metadata !1321, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 %155, metadata !1341, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i64 %152, metadata !1336, metadata !DIExpression()), !dbg !1475
  %156 = icmp ne i64 %152, 0, !dbg !1477
  call void @llvm.assume(i1 %156), !dbg !1477
  %157 = icmp ult i64 %152, 5, !dbg !1478
  call void @llvm.assume(i1 %157), !dbg !1478
  %158 = icmp ult i32 %155, 1114112, !dbg !1479
  call void @llvm.assume(i1 %158), !dbg !1479
  %159 = shl nuw nsw i64 %152, 40, !dbg !1480
  %160 = zext i32 %155 to i64, !dbg !1480
  %161 = or i64 %159, %160, !dbg !1480
  br label %162, !dbg !1481

162:                                              ; preds = %149, %154
  %163 = phi i64 [ %161, %154 ], [ 1099511627776, %149 ], !dbg !1453
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #38, !dbg !1482
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1482
  br label %164

164:                                              ; preds = %145, %162
  %165 = phi i64 [ %148, %145 ], [ %150, %162 ], !dbg !1464
  %166 = phi i64 [ %147, %145 ], [ %163, %162 ], !dbg !1453
  %167 = trunc i64 %166 to i32, !dbg !1483
  call void @llvm.dbg.value(metadata i32 %167, metadata !446, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %166, metadata !446, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1484
  %168 = lshr i64 %166, 40, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %168, metadata !446, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %166, metadata !446, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %167, metadata !1485, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %167, metadata !1493, metadata !DIExpression()), !dbg !1500
  %169 = call i32 @iswblank(i32 noundef %167) #38, !dbg !1502
  %170 = icmp eq i32 %169, 0, !dbg !1503
  %171 = trunc i64 %168 to i32, !dbg !1464
  %172 = sub i64 %165, ptrtoint (ptr @fold_file.line_out to i64), !dbg !1464
  %173 = select i1 %170, i64 %141, i64 %172, !dbg !1464
  %174 = select i1 %170, i32 %140, i32 %171, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %174, metadata !437, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %173, metadata !443, metadata !DIExpression()), !dbg !1446
  %175 = getelementptr inbounds i8, ptr %142, i64 %168, !dbg !1504
  call void @llvm.dbg.value(metadata ptr %175, metadata !444, metadata !DIExpression()), !dbg !1446
  %176 = icmp ult ptr %175, %133, !dbg !1448
  br i1 %176, label %139, label %137, !dbg !1450, !llvm.loop !1505

177:                                              ; preds = %137
  %178 = zext i32 %174 to i64
  %179 = add nsw i64 %173, %178, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %179, metadata !443, metadata !DIExpression()), !dbg !1446
  call fastcc void @write_out(i64 noundef %179, i1 noundef true), !dbg !1508
  %180 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %179, !dbg !1509
  %181 = sub nsw i64 %101, %179, !dbg !1510
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1283, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %180, metadata !1289, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %181, metadata !1290, metadata !DIExpression()), !dbg !1511
  %182 = call ptr @__memmove_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %180, i64 noundef %181, i64 noundef 262144) #38, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %181, metadata !411, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !448, metadata !DIExpression()), !dbg !1514
  %183 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %181, !dbg !1515
  call void @llvm.dbg.value(metadata ptr %183, metadata !451, metadata !DIExpression()), !dbg !1514
  %184 = icmp sgt i64 %181, 0, !dbg !1516
  br i1 %184, label %188, label %185, !dbg !1518

185:                                              ; preds = %241, %177, %252
  %186 = phi i64 [ 0, %252 ], [ %181, %177 ], [ %181, %241 ]
  %187 = phi i64 [ 0, %252 ], [ 0, %177 ], [ %242, %241 ]
  br label %100, !dbg !1227

188:                                              ; preds = %177
  %189 = ptrtoint ptr %183 to i64
  br label %190, !dbg !1518

190:                                              ; preds = %188, %241
  %191 = phi i64 [ 0, %188 ], [ %242, %241 ]
  %192 = phi ptr [ @fold_file.line_out, %188 ], [ %243, %241 ]
  call void @llvm.dbg.value(metadata i64 %191, metadata !410, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %192, metadata !448, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata ptr %192, metadata !1303, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata ptr %183, metadata !1308, metadata !DIExpression()), !dbg !1519
  %193 = load i8, ptr %192, align 1, !dbg !1522, !tbaa !996
  call void @llvm.dbg.value(metadata i8 %193, metadata !1309, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8 %193, metadata !1326, metadata !DIExpression()), !dbg !1523
  %194 = icmp sgt i8 %193, -1, !dbg !1525
  br i1 %194, label %195, label %198, !dbg !1526

195:                                              ; preds = %190
  call void @llvm.dbg.value(metadata i64 1, metadata !1336, metadata !DIExpression()), !dbg !1527
  %196 = zext i8 %193 to i64, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %196, metadata !1341, metadata !DIExpression()), !dbg !1527
  %197 = or i64 %196, 1099511627776, !dbg !1529
  br label %213, !dbg !1530

198:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1310, metadata !DIExpression()), !dbg !1532
  store i32 0, ptr %3, align 4, !dbg !1533, !tbaa !1350
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1534
  %199 = ptrtoint ptr %192 to i64, !dbg !1535
  %200 = sub i64 %189, %199, !dbg !1535
  call void @llvm.dbg.value(metadata ptr %4, metadata !1321, metadata !DIExpression(DW_OP_deref)), !dbg !1519
  %201 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %192, i64 noundef %200, ptr noundef nonnull %3) #38, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %201, metadata !1322, metadata !DIExpression()), !dbg !1519
  %202 = icmp slt i64 %201, 0, !dbg !1537
  br i1 %202, label %211, label %203, !dbg !1538, !prof !1358

203:                                              ; preds = %198
  %204 = load i32, ptr %4, align 4, !dbg !1539, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %204, metadata !1321, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %204, metadata !1341, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %201, metadata !1336, metadata !DIExpression()), !dbg !1540
  %205 = icmp ne i64 %201, 0, !dbg !1542
  call void @llvm.assume(i1 %205), !dbg !1542
  %206 = icmp ult i64 %201, 5, !dbg !1543
  call void @llvm.assume(i1 %206), !dbg !1543
  %207 = icmp ult i32 %204, 1114112, !dbg !1544
  call void @llvm.assume(i1 %207), !dbg !1544
  %208 = shl nuw nsw i64 %201, 40, !dbg !1545
  %209 = zext i32 %204 to i64, !dbg !1545
  %210 = or i64 %208, %209, !dbg !1545
  br label %211, !dbg !1546

211:                                              ; preds = %198, %203
  %212 = phi i64 [ %210, %203 ], [ 1099511627776, %198 ], !dbg !1519
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1547
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1547
  br label %213

213:                                              ; preds = %195, %211
  %214 = phi i64 [ %197, %195 ], [ %212, %211 ], !dbg !1519
  call void @llvm.dbg.value(metadata i64 %214, metadata !452, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1548
  %215 = lshr i64 %214, 40, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %215, metadata !452, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %214, metadata !452, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1548
  %216 = trunc i64 %214 to i32
  call void @llvm.dbg.value(metadata i32 %216, metadata !1393, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %214, metadata !1393, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %214, metadata !1393, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %214, metadata !1393, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %191, metadata !1392, metadata !DIExpression()), !dbg !1550
  %217 = load i32, ptr @counting_mode, align 4, !dbg !1552, !tbaa !996
  %218 = icmp eq i32 %217, 1, !dbg !1553
  br i1 %218, label %239, label %219, !dbg !1554

219:                                              ; preds = %213
  switch i32 %216, label %229 [
    i32 8, label %220
    i32 13, label %241
    i32 9, label %226
  ], !dbg !1555

220:                                              ; preds = %219
  %221 = icmp eq i64 %191, 0, !dbg !1556
  br i1 %221, label %241, label %222, !dbg !1557

222:                                              ; preds = %220
  %223 = load i32, ptr @last_character_width, align 4, !dbg !1558, !tbaa !987
  %224 = sext i32 %223 to i64, !dbg !1558
  %225 = sub i64 %191, %224, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %225, metadata !1392, metadata !DIExpression()), !dbg !1550
  br label %241, !dbg !1560

226:                                              ; preds = %219
  %227 = and i64 %191, -8, !dbg !1561
  %228 = add i64 %227, 8, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %228, metadata !1392, metadata !DIExpression()), !dbg !1550
  br label %241, !dbg !1562

229:                                              ; preds = %219
  %230 = icmp eq i32 %217, 2, !dbg !1563
  br i1 %230, label %235, label %231, !dbg !1564

231:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i32 %216, metadata !1426, metadata !DIExpression()), !dbg !1565
  %232 = call i32 @wcwidth(i32 noundef %216) #38, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %232, metadata !1394, metadata !DIExpression()), !dbg !1568
  %233 = icmp slt i32 %232, 0, !dbg !1569
  %234 = select i1 %233, i32 1, i32 %232, !dbg !1570
  br label %235

235:                                              ; preds = %231, %229
  %236 = phi i32 [ %234, %231 ], [ 1, %229 ], !dbg !1571
  store i32 %236, ptr @last_character_width, align 4, !dbg !1571, !tbaa !987
  %237 = zext i32 %236 to i64, !dbg !1572
  %238 = add i64 %191, %237, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %238, metadata !1392, metadata !DIExpression()), !dbg !1550
  br label %241

239:                                              ; preds = %213
  call void @llvm.dbg.value(metadata i64 %215, metadata !1393, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1550
  %240 = add i64 %215, %191, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %240, metadata !1392, metadata !DIExpression()), !dbg !1550
  br label %241

241:                                              ; preds = %219, %220, %222, %226, %235, %239
  %242 = phi i64 [ %225, %222 ], [ 0, %220 ], [ %228, %226 ], [ %238, %235 ], [ %240, %239 ], [ 0, %219 ]
  call void @llvm.dbg.value(metadata i64 %242, metadata !1392, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %242, metadata !410, metadata !DIExpression()), !dbg !1227
  %243 = getelementptr inbounds i8, ptr %192, i64 %215, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %243, metadata !448, metadata !DIExpression()), !dbg !1514
  %244 = icmp ult ptr %243, %183, !dbg !1516
  br i1 %244, label %190, label %185, !dbg !1518, !llvm.loop !1576

245:                                              ; preds = %132, %137, %130
  call void @llvm.dbg.value(metadata i64 %128, metadata !410, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %101, metadata !411, metadata !DIExpression()), !dbg !1227
  %246 = icmp eq i64 %101, 0, !dbg !1578
  br i1 %246, label %247, label %252, !dbg !1580

247:                                              ; preds = %245
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1581, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %81, metadata !1581, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1587
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1581, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1587
  call void @llvm.dbg.value(metadata ptr undef, metadata !1586, metadata !DIExpression()), !dbg !1587
  %248 = icmp sge i64 %92, %95, !dbg !1590
  call void @llvm.assume(i1 %248), !dbg !1592
  %249 = sub nsw i64 %92, %95, !dbg !1593
  %250 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %249, !dbg !1594
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1595, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %250, metadata !1601, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %95, metadata !1602, metadata !DIExpression()), !dbg !1603
  %251 = call ptr @__memcpy_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %250, i64 noundef %95, i64 noundef 262144) #38, !dbg !1605, !alias.scope !1606
  call void @llvm.dbg.value(metadata i64 %95, metadata !411, metadata !DIExpression()), !dbg !1227
  br label %97, !dbg !1610

252:                                              ; preds = %245
  call fastcc void @write_out(i64 noundef %101, i1 noundef true), !dbg !1611
  call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1227
  br label %185, !dbg !1612

253:                                              ; preds = %105, %106, %127
  %254 = phi i64 [ %128, %127 ], [ 0, %106 ], [ 0, %105 ]
  %255 = add nsw i64 %101, %95, !dbg !1613
  %256 = icmp ugt i64 %255, 262143, !dbg !1615
  br i1 %256, label %257, label %258, !dbg !1616

257:                                              ; preds = %253
  call fastcc void @write_out(i64 noundef %101, i1 noundef false), !dbg !1617
  call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1227
  br label %258, !dbg !1619

258:                                              ; preds = %257, %253
  %259 = phi i64 [ 0, %257 ], [ %101, %253 ], !dbg !1227
  call void @llvm.dbg.value(metadata i64 %259, metadata !411, metadata !DIExpression()), !dbg !1227
  %260 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %259, !dbg !1620
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1581, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %81, metadata !1581, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1621
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1581, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1621
  call void @llvm.dbg.value(metadata ptr undef, metadata !1586, metadata !DIExpression()), !dbg !1621
  %261 = icmp sge i64 %92, %95, !dbg !1623
  call void @llvm.assume(i1 %261), !dbg !1624
  %262 = sub nsw i64 %92, %95, !dbg !1625
  %263 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %262, !dbg !1626
  call void @llvm.dbg.value(metadata ptr %260, metadata !1595, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata ptr %263, metadata !1601, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %95, metadata !1602, metadata !DIExpression()), !dbg !1627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %260, ptr noundef nonnull align 1 %263, i64 noundef %95, i1 noundef false) #38, !dbg !1629
  %264 = add nsw i64 %259, %95, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %264, metadata !411, metadata !DIExpression()), !dbg !1227
  br label %97, !dbg !1247

265:                                              ; preds = %45, %89
  %266 = tail call ptr @__errno_location() #41, !dbg !1631
  %267 = load i32, ptr %266, align 4, !dbg !1631, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %267, metadata !425, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %16, metadata !1632, metadata !DIExpression()), !dbg !1635
  %268 = load i32, ptr %16, align 8, !dbg !1638, !tbaa !1273
  %269 = and i32 %268, 32, !dbg !1639
  %270 = icmp eq i32 %269, 0, !dbg !1639
  %271 = select i1 %270, i32 0, i32 %267, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %271, metadata !425, metadata !DIExpression()), !dbg !1227
  %272 = icmp eq i64 %26, 0, !dbg !1641
  br i1 %272, label %274, label %273, !dbg !1643

273:                                              ; preds = %265
  call fastcc void @write_out(i64 noundef %26, i1 noundef false), !dbg !1644
  br label %274, !dbg !1644

274:                                              ; preds = %273, %265
  call void @llvm.dbg.value(metadata ptr %0, metadata !998, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1004, metadata !DIExpression()), !dbg !1645
  %275 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.16) #39, !dbg !1648
  %276 = icmp eq i32 %275, 0, !dbg !1649
  br i1 %276, label %277, label %278, !dbg !1650

277:                                              ; preds = %274
  call void @clearerr_unlocked(ptr noundef nonnull %16) #38, !dbg !1651
  br label %285, !dbg !1651

278:                                              ; preds = %274
  %279 = call i32 @rpl_fclose(ptr noundef nonnull %16) #38, !dbg !1652
  %280 = icmp eq i32 %279, 0, !dbg !1654
  %281 = icmp ne i32 %271, 0
  %282 = select i1 %280, i1 true, i1 %281, !dbg !1655
  br i1 %282, label %285, label %283, !dbg !1655

283:                                              ; preds = %278
  %284 = load i32, ptr %266, align 4, !dbg !1656, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %284, metadata !425, metadata !DIExpression()), !dbg !1227
  br label %285, !dbg !1657

285:                                              ; preds = %278, %283, %277
  %286 = phi i32 [ %271, %277 ], [ %271, %278 ], [ %284, %283 ], !dbg !1227
  call void @llvm.dbg.value(metadata i32 %286, metadata !425, metadata !DIExpression()), !dbg !1227
  %287 = icmp eq i32 %286, 0, !dbg !1658
  br i1 %287, label %290, label %288, !dbg !1660

288:                                              ; preds = %285
  %289 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #38, !dbg !1661
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %286, ptr noundef nonnull @.str.61, ptr noundef %289) #38, !dbg !1661
  br label %290, !dbg !1663

290:                                              ; preds = %288, %285, %18
  %291 = phi i1 [ false, %18 ], [ true, %285 ], [ false, %288 ], !dbg !1227
  ret i1 %291, !dbg !1664
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1665 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1669 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1673 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @write_out(i64 noundef %0, i1 noundef %1) unnamed_addr #10 !dbg !1680 {
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1684, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %0, metadata !1685, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i1 %1, metadata !1686, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1692
  %3 = load ptr, ptr @stdout, align 8, !dbg !1693, !tbaa !917
  %4 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @fold_file.line_out, i64 noundef 1, i64 noundef %0, ptr noundef %3), !dbg !1693
  %5 = icmp eq i64 %4, %0, !dbg !1694
  br i1 %5, label %6, label %19, !dbg !1695

6:                                                ; preds = %2
  br i1 %1, label %7, label %28, !dbg !1696

7:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 10, metadata !1697, metadata !DIExpression()), !dbg !1702
  %8 = load ptr, ptr @stdout, align 8, !dbg !1704, !tbaa !917
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %8, i64 0, i32 5, !dbg !1704
  %10 = load ptr, ptr %9, align 8, !dbg !1704, !tbaa !1705
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %8, i64 0, i32 6, !dbg !1704
  %12 = load ptr, ptr %11, align 8, !dbg !1704, !tbaa !1706
  %13 = icmp ult ptr %10, %12, !dbg !1704
  br i1 %13, label %14, label %16, !dbg !1704, !prof !1707

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1704
  store ptr %15, ptr %9, align 8, !dbg !1704, !tbaa !1705
  store i8 10, ptr %10, align 1, !dbg !1704, !tbaa !996
  br label %28, !dbg !1708

16:                                               ; preds = %7
  %17 = tail call i32 @__overflow(ptr noundef nonnull %8, i32 noundef 10) #38, !dbg !1704
  %18 = icmp slt i32 %17, 0, !dbg !1709
  br i1 %18, label %19, label %28, !dbg !1708

19:                                               ; preds = %16, %2
  %20 = tail call ptr @__errno_location() #41, !dbg !1710
  %21 = load i32, ptr %20, align 4, !dbg !1710, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %21, metadata !1713, metadata !DIExpression()), !dbg !1715
  %22 = load ptr, ptr @stdout, align 8, !dbg !1716, !tbaa !917
  %23 = tail call i32 @fflush_unlocked(ptr noundef %22) #38, !dbg !1716
  %24 = load ptr, ptr @stdout, align 8, !dbg !1717, !tbaa !917
  %25 = tail call i32 @fpurge(ptr noundef %24) #38, !dbg !1718
  %26 = load ptr, ptr @stdout, align 8, !dbg !1719, !tbaa !917
  tail call void @clearerr_unlocked(ptr noundef %26) #38, !dbg !1719
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #38, !dbg !1720
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %21, ptr noundef %27) #38, !dbg !1720
  unreachable, !dbg !1720

28:                                               ; preds = %14, %16, %6
  ret void, !dbg !1721
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !1722 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1727 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(argmem: readwrite)
declare !dbg !1729 ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nounwind
declare !dbg !1730 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1733 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1736 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1739, metadata !DIExpression()), !dbg !1740
  store ptr %0, ptr @file_name, align 8, !dbg !1741, !tbaa !917
  ret void, !dbg !1742
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1743 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1747, metadata !DIExpression()), !dbg !1748
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1749, !tbaa !1750
  ret void, !dbg !1752
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1753 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1758, !tbaa !917
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1759
  %3 = icmp eq i32 %2, 0, !dbg !1760
  br i1 %3, label %22, label %4, !dbg !1761

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1762, !tbaa !1750, !range !1763, !noundef !926
  %6 = icmp eq i8 %5, 0, !dbg !1762
  br i1 %6, label %11, label %7, !dbg !1764

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1765
  %9 = load i32, ptr %8, align 4, !dbg !1765, !tbaa !987
  %10 = icmp eq i32 %9, 32, !dbg !1766
  br i1 %10, label %22, label %11, !dbg !1767

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 5) #38, !dbg !1768
  call void @llvm.dbg.value(metadata ptr %12, metadata !1755, metadata !DIExpression()), !dbg !1769
  %13 = load ptr, ptr @file_name, align 8, !dbg !1770, !tbaa !917
  %14 = icmp eq ptr %13, null, !dbg !1770
  %15 = tail call ptr @__errno_location() #41, !dbg !1772
  %16 = load i32, ptr %15, align 4, !dbg !1772, !tbaa !987
  br i1 %14, label %19, label %17, !dbg !1773

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1774
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.28, ptr noundef %18, ptr noundef %12) #38, !dbg !1774
  br label %20, !dbg !1774

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.29, ptr noundef %12) #38, !dbg !1775
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1776, !tbaa !987
  tail call void @_exit(i32 noundef %21) #40, !dbg !1777
  unreachable, !dbg !1777

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1778, !tbaa !917
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1780
  %25 = icmp eq i32 %24, 0, !dbg !1781
  br i1 %25, label %28, label %26, !dbg !1782

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1783, !tbaa !987
  tail call void @_exit(i32 noundef %27) #40, !dbg !1784
  unreachable, !dbg !1784

28:                                               ; preds = %22
  ret void, !dbg !1785
}

; Function Attrs: noreturn
declare !dbg !1786 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1788 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1792, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %1, metadata !1793, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %2, metadata !1794, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1795, metadata !DIExpression()), !dbg !1797
  tail call fastcc void @flush_stdout(), !dbg !1798
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1799, !tbaa !917
  %7 = icmp eq ptr %6, null, !dbg !1799
  br i1 %7, label %9, label %8, !dbg !1801

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1802
  br label %13, !dbg !1802

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1803, !tbaa !917
  %11 = tail call ptr @getprogname() #39, !dbg !1803
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef %11) #38, !dbg !1803
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1805, !tbaa.struct !1806
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1805
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1805
  ret void, !dbg !1807
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1808 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1810, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i32 1, metadata !1812, metadata !DIExpression()), !dbg !1815
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1818
  %2 = icmp slt i32 %1, 0, !dbg !1819
  br i1 %2, label %6, label %3, !dbg !1820

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1821, !tbaa !917
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1821
  br label %6, !dbg !1821

6:                                                ; preds = %3, %0
  ret void, !dbg !1822
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1823 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1825, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i32 %1, metadata !1826, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata ptr %2, metadata !1827, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1828, metadata !DIExpression()), !dbg !1830
  %7 = load ptr, ptr @stderr, align 8, !dbg !1831, !tbaa !917
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1832, !noalias !1876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1880
  call void @llvm.dbg.value(metadata ptr %7, metadata !1872, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata ptr %2, metadata !1873, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1874, metadata !DIExpression()), !dbg !1882
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1832
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1832, !noalias !1876
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1883, !tbaa !987
  %10 = add i32 %9, 1, !dbg !1883
  store i32 %10, ptr @error_message_count, align 4, !dbg !1883, !tbaa !987
  %11 = icmp eq i32 %1, 0, !dbg !1884
  br i1 %11, label %21, label %12, !dbg !1886

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1887, metadata !DIExpression()), !dbg !1895
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1891, metadata !DIExpression()), !dbg !1898
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1899
  call void @llvm.dbg.value(metadata ptr %13, metadata !1890, metadata !DIExpression()), !dbg !1895
  %14 = icmp eq ptr %13, null, !dbg !1900
  br i1 %14, label %15, label %17, !dbg !1902

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.31, ptr noundef nonnull @.str.5.32, i32 noundef 5) #38, !dbg !1903
  call void @llvm.dbg.value(metadata ptr %16, metadata !1890, metadata !DIExpression()), !dbg !1895
  br label %17, !dbg !1904

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1895
  call void @llvm.dbg.value(metadata ptr %18, metadata !1890, metadata !DIExpression()), !dbg !1895
  %19 = load ptr, ptr @stderr, align 8, !dbg !1905, !tbaa !917
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.33, ptr noundef %18) #38, !dbg !1905
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1906
  br label %21, !dbg !1907

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1908, !tbaa !917
  call void @llvm.dbg.value(metadata i32 10, metadata !1909, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr %22, metadata !1914, metadata !DIExpression()), !dbg !1915
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1917
  %24 = load ptr, ptr %23, align 8, !dbg !1917, !tbaa !1705
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1917
  %26 = load ptr, ptr %25, align 8, !dbg !1917, !tbaa !1706
  %27 = icmp ult ptr %24, %26, !dbg !1917
  br i1 %27, label %30, label %28, !dbg !1917, !prof !1707

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1917
  br label %32, !dbg !1917

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1917
  store ptr %31, ptr %23, align 8, !dbg !1917, !tbaa !1705
  store i8 10, ptr %24, align 1, !dbg !1917, !tbaa !996
  br label %32, !dbg !1917

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1918, !tbaa !917
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1918
  %35 = icmp eq i32 %0, 0, !dbg !1919
  br i1 %35, label %37, label %36, !dbg !1921

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !1922
  unreachable, !dbg !1922

37:                                               ; preds = %32
  ret void, !dbg !1923
}

declare !dbg !1924 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1927 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1930 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1934 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1938, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %1, metadata !1939, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata ptr %2, metadata !1940, metadata !DIExpression()), !dbg !1942
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1943
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1941, metadata !DIExpression()), !dbg !1944
  call void @llvm.va_start(ptr nonnull %4), !dbg !1945
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1946, !tbaa.struct !1806
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !1946
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1946
  call void @llvm.va_end(ptr nonnull %4), !dbg !1947
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1948
  ret void, !dbg !1948
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !505 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !522, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i32 %1, metadata !523, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata ptr %2, metadata !524, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i32 %3, metadata !525, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata ptr %4, metadata !526, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.declare(metadata ptr %5, metadata !527, metadata !DIExpression()), !dbg !1950
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1951, !tbaa !987
  %9 = icmp eq i32 %8, 0, !dbg !1951
  br i1 %9, label %24, label %10, !dbg !1953

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1954, !tbaa !987
  %12 = icmp eq i32 %11, %3, !dbg !1957
  br i1 %12, label %13, label %23, !dbg !1958

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1959, !tbaa !917
  %15 = icmp eq ptr %14, %2, !dbg !1960
  br i1 %15, label %37, label %16, !dbg !1961

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1962
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1963
  br i1 %19, label %20, label %23, !dbg !1963

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1964
  %22 = icmp eq i32 %21, 0, !dbg !1965
  br i1 %22, label %37, label %23, !dbg !1966

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1967, !tbaa !917
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1968, !tbaa !987
  br label %24, !dbg !1969

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1970
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1971, !tbaa !917
  %26 = icmp eq ptr %25, null, !dbg !1971
  br i1 %26, label %28, label %27, !dbg !1973

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1974
  br label %32, !dbg !1974

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1975, !tbaa !917
  %30 = tail call ptr @getprogname() #39, !dbg !1975
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.36, ptr noundef %30) #38, !dbg !1975
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1977, !tbaa !917
  %34 = icmp eq ptr %2, null, !dbg !1977
  %35 = select i1 %34, ptr @.str.3.37, ptr @.str.2.38, !dbg !1977
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1977
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1978, !tbaa.struct !1806
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1978
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1978
  br label %37, !dbg !1979

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1979
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1980 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1984, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i32 %1, metadata !1985, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata ptr %2, metadata !1986, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i32 %3, metadata !1987, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata ptr %4, metadata !1988, metadata !DIExpression()), !dbg !1990
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1991
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1989, metadata !DIExpression()), !dbg !1992
  call void @llvm.va_start(ptr nonnull %6), !dbg !1993
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1994, !tbaa.struct !1806
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1994
  call void @llvm.va_end(ptr nonnull %6), !dbg !1995
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1996
  ret void, !dbg !1996
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !1997 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2003, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %1, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %2, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %3, metadata !2006, metadata !DIExpression()), !dbg !2007
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2008
  ret void, !dbg !2009
}

; Function Attrs: nounwind
declare !dbg !2010 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2013 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %1, metadata !2052, metadata !DIExpression()), !dbg !2053
  %3 = icmp eq ptr %0, null, !dbg !2054
  br i1 %3, label %7, label %4, !dbg !2056

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %5, metadata !2003, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i64 0, metadata !2004, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i64 0, metadata !2005, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i32 %1, metadata !2006, metadata !DIExpression()), !dbg !2058
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2060
  br label %7, !dbg !2061

7:                                                ; preds = %4, %2
  ret void, !dbg !2062
}

; Function Attrs: nofree nounwind
declare !dbg !2063 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2066 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2104, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i32 0, metadata !2105, metadata !DIExpression()), !dbg !2108
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %2, metadata !2106, metadata !DIExpression()), !dbg !2108
  %3 = icmp slt i32 %2, 0, !dbg !2110
  br i1 %3, label %4, label %6, !dbg !2112

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2113
  br label %24, !dbg !2114

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2115
  %8 = icmp eq i32 %7, 0, !dbg !2115
  br i1 %8, label %13, label %9, !dbg !2117

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2118
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2119
  %12 = icmp eq i64 %11, -1, !dbg !2120
  br i1 %12, label %16, label %13, !dbg !2121

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2122
  %15 = icmp eq i32 %14, 0, !dbg !2122
  br i1 %15, label %16, label %18, !dbg !2123

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2105, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i32 0, metadata !2107, metadata !DIExpression()), !dbg !2108
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %17, metadata !2107, metadata !DIExpression()), !dbg !2108
  br label %24, !dbg !2125

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2126
  %20 = load i32, ptr %19, align 4, !dbg !2126, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %20, metadata !2105, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i32 0, metadata !2107, metadata !DIExpression()), !dbg !2108
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %21, metadata !2107, metadata !DIExpression()), !dbg !2108
  %22 = icmp eq i32 %20, 0, !dbg !2127
  br i1 %22, label %24, label %23, !dbg !2125

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2129, !tbaa !987
  call void @llvm.dbg.value(metadata i32 -1, metadata !2107, metadata !DIExpression()), !dbg !2108
  br label %24, !dbg !2131

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2108
  ret i32 %25, !dbg !2132
}

; Function Attrs: nofree nounwind
declare !dbg !2133 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2134 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2136 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2139 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2177, metadata !DIExpression()), !dbg !2178
  %2 = icmp eq ptr %0, null, !dbg !2179
  br i1 %2, label %6, label %3, !dbg !2181

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2182
  %5 = icmp eq i32 %4, 0, !dbg !2182
  br i1 %5, label %6, label %8, !dbg !2183

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2184
  br label %16, !dbg !2185

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2186, metadata !DIExpression()), !dbg !2191
  %9 = load i32, ptr %0, align 8, !dbg !2193, !tbaa !1273
  %10 = and i32 %9, 256, !dbg !2195
  %11 = icmp eq i32 %10, 0, !dbg !2195
  br i1 %11, label %14, label %12, !dbg !2196

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2197
  br label %14, !dbg !2197

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2198
  br label %16, !dbg !2199

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2178
  ret i32 %17, !dbg !2200
}

; Function Attrs: nofree nounwind
declare !dbg !2201 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2202 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2240, metadata !DIExpression()), !dbg !2241
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2242
  ret i32 0, !dbg !2243
}

; Function Attrs: nounwind
declare !dbg !2244 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2247 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2285, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %1, metadata !2286, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %2, metadata !2287, metadata !DIExpression()), !dbg !2291
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2292
  %5 = load ptr, ptr %4, align 8, !dbg !2292, !tbaa !2293
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2294
  %7 = load ptr, ptr %6, align 8, !dbg !2294, !tbaa !2295
  %8 = icmp eq ptr %5, %7, !dbg !2296
  br i1 %8, label %9, label %27, !dbg !2297

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2298
  %11 = load ptr, ptr %10, align 8, !dbg !2298, !tbaa !1705
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2299
  %13 = load ptr, ptr %12, align 8, !dbg !2299, !tbaa !2300
  %14 = icmp eq ptr %11, %13, !dbg !2301
  br i1 %14, label %15, label %27, !dbg !2302

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2303
  %17 = load ptr, ptr %16, align 8, !dbg !2303, !tbaa !2304
  %18 = icmp eq ptr %17, null, !dbg !2305
  br i1 %18, label %19, label %27, !dbg !2306

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2307
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %21, metadata !2288, metadata !DIExpression()), !dbg !2309
  %22 = icmp eq i64 %21, -1, !dbg !2310
  br i1 %22, label %29, label %23, !dbg !2312

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2313, !tbaa !1273
  %25 = and i32 %24, -17, !dbg !2313
  store i32 %25, ptr %0, align 8, !dbg !2313, !tbaa !1273
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2314
  store i64 %21, ptr %26, align 8, !dbg !2315, !tbaa !2316
  br label %29, !dbg !2317

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2318
  br label %29, !dbg !2319

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2291
  ret i32 %30, !dbg !2320
}

; Function Attrs: nofree nounwind
declare !dbg !2321 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2324 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2327, !tbaa !917
  ret ptr %1, !dbg !2328
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2329 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2331, metadata !DIExpression()), !dbg !2334
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %2, metadata !2332, metadata !DIExpression()), !dbg !2334
  %3 = icmp eq ptr %2, null, !dbg !2336
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2336
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2336
  call void @llvm.dbg.value(metadata ptr %5, metadata !2333, metadata !DIExpression()), !dbg !2334
  %6 = ptrtoint ptr %5 to i64, !dbg !2337
  %7 = ptrtoint ptr %0 to i64, !dbg !2337
  %8 = sub i64 %6, %7, !dbg !2337
  %9 = icmp sgt i64 %8, 6, !dbg !2339
  br i1 %9, label %10, label %19, !dbg !2340

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2341
  call void @llvm.dbg.value(metadata ptr %11, metadata !2342, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr @.str.63, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 7, metadata !2348, metadata !DIExpression()), !dbg !2349
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.63, i64 7), !dbg !2351
  %13 = icmp eq i32 %12, 0, !dbg !2352
  br i1 %13, label %14, label %19, !dbg !2353

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2331, metadata !DIExpression()), !dbg !2334
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.64, i64 noundef 3) #39, !dbg !2354
  %16 = icmp eq i32 %15, 0, !dbg !2357
  %17 = select i1 %16, i64 3, i64 0, !dbg !2358
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2358
  br label %19, !dbg !2358

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2334
  call void @llvm.dbg.value(metadata ptr %21, metadata !2333, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata ptr %20, metadata !2331, metadata !DIExpression()), !dbg !2334
  store ptr %20, ptr @program_name, align 8, !dbg !2359, !tbaa !917
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2360, !tbaa !917
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2361, !tbaa !917
  ret void, !dbg !2362
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2363 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !564 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !571, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata ptr %1, metadata !572, metadata !DIExpression()), !dbg !2364
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2365
  call void @llvm.dbg.value(metadata ptr %5, metadata !573, metadata !DIExpression()), !dbg !2364
  %6 = icmp eq ptr %5, %0, !dbg !2366
  br i1 %6, label %7, label %14, !dbg !2368

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2369
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2370
  call void @llvm.dbg.declare(metadata ptr %4, metadata !575, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %4, metadata !2372, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata ptr %4, metadata !2381, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 0, metadata !2386, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 8, metadata !2387, metadata !DIExpression()), !dbg !2388
  store i64 0, ptr %4, align 8, !dbg !2390
  call void @llvm.dbg.value(metadata ptr %3, metadata !574, metadata !DIExpression(DW_OP_deref)), !dbg !2364
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2391
  %9 = icmp eq i64 %8, 2, !dbg !2393
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !574, metadata !DIExpression()), !dbg !2364
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2394
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2395
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2395
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2364
  ret ptr %15, !dbg !2395
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2396 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2401, metadata !DIExpression()), !dbg !2404
  %2 = tail call ptr @__errno_location() #41, !dbg !2405
  %3 = load i32, ptr %2, align 4, !dbg !2405, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %3, metadata !2402, metadata !DIExpression()), !dbg !2404
  %4 = icmp eq ptr %0, null, !dbg !2406
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2406
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2407
  call void @llvm.dbg.value(metadata ptr %6, metadata !2403, metadata !DIExpression()), !dbg !2404
  store i32 %3, ptr %2, align 4, !dbg !2408, !tbaa !987
  ret ptr %6, !dbg !2409
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !2410 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2416, metadata !DIExpression()), !dbg !2417
  %2 = icmp eq ptr %0, null, !dbg !2418
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2418
  %4 = load i32, ptr %3, align 8, !dbg !2419, !tbaa !2420
  ret i32 %4, !dbg !2422
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2423 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %1, metadata !2428, metadata !DIExpression()), !dbg !2429
  %3 = icmp eq ptr %0, null, !dbg !2430
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2430
  store i32 %1, ptr %4, align 8, !dbg !2431, !tbaa !2420
  ret void, !dbg !2432
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2433 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2437, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 %1, metadata !2438, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 %2, metadata !2439, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 %1, metadata !2440, metadata !DIExpression()), !dbg !2445
  %4 = icmp eq ptr %0, null, !dbg !2446
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2446
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2447
  %7 = lshr i8 %1, 5, !dbg !2448
  %8 = zext i8 %7 to i64, !dbg !2448
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2449
  call void @llvm.dbg.value(metadata ptr %9, metadata !2441, metadata !DIExpression()), !dbg !2445
  %10 = and i8 %1, 31, !dbg !2450
  %11 = zext i8 %10 to i32, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %11, metadata !2443, metadata !DIExpression()), !dbg !2445
  %12 = load i32, ptr %9, align 4, !dbg !2451, !tbaa !987
  %13 = lshr i32 %12, %11, !dbg !2452
  %14 = and i32 %13, 1, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %14, metadata !2444, metadata !DIExpression()), !dbg !2445
  %15 = xor i32 %13, %2, !dbg !2454
  %16 = and i32 %15, 1, !dbg !2454
  %17 = shl nuw i32 %16, %11, !dbg !2455
  %18 = xor i32 %17, %12, !dbg !2456
  store i32 %18, ptr %9, align 4, !dbg !2456, !tbaa !987
  ret i32 %14, !dbg !2457
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2458 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2462, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 %1, metadata !2463, metadata !DIExpression()), !dbg !2465
  %3 = icmp eq ptr %0, null, !dbg !2466
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2468
  call void @llvm.dbg.value(metadata ptr %4, metadata !2462, metadata !DIExpression()), !dbg !2465
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2469
  %6 = load i32, ptr %5, align 4, !dbg !2469, !tbaa !2470
  call void @llvm.dbg.value(metadata i32 %6, metadata !2464, metadata !DIExpression()), !dbg !2465
  store i32 %1, ptr %5, align 4, !dbg !2471, !tbaa !2470
  ret i32 %6, !dbg !2472
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2473 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata ptr %1, metadata !2478, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata ptr %2, metadata !2479, metadata !DIExpression()), !dbg !2480
  %4 = icmp eq ptr %0, null, !dbg !2481
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2483
  call void @llvm.dbg.value(metadata ptr %5, metadata !2477, metadata !DIExpression()), !dbg !2480
  store i32 10, ptr %5, align 8, !dbg !2484, !tbaa !2420
  %6 = icmp ne ptr %1, null, !dbg !2485
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2487
  br i1 %8, label %10, label %9, !dbg !2487

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2488
  unreachable, !dbg !2488

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2489
  store ptr %1, ptr %11, align 8, !dbg !2490, !tbaa !2491
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2492
  store ptr %2, ptr %12, align 8, !dbg !2493, !tbaa !2494
  ret void, !dbg !2495
}

; Function Attrs: noreturn nounwind
declare !dbg !2496 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2497 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2501, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %1, metadata !2502, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %2, metadata !2503, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %3, metadata !2504, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %4, metadata !2505, metadata !DIExpression()), !dbg !2509
  %6 = icmp eq ptr %4, null, !dbg !2510
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2510
  call void @llvm.dbg.value(metadata ptr %7, metadata !2506, metadata !DIExpression()), !dbg !2509
  %8 = tail call ptr @__errno_location() #41, !dbg !2511
  %9 = load i32, ptr %8, align 4, !dbg !2511, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %9, metadata !2507, metadata !DIExpression()), !dbg !2509
  %10 = load i32, ptr %7, align 8, !dbg !2512, !tbaa !2420
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2513
  %12 = load i32, ptr %11, align 4, !dbg !2513, !tbaa !2470
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2514
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2515
  %15 = load ptr, ptr %14, align 8, !dbg !2515, !tbaa !2491
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2516
  %17 = load ptr, ptr %16, align 8, !dbg !2516, !tbaa !2494
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %18, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i32 %9, ptr %8, align 4, !dbg !2518, !tbaa !987
  ret i64 %18, !dbg !2519
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2520 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %2, metadata !2528, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %3, metadata !2529, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %4, metadata !2530, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %5, metadata !2531, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %6, metadata !2532, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %7, metadata !2533, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %8, metadata !2534, metadata !DIExpression()), !dbg !2588
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2589
  %17 = icmp eq i64 %16, 1, !dbg !2590
  call void @llvm.dbg.value(metadata i1 %17, metadata !2535, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2537, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr null, metadata !2538, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2539, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2540, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %5, metadata !2541, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 1, metadata !2543, metadata !DIExpression()), !dbg !2588
  %18 = and i32 %5, 2, !dbg !2591
  %19 = icmp ne i32 %18, 0, !dbg !2591
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2591

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2592
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2593
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2594
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2543, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2540, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %34, metadata !2539, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %33, metadata !2538, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %32, metadata !2537, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %31, metadata !2529, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %30, metadata !2534, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %29, metadata !2533, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %28, metadata !2530, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.label(metadata !2581), !dbg !2595
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2588
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
  ], !dbg !2596

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 5, metadata !2530, metadata !DIExpression()), !dbg !2588
  br label %102, !dbg !2597

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 5, metadata !2530, metadata !DIExpression()), !dbg !2588
  br i1 %36, label %102, label %42, !dbg !2597

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2598
  br i1 %43, label %102, label %44, !dbg !2602

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2598, !tbaa !996
  br label %102, !dbg !2598

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.77, metadata !659, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %28, metadata !660, metadata !DIExpression()), !dbg !2603
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.78, ptr noundef nonnull @.str.11.77, i32 noundef 5) #38, !dbg !2607
  call void @llvm.dbg.value(metadata ptr %46, metadata !661, metadata !DIExpression()), !dbg !2603
  %47 = icmp eq ptr %46, @.str.11.77, !dbg !2608
  br i1 %47, label %48, label %57, !dbg !2610

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2611
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %13, metadata !663, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata ptr %13, metadata !2614, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %13, metadata !2622, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 0, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 8, metadata !2626, metadata !DIExpression()), !dbg !2627
  store i64 0, ptr %13, align 8, !dbg !2629
  call void @llvm.dbg.value(metadata ptr %12, metadata !662, metadata !DIExpression(DW_OP_deref)), !dbg !2603
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2630
  %50 = icmp eq i64 %49, 3, !dbg !2632
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !662, metadata !DIExpression()), !dbg !2603
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2633
  %54 = icmp eq i32 %28, 9, !dbg !2633
  %55 = select i1 %54, ptr @.str.10.79, ptr @.str.12.80, !dbg !2633
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2633
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2634
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2634
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2603
  call void @llvm.dbg.value(metadata ptr %58, metadata !2533, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr @.str.12.80, metadata !659, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %28, metadata !660, metadata !DIExpression()), !dbg !2635
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.78, ptr noundef nonnull @.str.12.80, i32 noundef 5) #38, !dbg !2637
  call void @llvm.dbg.value(metadata ptr %59, metadata !661, metadata !DIExpression()), !dbg !2635
  %60 = icmp eq ptr %59, @.str.12.80, !dbg !2638
  br i1 %60, label %61, label %70, !dbg !2639

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2640
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2641
  call void @llvm.dbg.declare(metadata ptr %11, metadata !663, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %11, metadata !2614, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %11, metadata !2622, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 0, metadata !2625, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 8, metadata !2626, metadata !DIExpression()), !dbg !2645
  store i64 0, ptr %11, align 8, !dbg !2647
  call void @llvm.dbg.value(metadata ptr %10, metadata !662, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2648
  %63 = icmp eq i64 %62, 3, !dbg !2649
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !662, metadata !DIExpression()), !dbg !2635
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2650
  %67 = icmp eq i32 %28, 9, !dbg !2650
  %68 = select i1 %67, ptr @.str.10.79, ptr @.str.12.80, !dbg !2650
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2650
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2651
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2651
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2534, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %71, metadata !2533, metadata !DIExpression()), !dbg !2588
  br i1 %36, label %88, label %73, !dbg !2652

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2545, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2588
  %74 = load i8, ptr %71, align 1, !dbg !2654, !tbaa !996
  %75 = icmp eq i8 %74, 0, !dbg !2656
  br i1 %75, label %88, label %76, !dbg !2656

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2545, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %79, metadata !2536, metadata !DIExpression()), !dbg !2588
  %80 = icmp ult i64 %79, %39, !dbg !2657
  br i1 %80, label %81, label %83, !dbg !2660

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2657
  store i8 %77, ptr %82, align 1, !dbg !2657, !tbaa !996
  br label %83, !dbg !2657

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %84, metadata !2536, metadata !DIExpression()), !dbg !2588
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %85, metadata !2545, metadata !DIExpression()), !dbg !2653
  %86 = load i8, ptr %85, align 1, !dbg !2654, !tbaa !996
  %87 = icmp eq i8 %86, 0, !dbg !2656
  br i1 %87, label %88, label %76, !dbg !2656, !llvm.loop !2662

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2664
  call void @llvm.dbg.value(metadata i64 %89, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 1, metadata !2540, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %72, metadata !2538, metadata !DIExpression()), !dbg !2588
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %90, metadata !2539, metadata !DIExpression()), !dbg !2588
  br label %102, !dbg !2666

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2540, metadata !DIExpression()), !dbg !2588
  br label %93, !dbg !2667

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2540, metadata !DIExpression()), !dbg !2588
  br i1 %36, label %102, label %96, !dbg !2668

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2540, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 2, metadata !2530, metadata !DIExpression()), !dbg !2588
  br label %102, !dbg !2669

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2540, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 2, metadata !2530, metadata !DIExpression()), !dbg !2588
  br i1 %36, label %102, label %96, !dbg !2669

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2670
  br i1 %98, label %102, label %99, !dbg !2674

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2670, !tbaa !996
  br label %102, !dbg !2670

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2541, metadata !DIExpression()), !dbg !2588
  br label %102, !dbg !2675

101:                                              ; preds = %27
  call void @abort() #40, !dbg !2676
  unreachable, !dbg !2676

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2664
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.79, %42 ], [ @.str.10.79, %44 ], [ @.str.10.79, %41 ], [ %33, %27 ], [ @.str.12.80, %96 ], [ @.str.12.80, %99 ], [ @.str.12.80, %95 ], [ @.str.10.79, %40 ], [ @.str.12.80, %93 ], [ @.str.12.80, %92 ], !dbg !2588
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2588
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2540, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %108, metadata !2539, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %107, metadata !2538, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %106, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %105, metadata !2534, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata ptr %104, metadata !2533, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %103, metadata !2530, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2550, metadata !DIExpression()), !dbg !2677
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
  br label %122, !dbg !2678

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2664
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2592
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2679
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %129, metadata !2550, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2543, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %125, metadata !2537, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %124, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %123, metadata !2529, metadata !DIExpression()), !dbg !2588
  %131 = icmp eq i64 %123, -1, !dbg !2680
  br i1 %131, label %132, label %136, !dbg !2681

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2682
  %134 = load i8, ptr %133, align 1, !dbg !2682, !tbaa !996
  %135 = icmp eq i8 %134, 0, !dbg !2683
  br i1 %135, label %579, label %138, !dbg !2684

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2685
  br i1 %137, label %579, label %138, !dbg !2684

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 0, metadata !2556, metadata !DIExpression()), !dbg !2686
  br i1 %114, label %139, label %152, !dbg !2687

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2689
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2690
  br i1 %141, label %142, label %144, !dbg !2690

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %143, metadata !2529, metadata !DIExpression()), !dbg !2588
  br label %144, !dbg !2692

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2692
  call void @llvm.dbg.value(metadata i64 %145, metadata !2529, metadata !DIExpression()), !dbg !2588
  %146 = icmp ugt i64 %140, %145, !dbg !2693
  br i1 %146, label %152, label %147, !dbg !2694

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2695
  call void @llvm.dbg.value(metadata ptr %148, metadata !2696, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %107, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %108, metadata !2700, metadata !DIExpression()), !dbg !2701
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2703
  %150 = icmp eq i32 %149, 0, !dbg !2704
  %151 = and i1 %150, %110, !dbg !2705
  br i1 %151, label %630, label %152, !dbg !2705

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2552, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %153, metadata !2529, metadata !DIExpression()), !dbg !2588
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2706
  %156 = load i8, ptr %155, align 1, !dbg !2706, !tbaa !996
  call void @llvm.dbg.value(metadata i8 %156, metadata !2557, metadata !DIExpression()), !dbg !2686
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
  ], !dbg !2707

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2708

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2709

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2555, metadata !DIExpression()), !dbg !2686
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2713
  br i1 %160, label %177, label %161, !dbg !2713

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2715
  br i1 %162, label %163, label %165, !dbg !2719

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2715
  store i8 39, ptr %164, align 1, !dbg !2715, !tbaa !996
  br label %165, !dbg !2715

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %166, metadata !2536, metadata !DIExpression()), !dbg !2588
  %167 = icmp ult i64 %166, %130, !dbg !2720
  br i1 %167, label %168, label %170, !dbg !2723

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2720
  store i8 36, ptr %169, align 1, !dbg !2720, !tbaa !996
  br label %170, !dbg !2720

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %171, metadata !2536, metadata !DIExpression()), !dbg !2588
  %172 = icmp ult i64 %171, %130, !dbg !2724
  br i1 %172, label %173, label %175, !dbg !2727

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2724
  store i8 39, ptr %174, align 1, !dbg !2724, !tbaa !996
  br label %175, !dbg !2724

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %176, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 1, metadata !2544, metadata !DIExpression()), !dbg !2588
  br label %177, !dbg !2728

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2588
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %178, metadata !2536, metadata !DIExpression()), !dbg !2588
  %180 = icmp ult i64 %178, %130, !dbg !2729
  br i1 %180, label %181, label %183, !dbg !2732

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2729
  store i8 92, ptr %182, align 1, !dbg !2729, !tbaa !996
  br label %183, !dbg !2729

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %184, metadata !2536, metadata !DIExpression()), !dbg !2588
  br i1 %111, label %185, label %482, !dbg !2733

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2735
  %187 = icmp ult i64 %186, %153, !dbg !2736
  br i1 %187, label %188, label %439, !dbg !2737

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2738
  %190 = load i8, ptr %189, align 1, !dbg !2738, !tbaa !996
  %191 = add i8 %190, -48, !dbg !2739
  %192 = icmp ult i8 %191, 10, !dbg !2739
  br i1 %192, label %193, label %439, !dbg !2739

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2740
  br i1 %194, label %195, label %197, !dbg !2744

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2740
  store i8 48, ptr %196, align 1, !dbg !2740, !tbaa !996
  br label %197, !dbg !2740

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %198, metadata !2536, metadata !DIExpression()), !dbg !2588
  %199 = icmp ult i64 %198, %130, !dbg !2745
  br i1 %199, label %200, label %202, !dbg !2748

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2745
  store i8 48, ptr %201, align 1, !dbg !2745, !tbaa !996
  br label %202, !dbg !2745

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %203, metadata !2536, metadata !DIExpression()), !dbg !2588
  br label %439, !dbg !2749

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2750

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2751

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2752

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2754

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2756
  %210 = icmp ult i64 %209, %153, !dbg !2757
  br i1 %210, label %211, label %439, !dbg !2758

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2759
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2760
  %214 = load i8, ptr %213, align 1, !dbg !2760, !tbaa !996
  %215 = icmp eq i8 %214, 63, !dbg !2761
  br i1 %215, label %216, label %439, !dbg !2762

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2763
  %218 = load i8, ptr %217, align 1, !dbg !2763, !tbaa !996
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
  ], !dbg !2764

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2765

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2557, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %209, metadata !2550, metadata !DIExpression()), !dbg !2677
  %221 = icmp ult i64 %124, %130, !dbg !2767
  br i1 %221, label %222, label %224, !dbg !2770

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2767
  store i8 63, ptr %223, align 1, !dbg !2767, !tbaa !996
  br label %224, !dbg !2767

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %225, metadata !2536, metadata !DIExpression()), !dbg !2588
  %226 = icmp ult i64 %225, %130, !dbg !2771
  br i1 %226, label %227, label %229, !dbg !2774

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2771
  store i8 34, ptr %228, align 1, !dbg !2771, !tbaa !996
  br label %229, !dbg !2771

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %230, metadata !2536, metadata !DIExpression()), !dbg !2588
  %231 = icmp ult i64 %230, %130, !dbg !2775
  br i1 %231, label %232, label %234, !dbg !2778

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2775
  store i8 34, ptr %233, align 1, !dbg !2775, !tbaa !996
  br label %234, !dbg !2775

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %235, metadata !2536, metadata !DIExpression()), !dbg !2588
  %236 = icmp ult i64 %235, %130, !dbg !2779
  br i1 %236, label %237, label %239, !dbg !2782

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2779
  store i8 63, ptr %238, align 1, !dbg !2779, !tbaa !996
  br label %239, !dbg !2779

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %240, metadata !2536, metadata !DIExpression()), !dbg !2588
  br label %439, !dbg !2783

241:                                              ; preds = %152
  br label %251, !dbg !2784

242:                                              ; preds = %152
  br label %251, !dbg !2785

243:                                              ; preds = %152
  br label %249, !dbg !2786

244:                                              ; preds = %152
  br label %249, !dbg !2787

245:                                              ; preds = %152
  br label %251, !dbg !2788

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2789

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2790

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2793

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2795
  call void @llvm.dbg.label(metadata !2582), !dbg !2796
  br i1 %119, label %621, label %251, !dbg !2797

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2795
  call void @llvm.dbg.label(metadata !2584), !dbg !2799
  br i1 %109, label %493, label %450, !dbg !2800

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2801

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2802, !tbaa !996
  %256 = icmp eq i8 %255, 0, !dbg !2804
  br i1 %256, label %257, label %439, !dbg !2805

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2806
  br i1 %258, label %259, label %439, !dbg !2808

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2556, metadata !DIExpression()), !dbg !2686
  br label %260, !dbg !2809

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2686
  br i1 %116, label %262, label %439, !dbg !2810

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2812

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 1, metadata !2556, metadata !DIExpression()), !dbg !2686
  br i1 %116, label %264, label %439, !dbg !2813

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2814

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2817
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2819
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2819
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %270, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %269, metadata !2537, metadata !DIExpression()), !dbg !2588
  %271 = icmp ult i64 %124, %270, !dbg !2820
  br i1 %271, label %272, label %274, !dbg !2823

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2820
  store i8 39, ptr %273, align 1, !dbg !2820, !tbaa !996
  br label %274, !dbg !2820

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %275, metadata !2536, metadata !DIExpression()), !dbg !2588
  %276 = icmp ult i64 %275, %270, !dbg !2824
  br i1 %276, label %277, label %279, !dbg !2827

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2824
  store i8 92, ptr %278, align 1, !dbg !2824, !tbaa !996
  br label %279, !dbg !2824

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %280, metadata !2536, metadata !DIExpression()), !dbg !2588
  %281 = icmp ult i64 %280, %270, !dbg !2828
  br i1 %281, label %282, label %284, !dbg !2831

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2828
  store i8 39, ptr %283, align 1, !dbg !2828, !tbaa !996
  br label %284, !dbg !2828

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %285, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2588
  br label %439, !dbg !2832

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2833

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2558, metadata !DIExpression()), !dbg !2834
  %288 = tail call ptr @__ctype_b_loc() #41, !dbg !2835
  %289 = load ptr, ptr %288, align 8, !dbg !2835, !tbaa !917
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2835
  %292 = load i16, ptr %291, align 2, !dbg !2835, !tbaa !1028
  %293 = and i16 %292, 16384, !dbg !2835
  %294 = icmp ne i16 %293, 0, !dbg !2837
  call void @llvm.dbg.value(metadata i1 %294, metadata !2561, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2834
  br label %337, !dbg !2838

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2562, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %14, metadata !2614, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %14, metadata !2622, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 0, metadata !2625, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 8, metadata !2626, metadata !DIExpression()), !dbg !2843
  store i64 0, ptr %14, align 8, !dbg !2845
  call void @llvm.dbg.value(metadata i64 0, metadata !2558, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8 1, metadata !2561, metadata !DIExpression()), !dbg !2834
  %296 = icmp eq i64 %153, -1, !dbg !2846
  br i1 %296, label %297, label %299, !dbg !2848

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %298, metadata !2529, metadata !DIExpression()), !dbg !2588
  br label %299, !dbg !2850

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2686
  call void @llvm.dbg.value(metadata i64 %300, metadata !2529, metadata !DIExpression()), !dbg !2588
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2851
  %301 = sub i64 %300, %129, !dbg !2852
  call void @llvm.dbg.value(metadata ptr %15, metadata !2565, metadata !DIExpression(DW_OP_deref)), !dbg !2853
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #38, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %302, metadata !2569, metadata !DIExpression()), !dbg !2853
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2855

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2558, metadata !DIExpression()), !dbg !2834
  %304 = icmp ugt i64 %300, %129, !dbg !2856
  br i1 %304, label %306, label %332, !dbg !2858

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2561, metadata !DIExpression()), !dbg !2834
  br label %332, !dbg !2859

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2558, metadata !DIExpression()), !dbg !2834
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2861
  %310 = load i8, ptr %309, align 1, !dbg !2861, !tbaa !996
  %311 = icmp eq i8 %310, 0, !dbg !2858
  br i1 %311, label %332, label %312, !dbg !2862

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %313, metadata !2558, metadata !DIExpression()), !dbg !2834
  %314 = add i64 %313, %129, !dbg !2864
  %315 = icmp eq i64 %313, %301, !dbg !2856
  br i1 %315, label %332, label %306, !dbg !2858, !llvm.loop !2865

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2866
  %319 = and i1 %318, %110, !dbg !2866
  call void @llvm.dbg.value(metadata i64 1, metadata !2570, metadata !DIExpression()), !dbg !2867
  br i1 %319, label %320, label %328, !dbg !2866

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2570, metadata !DIExpression()), !dbg !2867
  %322 = add i64 %321, %129, !dbg !2868
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2870
  %324 = load i8, ptr %323, align 1, !dbg !2870, !tbaa !996
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2871

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %326, metadata !2570, metadata !DIExpression()), !dbg !2867
  %327 = icmp eq i64 %326, %302, !dbg !2873
  br i1 %327, label %328, label %320, !dbg !2874, !llvm.loop !2875

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2877, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %329, metadata !2565, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %329, metadata !2879, metadata !DIExpression()), !dbg !2882
  %330 = call i32 @iswprint(i32 noundef %329) #38, !dbg !2884
  %331 = icmp ne i32 %330, 0, !dbg !2885
  call void @llvm.dbg.value(metadata i8 poison, metadata !2561, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %302, metadata !2558, metadata !DIExpression()), !dbg !2834
  br label %332, !dbg !2886

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2561, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %333, metadata !2558, metadata !DIExpression()), !dbg !2834
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2887
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2888
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2561, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 0, metadata !2558, metadata !DIExpression()), !dbg !2834
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2887
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2888
  call void @llvm.dbg.label(metadata !2587), !dbg !2889
  %336 = select i1 %109, i32 4, i32 2, !dbg !2890
  br label %626, !dbg !2890

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2686
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2892
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2561, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %339, metadata !2558, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %338, metadata !2529, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i1 %340, metadata !2556, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2686
  %341 = icmp ult i64 %339, 2, !dbg !2893
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2894
  br i1 %343, label %439, label %344, !dbg !2894

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %345, metadata !2578, metadata !DIExpression()), !dbg !2896
  br label %346, !dbg !2897

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2588
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2677
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2898
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2686
  call void @llvm.dbg.value(metadata i8 %352, metadata !2557, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 %351, metadata !2555, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2552, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %349, metadata !2550, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %347, metadata !2536, metadata !DIExpression()), !dbg !2588
  br i1 %342, label %397, label %353, !dbg !2899

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2904

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2555, metadata !DIExpression()), !dbg !2686
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2907
  br i1 %355, label %372, label %356, !dbg !2907

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2909
  br i1 %357, label %358, label %360, !dbg !2913

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2909
  store i8 39, ptr %359, align 1, !dbg !2909, !tbaa !996
  br label %360, !dbg !2909

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %361, metadata !2536, metadata !DIExpression()), !dbg !2588
  %362 = icmp ult i64 %361, %130, !dbg !2914
  br i1 %362, label %363, label %365, !dbg !2917

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2914
  store i8 36, ptr %364, align 1, !dbg !2914, !tbaa !996
  br label %365, !dbg !2914

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %366, metadata !2536, metadata !DIExpression()), !dbg !2588
  %367 = icmp ult i64 %366, %130, !dbg !2918
  br i1 %367, label %368, label %370, !dbg !2921

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2918
  store i8 39, ptr %369, align 1, !dbg !2918, !tbaa !996
  br label %370, !dbg !2918

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %371, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 1, metadata !2544, metadata !DIExpression()), !dbg !2588
  br label %372, !dbg !2922

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2588
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %373, metadata !2536, metadata !DIExpression()), !dbg !2588
  %375 = icmp ult i64 %373, %130, !dbg !2923
  br i1 %375, label %376, label %378, !dbg !2926

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2923
  store i8 92, ptr %377, align 1, !dbg !2923, !tbaa !996
  br label %378, !dbg !2923

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %379, metadata !2536, metadata !DIExpression()), !dbg !2588
  %380 = icmp ult i64 %379, %130, !dbg !2927
  br i1 %380, label %381, label %385, !dbg !2930

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2927
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2927
  store i8 %383, ptr %384, align 1, !dbg !2927, !tbaa !996
  br label %385, !dbg !2927

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %386, metadata !2536, metadata !DIExpression()), !dbg !2588
  %387 = icmp ult i64 %386, %130, !dbg !2931
  br i1 %387, label %388, label %393, !dbg !2934

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2931
  %391 = or i8 %390, 48, !dbg !2931
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2931
  store i8 %391, ptr %392, align 1, !dbg !2931, !tbaa !996
  br label %393, !dbg !2931

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2934
  call void @llvm.dbg.value(metadata i64 %394, metadata !2536, metadata !DIExpression()), !dbg !2588
  %395 = and i8 %352, 7, !dbg !2935
  %396 = or i8 %395, 48, !dbg !2936
  call void @llvm.dbg.value(metadata i8 %396, metadata !2557, metadata !DIExpression()), !dbg !2686
  br label %404, !dbg !2937

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2938

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2939
  br i1 %399, label %400, label %402, !dbg !2944

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2939
  store i8 92, ptr %401, align 1, !dbg !2939, !tbaa !996
  br label %402, !dbg !2939

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %403, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2686
  br label %404, !dbg !2945

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2588
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2686
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2686
  call void @llvm.dbg.value(metadata i8 %409, metadata !2557, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 %408, metadata !2555, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2552, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %405, metadata !2536, metadata !DIExpression()), !dbg !2588
  %410 = add i64 %349, 1, !dbg !2946
  %411 = icmp ugt i64 %345, %410, !dbg !2948
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2949

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2950
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2950
  br i1 %415, label %416, label %427, !dbg !2950

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2953
  br i1 %417, label %418, label %420, !dbg !2957

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2953
  store i8 39, ptr %419, align 1, !dbg !2953, !tbaa !996
  br label %420, !dbg !2953

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %421, metadata !2536, metadata !DIExpression()), !dbg !2588
  %422 = icmp ult i64 %421, %130, !dbg !2958
  br i1 %422, label %423, label %425, !dbg !2961

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2958
  store i8 39, ptr %424, align 1, !dbg !2958, !tbaa !996
  br label %425, !dbg !2958

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %426, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2588
  br label %427, !dbg !2962

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2963
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %428, metadata !2536, metadata !DIExpression()), !dbg !2588
  %430 = icmp ult i64 %428, %130, !dbg !2964
  br i1 %430, label %431, label %433, !dbg !2967

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2964
  store i8 %409, ptr %432, align 1, !dbg !2964, !tbaa !996
  br label %433, !dbg !2964

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %434, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %410, metadata !2550, metadata !DIExpression()), !dbg !2677
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2968
  %436 = load i8, ptr %435, align 1, !dbg !2968, !tbaa !996
  call void @llvm.dbg.value(metadata i8 %436, metadata !2557, metadata !DIExpression()), !dbg !2686
  br label %346, !dbg !2969, !llvm.loop !2970

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2557, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i1 %340, metadata !2556, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2686
  call void @llvm.dbg.value(metadata i8 %408, metadata !2555, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2552, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %349, metadata !2550, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %405, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %338, metadata !2529, metadata !DIExpression()), !dbg !2588
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2973
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2588
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2592
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2677
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2686
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %448, metadata !2557, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2555, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2552, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %445, metadata !2550, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %442, metadata !2537, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %441, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %440, metadata !2529, metadata !DIExpression()), !dbg !2588
  br i1 %112, label %461, label %450, !dbg !2974

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
  br i1 %121, label %462, label %482, !dbg !2976

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2977

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
  %473 = lshr i8 %464, 5, !dbg !2978
  %474 = zext i8 %473 to i64, !dbg !2978
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2979
  %476 = load i32, ptr %475, align 4, !dbg !2979, !tbaa !987
  %477 = and i8 %464, 31, !dbg !2980
  %478 = zext i8 %477 to i32, !dbg !2980
  %479 = shl nuw i32 1, %478, !dbg !2981
  %480 = and i32 %476, %479, !dbg !2981
  %481 = icmp eq i32 %480, 0, !dbg !2981
  br i1 %481, label %482, label %493, !dbg !2982

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
  br i1 %154, label %493, label %529, !dbg !2983

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2973
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2588
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2592
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2984
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2686
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %501, metadata !2557, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %499, metadata !2550, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %496, metadata !2537, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %495, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %494, metadata !2529, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.label(metadata !2585), !dbg !2985
  br i1 %110, label %621, label %503, !dbg !2986

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2555, metadata !DIExpression()), !dbg !2686
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2988
  br i1 %504, label %521, label %505, !dbg !2988

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2990
  br i1 %506, label %507, label %509, !dbg !2994

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2990
  store i8 39, ptr %508, align 1, !dbg !2990, !tbaa !996
  br label %509, !dbg !2990

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %510, metadata !2536, metadata !DIExpression()), !dbg !2588
  %511 = icmp ult i64 %510, %502, !dbg !2995
  br i1 %511, label %512, label %514, !dbg !2998

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2995
  store i8 36, ptr %513, align 1, !dbg !2995, !tbaa !996
  br label %514, !dbg !2995

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %515, metadata !2536, metadata !DIExpression()), !dbg !2588
  %516 = icmp ult i64 %515, %502, !dbg !2999
  br i1 %516, label %517, label %519, !dbg !3002

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2999
  store i8 39, ptr %518, align 1, !dbg !2999, !tbaa !996
  br label %519, !dbg !2999

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3002
  call void @llvm.dbg.value(metadata i64 %520, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 1, metadata !2544, metadata !DIExpression()), !dbg !2588
  br label %521, !dbg !3003

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2686
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %522, metadata !2536, metadata !DIExpression()), !dbg !2588
  %524 = icmp ult i64 %522, %502, !dbg !3004
  br i1 %524, label %525, label %527, !dbg !3007

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3004
  store i8 92, ptr %526, align 1, !dbg !3004, !tbaa !996
  br label %527, !dbg !3004

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %502, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %501, metadata !2557, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2555, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %499, metadata !2550, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %496, metadata !2537, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %528, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %494, metadata !2529, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.label(metadata !2586), !dbg !3008
  br label %553, !dbg !3009

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2973
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2588
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2592
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2984
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3012
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %538, metadata !2557, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2556, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 poison, metadata !2555, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %535, metadata !2550, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %532, metadata !2537, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %531, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %530, metadata !2529, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.label(metadata !2586), !dbg !3008
  %540 = xor i1 %534, true, !dbg !3009
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3009
  br i1 %541, label %553, label %542, !dbg !3009

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3013
  br i1 %543, label %544, label %546, !dbg !3017

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3013
  store i8 39, ptr %545, align 1, !dbg !3013, !tbaa !996
  br label %546, !dbg !3013

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %547, metadata !2536, metadata !DIExpression()), !dbg !2588
  %548 = icmp ult i64 %547, %539, !dbg !3018
  br i1 %548, label %549, label %551, !dbg !3021

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3018
  store i8 39, ptr %550, align 1, !dbg !3018, !tbaa !996
  br label %551, !dbg !3018

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %552, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2588
  br label %553, !dbg !3022

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2686
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %561, metadata !2536, metadata !DIExpression()), !dbg !2588
  %563 = icmp ult i64 %561, %554, !dbg !3023
  br i1 %563, label %564, label %566, !dbg !3026

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3023
  store i8 %555, ptr %565, align 1, !dbg !3023, !tbaa !996
  br label %566, !dbg !3023

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %567, metadata !2536, metadata !DIExpression()), !dbg !2588
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3027
  call void @llvm.dbg.value(metadata i8 poison, metadata !2543, metadata !DIExpression()), !dbg !2588
  br label %569, !dbg !3028

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2973
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2588
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2592
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2984
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %576, metadata !2550, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2543, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %572, metadata !2537, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %571, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %570, metadata !2529, metadata !DIExpression()), !dbg !2588
  %578 = add i64 %576, 1, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %578, metadata !2550, metadata !DIExpression()), !dbg !2677
  br label %122, !dbg !3030, !llvm.loop !3031

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2527, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2543, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %125, metadata !2537, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %124, metadata !2536, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %123, metadata !2529, metadata !DIExpression()), !dbg !2588
  %580 = icmp ne i64 %124, 0, !dbg !3033
  %581 = xor i1 %110, true, !dbg !3035
  %582 = or i1 %580, %581, !dbg !3035
  %583 = or i1 %582, %111, !dbg !3035
  br i1 %583, label %584, label %621, !dbg !3035

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3036
  %586 = xor i1 %126, true, !dbg !3036
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3036
  br i1 %587, label %595, label %588, !dbg !3036

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3038

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3040
  br label %636, !dbg !3042

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3043
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3045
  br i1 %594, label %27, label %595, !dbg !3045

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3046
  %598 = or i1 %597, %596, !dbg !3048
  br i1 %598, label %614, label %599, !dbg !3048

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2538, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %124, metadata !2536, metadata !DIExpression()), !dbg !2588
  %600 = load i8, ptr %107, align 1, !dbg !3049, !tbaa !996
  %601 = icmp eq i8 %600, 0, !dbg !3052
  br i1 %601, label %614, label %602, !dbg !3052

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2538, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %605, metadata !2536, metadata !DIExpression()), !dbg !2588
  %606 = icmp ult i64 %605, %130, !dbg !3053
  br i1 %606, label %607, label %609, !dbg !3056

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3053
  store i8 %603, ptr %608, align 1, !dbg !3053, !tbaa !996
  br label %609, !dbg !3053

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %610, metadata !2536, metadata !DIExpression()), !dbg !2588
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3057
  call void @llvm.dbg.value(metadata ptr %611, metadata !2538, metadata !DIExpression()), !dbg !2588
  %612 = load i8, ptr %611, align 1, !dbg !3049, !tbaa !996
  %613 = icmp eq i8 %612, 0, !dbg !3052
  br i1 %613, label %614, label %602, !dbg !3052, !llvm.loop !3058

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2664
  call void @llvm.dbg.value(metadata i64 %615, metadata !2536, metadata !DIExpression()), !dbg !2588
  %616 = icmp ult i64 %615, %130, !dbg !3060
  br i1 %616, label %617, label %636, !dbg !3062

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3063
  store i8 0, ptr %618, align 1, !dbg !3064, !tbaa !996
  br label %636, !dbg !3063

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2587), !dbg !2889
  %620 = icmp eq i32 %103, 2, !dbg !3065
  br i1 %620, label %626, label %630, !dbg !2890

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2587), !dbg !2889
  %624 = icmp eq i32 %103, 2, !dbg !3065
  %625 = select i1 %109, i32 4, i32 2, !dbg !2890
  br i1 %624, label %626, label %630, !dbg !2890

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2890

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2530, metadata !DIExpression()), !dbg !2588
  %634 = and i32 %5, -3, !dbg !3066
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3067
  br label %636, !dbg !3068

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3069
}

; Function Attrs: nounwind
declare !dbg !3070 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3073 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3076 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3077 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %2, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %0, metadata !3085, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr null, metadata !3091, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %2, metadata !3092, metadata !DIExpression()), !dbg !3098
  %4 = icmp eq ptr %2, null, !dbg !3100
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %5, metadata !3093, metadata !DIExpression()), !dbg !3098
  %6 = tail call ptr @__errno_location() #41, !dbg !3101
  %7 = load i32, ptr %6, align 4, !dbg !3101, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %7, metadata !3094, metadata !DIExpression()), !dbg !3098
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3102
  %9 = load i32, ptr %8, align 4, !dbg !3102, !tbaa !2470
  %10 = or i32 %9, 1, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %10, metadata !3095, metadata !DIExpression()), !dbg !3098
  %11 = load i32, ptr %5, align 8, !dbg !3104, !tbaa !2420
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3105
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3106
  %14 = load ptr, ptr %13, align 8, !dbg !3106, !tbaa !2491
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3107
  %16 = load ptr, ptr %15, align 8, !dbg !3107, !tbaa !2494
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3108
  %18 = add i64 %17, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %18, metadata !3096, metadata !DIExpression()), !dbg !3098
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %19, metadata !3097, metadata !DIExpression()), !dbg !3098
  %20 = load i32, ptr %5, align 8, !dbg !3111, !tbaa !2420
  %21 = load ptr, ptr %13, align 8, !dbg !3112, !tbaa !2491
  %22 = load ptr, ptr %15, align 8, !dbg !3113, !tbaa !2494
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3114
  store i32 %7, ptr %6, align 4, !dbg !3115, !tbaa !987
  ret ptr %19, !dbg !3116
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3086 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3085, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %2, metadata !3091, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %3, metadata !3092, metadata !DIExpression()), !dbg !3117
  %5 = icmp eq ptr %3, null, !dbg !3118
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3118
  call void @llvm.dbg.value(metadata ptr %6, metadata !3093, metadata !DIExpression()), !dbg !3117
  %7 = tail call ptr @__errno_location() #41, !dbg !3119
  %8 = load i32, ptr %7, align 4, !dbg !3119, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %8, metadata !3094, metadata !DIExpression()), !dbg !3117
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3120
  %10 = load i32, ptr %9, align 4, !dbg !3120, !tbaa !2470
  %11 = icmp eq ptr %2, null, !dbg !3121
  %12 = zext i1 %11 to i32, !dbg !3121
  %13 = or i32 %10, %12, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %13, metadata !3095, metadata !DIExpression()), !dbg !3117
  %14 = load i32, ptr %6, align 8, !dbg !3123, !tbaa !2420
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3124
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3125
  %17 = load ptr, ptr %16, align 8, !dbg !3125, !tbaa !2491
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3126
  %19 = load ptr, ptr %18, align 8, !dbg !3126, !tbaa !2494
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3127
  %21 = add i64 %20, 1, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %21, metadata !3096, metadata !DIExpression()), !dbg !3117
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3129
  call void @llvm.dbg.value(metadata ptr %22, metadata !3097, metadata !DIExpression()), !dbg !3117
  %23 = load i32, ptr %6, align 8, !dbg !3130, !tbaa !2420
  %24 = load ptr, ptr %16, align 8, !dbg !3131, !tbaa !2491
  %25 = load ptr, ptr %18, align 8, !dbg !3132, !tbaa !2494
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3133
  store i32 %8, ptr %7, align 4, !dbg !3134, !tbaa !987
  br i1 %11, label %28, label %27, !dbg !3135

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3136, !tbaa !3138
  br label %28, !dbg !3139

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3140
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3141 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3146, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %1, metadata !3143, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 1, metadata !3144, metadata !DIExpression()), !dbg !3148
  %2 = load i32, ptr @nslots, align 4, !tbaa !987
  call void @llvm.dbg.value(metadata i32 1, metadata !3144, metadata !DIExpression()), !dbg !3148
  %3 = icmp sgt i32 %2, 1, !dbg !3149
  br i1 %3, label %4, label %6, !dbg !3151

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3149
  br label %10, !dbg !3151

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3152
  %8 = load ptr, ptr %7, align 8, !dbg !3152, !tbaa !3154
  %9 = icmp eq ptr %8, @slot0, !dbg !3156
  br i1 %9, label %17, label %16, !dbg !3157

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3144, metadata !DIExpression()), !dbg !3148
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3158
  %13 = load ptr, ptr %12, align 8, !dbg !3158, !tbaa !3154
  tail call void @free(ptr noundef %13) #38, !dbg !3159
  %14 = add nuw nsw i64 %11, 1, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %14, metadata !3144, metadata !DIExpression()), !dbg !3148
  %15 = icmp eq i64 %14, %5, !dbg !3149
  br i1 %15, label %6, label %10, !dbg !3151, !llvm.loop !3161

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3163
  store i64 256, ptr @slotvec0, align 8, !dbg !3165, !tbaa !3166
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3167, !tbaa !3154
  br label %17, !dbg !3168

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3169
  br i1 %18, label %20, label %19, !dbg !3171

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3172
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3174, !tbaa !917
  br label %20, !dbg !3175

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3176, !tbaa !987
  ret void, !dbg !3177
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3178 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3181 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3183, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %1, metadata !3184, metadata !DIExpression()), !dbg !3185
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3186
  ret ptr %3, !dbg !3187
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3188 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3192, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata ptr %1, metadata !3193, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %2, metadata !3194, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata ptr %3, metadata !3195, metadata !DIExpression()), !dbg !3208
  %6 = tail call ptr @__errno_location() #41, !dbg !3209
  %7 = load i32, ptr %6, align 4, !dbg !3209, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %7, metadata !3196, metadata !DIExpression()), !dbg !3208
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3210, !tbaa !917
  call void @llvm.dbg.value(metadata ptr %8, metadata !3197, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3198, metadata !DIExpression()), !dbg !3208
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3211
  br i1 %9, label %10, label %11, !dbg !3211

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3213
  unreachable, !dbg !3213

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3214, !tbaa !987
  %13 = icmp sgt i32 %12, %0, !dbg !3215
  br i1 %13, label %32, label %14, !dbg !3216

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3217
  call void @llvm.dbg.value(metadata i1 %15, metadata !3199, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3219
  %16 = sext i32 %12 to i64, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %16, metadata !3202, metadata !DIExpression()), !dbg !3218
  store i64 %16, ptr %5, align 8, !dbg !3221, !tbaa !3138
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3222
  %18 = add nuw nsw i32 %0, 1, !dbg !3223
  %19 = sub i32 %18, %12, !dbg !3224
  %20 = sext i32 %19 to i64, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %5, metadata !3202, metadata !DIExpression(DW_OP_deref)), !dbg !3218
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3226
  call void @llvm.dbg.value(metadata ptr %21, metadata !3197, metadata !DIExpression()), !dbg !3208
  store ptr %21, ptr @slotvec, align 8, !dbg !3227, !tbaa !917
  br i1 %15, label %22, label %23, !dbg !3228

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3229, !tbaa.struct !3231
  br label %23, !dbg !3232

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3233, !tbaa !987
  %25 = sext i32 %24 to i64, !dbg !3234
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3234
  %27 = load i64, ptr %5, align 8, !dbg !3235, !tbaa !3138
  call void @llvm.dbg.value(metadata i64 %27, metadata !3202, metadata !DIExpression()), !dbg !3218
  %28 = sub nsw i64 %27, %25, !dbg !3236
  %29 = shl i64 %28, 4, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %26, metadata !2622, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i32 0, metadata !2625, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %29, metadata !2626, metadata !DIExpression()), !dbg !3238
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3240
  %30 = load i64, ptr %5, align 8, !dbg !3241, !tbaa !3138
  call void @llvm.dbg.value(metadata i64 %30, metadata !3202, metadata !DIExpression()), !dbg !3218
  %31 = trunc i64 %30 to i32, !dbg !3241
  store i32 %31, ptr @nslots, align 4, !dbg !3242, !tbaa !987
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3243
  br label %32, !dbg !3244

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3208
  call void @llvm.dbg.value(metadata ptr %33, metadata !3197, metadata !DIExpression()), !dbg !3208
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3245
  %36 = load i64, ptr %35, align 8, !dbg !3246, !tbaa !3166
  call void @llvm.dbg.value(metadata i64 %36, metadata !3203, metadata !DIExpression()), !dbg !3247
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3248
  %38 = load ptr, ptr %37, align 8, !dbg !3248, !tbaa !3154
  call void @llvm.dbg.value(metadata ptr %38, metadata !3205, metadata !DIExpression()), !dbg !3247
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3249
  %40 = load i32, ptr %39, align 4, !dbg !3249, !tbaa !2470
  %41 = or i32 %40, 1, !dbg !3250
  call void @llvm.dbg.value(metadata i32 %41, metadata !3206, metadata !DIExpression()), !dbg !3247
  %42 = load i32, ptr %3, align 8, !dbg !3251, !tbaa !2420
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3252
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3253
  %45 = load ptr, ptr %44, align 8, !dbg !3253, !tbaa !2491
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3254
  %47 = load ptr, ptr %46, align 8, !dbg !3254, !tbaa !2494
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %48, metadata !3207, metadata !DIExpression()), !dbg !3247
  %49 = icmp ugt i64 %36, %48, !dbg !3256
  br i1 %49, label %60, label %50, !dbg !3258

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %51, metadata !3203, metadata !DIExpression()), !dbg !3247
  store i64 %51, ptr %35, align 8, !dbg !3261, !tbaa !3166
  %52 = icmp eq ptr %38, @slot0, !dbg !3262
  br i1 %52, label %54, label %53, !dbg !3264

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3265
  br label %54, !dbg !3265

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %55, metadata !3205, metadata !DIExpression()), !dbg !3247
  store ptr %55, ptr %37, align 8, !dbg !3267, !tbaa !3154
  %56 = load i32, ptr %3, align 8, !dbg !3268, !tbaa !2420
  %57 = load ptr, ptr %44, align 8, !dbg !3269, !tbaa !2491
  %58 = load ptr, ptr %46, align 8, !dbg !3270, !tbaa !2494
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3271
  br label %60, !dbg !3272

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3247
  call void @llvm.dbg.value(metadata ptr %61, metadata !3205, metadata !DIExpression()), !dbg !3247
  store i32 %7, ptr %6, align 4, !dbg !3273, !tbaa !987
  ret ptr %61, !dbg !3274
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3279, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata ptr %1, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %2, metadata !3281, metadata !DIExpression()), !dbg !3282
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3283
  ret ptr %4, !dbg !3284
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3285 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 0, metadata !3183, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata ptr %0, metadata !3184, metadata !DIExpression()), !dbg !3289
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3291
  ret ptr %2, !dbg !3292
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3293 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3297, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %1, metadata !3298, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 0, metadata !3279, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()), !dbg !3300
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3302
  ret ptr %3, !dbg !3303
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3304 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3308, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %1, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata ptr %2, metadata !3310, metadata !DIExpression()), !dbg !3312
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3313
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3311, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3315), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %1, metadata !3319, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3324, metadata !DIExpression()), !dbg !3327
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3327, !alias.scope !3315
  %5 = icmp eq i32 %1, 10, !dbg !3328
  br i1 %5, label %6, label %7, !dbg !3330

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3331, !noalias !3315
  unreachable, !dbg !3331

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3332, !tbaa !2420, !alias.scope !3315
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3333
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3334
  ret ptr %8, !dbg !3335
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3336 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3340, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 %1, metadata !3341, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata ptr %2, metadata !3342, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %3, metadata !3343, metadata !DIExpression()), !dbg !3345
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3346
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3344, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348), !dbg !3351
  call void @llvm.dbg.value(metadata i32 %1, metadata !3319, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3324, metadata !DIExpression()), !dbg !3354
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3354, !alias.scope !3348
  %6 = icmp eq i32 %1, 10, !dbg !3355
  br i1 %6, label %7, label %8, !dbg !3356

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3357, !noalias !3348
  unreachable, !dbg !3357

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3358, !tbaa !2420, !alias.scope !3348
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3359
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3360
  ret ptr %9, !dbg !3361
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3362 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3366, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata ptr %1, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 0, metadata !3308, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 %0, metadata !3309, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %1, metadata !3310, metadata !DIExpression()), !dbg !3369
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3371
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3311, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3373), !dbg !3376
  call void @llvm.dbg.value(metadata i32 %0, metadata !3319, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3324, metadata !DIExpression()), !dbg !3379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3379, !alias.scope !3373
  %4 = icmp eq i32 %0, 10, !dbg !3380
  br i1 %4, label %5, label %6, !dbg !3381

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3382, !noalias !3373
  unreachable, !dbg !3382

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3383, !tbaa !2420, !alias.scope !3373
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3384
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3385
  ret ptr %7, !dbg !3386
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3387 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3391, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata ptr %1, metadata !3392, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %2, metadata !3393, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 0, metadata !3340, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %0, metadata !3341, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %1, metadata !3342, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 %2, metadata !3343, metadata !DIExpression()), !dbg !3395
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3397
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3344, metadata !DIExpression()), !dbg !3398
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3399), !dbg !3402
  call void @llvm.dbg.value(metadata i32 %0, metadata !3319, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3324, metadata !DIExpression()), !dbg !3405
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3405, !alias.scope !3399
  %5 = icmp eq i32 %0, 10, !dbg !3406
  br i1 %5, label %6, label %7, !dbg !3407

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3408, !noalias !3399
  unreachable, !dbg !3408

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3409, !tbaa !2420, !alias.scope !3399
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3410
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3411
  ret ptr %8, !dbg !3412
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3413 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3417, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i64 %1, metadata !3418, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i8 %2, metadata !3419, metadata !DIExpression()), !dbg !3421
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3422
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3420, metadata !DIExpression()), !dbg !3423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3424, !tbaa.struct !3425
  call void @llvm.dbg.value(metadata ptr %4, metadata !2437, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8 %2, metadata !2438, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i32 1, metadata !2439, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8 %2, metadata !2440, metadata !DIExpression()), !dbg !3426
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3428
  %6 = lshr i8 %2, 5, !dbg !3429
  %7 = zext i8 %6 to i64, !dbg !3429
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3430
  call void @llvm.dbg.value(metadata ptr %8, metadata !2441, metadata !DIExpression()), !dbg !3426
  %9 = and i8 %2, 31, !dbg !3431
  %10 = zext i8 %9 to i32, !dbg !3431
  call void @llvm.dbg.value(metadata i32 %10, metadata !2443, metadata !DIExpression()), !dbg !3426
  %11 = load i32, ptr %8, align 4, !dbg !3432, !tbaa !987
  %12 = lshr i32 %11, %10, !dbg !3433
  call void @llvm.dbg.value(metadata i32 %12, metadata !2444, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3426
  %13 = and i32 %12, 1, !dbg !3434
  %14 = xor i32 %13, 1, !dbg !3434
  %15 = shl nuw i32 %14, %10, !dbg !3435
  %16 = xor i32 %15, %11, !dbg !3436
  store i32 %16, ptr %8, align 4, !dbg !3436, !tbaa !987
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3437
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3438
  ret ptr %17, !dbg !3439
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3440 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i8 %1, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr %0, metadata !3417, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 -1, metadata !3418, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8 %1, metadata !3419, metadata !DIExpression()), !dbg !3447
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3449
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3420, metadata !DIExpression()), !dbg !3450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3451, !tbaa.struct !3425
  call void @llvm.dbg.value(metadata ptr %3, metadata !2437, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i8 %1, metadata !2438, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 1, metadata !2439, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i8 %1, metadata !2440, metadata !DIExpression()), !dbg !3452
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3454
  %5 = lshr i8 %1, 5, !dbg !3455
  %6 = zext i8 %5 to i64, !dbg !3455
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3456
  call void @llvm.dbg.value(metadata ptr %7, metadata !2441, metadata !DIExpression()), !dbg !3452
  %8 = and i8 %1, 31, !dbg !3457
  %9 = zext i8 %8 to i32, !dbg !3457
  call void @llvm.dbg.value(metadata i32 %9, metadata !2443, metadata !DIExpression()), !dbg !3452
  %10 = load i32, ptr %7, align 4, !dbg !3458, !tbaa !987
  %11 = lshr i32 %10, %9, !dbg !3459
  call void @llvm.dbg.value(metadata i32 %11, metadata !2444, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3452
  %12 = and i32 %11, 1, !dbg !3460
  %13 = xor i32 %12, 1, !dbg !3460
  %14 = shl nuw i32 %13, %9, !dbg !3461
  %15 = xor i32 %14, %10, !dbg !3462
  store i32 %15, ptr %7, align 4, !dbg !3462, !tbaa !987
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3463
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3464
  ret ptr %16, !dbg !3465
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3466 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8 58, metadata !3445, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata ptr %0, metadata !3417, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 -1, metadata !3418, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8 58, metadata !3419, metadata !DIExpression()), !dbg !3472
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !3474
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3420, metadata !DIExpression()), !dbg !3475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3476, !tbaa.struct !3425
  call void @llvm.dbg.value(metadata ptr %2, metadata !2437, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i8 58, metadata !2438, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i32 1, metadata !2439, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i8 58, metadata !2440, metadata !DIExpression()), !dbg !3477
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3479
  call void @llvm.dbg.value(metadata ptr %3, metadata !2441, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i32 26, metadata !2443, metadata !DIExpression()), !dbg !3477
  %4 = load i32, ptr %3, align 4, !dbg !3480, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %4, metadata !2444, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3477
  %5 = or i32 %4, 67108864, !dbg !3481
  store i32 %5, ptr %3, align 4, !dbg !3481, !tbaa !987
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3482
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !3483
  ret ptr %6, !dbg !3484
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3485 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %0, metadata !3417, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %1, metadata !3418, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8 58, metadata !3419, metadata !DIExpression()), !dbg !3490
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3492
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3420, metadata !DIExpression()), !dbg !3493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3494, !tbaa.struct !3425
  call void @llvm.dbg.value(metadata ptr %3, metadata !2437, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8 58, metadata !2438, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 1, metadata !2439, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8 58, metadata !2440, metadata !DIExpression()), !dbg !3495
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3497
  call void @llvm.dbg.value(metadata ptr %4, metadata !2441, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 26, metadata !2443, metadata !DIExpression()), !dbg !3495
  %5 = load i32, ptr %4, align 4, !dbg !3498, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %5, metadata !2444, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3495
  %6 = or i32 %5, 67108864, !dbg !3499
  store i32 %6, ptr %4, align 4, !dbg !3499, !tbaa !987
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3500
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3501
  ret ptr %7, !dbg !3502
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3503 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3324, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3509
  call void @llvm.dbg.value(metadata i32 %0, metadata !3505, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i32 %1, metadata !3506, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata ptr %2, metadata !3507, metadata !DIExpression()), !dbg !3511
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3508, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 %1, metadata !3319, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32 0, metadata !3324, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3514
  %5 = icmp eq i32 %1, 10, !dbg !3515
  br i1 %5, label %6, label %7, !dbg !3516

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3517, !noalias !3518
  unreachable, !dbg !3517

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3324, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3514
  store i32 %1, ptr %4, align 8, !dbg !3521, !tbaa.struct !3425
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3521
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3521
  call void @llvm.dbg.value(metadata ptr %4, metadata !2437, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8 58, metadata !2438, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 1, metadata !2439, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8 58, metadata !2440, metadata !DIExpression()), !dbg !3522
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3524
  call void @llvm.dbg.value(metadata ptr %9, metadata !2441, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 26, metadata !2443, metadata !DIExpression()), !dbg !3522
  %10 = load i32, ptr %9, align 4, !dbg !3525, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %10, metadata !2444, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3522
  %11 = or i32 %10, 67108864, !dbg !3526
  store i32 %11, ptr %9, align 4, !dbg !3526, !tbaa !987
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3527
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3528
  ret ptr %12, !dbg !3529
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3530 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3534, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata ptr %1, metadata !3535, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata ptr %2, metadata !3536, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata ptr %3, metadata !3537, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 %0, metadata !3539, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %1, metadata !3544, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %2, metadata !3545, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %3, metadata !3546, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 -1, metadata !3547, metadata !DIExpression()), !dbg !3549
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3551
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3548, metadata !DIExpression()), !dbg !3552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3553, !tbaa.struct !3425
  call void @llvm.dbg.value(metadata ptr %5, metadata !2477, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata ptr %1, metadata !2478, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata ptr %2, metadata !2479, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata ptr %5, metadata !2477, metadata !DIExpression()), !dbg !3554
  store i32 10, ptr %5, align 8, !dbg !3556, !tbaa !2420
  %6 = icmp ne ptr %1, null, !dbg !3557
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3558
  br i1 %8, label %10, label %9, !dbg !3558

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3559
  unreachable, !dbg !3559

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3560
  store ptr %1, ptr %11, align 8, !dbg !3561, !tbaa !2491
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3562
  store ptr %2, ptr %12, align 8, !dbg !3563, !tbaa !2494
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3564
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3565
  ret ptr %13, !dbg !3566
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3540 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3539, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata ptr %1, metadata !3544, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata ptr %2, metadata !3545, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata ptr %3, metadata !3546, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %4, metadata !3547, metadata !DIExpression()), !dbg !3567
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3568
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3548, metadata !DIExpression()), !dbg !3569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3570, !tbaa.struct !3425
  call void @llvm.dbg.value(metadata ptr %6, metadata !2477, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %1, metadata !2478, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %2, metadata !2479, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %6, metadata !2477, metadata !DIExpression()), !dbg !3571
  store i32 10, ptr %6, align 8, !dbg !3573, !tbaa !2420
  %7 = icmp ne ptr %1, null, !dbg !3574
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3575
  br i1 %9, label %11, label %10, !dbg !3575

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3576
  unreachable, !dbg !3576

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3577
  store ptr %1, ptr %12, align 8, !dbg !3578, !tbaa !2491
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3579
  store ptr %2, ptr %13, align 8, !dbg !3580, !tbaa !2494
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3581
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3582
  ret ptr %14, !dbg !3583
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3584 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3588, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %1, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %2, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 0, metadata !3534, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr %0, metadata !3535, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr %1, metadata !3536, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr %2, metadata !3537, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3539, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata ptr %0, metadata !3544, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata ptr %1, metadata !3545, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata ptr %2, metadata !3546, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 -1, metadata !3547, metadata !DIExpression()), !dbg !3594
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3548, metadata !DIExpression()), !dbg !3597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3598, !tbaa.struct !3425
  call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %0, metadata !2478, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %1, metadata !2479, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !3599
  store i32 10, ptr %4, align 8, !dbg !3601, !tbaa !2420
  %5 = icmp ne ptr %0, null, !dbg !3602
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3603
  br i1 %7, label %9, label %8, !dbg !3603

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3604
  unreachable, !dbg !3604

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3605
  store ptr %0, ptr %10, align 8, !dbg !3606, !tbaa !2491
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3607
  store ptr %1, ptr %11, align 8, !dbg !3608, !tbaa !2494
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3609
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3610
  ret ptr %12, !dbg !3611
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3612 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3616, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr %1, metadata !3617, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr %2, metadata !3618, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 %3, metadata !3619, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i32 0, metadata !3539, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata ptr %0, metadata !3544, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata ptr %1, metadata !3545, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata ptr %2, metadata !3546, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %3, metadata !3547, metadata !DIExpression()), !dbg !3621
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3548, metadata !DIExpression()), !dbg !3624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3625, !tbaa.struct !3425
  call void @llvm.dbg.value(metadata ptr %5, metadata !2477, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr %0, metadata !2478, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr %1, metadata !2479, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr %5, metadata !2477, metadata !DIExpression()), !dbg !3626
  store i32 10, ptr %5, align 8, !dbg !3628, !tbaa !2420
  %6 = icmp ne ptr %0, null, !dbg !3629
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3630
  br i1 %8, label %10, label %9, !dbg !3630

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3631
  unreachable, !dbg !3631

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3632
  store ptr %0, ptr %11, align 8, !dbg !3633, !tbaa !2491
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3634
  store ptr %1, ptr %12, align 8, !dbg !3635, !tbaa !2494
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3636
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3637
  ret ptr %13, !dbg !3638
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3643, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %1, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %2, metadata !3645, metadata !DIExpression()), !dbg !3646
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3647
  ret ptr %4, !dbg !3648
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3649 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3653, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %1, metadata !3654, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i32 0, metadata !3643, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %1, metadata !3645, metadata !DIExpression()), !dbg !3656
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3658
  ret ptr %3, !dbg !3659
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3660 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3664, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr %1, metadata !3665, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 %0, metadata !3643, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata ptr %1, metadata !3644, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 -1, metadata !3645, metadata !DIExpression()), !dbg !3667
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3669
  ret ptr %3, !dbg !3670
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3671 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3675, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %0, metadata !3665, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i32 0, metadata !3643, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 -1, metadata !3645, metadata !DIExpression()), !dbg !3679
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3681
  ret ptr %2, !dbg !3682
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3683 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %1, metadata !3723, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %2, metadata !3724, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %3, metadata !3725, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %4, metadata !3726, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i64 %5, metadata !3727, metadata !DIExpression()), !dbg !3728
  %7 = icmp eq ptr %1, null, !dbg !3729
  br i1 %7, label %10, label %8, !dbg !3731

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.85, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3732
  br label %12, !dbg !3732

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.86, ptr noundef %2, ptr noundef %3) #38, !dbg !3733
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.3.88, i32 noundef 5) #38, !dbg !3734
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3734
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %0), !dbg !3735
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.5.90, i32 noundef 5) #38, !dbg !3736
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.91) #38, !dbg !3736
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %0), !dbg !3737
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
  ], !dbg !3738

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.7.92, i32 noundef 5) #38, !dbg !3739
  %21 = load ptr, ptr %4, align 8, !dbg !3739, !tbaa !917
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3739
  br label %147, !dbg !3741

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.8.93, i32 noundef 5) #38, !dbg !3742
  %25 = load ptr, ptr %4, align 8, !dbg !3742, !tbaa !917
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3742
  %27 = load ptr, ptr %26, align 8, !dbg !3742, !tbaa !917
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3742
  br label %147, !dbg !3743

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.9.94, i32 noundef 5) #38, !dbg !3744
  %31 = load ptr, ptr %4, align 8, !dbg !3744, !tbaa !917
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3744
  %33 = load ptr, ptr %32, align 8, !dbg !3744, !tbaa !917
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3744
  %35 = load ptr, ptr %34, align 8, !dbg !3744, !tbaa !917
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3744
  br label %147, !dbg !3745

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.10.95, i32 noundef 5) #38, !dbg !3746
  %39 = load ptr, ptr %4, align 8, !dbg !3746, !tbaa !917
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3746
  %41 = load ptr, ptr %40, align 8, !dbg !3746, !tbaa !917
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3746
  %43 = load ptr, ptr %42, align 8, !dbg !3746, !tbaa !917
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3746
  %45 = load ptr, ptr %44, align 8, !dbg !3746, !tbaa !917
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3746
  br label %147, !dbg !3747

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.11.96, i32 noundef 5) #38, !dbg !3748
  %49 = load ptr, ptr %4, align 8, !dbg !3748, !tbaa !917
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3748
  %51 = load ptr, ptr %50, align 8, !dbg !3748, !tbaa !917
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3748
  %53 = load ptr, ptr %52, align 8, !dbg !3748, !tbaa !917
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3748
  %55 = load ptr, ptr %54, align 8, !dbg !3748, !tbaa !917
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3748
  %57 = load ptr, ptr %56, align 8, !dbg !3748, !tbaa !917
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3748
  br label %147, !dbg !3749

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.12.97, i32 noundef 5) #38, !dbg !3750
  %61 = load ptr, ptr %4, align 8, !dbg !3750, !tbaa !917
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3750
  %63 = load ptr, ptr %62, align 8, !dbg !3750, !tbaa !917
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3750
  %65 = load ptr, ptr %64, align 8, !dbg !3750, !tbaa !917
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3750
  %67 = load ptr, ptr %66, align 8, !dbg !3750, !tbaa !917
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3750
  %69 = load ptr, ptr %68, align 8, !dbg !3750, !tbaa !917
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3750
  %71 = load ptr, ptr %70, align 8, !dbg !3750, !tbaa !917
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3750
  br label %147, !dbg !3751

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.13.98, i32 noundef 5) #38, !dbg !3752
  %75 = load ptr, ptr %4, align 8, !dbg !3752, !tbaa !917
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3752
  %77 = load ptr, ptr %76, align 8, !dbg !3752, !tbaa !917
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3752
  %79 = load ptr, ptr %78, align 8, !dbg !3752, !tbaa !917
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3752
  %81 = load ptr, ptr %80, align 8, !dbg !3752, !tbaa !917
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3752
  %83 = load ptr, ptr %82, align 8, !dbg !3752, !tbaa !917
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3752
  %85 = load ptr, ptr %84, align 8, !dbg !3752, !tbaa !917
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3752
  %87 = load ptr, ptr %86, align 8, !dbg !3752, !tbaa !917
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3752
  br label %147, !dbg !3753

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.14.99, i32 noundef 5) #38, !dbg !3754
  %91 = load ptr, ptr %4, align 8, !dbg !3754, !tbaa !917
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3754
  %93 = load ptr, ptr %92, align 8, !dbg !3754, !tbaa !917
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3754
  %95 = load ptr, ptr %94, align 8, !dbg !3754, !tbaa !917
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3754
  %97 = load ptr, ptr %96, align 8, !dbg !3754, !tbaa !917
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3754
  %99 = load ptr, ptr %98, align 8, !dbg !3754, !tbaa !917
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3754
  %101 = load ptr, ptr %100, align 8, !dbg !3754, !tbaa !917
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3754
  %103 = load ptr, ptr %102, align 8, !dbg !3754, !tbaa !917
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3754
  %105 = load ptr, ptr %104, align 8, !dbg !3754, !tbaa !917
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3754
  br label %147, !dbg !3755

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.15.100, i32 noundef 5) #38, !dbg !3756
  %109 = load ptr, ptr %4, align 8, !dbg !3756, !tbaa !917
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3756
  %111 = load ptr, ptr %110, align 8, !dbg !3756, !tbaa !917
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3756
  %113 = load ptr, ptr %112, align 8, !dbg !3756, !tbaa !917
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3756
  %115 = load ptr, ptr %114, align 8, !dbg !3756, !tbaa !917
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3756
  %117 = load ptr, ptr %116, align 8, !dbg !3756, !tbaa !917
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3756
  %119 = load ptr, ptr %118, align 8, !dbg !3756, !tbaa !917
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3756
  %121 = load ptr, ptr %120, align 8, !dbg !3756, !tbaa !917
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3756
  %123 = load ptr, ptr %122, align 8, !dbg !3756, !tbaa !917
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3756
  %125 = load ptr, ptr %124, align 8, !dbg !3756, !tbaa !917
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3756
  br label %147, !dbg !3757

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.16.101, i32 noundef 5) #38, !dbg !3758
  %129 = load ptr, ptr %4, align 8, !dbg !3758, !tbaa !917
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3758
  %131 = load ptr, ptr %130, align 8, !dbg !3758, !tbaa !917
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3758
  %133 = load ptr, ptr %132, align 8, !dbg !3758, !tbaa !917
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3758
  %135 = load ptr, ptr %134, align 8, !dbg !3758, !tbaa !917
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3758
  %137 = load ptr, ptr %136, align 8, !dbg !3758, !tbaa !917
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3758
  %139 = load ptr, ptr %138, align 8, !dbg !3758, !tbaa !917
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3758
  %141 = load ptr, ptr %140, align 8, !dbg !3758, !tbaa !917
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3758
  %143 = load ptr, ptr %142, align 8, !dbg !3758, !tbaa !917
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3758
  %145 = load ptr, ptr %144, align 8, !dbg !3758, !tbaa !917
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3758
  br label %147, !dbg !3759

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3760
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3761 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3765, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %1, metadata !3766, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %2, metadata !3767, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %3, metadata !3768, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %4, metadata !3769, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i64 0, metadata !3770, metadata !DIExpression()), !dbg !3771
  br label %6, !dbg !3772

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3774
  call void @llvm.dbg.value(metadata i64 %7, metadata !3770, metadata !DIExpression()), !dbg !3771
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3775
  %9 = load ptr, ptr %8, align 8, !dbg !3775, !tbaa !917
  %10 = icmp eq ptr %9, null, !dbg !3777
  %11 = add i64 %7, 1, !dbg !3778
  call void @llvm.dbg.value(metadata i64 %11, metadata !3770, metadata !DIExpression()), !dbg !3771
  br i1 %10, label %12, label %6, !dbg !3777, !llvm.loop !3779

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3781
  ret void, !dbg !3782
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3783 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3798, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata ptr %1, metadata !3799, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata ptr %2, metadata !3800, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata ptr %3, metadata !3801, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3802, metadata !DIExpression()), !dbg !3807
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3808
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3804, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 0, metadata !3803, metadata !DIExpression()), !dbg !3806
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3803, metadata !DIExpression()), !dbg !3806
  %10 = icmp sgt i32 %9, -1, !dbg !3810
  br i1 %10, label %18, label %11, !dbg !3810

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3810
  store i32 %12, ptr %7, align 8, !dbg !3810
  %13 = icmp ult i32 %9, -7, !dbg !3810
  br i1 %13, label %14, label %18, !dbg !3810

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3810
  %16 = sext i32 %9 to i64, !dbg !3810
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3810
  br label %22, !dbg !3810

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3810
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3810
  store ptr %21, ptr %4, align 8, !dbg !3810
  br label %22, !dbg !3810

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3810
  %25 = load ptr, ptr %24, align 8, !dbg !3810
  store ptr %25, ptr %6, align 8, !dbg !3813, !tbaa !917
  %26 = icmp eq ptr %25, null, !dbg !3814
  br i1 %26, label %197, label %27, !dbg !3815

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 1, metadata !3803, metadata !DIExpression()), !dbg !3806
  %28 = icmp sgt i32 %23, -1, !dbg !3810
  br i1 %28, label %36, label %29, !dbg !3810

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3810
  store i32 %30, ptr %7, align 8, !dbg !3810
  %31 = icmp ult i32 %23, -7, !dbg !3810
  br i1 %31, label %32, label %36, !dbg !3810

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3810
  %34 = sext i32 %23 to i64, !dbg !3810
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3810
  br label %40, !dbg !3810

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3810
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3810
  store ptr %39, ptr %4, align 8, !dbg !3810
  br label %40, !dbg !3810

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3810
  %43 = load ptr, ptr %42, align 8, !dbg !3810
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3816
  store ptr %43, ptr %44, align 8, !dbg !3813, !tbaa !917
  %45 = icmp eq ptr %43, null, !dbg !3814
  br i1 %45, label %197, label %46, !dbg !3815

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 2, metadata !3803, metadata !DIExpression()), !dbg !3806
  %47 = icmp sgt i32 %41, -1, !dbg !3810
  br i1 %47, label %55, label %48, !dbg !3810

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3810
  store i32 %49, ptr %7, align 8, !dbg !3810
  %50 = icmp ult i32 %41, -7, !dbg !3810
  br i1 %50, label %51, label %55, !dbg !3810

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3810
  %53 = sext i32 %41 to i64, !dbg !3810
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3810
  br label %59, !dbg !3810

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3810
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3810
  store ptr %58, ptr %4, align 8, !dbg !3810
  br label %59, !dbg !3810

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3810
  %62 = load ptr, ptr %61, align 8, !dbg !3810
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3816
  store ptr %62, ptr %63, align 8, !dbg !3813, !tbaa !917
  %64 = icmp eq ptr %62, null, !dbg !3814
  br i1 %64, label %197, label %65, !dbg !3815

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 3, metadata !3803, metadata !DIExpression()), !dbg !3806
  %66 = icmp sgt i32 %60, -1, !dbg !3810
  br i1 %66, label %74, label %67, !dbg !3810

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3810
  store i32 %68, ptr %7, align 8, !dbg !3810
  %69 = icmp ult i32 %60, -7, !dbg !3810
  br i1 %69, label %70, label %74, !dbg !3810

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3810
  %72 = sext i32 %60 to i64, !dbg !3810
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3810
  br label %78, !dbg !3810

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3810
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3810
  store ptr %77, ptr %4, align 8, !dbg !3810
  br label %78, !dbg !3810

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3810
  %81 = load ptr, ptr %80, align 8, !dbg !3810
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3816
  store ptr %81, ptr %82, align 8, !dbg !3813, !tbaa !917
  %83 = icmp eq ptr %81, null, !dbg !3814
  br i1 %83, label %197, label %84, !dbg !3815

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 4, metadata !3803, metadata !DIExpression()), !dbg !3806
  %85 = icmp sgt i32 %79, -1, !dbg !3810
  br i1 %85, label %93, label %86, !dbg !3810

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3810
  store i32 %87, ptr %7, align 8, !dbg !3810
  %88 = icmp ult i32 %79, -7, !dbg !3810
  br i1 %88, label %89, label %93, !dbg !3810

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3810
  %91 = sext i32 %79 to i64, !dbg !3810
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3810
  br label %97, !dbg !3810

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3810
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3810
  store ptr %96, ptr %4, align 8, !dbg !3810
  br label %97, !dbg !3810

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3810
  %100 = load ptr, ptr %99, align 8, !dbg !3810
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3816
  store ptr %100, ptr %101, align 8, !dbg !3813, !tbaa !917
  %102 = icmp eq ptr %100, null, !dbg !3814
  br i1 %102, label %197, label %103, !dbg !3815

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 5, metadata !3803, metadata !DIExpression()), !dbg !3806
  %104 = icmp sgt i32 %98, -1, !dbg !3810
  br i1 %104, label %112, label %105, !dbg !3810

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3810
  store i32 %106, ptr %7, align 8, !dbg !3810
  %107 = icmp ult i32 %98, -7, !dbg !3810
  br i1 %107, label %108, label %112, !dbg !3810

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3810
  %110 = sext i32 %98 to i64, !dbg !3810
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3810
  br label %116, !dbg !3810

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3810
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3810
  store ptr %115, ptr %4, align 8, !dbg !3810
  br label %116, !dbg !3810

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3810
  %119 = load ptr, ptr %118, align 8, !dbg !3810
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3816
  store ptr %119, ptr %120, align 8, !dbg !3813, !tbaa !917
  %121 = icmp eq ptr %119, null, !dbg !3814
  br i1 %121, label %197, label %122, !dbg !3815

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 6, metadata !3803, metadata !DIExpression()), !dbg !3806
  %123 = icmp sgt i32 %117, -1, !dbg !3810
  br i1 %123, label %131, label %124, !dbg !3810

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3810
  store i32 %125, ptr %7, align 8, !dbg !3810
  %126 = icmp ult i32 %117, -7, !dbg !3810
  br i1 %126, label %127, label %131, !dbg !3810

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3810
  %129 = sext i32 %117 to i64, !dbg !3810
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3810
  br label %135, !dbg !3810

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3810
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3810
  store ptr %134, ptr %4, align 8, !dbg !3810
  br label %135, !dbg !3810

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3810
  %138 = load ptr, ptr %137, align 8, !dbg !3810
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3816
  store ptr %138, ptr %139, align 8, !dbg !3813, !tbaa !917
  %140 = icmp eq ptr %138, null, !dbg !3814
  br i1 %140, label %197, label %141, !dbg !3815

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 7, metadata !3803, metadata !DIExpression()), !dbg !3806
  %142 = icmp sgt i32 %136, -1, !dbg !3810
  br i1 %142, label %150, label %143, !dbg !3810

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3810
  store i32 %144, ptr %7, align 8, !dbg !3810
  %145 = icmp ult i32 %136, -7, !dbg !3810
  br i1 %145, label %146, label %150, !dbg !3810

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3810
  %148 = sext i32 %136 to i64, !dbg !3810
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3810
  br label %154, !dbg !3810

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3810
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3810
  store ptr %153, ptr %4, align 8, !dbg !3810
  br label %154, !dbg !3810

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3810
  %157 = load ptr, ptr %156, align 8, !dbg !3810
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3816
  store ptr %157, ptr %158, align 8, !dbg !3813, !tbaa !917
  %159 = icmp eq ptr %157, null, !dbg !3814
  br i1 %159, label %197, label %160, !dbg !3815

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 8, metadata !3803, metadata !DIExpression()), !dbg !3806
  %161 = icmp sgt i32 %155, -1, !dbg !3810
  br i1 %161, label %169, label %162, !dbg !3810

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3810
  store i32 %163, ptr %7, align 8, !dbg !3810
  %164 = icmp ult i32 %155, -7, !dbg !3810
  br i1 %164, label %165, label %169, !dbg !3810

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3810
  %167 = sext i32 %155 to i64, !dbg !3810
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3810
  br label %173, !dbg !3810

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3810
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3810
  store ptr %172, ptr %4, align 8, !dbg !3810
  br label %173, !dbg !3810

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3810
  %176 = load ptr, ptr %175, align 8, !dbg !3810
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3816
  store ptr %176, ptr %177, align 8, !dbg !3813, !tbaa !917
  %178 = icmp eq ptr %176, null, !dbg !3814
  br i1 %178, label %197, label %179, !dbg !3815

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 9, metadata !3803, metadata !DIExpression()), !dbg !3806
  %180 = icmp sgt i32 %174, -1, !dbg !3810
  br i1 %180, label %188, label %181, !dbg !3810

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3810
  store i32 %182, ptr %7, align 8, !dbg !3810
  %183 = icmp ult i32 %174, -7, !dbg !3810
  br i1 %183, label %184, label %188, !dbg !3810

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3810
  %186 = sext i32 %174 to i64, !dbg !3810
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3810
  br label %191, !dbg !3810

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3810
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3810
  store ptr %190, ptr %4, align 8, !dbg !3810
  br label %191, !dbg !3810

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3810
  %193 = load ptr, ptr %192, align 8, !dbg !3810
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3816
  store ptr %193, ptr %194, align 8, !dbg !3813, !tbaa !917
  %195 = icmp eq ptr %193, null, !dbg !3814
  %196 = select i1 %195, i64 9, i64 10, !dbg !3815
  br label %197, !dbg !3815

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3817
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3818
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3819
  ret void, !dbg !3819
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3820 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3824, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %1, metadata !3825, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %2, metadata !3826, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %3, metadata !3827, metadata !DIExpression()), !dbg !3829
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3830
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3828, metadata !DIExpression()), !dbg !3831
  call void @llvm.va_start(ptr nonnull %5), !dbg !3832
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3833, !tbaa.struct !1806
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3833
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3833
  call void @llvm.va_end(ptr nonnull %5), !dbg !3834
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3835
  ret void, !dbg !3835
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3836 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3837, !tbaa !917
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %1), !dbg !3837
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.17.106, i32 noundef 5) #38, !dbg !3838
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.107) #38, !dbg !3838
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.19.108, i32 noundef 5) #38, !dbg !3839
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.109, ptr noundef nonnull @.str.21.110) #38, !dbg !3839
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.22.111, i32 noundef 5) #38, !dbg !3840
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.112) #38, !dbg !3840
  ret void, !dbg !3841
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3842 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3847, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %1, metadata !3848, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %2, metadata !3849, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %1, metadata !3854, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %2, metadata !3855, metadata !DIExpression()), !dbg !3856
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3858
  call void @llvm.dbg.value(metadata ptr %4, metadata !3859, metadata !DIExpression()), !dbg !3864
  %5 = icmp eq ptr %4, null, !dbg !3866
  br i1 %5, label %6, label %7, !dbg !3868

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3869
  unreachable, !dbg !3869

7:                                                ; preds = %3
  ret ptr %4, !dbg !3870
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3852 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i64 %1, metadata !3854, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i64 %2, metadata !3855, metadata !DIExpression()), !dbg !3871
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3872
  call void @llvm.dbg.value(metadata ptr %4, metadata !3859, metadata !DIExpression()), !dbg !3873
  %5 = icmp eq ptr %4, null, !dbg !3875
  br i1 %5, label %6, label %7, !dbg !3876

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3877
  unreachable, !dbg !3877

7:                                                ; preds = %3
  ret ptr %4, !dbg !3878
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3879 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3883, metadata !DIExpression()), !dbg !3884
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3885
  call void @llvm.dbg.value(metadata ptr %2, metadata !3859, metadata !DIExpression()), !dbg !3886
  %3 = icmp eq ptr %2, null, !dbg !3888
  br i1 %3, label %4, label %5, !dbg !3889

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3890
  unreachable, !dbg !3890

5:                                                ; preds = %1
  ret ptr %2, !dbg !3891
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3892 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3893 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3897, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %0, metadata !3899, metadata !DIExpression()), !dbg !3903
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3905
  call void @llvm.dbg.value(metadata ptr %2, metadata !3859, metadata !DIExpression()), !dbg !3906
  %3 = icmp eq ptr %2, null, !dbg !3908
  br i1 %3, label %4, label %5, !dbg !3909

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3910
  unreachable, !dbg !3910

5:                                                ; preds = %1
  ret ptr %2, !dbg !3911
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3912 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3916, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i64 %0, metadata !3883, metadata !DIExpression()), !dbg !3918
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3920
  call void @llvm.dbg.value(metadata ptr %2, metadata !3859, metadata !DIExpression()), !dbg !3921
  %3 = icmp eq ptr %2, null, !dbg !3923
  br i1 %3, label %4, label %5, !dbg !3924

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3925
  unreachable, !dbg !3925

5:                                                ; preds = %1
  ret ptr %2, !dbg !3926
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3927 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3931, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 %1, metadata !3932, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %0, metadata !3934, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i64 %1, metadata !3938, metadata !DIExpression()), !dbg !3939
  %3 = icmp eq i64 %1, 0, !dbg !3941
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3941
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3942
  call void @llvm.dbg.value(metadata ptr %5, metadata !3859, metadata !DIExpression()), !dbg !3943
  %6 = icmp eq ptr %5, null, !dbg !3945
  br i1 %6, label %7, label %8, !dbg !3946

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3947
  unreachable, !dbg !3947

8:                                                ; preds = %2
  ret ptr %5, !dbg !3948
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3949 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3950 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3954, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %1, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %0, metadata !3957, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i64 %1, metadata !3960, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata ptr %0, metadata !3934, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %1, metadata !3938, metadata !DIExpression()), !dbg !3963
  %3 = icmp eq i64 %1, 0, !dbg !3965
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3965
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3966
  call void @llvm.dbg.value(metadata ptr %5, metadata !3859, metadata !DIExpression()), !dbg !3967
  %6 = icmp eq ptr %5, null, !dbg !3969
  br i1 %6, label %7, label %8, !dbg !3970

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3971
  unreachable, !dbg !3971

8:                                                ; preds = %2
  ret ptr %5, !dbg !3972
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3973 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3977, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i64 %1, metadata !3978, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i64 %2, metadata !3979, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata ptr %0, metadata !3981, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %1, metadata !3984, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %2, metadata !3985, metadata !DIExpression()), !dbg !3986
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3988
  call void @llvm.dbg.value(metadata ptr %4, metadata !3859, metadata !DIExpression()), !dbg !3989
  %5 = icmp eq ptr %4, null, !dbg !3991
  br i1 %5, label %6, label %7, !dbg !3992

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3993
  unreachable, !dbg !3993

7:                                                ; preds = %3
  ret ptr %4, !dbg !3994
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3995 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3999, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %1, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr null, metadata !3851, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64 %0, metadata !3854, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64 %1, metadata !3855, metadata !DIExpression()), !dbg !4002
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4004
  call void @llvm.dbg.value(metadata ptr %3, metadata !3859, metadata !DIExpression()), !dbg !4005
  %4 = icmp eq ptr %3, null, !dbg !4007
  br i1 %4, label %5, label %6, !dbg !4008

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4009
  unreachable, !dbg !4009

6:                                                ; preds = %2
  ret ptr %3, !dbg !4010
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4011 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4015, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i64 %1, metadata !4016, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr null, metadata !3977, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i64 %0, metadata !3978, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i64 %1, metadata !3979, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr null, metadata !3981, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %0, metadata !3984, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %1, metadata !3985, metadata !DIExpression()), !dbg !4020
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4022
  call void @llvm.dbg.value(metadata ptr %3, metadata !3859, metadata !DIExpression()), !dbg !4023
  %4 = icmp eq ptr %3, null, !dbg !4025
  br i1 %4, label %5, label %6, !dbg !4026

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4027
  unreachable, !dbg !4027

6:                                                ; preds = %2
  ret ptr %3, !dbg !4028
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4029 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4033, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata ptr %1, metadata !4034, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata ptr %0, metadata !842, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata ptr %1, metadata !843, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 1, metadata !844, metadata !DIExpression()), !dbg !4036
  %3 = load i64, ptr %1, align 8, !dbg !4038, !tbaa !3138
  call void @llvm.dbg.value(metadata i64 %3, metadata !845, metadata !DIExpression()), !dbg !4036
  %4 = icmp eq ptr %0, null, !dbg !4039
  br i1 %4, label %5, label %8, !dbg !4041

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4042
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4045
  br label %15, !dbg !4045

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4046
  %10 = add nuw i64 %9, 1, !dbg !4046
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4046
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4046
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4046
  call void @llvm.dbg.value(metadata i64 %13, metadata !845, metadata !DIExpression()), !dbg !4036
  br i1 %12, label %14, label %15, !dbg !4049

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4050
  unreachable, !dbg !4050

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4036
  call void @llvm.dbg.value(metadata i64 %16, metadata !845, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %16, metadata !3854, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 1, metadata !3855, metadata !DIExpression()), !dbg !4051
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4053
  call void @llvm.dbg.value(metadata ptr %17, metadata !3859, metadata !DIExpression()), !dbg !4054
  %18 = icmp eq ptr %17, null, !dbg !4056
  br i1 %18, label %19, label %20, !dbg !4057

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4058
  unreachable, !dbg !4058

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !842, metadata !DIExpression()), !dbg !4036
  store i64 %16, ptr %1, align 8, !dbg !4059, !tbaa !3138
  ret ptr %17, !dbg !4060
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !837 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !842, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata ptr %1, metadata !843, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 %2, metadata !844, metadata !DIExpression()), !dbg !4061
  %4 = load i64, ptr %1, align 8, !dbg !4062, !tbaa !3138
  call void @llvm.dbg.value(metadata i64 %4, metadata !845, metadata !DIExpression()), !dbg !4061
  %5 = icmp eq ptr %0, null, !dbg !4063
  br i1 %5, label %6, label %13, !dbg !4064

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4065
  br i1 %7, label %8, label %20, !dbg !4066

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %9, metadata !845, metadata !DIExpression()), !dbg !4061
  %10 = icmp ugt i64 %2, 128, !dbg !4069
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %12, metadata !845, metadata !DIExpression()), !dbg !4061
  br label %20, !dbg !4071

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4072
  %15 = add nuw i64 %14, 1, !dbg !4072
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4072
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4072
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4072
  call void @llvm.dbg.value(metadata i64 %18, metadata !845, metadata !DIExpression()), !dbg !4061
  br i1 %17, label %19, label %20, !dbg !4073

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4074
  unreachable, !dbg !4074

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4061
  call void @llvm.dbg.value(metadata i64 %21, metadata !845, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %21, metadata !3854, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %2, metadata !3855, metadata !DIExpression()), !dbg !4075
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4077
  call void @llvm.dbg.value(metadata ptr %22, metadata !3859, metadata !DIExpression()), !dbg !4078
  %23 = icmp eq ptr %22, null, !dbg !4080
  br i1 %23, label %24, label %25, !dbg !4081

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4082
  unreachable, !dbg !4082

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !842, metadata !DIExpression()), !dbg !4061
  store i64 %21, ptr %1, align 8, !dbg !4083, !tbaa !3138
  ret ptr %22, !dbg !4084
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !849 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !854, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata ptr %1, metadata !855, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %2, metadata !856, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %3, metadata !857, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %4, metadata !858, metadata !DIExpression()), !dbg !4085
  %6 = load i64, ptr %1, align 8, !dbg !4086, !tbaa !3138
  call void @llvm.dbg.value(metadata i64 %6, metadata !859, metadata !DIExpression()), !dbg !4085
  %7 = ashr i64 %6, 1, !dbg !4087
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4087
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4087
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4087
  call void @llvm.dbg.value(metadata i64 %10, metadata !860, metadata !DIExpression()), !dbg !4085
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4089
  call void @llvm.dbg.value(metadata i64 %11, metadata !860, metadata !DIExpression()), !dbg !4085
  %12 = icmp sgt i64 %3, -1, !dbg !4090
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4092
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4092
  call void @llvm.dbg.value(metadata i64 %15, metadata !860, metadata !DIExpression()), !dbg !4085
  %16 = icmp slt i64 %4, 0, !dbg !4093
  br i1 %16, label %17, label %30, !dbg !4093

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4093
  br i1 %18, label %19, label %24, !dbg !4093

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4093
  %21 = udiv i64 9223372036854775807, %20, !dbg !4093
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4093
  br i1 %23, label %46, label %43, !dbg !4093

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4093
  br i1 %25, label %43, label %26, !dbg !4093

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4093
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4093
  %29 = icmp ult i64 %28, %15, !dbg !4093
  br i1 %29, label %46, label %43, !dbg !4093

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4093
  br i1 %31, label %43, label %32, !dbg !4093

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4093
  br i1 %33, label %34, label %40, !dbg !4093

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4093
  br i1 %35, label %43, label %36, !dbg !4093

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4093
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4093
  %39 = icmp ult i64 %38, %4, !dbg !4093
  br i1 %39, label %46, label %43, !dbg !4093

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4093
  br i1 %42, label %46, label %43, !dbg !4093

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !861, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4085
  %44 = mul i64 %15, %4, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %44, metadata !861, metadata !DIExpression()), !dbg !4085
  %45 = icmp slt i64 %44, 128, !dbg !4093
  br i1 %45, label %46, label %52, !dbg !4093

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !862, metadata !DIExpression()), !dbg !4085
  %48 = sdiv i64 %47, %4, !dbg !4094
  call void @llvm.dbg.value(metadata i64 %48, metadata !860, metadata !DIExpression()), !dbg !4085
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4097
  call void @llvm.dbg.value(metadata i64 %51, metadata !861, metadata !DIExpression()), !dbg !4085
  br label %52, !dbg !4098

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4085
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4085
  call void @llvm.dbg.value(metadata i64 %54, metadata !861, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %53, metadata !860, metadata !DIExpression()), !dbg !4085
  %55 = icmp eq ptr %0, null, !dbg !4099
  br i1 %55, label %56, label %57, !dbg !4101

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4102, !tbaa !3138
  br label %57, !dbg !4103

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4104
  %59 = icmp slt i64 %58, %2, !dbg !4106
  br i1 %59, label %60, label %97, !dbg !4107

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4108
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4108
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4108
  call void @llvm.dbg.value(metadata i64 %63, metadata !860, metadata !DIExpression()), !dbg !4085
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4109
  br i1 %66, label %96, label %67, !dbg !4109

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4110

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4110
  br i1 %69, label %70, label %75, !dbg !4110

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4110
  %72 = udiv i64 9223372036854775807, %71, !dbg !4110
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4110
  br i1 %74, label %96, label %94, !dbg !4110

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4110
  br i1 %76, label %94, label %77, !dbg !4110

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4110
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4110
  %80 = icmp ult i64 %79, %63, !dbg !4110
  br i1 %80, label %96, label %94, !dbg !4110

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4110
  br i1 %82, label %94, label %83, !dbg !4110

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4110
  br i1 %84, label %85, label %91, !dbg !4110

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4110
  br i1 %86, label %94, label %87, !dbg !4110

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4110
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4110
  %90 = icmp ult i64 %89, %4, !dbg !4110
  br i1 %90, label %96, label %94, !dbg !4110

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4110
  br i1 %93, label %96, label %94, !dbg !4110

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !861, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4085
  %95 = mul i64 %63, %4, !dbg !4110
  call void @llvm.dbg.value(metadata i64 %95, metadata !861, metadata !DIExpression()), !dbg !4085
  br label %97, !dbg !4111

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #40, !dbg !4112
  unreachable, !dbg !4112

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4085
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4085
  call void @llvm.dbg.value(metadata i64 %99, metadata !861, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %98, metadata !860, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata ptr %0, metadata !3931, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %99, metadata !3932, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata ptr %0, metadata !3934, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %99, metadata !3938, metadata !DIExpression()), !dbg !4115
  %100 = icmp eq i64 %99, 0, !dbg !4117
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4117
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !4118
  call void @llvm.dbg.value(metadata ptr %102, metadata !3859, metadata !DIExpression()), !dbg !4119
  %103 = icmp eq ptr %102, null, !dbg !4121
  br i1 %103, label %104, label %105, !dbg !4122

104:                                              ; preds = %97
  tail call void @xalloc_die() #40, !dbg !4123
  unreachable, !dbg !4123

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !854, metadata !DIExpression()), !dbg !4085
  store i64 %98, ptr %1, align 8, !dbg !4124, !tbaa !3138
  ret ptr %102, !dbg !4125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4126 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4128, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i64 %0, metadata !4130, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 1, metadata !4133, metadata !DIExpression()), !dbg !4134
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4136
  call void @llvm.dbg.value(metadata ptr %2, metadata !3859, metadata !DIExpression()), !dbg !4137
  %3 = icmp eq ptr %2, null, !dbg !4139
  br i1 %3, label %4, label %5, !dbg !4140

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4141
  unreachable, !dbg !4141

5:                                                ; preds = %1
  ret ptr %2, !dbg !4142
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4143 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4131 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4130, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 %1, metadata !4133, metadata !DIExpression()), !dbg !4144
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4145
  call void @llvm.dbg.value(metadata ptr %3, metadata !3859, metadata !DIExpression()), !dbg !4146
  %4 = icmp eq ptr %3, null, !dbg !4148
  br i1 %4, label %5, label %6, !dbg !4149

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4150
  unreachable, !dbg !4150

6:                                                ; preds = %2
  ret ptr %3, !dbg !4151
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4152 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4154, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %0, metadata !4156, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i64 1, metadata !4159, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata i64 %0, metadata !4162, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 1, metadata !4165, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %0, metadata !4162, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 1, metadata !4165, metadata !DIExpression()), !dbg !4166
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4168
  call void @llvm.dbg.value(metadata ptr %2, metadata !3859, metadata !DIExpression()), !dbg !4169
  %3 = icmp eq ptr %2, null, !dbg !4171
  br i1 %3, label %4, label %5, !dbg !4172

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4173
  unreachable, !dbg !4173

5:                                                ; preds = %1
  ret ptr %2, !dbg !4174
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4157 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4156, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i64 %1, metadata !4159, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i64 %0, metadata !4162, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %1, metadata !4165, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %0, metadata !4162, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %1, metadata !4165, metadata !DIExpression()), !dbg !4176
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4178
  call void @llvm.dbg.value(metadata ptr %3, metadata !3859, metadata !DIExpression()), !dbg !4179
  %4 = icmp eq ptr %3, null, !dbg !4181
  br i1 %4, label %5, label %6, !dbg !4182

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4183
  unreachable, !dbg !4183

6:                                                ; preds = %2
  ret ptr %3, !dbg !4184
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4185 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4189, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i64 %1, metadata !4190, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i64 %1, metadata !3883, metadata !DIExpression()), !dbg !4192
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4194
  call void @llvm.dbg.value(metadata ptr %3, metadata !3859, metadata !DIExpression()), !dbg !4195
  %4 = icmp eq ptr %3, null, !dbg !4197
  br i1 %4, label %5, label %6, !dbg !4198

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4199
  unreachable, !dbg !4199

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4200, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata ptr %0, metadata !4203, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4205
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4207
  ret ptr %3, !dbg !4208
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4209 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4213, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %1, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %1, metadata !3897, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3899, metadata !DIExpression()), !dbg !4218
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4220
  call void @llvm.dbg.value(metadata ptr %3, metadata !3859, metadata !DIExpression()), !dbg !4221
  %4 = icmp eq ptr %3, null, !dbg !4223
  br i1 %4, label %5, label %6, !dbg !4224

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4225
  unreachable, !dbg !4225

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4200, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata ptr %0, metadata !4203, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4226
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4228
  ret ptr %3, !dbg !4229
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4230 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4234, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %1, metadata !4235, metadata !DIExpression()), !dbg !4237
  %3 = add nsw i64 %1, 1, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %3, metadata !3897, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %3, metadata !3899, metadata !DIExpression()), !dbg !4241
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4243
  call void @llvm.dbg.value(metadata ptr %4, metadata !3859, metadata !DIExpression()), !dbg !4244
  %5 = icmp eq ptr %4, null, !dbg !4246
  br i1 %5, label %6, label %7, !dbg !4247

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4248
  unreachable, !dbg !4248

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4236, metadata !DIExpression()), !dbg !4237
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4249
  store i8 0, ptr %8, align 1, !dbg !4250, !tbaa !996
  call void @llvm.dbg.value(metadata ptr %4, metadata !4200, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %0, metadata !4203, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4251
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4253
  ret ptr %4, !dbg !4254
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4257, metadata !DIExpression()), !dbg !4258
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4259
  %3 = add i64 %2, 1, !dbg !4260
  call void @llvm.dbg.value(metadata ptr %0, metadata !4189, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i64 %3, metadata !4190, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i64 %3, metadata !3883, metadata !DIExpression()), !dbg !4263
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4265
  call void @llvm.dbg.value(metadata ptr %4, metadata !3859, metadata !DIExpression()), !dbg !4266
  %5 = icmp eq ptr %4, null, !dbg !4268
  br i1 %5, label %6, label %7, !dbg !4269

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4270
  unreachable, !dbg !4270

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4200, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata ptr %0, metadata !4203, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %3, metadata !4204, metadata !DIExpression()), !dbg !4271
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4273
  ret ptr %4, !dbg !4274
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4275 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4280, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %1, metadata !4277, metadata !DIExpression()), !dbg !4281
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.123, ptr noundef nonnull @.str.2.124, i32 noundef 5) #38, !dbg !4280
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef %2) #38, !dbg !4280
  %3 = icmp eq i32 %1, 0, !dbg !4280
  tail call void @llvm.assume(i1 %3), !dbg !4280
  tail call void @abort() #40, !dbg !4282
  unreachable, !dbg !4282
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4283 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4287, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 %1, metadata !4288, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %2, metadata !4289, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %3, metadata !4290, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata ptr %4, metadata !4291, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata ptr %5, metadata !4292, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 %6, metadata !4293, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 %7, metadata !4294, metadata !DIExpression()), !dbg !4304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #38, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %9, metadata !4295, metadata !DIExpression(DW_OP_deref)), !dbg !4304
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #38, !dbg !4306
  call void @llvm.dbg.value(metadata i32 %10, metadata !4297, metadata !DIExpression()), !dbg !4304
  %11 = icmp eq i32 %10, 4, !dbg !4307
  br i1 %11, label %40, label %12, !dbg !4309

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4310, !tbaa !3138
  call void @llvm.dbg.value(metadata i64 %13, metadata !4295, metadata !DIExpression()), !dbg !4304
  %14 = icmp ult i64 %13, %2, !dbg !4313
  br i1 %14, label %15, label %20, !dbg !4314

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !4296, metadata !DIExpression()), !dbg !4304
  %16 = and i32 %7, 4, !dbg !4315
  %17 = icmp eq i32 %16, 0, !dbg !4317
  %18 = select i1 %17, i32 75, i32 34, !dbg !4317
  call void @llvm.dbg.value(metadata i32 %18, metadata !4299, metadata !DIExpression()), !dbg !4304
  %19 = icmp eq i32 %10, 0, !dbg !4318
  call void @llvm.dbg.value(metadata i32 undef, metadata !4297, metadata !DIExpression()), !dbg !4304
  br i1 %19, label %33, label %27, !dbg !4320

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4321
  br i1 %21, label %22, label %27, !dbg !4323

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !4296, metadata !DIExpression()), !dbg !4304
  %23 = and i32 %7, 8, !dbg !4324
  %24 = icmp eq i32 %23, 0, !dbg !4326
  %25 = select i1 %24, i32 75, i32 34, !dbg !4326
  call void @llvm.dbg.value(metadata i32 %25, metadata !4299, metadata !DIExpression()), !dbg !4304
  %26 = icmp eq i32 %10, 0, !dbg !4327
  call void @llvm.dbg.value(metadata i32 undef, metadata !4297, metadata !DIExpression()), !dbg !4304
  br i1 %26, label %33, label %27, !dbg !4329

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !4296, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 %10, metadata !4297, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i32 %28, metadata !4299, metadata !DIExpression()), !dbg !4304
  %30 = icmp eq i32 %10, 1, !dbg !4330
  %31 = select i1 %30, i32 %28, i32 0, !dbg !4331
  call void @llvm.dbg.value(metadata i32 %31, metadata !4300, metadata !DIExpression()), !dbg !4304
  %32 = icmp eq i32 %10, 0, !dbg !4332
  br i1 %32, label %45, label %33, !dbg !4333

33:                                               ; preds = %22, %15, %27
  %34 = phi i32 [ %31, %27 ], [ %18, %15 ], [ %25, %22 ]
  %35 = phi i1 [ %30, %27 ], [ true, %15 ], [ true, %22 ]
  %36 = phi i64 [ %29, %27 ], [ %2, %15 ], [ %3, %22 ]
  %37 = and i32 %7, 2
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %38, %35, !dbg !4304
  call void @llvm.dbg.value(metadata i64 poison, metadata !4295, metadata !DIExpression()), !dbg !4304
  br i1 %39, label %45, label %40, !dbg !4334

40:                                               ; preds = %8, %33
  %41 = phi i32 [ %34, %33 ], [ 0, %8 ]
  %42 = icmp eq i32 %6, 0, !dbg !4335
  %43 = select i1 %42, i32 1, i32 %6, !dbg !4335
  %44 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !4335
  call void (i32, i32, ptr, ...) @error(i32 noundef %43, i32 noundef %41, ptr noundef nonnull @.str.128, ptr noundef nonnull %5, ptr noundef %44) #38, !dbg !4335
  unreachable, !dbg !4335

45:                                               ; preds = %33, %27
  %46 = phi i32 [ %34, %33 ], [ %31, %27 ]
  %47 = phi i64 [ %36, %33 ], [ %29, %27 ]
  %48 = tail call ptr @__errno_location() #41, !dbg !4336
  store i32 %46, ptr %48, align 4, !dbg !4337, !tbaa !987
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #38, !dbg !4338
  ret i64 %47, !dbg !4339
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4340 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4344, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i64 %1, metadata !4345, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i64 %2, metadata !4346, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata ptr %3, metadata !4347, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata ptr %4, metadata !4348, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 %5, metadata !4349, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata ptr %0, metadata !4287, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 10, metadata !4288, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i64 %1, metadata !4289, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i64 %2, metadata !4290, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata ptr %3, metadata !4291, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata ptr %4, metadata !4292, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 %5, metadata !4293, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 0, metadata !4294, metadata !DIExpression()), !dbg !4351
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #38, !dbg !4353
  call void @llvm.dbg.value(metadata ptr %7, metadata !4295, metadata !DIExpression(DW_OP_deref)), !dbg !4351
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #38, !dbg !4354
  call void @llvm.dbg.value(metadata i32 %8, metadata !4297, metadata !DIExpression()), !dbg !4351
  %9 = icmp eq i32 %8, 4, !dbg !4355
  br i1 %9, label %24, label %10, !dbg !4356

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !4357, !tbaa !3138
  call void @llvm.dbg.value(metadata i64 %11, metadata !4295, metadata !DIExpression()), !dbg !4351
  %12 = icmp ult i64 %11, %1, !dbg !4358
  br i1 %12, label %13, label %15, !dbg !4359

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !4296, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 75, metadata !4299, metadata !DIExpression()), !dbg !4351
  %14 = icmp eq i32 %8, 0, !dbg !4360
  call void @llvm.dbg.value(metadata i32 undef, metadata !4297, metadata !DIExpression()), !dbg !4351
  br i1 %14, label %24, label %19, !dbg !4361

15:                                               ; preds = %10
  %16 = icmp ugt i64 %11, %2, !dbg !4362
  br i1 %16, label %17, label %19, !dbg !4363

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !4296, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 75, metadata !4299, metadata !DIExpression()), !dbg !4351
  %18 = icmp eq i32 %8, 0, !dbg !4364
  call void @llvm.dbg.value(metadata i32 undef, metadata !4297, metadata !DIExpression()), !dbg !4351
  br i1 %18, label %24, label %19, !dbg !4365

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !4296, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 %8, metadata !4297, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 75, metadata !4299, metadata !DIExpression()), !dbg !4351
  %21 = icmp eq i32 %8, 1, !dbg !4366
  %22 = select i1 %21, i32 75, i32 0, !dbg !4367
  call void @llvm.dbg.value(metadata i32 %22, metadata !4300, metadata !DIExpression()), !dbg !4351
  %23 = icmp eq i32 %8, 0, !dbg !4368
  br i1 %23, label %29, label %24, !dbg !4369

24:                                               ; preds = %13, %17, %19, %6
  %25 = phi i32 [ 0, %6 ], [ %22, %19 ], [ 75, %13 ], [ 75, %17 ]
  %26 = icmp eq i32 %5, 0, !dbg !4370
  %27 = select i1 %26, i32 1, i32 %5, !dbg !4370
  %28 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !4370
  call void (i32, i32, ptr, ...) @error(i32 noundef %27, i32 noundef %25, ptr noundef nonnull @.str.128, ptr noundef nonnull %4, ptr noundef %28) #38, !dbg !4370
  unreachable, !dbg !4370

29:                                               ; preds = %19
  %30 = tail call ptr @__errno_location() #41, !dbg !4371
  store i32 %22, ptr %30, align 4, !dbg !4372, !tbaa !987
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #38, !dbg !4373
  ret i64 %20, !dbg !4374
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4375 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4381, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata ptr %1, metadata !4382, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i32 %2, metadata !4383, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata ptr %3, metadata !4384, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata ptr %4, metadata !4385, metadata !DIExpression()), !dbg !4399
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #38, !dbg !4400
  %7 = icmp eq ptr %1, null, !dbg !4401
  call void @llvm.dbg.value(metadata ptr %20, metadata !4387, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata ptr %0, metadata !4388, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i8 poison, metadata !4391, metadata !DIExpression()), !dbg !4402
  %8 = tail call ptr @__ctype_b_loc() #41, !dbg !4399
  %9 = load ptr, ptr %8, align 8, !tbaa !917
  br label %10, !dbg !4403

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4402
  %12 = load i8, ptr %11, align 1, !dbg !4402, !tbaa !996
  call void @llvm.dbg.value(metadata i8 %12, metadata !4391, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata ptr %11, metadata !4388, metadata !DIExpression()), !dbg !4402
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4404
  %15 = load i16, ptr %14, align 2, !dbg !4404, !tbaa !1028
  %16 = and i16 %15, 8192, !dbg !4404
  %17 = icmp eq i16 %16, 0, !dbg !4403
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4405
  call void @llvm.dbg.value(metadata ptr %18, metadata !4388, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i8 poison, metadata !4391, metadata !DIExpression()), !dbg !4402
  br i1 %17, label %19, label %10, !dbg !4403, !llvm.loop !4406

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4401
  %21 = icmp eq i8 %12, 45, !dbg !4408
  br i1 %21, label %22, label %23, !dbg !4410

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4411, !tbaa !917
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #41, !dbg !4413
  store i32 0, ptr %24, align 4, !dbg !4414, !tbaa !987
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef %20, i32 noundef %2) #38, !dbg !4415
  call void @llvm.dbg.value(metadata i64 %25, metadata !4392, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i32 0, metadata !4393, metadata !DIExpression()), !dbg !4399
  %26 = load ptr, ptr %20, align 8, !dbg !4416, !tbaa !917
  %27 = icmp eq ptr %26, %0, !dbg !4418
  br i1 %27, label %28, label %37, !dbg !4419

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4420
  br i1 %29, label %386, label %30, !dbg !4423

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4424, !tbaa !996
  %32 = icmp eq i8 %31, 0, !dbg !4424
  br i1 %32, label %386, label %33, !dbg !4425

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32, !dbg !4424
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #39, !dbg !4426
  %36 = icmp eq ptr %35, null, !dbg !4426
  br i1 %36, label %386, label %44, !dbg !4427

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4428, !tbaa !987
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4430

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !4393, metadata !DIExpression()), !dbg !4399
  br label %40, !dbg !4431

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4399
  call void @llvm.dbg.value(metadata i32 %41, metadata !4393, metadata !DIExpression()), !dbg !4399
  %42 = icmp eq ptr %4, null, !dbg !4433
  br i1 %42, label %43, label %44, !dbg !4435

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !4392, metadata !DIExpression()), !dbg !4399
  store i64 %25, ptr %3, align 8, !dbg !4436, !tbaa !3138
  br label %386, !dbg !4438

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4439, !tbaa !996
  %48 = icmp eq i8 %47, 0, !dbg !4440
  br i1 %48, label %383, label %49, !dbg !4441

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32, !dbg !4439
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #39, !dbg !4442
  %52 = icmp eq ptr %51, null, !dbg !4442
  br i1 %52, label %53, label %55, !dbg !4444

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 %25, metadata !4392, metadata !DIExpression()), !dbg !4399
  store i64 %46, ptr %3, align 8, !dbg !4445, !tbaa !3138
  %54 = or i32 %45, 2, !dbg !4447
  br label %386, !dbg !4448

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 1024, metadata !4394, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i32 1, metadata !4397, metadata !DIExpression()), !dbg !4449
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
  ], !dbg !4450

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #39, !dbg !4451
  %58 = icmp eq ptr %57, null, !dbg !4451
  br i1 %58, label %68, label %59, !dbg !4454

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4455
  %61 = load i8, ptr %60, align 1, !dbg !4455, !tbaa !996
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4456

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4457
  %64 = load i8, ptr %63, align 1, !dbg !4457, !tbaa !996
  %65 = icmp eq i8 %64, 66, !dbg !4460
  %66 = select i1 %65, i64 3, i64 1, !dbg !4461
  br label %68, !dbg !4461

67:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !4394, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i32 2, metadata !4397, metadata !DIExpression()), !dbg !4449
  br label %68, !dbg !4462

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ]
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4397, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i32 poison, metadata !4394, metadata !DIExpression()), !dbg !4449
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
  ], !dbg !4463

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4482
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4484
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4484
  %74 = mul i64 %46, %69, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %74, metadata !4481, metadata !DIExpression()), !dbg !4482
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4482
  call void @llvm.dbg.value(metadata i1 %73, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i1 %73, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4482
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4484
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4484
  %78 = mul i64 %75, %69, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %78, metadata !4481, metadata !DIExpression()), !dbg !4482
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4482
  %80 = or i1 %73, %77, !dbg !4486
  call void @llvm.dbg.value(metadata i1 %80, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i1 %80, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4482
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4484
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4484
  %83 = mul i64 %79, %69, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %83, metadata !4481, metadata !DIExpression()), !dbg !4482
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4482
  %85 = or i1 %80, %82, !dbg !4486
  call void @llvm.dbg.value(metadata i1 %85, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i1 %85, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4482
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4484
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4484
  %88 = mul i64 %84, %69, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %88, metadata !4481, metadata !DIExpression()), !dbg !4482
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4482
  %90 = or i1 %85, %87, !dbg !4486
  call void @llvm.dbg.value(metadata i1 %90, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i1 %90, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4482
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4484
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4484
  %93 = mul i64 %89, %69, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %93, metadata !4481, metadata !DIExpression()), !dbg !4482
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4482
  %95 = or i1 %90, %92, !dbg !4486
  call void @llvm.dbg.value(metadata i1 %95, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i1 %95, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4482
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4484
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4484
  %98 = mul i64 %94, %69, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %98, metadata !4481, metadata !DIExpression()), !dbg !4482
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4482
  %100 = or i1 %95, %97, !dbg !4486
  call void @llvm.dbg.value(metadata i1 %100, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i1 %100, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4482
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4484
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4484
  %103 = mul i64 %99, %69, !dbg !4484
  call void @llvm.dbg.value(metadata i64 %103, metadata !4481, metadata !DIExpression()), !dbg !4482
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4482
  %105 = or i1 %100, %102, !dbg !4486
  %106 = zext i1 %105 to i32, !dbg !4486
  call void @llvm.dbg.value(metadata i32 %106, metadata !4464, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4472
  br label %372, !dbg !4487

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 8, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4490
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4492
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4492
  %110 = mul i64 %46, %69, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %110, metadata !4481, metadata !DIExpression()), !dbg !4490
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4490
  call void @llvm.dbg.value(metadata i1 %109, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i1 %109, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4490
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4492
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4492
  %114 = mul i64 %111, %69, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %114, metadata !4481, metadata !DIExpression()), !dbg !4490
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4490
  %116 = or i1 %109, %113, !dbg !4493
  call void @llvm.dbg.value(metadata i1 %116, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i1 %116, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4490
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4492
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4492
  %119 = mul i64 %115, %69, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %119, metadata !4481, metadata !DIExpression()), !dbg !4490
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4490
  %121 = or i1 %116, %118, !dbg !4493
  call void @llvm.dbg.value(metadata i1 %121, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i1 %121, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4490
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4492
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4492
  %124 = mul i64 %120, %69, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %124, metadata !4481, metadata !DIExpression()), !dbg !4490
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4490
  %126 = or i1 %121, %123, !dbg !4493
  call void @llvm.dbg.value(metadata i1 %126, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i1 %126, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4490
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4492
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4492
  %129 = mul i64 %125, %69, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %129, metadata !4481, metadata !DIExpression()), !dbg !4490
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4490
  %131 = or i1 %126, %128, !dbg !4493
  call void @llvm.dbg.value(metadata i1 %131, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i1 %131, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4490
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4492
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4492
  %134 = mul i64 %130, %69, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %134, metadata !4481, metadata !DIExpression()), !dbg !4490
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4490
  %136 = or i1 %131, %133, !dbg !4493
  call void @llvm.dbg.value(metadata i1 %136, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i1 %136, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4490
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4492
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4492
  %139 = mul i64 %135, %69, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %139, metadata !4481, metadata !DIExpression()), !dbg !4490
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4490
  %141 = or i1 %136, %138, !dbg !4493
  call void @llvm.dbg.value(metadata i1 %141, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i1 %141, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4488
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4490
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4492
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4492
  %144 = mul i64 %140, %69, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %144, metadata !4481, metadata !DIExpression()), !dbg !4490
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4490
  %146 = or i1 %141, %143, !dbg !4493
  %147 = zext i1 %146 to i32, !dbg !4493
  call void @llvm.dbg.value(metadata i32 %147, metadata !4464, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  br label %372, !dbg !4487

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 9, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 8, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4496
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4498
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4498
  %151 = mul i64 %46, %69, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %151, metadata !4481, metadata !DIExpression()), !dbg !4496
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4496
  call void @llvm.dbg.value(metadata i1 %150, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 8, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i1 %150, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 8, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4496
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4498
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4498
  %155 = mul i64 %152, %69, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %155, metadata !4481, metadata !DIExpression()), !dbg !4496
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4496
  %157 = or i1 %150, %154, !dbg !4499
  call void @llvm.dbg.value(metadata i1 %157, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i1 %157, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4496
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4498
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4498
  %160 = mul i64 %156, %69, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %160, metadata !4481, metadata !DIExpression()), !dbg !4496
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4496
  %162 = or i1 %157, %159, !dbg !4499
  call void @llvm.dbg.value(metadata i1 %162, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i1 %162, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4496
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4498
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4498
  %165 = mul i64 %161, %69, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %165, metadata !4481, metadata !DIExpression()), !dbg !4496
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4496
  %167 = or i1 %162, %164, !dbg !4499
  call void @llvm.dbg.value(metadata i1 %167, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i1 %167, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4496
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4498
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4498
  %170 = mul i64 %166, %69, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %170, metadata !4481, metadata !DIExpression()), !dbg !4496
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4496
  %172 = or i1 %167, %169, !dbg !4499
  call void @llvm.dbg.value(metadata i1 %172, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i1 %172, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4496
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4498
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4498
  %175 = mul i64 %171, %69, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %175, metadata !4481, metadata !DIExpression()), !dbg !4496
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4496
  %177 = or i1 %172, %174, !dbg !4499
  call void @llvm.dbg.value(metadata i1 %177, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i1 %177, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4496
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4498
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4498
  %180 = mul i64 %176, %69, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %180, metadata !4481, metadata !DIExpression()), !dbg !4496
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4496
  %182 = or i1 %177, %179, !dbg !4499
  call void @llvm.dbg.value(metadata i1 %182, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i1 %182, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4496
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4498
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4498
  %185 = mul i64 %181, %69, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %185, metadata !4481, metadata !DIExpression()), !dbg !4496
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4496
  %187 = or i1 %182, %184, !dbg !4499
  call void @llvm.dbg.value(metadata i1 %187, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i1 %187, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4496
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4498
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4498
  %190 = mul i64 %186, %69, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %190, metadata !4481, metadata !DIExpression()), !dbg !4496
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4496
  %192 = or i1 %187, %189, !dbg !4499
  %193 = zext i1 %192 to i32, !dbg !4499
  call void @llvm.dbg.value(metadata i32 %193, metadata !4464, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4494
  br label %372, !dbg !4487

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 10, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 9, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4504
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4504
  %197 = mul i64 %46, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %197, metadata !4481, metadata !DIExpression()), !dbg !4502
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4502
  call void @llvm.dbg.value(metadata i1 %196, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 9, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i1 %196, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 9, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 8, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4504
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4504
  %201 = mul i64 %198, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %201, metadata !4481, metadata !DIExpression()), !dbg !4502
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4502
  %203 = or i1 %196, %200, !dbg !4505
  call void @llvm.dbg.value(metadata i1 %203, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 8, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i1 %203, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 8, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4504
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4504
  %206 = mul i64 %202, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %206, metadata !4481, metadata !DIExpression()), !dbg !4502
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4502
  %208 = or i1 %203, %205, !dbg !4505
  call void @llvm.dbg.value(metadata i1 %208, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i1 %208, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 7, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4504
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4504
  %211 = mul i64 %207, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %211, metadata !4481, metadata !DIExpression()), !dbg !4502
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4502
  %213 = or i1 %208, %210, !dbg !4505
  call void @llvm.dbg.value(metadata i1 %213, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i1 %213, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4504
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4504
  %216 = mul i64 %212, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %216, metadata !4481, metadata !DIExpression()), !dbg !4502
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4502
  %218 = or i1 %213, %215, !dbg !4505
  call void @llvm.dbg.value(metadata i1 %218, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i1 %218, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4504
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4504
  %221 = mul i64 %217, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %221, metadata !4481, metadata !DIExpression()), !dbg !4502
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4502
  %223 = or i1 %218, %220, !dbg !4505
  call void @llvm.dbg.value(metadata i1 %223, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i1 %223, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4504
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4504
  %226 = mul i64 %222, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %226, metadata !4481, metadata !DIExpression()), !dbg !4502
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4502
  %228 = or i1 %223, %225, !dbg !4505
  call void @llvm.dbg.value(metadata i1 %228, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i1 %228, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4504
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4504
  %231 = mul i64 %227, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %231, metadata !4481, metadata !DIExpression()), !dbg !4502
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4502
  %233 = or i1 %228, %230, !dbg !4505
  call void @llvm.dbg.value(metadata i1 %233, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i1 %233, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4504
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4504
  %236 = mul i64 %232, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %236, metadata !4481, metadata !DIExpression()), !dbg !4502
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4502
  %238 = or i1 %233, %235, !dbg !4505
  call void @llvm.dbg.value(metadata i1 %238, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i1 %238, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4502
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4504
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4504
  %241 = mul i64 %237, %69, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %241, metadata !4481, metadata !DIExpression()), !dbg !4502
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4502
  %243 = or i1 %238, %240, !dbg !4505
  %244 = zext i1 %243 to i32, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %244, metadata !4464, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4500
  br label %372, !dbg !4487

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4508
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4510
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4510
  %248 = mul i64 %46, %69, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %248, metadata !4481, metadata !DIExpression()), !dbg !4508
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4508
  call void @llvm.dbg.value(metadata i1 %247, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i1 %247, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4508
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4510
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4510
  %252 = mul i64 %249, %69, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %252, metadata !4481, metadata !DIExpression()), !dbg !4508
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4508
  %254 = or i1 %247, %251, !dbg !4511
  call void @llvm.dbg.value(metadata i1 %254, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i1 %254, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4508
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4510
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4510
  %257 = mul i64 %253, %69, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %257, metadata !4481, metadata !DIExpression()), !dbg !4508
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4508
  %259 = or i1 %254, %256, !dbg !4511
  call void @llvm.dbg.value(metadata i1 %259, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i1 %259, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4508
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4510
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4510
  %262 = mul i64 %258, %69, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %262, metadata !4481, metadata !DIExpression()), !dbg !4508
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4508
  %264 = or i1 %259, %261, !dbg !4511
  call void @llvm.dbg.value(metadata i1 %264, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i1 %264, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4506
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4508
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4510
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4510
  %267 = mul i64 %263, %69, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %267, metadata !4481, metadata !DIExpression()), !dbg !4508
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4508
  %269 = or i1 %264, %266, !dbg !4511
  %270 = zext i1 %269 to i32, !dbg !4511
  call void @llvm.dbg.value(metadata i32 %270, metadata !4464, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4506
  br label %372, !dbg !4487

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 6, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4514
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4516
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4516
  %274 = mul i64 %46, %69, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %274, metadata !4481, metadata !DIExpression()), !dbg !4514
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4514
  call void @llvm.dbg.value(metadata i1 %273, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i1 %273, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 5, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4514
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4516
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4516
  %278 = mul i64 %275, %69, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %278, metadata !4481, metadata !DIExpression()), !dbg !4514
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4514
  %280 = or i1 %273, %277, !dbg !4517
  call void @llvm.dbg.value(metadata i1 %280, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i1 %280, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4514
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4516
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4516
  %283 = mul i64 %279, %69, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %283, metadata !4481, metadata !DIExpression()), !dbg !4514
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4514
  %285 = or i1 %280, %282, !dbg !4517
  call void @llvm.dbg.value(metadata i1 %285, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i1 %285, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4514
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4516
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4516
  %288 = mul i64 %284, %69, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %288, metadata !4481, metadata !DIExpression()), !dbg !4514
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4514
  %290 = or i1 %285, %287, !dbg !4517
  call void @llvm.dbg.value(metadata i1 %290, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i1 %290, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4514
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4516
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4516
  %293 = mul i64 %289, %69, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %293, metadata !4481, metadata !DIExpression()), !dbg !4514
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4514
  %295 = or i1 %290, %292, !dbg !4517
  call void @llvm.dbg.value(metadata i1 %295, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i1 %295, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4512
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4514
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4516
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4516
  %298 = mul i64 %294, %69, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %298, metadata !4481, metadata !DIExpression()), !dbg !4514
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4514
  %300 = or i1 %295, %297, !dbg !4517
  %301 = zext i1 %300 to i32, !dbg !4517
  call void @llvm.dbg.value(metadata i32 %301, metadata !4464, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4512
  br label %372, !dbg !4487

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32 512, metadata !4480, metadata !DIExpression()), !dbg !4518
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4520
  %304 = shl i64 %46, 9, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %304, metadata !4481, metadata !DIExpression()), !dbg !4518
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4518
  %306 = zext i1 %303 to i32, !dbg !4518
  call void @llvm.dbg.value(metadata i32 %306, metadata !4398, metadata !DIExpression()), !dbg !4449
  br label %372, !dbg !4521

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 1024, metadata !4480, metadata !DIExpression()), !dbg !4522
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4524
  %309 = shl i64 %46, 10, !dbg !4524
  call void @llvm.dbg.value(metadata i64 %309, metadata !4481, metadata !DIExpression()), !dbg !4522
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4522
  %311 = zext i1 %308 to i32, !dbg !4522
  call void @llvm.dbg.value(metadata i32 %311, metadata !4398, metadata !DIExpression()), !dbg !4449
  br label %372, !dbg !4525

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4469, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 poison, metadata !4470, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4528
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4530
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4530
  %315 = mul i64 %46, %69, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %315, metadata !4481, metadata !DIExpression()), !dbg !4528
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4528
  call void @llvm.dbg.value(metadata i1 %314, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i1 %314, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4528
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4530
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4530
  %319 = mul i64 %316, %69, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %319, metadata !4481, metadata !DIExpression()), !dbg !4528
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4528
  %321 = or i1 %314, %318, !dbg !4531
  call void @llvm.dbg.value(metadata i1 %321, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i1 %321, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4528
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4530
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4530
  %324 = mul i64 %320, %69, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %324, metadata !4481, metadata !DIExpression()), !dbg !4528
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4528
  %326 = or i1 %321, %323, !dbg !4531
  %327 = zext i1 %326 to i32, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %327, metadata !4464, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4526
  br label %372, !dbg !4487

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4469, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 poison, metadata !4470, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4532
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4534
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4534
  %331 = mul i64 %46, %69, !dbg !4534
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4536
  %333 = zext i1 %330 to i32, !dbg !4536
  call void @llvm.dbg.value(metadata i32 poison, metadata !4464, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32 poison, metadata !4471, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata ptr poison, metadata !4475, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i64 poison, metadata !4481, metadata !DIExpression()), !dbg !4536
  br label %372, !dbg !4487

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4469, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 poison, metadata !4470, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4539
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4541
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4541
  %337 = mul i64 %46, %69, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %337, metadata !4481, metadata !DIExpression()), !dbg !4539
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4539
  call void @llvm.dbg.value(metadata i1 %336, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i1 %336, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4539
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4541
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4541
  %341 = mul i64 %338, %69, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %341, metadata !4481, metadata !DIExpression()), !dbg !4539
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4539
  %343 = or i1 %336, %340, !dbg !4542
  %344 = zext i1 %343 to i32, !dbg !4542
  call void @llvm.dbg.value(metadata i32 %344, metadata !4464, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4537
  br label %372, !dbg !4487

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4469, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 poison, metadata !4470, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 4, metadata !4471, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4545
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4547
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4547
  %348 = mul i64 %46, %69, !dbg !4547
  call void @llvm.dbg.value(metadata i64 %348, metadata !4481, metadata !DIExpression()), !dbg !4545
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4545
  call void @llvm.dbg.value(metadata i1 %347, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i1 %347, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i32 3, metadata !4471, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4545
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4547
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4547
  %352 = mul i64 %349, %69, !dbg !4547
  call void @llvm.dbg.value(metadata i64 %352, metadata !4481, metadata !DIExpression()), !dbg !4545
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4545
  %354 = or i1 %347, %351, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %354, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i1 %354, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4545
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4547
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4547
  %357 = mul i64 %353, %69, !dbg !4547
  call void @llvm.dbg.value(metadata i64 %357, metadata !4481, metadata !DIExpression()), !dbg !4545
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4545
  %359 = or i1 %354, %356, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %359, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i1 %359, metadata !4464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4543
  call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i32 poison, metadata !4480, metadata !DIExpression()), !dbg !4545
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4547
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4547
  %362 = mul i64 %358, %69, !dbg !4547
  call void @llvm.dbg.value(metadata i64 %362, metadata !4481, metadata !DIExpression()), !dbg !4545
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4545
  %364 = or i1 %359, %361, !dbg !4548
  %365 = zext i1 %364 to i32, !dbg !4548
  call void @llvm.dbg.value(metadata i32 %365, metadata !4464, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4543
  br label %372, !dbg !4487

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4475, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 2, metadata !4480, metadata !DIExpression()), !dbg !4549
  %367 = shl i64 %46, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 %367, metadata !4481, metadata !DIExpression()), !dbg !4549
  %368 = icmp sgt i64 %46, -1, !dbg !4549
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4549
  %370 = lshr i64 %46, 63, !dbg !4549
  %371 = trunc i64 %370 to i32, !dbg !4549
  call void @llvm.dbg.value(metadata i32 %371, metadata !4398, metadata !DIExpression()), !dbg !4449
  br label %372, !dbg !4552

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4399
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4553
  call void @llvm.dbg.value(metadata i32 %374, metadata !4398, metadata !DIExpression()), !dbg !4449
  %375 = or i32 %374, %45, !dbg !4487
  call void @llvm.dbg.value(metadata i32 %375, metadata !4393, metadata !DIExpression()), !dbg !4399
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4554
  store ptr %376, ptr %20, align 8, !dbg !4554, !tbaa !917
  %377 = load i8, ptr %376, align 1, !dbg !4555, !tbaa !996
  %378 = icmp eq i8 %377, 0, !dbg !4555
  %379 = or i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4557
  call void @llvm.dbg.value(metadata i32 %380, metadata !4393, metadata !DIExpression()), !dbg !4399
  br label %383

381:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i64 %25, metadata !4392, metadata !DIExpression()), !dbg !4399
  store i64 %46, ptr %3, align 8, !dbg !4558, !tbaa !3138
  %382 = or i32 %45, 2, !dbg !4559
  call void @llvm.dbg.value(metadata i32 %45, metadata !4393, metadata !DIExpression()), !dbg !4399
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4560
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4561
  call void @llvm.dbg.value(metadata i32 %385, metadata !4393, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %384, metadata !4392, metadata !DIExpression()), !dbg !4399
  store i64 %384, ptr %3, align 8, !dbg !4562, !tbaa !3138
  br label %386, !dbg !4563

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4399
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #38, !dbg !4564
  ret i32 %387, !dbg !4564
}

; Function Attrs: nounwind
declare !dbg !4565 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4570 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !4608, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata ptr %1, metadata !4609, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i32 0, metadata !4610, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i32 0, metadata !4611, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i8 0, metadata !4612, metadata !DIExpression()), !dbg !4632
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !4633
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4613, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata ptr %1, metadata !4617, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata ptr %3, metadata !4619, metadata !DIExpression()), !dbg !4635
  br label %4, !dbg !4636

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4635
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4632
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4637
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4632
  call void @llvm.dbg.value(metadata i32 %9, metadata !4610, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i32 %8, metadata !4611, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata ptr %10, metadata !4619, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata ptr %6, metadata !4617, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8 poison, metadata !4612, metadata !DIExpression()), !dbg !4632
  %11 = load i8, ptr %6, align 1, !dbg !4638, !tbaa !996
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4639

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !4610, metadata !DIExpression()), !dbg !4632
  %13 = icmp slt i64 %7, 80, !dbg !4640
  br i1 %13, label %14, label %43, !dbg !4643

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4644
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4635
  store i8 114, ptr %10, align 1, !dbg !4645, !tbaa !996
  br label %43, !dbg !4646

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4610, metadata !DIExpression()), !dbg !4632
  %17 = or i32 %8, 576, !dbg !4647
  call void @llvm.dbg.value(metadata i32 %17, metadata !4611, metadata !DIExpression()), !dbg !4632
  %18 = icmp slt i64 %7, 80, !dbg !4648
  br i1 %18, label %19, label %43, !dbg !4650

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4651
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4635
  store i8 119, ptr %10, align 1, !dbg !4652, !tbaa !996
  br label %43, !dbg !4653

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4610, metadata !DIExpression()), !dbg !4632
  %22 = or i32 %8, 1088, !dbg !4654
  call void @llvm.dbg.value(metadata i32 %22, metadata !4611, metadata !DIExpression()), !dbg !4632
  %23 = icmp slt i64 %7, 80, !dbg !4655
  br i1 %23, label %24, label %43, !dbg !4657

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4658
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4635
  store i8 97, ptr %10, align 1, !dbg !4659, !tbaa !996
  br label %43, !dbg !4660

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !4611, metadata !DIExpression()), !dbg !4632
  %27 = icmp slt i64 %7, 80, !dbg !4661
  br i1 %27, label %28, label %43, !dbg !4663

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4664
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4635
  store i8 98, ptr %10, align 1, !dbg !4665, !tbaa !996
  br label %43, !dbg !4666

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !4610, metadata !DIExpression()), !dbg !4632
  %31 = icmp slt i64 %7, 80, !dbg !4667
  br i1 %31, label %32, label %43, !dbg !4669

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4670
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4635
  store i8 43, ptr %10, align 1, !dbg !4671, !tbaa !996
  br label %43, !dbg !4672

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4673
  call void @llvm.dbg.value(metadata i32 %35, metadata !4611, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i8 1, metadata !4612, metadata !DIExpression()), !dbg !4632
  br label %43, !dbg !4674

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4675
  call void @llvm.dbg.value(metadata i32 %37, metadata !4611, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i8 1, metadata !4612, metadata !DIExpression()), !dbg !4632
  br label %43, !dbg !4676

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #39, !dbg !4677
  call void @llvm.dbg.value(metadata i64 %39, metadata !4620, metadata !DIExpression()), !dbg !4678
  %40 = sub nsw i64 80, %7, !dbg !4679
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4681
  call void @llvm.dbg.value(metadata i64 %41, metadata !4620, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata ptr %10, metadata !4682, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata ptr %6, metadata !4685, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 %41, metadata !4686, metadata !DIExpression()), !dbg !4687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #38, !dbg !4689
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4690
  call void @llvm.dbg.value(metadata ptr %42, metadata !4619, metadata !DIExpression()), !dbg !4635
  br label %49, !dbg !4691

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4632
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4632
  call void @llvm.dbg.value(metadata i32 %47, metadata !4610, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i32 %46, metadata !4611, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4635
  call void @llvm.dbg.value(metadata i8 poison, metadata !4612, metadata !DIExpression()), !dbg !4632
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4692
  call void @llvm.dbg.value(metadata ptr %48, metadata !4617, metadata !DIExpression()), !dbg !4635
  br label %4, !dbg !4693, !llvm.loop !4694

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4635
  call void @llvm.dbg.value(metadata ptr %50, metadata !4619, metadata !DIExpression()), !dbg !4635
  store i8 0, ptr %50, align 1, !dbg !4696, !tbaa !996
  br i1 %5, label %51, label %62, !dbg !4697

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !4698
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #38, !dbg !4699
  call void @llvm.dbg.value(metadata i32 %53, metadata !4625, metadata !DIExpression()), !dbg !4700
  %54 = icmp slt i32 %53, 0, !dbg !4701
  br i1 %54, label %64, label %55, !dbg !4703

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #38, !dbg !4704
  call void @llvm.dbg.value(metadata ptr %56, metadata !4628, metadata !DIExpression()), !dbg !4700
  %57 = icmp eq ptr %56, null, !dbg !4705
  br i1 %57, label %58, label %64, !dbg !4706

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #41, !dbg !4707
  %60 = load i32, ptr %59, align 4, !dbg !4707, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %60, metadata !4629, metadata !DIExpression()), !dbg !4708
  %61 = tail call i32 @close(i32 noundef %53) #38, !dbg !4709
  store i32 %60, ptr %59, align 4, !dbg !4710, !tbaa !987
  br label %64, !dbg !4711

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4712, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata ptr %1, metadata !4715, metadata !DIExpression()), !dbg !4716
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4718
  br label %64, !dbg !4719

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !4632
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !4720
  ret ptr %65, !dbg !4720
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4721 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !4724 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4727 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4728 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4731 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4769, metadata !DIExpression()), !dbg !4774
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4775
  call void @llvm.dbg.value(metadata i1 poison, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4774
  call void @llvm.dbg.value(metadata ptr %0, metadata !4776, metadata !DIExpression()), !dbg !4779
  %3 = load i32, ptr %0, align 8, !dbg !4781, !tbaa !1273
  %4 = and i32 %3, 32, !dbg !4782
  %5 = icmp eq i32 %4, 0, !dbg !4782
  call void @llvm.dbg.value(metadata i1 %5, metadata !4772, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4774
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4783
  %7 = icmp eq i32 %6, 0, !dbg !4784
  call void @llvm.dbg.value(metadata i1 %7, metadata !4773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4774
  br i1 %5, label %8, label %18, !dbg !4785

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4787
  call void @llvm.dbg.value(metadata i1 %9, metadata !4770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4774
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4788
  %11 = xor i1 %7, true, !dbg !4788
  %12 = sext i1 %11 to i32, !dbg !4788
  br i1 %10, label %21, label %13, !dbg !4788

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4789
  %15 = load i32, ptr %14, align 4, !dbg !4789, !tbaa !987
  %16 = icmp ne i32 %15, 9, !dbg !4790
  %17 = sext i1 %16 to i32, !dbg !4791
  br label %21, !dbg !4791

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4792

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4794
  store i32 0, ptr %20, align 4, !dbg !4796, !tbaa !987
  br label %21, !dbg !4794

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4774
  ret i32 %22, !dbg !4797
}

; Function Attrs: nounwind
declare !dbg !4798 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4801 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4806, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata ptr %1, metadata !4807, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %2, metadata !4808, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata ptr %3, metadata !4809, metadata !DIExpression()), !dbg !4811
  %5 = icmp eq ptr %1, null, !dbg !4812
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4814
  %7 = select i1 %5, ptr @.str.137, ptr %1, !dbg !4814
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4814
  call void @llvm.dbg.value(metadata i64 %8, metadata !4808, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata ptr %7, metadata !4807, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata ptr %6, metadata !4806, metadata !DIExpression()), !dbg !4811
  %9 = icmp eq ptr %3, null, !dbg !4815
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4817
  call void @llvm.dbg.value(metadata ptr %10, metadata !4809, metadata !DIExpression()), !dbg !4811
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !4818
  call void @llvm.dbg.value(metadata i64 %11, metadata !4810, metadata !DIExpression()), !dbg !4811
  %12 = icmp ult i64 %11, -3, !dbg !4819
  br i1 %12, label %13, label %17, !dbg !4821

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !4822
  %15 = icmp eq i32 %14, 0, !dbg !4822
  br i1 %15, label %16, label %29, !dbg !4823

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4824, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata ptr %10, metadata !4831, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 0, metadata !4834, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i64 8, metadata !4835, metadata !DIExpression()), !dbg !4836
  store i64 0, ptr %10, align 1, !dbg !4838
  br label %29, !dbg !4839

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4840
  br i1 %18, label %19, label %20, !dbg !4842

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4843
  unreachable, !dbg !4843

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4844

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !4846
  br i1 %23, label %29, label %24, !dbg !4847

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4848
  br i1 %25, label %29, label %26, !dbg !4851

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4852, !tbaa !996
  %28 = zext i8 %27 to i32, !dbg !4853
  store i32 %28, ptr %6, align 4, !dbg !4854, !tbaa !987
  br label %29, !dbg !4855

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4811
  ret i64 %30, !dbg !4856
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4857 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4862 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4864, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i64 %1, metadata !4865, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i64 %2, metadata !4866, metadata !DIExpression()), !dbg !4868
  %4 = icmp eq i64 %2, 0, !dbg !4869
  br i1 %4, label %8, label %5, !dbg !4869

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4869
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4869
  br i1 %7, label %13, label %8, !dbg !4869

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4867, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4868
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4867, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4868
  %9 = mul i64 %2, %1, !dbg !4869
  call void @llvm.dbg.value(metadata i64 %9, metadata !4867, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata ptr %0, metadata !4871, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i64 %9, metadata !4874, metadata !DIExpression()), !dbg !4875
  %10 = icmp eq i64 %9, 0, !dbg !4877
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4877
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4878
  br label %15, !dbg !4879

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4867, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4868
  %14 = tail call ptr @__errno_location() #41, !dbg !4880
  store i32 12, ptr %14, align 4, !dbg !4882, !tbaa !987
  br label %15, !dbg !4883

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4868
  ret ptr %16, !dbg !4884
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4885 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4889, metadata !DIExpression()), !dbg !4894
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4895
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4890, metadata !DIExpression()), !dbg !4896
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4897
  %4 = icmp eq i32 %3, 0, !dbg !4897
  br i1 %4, label %5, label %12, !dbg !4899

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4900, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr @.str.142, metadata !4903, metadata !DIExpression()), !dbg !4904
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.142, i64 2), !dbg !4907
  %7 = icmp eq i32 %6, 0, !dbg !4908
  br i1 %7, label %11, label %8, !dbg !4909

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4900, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.value(metadata ptr @.str.1.143, metadata !4903, metadata !DIExpression()), !dbg !4910
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.143, i64 6), !dbg !4912
  %10 = icmp eq i32 %9, 0, !dbg !4913
  br i1 %10, label %11, label %12, !dbg !4914

11:                                               ; preds = %8, %5
  br label %12, !dbg !4915

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4894
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4916
  ret i1 %13, !dbg !4916
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4917 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4921, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata ptr %1, metadata !4922, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i64 %2, metadata !4923, metadata !DIExpression()), !dbg !4924
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4925
  ret i32 %4, !dbg !4926
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4931, metadata !DIExpression()), !dbg !4932
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4933
  ret ptr %2, !dbg !4934
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4935 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4937, metadata !DIExpression()), !dbg !4939
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4940
  call void @llvm.dbg.value(metadata ptr %2, metadata !4938, metadata !DIExpression()), !dbg !4939
  ret ptr %2, !dbg !4941
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4942 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4944, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata ptr %1, metadata !4945, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i64 %2, metadata !4946, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i32 %0, metadata !4937, metadata !DIExpression()), !dbg !4952
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4954
  call void @llvm.dbg.value(metadata ptr %4, metadata !4938, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata ptr %4, metadata !4947, metadata !DIExpression()), !dbg !4951
  %5 = icmp eq ptr %4, null, !dbg !4955
  br i1 %5, label %6, label %9, !dbg !4956

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4957
  br i1 %7, label %19, label %8, !dbg !4960

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4961, !tbaa !996
  br label %19, !dbg !4962

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4963
  call void @llvm.dbg.value(metadata i64 %10, metadata !4948, metadata !DIExpression()), !dbg !4964
  %11 = icmp ult i64 %10, %2, !dbg !4965
  br i1 %11, label %12, label %14, !dbg !4967

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4968
  call void @llvm.dbg.value(metadata ptr %1, metadata !4970, metadata !DIExpression()), !dbg !4975
  call void @llvm.dbg.value(metadata ptr %4, metadata !4973, metadata !DIExpression()), !dbg !4975
  call void @llvm.dbg.value(metadata i64 %13, metadata !4974, metadata !DIExpression()), !dbg !4975
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4977
  br label %19, !dbg !4978

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4979
  br i1 %15, label %19, label %16, !dbg !4982

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4983
  call void @llvm.dbg.value(metadata ptr %1, metadata !4970, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.value(metadata ptr %4, metadata !4973, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.value(metadata i64 %17, metadata !4974, metadata !DIExpression()), !dbg !4985
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4987
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4988
  store i8 0, ptr %18, align 1, !dbg !4989, !tbaa !996
  br label %19, !dbg !4990

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4991
  ret i32 %20, !dbg !4992
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
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!66, !478, !482, !497, !776, !813, !816, !818, !821, !823, !825, !554, !568, !615, !827, !768, !833, !864, !866, !878, !885, !887, !795, !889, !892, !894, !896}
!llvm.ident = !{!898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898, !898}
!llvm.module.flags = !{!899, !900, !901, !902, !903, !904, !905}

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
!65 = distinct !DIGlobalVariable(name: "shortopts", scope: !66, file: !2, line: 56, type: !468, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !135, globals: !145, splitDebugInlining: false, nameTableKind: None)
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
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 46, baseType: !141)
!140 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!141 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!144 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49, !54, !59, !146, !151, !156, !161, !166, !169, !171, !173, !178, !260, !262, !264, !269, !274, !276, !278, !280, !285, !287, !289, !291, !296, !301, !303, !305, !307, !309, !311, !313, !318, !323, !328, !333, !335, !337, !339, !341, !343, !348, !350, !352, !357, !362, !367, !64, !372, !374, !379, !381, !383, !385, !387, !399, !401, !458, !460, !462, !464, !466}
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
!402 = distinct !DIGlobalVariable(name: "line_out", scope: !403, file: !2, line: 164, type: !455, isLocal: true, isDefinition: true)
!403 = distinct !DISubprogram(name: "fold_file", scope: !2, file: !2, line: 159, type: !404, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!168, !142, !139}
!406 = !{!407, !408, !409, !410, !411, !415, !425, !426, !437, !443, !444, !445, !446, !448, !451, !452, !454}
!407 = !DILocalVariable(name: "filename", arg: 1, scope: !403, file: !2, line: 159, type: !142)
!408 = !DILocalVariable(name: "width", arg: 2, scope: !403, file: !2, line: 159, type: !139)
!409 = !DILocalVariable(name: "istream", scope: !403, file: !2, line: 161, type: !202)
!410 = !DILocalVariable(name: "column", scope: !403, file: !2, line: 162, type: !139)
!411 = !DILocalVariable(name: "offset_out", scope: !403, file: !2, line: 163, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !413, line: 130, baseType: !414)
!413 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !140, line: 35, baseType: !230)
!415 = !DILocalVariable(name: "mbbuf", scope: !403, file: !2, line: 166, type: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !417, line: 50, baseType: !418)
!417 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !417, line: 43, size: 320, elements: !419)
!419 = !{!420, !421, !422, !423, !424}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !418, file: !417, line: 45, baseType: !136, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !418, file: !417, line: 46, baseType: !202, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !418, file: !417, line: 47, baseType: !412, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !418, file: !417, line: 48, baseType: !412, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !418, file: !417, line: 49, baseType: !412, size: 64, offset: 256)
!425 = !DILocalVariable(name: "saved_errno", scope: !403, file: !2, line: 167, type: !83)
!426 = !DILocalVariable(name: "g", scope: !403, file: !2, line: 186, type: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !126, line: 143, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 138, size: 64, elements: !429)
!429 = !{!430, !435, !436}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !428, file: !126, line: 140, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !432, line: 37, baseType: !433)
!432 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !229, line: 57, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !229, line: 42, baseType: !69)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !428, file: !126, line: 141, baseType: !144, size: 8, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !428, file: !126, line: 142, baseType: !144, size: 8, offset: 40)
!437 = !DILocalVariable(name: "space_length", scope: !438, file: !2, line: 205, type: !83)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 204, column: 13)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 203, column: 15)
!440 = distinct !DILexicalBlock(scope: !441, file: !2, line: 199, column: 9)
!441 = distinct !DILexicalBlock(scope: !442, file: !2, line: 198, column: 11)
!442 = distinct !DILexicalBlock(scope: !403, file: !2, line: 188, column: 5)
!443 = !DILocalVariable(name: "logical_end", scope: !438, file: !2, line: 206, type: !412)
!444 = !DILocalVariable(name: "logical_p", scope: !438, file: !2, line: 207, type: !136)
!445 = !DILocalVariable(name: "logical_lim", scope: !438, file: !2, line: 208, type: !136)
!446 = !DILocalVariable(name: "g2", scope: !447, file: !2, line: 210, type: !427)
!447 = distinct !DILexicalBlock(scope: !438, file: !2, line: 210, column: 15)
!448 = !DILocalVariable(name: "printed_p", scope: !449, file: !2, line: 231, type: !136)
!449 = distinct !DILexicalBlock(scope: !450, file: !2, line: 221, column: 17)
!450 = distinct !DILexicalBlock(scope: !438, file: !2, line: 220, column: 19)
!451 = !DILocalVariable(name: "printed_lim", scope: !449, file: !2, line: 232, type: !136)
!452 = !DILocalVariable(name: "g2", scope: !453, file: !2, line: 233, type: !427)
!453 = distinct !DILexicalBlock(scope: !449, file: !2, line: 233, column: 19)
!454 = !DILabel(scope: !442, name: "rescan", file: !2, line: 195)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 262144)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "line_in", scope: !403, file: !2, line: 165, type: !455, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !163, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !282, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !82, line: 952, type: !369, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "last_character_width", scope: !66, file: !2, line: 54, type: !83, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 288, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 36)
!471 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!472 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !475, line: 3, type: !325, isLocal: true, isDefinition: true)
!475 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "Version", scope: !478, file: !475, line: 3, type: !142, isLocal: false, isDefinition: true)
!478 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !479, splitDebugInlining: false, nameTableKind: None)
!479 = !{!473, !476}
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "file_name", scope: !482, file: !483, line: 45, type: !142, isLocal: true, isDefinition: true)
!482 = distinct !DICompileUnit(language: DW_LANG_C11, file: !483, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !484, splitDebugInlining: false, nameTableKind: None)
!483 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!484 = !{!485, !487, !489, !491, !480, !493}
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !483, line: 121, type: !293, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !483, line: 121, type: !369, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !483, line: 123, type: !293, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !483, line: 126, type: !282, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !482, file: !483, line: 55, type: !168, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !497, file: !498, line: 66, type: !549, isLocal: false, isDefinition: true)
!497 = distinct !DICompileUnit(language: DW_LANG_C11, file: !498, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !499, globals: !500, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!499 = !{!137, !144}
!500 = !{!501, !503, !528, !530, !532, !534, !495, !536, !538, !540, !542, !547}
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !498, line: 272, type: !19, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "old_file_name", scope: !505, file: !498, line: 304, type: !142, isLocal: true, isDefinition: true)
!505 = distinct !DISubprogram(name: "verror_at_line", scope: !498, file: !498, line: 298, type: !506, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !521)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !83, !83, !142, !69, !142, !508}
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !509, line: 52, baseType: !510)
!509 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !511, line: 14, baseType: !512)
!511 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !513, baseType: !514)
!513 = !DIFile(filename: "lib/error.c", directory: "/src")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !515)
!515 = !{!516, !517, !518, !519, !520}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !514, file: !513, baseType: !137, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !514, file: !513, baseType: !137, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !514, file: !513, baseType: !137, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !514, file: !513, baseType: !83, size: 32, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !514, file: !513, baseType: !83, size: 32, offset: 224)
!521 = !{!522, !523, !524, !525, !526, !527}
!522 = !DILocalVariable(name: "status", arg: 1, scope: !505, file: !498, line: 298, type: !83)
!523 = !DILocalVariable(name: "errnum", arg: 2, scope: !505, file: !498, line: 298, type: !83)
!524 = !DILocalVariable(name: "file_name", arg: 3, scope: !505, file: !498, line: 298, type: !142)
!525 = !DILocalVariable(name: "line_number", arg: 4, scope: !505, file: !498, line: 298, type: !69)
!526 = !DILocalVariable(name: "message", arg: 5, scope: !505, file: !498, line: 298, type: !142)
!527 = !DILocalVariable(name: "args", arg: 6, scope: !505, file: !498, line: 298, type: !508)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "old_line_number", scope: !505, file: !498, line: 305, type: !69, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !498, line: 338, type: !266, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !498, line: 346, type: !298, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !498, line: 346, type: !163, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "error_message_count", scope: !497, file: !498, line: 69, type: !69, isLocal: false, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !497, file: !498, line: 295, type: !83, isLocal: false, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !498, line: 208, type: !293, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !498, line: 208, type: !544, isLocal: true, isDefinition: true)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 21)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !498, line: 214, type: !19, isLocal: true, isDefinition: true)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null}
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "program_name", scope: !554, file: !555, line: 31, type: !142, isLocal: false, isDefinition: true)
!554 = distinct !DICompileUnit(language: DW_LANG_C11, file: !555, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !556, globals: !557, splitDebugInlining: false, nameTableKind: None)
!555 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!556 = !{!136}
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
!568 = distinct !DICompileUnit(language: DW_LANG_C11, file: !565, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !569, splitDebugInlining: false, nameTableKind: None)
!569 = !{!562}
!570 = !{!571, !572, !573, !574, !575}
!571 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !564, file: !565, line: 38, type: !142)
!572 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !564, file: !565, line: 38, type: !142)
!573 = !DILocalVariable(name: "translation", scope: !564, file: !565, line: 40, type: !142)
!574 = !DILocalVariable(name: "w", scope: !564, file: !565, line: 47, type: !431)
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
!614 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !615, file: !591, line: 76, type: !687, isLocal: false, isDefinition: true)
!615 = distinct !DICompileUnit(language: DW_LANG_C11, file: !591, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !616, retainedTypes: !622, globals: !623, splitDebugInlining: false, nameTableKind: None)
!616 = !{!102, !617, !87}
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !103, line: 254, baseType: !69, size: 32, elements: !618)
!618 = !{!619, !620, !621}
!619 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!620 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!621 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!622 = !{!83, !138, !139}
!623 = !{!589, !592, !594, !599, !601, !603, !605, !607, !609, !611, !613, !624, !628, !638, !640, !645, !647, !649, !651, !653, !676, !683, !685}
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !615, file: !591, line: 92, type: !626, isLocal: false, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 320, elements: !57)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !615, file: !591, line: 1040, type: !630, isLocal: false, isDefinition: true)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !591, line: 56, size: 448, elements: !631)
!631 = !{!632, !633, !634, !636, !637}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !630, file: !591, line: 59, baseType: !102, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !591, line: 62, baseType: !83, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !630, file: !591, line: 66, baseType: !635, size: 256, offset: 64)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !299)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !630, file: !591, line: 69, baseType: !142, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !630, file: !591, line: 72, baseType: !142, size: 64, offset: 384)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !615, file: !591, line: 107, type: !630, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "slot0", scope: !615, file: !591, line: 831, type: !642, isLocal: true, isDefinition: true)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 256)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !591, line: 321, type: !163, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !591, line: 357, type: !163, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !591, line: 358, type: !163, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !591, line: 199, type: !293, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "quote", scope: !655, file: !591, line: 228, type: !674, isLocal: true, isDefinition: true)
!655 = distinct !DISubprogram(name: "gettext_quote", scope: !591, file: !591, line: 197, type: !656, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!142, !142, !102}
!658 = !{!659, !660, !661, !662, !663}
!659 = !DILocalVariable(name: "msgid", arg: 1, scope: !655, file: !591, line: 197, type: !142)
!660 = !DILocalVariable(name: "s", arg: 2, scope: !655, file: !591, line: 197, type: !102)
!661 = !DILocalVariable(name: "translation", scope: !655, file: !591, line: 199, type: !142)
!662 = !DILocalVariable(name: "w", scope: !655, file: !591, line: 229, type: !431)
!663 = !DILocalVariable(name: "mbs", scope: !655, file: !591, line: 230, type: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !666, file: !579, line: 15, baseType: !83, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !666, file: !579, line: 20, baseType: !670, size: 32, offset: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !579, line: 16, size: 32, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !670, file: !579, line: 18, baseType: !69, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !670, file: !579, line: 19, baseType: !266, size: 32)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !675)
!675 = !{!165, !268}
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(name: "slotvec", scope: !615, file: !591, line: 834, type: !678, isLocal: true, isDefinition: true)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !591, line: 823, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !679, file: !591, line: 825, baseType: !139, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !679, file: !591, line: 826, baseType: !136, size: 64, offset: 64)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "nslots", scope: !615, file: !591, line: 832, type: !83, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "slotvec0", scope: !615, file: !591, line: 833, type: !679, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 704, elements: !377)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !691, line: 67, type: !369, isLocal: true, isDefinition: true)
!691 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !691, line: 69, type: !293, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !691, line: 83, type: !293, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !691, line: 83, type: !266, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !691, line: 85, type: !163, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !691, line: 88, type: !702, isLocal: true, isDefinition: true)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 171)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !691, line: 88, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 34)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !691, line: 105, type: !158, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !691, line: 109, type: !714, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 23)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !691, line: 113, type: !719, isLocal: true, isDefinition: true)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 28)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !691, line: 120, type: !724, isLocal: true, isDefinition: true)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 32)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !691, line: 127, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !469)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !691, line: 134, type: !320, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !691, line: 142, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 44)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !691, line: 150, type: !739, isLocal: true, isDefinition: true)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 48)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !691, line: 159, type: !744, isLocal: true, isDefinition: true)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 52)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !691, line: 170, type: !14, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !691, line: 248, type: !251, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !691, line: 248, type: !345, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !691, line: 254, type: !251, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !691, line: 254, type: !153, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !691, line: 254, type: !320, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !691, line: 259, type: !3, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !691, line: 259, type: !763, isLocal: true, isDefinition: true)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 29)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !768, file: !769, line: 26, type: !771, isLocal: false, isDefinition: true)
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !770, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!770 = !{!766}
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 376, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 47)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "exit_failure", scope: !776, file: !777, line: 24, type: !779, isLocal: false, isDefinition: true)
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !778, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!778 = !{!774}
!779 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !782, line: 34, type: !282, isLocal: true, isDefinition: true)
!782 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !782, line: 34, type: !293, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !782, line: 34, type: !315, isLocal: true, isDefinition: true)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !789, line: 80, type: !293, isLocal: true, isDefinition: true)
!789 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !792, line: 108, type: !51, isLocal: true, isDefinition: true)
!792 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "internal_state", scope: !795, file: !792, line: 97, type: !798, isLocal: true, isDefinition: true)
!795 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !796, globals: !797, splitDebugInlining: false, nameTableKind: None)
!796 = !{!137, !139, !144}
!797 = !{!790, !793}
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !800, file: !579, line: 15, baseType: !83, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !800, file: !579, line: 20, baseType: !804, size: 32, offset: 32)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !579, line: 16, size: 32, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !804, file: !579, line: 18, baseType: !69, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !804, file: !579, line: 19, baseType: !266, size: 32)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !810, line: 35, type: !163, isLocal: true, isDefinition: true)
!810 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !810, line: 35, type: !271, isLocal: true, isDefinition: true)
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !814, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !815, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!815 = !{!116}
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !820, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!820 = !{!137}
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !820, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !828, retainedTypes: !820, globals: !832, splitDebugInlining: false, nameTableKind: None)
!828 = !{!829}
!829 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !691, line: 40, baseType: !69, size: 32, elements: !830)
!830 = !{!831}
!831 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!832 = !{!689, !692, !694, !696, !698, !700, !705, !710, !712, !717, !722, !727, !730, !732, !737, !742, !747, !749, !751, !753, !755, !757, !759, !761}
!833 = distinct !DICompileUnit(language: DW_LANG_C11, file: !834, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !835, retainedTypes: !863, splitDebugInlining: false, nameTableKind: None)
!834 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!835 = !{!836, !848}
!836 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !837, file: !834, line: 188, baseType: !69, size: 32, elements: !846)
!837 = distinct !DISubprogram(name: "x2nrealloc", scope: !834, file: !834, line: 176, type: !838, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !841)
!838 = !DISubroutineType(types: !839)
!839 = !{!137, !137, !840, !139}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!841 = !{!842, !843, !844, !845}
!842 = !DILocalVariable(name: "p", arg: 1, scope: !837, file: !834, line: 176, type: !137)
!843 = !DILocalVariable(name: "pn", arg: 2, scope: !837, file: !834, line: 176, type: !840)
!844 = !DILocalVariable(name: "s", arg: 3, scope: !837, file: !834, line: 176, type: !139)
!845 = !DILocalVariable(name: "n", scope: !837, file: !834, line: 178, type: !139)
!846 = !{!847}
!847 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!848 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !849, file: !834, line: 228, baseType: !69, size: 32, elements: !846)
!849 = distinct !DISubprogram(name: "xpalloc", scope: !834, file: !834, line: 223, type: !850, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !853)
!850 = !DISubroutineType(types: !851)
!851 = !{!137, !137, !852, !412, !414, !412}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!853 = !{!854, !855, !856, !857, !858, !859, !860, !861, !862}
!854 = !DILocalVariable(name: "pa", arg: 1, scope: !849, file: !834, line: 223, type: !137)
!855 = !DILocalVariable(name: "pn", arg: 2, scope: !849, file: !834, line: 223, type: !852)
!856 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !849, file: !834, line: 223, type: !412)
!857 = !DILocalVariable(name: "n_max", arg: 4, scope: !849, file: !834, line: 223, type: !414)
!858 = !DILocalVariable(name: "s", arg: 5, scope: !849, file: !834, line: 223, type: !412)
!859 = !DILocalVariable(name: "n0", scope: !849, file: !834, line: 230, type: !412)
!860 = !DILocalVariable(name: "n", scope: !849, file: !834, line: 237, type: !412)
!861 = !DILocalVariable(name: "nbytes", scope: !849, file: !834, line: 248, type: !412)
!862 = !DILocalVariable(name: "adjusted_nbytes", scope: !849, file: !834, line: 252, type: !412)
!863 = !{!136, !137, !168, !230, !141}
!864 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !865, splitDebugInlining: false, nameTableKind: None)
!865 = !{!780, !783, !785}
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !868, globals: !877, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!868 = !{!869, !74}
!869 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !870, line: 30, baseType: !69, size: 32, elements: !871)
!870 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!871 = !{!872, !873, !874, !875, !876}
!872 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!873 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!874 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!875 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!876 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!877 = !{!787}
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !879, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !880, retainedTypes: !881, splitDebugInlining: false, nameTableKind: None)
!879 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!880 = !{!869, !87}
!881 = !{!83, !138, !136, !168, !141, !882}
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !883, line: 102, baseType: !884)
!883 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !229, line: 73, baseType: !141)
!885 = distinct !DICompileUnit(language: DW_LANG_C11, file: !886, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !820, splitDebugInlining: false, nameTableKind: None)
!886 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!887 = distinct !DICompileUnit(language: DW_LANG_C11, file: !888, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!888 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!889 = distinct !DICompileUnit(language: DW_LANG_C11, file: !890, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !891, splitDebugInlining: false, nameTableKind: None)
!890 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!891 = !{!168, !141, !137}
!892 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !893, splitDebugInlining: false, nameTableKind: None)
!893 = !{!808, !811}
!894 = distinct !DICompileUnit(language: DW_LANG_C11, file: !895, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!895 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!896 = distinct !DICompileUnit(language: DW_LANG_C11, file: !897, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !820, splitDebugInlining: false, nameTableKind: None)
!897 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!898 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!899 = !{i32 7, !"Dwarf Version", i32 5}
!900 = !{i32 2, !"Debug Info Version", i32 3}
!901 = !{i32 1, !"wchar_size", i32 4}
!902 = !{i32 8, !"PIC Level", i32 2}
!903 = !{i32 7, !"PIE Level", i32 2}
!904 = !{i32 7, !"uwtable", i32 2}
!905 = !{i32 7, !"frame-pointer", i32 1}
!906 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 70, type: !907, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !83}
!909 = !{!910}
!910 = !DILocalVariable(name: "status", arg: 1, scope: !906, file: !2, line: 70, type: !83)
!911 = !DILocation(line: 0, scope: !906)
!912 = !DILocation(line: 72, column: 14, scope: !913)
!913 = distinct !DILexicalBlock(scope: !906, file: !2, line: 72, column: 7)
!914 = !DILocation(line: 72, column: 7, scope: !906)
!915 = !DILocation(line: 73, column: 5, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !2, line: 73, column: 5)
!917 = !{!918, !918, i64 0}
!918 = !{!"any pointer", !919, i64 0}
!919 = !{!"omnipotent char", !920, i64 0}
!920 = !{!"Simple C/C++ TBAA"}
!921 = !DILocation(line: 76, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !913, file: !2, line: 75, column: 5)
!923 = !DILocation(line: 80, column: 7, scope: !922)
!924 = !DILocation(line: 729, column: 3, scope: !925, inlinedAt: !927)
!925 = distinct !DISubprogram(name: "emit_stdin_note", scope: !82, file: !82, line: 727, type: !550, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !926)
!926 = !{}
!927 = distinct !DILocation(line: 84, column: 7, scope: !922)
!928 = !DILocation(line: 736, column: 3, scope: !929, inlinedAt: !930)
!929 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !82, file: !82, line: 734, type: !550, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !926)
!930 = distinct !DILocation(line: 85, column: 7, scope: !922)
!931 = !DILocation(line: 87, column: 7, scope: !922)
!932 = !DILocation(line: 91, column: 7, scope: !922)
!933 = !DILocation(line: 95, column: 7, scope: !922)
!934 = !DILocation(line: 99, column: 7, scope: !922)
!935 = !DILocation(line: 103, column: 7, scope: !922)
!936 = !DILocation(line: 104, column: 7, scope: !922)
!937 = !DILocalVariable(name: "program", arg: 1, scope: !938, file: !82, line: 836, type: !142)
!938 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 836, type: !939, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !142}
!941 = !{!937, !942, !949, !950, !952, !953}
!942 = !DILocalVariable(name: "infomap", scope: !938, file: !82, line: 838, type: !943)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 896, elements: !294)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !938, file: !82, line: 838, size: 128, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !945, file: !82, line: 838, baseType: !142, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !945, file: !82, line: 838, baseType: !142, size: 64, offset: 64)
!949 = !DILocalVariable(name: "node", scope: !938, file: !82, line: 848, type: !142)
!950 = !DILocalVariable(name: "map_prog", scope: !938, file: !82, line: 849, type: !951)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!952 = !DILocalVariable(name: "lc_messages", scope: !938, file: !82, line: 861, type: !142)
!953 = !DILocalVariable(name: "url_program", scope: !938, file: !82, line: 874, type: !142)
!954 = !DILocation(line: 0, scope: !938, inlinedAt: !955)
!955 = distinct !DILocation(line: 105, column: 7, scope: !922)
!956 = !DILocation(line: 857, column: 3, scope: !938, inlinedAt: !955)
!957 = !DILocation(line: 861, column: 29, scope: !938, inlinedAt: !955)
!958 = !DILocation(line: 862, column: 7, scope: !959, inlinedAt: !955)
!959 = distinct !DILexicalBlock(scope: !938, file: !82, line: 862, column: 7)
!960 = !DILocation(line: 862, column: 19, scope: !959, inlinedAt: !955)
!961 = !DILocation(line: 862, column: 22, scope: !959, inlinedAt: !955)
!962 = !DILocation(line: 862, column: 7, scope: !938, inlinedAt: !955)
!963 = !DILocation(line: 868, column: 7, scope: !964, inlinedAt: !955)
!964 = distinct !DILexicalBlock(scope: !959, file: !82, line: 863, column: 5)
!965 = !DILocation(line: 870, column: 5, scope: !964, inlinedAt: !955)
!966 = !DILocation(line: 875, column: 3, scope: !938, inlinedAt: !955)
!967 = !DILocation(line: 877, column: 3, scope: !938, inlinedAt: !955)
!968 = !DILocation(line: 107, column: 3, scope: !906)
!969 = !DISubprogram(name: "dcgettext", scope: !970, file: !970, line: 51, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!970 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!971 = !DISubroutineType(types: !972)
!972 = !{!136, !142, !142, !83}
!973 = !DISubprogram(name: "__fprintf_chk", scope: !974, file: !974, line: 93, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!974 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!975 = !DISubroutineType(types: !976)
!976 = !{!83, !977, !83, !978, null}
!977 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!978 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!979 = !DISubprogram(name: "__printf_chk", scope: !974, file: !974, line: 95, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!980 = !DISubroutineType(types: !981)
!981 = !{!83, !83, !978, null}
!982 = !DISubprogram(name: "fputs_unlocked", scope: !509, file: !509, line: 691, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!983 = !DISubroutineType(types: !984)
!984 = !{!83, !978, !977}
!985 = !DILocation(line: 0, scope: !180)
!986 = !DILocation(line: 581, column: 7, scope: !188)
!987 = !{!988, !988, i64 0}
!988 = !{!"int", !919, i64 0}
!989 = !DILocation(line: 581, column: 19, scope: !188)
!990 = !DILocation(line: 581, column: 7, scope: !180)
!991 = !DILocation(line: 585, column: 26, scope: !187)
!992 = !DILocation(line: 0, scope: !187)
!993 = !DILocation(line: 586, column: 23, scope: !187)
!994 = !DILocation(line: 586, column: 28, scope: !187)
!995 = !DILocation(line: 586, column: 32, scope: !187)
!996 = !{!919, !919, i64 0}
!997 = !DILocation(line: 586, column: 38, scope: !187)
!998 = !DILocalVariable(name: "__s1", arg: 1, scope: !999, file: !1000, line: 1359, type: !142)
!999 = distinct !DISubprogram(name: "streq", scope: !1000, file: !1000, line: 1359, type: !1001, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1003)
!1000 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!168, !142, !142}
!1003 = !{!998, !1004}
!1004 = !DILocalVariable(name: "__s2", arg: 2, scope: !999, file: !1000, line: 1359, type: !142)
!1005 = !DILocation(line: 0, scope: !999, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 586, column: 41, scope: !187)
!1007 = !DILocation(line: 1361, column: 11, scope: !999, inlinedAt: !1006)
!1008 = !DILocation(line: 1361, column: 10, scope: !999, inlinedAt: !1006)
!1009 = !DILocation(line: 586, column: 19, scope: !187)
!1010 = !DILocation(line: 587, column: 5, scope: !187)
!1011 = !DILocation(line: 588, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !180, file: !82, line: 588, column: 7)
!1013 = !DILocation(line: 588, column: 7, scope: !180)
!1014 = !DILocation(line: 590, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !82, line: 589, column: 5)
!1016 = !DILocation(line: 591, column: 7, scope: !1015)
!1017 = !DILocation(line: 595, column: 37, scope: !180)
!1018 = !DILocation(line: 595, column: 35, scope: !180)
!1019 = !DILocation(line: 596, column: 29, scope: !180)
!1020 = !DILocation(line: 597, column: 8, scope: !195)
!1021 = !DILocation(line: 597, column: 7, scope: !180)
!1022 = !DILocation(line: 604, column: 24, scope: !194)
!1023 = !DILocation(line: 604, column: 12, scope: !195)
!1024 = !DILocation(line: 0, scope: !193)
!1025 = !DILocation(line: 610, column: 16, scope: !193)
!1026 = !DILocation(line: 610, column: 7, scope: !193)
!1027 = !DILocation(line: 611, column: 21, scope: !193)
!1028 = !{!1029, !1029, i64 0}
!1029 = !{!"short", !919, i64 0}
!1030 = !DILocation(line: 611, column: 19, scope: !193)
!1031 = !DILocation(line: 611, column: 16, scope: !193)
!1032 = !DILocation(line: 610, column: 30, scope: !193)
!1033 = distinct !{!1033, !1026, !1027, !1034}
!1034 = !{!"llvm.loop.mustprogress"}
!1035 = !DILocation(line: 612, column: 18, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !193, file: !82, line: 612, column: 11)
!1037 = !DILocation(line: 612, column: 11, scope: !193)
!1038 = !DILocation(line: 620, column: 23, scope: !180)
!1039 = !DILocation(line: 625, column: 39, scope: !180)
!1040 = !DILocation(line: 626, column: 3, scope: !180)
!1041 = !DILocation(line: 626, column: 10, scope: !180)
!1042 = !DILocation(line: 626, column: 21, scope: !180)
!1043 = !DILocation(line: 628, column: 44, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !82, line: 628, column: 11)
!1045 = distinct !DILexicalBlock(scope: !180, file: !82, line: 627, column: 5)
!1046 = !DILocation(line: 628, column: 32, scope: !1044)
!1047 = !DILocation(line: 628, column: 49, scope: !1044)
!1048 = !DILocation(line: 628, column: 11, scope: !1045)
!1049 = !DILocation(line: 630, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !82, line: 630, column: 11)
!1051 = !DILocation(line: 630, column: 11, scope: !1045)
!1052 = !DILocation(line: 632, column: 26, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !82, line: 632, column: 15)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !82, line: 631, column: 9)
!1055 = !DILocation(line: 632, column: 34, scope: !1053)
!1056 = !DILocation(line: 632, column: 37, scope: !1053)
!1057 = !DILocation(line: 632, column: 15, scope: !1054)
!1058 = !DILocation(line: 640, column: 16, scope: !1045)
!1059 = distinct !{!1059, !1040, !1060, !1034}
!1060 = !DILocation(line: 641, column: 5, scope: !180)
!1061 = !DILocation(line: 644, column: 3, scope: !180)
!1062 = !DILocation(line: 0, scope: !999, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 648, column: 31, scope: !180)
!1064 = !DILocation(line: 0, scope: !999, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 649, column: 31, scope: !180)
!1066 = !DILocation(line: 0, scope: !999, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 650, column: 31, scope: !180)
!1068 = !DILocation(line: 0, scope: !999, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 651, column: 31, scope: !180)
!1070 = !DILocation(line: 0, scope: !999, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 652, column: 31, scope: !180)
!1072 = !DILocation(line: 0, scope: !999, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 653, column: 31, scope: !180)
!1074 = !DILocation(line: 0, scope: !999, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 654, column: 31, scope: !180)
!1076 = !DILocation(line: 0, scope: !999, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 655, column: 31, scope: !180)
!1078 = !DILocation(line: 0, scope: !999, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 656, column: 31, scope: !180)
!1080 = !DILocation(line: 0, scope: !999, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 657, column: 31, scope: !180)
!1082 = !DILocation(line: 663, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !180, file: !82, line: 663, column: 7)
!1084 = !DILocation(line: 664, column: 7, scope: !1083)
!1085 = !DILocation(line: 664, column: 10, scope: !1083)
!1086 = !DILocation(line: 663, column: 7, scope: !180)
!1087 = !DILocation(line: 669, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !82, line: 665, column: 5)
!1089 = !DILocation(line: 671, column: 5, scope: !1088)
!1090 = !DILocation(line: 676, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1083, file: !82, line: 673, column: 5)
!1092 = !DILocation(line: 679, column: 3, scope: !180)
!1093 = !DILocation(line: 683, column: 3, scope: !180)
!1094 = !DILocation(line: 686, column: 3, scope: !180)
!1095 = !DILocation(line: 688, column: 3, scope: !180)
!1096 = !DILocation(line: 691, column: 3, scope: !180)
!1097 = !DILocation(line: 695, column: 3, scope: !180)
!1098 = !DILocation(line: 696, column: 1, scope: !180)
!1099 = !DISubprogram(name: "setlocale", scope: !1100, file: !1100, line: 122, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1100 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!136, !83, !142}
!1103 = !DISubprogram(name: "strncmp", scope: !1104, file: !1104, line: 159, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1104 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!83, !142, !142, !139}
!1107 = !DISubprogram(name: "exit", scope: !1108, file: !1108, line: 624, type: !907, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1108 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1109 = !DISubprogram(name: "getenv", scope: !1108, file: !1108, line: 641, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!136, !142}
!1112 = !DISubprogram(name: "strcmp", scope: !1104, file: !1104, line: 156, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!83, !142, !142}
!1115 = !DISubprogram(name: "strspn", scope: !1104, file: !1104, line: 297, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!141, !142, !142}
!1118 = !DISubprogram(name: "strchr", scope: !1104, file: !1104, line: 246, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!136, !142, !83}
!1121 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1124}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!1127 = !DISubprogram(name: "strcspn", scope: !1104, file: !1104, line: 293, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1128 = !DISubprogram(name: "fwrite_unlocked", scope: !509, file: !509, line: 704, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!139, !1131, !139, !139, !977}
!1131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1134 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 289, type: !1135, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1138)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!83, !83, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1146}
!1139 = !DILocalVariable(name: "argc", arg: 1, scope: !1134, file: !2, line: 289, type: !83)
!1140 = !DILocalVariable(name: "argv", arg: 2, scope: !1134, file: !2, line: 289, type: !1137)
!1141 = !DILocalVariable(name: "width", scope: !1134, file: !2, line: 291, type: !139)
!1142 = !DILocalVariable(name: "optc", scope: !1134, file: !2, line: 292, type: !83)
!1143 = !DILocalVariable(name: "ok", scope: !1134, file: !2, line: 293, type: !168)
!1144 = !DILocalVariable(name: "optargbuf", scope: !1145, file: !2, line: 305, type: !163)
!1145 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 304, column: 5)
!1146 = !DILocalVariable(name: "i", scope: !1147, file: !2, line: 352, type: !83)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 352, column: 7)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 350, column: 5)
!1149 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 347, column: 7)
!1150 = !DILocation(line: 0, scope: !1134)
!1151 = !DILocation(line: 296, column: 21, scope: !1134)
!1152 = !DILocation(line: 296, column: 3, scope: !1134)
!1153 = !DILocation(line: 297, column: 3, scope: !1134)
!1154 = !DILocation(line: 298, column: 3, scope: !1134)
!1155 = !DILocation(line: 299, column: 3, scope: !1134)
!1156 = !DILocation(line: 301, column: 3, scope: !1134)
!1157 = !DILocation(line: 303, column: 18, scope: !1134)
!1158 = !DILocation(line: 303, column: 71, scope: !1134)
!1159 = !DILocation(line: 303, column: 3, scope: !1134)
!1160 = !DILocation(line: 305, column: 7, scope: !1145)
!1161 = !DILocation(line: 305, column: 12, scope: !1145)
!1162 = !DILocation(line: 307, column: 7, scope: !1145)
!1163 = !DILocation(line: 333, column: 31, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 308, column: 9)
!1165 = !DILocation(line: 310, column: 25, scope: !1164)
!1166 = !DILocation(line: 311, column: 11, scope: !1164)
!1167 = !DILocation(line: 314, column: 25, scope: !1164)
!1168 = !DILocation(line: 315, column: 11, scope: !1164)
!1169 = !DILocation(line: 318, column: 24, scope: !1164)
!1170 = !DILocation(line: 319, column: 11, scope: !1164)
!1171 = !DILocation(line: 323, column: 15, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 323, column: 15)
!1173 = !DILocation(line: 323, column: 15, scope: !1164)
!1174 = !DILocation(line: 324, column: 19, scope: !1172)
!1175 = !DILocation(line: 324, column: 13, scope: !1172)
!1176 = !DILocation(line: 327, column: 30, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 326, column: 13)
!1178 = !DILocation(line: 327, column: 28, scope: !1177)
!1179 = !DILocation(line: 328, column: 28, scope: !1177)
!1180 = !DILocation(line: 329, column: 22, scope: !1177)
!1181 = !DILocation(line: 334, column: 31, scope: !1164)
!1182 = !DILocation(line: 333, column: 19, scope: !1164)
!1183 = !DILocation(line: 336, column: 11, scope: !1164)
!1184 = !DILocation(line: 338, column: 9, scope: !1164)
!1185 = !DILocation(line: 340, column: 9, scope: !1164)
!1186 = !DILocation(line: 343, column: 11, scope: !1164)
!1187 = !DILocation(line: 345, column: 5, scope: !1134)
!1188 = distinct !{!1188, !1159, !1187, !1034}
!1189 = !DILocation(line: 347, column: 15, scope: !1149)
!1190 = !DILocation(line: 347, column: 12, scope: !1149)
!1191 = !DILocation(line: 347, column: 7, scope: !1134)
!1192 = !DILocation(line: 0, scope: !1147)
!1193 = !DILocation(line: 352, column: 30, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 352, column: 7)
!1195 = !DILocation(line: 352, column: 7, scope: !1147)
!1196 = !DILocation(line: 348, column: 10, scope: !1149)
!1197 = !DILocation(line: 348, column: 5, scope: !1149)
!1198 = !DILocation(line: 353, column: 26, scope: !1194)
!1199 = !DILocation(line: 353, column: 15, scope: !1194)
!1200 = !DILocation(line: 353, column: 12, scope: !1194)
!1201 = !DILocation(line: 352, column: 39, scope: !1194)
!1202 = distinct !{!1202, !1195, !1203, !1034}
!1203 = !DILocation(line: 353, column: 40, scope: !1147)
!1204 = !DILocation(line: 356, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 356, column: 7)
!1206 = !DILocation(line: 356, column: 23, scope: !1205)
!1207 = !DILocation(line: 356, column: 34, scope: !1205)
!1208 = !DILocation(line: 356, column: 26, scope: !1205)
!1209 = !DILocation(line: 356, column: 41, scope: !1205)
!1210 = !DILocation(line: 356, column: 7, scope: !1134)
!1211 = !DILocation(line: 357, column: 5, scope: !1205)
!1212 = !DILocation(line: 359, column: 10, scope: !1134)
!1213 = !DILocation(line: 359, column: 3, scope: !1134)
!1214 = !DISubprogram(name: "bindtextdomain", scope: !970, file: !970, line: 86, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!136, !142, !142}
!1217 = !DISubprogram(name: "textdomain", scope: !970, file: !970, line: 82, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1218 = !DISubprogram(name: "atexit", scope: !1108, file: !1108, line: 602, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!83, !549}
!1221 = !DISubprogram(name: "getopt_long", scope: !392, file: !392, line: 66, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!83, !83, !1224, !142, !1226, !397}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1227 = !DILocation(line: 0, scope: !403)
!1228 = !DILocation(line: 0, scope: !999, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 169, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !403, file: !2, line: 169, column: 7)
!1231 = !DILocation(line: 1361, column: 11, scope: !999, inlinedAt: !1229)
!1232 = !DILocation(line: 1361, column: 10, scope: !999, inlinedAt: !1229)
!1233 = !DILocation(line: 169, column: 7, scope: !403)
!1234 = !DILocation(line: 171, column: 17, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 170, column: 5)
!1236 = !DILocation(line: 172, column: 23, scope: !1235)
!1237 = !DILocation(line: 173, column: 5, scope: !1235)
!1238 = !DILocation(line: 175, column: 15, scope: !1230)
!1239 = !DILocation(line: 0, scope: !1230)
!1240 = !DILocation(line: 177, column: 15, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !403, file: !2, line: 177, column: 7)
!1242 = !DILocation(line: 177, column: 7, scope: !403)
!1243 = !DILocation(line: 179, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 178, column: 5)
!1245 = !DILocation(line: 180, column: 7, scope: !1244)
!1246 = !DILocation(line: 183, column: 3, scope: !403)
!1247 = !DILocation(line: 187, column: 3, scope: !403)
!1248 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1249, file: !417, line: 71, type: !1252)
!1249 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !417, file: !417, line: 71, type: !1250, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1253)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!427, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1253 = !{!1248, !1254, !1255, !1258}
!1254 = !DILocalVariable(name: "available", scope: !1249, file: !417, line: 73, type: !412)
!1255 = !DILocalVariable(name: "start", scope: !1256, file: !417, line: 77, type: !412)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !417, line: 76, column: 5)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !417, line: 75, column: 7)
!1258 = !DILocalVariable(name: "g", scope: !1249, file: !417, line: 92, type: !427)
!1259 = !DILocation(line: 0, scope: !1249, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 187, column: 15, scope: !403)
!1261 = !DILocation(line: 73, column: 35, scope: !1249, inlinedAt: !1260)
!1262 = !DILocation(line: 75, column: 17, scope: !1257, inlinedAt: !1260)
!1263 = !DILocation(line: 75, column: 32, scope: !1257, inlinedAt: !1260)
!1264 = !DILocalVariable(name: "__stream", arg: 1, scope: !1265, file: !1266, line: 128, type: !202)
!1265 = distinct !DISubprogram(name: "feof_unlocked", scope: !1266, file: !1266, line: 128, type: !1267, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1269)
!1266 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!83, !202}
!1269 = !{!1264}
!1270 = !DILocation(line: 0, scope: !1265, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 75, column: 37, scope: !1257, inlinedAt: !1260)
!1272 = !DILocation(line: 130, column: 10, scope: !1265, inlinedAt: !1271)
!1273 = !{!1274, !988, i64 0}
!1274 = !{!"_IO_FILE", !988, i64 0, !918, i64 8, !918, i64 16, !918, i64 24, !918, i64 32, !918, i64 40, !918, i64 48, !918, i64 56, !918, i64 64, !918, i64 72, !918, i64 80, !918, i64 88, !918, i64 96, !918, i64 104, !988, i64 112, !988, i64 116, !1275, i64 120, !1029, i64 128, !919, i64 130, !919, i64 131, !918, i64 136, !1275, i64 144, !918, i64 152, !918, i64 160, !918, i64 168, !918, i64 176, !1275, i64 184, !988, i64 192, !919, i64 196}
!1275 = !{!"long", !919, i64 0}
!1276 = !DILocation(line: 75, column: 37, scope: !1257, inlinedAt: !1260)
!1277 = !DILocation(line: 75, column: 7, scope: !1249, inlinedAt: !1260)
!1278 = !DILocation(line: 78, column: 15, scope: !1279, inlinedAt: !1260)
!1279 = distinct !DILexicalBlock(scope: !1256, file: !417, line: 78, column: 11)
!1280 = !DILocation(line: 78, column: 11, scope: !1256, inlinedAt: !1260)
!1281 = !DILocation(line: 82, column: 49, scope: !1282, inlinedAt: !1260)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !417, line: 81, column: 9)
!1283 = !DILocalVariable(name: "__dest", arg: 1, scope: !1284, file: !1285, line: 34, type: !137)
!1284 = distinct !DISubprogram(name: "memmove", scope: !1285, file: !1285, line: 34, type: !1286, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1288)
!1285 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!137, !137, !1132, !139}
!1288 = !{!1283, !1289, !1290}
!1289 = !DILocalVariable(name: "__src", arg: 2, scope: !1284, file: !1285, line: 34, type: !1132)
!1290 = !DILocalVariable(name: "__len", arg: 3, scope: !1284, file: !1285, line: 34, type: !139)
!1291 = !DILocation(line: 0, scope: !1284, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 82, column: 11, scope: !1282, inlinedAt: !1260)
!1293 = !DILocation(line: 36, column: 10, scope: !1284, inlinedAt: !1292)
!1294 = !DILocation(line: 0, scope: !1256, inlinedAt: !1260)
!1295 = !DILocation(line: 0, scope: !1279, inlinedAt: !1260)
!1296 = !DILocation(line: 85, column: 23, scope: !1256, inlinedAt: !1260)
!1297 = !DILocation(line: 86, column: 41, scope: !1256, inlinedAt: !1260)
!1298 = !DILocation(line: 89, column: 5, scope: !1256, inlinedAt: !1260)
!1299 = !DILocation(line: 90, column: 17, scope: !1300, inlinedAt: !1260)
!1300 = distinct !DILexicalBlock(scope: !1249, file: !417, line: 90, column: 7)
!1301 = !DILocation(line: 90, column: 7, scope: !1249, inlinedAt: !1260)
!1302 = !DILocation(line: 92, column: 39, scope: !1249, inlinedAt: !1260)
!1303 = !DILocalVariable(name: "p", arg: 1, scope: !1304, file: !126, line: 230, type: !142)
!1304 = distinct !DISubprogram(name: "mcel_scan", scope: !126, file: !126, line: 230, type: !1305, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!427, !142, !142}
!1307 = !{!1303, !1308, !1309, !1310, !1321, !1322}
!1308 = !DILocalVariable(name: "lim", arg: 2, scope: !1304, file: !126, line: 230, type: !142)
!1309 = !DILocalVariable(name: "c", scope: !1304, file: !126, line: 235, type: !4)
!1310 = !DILocalVariable(name: "mbs", scope: !1304, file: !126, line: 244, type: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1313, file: !579, line: 15, baseType: !83, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1313, file: !579, line: 20, baseType: !1317, size: 32, offset: 32)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !579, line: 16, size: 32, elements: !1318)
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1317, file: !579, line: 18, baseType: !69, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1317, file: !579, line: 19, baseType: !266, size: 32)
!1321 = !DILocalVariable(name: "ch", scope: !1304, file: !126, line: 267, type: !431)
!1322 = !DILocalVariable(name: "len", scope: !1304, file: !126, line: 268, type: !139)
!1323 = !DILocation(line: 0, scope: !1304, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 92, column: 14, scope: !1249, inlinedAt: !1260)
!1325 = !DILocation(line: 235, column: 12, scope: !1304, inlinedAt: !1324)
!1326 = !DILocalVariable(name: "c", arg: 1, scope: !1327, file: !126, line: 215, type: !4)
!1327 = distinct !DISubprogram(name: "mcel_isbasic", scope: !126, file: !126, line: 215, type: !1328, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1330)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!168, !4}
!1330 = !{!1326}
!1331 = !DILocation(line: 0, scope: !1327, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 236, column: 7, scope: !1333, inlinedAt: !1324)
!1333 = distinct !DILexicalBlock(scope: !1304, file: !126, line: 236, column: 7)
!1334 = !DILocation(line: 217, column: 10, scope: !1327, inlinedAt: !1332)
!1335 = !DILocation(line: 236, column: 7, scope: !1304, inlinedAt: !1324)
!1336 = !DILocalVariable(name: "len", arg: 2, scope: !1337, file: !126, line: 167, type: !139)
!1337 = distinct !DISubprogram(name: "mcel_ch", scope: !126, file: !126, line: 167, type: !1338, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!427, !431, !139}
!1340 = !{!1341, !1336}
!1341 = !DILocalVariable(name: "ch", arg: 1, scope: !1337, file: !126, line: 167, type: !431)
!1342 = !DILocation(line: 0, scope: !1337, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 237, column: 12, scope: !1333, inlinedAt: !1324)
!1344 = !DILocation(line: 172, column: 3, scope: !1337, inlinedAt: !1343)
!1345 = !DILocation(line: 237, column: 5, scope: !1333, inlinedAt: !1324)
!1346 = !DILocation(line: 93, column: 39, scope: !1249, inlinedAt: !1260)
!1347 = !DILocation(line: 244, column: 3, scope: !1304, inlinedAt: !1324)
!1348 = !DILocation(line: 244, column: 13, scope: !1304, inlinedAt: !1324)
!1349 = !DILocation(line: 244, column: 30, scope: !1304, inlinedAt: !1324)
!1350 = !{!1351, !988, i64 0}
!1351 = !{!"", !988, i64 0, !919, i64 4}
!1352 = !DILocation(line: 267, column: 3, scope: !1304, inlinedAt: !1324)
!1353 = !DILocation(line: 268, column: 38, scope: !1304, inlinedAt: !1324)
!1354 = !DILocation(line: 268, column: 16, scope: !1304, inlinedAt: !1324)
!1355 = !DILocation(line: 274, column: 7, scope: !1356, inlinedAt: !1324)
!1356 = distinct !DILexicalBlock(scope: !1304, file: !126, line: 274, column: 7)
!1357 = !DILocation(line: 274, column: 7, scope: !1304, inlinedAt: !1324)
!1358 = !{!"branch_weights", i32 1, i32 2000}
!1359 = !DILocalVariable(name: "err", arg: 1, scope: !1360, file: !126, line: 175, type: !144)
!1360 = distinct !DISubprogram(name: "mcel_err", scope: !126, file: !126, line: 175, type: !1361, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!427, !144}
!1363 = !{!1359}
!1364 = !DILocation(line: 0, scope: !1360, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 275, column: 12, scope: !1356, inlinedAt: !1324)
!1366 = !DILocation(line: 178, column: 3, scope: !1360, inlinedAt: !1365)
!1367 = !DILocation(line: 275, column: 5, scope: !1356, inlinedAt: !1324)
!1368 = !DILocation(line: 279, column: 19, scope: !1304, inlinedAt: !1324)
!1369 = !DILocation(line: 0, scope: !1337, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 279, column: 10, scope: !1304, inlinedAt: !1324)
!1371 = !DILocation(line: 169, column: 3, scope: !1337, inlinedAt: !1370)
!1372 = !DILocation(line: 170, column: 3, scope: !1337, inlinedAt: !1370)
!1373 = !DILocation(line: 171, column: 3, scope: !1337, inlinedAt: !1370)
!1374 = !DILocation(line: 172, column: 3, scope: !1337, inlinedAt: !1370)
!1375 = !DILocation(line: 279, column: 3, scope: !1304, inlinedAt: !1324)
!1376 = !DILocation(line: 280, column: 1, scope: !1304, inlinedAt: !1324)
!1377 = !DILocation(line: 94, column: 9, scope: !1378, inlinedAt: !1260)
!1378 = distinct !DILexicalBlock(scope: !1249, file: !417, line: 94, column: 7)
!1379 = !DILocation(line: 94, column: 7, scope: !1249, inlinedAt: !1260)
!1380 = !DILocation(line: 92, column: 14, scope: !1249, inlinedAt: !1260)
!1381 = !DILocation(line: 95, column: 5, scope: !1378, inlinedAt: !1260)
!1382 = !DILocation(line: 99, column: 30, scope: !1383, inlinedAt: !1260)
!1383 = distinct !DILexicalBlock(scope: !1378, file: !417, line: 97, column: 5)
!1384 = !DILocation(line: 99, column: 14, scope: !1383, inlinedAt: !1260)
!1385 = !DILocation(line: 0, scope: !1378, inlinedAt: !1260)
!1386 = !DILocation(line: 187, column: 15, scope: !403)
!1387 = !DILocation(line: 117, column: 7, scope: !1388, inlinedAt: !1403)
!1388 = distinct !DISubprogram(name: "adjust_column", scope: !2, file: !2, line: 115, type: !1389, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!139, !139, !427}
!1391 = !{!1392, !1393, !1394}
!1392 = !DILocalVariable(name: "column", arg: 1, scope: !1388, file: !2, line: 115, type: !139)
!1393 = !DILocalVariable(name: "g", arg: 2, scope: !1388, file: !2, line: 115, type: !427)
!1394 = !DILocalVariable(name: "width", scope: !1395, file: !2, line: 134, type: !83)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 133, column: 13)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 130, column: 15)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 129, column: 9)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 126, column: 16)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 124, column: 16)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 119, column: 11)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 118, column: 5)
!1402 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 117, column: 7)
!1403 = distinct !DILocation(line: 196, column: 16, scope: !442)
!1404 = !DILocation(line: 191, column: 11, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 190, column: 9)
!1406 = distinct !DILexicalBlock(scope: !442, file: !2, line: 189, column: 11)
!1407 = !DILocation(line: 193, column: 11, scope: !1405)
!1408 = distinct !{!1408, !1247, !1409, !1034}
!1409 = !DILocation(line: 265, column: 5, scope: !403)
!1410 = !DILocation(line: 195, column: 5, scope: !442)
!1411 = !DILocation(line: 0, scope: !1388, inlinedAt: !1403)
!1412 = !DILocation(line: 117, column: 7, scope: !1402, inlinedAt: !1403)
!1413 = !DILocation(line: 117, column: 21, scope: !1402, inlinedAt: !1403)
!1414 = !DILocation(line: 119, column: 11, scope: !1401, inlinedAt: !1403)
!1415 = !DILocation(line: 121, column: 22, scope: !1416, inlinedAt: !1403)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 121, column: 15)
!1417 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 120, column: 9)
!1418 = !DILocation(line: 121, column: 15, scope: !1417, inlinedAt: !1403)
!1419 = !DILocation(line: 122, column: 23, scope: !1416, inlinedAt: !1403)
!1420 = !DILocation(line: 122, column: 20, scope: !1416, inlinedAt: !1403)
!1421 = !DILocation(line: 122, column: 13, scope: !1416, inlinedAt: !1403)
!1422 = !DILocation(line: 127, column: 16, scope: !1398, inlinedAt: !1403)
!1423 = !DILocation(line: 127, column: 9, scope: !1398, inlinedAt: !1403)
!1424 = !DILocation(line: 130, column: 29, scope: !1396, inlinedAt: !1403)
!1425 = !DILocation(line: 130, column: 15, scope: !1397, inlinedAt: !1403)
!1426 = !DILocalVariable(name: "wc", arg: 1, scope: !1427, file: !1428, line: 1004, type: !431)
!1427 = distinct !DISubprogram(name: "c32width", scope: !1428, file: !1428, line: 1004, type: !1429, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1431)
!1428 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!83, !431}
!1431 = !{!1426}
!1432 = !DILocation(line: 0, scope: !1427, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 134, column: 27, scope: !1395, inlinedAt: !1403)
!1434 = !DILocation(line: 1010, column: 10, scope: !1427, inlinedAt: !1433)
!1435 = !DILocation(line: 0, scope: !1395, inlinedAt: !1403)
!1436 = !DILocation(line: 136, column: 44, scope: !1395, inlinedAt: !1403)
!1437 = !DILocation(line: 136, column: 38, scope: !1395, inlinedAt: !1403)
!1438 = !DILocation(line: 0, scope: !1396, inlinedAt: !1403)
!1439 = !DILocation(line: 138, column: 21, scope: !1397, inlinedAt: !1403)
!1440 = !DILocation(line: 138, column: 18, scope: !1397, inlinedAt: !1403)
!1441 = !DILocation(line: 142, column: 12, scope: !1402, inlinedAt: !1403)
!1442 = !DILocation(line: 198, column: 18, scope: !441)
!1443 = !DILocation(line: 198, column: 11, scope: !442)
!1444 = !DILocation(line: 203, column: 15, scope: !439)
!1445 = !DILocation(line: 203, column: 15, scope: !440)
!1446 = !DILocation(line: 0, scope: !438)
!1447 = !DILocation(line: 208, column: 45, scope: !438)
!1448 = !DILocation(line: 210, column: 41, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !447, file: !2, line: 210, column: 15)
!1450 = !DILocation(line: 210, column: 15, scope: !447)
!1451 = !DILocation(line: 220, column: 19, scope: !450)
!1452 = !DILocation(line: 220, column: 19, scope: !438)
!1453 = !DILocation(line: 0, scope: !1304, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 212, column: 24, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 211, column: 17)
!1456 = !DILocation(line: 235, column: 12, scope: !1304, inlinedAt: !1454)
!1457 = !DILocation(line: 0, scope: !1327, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 236, column: 7, scope: !1333, inlinedAt: !1454)
!1459 = !DILocation(line: 217, column: 10, scope: !1327, inlinedAt: !1458)
!1460 = !DILocation(line: 236, column: 7, scope: !1304, inlinedAt: !1454)
!1461 = !DILocation(line: 0, scope: !1337, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 237, column: 12, scope: !1333, inlinedAt: !1454)
!1463 = !DILocation(line: 172, column: 3, scope: !1337, inlinedAt: !1462)
!1464 = !DILocation(line: 213, column: 23, scope: !1455)
!1465 = !DILocation(line: 237, column: 5, scope: !1333, inlinedAt: !1454)
!1466 = !DILocation(line: 244, column: 3, scope: !1304, inlinedAt: !1454)
!1467 = !DILocation(line: 244, column: 13, scope: !1304, inlinedAt: !1454)
!1468 = !DILocation(line: 244, column: 30, scope: !1304, inlinedAt: !1454)
!1469 = !DILocation(line: 267, column: 3, scope: !1304, inlinedAt: !1454)
!1470 = !DILocation(line: 268, column: 38, scope: !1304, inlinedAt: !1454)
!1471 = !DILocation(line: 268, column: 16, scope: !1304, inlinedAt: !1454)
!1472 = !DILocation(line: 274, column: 7, scope: !1356, inlinedAt: !1454)
!1473 = !DILocation(line: 274, column: 7, scope: !1304, inlinedAt: !1454)
!1474 = !DILocation(line: 279, column: 19, scope: !1304, inlinedAt: !1454)
!1475 = !DILocation(line: 0, scope: !1337, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 279, column: 10, scope: !1304, inlinedAt: !1454)
!1477 = !DILocation(line: 169, column: 3, scope: !1337, inlinedAt: !1476)
!1478 = !DILocation(line: 170, column: 3, scope: !1337, inlinedAt: !1476)
!1479 = !DILocation(line: 171, column: 3, scope: !1337, inlinedAt: !1476)
!1480 = !DILocation(line: 172, column: 3, scope: !1337, inlinedAt: !1476)
!1481 = !DILocation(line: 279, column: 3, scope: !1304, inlinedAt: !1454)
!1482 = !DILocation(line: 280, column: 1, scope: !1304, inlinedAt: !1454)
!1483 = !DILocation(line: 212, column: 24, scope: !1455)
!1484 = !DILocation(line: 0, scope: !447)
!1485 = !DILocalVariable(name: "wc", arg: 1, scope: !1486, file: !82, line: 178, type: !431)
!1486 = distinct !DISubprogram(name: "c32issep", scope: !82, file: !82, line: 178, type: !1487, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!168, !431}
!1489 = !{!1485}
!1490 = !DILocation(line: 0, scope: !1486, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 213, column: 23, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 213, column: 23)
!1493 = !DILocalVariable(name: "wc", arg: 1, scope: !1494, file: !1428, line: 770, type: !1497)
!1494 = distinct !DISubprogram(name: "c32isblank", scope: !1428, file: !1428, line: 770, type: !1495, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1499)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!83, !1497}
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1498, line: 20, baseType: !69)
!1498 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1499 = !{!1493}
!1500 = !DILocation(line: 0, scope: !1494, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 181, column: 13, scope: !1486, inlinedAt: !1491)
!1502 = !DILocation(line: 776, column: 10, scope: !1494, inlinedAt: !1501)
!1503 = !DILocation(line: 181, column: 11, scope: !1486, inlinedAt: !1491)
!1504 = !DILocation(line: 210, column: 66, scope: !1449)
!1505 = distinct !{!1505, !1450, !1506, !1034}
!1506 = !DILocation(line: 218, column: 17, scope: !447)
!1507 = !DILocation(line: 222, column: 31, scope: !449)
!1508 = !DILocation(line: 224, column: 19, scope: !449)
!1509 = !DILocation(line: 227, column: 47, scope: !449)
!1510 = !DILocation(line: 228, column: 39, scope: !449)
!1511 = !DILocation(line: 0, scope: !1284, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 227, column: 19, scope: !449)
!1513 = !DILocation(line: 36, column: 10, scope: !1284, inlinedAt: !1512)
!1514 = !DILocation(line: 0, scope: !449)
!1515 = !DILocation(line: 232, column: 49, scope: !449)
!1516 = !DILocation(line: 233, column: 45, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !453, file: !2, line: 233, column: 19)
!1518 = !DILocation(line: 233, column: 19, scope: !453)
!1519 = !DILocation(line: 0, scope: !1304, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 236, column: 28, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 235, column: 21)
!1522 = !DILocation(line: 235, column: 12, scope: !1304, inlinedAt: !1520)
!1523 = !DILocation(line: 0, scope: !1327, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 236, column: 7, scope: !1333, inlinedAt: !1520)
!1525 = !DILocation(line: 217, column: 10, scope: !1327, inlinedAt: !1524)
!1526 = !DILocation(line: 236, column: 7, scope: !1304, inlinedAt: !1520)
!1527 = !DILocation(line: 0, scope: !1337, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 237, column: 12, scope: !1333, inlinedAt: !1520)
!1529 = !DILocation(line: 172, column: 3, scope: !1337, inlinedAt: !1528)
!1530 = !DILocation(line: 237, column: 5, scope: !1333, inlinedAt: !1520)
!1531 = !DILocation(line: 244, column: 3, scope: !1304, inlinedAt: !1520)
!1532 = !DILocation(line: 244, column: 13, scope: !1304, inlinedAt: !1520)
!1533 = !DILocation(line: 244, column: 30, scope: !1304, inlinedAt: !1520)
!1534 = !DILocation(line: 267, column: 3, scope: !1304, inlinedAt: !1520)
!1535 = !DILocation(line: 268, column: 38, scope: !1304, inlinedAt: !1520)
!1536 = !DILocation(line: 268, column: 16, scope: !1304, inlinedAt: !1520)
!1537 = !DILocation(line: 274, column: 7, scope: !1356, inlinedAt: !1520)
!1538 = !DILocation(line: 274, column: 7, scope: !1304, inlinedAt: !1520)
!1539 = !DILocation(line: 279, column: 19, scope: !1304, inlinedAt: !1520)
!1540 = !DILocation(line: 0, scope: !1337, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 279, column: 10, scope: !1304, inlinedAt: !1520)
!1542 = !DILocation(line: 169, column: 3, scope: !1337, inlinedAt: !1541)
!1543 = !DILocation(line: 170, column: 3, scope: !1337, inlinedAt: !1541)
!1544 = !DILocation(line: 171, column: 3, scope: !1337, inlinedAt: !1541)
!1545 = !DILocation(line: 172, column: 3, scope: !1337, inlinedAt: !1541)
!1546 = !DILocation(line: 279, column: 3, scope: !1304, inlinedAt: !1520)
!1547 = !DILocation(line: 280, column: 1, scope: !1304, inlinedAt: !1520)
!1548 = !DILocation(line: 0, scope: !453)
!1549 = !DILocation(line: 236, column: 28, scope: !1521)
!1550 = !DILocation(line: 0, scope: !1388, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 237, column: 32, scope: !1521)
!1552 = !DILocation(line: 117, column: 7, scope: !1402, inlinedAt: !1551)
!1553 = !DILocation(line: 117, column: 21, scope: !1402, inlinedAt: !1551)
!1554 = !DILocation(line: 117, column: 7, scope: !1388, inlinedAt: !1551)
!1555 = !DILocation(line: 119, column: 11, scope: !1401, inlinedAt: !1551)
!1556 = !DILocation(line: 121, column: 22, scope: !1416, inlinedAt: !1551)
!1557 = !DILocation(line: 121, column: 15, scope: !1417, inlinedAt: !1551)
!1558 = !DILocation(line: 122, column: 23, scope: !1416, inlinedAt: !1551)
!1559 = !DILocation(line: 122, column: 20, scope: !1416, inlinedAt: !1551)
!1560 = !DILocation(line: 122, column: 13, scope: !1416, inlinedAt: !1551)
!1561 = !DILocation(line: 127, column: 16, scope: !1398, inlinedAt: !1551)
!1562 = !DILocation(line: 127, column: 9, scope: !1398, inlinedAt: !1551)
!1563 = !DILocation(line: 130, column: 29, scope: !1396, inlinedAt: !1551)
!1564 = !DILocation(line: 130, column: 15, scope: !1397, inlinedAt: !1551)
!1565 = !DILocation(line: 0, scope: !1427, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 134, column: 27, scope: !1395, inlinedAt: !1551)
!1567 = !DILocation(line: 1010, column: 10, scope: !1427, inlinedAt: !1566)
!1568 = !DILocation(line: 0, scope: !1395, inlinedAt: !1551)
!1569 = !DILocation(line: 136, column: 44, scope: !1395, inlinedAt: !1551)
!1570 = !DILocation(line: 136, column: 38, scope: !1395, inlinedAt: !1551)
!1571 = !DILocation(line: 0, scope: !1396, inlinedAt: !1551)
!1572 = !DILocation(line: 138, column: 21, scope: !1397, inlinedAt: !1551)
!1573 = !DILocation(line: 138, column: 18, scope: !1397, inlinedAt: !1551)
!1574 = !DILocation(line: 142, column: 12, scope: !1402, inlinedAt: !1551)
!1575 = !DILocation(line: 234, column: 34, scope: !1517)
!1576 = distinct !{!1576, !1518, !1577, !1034}
!1577 = !DILocation(line: 238, column: 21, scope: !453)
!1578 = !DILocation(line: 243, column: 26, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !440, file: !2, line: 243, column: 15)
!1580 = !DILocation(line: 243, column: 15, scope: !440)
!1581 = !DILocalVariable(name: "g", arg: 2, scope: !1582, file: !417, line: 107, type: !427)
!1582 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !417, file: !417, line: 107, type: !1583, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!136, !1252, !427}
!1585 = !{!1586, !1581}
!1586 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1582, file: !417, line: 107, type: !1252)
!1587 = !DILocation(line: 0, scope: !1582, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 245, column: 33, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 244, column: 13)
!1590 = !DILocation(line: 109, column: 21, scope: !1591, inlinedAt: !1588)
!1591 = distinct !DILexicalBlock(scope: !1582, file: !417, line: 109, column: 7)
!1592 = !DILocation(line: 109, column: 7, scope: !1582, inlinedAt: !1588)
!1593 = !DILocation(line: 111, column: 41, scope: !1582, inlinedAt: !1588)
!1594 = !DILocation(line: 111, column: 24, scope: !1582, inlinedAt: !1588)
!1595 = !DILocalVariable(name: "__dest", arg: 1, scope: !1596, file: !1285, line: 26, type: !1599)
!1596 = distinct !DISubprogram(name: "memcpy", scope: !1285, file: !1285, line: 26, type: !1597, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1600)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!137, !1599, !1131, !139}
!1599 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1600 = !{!1595, !1601, !1602}
!1601 = !DILocalVariable(name: "__src", arg: 2, scope: !1596, file: !1285, line: 26, type: !1131)
!1602 = !DILocalVariable(name: "__len", arg: 3, scope: !1596, file: !1285, line: 26, type: !139)
!1603 = !DILocation(line: 0, scope: !1596, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 245, column: 15, scope: !1589)
!1605 = !DILocation(line: 29, column: 10, scope: !1596, inlinedAt: !1604)
!1606 = !{!1607, !1609}
!1607 = distinct !{!1607, !1608, !"memcpy.inline: argument 0"}
!1608 = distinct !{!1608, !"memcpy.inline"}
!1609 = distinct !{!1609, !1608, !"memcpy.inline: argument 1"}
!1610 = !DILocation(line: 247, column: 15, scope: !1589)
!1611 = !DILocation(line: 250, column: 11, scope: !440)
!1612 = !DILocation(line: 252, column: 11, scope: !440)
!1613 = !DILocation(line: 257, column: 41, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !442, file: !2, line: 257, column: 11)
!1615 = !DILocation(line: 257, column: 27, scope: !1614)
!1616 = !DILocation(line: 257, column: 11, scope: !442)
!1617 = !DILocation(line: 259, column: 11, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 258, column: 9)
!1619 = !DILocation(line: 261, column: 9, scope: !1618)
!1620 = !DILocation(line: 263, column: 24, scope: !442)
!1621 = !DILocation(line: 0, scope: !1582, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 263, column: 38, scope: !442)
!1623 = !DILocation(line: 109, column: 21, scope: !1591, inlinedAt: !1622)
!1624 = !DILocation(line: 109, column: 7, scope: !1582, inlinedAt: !1622)
!1625 = !DILocation(line: 111, column: 41, scope: !1582, inlinedAt: !1622)
!1626 = !DILocation(line: 111, column: 24, scope: !1582, inlinedAt: !1622)
!1627 = !DILocation(line: 0, scope: !1596, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 263, column: 7, scope: !442)
!1629 = !DILocation(line: 29, column: 10, scope: !1596, inlinedAt: !1628)
!1630 = !DILocation(line: 264, column: 18, scope: !442)
!1631 = !DILocation(line: 267, column: 17, scope: !403)
!1632 = !DILocalVariable(name: "__stream", arg: 1, scope: !1633, file: !1266, line: 135, type: !202)
!1633 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1266, file: !1266, line: 135, type: !1267, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1634)
!1634 = !{!1632}
!1635 = !DILocation(line: 0, scope: !1633, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 268, column: 8, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !403, file: !2, line: 268, column: 7)
!1638 = !DILocation(line: 137, column: 10, scope: !1633, inlinedAt: !1636)
!1639 = !DILocation(line: 268, column: 8, scope: !1637)
!1640 = !DILocation(line: 268, column: 7, scope: !403)
!1641 = !DILocation(line: 271, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !403, file: !2, line: 271, column: 7)
!1643 = !DILocation(line: 271, column: 7, scope: !403)
!1644 = !DILocation(line: 272, column: 5, scope: !1642)
!1645 = !DILocation(line: 0, scope: !999, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 274, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !403, file: !2, line: 274, column: 7)
!1648 = !DILocation(line: 1361, column: 11, scope: !999, inlinedAt: !1646)
!1649 = !DILocation(line: 1361, column: 10, scope: !999, inlinedAt: !1646)
!1650 = !DILocation(line: 274, column: 7, scope: !403)
!1651 = !DILocation(line: 275, column: 5, scope: !1647)
!1652 = !DILocation(line: 276, column: 12, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1647, file: !2, line: 276, column: 12)
!1654 = !DILocation(line: 276, column: 29, scope: !1653)
!1655 = !DILocation(line: 276, column: 34, scope: !1653)
!1656 = !DILocation(line: 277, column: 19, scope: !1653)
!1657 = !DILocation(line: 277, column: 5, scope: !1653)
!1658 = !DILocation(line: 279, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !403, file: !2, line: 279, column: 7)
!1660 = !DILocation(line: 279, column: 7, scope: !403)
!1661 = !DILocation(line: 281, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 280, column: 5)
!1663 = !DILocation(line: 282, column: 7, scope: !1662)
!1664 = !DILocation(line: 286, column: 1, scope: !403)
!1665 = !DISubprogram(name: "__errno_location", scope: !1666, file: !1666, line: 37, type: !1667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1666 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!397}
!1669 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1670, file: !1670, line: 25, type: !1671, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1670 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!137, !137, !1132, !141, !141}
!1673 = !DISubprogram(name: "mbrtoc32", scope: !432, file: !432, line: 57, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!139, !1676, !978, !139, !1678}
!1676 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1680 = distinct !DISubprogram(name: "write_out", scope: !2, file: !2, line: 147, type: !1681, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1683)
!1681 = !DISubroutineType(cc: DW_CC_nocall, types: !1682)
!1682 = !{null, !142, !139, !168}
!1683 = !{!1684, !1685, !1686, !1687, !1690, !1691}
!1684 = !DILocalVariable(name: "line", arg: 1, scope: !1680, file: !2, line: 147, type: !142)
!1685 = !DILocalVariable(name: "line_len", arg: 2, scope: !1680, file: !2, line: 147, type: !139)
!1686 = !DILocalVariable(name: "newline", arg: 3, scope: !1680, file: !2, line: 147, type: !168)
!1687 = !DILocalVariable(name: "__ptr", scope: !1688, file: !2, line: 149, type: !142)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 149, column: 7)
!1689 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 149, column: 7)
!1690 = !DILocalVariable(name: "__stream", scope: !1688, file: !2, line: 149, type: !202)
!1691 = !DILocalVariable(name: "__cnt", scope: !1688, file: !2, line: 149, type: !139)
!1692 = !DILocation(line: 0, scope: !1680)
!1693 = !DILocation(line: 149, column: 7, scope: !1689)
!1694 = !DILocation(line: 149, column: 54, scope: !1689)
!1695 = !DILocation(line: 150, column: 7, scope: !1689)
!1696 = !DILocation(line: 150, column: 19, scope: !1689)
!1697 = !DILocalVariable(name: "__c", arg: 1, scope: !1698, file: !1266, line: 108, type: !83)
!1698 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1266, file: !1266, line: 108, type: !1699, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!83, !83}
!1701 = !{!1697}
!1702 = !DILocation(line: 0, scope: !1698, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 150, column: 22, scope: !1689)
!1704 = !DILocation(line: 110, column: 10, scope: !1698, inlinedAt: !1703)
!1705 = !{!1274, !918, i64 40}
!1706 = !{!1274, !918, i64 48}
!1707 = !{!"branch_weights", i32 2000, i32 1}
!1708 = !DILocation(line: 149, column: 7, scope: !1680)
!1709 = !DILocation(line: 150, column: 37, scope: !1689)
!1710 = !DILocation(line: 948, column: 21, scope: !1711, inlinedAt: !1714)
!1711 = distinct !DISubprogram(name: "write_error", scope: !82, file: !82, line: 946, type: !550, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1712)
!1712 = !{!1713}
!1713 = !DILocalVariable(name: "saved_errno", scope: !1711, file: !82, line: 948, type: !83)
!1714 = distinct !DILocation(line: 151, column: 5, scope: !1689)
!1715 = !DILocation(line: 0, scope: !1711, inlinedAt: !1714)
!1716 = !DILocation(line: 949, column: 3, scope: !1711, inlinedAt: !1714)
!1717 = !DILocation(line: 950, column: 11, scope: !1711, inlinedAt: !1714)
!1718 = !DILocation(line: 950, column: 3, scope: !1711, inlinedAt: !1714)
!1719 = !DILocation(line: 951, column: 3, scope: !1711, inlinedAt: !1714)
!1720 = !DILocation(line: 952, column: 3, scope: !1711, inlinedAt: !1714)
!1721 = !DILocation(line: 152, column: 1, scope: !1680)
!1722 = !DISubprogram(name: "wcwidth", scope: !1723, file: !1723, line: 368, type: !1724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1723 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!83, !1726}
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !140, line: 74, baseType: !69)
!1727 = !DISubprogram(name: "iswblank", scope: !1728, file: !1728, line: 146, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1728 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1729 = !DISubprogram(name: "__builtin___memcpy_chk", scope: !1285, file: !1285, line: 29, type: !1671, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1730 = !DISubprogram(name: "clearerr_unlocked", scope: !509, file: !509, line: 794, type: !1731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !202}
!1733 = !DISubprogram(name: "__overflow", scope: !509, file: !509, line: 886, type: !1734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!83, !202, !83}
!1736 = !DISubprogram(name: "fflush_unlocked", scope: !509, file: !509, line: 239, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1737 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !483, file: !483, line: 50, type: !939, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1738)
!1738 = !{!1739}
!1739 = !DILocalVariable(name: "file", arg: 1, scope: !1737, file: !483, line: 50, type: !142)
!1740 = !DILocation(line: 0, scope: !1737)
!1741 = !DILocation(line: 52, column: 13, scope: !1737)
!1742 = !DILocation(line: 53, column: 1, scope: !1737)
!1743 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !483, file: !483, line: 87, type: !1744, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !168}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "ignore", arg: 1, scope: !1743, file: !483, line: 87, type: !168)
!1748 = !DILocation(line: 0, scope: !1743)
!1749 = !DILocation(line: 89, column: 16, scope: !1743)
!1750 = !{!1751, !1751, i64 0}
!1751 = !{!"_Bool", !919, i64 0}
!1752 = !DILocation(line: 90, column: 1, scope: !1743)
!1753 = distinct !DISubprogram(name: "close_stdout", scope: !483, file: !483, line: 116, type: !550, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1754)
!1754 = !{!1755}
!1755 = !DILocalVariable(name: "write_error", scope: !1756, file: !483, line: 121, type: !142)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !483, line: 120, column: 5)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !483, line: 118, column: 7)
!1758 = !DILocation(line: 118, column: 21, scope: !1757)
!1759 = !DILocation(line: 118, column: 7, scope: !1757)
!1760 = !DILocation(line: 118, column: 29, scope: !1757)
!1761 = !DILocation(line: 119, column: 7, scope: !1757)
!1762 = !DILocation(line: 119, column: 12, scope: !1757)
!1763 = !{i8 0, i8 2}
!1764 = !DILocation(line: 119, column: 25, scope: !1757)
!1765 = !DILocation(line: 119, column: 28, scope: !1757)
!1766 = !DILocation(line: 119, column: 34, scope: !1757)
!1767 = !DILocation(line: 118, column: 7, scope: !1753)
!1768 = !DILocation(line: 121, column: 33, scope: !1756)
!1769 = !DILocation(line: 0, scope: !1756)
!1770 = !DILocation(line: 122, column: 11, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1756, file: !483, line: 122, column: 11)
!1772 = !DILocation(line: 0, scope: !1771)
!1773 = !DILocation(line: 122, column: 11, scope: !1756)
!1774 = !DILocation(line: 123, column: 9, scope: !1771)
!1775 = !DILocation(line: 126, column: 9, scope: !1771)
!1776 = !DILocation(line: 128, column: 14, scope: !1756)
!1777 = !DILocation(line: 128, column: 7, scope: !1756)
!1778 = !DILocation(line: 133, column: 42, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1753, file: !483, line: 133, column: 7)
!1780 = !DILocation(line: 133, column: 28, scope: !1779)
!1781 = !DILocation(line: 133, column: 50, scope: !1779)
!1782 = !DILocation(line: 133, column: 7, scope: !1753)
!1783 = !DILocation(line: 134, column: 12, scope: !1779)
!1784 = !DILocation(line: 134, column: 5, scope: !1779)
!1785 = !DILocation(line: 135, column: 1, scope: !1753)
!1786 = !DISubprogram(name: "_exit", scope: !1787, file: !1787, line: 624, type: !907, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1787 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1788 = distinct !DISubprogram(name: "verror", scope: !498, file: !498, line: 251, type: !1789, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1791)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{null, !83, !83, !142, !508}
!1791 = !{!1792, !1793, !1794, !1795}
!1792 = !DILocalVariable(name: "status", arg: 1, scope: !1788, file: !498, line: 251, type: !83)
!1793 = !DILocalVariable(name: "errnum", arg: 2, scope: !1788, file: !498, line: 251, type: !83)
!1794 = !DILocalVariable(name: "message", arg: 3, scope: !1788, file: !498, line: 251, type: !142)
!1795 = !DILocalVariable(name: "args", arg: 4, scope: !1788, file: !498, line: 251, type: !508)
!1796 = !DILocation(line: 0, scope: !1788)
!1797 = !DILocation(line: 251, column: 1, scope: !1788)
!1798 = !DILocation(line: 261, column: 3, scope: !1788)
!1799 = !DILocation(line: 265, column: 7, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1788, file: !498, line: 265, column: 7)
!1801 = !DILocation(line: 265, column: 7, scope: !1788)
!1802 = !DILocation(line: 266, column: 5, scope: !1800)
!1803 = !DILocation(line: 272, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !498, line: 268, column: 5)
!1805 = !DILocation(line: 276, column: 3, scope: !1788)
!1806 = !{i64 0, i64 8, !917, i64 8, i64 8, !917, i64 16, i64 8, !917, i64 24, i64 4, !987, i64 28, i64 4, !987}
!1807 = !DILocation(line: 282, column: 1, scope: !1788)
!1808 = distinct !DISubprogram(name: "flush_stdout", scope: !498, file: !498, line: 163, type: !550, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1809)
!1809 = !{!1810}
!1810 = !DILocalVariable(name: "stdout_fd", scope: !1808, file: !498, line: 166, type: !83)
!1811 = !DILocation(line: 0, scope: !1808)
!1812 = !DILocalVariable(name: "fd", arg: 1, scope: !1813, file: !498, line: 145, type: !83)
!1813 = distinct !DISubprogram(name: "is_open", scope: !498, file: !498, line: 145, type: !1699, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1814)
!1814 = !{!1812}
!1815 = !DILocation(line: 0, scope: !1813, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 182, column: 25, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1808, file: !498, line: 182, column: 7)
!1818 = !DILocation(line: 157, column: 15, scope: !1813, inlinedAt: !1816)
!1819 = !DILocation(line: 157, column: 12, scope: !1813, inlinedAt: !1816)
!1820 = !DILocation(line: 182, column: 7, scope: !1808)
!1821 = !DILocation(line: 184, column: 5, scope: !1817)
!1822 = !DILocation(line: 185, column: 1, scope: !1808)
!1823 = distinct !DISubprogram(name: "error_tail", scope: !498, file: !498, line: 219, type: !1789, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1824)
!1824 = !{!1825, !1826, !1827, !1828}
!1825 = !DILocalVariable(name: "status", arg: 1, scope: !1823, file: !498, line: 219, type: !83)
!1826 = !DILocalVariable(name: "errnum", arg: 2, scope: !1823, file: !498, line: 219, type: !83)
!1827 = !DILocalVariable(name: "message", arg: 3, scope: !1823, file: !498, line: 219, type: !142)
!1828 = !DILocalVariable(name: "args", arg: 4, scope: !1823, file: !498, line: 219, type: !508)
!1829 = !DILocation(line: 0, scope: !1823)
!1830 = !DILocation(line: 219, column: 1, scope: !1823)
!1831 = !DILocation(line: 229, column: 13, scope: !1823)
!1832 = !DILocation(line: 135, column: 10, scope: !1833, inlinedAt: !1875)
!1833 = distinct !DISubprogram(name: "vfprintf", scope: !974, file: !974, line: 132, type: !1834, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1871)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!83, !1836, !978, !510}
!1836 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1837)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1839, file: !206, line: 51, baseType: !83, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1839, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1839, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1839, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1839, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1839, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1839, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1839, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1839, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1839, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1839, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1839, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1839, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1839, file: !206, line: 70, baseType: !1855, size: 64, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1839, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1839, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1839, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1839, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1839, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1839, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1839, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1839, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1839, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1839, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1839, file: !206, line: 93, baseType: !1855, size: 64, offset: 1344)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1839, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1839, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1839, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1839, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!1871 = !{!1872, !1873, !1874}
!1872 = !DILocalVariable(name: "__stream", arg: 1, scope: !1833, file: !974, line: 132, type: !1836)
!1873 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1833, file: !974, line: 133, type: !978)
!1874 = !DILocalVariable(name: "__ap", arg: 3, scope: !1833, file: !974, line: 133, type: !510)
!1875 = distinct !DILocation(line: 229, column: 3, scope: !1823)
!1876 = !{!1877, !1879}
!1877 = distinct !{!1877, !1878, !"vfprintf.inline: argument 0"}
!1878 = distinct !{!1878, !"vfprintf.inline"}
!1879 = distinct !{!1879, !1878, !"vfprintf.inline: argument 1"}
!1880 = !DILocation(line: 229, column: 3, scope: !1823)
!1881 = !DILocation(line: 0, scope: !1833, inlinedAt: !1875)
!1882 = !DILocation(line: 133, column: 49, scope: !1833, inlinedAt: !1875)
!1883 = !DILocation(line: 232, column: 3, scope: !1823)
!1884 = !DILocation(line: 233, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1823, file: !498, line: 233, column: 7)
!1886 = !DILocation(line: 233, column: 7, scope: !1823)
!1887 = !DILocalVariable(name: "errnum", arg: 1, scope: !1888, file: !498, line: 188, type: !83)
!1888 = distinct !DISubprogram(name: "print_errno_message", scope: !498, file: !498, line: 188, type: !907, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1889)
!1889 = !{!1887, !1890, !1891}
!1890 = !DILocalVariable(name: "s", scope: !1888, file: !498, line: 190, type: !142)
!1891 = !DILocalVariable(name: "errbuf", scope: !1888, file: !498, line: 193, type: !1892)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1893)
!1893 = !{!1894}
!1894 = !DISubrange(count: 1024)
!1895 = !DILocation(line: 0, scope: !1888, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 234, column: 5, scope: !1885)
!1897 = !DILocation(line: 193, column: 3, scope: !1888, inlinedAt: !1896)
!1898 = !DILocation(line: 193, column: 8, scope: !1888, inlinedAt: !1896)
!1899 = !DILocation(line: 195, column: 7, scope: !1888, inlinedAt: !1896)
!1900 = !DILocation(line: 207, column: 9, scope: !1901, inlinedAt: !1896)
!1901 = distinct !DILexicalBlock(scope: !1888, file: !498, line: 207, column: 7)
!1902 = !DILocation(line: 207, column: 7, scope: !1888, inlinedAt: !1896)
!1903 = !DILocation(line: 208, column: 9, scope: !1901, inlinedAt: !1896)
!1904 = !DILocation(line: 208, column: 5, scope: !1901, inlinedAt: !1896)
!1905 = !DILocation(line: 214, column: 3, scope: !1888, inlinedAt: !1896)
!1906 = !DILocation(line: 216, column: 1, scope: !1888, inlinedAt: !1896)
!1907 = !DILocation(line: 234, column: 5, scope: !1885)
!1908 = !DILocation(line: 238, column: 3, scope: !1823)
!1909 = !DILocalVariable(name: "__c", arg: 1, scope: !1910, file: !1266, line: 101, type: !83)
!1910 = distinct !DISubprogram(name: "putc_unlocked", scope: !1266, file: !1266, line: 101, type: !1911, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!83, !83, !1837}
!1913 = !{!1909, !1914}
!1914 = !DILocalVariable(name: "__stream", arg: 2, scope: !1910, file: !1266, line: 101, type: !1837)
!1915 = !DILocation(line: 0, scope: !1910, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 238, column: 3, scope: !1823)
!1917 = !DILocation(line: 103, column: 10, scope: !1910, inlinedAt: !1916)
!1918 = !DILocation(line: 240, column: 3, scope: !1823)
!1919 = !DILocation(line: 241, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1823, file: !498, line: 241, column: 7)
!1921 = !DILocation(line: 241, column: 7, scope: !1823)
!1922 = !DILocation(line: 242, column: 5, scope: !1920)
!1923 = !DILocation(line: 243, column: 1, scope: !1823)
!1924 = !DISubprogram(name: "__vfprintf_chk", scope: !974, file: !974, line: 96, type: !1925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!83, !1836, !83, !978, !510}
!1927 = !DISubprogram(name: "strerror_r", scope: !1104, file: !1104, line: 444, type: !1928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!136, !83, !136, !139}
!1930 = !DISubprogram(name: "fcntl", scope: !1931, file: !1931, line: 149, type: !1932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!1931 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!83, !83, !83, null}
!1934 = distinct !DISubprogram(name: "error", scope: !498, file: !498, line: 285, type: !1935, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !83, !83, !142, null}
!1937 = !{!1938, !1939, !1940, !1941}
!1938 = !DILocalVariable(name: "status", arg: 1, scope: !1934, file: !498, line: 285, type: !83)
!1939 = !DILocalVariable(name: "errnum", arg: 2, scope: !1934, file: !498, line: 285, type: !83)
!1940 = !DILocalVariable(name: "message", arg: 3, scope: !1934, file: !498, line: 285, type: !142)
!1941 = !DILocalVariable(name: "ap", scope: !1934, file: !498, line: 287, type: !508)
!1942 = !DILocation(line: 0, scope: !1934)
!1943 = !DILocation(line: 287, column: 3, scope: !1934)
!1944 = !DILocation(line: 287, column: 11, scope: !1934)
!1945 = !DILocation(line: 288, column: 3, scope: !1934)
!1946 = !DILocation(line: 289, column: 3, scope: !1934)
!1947 = !DILocation(line: 290, column: 3, scope: !1934)
!1948 = !DILocation(line: 291, column: 1, scope: !1934)
!1949 = !DILocation(line: 0, scope: !505)
!1950 = !DILocation(line: 298, column: 1, scope: !505)
!1951 = !DILocation(line: 302, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !505, file: !498, line: 302, column: 7)
!1953 = !DILocation(line: 302, column: 7, scope: !505)
!1954 = !DILocation(line: 307, column: 11, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !498, line: 307, column: 11)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !498, line: 303, column: 5)
!1957 = !DILocation(line: 307, column: 27, scope: !1955)
!1958 = !DILocation(line: 308, column: 11, scope: !1955)
!1959 = !DILocation(line: 308, column: 28, scope: !1955)
!1960 = !DILocation(line: 308, column: 25, scope: !1955)
!1961 = !DILocation(line: 309, column: 15, scope: !1955)
!1962 = !DILocation(line: 309, column: 33, scope: !1955)
!1963 = !DILocation(line: 310, column: 19, scope: !1955)
!1964 = !DILocation(line: 311, column: 22, scope: !1955)
!1965 = !DILocation(line: 311, column: 56, scope: !1955)
!1966 = !DILocation(line: 307, column: 11, scope: !1956)
!1967 = !DILocation(line: 316, column: 21, scope: !1956)
!1968 = !DILocation(line: 317, column: 23, scope: !1956)
!1969 = !DILocation(line: 318, column: 5, scope: !1956)
!1970 = !DILocation(line: 327, column: 3, scope: !505)
!1971 = !DILocation(line: 331, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !505, file: !498, line: 331, column: 7)
!1973 = !DILocation(line: 331, column: 7, scope: !505)
!1974 = !DILocation(line: 332, column: 5, scope: !1972)
!1975 = !DILocation(line: 338, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !498, line: 334, column: 5)
!1977 = !DILocation(line: 346, column: 3, scope: !505)
!1978 = !DILocation(line: 350, column: 3, scope: !505)
!1979 = !DILocation(line: 356, column: 1, scope: !505)
!1980 = distinct !DISubprogram(name: "error_at_line", scope: !498, file: !498, line: 359, type: !1981, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !83, !83, !142, !69, !142, null}
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989}
!1984 = !DILocalVariable(name: "status", arg: 1, scope: !1980, file: !498, line: 359, type: !83)
!1985 = !DILocalVariable(name: "errnum", arg: 2, scope: !1980, file: !498, line: 359, type: !83)
!1986 = !DILocalVariable(name: "file_name", arg: 3, scope: !1980, file: !498, line: 359, type: !142)
!1987 = !DILocalVariable(name: "line_number", arg: 4, scope: !1980, file: !498, line: 360, type: !69)
!1988 = !DILocalVariable(name: "message", arg: 5, scope: !1980, file: !498, line: 360, type: !142)
!1989 = !DILocalVariable(name: "ap", scope: !1980, file: !498, line: 362, type: !508)
!1990 = !DILocation(line: 0, scope: !1980)
!1991 = !DILocation(line: 362, column: 3, scope: !1980)
!1992 = !DILocation(line: 362, column: 11, scope: !1980)
!1993 = !DILocation(line: 363, column: 3, scope: !1980)
!1994 = !DILocation(line: 364, column: 3, scope: !1980)
!1995 = !DILocation(line: 366, column: 3, scope: !1980)
!1996 = !DILocation(line: 367, column: 1, scope: !1980)
!1997 = distinct !DISubprogram(name: "fdadvise", scope: !814, file: !814, line: 25, type: !1998, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !2002)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !83, !2000, !2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !509, line: 63, baseType: !228)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !117, line: 51, baseType: !116)
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DILocalVariable(name: "fd", arg: 1, scope: !1997, file: !814, line: 25, type: !83)
!2004 = !DILocalVariable(name: "offset", arg: 2, scope: !1997, file: !814, line: 25, type: !2000)
!2005 = !DILocalVariable(name: "len", arg: 3, scope: !1997, file: !814, line: 25, type: !2000)
!2006 = !DILocalVariable(name: "advice", arg: 4, scope: !1997, file: !814, line: 25, type: !2001)
!2007 = !DILocation(line: 0, scope: !1997)
!2008 = !DILocation(line: 28, column: 3, scope: !1997)
!2009 = !DILocation(line: 30, column: 1, scope: !1997)
!2010 = !DISubprogram(name: "posix_fadvise", scope: !1931, file: !1931, line: 273, type: !2011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!83, !83, !2000, !2000, !83}
!2013 = distinct !DISubprogram(name: "fadvise", scope: !814, file: !814, line: 33, type: !2014, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !2050)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !2016, !2001}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2018)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2018, file: !206, line: 51, baseType: !83, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2018, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2018, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2018, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2018, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2018, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2018, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2018, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2018, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2018, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2018, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2018, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2018, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2018, file: !206, line: 70, baseType: !2034, size: 64, offset: 832)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2018, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2018, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2018, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2018, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2018, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2018, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2018, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2018, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2018, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2018, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2018, file: !206, line: 93, baseType: !2034, size: 64, offset: 1344)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2018, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2018, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2018, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2018, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2050 = !{!2051, !2052}
!2051 = !DILocalVariable(name: "fp", arg: 1, scope: !2013, file: !814, line: 33, type: !2016)
!2052 = !DILocalVariable(name: "advice", arg: 2, scope: !2013, file: !814, line: 33, type: !2001)
!2053 = !DILocation(line: 0, scope: !2013)
!2054 = !DILocation(line: 35, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2013, file: !814, line: 35, column: 7)
!2056 = !DILocation(line: 35, column: 7, scope: !2013)
!2057 = !DILocation(line: 36, column: 15, scope: !2055)
!2058 = !DILocation(line: 0, scope: !1997, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 36, column: 5, scope: !2055)
!2060 = !DILocation(line: 28, column: 3, scope: !1997, inlinedAt: !2059)
!2061 = !DILocation(line: 36, column: 5, scope: !2055)
!2062 = !DILocation(line: 37, column: 1, scope: !2013)
!2063 = !DISubprogram(name: "fileno", scope: !509, file: !509, line: 809, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!83, !2016}
!2066 = distinct !DISubprogram(name: "rpl_fclose", scope: !817, file: !817, line: 58, type: !2067, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !2103)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!83, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2071, file: !206, line: 51, baseType: !83, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2071, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2071, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2071, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2071, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2071, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2071, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2071, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2071, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2071, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2071, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2071, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2071, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2071, file: !206, line: 70, baseType: !2087, size: 64, offset: 832)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2071, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2071, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2071, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2071, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2071, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2071, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2071, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2071, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2071, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2071, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2071, file: !206, line: 93, baseType: !2087, size: 64, offset: 1344)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2071, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2071, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2071, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2071, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2103 = !{!2104, !2105, !2106, !2107}
!2104 = !DILocalVariable(name: "fp", arg: 1, scope: !2066, file: !817, line: 58, type: !2069)
!2105 = !DILocalVariable(name: "saved_errno", scope: !2066, file: !817, line: 60, type: !83)
!2106 = !DILocalVariable(name: "fd", scope: !2066, file: !817, line: 63, type: !83)
!2107 = !DILocalVariable(name: "result", scope: !2066, file: !817, line: 74, type: !83)
!2108 = !DILocation(line: 0, scope: !2066)
!2109 = !DILocation(line: 63, column: 12, scope: !2066)
!2110 = !DILocation(line: 64, column: 10, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2066, file: !817, line: 64, column: 7)
!2112 = !DILocation(line: 64, column: 7, scope: !2066)
!2113 = !DILocation(line: 65, column: 12, scope: !2111)
!2114 = !DILocation(line: 65, column: 5, scope: !2111)
!2115 = !DILocation(line: 70, column: 9, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2066, file: !817, line: 70, column: 7)
!2117 = !DILocation(line: 70, column: 23, scope: !2116)
!2118 = !DILocation(line: 70, column: 33, scope: !2116)
!2119 = !DILocation(line: 70, column: 26, scope: !2116)
!2120 = !DILocation(line: 70, column: 59, scope: !2116)
!2121 = !DILocation(line: 71, column: 7, scope: !2116)
!2122 = !DILocation(line: 71, column: 10, scope: !2116)
!2123 = !DILocation(line: 70, column: 7, scope: !2066)
!2124 = !DILocation(line: 100, column: 12, scope: !2066)
!2125 = !DILocation(line: 105, column: 7, scope: !2066)
!2126 = !DILocation(line: 72, column: 19, scope: !2116)
!2127 = !DILocation(line: 105, column: 19, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2066, file: !817, line: 105, column: 7)
!2129 = !DILocation(line: 107, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2128, file: !817, line: 106, column: 5)
!2131 = !DILocation(line: 109, column: 5, scope: !2130)
!2132 = !DILocation(line: 112, column: 1, scope: !2066)
!2133 = !DISubprogram(name: "fclose", scope: !509, file: !509, line: 178, type: !2067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2134 = !DISubprogram(name: "__freading", scope: !2135, file: !2135, line: 51, type: !2067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2135 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2136 = !DISubprogram(name: "lseek", scope: !1787, file: !1787, line: 339, type: !2137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!228, !83, !228, !83}
!2139 = distinct !DISubprogram(name: "rpl_fflush", scope: !819, file: !819, line: 130, type: !2140, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !2176)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!83, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2144)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2144, file: !206, line: 51, baseType: !83, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2144, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2144, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2144, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2144, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2144, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2144, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2144, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2144, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2144, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2144, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2144, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2144, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2144, file: !206, line: 70, baseType: !2160, size: 64, offset: 832)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2144, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2144, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2144, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2144, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2144, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2144, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2144, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2144, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2144, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2144, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2144, file: !206, line: 93, baseType: !2160, size: 64, offset: 1344)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2144, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2144, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2144, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2144, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2176 = !{!2177}
!2177 = !DILocalVariable(name: "stream", arg: 1, scope: !2139, file: !819, line: 130, type: !2142)
!2178 = !DILocation(line: 0, scope: !2139)
!2179 = !DILocation(line: 151, column: 14, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2139, file: !819, line: 151, column: 7)
!2181 = !DILocation(line: 151, column: 22, scope: !2180)
!2182 = !DILocation(line: 151, column: 27, scope: !2180)
!2183 = !DILocation(line: 151, column: 7, scope: !2139)
!2184 = !DILocation(line: 152, column: 12, scope: !2180)
!2185 = !DILocation(line: 152, column: 5, scope: !2180)
!2186 = !DILocalVariable(name: "fp", arg: 1, scope: !2187, file: !819, line: 42, type: !2142)
!2187 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !819, file: !819, line: 42, type: !2188, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !2142}
!2190 = !{!2186}
!2191 = !DILocation(line: 0, scope: !2187, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 157, column: 3, scope: !2139)
!2193 = !DILocation(line: 44, column: 12, scope: !2194, inlinedAt: !2192)
!2194 = distinct !DILexicalBlock(scope: !2187, file: !819, line: 44, column: 7)
!2195 = !DILocation(line: 44, column: 19, scope: !2194, inlinedAt: !2192)
!2196 = !DILocation(line: 44, column: 7, scope: !2187, inlinedAt: !2192)
!2197 = !DILocation(line: 46, column: 5, scope: !2194, inlinedAt: !2192)
!2198 = !DILocation(line: 159, column: 10, scope: !2139)
!2199 = !DILocation(line: 159, column: 3, scope: !2139)
!2200 = !DILocation(line: 236, column: 1, scope: !2139)
!2201 = !DISubprogram(name: "fflush", scope: !509, file: !509, line: 230, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2202 = distinct !DISubprogram(name: "fpurge", scope: !822, file: !822, line: 32, type: !2203, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !2239)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!83, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2207)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2207, file: !206, line: 51, baseType: !83, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2207, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2207, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2207, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2207, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2207, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2207, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2207, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2207, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2207, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2207, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2207, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2207, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2207, file: !206, line: 70, baseType: !2223, size: 64, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2207, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2207, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2207, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2207, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2207, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2207, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2207, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2207, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2207, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2207, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2207, file: !206, line: 93, baseType: !2223, size: 64, offset: 1344)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2207, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2207, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2207, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2207, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2239 = !{!2240}
!2240 = !DILocalVariable(name: "fp", arg: 1, scope: !2202, file: !822, line: 32, type: !2205)
!2241 = !DILocation(line: 0, scope: !2202)
!2242 = !DILocation(line: 36, column: 3, scope: !2202)
!2243 = !DILocation(line: 38, column: 3, scope: !2202)
!2244 = !DISubprogram(name: "__fpurge", scope: !2135, file: !2135, line: 72, type: !2245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !2205}
!2247 = distinct !DISubprogram(name: "rpl_fseeko", scope: !824, file: !824, line: 28, type: !2248, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !2284)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!83, !2250, !2000, !83}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2252, file: !206, line: 51, baseType: !83, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2252, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2252, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2252, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2252, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2252, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2252, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2252, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2252, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2252, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2252, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2252, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2252, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2252, file: !206, line: 70, baseType: !2268, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2252, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2252, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2252, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2252, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2252, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2252, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2252, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2252, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2252, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2252, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2252, file: !206, line: 93, baseType: !2268, size: 64, offset: 1344)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2252, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2252, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2252, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2252, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2284 = !{!2285, !2286, !2287, !2288}
!2285 = !DILocalVariable(name: "fp", arg: 1, scope: !2247, file: !824, line: 28, type: !2250)
!2286 = !DILocalVariable(name: "offset", arg: 2, scope: !2247, file: !824, line: 28, type: !2000)
!2287 = !DILocalVariable(name: "whence", arg: 3, scope: !2247, file: !824, line: 28, type: !83)
!2288 = !DILocalVariable(name: "pos", scope: !2289, file: !824, line: 123, type: !2000)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !824, line: 119, column: 5)
!2290 = distinct !DILexicalBlock(scope: !2247, file: !824, line: 55, column: 7)
!2291 = !DILocation(line: 0, scope: !2247)
!2292 = !DILocation(line: 55, column: 12, scope: !2290)
!2293 = !{!1274, !918, i64 16}
!2294 = !DILocation(line: 55, column: 33, scope: !2290)
!2295 = !{!1274, !918, i64 8}
!2296 = !DILocation(line: 55, column: 25, scope: !2290)
!2297 = !DILocation(line: 56, column: 7, scope: !2290)
!2298 = !DILocation(line: 56, column: 15, scope: !2290)
!2299 = !DILocation(line: 56, column: 37, scope: !2290)
!2300 = !{!1274, !918, i64 32}
!2301 = !DILocation(line: 56, column: 29, scope: !2290)
!2302 = !DILocation(line: 57, column: 7, scope: !2290)
!2303 = !DILocation(line: 57, column: 15, scope: !2290)
!2304 = !{!1274, !918, i64 72}
!2305 = !DILocation(line: 57, column: 29, scope: !2290)
!2306 = !DILocation(line: 55, column: 7, scope: !2247)
!2307 = !DILocation(line: 123, column: 26, scope: !2289)
!2308 = !DILocation(line: 123, column: 19, scope: !2289)
!2309 = !DILocation(line: 0, scope: !2289)
!2310 = !DILocation(line: 124, column: 15, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2289, file: !824, line: 124, column: 11)
!2312 = !DILocation(line: 124, column: 11, scope: !2289)
!2313 = !DILocation(line: 135, column: 19, scope: !2289)
!2314 = !DILocation(line: 136, column: 12, scope: !2289)
!2315 = !DILocation(line: 136, column: 20, scope: !2289)
!2316 = !{!1274, !1275, i64 144}
!2317 = !DILocation(line: 167, column: 7, scope: !2289)
!2318 = !DILocation(line: 169, column: 10, scope: !2247)
!2319 = !DILocation(line: 169, column: 3, scope: !2247)
!2320 = !DILocation(line: 170, column: 1, scope: !2247)
!2321 = !DISubprogram(name: "fseeko", scope: !509, file: !509, line: 736, type: !2322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!83, !2250, !228, !83}
!2324 = distinct !DISubprogram(name: "getprogname", scope: !826, file: !826, line: 54, type: !2325, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !926)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!142}
!2327 = !DILocation(line: 58, column: 10, scope: !2324)
!2328 = !DILocation(line: 58, column: 3, scope: !2324)
!2329 = distinct !DISubprogram(name: "set_program_name", scope: !555, file: !555, line: 37, type: !939, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DILocalVariable(name: "argv0", arg: 1, scope: !2329, file: !555, line: 37, type: !142)
!2332 = !DILocalVariable(name: "slash", scope: !2329, file: !555, line: 44, type: !142)
!2333 = !DILocalVariable(name: "base", scope: !2329, file: !555, line: 45, type: !142)
!2334 = !DILocation(line: 0, scope: !2329)
!2335 = !DILocation(line: 44, column: 23, scope: !2329)
!2336 = !DILocation(line: 45, column: 22, scope: !2329)
!2337 = !DILocation(line: 46, column: 17, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2329, file: !555, line: 46, column: 7)
!2339 = !DILocation(line: 46, column: 9, scope: !2338)
!2340 = !DILocation(line: 46, column: 25, scope: !2338)
!2341 = !DILocation(line: 46, column: 40, scope: !2338)
!2342 = !DILocalVariable(name: "__s1", arg: 1, scope: !2343, file: !1000, line: 974, type: !1132)
!2343 = distinct !DISubprogram(name: "memeq", scope: !1000, file: !1000, line: 974, type: !2344, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!168, !1132, !1132, !139}
!2346 = !{!2342, !2347, !2348}
!2347 = !DILocalVariable(name: "__s2", arg: 2, scope: !2343, file: !1000, line: 974, type: !1132)
!2348 = !DILocalVariable(name: "__n", arg: 3, scope: !2343, file: !1000, line: 974, type: !139)
!2349 = !DILocation(line: 0, scope: !2343, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 46, column: 28, scope: !2338)
!2351 = !DILocation(line: 976, column: 11, scope: !2343, inlinedAt: !2350)
!2352 = !DILocation(line: 976, column: 10, scope: !2343, inlinedAt: !2350)
!2353 = !DILocation(line: 46, column: 7, scope: !2329)
!2354 = !DILocation(line: 49, column: 11, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !555, line: 49, column: 11)
!2356 = distinct !DILexicalBlock(scope: !2338, file: !555, line: 47, column: 5)
!2357 = !DILocation(line: 49, column: 36, scope: !2355)
!2358 = !DILocation(line: 49, column: 11, scope: !2356)
!2359 = !DILocation(line: 65, column: 16, scope: !2329)
!2360 = !DILocation(line: 71, column: 27, scope: !2329)
!2361 = !DILocation(line: 74, column: 33, scope: !2329)
!2362 = !DILocation(line: 76, column: 1, scope: !2329)
!2363 = !DISubprogram(name: "strrchr", scope: !1104, file: !1104, line: 273, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2364 = !DILocation(line: 0, scope: !564)
!2365 = !DILocation(line: 40, column: 29, scope: !564)
!2366 = !DILocation(line: 41, column: 19, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !564, file: !565, line: 41, column: 7)
!2368 = !DILocation(line: 41, column: 7, scope: !564)
!2369 = !DILocation(line: 47, column: 3, scope: !564)
!2370 = !DILocation(line: 48, column: 3, scope: !564)
!2371 = !DILocation(line: 48, column: 13, scope: !564)
!2372 = !DILocalVariable(name: "ps", arg: 1, scope: !2373, file: !2374, line: 1135, type: !2377)
!2373 = distinct !DISubprogram(name: "mbszero", scope: !2374, file: !2374, line: 1135, type: !2375, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2378)
!2374 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2378 = !{!2372}
!2379 = !DILocation(line: 0, scope: !2373, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 48, column: 18, scope: !564)
!2381 = !DILocalVariable(name: "__dest", arg: 1, scope: !2382, file: !1285, line: 57, type: !137)
!2382 = distinct !DISubprogram(name: "memset", scope: !1285, file: !1285, line: 57, type: !2383, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!137, !137, !83, !139}
!2385 = !{!2381, !2386, !2387}
!2386 = !DILocalVariable(name: "__ch", arg: 2, scope: !2382, file: !1285, line: 57, type: !83)
!2387 = !DILocalVariable(name: "__len", arg: 3, scope: !2382, file: !1285, line: 57, type: !139)
!2388 = !DILocation(line: 0, scope: !2382, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 1137, column: 3, scope: !2373, inlinedAt: !2380)
!2390 = !DILocation(line: 59, column: 10, scope: !2382, inlinedAt: !2389)
!2391 = !DILocation(line: 49, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !564, file: !565, line: 49, column: 7)
!2393 = !DILocation(line: 49, column: 39, scope: !2392)
!2394 = !DILocation(line: 49, column: 44, scope: !2392)
!2395 = !DILocation(line: 54, column: 1, scope: !564)
!2396 = distinct !DISubprogram(name: "clone_quoting_options", scope: !591, file: !591, line: 113, type: !2397, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2400)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!2399, !2399}
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!2400 = !{!2401, !2402, !2403}
!2401 = !DILocalVariable(name: "o", arg: 1, scope: !2396, file: !591, line: 113, type: !2399)
!2402 = !DILocalVariable(name: "saved_errno", scope: !2396, file: !591, line: 115, type: !83)
!2403 = !DILocalVariable(name: "p", scope: !2396, file: !591, line: 116, type: !2399)
!2404 = !DILocation(line: 0, scope: !2396)
!2405 = !DILocation(line: 115, column: 21, scope: !2396)
!2406 = !DILocation(line: 116, column: 40, scope: !2396)
!2407 = !DILocation(line: 116, column: 31, scope: !2396)
!2408 = !DILocation(line: 118, column: 9, scope: !2396)
!2409 = !DILocation(line: 119, column: 3, scope: !2396)
!2410 = distinct !DISubprogram(name: "get_quoting_style", scope: !591, file: !591, line: 124, type: !2411, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2415)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!102, !2413}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!2415 = !{!2416}
!2416 = !DILocalVariable(name: "o", arg: 1, scope: !2410, file: !591, line: 124, type: !2413)
!2417 = !DILocation(line: 0, scope: !2410)
!2418 = !DILocation(line: 126, column: 11, scope: !2410)
!2419 = !DILocation(line: 126, column: 46, scope: !2410)
!2420 = !{!2421, !919, i64 0}
!2421 = !{!"quoting_options", !919, i64 0, !988, i64 4, !919, i64 8, !918, i64 40, !918, i64 48}
!2422 = !DILocation(line: 126, column: 3, scope: !2410)
!2423 = distinct !DISubprogram(name: "set_quoting_style", scope: !591, file: !591, line: 132, type: !2424, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !2399, !102}
!2426 = !{!2427, !2428}
!2427 = !DILocalVariable(name: "o", arg: 1, scope: !2423, file: !591, line: 132, type: !2399)
!2428 = !DILocalVariable(name: "s", arg: 2, scope: !2423, file: !591, line: 132, type: !102)
!2429 = !DILocation(line: 0, scope: !2423)
!2430 = !DILocation(line: 134, column: 4, scope: !2423)
!2431 = !DILocation(line: 134, column: 45, scope: !2423)
!2432 = !DILocation(line: 135, column: 1, scope: !2423)
!2433 = distinct !DISubprogram(name: "set_char_quoting", scope: !591, file: !591, line: 143, type: !2434, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!83, !2399, !4, !83}
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2443, !2444}
!2437 = !DILocalVariable(name: "o", arg: 1, scope: !2433, file: !591, line: 143, type: !2399)
!2438 = !DILocalVariable(name: "c", arg: 2, scope: !2433, file: !591, line: 143, type: !4)
!2439 = !DILocalVariable(name: "i", arg: 3, scope: !2433, file: !591, line: 143, type: !83)
!2440 = !DILocalVariable(name: "uc", scope: !2433, file: !591, line: 145, type: !144)
!2441 = !DILocalVariable(name: "p", scope: !2433, file: !591, line: 146, type: !2442)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2443 = !DILocalVariable(name: "shift", scope: !2433, file: !591, line: 148, type: !83)
!2444 = !DILocalVariable(name: "r", scope: !2433, file: !591, line: 149, type: !69)
!2445 = !DILocation(line: 0, scope: !2433)
!2446 = !DILocation(line: 147, column: 6, scope: !2433)
!2447 = !DILocation(line: 147, column: 41, scope: !2433)
!2448 = !DILocation(line: 147, column: 62, scope: !2433)
!2449 = !DILocation(line: 147, column: 57, scope: !2433)
!2450 = !DILocation(line: 148, column: 15, scope: !2433)
!2451 = !DILocation(line: 149, column: 21, scope: !2433)
!2452 = !DILocation(line: 149, column: 24, scope: !2433)
!2453 = !DILocation(line: 149, column: 34, scope: !2433)
!2454 = !DILocation(line: 150, column: 19, scope: !2433)
!2455 = !DILocation(line: 150, column: 24, scope: !2433)
!2456 = !DILocation(line: 150, column: 6, scope: !2433)
!2457 = !DILocation(line: 151, column: 3, scope: !2433)
!2458 = distinct !DISubprogram(name: "set_quoting_flags", scope: !591, file: !591, line: 159, type: !2459, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!83, !2399, !83}
!2461 = !{!2462, !2463, !2464}
!2462 = !DILocalVariable(name: "o", arg: 1, scope: !2458, file: !591, line: 159, type: !2399)
!2463 = !DILocalVariable(name: "i", arg: 2, scope: !2458, file: !591, line: 159, type: !83)
!2464 = !DILocalVariable(name: "r", scope: !2458, file: !591, line: 163, type: !83)
!2465 = !DILocation(line: 0, scope: !2458)
!2466 = !DILocation(line: 161, column: 8, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2458, file: !591, line: 161, column: 7)
!2468 = !DILocation(line: 161, column: 7, scope: !2458)
!2469 = !DILocation(line: 163, column: 14, scope: !2458)
!2470 = !{!2421, !988, i64 4}
!2471 = !DILocation(line: 164, column: 12, scope: !2458)
!2472 = !DILocation(line: 165, column: 3, scope: !2458)
!2473 = distinct !DISubprogram(name: "set_custom_quoting", scope: !591, file: !591, line: 169, type: !2474, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2399, !142, !142}
!2476 = !{!2477, !2478, !2479}
!2477 = !DILocalVariable(name: "o", arg: 1, scope: !2473, file: !591, line: 169, type: !2399)
!2478 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2473, file: !591, line: 170, type: !142)
!2479 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2473, file: !591, line: 170, type: !142)
!2480 = !DILocation(line: 0, scope: !2473)
!2481 = !DILocation(line: 172, column: 8, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2473, file: !591, line: 172, column: 7)
!2483 = !DILocation(line: 172, column: 7, scope: !2473)
!2484 = !DILocation(line: 174, column: 12, scope: !2473)
!2485 = !DILocation(line: 175, column: 8, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2473, file: !591, line: 175, column: 7)
!2487 = !DILocation(line: 175, column: 19, scope: !2486)
!2488 = !DILocation(line: 176, column: 5, scope: !2486)
!2489 = !DILocation(line: 177, column: 6, scope: !2473)
!2490 = !DILocation(line: 177, column: 17, scope: !2473)
!2491 = !{!2421, !918, i64 40}
!2492 = !DILocation(line: 178, column: 6, scope: !2473)
!2493 = !DILocation(line: 178, column: 18, scope: !2473)
!2494 = !{!2421, !918, i64 48}
!2495 = !DILocation(line: 179, column: 1, scope: !2473)
!2496 = !DISubprogram(name: "abort", scope: !1108, file: !1108, line: 598, type: !550, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !926)
!2497 = distinct !DISubprogram(name: "quotearg_buffer", scope: !591, file: !591, line: 774, type: !2498, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!139, !136, !139, !142, !139, !2413}
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508}
!2501 = !DILocalVariable(name: "buffer", arg: 1, scope: !2497, file: !591, line: 774, type: !136)
!2502 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2497, file: !591, line: 774, type: !139)
!2503 = !DILocalVariable(name: "arg", arg: 3, scope: !2497, file: !591, line: 775, type: !142)
!2504 = !DILocalVariable(name: "argsize", arg: 4, scope: !2497, file: !591, line: 775, type: !139)
!2505 = !DILocalVariable(name: "o", arg: 5, scope: !2497, file: !591, line: 776, type: !2413)
!2506 = !DILocalVariable(name: "p", scope: !2497, file: !591, line: 778, type: !2413)
!2507 = !DILocalVariable(name: "saved_errno", scope: !2497, file: !591, line: 779, type: !83)
!2508 = !DILocalVariable(name: "r", scope: !2497, file: !591, line: 780, type: !139)
!2509 = !DILocation(line: 0, scope: !2497)
!2510 = !DILocation(line: 778, column: 37, scope: !2497)
!2511 = !DILocation(line: 779, column: 21, scope: !2497)
!2512 = !DILocation(line: 781, column: 43, scope: !2497)
!2513 = !DILocation(line: 781, column: 53, scope: !2497)
!2514 = !DILocation(line: 781, column: 63, scope: !2497)
!2515 = !DILocation(line: 782, column: 43, scope: !2497)
!2516 = !DILocation(line: 782, column: 58, scope: !2497)
!2517 = !DILocation(line: 780, column: 14, scope: !2497)
!2518 = !DILocation(line: 783, column: 9, scope: !2497)
!2519 = !DILocation(line: 784, column: 3, scope: !2497)
!2520 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !591, file: !591, line: 251, type: !2521, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2525)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!139, !136, !139, !142, !139, !102, !83, !2523, !142, !142}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2550, !2552, !2555, !2556, !2557, !2558, !2561, !2562, !2565, !2569, !2570, !2578, !2581, !2582, !2584, !2585, !2586, !2587}
!2526 = !DILocalVariable(name: "buffer", arg: 1, scope: !2520, file: !591, line: 251, type: !136)
!2527 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2520, file: !591, line: 251, type: !139)
!2528 = !DILocalVariable(name: "arg", arg: 3, scope: !2520, file: !591, line: 252, type: !142)
!2529 = !DILocalVariable(name: "argsize", arg: 4, scope: !2520, file: !591, line: 252, type: !139)
!2530 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2520, file: !591, line: 253, type: !102)
!2531 = !DILocalVariable(name: "flags", arg: 6, scope: !2520, file: !591, line: 253, type: !83)
!2532 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2520, file: !591, line: 254, type: !2523)
!2533 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2520, file: !591, line: 255, type: !142)
!2534 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2520, file: !591, line: 256, type: !142)
!2535 = !DILocalVariable(name: "unibyte_locale", scope: !2520, file: !591, line: 258, type: !168)
!2536 = !DILocalVariable(name: "len", scope: !2520, file: !591, line: 260, type: !139)
!2537 = !DILocalVariable(name: "orig_buffersize", scope: !2520, file: !591, line: 261, type: !139)
!2538 = !DILocalVariable(name: "quote_string", scope: !2520, file: !591, line: 262, type: !142)
!2539 = !DILocalVariable(name: "quote_string_len", scope: !2520, file: !591, line: 263, type: !139)
!2540 = !DILocalVariable(name: "backslash_escapes", scope: !2520, file: !591, line: 264, type: !168)
!2541 = !DILocalVariable(name: "elide_outer_quotes", scope: !2520, file: !591, line: 265, type: !168)
!2542 = !DILocalVariable(name: "encountered_single_quote", scope: !2520, file: !591, line: 266, type: !168)
!2543 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2520, file: !591, line: 267, type: !168)
!2544 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2520, file: !591, line: 309, type: !168)
!2545 = !DILocalVariable(name: "lq", scope: !2546, file: !591, line: 361, type: !142)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !591, line: 361, column: 11)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !591, line: 360, column: 13)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !591, line: 333, column: 7)
!2549 = distinct !DILexicalBlock(scope: !2520, file: !591, line: 312, column: 5)
!2550 = !DILocalVariable(name: "i", scope: !2551, file: !591, line: 395, type: !139)
!2551 = distinct !DILexicalBlock(scope: !2520, file: !591, line: 395, column: 3)
!2552 = !DILocalVariable(name: "is_right_quote", scope: !2553, file: !591, line: 397, type: !168)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !591, line: 396, column: 5)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !591, line: 395, column: 3)
!2555 = !DILocalVariable(name: "escaping", scope: !2553, file: !591, line: 398, type: !168)
!2556 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2553, file: !591, line: 399, type: !168)
!2557 = !DILocalVariable(name: "c", scope: !2553, file: !591, line: 417, type: !144)
!2558 = !DILocalVariable(name: "m", scope: !2559, file: !591, line: 598, type: !139)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !591, line: 596, column: 11)
!2560 = distinct !DILexicalBlock(scope: !2553, file: !591, line: 419, column: 9)
!2561 = !DILocalVariable(name: "printable", scope: !2559, file: !591, line: 600, type: !168)
!2562 = !DILocalVariable(name: "mbs", scope: !2563, file: !591, line: 609, type: !664)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !591, line: 608, column: 15)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !591, line: 602, column: 17)
!2565 = !DILocalVariable(name: "w", scope: !2566, file: !591, line: 618, type: !431)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !591, line: 617, column: 19)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !591, line: 616, column: 17)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !591, line: 616, column: 17)
!2569 = !DILocalVariable(name: "bytes", scope: !2566, file: !591, line: 619, type: !139)
!2570 = !DILocalVariable(name: "j", scope: !2571, file: !591, line: 648, type: !139)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !591, line: 648, column: 29)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !591, line: 647, column: 27)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !591, line: 645, column: 29)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !591, line: 636, column: 23)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !591, line: 628, column: 30)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !591, line: 623, column: 30)
!2577 = distinct !DILexicalBlock(scope: !2566, file: !591, line: 621, column: 25)
!2578 = !DILocalVariable(name: "ilim", scope: !2579, file: !591, line: 674, type: !139)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !591, line: 671, column: 15)
!2580 = distinct !DILexicalBlock(scope: !2559, file: !591, line: 670, column: 17)
!2581 = !DILabel(scope: !2520, name: "process_input", file: !591, line: 308)
!2582 = !DILabel(scope: !2583, name: "c_and_shell_escape", file: !591, line: 502)
!2583 = distinct !DILexicalBlock(scope: !2560, file: !591, line: 478, column: 9)
!2584 = !DILabel(scope: !2583, name: "c_escape", file: !591, line: 507)
!2585 = !DILabel(scope: !2553, name: "store_escape", file: !591, line: 709)
!2586 = !DILabel(scope: !2553, name: "store_c", file: !591, line: 712)
!2587 = !DILabel(scope: !2520, name: "force_outer_quoting_style", file: !591, line: 753)
!2588 = !DILocation(line: 0, scope: !2520)
!2589 = !DILocation(line: 258, column: 25, scope: !2520)
!2590 = !DILocation(line: 258, column: 36, scope: !2520)
!2591 = !DILocation(line: 267, column: 3, scope: !2520)
!2592 = !DILocation(line: 261, column: 10, scope: !2520)
!2593 = !DILocation(line: 262, column: 15, scope: !2520)
!2594 = !DILocation(line: 263, column: 10, scope: !2520)
!2595 = !DILocation(line: 308, column: 2, scope: !2520)
!2596 = !DILocation(line: 311, column: 3, scope: !2520)
!2597 = !DILocation(line: 318, column: 11, scope: !2549)
!2598 = !DILocation(line: 319, column: 9, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !591, line: 319, column: 9)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !591, line: 319, column: 9)
!2601 = distinct !DILexicalBlock(scope: !2549, file: !591, line: 318, column: 11)
!2602 = !DILocation(line: 319, column: 9, scope: !2600)
!2603 = !DILocation(line: 0, scope: !655, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 357, column: 26, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !591, line: 335, column: 11)
!2606 = distinct !DILexicalBlock(scope: !2548, file: !591, line: 334, column: 13)
!2607 = !DILocation(line: 199, column: 29, scope: !655, inlinedAt: !2604)
!2608 = !DILocation(line: 201, column: 19, scope: !2609, inlinedAt: !2604)
!2609 = distinct !DILexicalBlock(scope: !655, file: !591, line: 201, column: 7)
!2610 = !DILocation(line: 201, column: 7, scope: !655, inlinedAt: !2604)
!2611 = !DILocation(line: 229, column: 3, scope: !655, inlinedAt: !2604)
!2612 = !DILocation(line: 230, column: 3, scope: !655, inlinedAt: !2604)
!2613 = !DILocation(line: 230, column: 13, scope: !655, inlinedAt: !2604)
!2614 = !DILocalVariable(name: "ps", arg: 1, scope: !2615, file: !2374, line: 1135, type: !2618)
!2615 = distinct !DISubprogram(name: "mbszero", scope: !2374, file: !2374, line: 1135, type: !2616, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2619)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{null, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!2619 = !{!2614}
!2620 = !DILocation(line: 0, scope: !2615, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 230, column: 18, scope: !655, inlinedAt: !2604)
!2622 = !DILocalVariable(name: "__dest", arg: 1, scope: !2623, file: !1285, line: 57, type: !137)
!2623 = distinct !DISubprogram(name: "memset", scope: !1285, file: !1285, line: 57, type: !2383, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2624)
!2624 = !{!2622, !2625, !2626}
!2625 = !DILocalVariable(name: "__ch", arg: 2, scope: !2623, file: !1285, line: 57, type: !83)
!2626 = !DILocalVariable(name: "__len", arg: 3, scope: !2623, file: !1285, line: 57, type: !139)
!2627 = !DILocation(line: 0, scope: !2623, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 1137, column: 3, scope: !2615, inlinedAt: !2621)
!2629 = !DILocation(line: 59, column: 10, scope: !2623, inlinedAt: !2628)
!2630 = !DILocation(line: 231, column: 7, scope: !2631, inlinedAt: !2604)
!2631 = distinct !DILexicalBlock(scope: !655, file: !591, line: 231, column: 7)
!2632 = !DILocation(line: 231, column: 40, scope: !2631, inlinedAt: !2604)
!2633 = !DILocation(line: 231, column: 45, scope: !2631, inlinedAt: !2604)
!2634 = !DILocation(line: 235, column: 1, scope: !655, inlinedAt: !2604)
!2635 = !DILocation(line: 0, scope: !655, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 358, column: 27, scope: !2605)
!2637 = !DILocation(line: 199, column: 29, scope: !655, inlinedAt: !2636)
!2638 = !DILocation(line: 201, column: 19, scope: !2609, inlinedAt: !2636)
!2639 = !DILocation(line: 201, column: 7, scope: !655, inlinedAt: !2636)
!2640 = !DILocation(line: 229, column: 3, scope: !655, inlinedAt: !2636)
!2641 = !DILocation(line: 230, column: 3, scope: !655, inlinedAt: !2636)
!2642 = !DILocation(line: 230, column: 13, scope: !655, inlinedAt: !2636)
!2643 = !DILocation(line: 0, scope: !2615, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 230, column: 18, scope: !655, inlinedAt: !2636)
!2645 = !DILocation(line: 0, scope: !2623, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 1137, column: 3, scope: !2615, inlinedAt: !2644)
!2647 = !DILocation(line: 59, column: 10, scope: !2623, inlinedAt: !2646)
!2648 = !DILocation(line: 231, column: 7, scope: !2631, inlinedAt: !2636)
!2649 = !DILocation(line: 231, column: 40, scope: !2631, inlinedAt: !2636)
!2650 = !DILocation(line: 231, column: 45, scope: !2631, inlinedAt: !2636)
!2651 = !DILocation(line: 235, column: 1, scope: !655, inlinedAt: !2636)
!2652 = !DILocation(line: 360, column: 13, scope: !2548)
!2653 = !DILocation(line: 0, scope: !2546)
!2654 = !DILocation(line: 361, column: 45, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2546, file: !591, line: 361, column: 11)
!2656 = !DILocation(line: 361, column: 11, scope: !2546)
!2657 = !DILocation(line: 362, column: 13, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !591, line: 362, column: 13)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !591, line: 362, column: 13)
!2660 = !DILocation(line: 362, column: 13, scope: !2659)
!2661 = !DILocation(line: 361, column: 52, scope: !2655)
!2662 = distinct !{!2662, !2656, !2663, !1034}
!2663 = !DILocation(line: 362, column: 13, scope: !2546)
!2664 = !DILocation(line: 260, column: 10, scope: !2520)
!2665 = !DILocation(line: 365, column: 28, scope: !2548)
!2666 = !DILocation(line: 367, column: 7, scope: !2549)
!2667 = !DILocation(line: 370, column: 7, scope: !2549)
!2668 = !DILocation(line: 376, column: 11, scope: !2549)
!2669 = !DILocation(line: 381, column: 11, scope: !2549)
!2670 = !DILocation(line: 382, column: 9, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !591, line: 382, column: 9)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !591, line: 382, column: 9)
!2673 = distinct !DILexicalBlock(scope: !2549, file: !591, line: 381, column: 11)
!2674 = !DILocation(line: 382, column: 9, scope: !2672)
!2675 = !DILocation(line: 389, column: 7, scope: !2549)
!2676 = !DILocation(line: 392, column: 7, scope: !2549)
!2677 = !DILocation(line: 0, scope: !2551)
!2678 = !DILocation(line: 395, column: 8, scope: !2551)
!2679 = !DILocation(line: 395, scope: !2551)
!2680 = !DILocation(line: 395, column: 34, scope: !2554)
!2681 = !DILocation(line: 395, column: 26, scope: !2554)
!2682 = !DILocation(line: 395, column: 48, scope: !2554)
!2683 = !DILocation(line: 395, column: 55, scope: !2554)
!2684 = !DILocation(line: 395, column: 3, scope: !2551)
!2685 = !DILocation(line: 395, column: 67, scope: !2554)
!2686 = !DILocation(line: 0, scope: !2553)
!2687 = !DILocation(line: 402, column: 11, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2553, file: !591, line: 401, column: 11)
!2689 = !DILocation(line: 404, column: 17, scope: !2688)
!2690 = !DILocation(line: 405, column: 39, scope: !2688)
!2691 = !DILocation(line: 409, column: 32, scope: !2688)
!2692 = !DILocation(line: 405, column: 19, scope: !2688)
!2693 = !DILocation(line: 405, column: 15, scope: !2688)
!2694 = !DILocation(line: 410, column: 11, scope: !2688)
!2695 = !DILocation(line: 410, column: 25, scope: !2688)
!2696 = !DILocalVariable(name: "__s1", arg: 1, scope: !2697, file: !1000, line: 974, type: !1132)
!2697 = distinct !DISubprogram(name: "memeq", scope: !1000, file: !1000, line: 974, type: !2344, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2698)
!2698 = !{!2696, !2699, !2700}
!2699 = !DILocalVariable(name: "__s2", arg: 2, scope: !2697, file: !1000, line: 974, type: !1132)
!2700 = !DILocalVariable(name: "__n", arg: 3, scope: !2697, file: !1000, line: 974, type: !139)
!2701 = !DILocation(line: 0, scope: !2697, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 410, column: 14, scope: !2688)
!2703 = !DILocation(line: 976, column: 11, scope: !2697, inlinedAt: !2702)
!2704 = !DILocation(line: 976, column: 10, scope: !2697, inlinedAt: !2702)
!2705 = !DILocation(line: 401, column: 11, scope: !2553)
!2706 = !DILocation(line: 417, column: 25, scope: !2553)
!2707 = !DILocation(line: 418, column: 7, scope: !2553)
!2708 = !DILocation(line: 421, column: 15, scope: !2560)
!2709 = !DILocation(line: 423, column: 15, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !591, line: 423, column: 15)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !591, line: 422, column: 13)
!2712 = distinct !DILexicalBlock(scope: !2560, file: !591, line: 421, column: 15)
!2713 = !DILocation(line: 423, column: 15, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !591, line: 423, column: 15)
!2715 = !DILocation(line: 423, column: 15, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !591, line: 423, column: 15)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !591, line: 423, column: 15)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !591, line: 423, column: 15)
!2719 = !DILocation(line: 423, column: 15, scope: !2717)
!2720 = !DILocation(line: 423, column: 15, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !591, line: 423, column: 15)
!2722 = distinct !DILexicalBlock(scope: !2718, file: !591, line: 423, column: 15)
!2723 = !DILocation(line: 423, column: 15, scope: !2722)
!2724 = !DILocation(line: 423, column: 15, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !591, line: 423, column: 15)
!2726 = distinct !DILexicalBlock(scope: !2718, file: !591, line: 423, column: 15)
!2727 = !DILocation(line: 423, column: 15, scope: !2726)
!2728 = !DILocation(line: 423, column: 15, scope: !2718)
!2729 = !DILocation(line: 423, column: 15, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !591, line: 423, column: 15)
!2731 = distinct !DILexicalBlock(scope: !2710, file: !591, line: 423, column: 15)
!2732 = !DILocation(line: 423, column: 15, scope: !2731)
!2733 = !DILocation(line: 431, column: 19, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2711, file: !591, line: 430, column: 19)
!2735 = !DILocation(line: 431, column: 24, scope: !2734)
!2736 = !DILocation(line: 431, column: 28, scope: !2734)
!2737 = !DILocation(line: 431, column: 38, scope: !2734)
!2738 = !DILocation(line: 431, column: 48, scope: !2734)
!2739 = !DILocation(line: 431, column: 59, scope: !2734)
!2740 = !DILocation(line: 433, column: 19, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !591, line: 433, column: 19)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !591, line: 433, column: 19)
!2743 = distinct !DILexicalBlock(scope: !2734, file: !591, line: 432, column: 17)
!2744 = !DILocation(line: 433, column: 19, scope: !2742)
!2745 = !DILocation(line: 434, column: 19, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !591, line: 434, column: 19)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !591, line: 434, column: 19)
!2748 = !DILocation(line: 434, column: 19, scope: !2747)
!2749 = !DILocation(line: 435, column: 17, scope: !2743)
!2750 = !DILocation(line: 442, column: 20, scope: !2712)
!2751 = !DILocation(line: 447, column: 11, scope: !2560)
!2752 = !DILocation(line: 450, column: 19, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2560, file: !591, line: 448, column: 13)
!2754 = !DILocation(line: 456, column: 19, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2753, file: !591, line: 455, column: 19)
!2756 = !DILocation(line: 456, column: 24, scope: !2755)
!2757 = !DILocation(line: 456, column: 28, scope: !2755)
!2758 = !DILocation(line: 456, column: 38, scope: !2755)
!2759 = !DILocation(line: 456, column: 47, scope: !2755)
!2760 = !DILocation(line: 456, column: 41, scope: !2755)
!2761 = !DILocation(line: 456, column: 52, scope: !2755)
!2762 = !DILocation(line: 455, column: 19, scope: !2753)
!2763 = !DILocation(line: 457, column: 25, scope: !2755)
!2764 = !DILocation(line: 457, column: 17, scope: !2755)
!2765 = !DILocation(line: 464, column: 25, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2755, file: !591, line: 458, column: 19)
!2767 = !DILocation(line: 468, column: 21, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !591, line: 468, column: 21)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !591, line: 468, column: 21)
!2770 = !DILocation(line: 468, column: 21, scope: !2769)
!2771 = !DILocation(line: 469, column: 21, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !591, line: 469, column: 21)
!2773 = distinct !DILexicalBlock(scope: !2766, file: !591, line: 469, column: 21)
!2774 = !DILocation(line: 469, column: 21, scope: !2773)
!2775 = !DILocation(line: 470, column: 21, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !591, line: 470, column: 21)
!2777 = distinct !DILexicalBlock(scope: !2766, file: !591, line: 470, column: 21)
!2778 = !DILocation(line: 470, column: 21, scope: !2777)
!2779 = !DILocation(line: 471, column: 21, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !591, line: 471, column: 21)
!2781 = distinct !DILexicalBlock(scope: !2766, file: !591, line: 471, column: 21)
!2782 = !DILocation(line: 471, column: 21, scope: !2781)
!2783 = !DILocation(line: 472, column: 21, scope: !2766)
!2784 = !DILocation(line: 482, column: 33, scope: !2583)
!2785 = !DILocation(line: 483, column: 33, scope: !2583)
!2786 = !DILocation(line: 485, column: 33, scope: !2583)
!2787 = !DILocation(line: 486, column: 33, scope: !2583)
!2788 = !DILocation(line: 487, column: 33, scope: !2583)
!2789 = !DILocation(line: 490, column: 17, scope: !2583)
!2790 = !DILocation(line: 492, column: 21, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !591, line: 491, column: 15)
!2792 = distinct !DILexicalBlock(scope: !2583, file: !591, line: 490, column: 17)
!2793 = !DILocation(line: 499, column: 35, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2583, file: !591, line: 499, column: 17)
!2795 = !DILocation(line: 0, scope: !2583)
!2796 = !DILocation(line: 502, column: 11, scope: !2583)
!2797 = !DILocation(line: 504, column: 17, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2583, file: !591, line: 503, column: 17)
!2799 = !DILocation(line: 507, column: 11, scope: !2583)
!2800 = !DILocation(line: 508, column: 17, scope: !2583)
!2801 = !DILocation(line: 517, column: 15, scope: !2560)
!2802 = !DILocation(line: 517, column: 40, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2560, file: !591, line: 517, column: 15)
!2804 = !DILocation(line: 517, column: 47, scope: !2803)
!2805 = !DILocation(line: 517, column: 18, scope: !2803)
!2806 = !DILocation(line: 521, column: 17, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2560, file: !591, line: 521, column: 15)
!2808 = !DILocation(line: 521, column: 15, scope: !2560)
!2809 = !DILocation(line: 525, column: 11, scope: !2560)
!2810 = !DILocation(line: 537, column: 15, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2560, file: !591, line: 536, column: 15)
!2812 = !DILocation(line: 536, column: 15, scope: !2560)
!2813 = !DILocation(line: 544, column: 15, scope: !2560)
!2814 = !DILocation(line: 546, column: 19, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !591, line: 545, column: 13)
!2816 = distinct !DILexicalBlock(scope: !2560, file: !591, line: 544, column: 15)
!2817 = !DILocation(line: 549, column: 19, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2815, file: !591, line: 549, column: 19)
!2819 = !DILocation(line: 549, column: 30, scope: !2818)
!2820 = !DILocation(line: 558, column: 15, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !591, line: 558, column: 15)
!2822 = distinct !DILexicalBlock(scope: !2815, file: !591, line: 558, column: 15)
!2823 = !DILocation(line: 558, column: 15, scope: !2822)
!2824 = !DILocation(line: 559, column: 15, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !591, line: 559, column: 15)
!2826 = distinct !DILexicalBlock(scope: !2815, file: !591, line: 559, column: 15)
!2827 = !DILocation(line: 559, column: 15, scope: !2826)
!2828 = !DILocation(line: 560, column: 15, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !591, line: 560, column: 15)
!2830 = distinct !DILexicalBlock(scope: !2815, file: !591, line: 560, column: 15)
!2831 = !DILocation(line: 560, column: 15, scope: !2830)
!2832 = !DILocation(line: 562, column: 13, scope: !2815)
!2833 = !DILocation(line: 602, column: 17, scope: !2559)
!2834 = !DILocation(line: 0, scope: !2559)
!2835 = !DILocation(line: 605, column: 29, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2564, file: !591, line: 603, column: 15)
!2837 = !DILocation(line: 605, column: 41, scope: !2836)
!2838 = !DILocation(line: 606, column: 15, scope: !2836)
!2839 = !DILocation(line: 609, column: 17, scope: !2563)
!2840 = !DILocation(line: 609, column: 27, scope: !2563)
!2841 = !DILocation(line: 0, scope: !2615, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 609, column: 32, scope: !2563)
!2843 = !DILocation(line: 0, scope: !2623, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 1137, column: 3, scope: !2615, inlinedAt: !2842)
!2845 = !DILocation(line: 59, column: 10, scope: !2623, inlinedAt: !2844)
!2846 = !DILocation(line: 613, column: 29, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2563, file: !591, line: 613, column: 21)
!2848 = !DILocation(line: 613, column: 21, scope: !2563)
!2849 = !DILocation(line: 614, column: 29, scope: !2847)
!2850 = !DILocation(line: 614, column: 19, scope: !2847)
!2851 = !DILocation(line: 618, column: 21, scope: !2566)
!2852 = !DILocation(line: 620, column: 54, scope: !2566)
!2853 = !DILocation(line: 0, scope: !2566)
!2854 = !DILocation(line: 619, column: 36, scope: !2566)
!2855 = !DILocation(line: 621, column: 25, scope: !2566)
!2856 = !DILocation(line: 631, column: 38, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2575, file: !591, line: 629, column: 23)
!2858 = !DILocation(line: 631, column: 48, scope: !2857)
!2859 = !DILocation(line: 626, column: 25, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2576, file: !591, line: 624, column: 23)
!2861 = !DILocation(line: 631, column: 51, scope: !2857)
!2862 = !DILocation(line: 631, column: 25, scope: !2857)
!2863 = !DILocation(line: 632, column: 28, scope: !2857)
!2864 = !DILocation(line: 631, column: 34, scope: !2857)
!2865 = distinct !{!2865, !2862, !2863, !1034}
!2866 = !DILocation(line: 646, column: 29, scope: !2573)
!2867 = !DILocation(line: 0, scope: !2571)
!2868 = !DILocation(line: 649, column: 49, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2571, file: !591, line: 648, column: 29)
!2870 = !DILocation(line: 649, column: 39, scope: !2869)
!2871 = !DILocation(line: 649, column: 31, scope: !2869)
!2872 = !DILocation(line: 648, column: 60, scope: !2869)
!2873 = !DILocation(line: 648, column: 50, scope: !2869)
!2874 = !DILocation(line: 648, column: 29, scope: !2571)
!2875 = distinct !{!2875, !2874, !2876, !1034}
!2876 = !DILocation(line: 654, column: 33, scope: !2571)
!2877 = !DILocation(line: 657, column: 43, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2574, file: !591, line: 657, column: 29)
!2879 = !DILocalVariable(name: "wc", arg: 1, scope: !2880, file: !1428, line: 865, type: !1497)
!2880 = distinct !DISubprogram(name: "c32isprint", scope: !1428, file: !1428, line: 865, type: !1495, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2881)
!2881 = !{!2879}
!2882 = !DILocation(line: 0, scope: !2880, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 657, column: 31, scope: !2878)
!2884 = !DILocation(line: 871, column: 10, scope: !2880, inlinedAt: !2883)
!2885 = !DILocation(line: 657, column: 31, scope: !2878)
!2886 = !DILocation(line: 664, column: 23, scope: !2566)
!2887 = !DILocation(line: 665, column: 19, scope: !2567)
!2888 = !DILocation(line: 666, column: 15, scope: !2564)
!2889 = !DILocation(line: 753, column: 2, scope: !2520)
!2890 = !DILocation(line: 756, column: 51, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2520, file: !591, line: 756, column: 7)
!2892 = !DILocation(line: 0, scope: !2564)
!2893 = !DILocation(line: 670, column: 19, scope: !2580)
!2894 = !DILocation(line: 670, column: 23, scope: !2580)
!2895 = !DILocation(line: 674, column: 33, scope: !2579)
!2896 = !DILocation(line: 0, scope: !2579)
!2897 = !DILocation(line: 676, column: 17, scope: !2579)
!2898 = !DILocation(line: 398, column: 12, scope: !2553)
!2899 = !DILocation(line: 678, column: 43, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !591, line: 678, column: 25)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !591, line: 677, column: 19)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !591, line: 676, column: 17)
!2903 = distinct !DILexicalBlock(scope: !2579, file: !591, line: 676, column: 17)
!2904 = !DILocation(line: 680, column: 25, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !591, line: 680, column: 25)
!2906 = distinct !DILexicalBlock(scope: !2900, file: !591, line: 679, column: 23)
!2907 = !DILocation(line: 680, column: 25, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !591, line: 680, column: 25)
!2909 = !DILocation(line: 680, column: 25, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !591, line: 680, column: 25)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !591, line: 680, column: 25)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !591, line: 680, column: 25)
!2913 = !DILocation(line: 680, column: 25, scope: !2911)
!2914 = !DILocation(line: 680, column: 25, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !591, line: 680, column: 25)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !591, line: 680, column: 25)
!2917 = !DILocation(line: 680, column: 25, scope: !2916)
!2918 = !DILocation(line: 680, column: 25, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !591, line: 680, column: 25)
!2920 = distinct !DILexicalBlock(scope: !2912, file: !591, line: 680, column: 25)
!2921 = !DILocation(line: 680, column: 25, scope: !2920)
!2922 = !DILocation(line: 680, column: 25, scope: !2912)
!2923 = !DILocation(line: 680, column: 25, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !591, line: 680, column: 25)
!2925 = distinct !DILexicalBlock(scope: !2905, file: !591, line: 680, column: 25)
!2926 = !DILocation(line: 680, column: 25, scope: !2925)
!2927 = !DILocation(line: 681, column: 25, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !591, line: 681, column: 25)
!2929 = distinct !DILexicalBlock(scope: !2906, file: !591, line: 681, column: 25)
!2930 = !DILocation(line: 681, column: 25, scope: !2929)
!2931 = !DILocation(line: 682, column: 25, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !591, line: 682, column: 25)
!2933 = distinct !DILexicalBlock(scope: !2906, file: !591, line: 682, column: 25)
!2934 = !DILocation(line: 682, column: 25, scope: !2933)
!2935 = !DILocation(line: 683, column: 38, scope: !2906)
!2936 = !DILocation(line: 683, column: 33, scope: !2906)
!2937 = !DILocation(line: 684, column: 23, scope: !2906)
!2938 = !DILocation(line: 685, column: 30, scope: !2900)
!2939 = !DILocation(line: 687, column: 25, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !591, line: 687, column: 25)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !591, line: 687, column: 25)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !591, line: 686, column: 23)
!2943 = distinct !DILexicalBlock(scope: !2900, file: !591, line: 685, column: 30)
!2944 = !DILocation(line: 687, column: 25, scope: !2941)
!2945 = !DILocation(line: 689, column: 23, scope: !2942)
!2946 = !DILocation(line: 690, column: 35, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2901, file: !591, line: 690, column: 25)
!2948 = !DILocation(line: 690, column: 30, scope: !2947)
!2949 = !DILocation(line: 690, column: 25, scope: !2901)
!2950 = !DILocation(line: 692, column: 21, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !591, line: 692, column: 21)
!2952 = distinct !DILexicalBlock(scope: !2901, file: !591, line: 692, column: 21)
!2953 = !DILocation(line: 692, column: 21, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !591, line: 692, column: 21)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !591, line: 692, column: 21)
!2956 = distinct !DILexicalBlock(scope: !2951, file: !591, line: 692, column: 21)
!2957 = !DILocation(line: 692, column: 21, scope: !2955)
!2958 = !DILocation(line: 692, column: 21, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !591, line: 692, column: 21)
!2960 = distinct !DILexicalBlock(scope: !2956, file: !591, line: 692, column: 21)
!2961 = !DILocation(line: 692, column: 21, scope: !2960)
!2962 = !DILocation(line: 692, column: 21, scope: !2956)
!2963 = !DILocation(line: 0, scope: !2901)
!2964 = !DILocation(line: 693, column: 21, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !591, line: 693, column: 21)
!2966 = distinct !DILexicalBlock(scope: !2901, file: !591, line: 693, column: 21)
!2967 = !DILocation(line: 693, column: 21, scope: !2966)
!2968 = !DILocation(line: 694, column: 25, scope: !2901)
!2969 = !DILocation(line: 676, column: 17, scope: !2902)
!2970 = distinct !{!2970, !2971, !2972}
!2971 = !DILocation(line: 676, column: 17, scope: !2903)
!2972 = !DILocation(line: 695, column: 19, scope: !2903)
!2973 = !DILocation(line: 409, column: 30, scope: !2688)
!2974 = !DILocation(line: 702, column: 34, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2553, file: !591, line: 702, column: 11)
!2976 = !DILocation(line: 704, column: 14, scope: !2975)
!2977 = !DILocation(line: 705, column: 14, scope: !2975)
!2978 = !DILocation(line: 705, column: 35, scope: !2975)
!2979 = !DILocation(line: 705, column: 17, scope: !2975)
!2980 = !DILocation(line: 705, column: 47, scope: !2975)
!2981 = !DILocation(line: 705, column: 65, scope: !2975)
!2982 = !DILocation(line: 706, column: 11, scope: !2975)
!2983 = !DILocation(line: 702, column: 11, scope: !2553)
!2984 = !DILocation(line: 395, column: 15, scope: !2551)
!2985 = !DILocation(line: 709, column: 5, scope: !2553)
!2986 = !DILocation(line: 710, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2553, file: !591, line: 710, column: 7)
!2988 = !DILocation(line: 710, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2987, file: !591, line: 710, column: 7)
!2990 = !DILocation(line: 710, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !591, line: 710, column: 7)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !591, line: 710, column: 7)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !591, line: 710, column: 7)
!2994 = !DILocation(line: 710, column: 7, scope: !2992)
!2995 = !DILocation(line: 710, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !591, line: 710, column: 7)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !591, line: 710, column: 7)
!2998 = !DILocation(line: 710, column: 7, scope: !2997)
!2999 = !DILocation(line: 710, column: 7, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !591, line: 710, column: 7)
!3001 = distinct !DILexicalBlock(scope: !2993, file: !591, line: 710, column: 7)
!3002 = !DILocation(line: 710, column: 7, scope: !3001)
!3003 = !DILocation(line: 710, column: 7, scope: !2993)
!3004 = !DILocation(line: 710, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !591, line: 710, column: 7)
!3006 = distinct !DILexicalBlock(scope: !2987, file: !591, line: 710, column: 7)
!3007 = !DILocation(line: 710, column: 7, scope: !3006)
!3008 = !DILocation(line: 712, column: 5, scope: !2553)
!3009 = !DILocation(line: 713, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !591, line: 713, column: 7)
!3011 = distinct !DILexicalBlock(scope: !2553, file: !591, line: 713, column: 7)
!3012 = !DILocation(line: 417, column: 21, scope: !2553)
!3013 = !DILocation(line: 713, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !591, line: 713, column: 7)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !591, line: 713, column: 7)
!3016 = distinct !DILexicalBlock(scope: !3010, file: !591, line: 713, column: 7)
!3017 = !DILocation(line: 713, column: 7, scope: !3015)
!3018 = !DILocation(line: 713, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !591, line: 713, column: 7)
!3020 = distinct !DILexicalBlock(scope: !3016, file: !591, line: 713, column: 7)
!3021 = !DILocation(line: 713, column: 7, scope: !3020)
!3022 = !DILocation(line: 713, column: 7, scope: !3016)
!3023 = !DILocation(line: 714, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !591, line: 714, column: 7)
!3025 = distinct !DILexicalBlock(scope: !2553, file: !591, line: 714, column: 7)
!3026 = !DILocation(line: 714, column: 7, scope: !3025)
!3027 = !DILocation(line: 716, column: 11, scope: !2553)
!3028 = !DILocation(line: 718, column: 5, scope: !2554)
!3029 = !DILocation(line: 395, column: 82, scope: !2554)
!3030 = !DILocation(line: 395, column: 3, scope: !2554)
!3031 = distinct !{!3031, !2684, !3032, !1034}
!3032 = !DILocation(line: 718, column: 5, scope: !2551)
!3033 = !DILocation(line: 720, column: 11, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2520, file: !591, line: 720, column: 7)
!3035 = !DILocation(line: 720, column: 16, scope: !3034)
!3036 = !DILocation(line: 728, column: 51, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2520, file: !591, line: 728, column: 7)
!3038 = !DILocation(line: 731, column: 11, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3037, file: !591, line: 730, column: 5)
!3040 = !DILocation(line: 732, column: 16, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3039, file: !591, line: 731, column: 11)
!3042 = !DILocation(line: 732, column: 9, scope: !3041)
!3043 = !DILocation(line: 736, column: 18, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !591, line: 736, column: 16)
!3045 = !DILocation(line: 736, column: 29, scope: !3044)
!3046 = !DILocation(line: 745, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2520, file: !591, line: 745, column: 7)
!3048 = !DILocation(line: 745, column: 20, scope: !3047)
!3049 = !DILocation(line: 746, column: 12, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !591, line: 746, column: 5)
!3051 = distinct !DILexicalBlock(scope: !3047, file: !591, line: 746, column: 5)
!3052 = !DILocation(line: 746, column: 5, scope: !3051)
!3053 = !DILocation(line: 747, column: 7, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !591, line: 747, column: 7)
!3055 = distinct !DILexicalBlock(scope: !3050, file: !591, line: 747, column: 7)
!3056 = !DILocation(line: 747, column: 7, scope: !3055)
!3057 = !DILocation(line: 746, column: 39, scope: !3050)
!3058 = distinct !{!3058, !3052, !3059, !1034}
!3059 = !DILocation(line: 747, column: 7, scope: !3051)
!3060 = !DILocation(line: 749, column: 11, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2520, file: !591, line: 749, column: 7)
!3062 = !DILocation(line: 749, column: 7, scope: !2520)
!3063 = !DILocation(line: 750, column: 5, scope: !3061)
!3064 = !DILocation(line: 750, column: 17, scope: !3061)
!3065 = !DILocation(line: 756, column: 21, scope: !2891)
!3066 = !DILocation(line: 760, column: 42, scope: !2520)
!3067 = !DILocation(line: 758, column: 10, scope: !2520)
!3068 = !DILocation(line: 758, column: 3, scope: !2520)
!3069 = !DILocation(line: 762, column: 1, scope: !2520)
!3070 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1108, file: !1108, line: 98, type: !3071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!139}
!3073 = !DISubprogram(name: "strlen", scope: !1104, file: !1104, line: 407, type: !3074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!141, !142}
!3076 = !DISubprogram(name: "iswprint", scope: !1728, file: !1728, line: 120, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!3077 = distinct !DISubprogram(name: "quotearg_alloc", scope: !591, file: !591, line: 788, type: !3078, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!136, !142, !139, !2413}
!3080 = !{!3081, !3082, !3083}
!3081 = !DILocalVariable(name: "arg", arg: 1, scope: !3077, file: !591, line: 788, type: !142)
!3082 = !DILocalVariable(name: "argsize", arg: 2, scope: !3077, file: !591, line: 788, type: !139)
!3083 = !DILocalVariable(name: "o", arg: 3, scope: !3077, file: !591, line: 789, type: !2413)
!3084 = !DILocation(line: 0, scope: !3077)
!3085 = !DILocalVariable(name: "arg", arg: 1, scope: !3086, file: !591, line: 801, type: !142)
!3086 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !591, file: !591, line: 801, type: !3087, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!136, !142, !139, !840, !2413}
!3089 = !{!3085, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097}
!3090 = !DILocalVariable(name: "argsize", arg: 2, scope: !3086, file: !591, line: 801, type: !139)
!3091 = !DILocalVariable(name: "size", arg: 3, scope: !3086, file: !591, line: 801, type: !840)
!3092 = !DILocalVariable(name: "o", arg: 4, scope: !3086, file: !591, line: 802, type: !2413)
!3093 = !DILocalVariable(name: "p", scope: !3086, file: !591, line: 804, type: !2413)
!3094 = !DILocalVariable(name: "saved_errno", scope: !3086, file: !591, line: 805, type: !83)
!3095 = !DILocalVariable(name: "flags", scope: !3086, file: !591, line: 807, type: !83)
!3096 = !DILocalVariable(name: "bufsize", scope: !3086, file: !591, line: 808, type: !139)
!3097 = !DILocalVariable(name: "buf", scope: !3086, file: !591, line: 812, type: !136)
!3098 = !DILocation(line: 0, scope: !3086, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 791, column: 10, scope: !3077)
!3100 = !DILocation(line: 804, column: 37, scope: !3086, inlinedAt: !3099)
!3101 = !DILocation(line: 805, column: 21, scope: !3086, inlinedAt: !3099)
!3102 = !DILocation(line: 807, column: 18, scope: !3086, inlinedAt: !3099)
!3103 = !DILocation(line: 807, column: 24, scope: !3086, inlinedAt: !3099)
!3104 = !DILocation(line: 808, column: 72, scope: !3086, inlinedAt: !3099)
!3105 = !DILocation(line: 809, column: 56, scope: !3086, inlinedAt: !3099)
!3106 = !DILocation(line: 810, column: 49, scope: !3086, inlinedAt: !3099)
!3107 = !DILocation(line: 811, column: 49, scope: !3086, inlinedAt: !3099)
!3108 = !DILocation(line: 808, column: 20, scope: !3086, inlinedAt: !3099)
!3109 = !DILocation(line: 811, column: 62, scope: !3086, inlinedAt: !3099)
!3110 = !DILocation(line: 812, column: 15, scope: !3086, inlinedAt: !3099)
!3111 = !DILocation(line: 813, column: 60, scope: !3086, inlinedAt: !3099)
!3112 = !DILocation(line: 815, column: 32, scope: !3086, inlinedAt: !3099)
!3113 = !DILocation(line: 815, column: 47, scope: !3086, inlinedAt: !3099)
!3114 = !DILocation(line: 813, column: 3, scope: !3086, inlinedAt: !3099)
!3115 = !DILocation(line: 816, column: 9, scope: !3086, inlinedAt: !3099)
!3116 = !DILocation(line: 791, column: 3, scope: !3077)
!3117 = !DILocation(line: 0, scope: !3086)
!3118 = !DILocation(line: 804, column: 37, scope: !3086)
!3119 = !DILocation(line: 805, column: 21, scope: !3086)
!3120 = !DILocation(line: 807, column: 18, scope: !3086)
!3121 = !DILocation(line: 807, column: 27, scope: !3086)
!3122 = !DILocation(line: 807, column: 24, scope: !3086)
!3123 = !DILocation(line: 808, column: 72, scope: !3086)
!3124 = !DILocation(line: 809, column: 56, scope: !3086)
!3125 = !DILocation(line: 810, column: 49, scope: !3086)
!3126 = !DILocation(line: 811, column: 49, scope: !3086)
!3127 = !DILocation(line: 808, column: 20, scope: !3086)
!3128 = !DILocation(line: 811, column: 62, scope: !3086)
!3129 = !DILocation(line: 812, column: 15, scope: !3086)
!3130 = !DILocation(line: 813, column: 60, scope: !3086)
!3131 = !DILocation(line: 815, column: 32, scope: !3086)
!3132 = !DILocation(line: 815, column: 47, scope: !3086)
!3133 = !DILocation(line: 813, column: 3, scope: !3086)
!3134 = !DILocation(line: 816, column: 9, scope: !3086)
!3135 = !DILocation(line: 817, column: 7, scope: !3086)
!3136 = !DILocation(line: 818, column: 11, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3086, file: !591, line: 817, column: 7)
!3138 = !{!1275, !1275, i64 0}
!3139 = !DILocation(line: 818, column: 5, scope: !3137)
!3140 = !DILocation(line: 819, column: 3, scope: !3086)
!3141 = distinct !DISubprogram(name: "quotearg_free", scope: !591, file: !591, line: 837, type: !550, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3142)
!3142 = !{!3143, !3144}
!3143 = !DILocalVariable(name: "sv", scope: !3141, file: !591, line: 839, type: !678)
!3144 = !DILocalVariable(name: "i", scope: !3145, file: !591, line: 840, type: !83)
!3145 = distinct !DILexicalBlock(scope: !3141, file: !591, line: 840, column: 3)
!3146 = !DILocation(line: 839, column: 24, scope: !3141)
!3147 = !DILocation(line: 0, scope: !3141)
!3148 = !DILocation(line: 0, scope: !3145)
!3149 = !DILocation(line: 840, column: 21, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3145, file: !591, line: 840, column: 3)
!3151 = !DILocation(line: 840, column: 3, scope: !3145)
!3152 = !DILocation(line: 842, column: 13, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3141, file: !591, line: 842, column: 7)
!3154 = !{!3155, !918, i64 8}
!3155 = !{!"slotvec", !1275, i64 0, !918, i64 8}
!3156 = !DILocation(line: 842, column: 17, scope: !3153)
!3157 = !DILocation(line: 842, column: 7, scope: !3141)
!3158 = !DILocation(line: 841, column: 17, scope: !3150)
!3159 = !DILocation(line: 841, column: 5, scope: !3150)
!3160 = !DILocation(line: 840, column: 32, scope: !3150)
!3161 = distinct !{!3161, !3151, !3162, !1034}
!3162 = !DILocation(line: 841, column: 20, scope: !3145)
!3163 = !DILocation(line: 844, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3153, file: !591, line: 843, column: 5)
!3165 = !DILocation(line: 845, column: 21, scope: !3164)
!3166 = !{!3155, !1275, i64 0}
!3167 = !DILocation(line: 846, column: 20, scope: !3164)
!3168 = !DILocation(line: 847, column: 5, scope: !3164)
!3169 = !DILocation(line: 848, column: 10, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3141, file: !591, line: 848, column: 7)
!3171 = !DILocation(line: 848, column: 7, scope: !3141)
!3172 = !DILocation(line: 850, column: 7, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3170, file: !591, line: 849, column: 5)
!3174 = !DILocation(line: 851, column: 15, scope: !3173)
!3175 = !DILocation(line: 852, column: 5, scope: !3173)
!3176 = !DILocation(line: 853, column: 10, scope: !3141)
!3177 = !DILocation(line: 854, column: 1, scope: !3141)
!3178 = !DISubprogram(name: "free", scope: !2374, file: !2374, line: 786, type: !3179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !137}
!3181 = distinct !DISubprogram(name: "quotearg_n", scope: !591, file: !591, line: 919, type: !1101, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3182)
!3182 = !{!3183, !3184}
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !591, line: 919, type: !83)
!3184 = !DILocalVariable(name: "arg", arg: 2, scope: !3181, file: !591, line: 919, type: !142)
!3185 = !DILocation(line: 0, scope: !3181)
!3186 = !DILocation(line: 921, column: 10, scope: !3181)
!3187 = !DILocation(line: 921, column: 3, scope: !3181)
!3188 = distinct !DISubprogram(name: "quotearg_n_options", scope: !591, file: !591, line: 866, type: !3189, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!136, !83, !142, !139, !2413}
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3202, !3203, !3205, !3206, !3207}
!3192 = !DILocalVariable(name: "n", arg: 1, scope: !3188, file: !591, line: 866, type: !83)
!3193 = !DILocalVariable(name: "arg", arg: 2, scope: !3188, file: !591, line: 866, type: !142)
!3194 = !DILocalVariable(name: "argsize", arg: 3, scope: !3188, file: !591, line: 866, type: !139)
!3195 = !DILocalVariable(name: "options", arg: 4, scope: !3188, file: !591, line: 867, type: !2413)
!3196 = !DILocalVariable(name: "saved_errno", scope: !3188, file: !591, line: 869, type: !83)
!3197 = !DILocalVariable(name: "sv", scope: !3188, file: !591, line: 871, type: !678)
!3198 = !DILocalVariable(name: "nslots_max", scope: !3188, file: !591, line: 873, type: !83)
!3199 = !DILocalVariable(name: "preallocated", scope: !3200, file: !591, line: 879, type: !168)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !591, line: 878, column: 5)
!3201 = distinct !DILexicalBlock(scope: !3188, file: !591, line: 877, column: 7)
!3202 = !DILocalVariable(name: "new_nslots", scope: !3200, file: !591, line: 880, type: !412)
!3203 = !DILocalVariable(name: "size", scope: !3204, file: !591, line: 891, type: !139)
!3204 = distinct !DILexicalBlock(scope: !3188, file: !591, line: 890, column: 3)
!3205 = !DILocalVariable(name: "val", scope: !3204, file: !591, line: 892, type: !136)
!3206 = !DILocalVariable(name: "flags", scope: !3204, file: !591, line: 894, type: !83)
!3207 = !DILocalVariable(name: "qsize", scope: !3204, file: !591, line: 895, type: !139)
!3208 = !DILocation(line: 0, scope: !3188)
!3209 = !DILocation(line: 869, column: 21, scope: !3188)
!3210 = !DILocation(line: 871, column: 24, scope: !3188)
!3211 = !DILocation(line: 874, column: 17, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3188, file: !591, line: 874, column: 7)
!3213 = !DILocation(line: 875, column: 5, scope: !3212)
!3214 = !DILocation(line: 877, column: 7, scope: !3201)
!3215 = !DILocation(line: 877, column: 14, scope: !3201)
!3216 = !DILocation(line: 877, column: 7, scope: !3188)
!3217 = !DILocation(line: 879, column: 31, scope: !3200)
!3218 = !DILocation(line: 0, scope: !3200)
!3219 = !DILocation(line: 880, column: 7, scope: !3200)
!3220 = !DILocation(line: 880, column: 26, scope: !3200)
!3221 = !DILocation(line: 880, column: 13, scope: !3200)
!3222 = !DILocation(line: 882, column: 31, scope: !3200)
!3223 = !DILocation(line: 883, column: 33, scope: !3200)
!3224 = !DILocation(line: 883, column: 42, scope: !3200)
!3225 = !DILocation(line: 883, column: 31, scope: !3200)
!3226 = !DILocation(line: 882, column: 22, scope: !3200)
!3227 = !DILocation(line: 882, column: 15, scope: !3200)
!3228 = !DILocation(line: 884, column: 11, scope: !3200)
!3229 = !DILocation(line: 885, column: 15, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3200, file: !591, line: 884, column: 11)
!3231 = !{i64 0, i64 8, !3138, i64 8, i64 8, !917}
!3232 = !DILocation(line: 885, column: 9, scope: !3230)
!3233 = !DILocation(line: 886, column: 20, scope: !3200)
!3234 = !DILocation(line: 886, column: 18, scope: !3200)
!3235 = !DILocation(line: 886, column: 32, scope: !3200)
!3236 = !DILocation(line: 886, column: 43, scope: !3200)
!3237 = !DILocation(line: 886, column: 53, scope: !3200)
!3238 = !DILocation(line: 0, scope: !2623, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 886, column: 7, scope: !3200)
!3240 = !DILocation(line: 59, column: 10, scope: !2623, inlinedAt: !3239)
!3241 = !DILocation(line: 887, column: 16, scope: !3200)
!3242 = !DILocation(line: 887, column: 14, scope: !3200)
!3243 = !DILocation(line: 888, column: 5, scope: !3201)
!3244 = !DILocation(line: 888, column: 5, scope: !3200)
!3245 = !DILocation(line: 891, column: 19, scope: !3204)
!3246 = !DILocation(line: 891, column: 25, scope: !3204)
!3247 = !DILocation(line: 0, scope: !3204)
!3248 = !DILocation(line: 892, column: 23, scope: !3204)
!3249 = !DILocation(line: 894, column: 26, scope: !3204)
!3250 = !DILocation(line: 894, column: 32, scope: !3204)
!3251 = !DILocation(line: 896, column: 55, scope: !3204)
!3252 = !DILocation(line: 897, column: 55, scope: !3204)
!3253 = !DILocation(line: 898, column: 55, scope: !3204)
!3254 = !DILocation(line: 899, column: 55, scope: !3204)
!3255 = !DILocation(line: 895, column: 20, scope: !3204)
!3256 = !DILocation(line: 901, column: 14, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3204, file: !591, line: 901, column: 9)
!3258 = !DILocation(line: 901, column: 9, scope: !3204)
!3259 = !DILocation(line: 903, column: 35, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3257, file: !591, line: 902, column: 7)
!3261 = !DILocation(line: 903, column: 20, scope: !3260)
!3262 = !DILocation(line: 904, column: 17, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3260, file: !591, line: 904, column: 13)
!3264 = !DILocation(line: 904, column: 13, scope: !3260)
!3265 = !DILocation(line: 905, column: 11, scope: !3263)
!3266 = !DILocation(line: 906, column: 27, scope: !3260)
!3267 = !DILocation(line: 906, column: 19, scope: !3260)
!3268 = !DILocation(line: 907, column: 69, scope: !3260)
!3269 = !DILocation(line: 909, column: 44, scope: !3260)
!3270 = !DILocation(line: 910, column: 44, scope: !3260)
!3271 = !DILocation(line: 907, column: 9, scope: !3260)
!3272 = !DILocation(line: 911, column: 7, scope: !3260)
!3273 = !DILocation(line: 913, column: 11, scope: !3204)
!3274 = !DILocation(line: 914, column: 5, scope: !3204)
!3275 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !591, file: !591, line: 925, type: !3276, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!136, !83, !142, !139}
!3278 = !{!3279, !3280, !3281}
!3279 = !DILocalVariable(name: "n", arg: 1, scope: !3275, file: !591, line: 925, type: !83)
!3280 = !DILocalVariable(name: "arg", arg: 2, scope: !3275, file: !591, line: 925, type: !142)
!3281 = !DILocalVariable(name: "argsize", arg: 3, scope: !3275, file: !591, line: 925, type: !139)
!3282 = !DILocation(line: 0, scope: !3275)
!3283 = !DILocation(line: 927, column: 10, scope: !3275)
!3284 = !DILocation(line: 927, column: 3, scope: !3275)
!3285 = distinct !DISubprogram(name: "quotearg", scope: !591, file: !591, line: 931, type: !1110, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3286)
!3286 = !{!3287}
!3287 = !DILocalVariable(name: "arg", arg: 1, scope: !3285, file: !591, line: 931, type: !142)
!3288 = !DILocation(line: 0, scope: !3285)
!3289 = !DILocation(line: 0, scope: !3181, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 933, column: 10, scope: !3285)
!3291 = !DILocation(line: 921, column: 10, scope: !3181, inlinedAt: !3290)
!3292 = !DILocation(line: 933, column: 3, scope: !3285)
!3293 = distinct !DISubprogram(name: "quotearg_mem", scope: !591, file: !591, line: 937, type: !3294, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!136, !142, !139}
!3296 = !{!3297, !3298}
!3297 = !DILocalVariable(name: "arg", arg: 1, scope: !3293, file: !591, line: 937, type: !142)
!3298 = !DILocalVariable(name: "argsize", arg: 2, scope: !3293, file: !591, line: 937, type: !139)
!3299 = !DILocation(line: 0, scope: !3293)
!3300 = !DILocation(line: 0, scope: !3275, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 939, column: 10, scope: !3293)
!3302 = !DILocation(line: 927, column: 10, scope: !3275, inlinedAt: !3301)
!3303 = !DILocation(line: 939, column: 3, scope: !3293)
!3304 = distinct !DISubprogram(name: "quotearg_n_style", scope: !591, file: !591, line: 943, type: !3305, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!136, !83, !102, !142}
!3307 = !{!3308, !3309, !3310, !3311}
!3308 = !DILocalVariable(name: "n", arg: 1, scope: !3304, file: !591, line: 943, type: !83)
!3309 = !DILocalVariable(name: "s", arg: 2, scope: !3304, file: !591, line: 943, type: !102)
!3310 = !DILocalVariable(name: "arg", arg: 3, scope: !3304, file: !591, line: 943, type: !142)
!3311 = !DILocalVariable(name: "o", scope: !3304, file: !591, line: 945, type: !2414)
!3312 = !DILocation(line: 0, scope: !3304)
!3313 = !DILocation(line: 945, column: 3, scope: !3304)
!3314 = !DILocation(line: 945, column: 32, scope: !3304)
!3315 = !{!3316}
!3316 = distinct !{!3316, !3317, !"quoting_options_from_style: argument 0"}
!3317 = distinct !{!3317, !"quoting_options_from_style"}
!3318 = !DILocation(line: 945, column: 36, scope: !3304)
!3319 = !DILocalVariable(name: "style", arg: 1, scope: !3320, file: !591, line: 183, type: !102)
!3320 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !591, file: !591, line: 183, type: !3321, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!630, !102}
!3323 = !{!3319, !3324}
!3324 = !DILocalVariable(name: "o", scope: !3320, file: !591, line: 185, type: !630)
!3325 = !DILocation(line: 0, scope: !3320, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 945, column: 36, scope: !3304)
!3327 = !DILocation(line: 185, column: 26, scope: !3320, inlinedAt: !3326)
!3328 = !DILocation(line: 186, column: 13, scope: !3329, inlinedAt: !3326)
!3329 = distinct !DILexicalBlock(scope: !3320, file: !591, line: 186, column: 7)
!3330 = !DILocation(line: 186, column: 7, scope: !3320, inlinedAt: !3326)
!3331 = !DILocation(line: 187, column: 5, scope: !3329, inlinedAt: !3326)
!3332 = !DILocation(line: 188, column: 11, scope: !3320, inlinedAt: !3326)
!3333 = !DILocation(line: 946, column: 10, scope: !3304)
!3334 = !DILocation(line: 947, column: 1, scope: !3304)
!3335 = !DILocation(line: 946, column: 3, scope: !3304)
!3336 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !591, file: !591, line: 950, type: !3337, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!136, !83, !102, !142, !139}
!3339 = !{!3340, !3341, !3342, !3343, !3344}
!3340 = !DILocalVariable(name: "n", arg: 1, scope: !3336, file: !591, line: 950, type: !83)
!3341 = !DILocalVariable(name: "s", arg: 2, scope: !3336, file: !591, line: 950, type: !102)
!3342 = !DILocalVariable(name: "arg", arg: 3, scope: !3336, file: !591, line: 951, type: !142)
!3343 = !DILocalVariable(name: "argsize", arg: 4, scope: !3336, file: !591, line: 951, type: !139)
!3344 = !DILocalVariable(name: "o", scope: !3336, file: !591, line: 953, type: !2414)
!3345 = !DILocation(line: 0, scope: !3336)
!3346 = !DILocation(line: 953, column: 3, scope: !3336)
!3347 = !DILocation(line: 953, column: 32, scope: !3336)
!3348 = !{!3349}
!3349 = distinct !{!3349, !3350, !"quoting_options_from_style: argument 0"}
!3350 = distinct !{!3350, !"quoting_options_from_style"}
!3351 = !DILocation(line: 953, column: 36, scope: !3336)
!3352 = !DILocation(line: 0, scope: !3320, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 953, column: 36, scope: !3336)
!3354 = !DILocation(line: 185, column: 26, scope: !3320, inlinedAt: !3353)
!3355 = !DILocation(line: 186, column: 13, scope: !3329, inlinedAt: !3353)
!3356 = !DILocation(line: 186, column: 7, scope: !3320, inlinedAt: !3353)
!3357 = !DILocation(line: 187, column: 5, scope: !3329, inlinedAt: !3353)
!3358 = !DILocation(line: 188, column: 11, scope: !3320, inlinedAt: !3353)
!3359 = !DILocation(line: 954, column: 10, scope: !3336)
!3360 = !DILocation(line: 955, column: 1, scope: !3336)
!3361 = !DILocation(line: 954, column: 3, scope: !3336)
!3362 = distinct !DISubprogram(name: "quotearg_style", scope: !591, file: !591, line: 958, type: !3363, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!136, !102, !142}
!3365 = !{!3366, !3367}
!3366 = !DILocalVariable(name: "s", arg: 1, scope: !3362, file: !591, line: 958, type: !102)
!3367 = !DILocalVariable(name: "arg", arg: 2, scope: !3362, file: !591, line: 958, type: !142)
!3368 = !DILocation(line: 0, scope: !3362)
!3369 = !DILocation(line: 0, scope: !3304, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 960, column: 10, scope: !3362)
!3371 = !DILocation(line: 945, column: 3, scope: !3304, inlinedAt: !3370)
!3372 = !DILocation(line: 945, column: 32, scope: !3304, inlinedAt: !3370)
!3373 = !{!3374}
!3374 = distinct !{!3374, !3375, !"quoting_options_from_style: argument 0"}
!3375 = distinct !{!3375, !"quoting_options_from_style"}
!3376 = !DILocation(line: 945, column: 36, scope: !3304, inlinedAt: !3370)
!3377 = !DILocation(line: 0, scope: !3320, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 945, column: 36, scope: !3304, inlinedAt: !3370)
!3379 = !DILocation(line: 185, column: 26, scope: !3320, inlinedAt: !3378)
!3380 = !DILocation(line: 186, column: 13, scope: !3329, inlinedAt: !3378)
!3381 = !DILocation(line: 186, column: 7, scope: !3320, inlinedAt: !3378)
!3382 = !DILocation(line: 187, column: 5, scope: !3329, inlinedAt: !3378)
!3383 = !DILocation(line: 188, column: 11, scope: !3320, inlinedAt: !3378)
!3384 = !DILocation(line: 946, column: 10, scope: !3304, inlinedAt: !3370)
!3385 = !DILocation(line: 947, column: 1, scope: !3304, inlinedAt: !3370)
!3386 = !DILocation(line: 960, column: 3, scope: !3362)
!3387 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !591, file: !591, line: 964, type: !3388, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!136, !102, !142, !139}
!3390 = !{!3391, !3392, !3393}
!3391 = !DILocalVariable(name: "s", arg: 1, scope: !3387, file: !591, line: 964, type: !102)
!3392 = !DILocalVariable(name: "arg", arg: 2, scope: !3387, file: !591, line: 964, type: !142)
!3393 = !DILocalVariable(name: "argsize", arg: 3, scope: !3387, file: !591, line: 964, type: !139)
!3394 = !DILocation(line: 0, scope: !3387)
!3395 = !DILocation(line: 0, scope: !3336, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 966, column: 10, scope: !3387)
!3397 = !DILocation(line: 953, column: 3, scope: !3336, inlinedAt: !3396)
!3398 = !DILocation(line: 953, column: 32, scope: !3336, inlinedAt: !3396)
!3399 = !{!3400}
!3400 = distinct !{!3400, !3401, !"quoting_options_from_style: argument 0"}
!3401 = distinct !{!3401, !"quoting_options_from_style"}
!3402 = !DILocation(line: 953, column: 36, scope: !3336, inlinedAt: !3396)
!3403 = !DILocation(line: 0, scope: !3320, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 953, column: 36, scope: !3336, inlinedAt: !3396)
!3405 = !DILocation(line: 185, column: 26, scope: !3320, inlinedAt: !3404)
!3406 = !DILocation(line: 186, column: 13, scope: !3329, inlinedAt: !3404)
!3407 = !DILocation(line: 186, column: 7, scope: !3320, inlinedAt: !3404)
!3408 = !DILocation(line: 187, column: 5, scope: !3329, inlinedAt: !3404)
!3409 = !DILocation(line: 188, column: 11, scope: !3320, inlinedAt: !3404)
!3410 = !DILocation(line: 954, column: 10, scope: !3336, inlinedAt: !3396)
!3411 = !DILocation(line: 955, column: 1, scope: !3336, inlinedAt: !3396)
!3412 = !DILocation(line: 966, column: 3, scope: !3387)
!3413 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !591, file: !591, line: 970, type: !3414, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!136, !142, !139, !4}
!3416 = !{!3417, !3418, !3419, !3420}
!3417 = !DILocalVariable(name: "arg", arg: 1, scope: !3413, file: !591, line: 970, type: !142)
!3418 = !DILocalVariable(name: "argsize", arg: 2, scope: !3413, file: !591, line: 970, type: !139)
!3419 = !DILocalVariable(name: "ch", arg: 3, scope: !3413, file: !591, line: 970, type: !4)
!3420 = !DILocalVariable(name: "options", scope: !3413, file: !591, line: 972, type: !630)
!3421 = !DILocation(line: 0, scope: !3413)
!3422 = !DILocation(line: 972, column: 3, scope: !3413)
!3423 = !DILocation(line: 972, column: 26, scope: !3413)
!3424 = !DILocation(line: 973, column: 13, scope: !3413)
!3425 = !{i64 0, i64 4, !996, i64 4, i64 4, !987, i64 8, i64 32, !996, i64 40, i64 8, !917, i64 48, i64 8, !917}
!3426 = !DILocation(line: 0, scope: !2433, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 974, column: 3, scope: !3413)
!3428 = !DILocation(line: 147, column: 41, scope: !2433, inlinedAt: !3427)
!3429 = !DILocation(line: 147, column: 62, scope: !2433, inlinedAt: !3427)
!3430 = !DILocation(line: 147, column: 57, scope: !2433, inlinedAt: !3427)
!3431 = !DILocation(line: 148, column: 15, scope: !2433, inlinedAt: !3427)
!3432 = !DILocation(line: 149, column: 21, scope: !2433, inlinedAt: !3427)
!3433 = !DILocation(line: 149, column: 24, scope: !2433, inlinedAt: !3427)
!3434 = !DILocation(line: 150, column: 19, scope: !2433, inlinedAt: !3427)
!3435 = !DILocation(line: 150, column: 24, scope: !2433, inlinedAt: !3427)
!3436 = !DILocation(line: 150, column: 6, scope: !2433, inlinedAt: !3427)
!3437 = !DILocation(line: 975, column: 10, scope: !3413)
!3438 = !DILocation(line: 976, column: 1, scope: !3413)
!3439 = !DILocation(line: 975, column: 3, scope: !3413)
!3440 = distinct !DISubprogram(name: "quotearg_char", scope: !591, file: !591, line: 979, type: !3441, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3443)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!136, !142, !4}
!3443 = !{!3444, !3445}
!3444 = !DILocalVariable(name: "arg", arg: 1, scope: !3440, file: !591, line: 979, type: !142)
!3445 = !DILocalVariable(name: "ch", arg: 2, scope: !3440, file: !591, line: 979, type: !4)
!3446 = !DILocation(line: 0, scope: !3440)
!3447 = !DILocation(line: 0, scope: !3413, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 981, column: 10, scope: !3440)
!3449 = !DILocation(line: 972, column: 3, scope: !3413, inlinedAt: !3448)
!3450 = !DILocation(line: 972, column: 26, scope: !3413, inlinedAt: !3448)
!3451 = !DILocation(line: 973, column: 13, scope: !3413, inlinedAt: !3448)
!3452 = !DILocation(line: 0, scope: !2433, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 974, column: 3, scope: !3413, inlinedAt: !3448)
!3454 = !DILocation(line: 147, column: 41, scope: !2433, inlinedAt: !3453)
!3455 = !DILocation(line: 147, column: 62, scope: !2433, inlinedAt: !3453)
!3456 = !DILocation(line: 147, column: 57, scope: !2433, inlinedAt: !3453)
!3457 = !DILocation(line: 148, column: 15, scope: !2433, inlinedAt: !3453)
!3458 = !DILocation(line: 149, column: 21, scope: !2433, inlinedAt: !3453)
!3459 = !DILocation(line: 149, column: 24, scope: !2433, inlinedAt: !3453)
!3460 = !DILocation(line: 150, column: 19, scope: !2433, inlinedAt: !3453)
!3461 = !DILocation(line: 150, column: 24, scope: !2433, inlinedAt: !3453)
!3462 = !DILocation(line: 150, column: 6, scope: !2433, inlinedAt: !3453)
!3463 = !DILocation(line: 975, column: 10, scope: !3413, inlinedAt: !3448)
!3464 = !DILocation(line: 976, column: 1, scope: !3413, inlinedAt: !3448)
!3465 = !DILocation(line: 981, column: 3, scope: !3440)
!3466 = distinct !DISubprogram(name: "quotearg_colon", scope: !591, file: !591, line: 985, type: !1110, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3467)
!3467 = !{!3468}
!3468 = !DILocalVariable(name: "arg", arg: 1, scope: !3466, file: !591, line: 985, type: !142)
!3469 = !DILocation(line: 0, scope: !3466)
!3470 = !DILocation(line: 0, scope: !3440, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 987, column: 10, scope: !3466)
!3472 = !DILocation(line: 0, scope: !3413, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 981, column: 10, scope: !3440, inlinedAt: !3471)
!3474 = !DILocation(line: 972, column: 3, scope: !3413, inlinedAt: !3473)
!3475 = !DILocation(line: 972, column: 26, scope: !3413, inlinedAt: !3473)
!3476 = !DILocation(line: 973, column: 13, scope: !3413, inlinedAt: !3473)
!3477 = !DILocation(line: 0, scope: !2433, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 974, column: 3, scope: !3413, inlinedAt: !3473)
!3479 = !DILocation(line: 147, column: 57, scope: !2433, inlinedAt: !3478)
!3480 = !DILocation(line: 149, column: 21, scope: !2433, inlinedAt: !3478)
!3481 = !DILocation(line: 150, column: 6, scope: !2433, inlinedAt: !3478)
!3482 = !DILocation(line: 975, column: 10, scope: !3413, inlinedAt: !3473)
!3483 = !DILocation(line: 976, column: 1, scope: !3413, inlinedAt: !3473)
!3484 = !DILocation(line: 987, column: 3, scope: !3466)
!3485 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !591, file: !591, line: 991, type: !3294, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3486)
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "arg", arg: 1, scope: !3485, file: !591, line: 991, type: !142)
!3488 = !DILocalVariable(name: "argsize", arg: 2, scope: !3485, file: !591, line: 991, type: !139)
!3489 = !DILocation(line: 0, scope: !3485)
!3490 = !DILocation(line: 0, scope: !3413, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 993, column: 10, scope: !3485)
!3492 = !DILocation(line: 972, column: 3, scope: !3413, inlinedAt: !3491)
!3493 = !DILocation(line: 972, column: 26, scope: !3413, inlinedAt: !3491)
!3494 = !DILocation(line: 973, column: 13, scope: !3413, inlinedAt: !3491)
!3495 = !DILocation(line: 0, scope: !2433, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 974, column: 3, scope: !3413, inlinedAt: !3491)
!3497 = !DILocation(line: 147, column: 57, scope: !2433, inlinedAt: !3496)
!3498 = !DILocation(line: 149, column: 21, scope: !2433, inlinedAt: !3496)
!3499 = !DILocation(line: 150, column: 6, scope: !2433, inlinedAt: !3496)
!3500 = !DILocation(line: 975, column: 10, scope: !3413, inlinedAt: !3491)
!3501 = !DILocation(line: 976, column: 1, scope: !3413, inlinedAt: !3491)
!3502 = !DILocation(line: 993, column: 3, scope: !3485)
!3503 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !591, file: !591, line: 997, type: !3305, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3504)
!3504 = !{!3505, !3506, !3507, !3508}
!3505 = !DILocalVariable(name: "n", arg: 1, scope: !3503, file: !591, line: 997, type: !83)
!3506 = !DILocalVariable(name: "s", arg: 2, scope: !3503, file: !591, line: 997, type: !102)
!3507 = !DILocalVariable(name: "arg", arg: 3, scope: !3503, file: !591, line: 997, type: !142)
!3508 = !DILocalVariable(name: "options", scope: !3503, file: !591, line: 999, type: !630)
!3509 = !DILocation(line: 185, column: 26, scope: !3320, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 1000, column: 13, scope: !3503)
!3511 = !DILocation(line: 0, scope: !3503)
!3512 = !DILocation(line: 999, column: 3, scope: !3503)
!3513 = !DILocation(line: 999, column: 26, scope: !3503)
!3514 = !DILocation(line: 0, scope: !3320, inlinedAt: !3510)
!3515 = !DILocation(line: 186, column: 13, scope: !3329, inlinedAt: !3510)
!3516 = !DILocation(line: 186, column: 7, scope: !3320, inlinedAt: !3510)
!3517 = !DILocation(line: 187, column: 5, scope: !3329, inlinedAt: !3510)
!3518 = !{!3519}
!3519 = distinct !{!3519, !3520, !"quoting_options_from_style: argument 0"}
!3520 = distinct !{!3520, !"quoting_options_from_style"}
!3521 = !DILocation(line: 1000, column: 13, scope: !3503)
!3522 = !DILocation(line: 0, scope: !2433, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 1001, column: 3, scope: !3503)
!3524 = !DILocation(line: 147, column: 57, scope: !2433, inlinedAt: !3523)
!3525 = !DILocation(line: 149, column: 21, scope: !2433, inlinedAt: !3523)
!3526 = !DILocation(line: 150, column: 6, scope: !2433, inlinedAt: !3523)
!3527 = !DILocation(line: 1002, column: 10, scope: !3503)
!3528 = !DILocation(line: 1003, column: 1, scope: !3503)
!3529 = !DILocation(line: 1002, column: 3, scope: !3503)
!3530 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !591, file: !591, line: 1006, type: !3531, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!136, !83, !142, !142, !142}
!3533 = !{!3534, !3535, !3536, !3537}
!3534 = !DILocalVariable(name: "n", arg: 1, scope: !3530, file: !591, line: 1006, type: !83)
!3535 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3530, file: !591, line: 1006, type: !142)
!3536 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3530, file: !591, line: 1007, type: !142)
!3537 = !DILocalVariable(name: "arg", arg: 4, scope: !3530, file: !591, line: 1007, type: !142)
!3538 = !DILocation(line: 0, scope: !3530)
!3539 = !DILocalVariable(name: "n", arg: 1, scope: !3540, file: !591, line: 1014, type: !83)
!3540 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !591, file: !591, line: 1014, type: !3541, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!136, !83, !142, !142, !142, !139}
!3543 = !{!3539, !3544, !3545, !3546, !3547, !3548}
!3544 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3540, file: !591, line: 1014, type: !142)
!3545 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3540, file: !591, line: 1015, type: !142)
!3546 = !DILocalVariable(name: "arg", arg: 4, scope: !3540, file: !591, line: 1016, type: !142)
!3547 = !DILocalVariable(name: "argsize", arg: 5, scope: !3540, file: !591, line: 1016, type: !139)
!3548 = !DILocalVariable(name: "o", scope: !3540, file: !591, line: 1018, type: !630)
!3549 = !DILocation(line: 0, scope: !3540, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 1009, column: 10, scope: !3530)
!3551 = !DILocation(line: 1018, column: 3, scope: !3540, inlinedAt: !3550)
!3552 = !DILocation(line: 1018, column: 26, scope: !3540, inlinedAt: !3550)
!3553 = !DILocation(line: 1018, column: 30, scope: !3540, inlinedAt: !3550)
!3554 = !DILocation(line: 0, scope: !2473, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 1019, column: 3, scope: !3540, inlinedAt: !3550)
!3556 = !DILocation(line: 174, column: 12, scope: !2473, inlinedAt: !3555)
!3557 = !DILocation(line: 175, column: 8, scope: !2486, inlinedAt: !3555)
!3558 = !DILocation(line: 175, column: 19, scope: !2486, inlinedAt: !3555)
!3559 = !DILocation(line: 176, column: 5, scope: !2486, inlinedAt: !3555)
!3560 = !DILocation(line: 177, column: 6, scope: !2473, inlinedAt: !3555)
!3561 = !DILocation(line: 177, column: 17, scope: !2473, inlinedAt: !3555)
!3562 = !DILocation(line: 178, column: 6, scope: !2473, inlinedAt: !3555)
!3563 = !DILocation(line: 178, column: 18, scope: !2473, inlinedAt: !3555)
!3564 = !DILocation(line: 1020, column: 10, scope: !3540, inlinedAt: !3550)
!3565 = !DILocation(line: 1021, column: 1, scope: !3540, inlinedAt: !3550)
!3566 = !DILocation(line: 1009, column: 3, scope: !3530)
!3567 = !DILocation(line: 0, scope: !3540)
!3568 = !DILocation(line: 1018, column: 3, scope: !3540)
!3569 = !DILocation(line: 1018, column: 26, scope: !3540)
!3570 = !DILocation(line: 1018, column: 30, scope: !3540)
!3571 = !DILocation(line: 0, scope: !2473, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 1019, column: 3, scope: !3540)
!3573 = !DILocation(line: 174, column: 12, scope: !2473, inlinedAt: !3572)
!3574 = !DILocation(line: 175, column: 8, scope: !2486, inlinedAt: !3572)
!3575 = !DILocation(line: 175, column: 19, scope: !2486, inlinedAt: !3572)
!3576 = !DILocation(line: 176, column: 5, scope: !2486, inlinedAt: !3572)
!3577 = !DILocation(line: 177, column: 6, scope: !2473, inlinedAt: !3572)
!3578 = !DILocation(line: 177, column: 17, scope: !2473, inlinedAt: !3572)
!3579 = !DILocation(line: 178, column: 6, scope: !2473, inlinedAt: !3572)
!3580 = !DILocation(line: 178, column: 18, scope: !2473, inlinedAt: !3572)
!3581 = !DILocation(line: 1020, column: 10, scope: !3540)
!3582 = !DILocation(line: 1021, column: 1, scope: !3540)
!3583 = !DILocation(line: 1020, column: 3, scope: !3540)
!3584 = distinct !DISubprogram(name: "quotearg_custom", scope: !591, file: !591, line: 1024, type: !3585, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!136, !142, !142, !142}
!3587 = !{!3588, !3589, !3590}
!3588 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3584, file: !591, line: 1024, type: !142)
!3589 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3584, file: !591, line: 1024, type: !142)
!3590 = !DILocalVariable(name: "arg", arg: 3, scope: !3584, file: !591, line: 1025, type: !142)
!3591 = !DILocation(line: 0, scope: !3584)
!3592 = !DILocation(line: 0, scope: !3530, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 1027, column: 10, scope: !3584)
!3594 = !DILocation(line: 0, scope: !3540, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 1009, column: 10, scope: !3530, inlinedAt: !3593)
!3596 = !DILocation(line: 1018, column: 3, scope: !3540, inlinedAt: !3595)
!3597 = !DILocation(line: 1018, column: 26, scope: !3540, inlinedAt: !3595)
!3598 = !DILocation(line: 1018, column: 30, scope: !3540, inlinedAt: !3595)
!3599 = !DILocation(line: 0, scope: !2473, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 1019, column: 3, scope: !3540, inlinedAt: !3595)
!3601 = !DILocation(line: 174, column: 12, scope: !2473, inlinedAt: !3600)
!3602 = !DILocation(line: 175, column: 8, scope: !2486, inlinedAt: !3600)
!3603 = !DILocation(line: 175, column: 19, scope: !2486, inlinedAt: !3600)
!3604 = !DILocation(line: 176, column: 5, scope: !2486, inlinedAt: !3600)
!3605 = !DILocation(line: 177, column: 6, scope: !2473, inlinedAt: !3600)
!3606 = !DILocation(line: 177, column: 17, scope: !2473, inlinedAt: !3600)
!3607 = !DILocation(line: 178, column: 6, scope: !2473, inlinedAt: !3600)
!3608 = !DILocation(line: 178, column: 18, scope: !2473, inlinedAt: !3600)
!3609 = !DILocation(line: 1020, column: 10, scope: !3540, inlinedAt: !3595)
!3610 = !DILocation(line: 1021, column: 1, scope: !3540, inlinedAt: !3595)
!3611 = !DILocation(line: 1027, column: 3, scope: !3584)
!3612 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !591, file: !591, line: 1031, type: !3613, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!136, !142, !142, !142, !139}
!3615 = !{!3616, !3617, !3618, !3619}
!3616 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3612, file: !591, line: 1031, type: !142)
!3617 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3612, file: !591, line: 1031, type: !142)
!3618 = !DILocalVariable(name: "arg", arg: 3, scope: !3612, file: !591, line: 1032, type: !142)
!3619 = !DILocalVariable(name: "argsize", arg: 4, scope: !3612, file: !591, line: 1032, type: !139)
!3620 = !DILocation(line: 0, scope: !3612)
!3621 = !DILocation(line: 0, scope: !3540, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 1034, column: 10, scope: !3612)
!3623 = !DILocation(line: 1018, column: 3, scope: !3540, inlinedAt: !3622)
!3624 = !DILocation(line: 1018, column: 26, scope: !3540, inlinedAt: !3622)
!3625 = !DILocation(line: 1018, column: 30, scope: !3540, inlinedAt: !3622)
!3626 = !DILocation(line: 0, scope: !2473, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 1019, column: 3, scope: !3540, inlinedAt: !3622)
!3628 = !DILocation(line: 174, column: 12, scope: !2473, inlinedAt: !3627)
!3629 = !DILocation(line: 175, column: 8, scope: !2486, inlinedAt: !3627)
!3630 = !DILocation(line: 175, column: 19, scope: !2486, inlinedAt: !3627)
!3631 = !DILocation(line: 176, column: 5, scope: !2486, inlinedAt: !3627)
!3632 = !DILocation(line: 177, column: 6, scope: !2473, inlinedAt: !3627)
!3633 = !DILocation(line: 177, column: 17, scope: !2473, inlinedAt: !3627)
!3634 = !DILocation(line: 178, column: 6, scope: !2473, inlinedAt: !3627)
!3635 = !DILocation(line: 178, column: 18, scope: !2473, inlinedAt: !3627)
!3636 = !DILocation(line: 1020, column: 10, scope: !3540, inlinedAt: !3622)
!3637 = !DILocation(line: 1021, column: 1, scope: !3540, inlinedAt: !3622)
!3638 = !DILocation(line: 1034, column: 3, scope: !3612)
!3639 = distinct !DISubprogram(name: "quote_n_mem", scope: !591, file: !591, line: 1049, type: !3640, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!142, !83, !142, !139}
!3642 = !{!3643, !3644, !3645}
!3643 = !DILocalVariable(name: "n", arg: 1, scope: !3639, file: !591, line: 1049, type: !83)
!3644 = !DILocalVariable(name: "arg", arg: 2, scope: !3639, file: !591, line: 1049, type: !142)
!3645 = !DILocalVariable(name: "argsize", arg: 3, scope: !3639, file: !591, line: 1049, type: !139)
!3646 = !DILocation(line: 0, scope: !3639)
!3647 = !DILocation(line: 1051, column: 10, scope: !3639)
!3648 = !DILocation(line: 1051, column: 3, scope: !3639)
!3649 = distinct !DISubprogram(name: "quote_mem", scope: !591, file: !591, line: 1055, type: !3650, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!142, !142, !139}
!3652 = !{!3653, !3654}
!3653 = !DILocalVariable(name: "arg", arg: 1, scope: !3649, file: !591, line: 1055, type: !142)
!3654 = !DILocalVariable(name: "argsize", arg: 2, scope: !3649, file: !591, line: 1055, type: !139)
!3655 = !DILocation(line: 0, scope: !3649)
!3656 = !DILocation(line: 0, scope: !3639, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 1057, column: 10, scope: !3649)
!3658 = !DILocation(line: 1051, column: 10, scope: !3639, inlinedAt: !3657)
!3659 = !DILocation(line: 1057, column: 3, scope: !3649)
!3660 = distinct !DISubprogram(name: "quote_n", scope: !591, file: !591, line: 1061, type: !3661, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!142, !83, !142}
!3663 = !{!3664, !3665}
!3664 = !DILocalVariable(name: "n", arg: 1, scope: !3660, file: !591, line: 1061, type: !83)
!3665 = !DILocalVariable(name: "arg", arg: 2, scope: !3660, file: !591, line: 1061, type: !142)
!3666 = !DILocation(line: 0, scope: !3660)
!3667 = !DILocation(line: 0, scope: !3639, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 1063, column: 10, scope: !3660)
!3669 = !DILocation(line: 1051, column: 10, scope: !3639, inlinedAt: !3668)
!3670 = !DILocation(line: 1063, column: 3, scope: !3660)
!3671 = distinct !DISubprogram(name: "quote", scope: !591, file: !591, line: 1067, type: !3672, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3674)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!142, !142}
!3674 = !{!3675}
!3675 = !DILocalVariable(name: "arg", arg: 1, scope: !3671, file: !591, line: 1067, type: !142)
!3676 = !DILocation(line: 0, scope: !3671)
!3677 = !DILocation(line: 0, scope: !3660, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 1069, column: 10, scope: !3671)
!3679 = !DILocation(line: 0, scope: !3639, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 1063, column: 10, scope: !3660, inlinedAt: !3678)
!3681 = !DILocation(line: 1051, column: 10, scope: !3639, inlinedAt: !3680)
!3682 = !DILocation(line: 1069, column: 3, scope: !3671)
!3683 = distinct !DISubprogram(name: "version_etc_arn", scope: !691, file: !691, line: 61, type: !3684, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3721)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !3686, !142, !142, !142, !3720, !139}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !3688)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3688, file: !206, line: 51, baseType: !83, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3688, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3688, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3688, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3688, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3688, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3688, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3688, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3688, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3688, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3688, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3688, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3688, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3688, file: !206, line: 70, baseType: !3704, size: 64, offset: 832)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3688, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3688, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3688, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3688, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3688, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3688, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3688, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3688, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3688, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3688, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3688, file: !206, line: 93, baseType: !3704, size: 64, offset: 1344)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3688, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3688, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3688, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3688, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!3721 = !{!3722, !3723, !3724, !3725, !3726, !3727}
!3722 = !DILocalVariable(name: "stream", arg: 1, scope: !3683, file: !691, line: 61, type: !3686)
!3723 = !DILocalVariable(name: "command_name", arg: 2, scope: !3683, file: !691, line: 62, type: !142)
!3724 = !DILocalVariable(name: "package", arg: 3, scope: !3683, file: !691, line: 62, type: !142)
!3725 = !DILocalVariable(name: "version", arg: 4, scope: !3683, file: !691, line: 63, type: !142)
!3726 = !DILocalVariable(name: "authors", arg: 5, scope: !3683, file: !691, line: 64, type: !3720)
!3727 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3683, file: !691, line: 64, type: !139)
!3728 = !DILocation(line: 0, scope: !3683)
!3729 = !DILocation(line: 66, column: 7, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3683, file: !691, line: 66, column: 7)
!3731 = !DILocation(line: 66, column: 7, scope: !3683)
!3732 = !DILocation(line: 67, column: 5, scope: !3730)
!3733 = !DILocation(line: 69, column: 5, scope: !3730)
!3734 = !DILocation(line: 83, column: 3, scope: !3683)
!3735 = !DILocation(line: 85, column: 3, scope: !3683)
!3736 = !DILocation(line: 88, column: 3, scope: !3683)
!3737 = !DILocation(line: 95, column: 3, scope: !3683)
!3738 = !DILocation(line: 97, column: 3, scope: !3683)
!3739 = !DILocation(line: 105, column: 7, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3683, file: !691, line: 98, column: 5)
!3741 = !DILocation(line: 106, column: 7, scope: !3740)
!3742 = !DILocation(line: 109, column: 7, scope: !3740)
!3743 = !DILocation(line: 110, column: 7, scope: !3740)
!3744 = !DILocation(line: 113, column: 7, scope: !3740)
!3745 = !DILocation(line: 115, column: 7, scope: !3740)
!3746 = !DILocation(line: 120, column: 7, scope: !3740)
!3747 = !DILocation(line: 122, column: 7, scope: !3740)
!3748 = !DILocation(line: 127, column: 7, scope: !3740)
!3749 = !DILocation(line: 129, column: 7, scope: !3740)
!3750 = !DILocation(line: 134, column: 7, scope: !3740)
!3751 = !DILocation(line: 137, column: 7, scope: !3740)
!3752 = !DILocation(line: 142, column: 7, scope: !3740)
!3753 = !DILocation(line: 145, column: 7, scope: !3740)
!3754 = !DILocation(line: 150, column: 7, scope: !3740)
!3755 = !DILocation(line: 154, column: 7, scope: !3740)
!3756 = !DILocation(line: 159, column: 7, scope: !3740)
!3757 = !DILocation(line: 163, column: 7, scope: !3740)
!3758 = !DILocation(line: 170, column: 7, scope: !3740)
!3759 = !DILocation(line: 174, column: 7, scope: !3740)
!3760 = !DILocation(line: 176, column: 1, scope: !3683)
!3761 = distinct !DISubprogram(name: "version_etc_ar", scope: !691, file: !691, line: 183, type: !3762, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3686, !142, !142, !142, !3720}
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770}
!3765 = !DILocalVariable(name: "stream", arg: 1, scope: !3761, file: !691, line: 183, type: !3686)
!3766 = !DILocalVariable(name: "command_name", arg: 2, scope: !3761, file: !691, line: 184, type: !142)
!3767 = !DILocalVariable(name: "package", arg: 3, scope: !3761, file: !691, line: 184, type: !142)
!3768 = !DILocalVariable(name: "version", arg: 4, scope: !3761, file: !691, line: 185, type: !142)
!3769 = !DILocalVariable(name: "authors", arg: 5, scope: !3761, file: !691, line: 185, type: !3720)
!3770 = !DILocalVariable(name: "n_authors", scope: !3761, file: !691, line: 187, type: !139)
!3771 = !DILocation(line: 0, scope: !3761)
!3772 = !DILocation(line: 189, column: 8, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3761, file: !691, line: 189, column: 3)
!3774 = !DILocation(line: 189, scope: !3773)
!3775 = !DILocation(line: 189, column: 23, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3773, file: !691, line: 189, column: 3)
!3777 = !DILocation(line: 189, column: 3, scope: !3773)
!3778 = !DILocation(line: 189, column: 52, scope: !3776)
!3779 = distinct !{!3779, !3777, !3780, !1034}
!3780 = !DILocation(line: 190, column: 5, scope: !3773)
!3781 = !DILocation(line: 191, column: 3, scope: !3761)
!3782 = !DILocation(line: 192, column: 1, scope: !3761)
!3783 = distinct !DISubprogram(name: "version_etc_va", scope: !691, file: !691, line: 199, type: !3784, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3797)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !3686, !142, !142, !142, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !509, line: 52, baseType: !3787)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !511, line: 14, baseType: !3788)
!3788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3789, baseType: !3790)
!3789 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3791)
!3791 = !{!3792, !3793, !3794, !3795, !3796}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3790, file: !3789, line: 192, baseType: !137, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3790, file: !3789, line: 192, baseType: !137, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3790, file: !3789, line: 192, baseType: !137, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3790, file: !3789, line: 192, baseType: !83, size: 32, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3790, file: !3789, line: 192, baseType: !83, size: 32, offset: 224)
!3797 = !{!3798, !3799, !3800, !3801, !3802, !3803, !3804}
!3798 = !DILocalVariable(name: "stream", arg: 1, scope: !3783, file: !691, line: 199, type: !3686)
!3799 = !DILocalVariable(name: "command_name", arg: 2, scope: !3783, file: !691, line: 200, type: !142)
!3800 = !DILocalVariable(name: "package", arg: 3, scope: !3783, file: !691, line: 200, type: !142)
!3801 = !DILocalVariable(name: "version", arg: 4, scope: !3783, file: !691, line: 201, type: !142)
!3802 = !DILocalVariable(name: "authors", arg: 5, scope: !3783, file: !691, line: 201, type: !3786)
!3803 = !DILocalVariable(name: "n_authors", scope: !3783, file: !691, line: 203, type: !139)
!3804 = !DILocalVariable(name: "authtab", scope: !3783, file: !691, line: 204, type: !3805)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 640, elements: !57)
!3806 = !DILocation(line: 0, scope: !3783)
!3807 = !DILocation(line: 201, column: 46, scope: !3783)
!3808 = !DILocation(line: 204, column: 3, scope: !3783)
!3809 = !DILocation(line: 204, column: 15, scope: !3783)
!3810 = !DILocation(line: 208, column: 35, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !691, line: 206, column: 3)
!3812 = distinct !DILexicalBlock(scope: !3783, file: !691, line: 206, column: 3)
!3813 = !DILocation(line: 208, column: 33, scope: !3811)
!3814 = !DILocation(line: 208, column: 67, scope: !3811)
!3815 = !DILocation(line: 206, column: 3, scope: !3812)
!3816 = !DILocation(line: 208, column: 14, scope: !3811)
!3817 = !DILocation(line: 0, scope: !3812)
!3818 = !DILocation(line: 211, column: 3, scope: !3783)
!3819 = !DILocation(line: 213, column: 1, scope: !3783)
!3820 = distinct !DISubprogram(name: "version_etc", scope: !691, file: !691, line: 230, type: !3821, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3686, !142, !142, !142, null}
!3823 = !{!3824, !3825, !3826, !3827, !3828}
!3824 = !DILocalVariable(name: "stream", arg: 1, scope: !3820, file: !691, line: 230, type: !3686)
!3825 = !DILocalVariable(name: "command_name", arg: 2, scope: !3820, file: !691, line: 231, type: !142)
!3826 = !DILocalVariable(name: "package", arg: 3, scope: !3820, file: !691, line: 231, type: !142)
!3827 = !DILocalVariable(name: "version", arg: 4, scope: !3820, file: !691, line: 232, type: !142)
!3828 = !DILocalVariable(name: "authors", scope: !3820, file: !691, line: 234, type: !3786)
!3829 = !DILocation(line: 0, scope: !3820)
!3830 = !DILocation(line: 234, column: 3, scope: !3820)
!3831 = !DILocation(line: 234, column: 11, scope: !3820)
!3832 = !DILocation(line: 235, column: 3, scope: !3820)
!3833 = !DILocation(line: 236, column: 3, scope: !3820)
!3834 = !DILocation(line: 237, column: 3, scope: !3820)
!3835 = !DILocation(line: 238, column: 1, scope: !3820)
!3836 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !691, file: !691, line: 241, type: !550, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !926)
!3837 = !DILocation(line: 243, column: 3, scope: !3836)
!3838 = !DILocation(line: 248, column: 3, scope: !3836)
!3839 = !DILocation(line: 254, column: 3, scope: !3836)
!3840 = !DILocation(line: 259, column: 3, scope: !3836)
!3841 = !DILocation(line: 261, column: 1, scope: !3836)
!3842 = distinct !DISubprogram(name: "xnrealloc", scope: !3843, file: !3843, line: 147, type: !3844, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3846)
!3843 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!137, !137, !139, !139}
!3846 = !{!3847, !3848, !3849}
!3847 = !DILocalVariable(name: "p", arg: 1, scope: !3842, file: !3843, line: 147, type: !137)
!3848 = !DILocalVariable(name: "n", arg: 2, scope: !3842, file: !3843, line: 147, type: !139)
!3849 = !DILocalVariable(name: "s", arg: 3, scope: !3842, file: !3843, line: 147, type: !139)
!3850 = !DILocation(line: 0, scope: !3842)
!3851 = !DILocalVariable(name: "p", arg: 1, scope: !3852, file: !834, line: 83, type: !137)
!3852 = distinct !DISubprogram(name: "xreallocarray", scope: !834, file: !834, line: 83, type: !3844, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3853)
!3853 = !{!3851, !3854, !3855}
!3854 = !DILocalVariable(name: "n", arg: 2, scope: !3852, file: !834, line: 83, type: !139)
!3855 = !DILocalVariable(name: "s", arg: 3, scope: !3852, file: !834, line: 83, type: !139)
!3856 = !DILocation(line: 0, scope: !3852, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 149, column: 10, scope: !3842)
!3858 = !DILocation(line: 85, column: 25, scope: !3852, inlinedAt: !3857)
!3859 = !DILocalVariable(name: "p", arg: 1, scope: !3860, file: !834, line: 37, type: !137)
!3860 = distinct !DISubprogram(name: "check_nonnull", scope: !834, file: !834, line: 37, type: !3861, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!137, !137}
!3863 = !{!3859}
!3864 = !DILocation(line: 0, scope: !3860, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 85, column: 10, scope: !3852, inlinedAt: !3857)
!3866 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !3865)
!3867 = distinct !DILexicalBlock(scope: !3860, file: !834, line: 39, column: 7)
!3868 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !3865)
!3869 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !3865)
!3870 = !DILocation(line: 149, column: 3, scope: !3842)
!3871 = !DILocation(line: 0, scope: !3852)
!3872 = !DILocation(line: 85, column: 25, scope: !3852)
!3873 = !DILocation(line: 0, scope: !3860, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 85, column: 10, scope: !3852)
!3875 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !3874)
!3876 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !3874)
!3877 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !3874)
!3878 = !DILocation(line: 85, column: 3, scope: !3852)
!3879 = distinct !DISubprogram(name: "xmalloc", scope: !834, file: !834, line: 47, type: !3880, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3882)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!137, !139}
!3882 = !{!3883}
!3883 = !DILocalVariable(name: "s", arg: 1, scope: !3879, file: !834, line: 47, type: !139)
!3884 = !DILocation(line: 0, scope: !3879)
!3885 = !DILocation(line: 49, column: 25, scope: !3879)
!3886 = !DILocation(line: 0, scope: !3860, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 49, column: 10, scope: !3879)
!3888 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !3887)
!3889 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !3887)
!3890 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !3887)
!3891 = !DILocation(line: 49, column: 3, scope: !3879)
!3892 = !DISubprogram(name: "malloc", scope: !1108, file: !1108, line: 540, type: !3880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!3893 = distinct !DISubprogram(name: "ximalloc", scope: !834, file: !834, line: 53, type: !3894, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!137, !412}
!3896 = !{!3897}
!3897 = !DILocalVariable(name: "s", arg: 1, scope: !3893, file: !834, line: 53, type: !412)
!3898 = !DILocation(line: 0, scope: !3893)
!3899 = !DILocalVariable(name: "s", arg: 1, scope: !3900, file: !3901, line: 55, type: !412)
!3900 = distinct !DISubprogram(name: "imalloc", scope: !3901, file: !3901, line: 55, type: !3894, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3902)
!3901 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3902 = !{!3899}
!3903 = !DILocation(line: 0, scope: !3900, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 55, column: 25, scope: !3893)
!3905 = !DILocation(line: 57, column: 26, scope: !3900, inlinedAt: !3904)
!3906 = !DILocation(line: 0, scope: !3860, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 55, column: 10, scope: !3893)
!3908 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !3907)
!3909 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !3907)
!3910 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !3907)
!3911 = !DILocation(line: 55, column: 3, scope: !3893)
!3912 = distinct !DISubprogram(name: "xcharalloc", scope: !834, file: !834, line: 59, type: !3913, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3915)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!136, !139}
!3915 = !{!3916}
!3916 = !DILocalVariable(name: "n", arg: 1, scope: !3912, file: !834, line: 59, type: !139)
!3917 = !DILocation(line: 0, scope: !3912)
!3918 = !DILocation(line: 0, scope: !3879, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 61, column: 10, scope: !3912)
!3920 = !DILocation(line: 49, column: 25, scope: !3879, inlinedAt: !3919)
!3921 = !DILocation(line: 0, scope: !3860, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 49, column: 10, scope: !3879, inlinedAt: !3919)
!3923 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !3922)
!3924 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !3922)
!3925 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !3922)
!3926 = !DILocation(line: 61, column: 3, scope: !3912)
!3927 = distinct !DISubprogram(name: "xrealloc", scope: !834, file: !834, line: 68, type: !3928, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3930)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!137, !137, !139}
!3930 = !{!3931, !3932}
!3931 = !DILocalVariable(name: "p", arg: 1, scope: !3927, file: !834, line: 68, type: !137)
!3932 = !DILocalVariable(name: "s", arg: 2, scope: !3927, file: !834, line: 68, type: !139)
!3933 = !DILocation(line: 0, scope: !3927)
!3934 = !DILocalVariable(name: "ptr", arg: 1, scope: !3935, file: !3936, line: 2057, type: !137)
!3935 = distinct !DISubprogram(name: "rpl_realloc", scope: !3936, file: !3936, line: 2057, type: !3928, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3937)
!3936 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3937 = !{!3934, !3938}
!3938 = !DILocalVariable(name: "size", arg: 2, scope: !3935, file: !3936, line: 2057, type: !139)
!3939 = !DILocation(line: 0, scope: !3935, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 70, column: 25, scope: !3927)
!3941 = !DILocation(line: 2059, column: 24, scope: !3935, inlinedAt: !3940)
!3942 = !DILocation(line: 2059, column: 10, scope: !3935, inlinedAt: !3940)
!3943 = !DILocation(line: 0, scope: !3860, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 70, column: 10, scope: !3927)
!3945 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !3944)
!3946 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !3944)
!3947 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !3944)
!3948 = !DILocation(line: 70, column: 3, scope: !3927)
!3949 = !DISubprogram(name: "realloc", scope: !1108, file: !1108, line: 551, type: !3928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!3950 = distinct !DISubprogram(name: "xirealloc", scope: !834, file: !834, line: 74, type: !3951, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3953)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!137, !137, !412}
!3953 = !{!3954, !3955}
!3954 = !DILocalVariable(name: "p", arg: 1, scope: !3950, file: !834, line: 74, type: !137)
!3955 = !DILocalVariable(name: "s", arg: 2, scope: !3950, file: !834, line: 74, type: !412)
!3956 = !DILocation(line: 0, scope: !3950)
!3957 = !DILocalVariable(name: "p", arg: 1, scope: !3958, file: !3901, line: 66, type: !137)
!3958 = distinct !DISubprogram(name: "irealloc", scope: !3901, file: !3901, line: 66, type: !3951, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3959)
!3959 = !{!3957, !3960}
!3960 = !DILocalVariable(name: "s", arg: 2, scope: !3958, file: !3901, line: 66, type: !412)
!3961 = !DILocation(line: 0, scope: !3958, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 76, column: 25, scope: !3950)
!3963 = !DILocation(line: 0, scope: !3935, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 68, column: 26, scope: !3958, inlinedAt: !3962)
!3965 = !DILocation(line: 2059, column: 24, scope: !3935, inlinedAt: !3964)
!3966 = !DILocation(line: 2059, column: 10, scope: !3935, inlinedAt: !3964)
!3967 = !DILocation(line: 0, scope: !3860, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 76, column: 10, scope: !3950)
!3969 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !3968)
!3970 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !3968)
!3971 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !3968)
!3972 = !DILocation(line: 76, column: 3, scope: !3950)
!3973 = distinct !DISubprogram(name: "xireallocarray", scope: !834, file: !834, line: 89, type: !3974, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3976)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!137, !137, !412, !412}
!3976 = !{!3977, !3978, !3979}
!3977 = !DILocalVariable(name: "p", arg: 1, scope: !3973, file: !834, line: 89, type: !137)
!3978 = !DILocalVariable(name: "n", arg: 2, scope: !3973, file: !834, line: 89, type: !412)
!3979 = !DILocalVariable(name: "s", arg: 3, scope: !3973, file: !834, line: 89, type: !412)
!3980 = !DILocation(line: 0, scope: !3973)
!3981 = !DILocalVariable(name: "p", arg: 1, scope: !3982, file: !3901, line: 98, type: !137)
!3982 = distinct !DISubprogram(name: "ireallocarray", scope: !3901, file: !3901, line: 98, type: !3974, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3983)
!3983 = !{!3981, !3984, !3985}
!3984 = !DILocalVariable(name: "n", arg: 2, scope: !3982, file: !3901, line: 98, type: !412)
!3985 = !DILocalVariable(name: "s", arg: 3, scope: !3982, file: !3901, line: 98, type: !412)
!3986 = !DILocation(line: 0, scope: !3982, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 91, column: 25, scope: !3973)
!3988 = !DILocation(line: 101, column: 13, scope: !3982, inlinedAt: !3987)
!3989 = !DILocation(line: 0, scope: !3860, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 91, column: 10, scope: !3973)
!3991 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !3990)
!3992 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !3990)
!3993 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !3990)
!3994 = !DILocation(line: 91, column: 3, scope: !3973)
!3995 = distinct !DISubprogram(name: "xnmalloc", scope: !834, file: !834, line: 98, type: !3996, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!137, !139, !139}
!3998 = !{!3999, !4000}
!3999 = !DILocalVariable(name: "n", arg: 1, scope: !3995, file: !834, line: 98, type: !139)
!4000 = !DILocalVariable(name: "s", arg: 2, scope: !3995, file: !834, line: 98, type: !139)
!4001 = !DILocation(line: 0, scope: !3995)
!4002 = !DILocation(line: 0, scope: !3852, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 100, column: 10, scope: !3995)
!4004 = !DILocation(line: 85, column: 25, scope: !3852, inlinedAt: !4003)
!4005 = !DILocation(line: 0, scope: !3860, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 85, column: 10, scope: !3852, inlinedAt: !4003)
!4007 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4006)
!4008 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4006)
!4009 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4006)
!4010 = !DILocation(line: 100, column: 3, scope: !3995)
!4011 = distinct !DISubprogram(name: "xinmalloc", scope: !834, file: !834, line: 104, type: !4012, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!137, !412, !412}
!4014 = !{!4015, !4016}
!4015 = !DILocalVariable(name: "n", arg: 1, scope: !4011, file: !834, line: 104, type: !412)
!4016 = !DILocalVariable(name: "s", arg: 2, scope: !4011, file: !834, line: 104, type: !412)
!4017 = !DILocation(line: 0, scope: !4011)
!4018 = !DILocation(line: 0, scope: !3973, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 106, column: 10, scope: !4011)
!4020 = !DILocation(line: 0, scope: !3982, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 91, column: 25, scope: !3973, inlinedAt: !4019)
!4022 = !DILocation(line: 101, column: 13, scope: !3982, inlinedAt: !4021)
!4023 = !DILocation(line: 0, scope: !3860, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 91, column: 10, scope: !3973, inlinedAt: !4019)
!4025 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4024)
!4026 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4024)
!4027 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4024)
!4028 = !DILocation(line: 106, column: 3, scope: !4011)
!4029 = distinct !DISubprogram(name: "x2realloc", scope: !834, file: !834, line: 116, type: !4030, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!137, !137, !840}
!4032 = !{!4033, !4034}
!4033 = !DILocalVariable(name: "p", arg: 1, scope: !4029, file: !834, line: 116, type: !137)
!4034 = !DILocalVariable(name: "ps", arg: 2, scope: !4029, file: !834, line: 116, type: !840)
!4035 = !DILocation(line: 0, scope: !4029)
!4036 = !DILocation(line: 0, scope: !837, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 118, column: 10, scope: !4029)
!4038 = !DILocation(line: 178, column: 14, scope: !837, inlinedAt: !4037)
!4039 = !DILocation(line: 180, column: 9, scope: !4040, inlinedAt: !4037)
!4040 = distinct !DILexicalBlock(scope: !837, file: !834, line: 180, column: 7)
!4041 = !DILocation(line: 180, column: 7, scope: !837, inlinedAt: !4037)
!4042 = !DILocation(line: 182, column: 13, scope: !4043, inlinedAt: !4037)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !834, line: 182, column: 11)
!4044 = distinct !DILexicalBlock(scope: !4040, file: !834, line: 181, column: 5)
!4045 = !DILocation(line: 182, column: 11, scope: !4044, inlinedAt: !4037)
!4046 = !DILocation(line: 197, column: 11, scope: !4047, inlinedAt: !4037)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !834, line: 197, column: 11)
!4048 = distinct !DILexicalBlock(scope: !4040, file: !834, line: 195, column: 5)
!4049 = !DILocation(line: 197, column: 11, scope: !4048, inlinedAt: !4037)
!4050 = !DILocation(line: 198, column: 9, scope: !4047, inlinedAt: !4037)
!4051 = !DILocation(line: 0, scope: !3852, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 201, column: 7, scope: !837, inlinedAt: !4037)
!4053 = !DILocation(line: 85, column: 25, scope: !3852, inlinedAt: !4052)
!4054 = !DILocation(line: 0, scope: !3860, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 85, column: 10, scope: !3852, inlinedAt: !4052)
!4056 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4055)
!4057 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4055)
!4058 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4055)
!4059 = !DILocation(line: 202, column: 7, scope: !837, inlinedAt: !4037)
!4060 = !DILocation(line: 118, column: 3, scope: !4029)
!4061 = !DILocation(line: 0, scope: !837)
!4062 = !DILocation(line: 178, column: 14, scope: !837)
!4063 = !DILocation(line: 180, column: 9, scope: !4040)
!4064 = !DILocation(line: 180, column: 7, scope: !837)
!4065 = !DILocation(line: 182, column: 13, scope: !4043)
!4066 = !DILocation(line: 182, column: 11, scope: !4044)
!4067 = !DILocation(line: 190, column: 30, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4043, file: !834, line: 183, column: 9)
!4069 = !DILocation(line: 191, column: 16, scope: !4068)
!4070 = !DILocation(line: 191, column: 13, scope: !4068)
!4071 = !DILocation(line: 192, column: 9, scope: !4068)
!4072 = !DILocation(line: 197, column: 11, scope: !4047)
!4073 = !DILocation(line: 197, column: 11, scope: !4048)
!4074 = !DILocation(line: 198, column: 9, scope: !4047)
!4075 = !DILocation(line: 0, scope: !3852, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 201, column: 7, scope: !837)
!4077 = !DILocation(line: 85, column: 25, scope: !3852, inlinedAt: !4076)
!4078 = !DILocation(line: 0, scope: !3860, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 85, column: 10, scope: !3852, inlinedAt: !4076)
!4080 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4079)
!4081 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4079)
!4082 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4079)
!4083 = !DILocation(line: 202, column: 7, scope: !837)
!4084 = !DILocation(line: 203, column: 3, scope: !837)
!4085 = !DILocation(line: 0, scope: !849)
!4086 = !DILocation(line: 230, column: 14, scope: !849)
!4087 = !DILocation(line: 238, column: 7, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !849, file: !834, line: 238, column: 7)
!4089 = !DILocation(line: 238, column: 7, scope: !849)
!4090 = !DILocation(line: 240, column: 9, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !849, file: !834, line: 240, column: 7)
!4092 = !DILocation(line: 240, column: 18, scope: !4091)
!4093 = !DILocation(line: 253, column: 8, scope: !849)
!4094 = !DILocation(line: 258, column: 27, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !834, line: 257, column: 5)
!4096 = distinct !DILexicalBlock(scope: !849, file: !834, line: 256, column: 7)
!4097 = !DILocation(line: 259, column: 32, scope: !4095)
!4098 = !DILocation(line: 260, column: 5, scope: !4095)
!4099 = !DILocation(line: 262, column: 9, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !849, file: !834, line: 262, column: 7)
!4101 = !DILocation(line: 262, column: 7, scope: !849)
!4102 = !DILocation(line: 263, column: 9, scope: !4100)
!4103 = !DILocation(line: 263, column: 5, scope: !4100)
!4104 = !DILocation(line: 264, column: 9, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !849, file: !834, line: 264, column: 7)
!4106 = !DILocation(line: 264, column: 14, scope: !4105)
!4107 = !DILocation(line: 265, column: 7, scope: !4105)
!4108 = !DILocation(line: 265, column: 11, scope: !4105)
!4109 = !DILocation(line: 266, column: 11, scope: !4105)
!4110 = !DILocation(line: 267, column: 14, scope: !4105)
!4111 = !DILocation(line: 264, column: 7, scope: !849)
!4112 = !DILocation(line: 268, column: 5, scope: !4105)
!4113 = !DILocation(line: 0, scope: !3927, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 269, column: 8, scope: !849)
!4115 = !DILocation(line: 0, scope: !3935, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 70, column: 25, scope: !3927, inlinedAt: !4114)
!4117 = !DILocation(line: 2059, column: 24, scope: !3935, inlinedAt: !4116)
!4118 = !DILocation(line: 2059, column: 10, scope: !3935, inlinedAt: !4116)
!4119 = !DILocation(line: 0, scope: !3860, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 70, column: 10, scope: !3927, inlinedAt: !4114)
!4121 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4120)
!4122 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4120)
!4123 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4120)
!4124 = !DILocation(line: 270, column: 7, scope: !849)
!4125 = !DILocation(line: 271, column: 3, scope: !849)
!4126 = distinct !DISubprogram(name: "xzalloc", scope: !834, file: !834, line: 279, type: !3880, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4127)
!4127 = !{!4128}
!4128 = !DILocalVariable(name: "s", arg: 1, scope: !4126, file: !834, line: 279, type: !139)
!4129 = !DILocation(line: 0, scope: !4126)
!4130 = !DILocalVariable(name: "n", arg: 1, scope: !4131, file: !834, line: 294, type: !139)
!4131 = distinct !DISubprogram(name: "xcalloc", scope: !834, file: !834, line: 294, type: !3996, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4132)
!4132 = !{!4130, !4133}
!4133 = !DILocalVariable(name: "s", arg: 2, scope: !4131, file: !834, line: 294, type: !139)
!4134 = !DILocation(line: 0, scope: !4131, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 281, column: 10, scope: !4126)
!4136 = !DILocation(line: 296, column: 25, scope: !4131, inlinedAt: !4135)
!4137 = !DILocation(line: 0, scope: !3860, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 296, column: 10, scope: !4131, inlinedAt: !4135)
!4139 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4138)
!4140 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4138)
!4141 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4138)
!4142 = !DILocation(line: 281, column: 3, scope: !4126)
!4143 = !DISubprogram(name: "calloc", scope: !1108, file: !1108, line: 543, type: !3996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!4144 = !DILocation(line: 0, scope: !4131)
!4145 = !DILocation(line: 296, column: 25, scope: !4131)
!4146 = !DILocation(line: 0, scope: !3860, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 296, column: 10, scope: !4131)
!4148 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4147)
!4149 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4147)
!4150 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4147)
!4151 = !DILocation(line: 296, column: 3, scope: !4131)
!4152 = distinct !DISubprogram(name: "xizalloc", scope: !834, file: !834, line: 285, type: !3894, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4153)
!4153 = !{!4154}
!4154 = !DILocalVariable(name: "s", arg: 1, scope: !4152, file: !834, line: 285, type: !412)
!4155 = !DILocation(line: 0, scope: !4152)
!4156 = !DILocalVariable(name: "n", arg: 1, scope: !4157, file: !834, line: 300, type: !412)
!4157 = distinct !DISubprogram(name: "xicalloc", scope: !834, file: !834, line: 300, type: !4012, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4158)
!4158 = !{!4156, !4159}
!4159 = !DILocalVariable(name: "s", arg: 2, scope: !4157, file: !834, line: 300, type: !412)
!4160 = !DILocation(line: 0, scope: !4157, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 287, column: 10, scope: !4152)
!4162 = !DILocalVariable(name: "n", arg: 1, scope: !4163, file: !3901, line: 77, type: !412)
!4163 = distinct !DISubprogram(name: "icalloc", scope: !3901, file: !3901, line: 77, type: !4012, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4164)
!4164 = !{!4162, !4165}
!4165 = !DILocalVariable(name: "s", arg: 2, scope: !4163, file: !3901, line: 77, type: !412)
!4166 = !DILocation(line: 0, scope: !4163, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 302, column: 25, scope: !4157, inlinedAt: !4161)
!4168 = !DILocation(line: 91, column: 10, scope: !4163, inlinedAt: !4167)
!4169 = !DILocation(line: 0, scope: !3860, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 302, column: 10, scope: !4157, inlinedAt: !4161)
!4171 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4170)
!4172 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4170)
!4173 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4170)
!4174 = !DILocation(line: 287, column: 3, scope: !4152)
!4175 = !DILocation(line: 0, scope: !4157)
!4176 = !DILocation(line: 0, scope: !4163, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 302, column: 25, scope: !4157)
!4178 = !DILocation(line: 91, column: 10, scope: !4163, inlinedAt: !4177)
!4179 = !DILocation(line: 0, scope: !3860, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 302, column: 10, scope: !4157)
!4181 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4180)
!4182 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4180)
!4183 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4180)
!4184 = !DILocation(line: 302, column: 3, scope: !4157)
!4185 = distinct !DISubprogram(name: "xmemdup", scope: !834, file: !834, line: 310, type: !4186, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!137, !1132, !139}
!4188 = !{!4189, !4190}
!4189 = !DILocalVariable(name: "p", arg: 1, scope: !4185, file: !834, line: 310, type: !1132)
!4190 = !DILocalVariable(name: "s", arg: 2, scope: !4185, file: !834, line: 310, type: !139)
!4191 = !DILocation(line: 0, scope: !4185)
!4192 = !DILocation(line: 0, scope: !3879, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 312, column: 18, scope: !4185)
!4194 = !DILocation(line: 49, column: 25, scope: !3879, inlinedAt: !4193)
!4195 = !DILocation(line: 0, scope: !3860, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 49, column: 10, scope: !3879, inlinedAt: !4193)
!4197 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4196)
!4198 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4196)
!4199 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4196)
!4200 = !DILocalVariable(name: "__dest", arg: 1, scope: !4201, file: !1285, line: 26, type: !1599)
!4201 = distinct !DISubprogram(name: "memcpy", scope: !1285, file: !1285, line: 26, type: !1597, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4202)
!4202 = !{!4200, !4203, !4204}
!4203 = !DILocalVariable(name: "__src", arg: 2, scope: !4201, file: !1285, line: 26, type: !1131)
!4204 = !DILocalVariable(name: "__len", arg: 3, scope: !4201, file: !1285, line: 26, type: !139)
!4205 = !DILocation(line: 0, scope: !4201, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 312, column: 10, scope: !4185)
!4207 = !DILocation(line: 29, column: 10, scope: !4201, inlinedAt: !4206)
!4208 = !DILocation(line: 312, column: 3, scope: !4185)
!4209 = distinct !DISubprogram(name: "ximemdup", scope: !834, file: !834, line: 316, type: !4210, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!137, !1132, !412}
!4212 = !{!4213, !4214}
!4213 = !DILocalVariable(name: "p", arg: 1, scope: !4209, file: !834, line: 316, type: !1132)
!4214 = !DILocalVariable(name: "s", arg: 2, scope: !4209, file: !834, line: 316, type: !412)
!4215 = !DILocation(line: 0, scope: !4209)
!4216 = !DILocation(line: 0, scope: !3893, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 318, column: 18, scope: !4209)
!4218 = !DILocation(line: 0, scope: !3900, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 55, column: 25, scope: !3893, inlinedAt: !4217)
!4220 = !DILocation(line: 57, column: 26, scope: !3900, inlinedAt: !4219)
!4221 = !DILocation(line: 0, scope: !3860, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 55, column: 10, scope: !3893, inlinedAt: !4217)
!4223 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4222)
!4224 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4222)
!4225 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4222)
!4226 = !DILocation(line: 0, scope: !4201, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 318, column: 10, scope: !4209)
!4228 = !DILocation(line: 29, column: 10, scope: !4201, inlinedAt: !4227)
!4229 = !DILocation(line: 318, column: 3, scope: !4209)
!4230 = distinct !DISubprogram(name: "ximemdup0", scope: !834, file: !834, line: 325, type: !4231, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!136, !1132, !412}
!4233 = !{!4234, !4235, !4236}
!4234 = !DILocalVariable(name: "p", arg: 1, scope: !4230, file: !834, line: 325, type: !1132)
!4235 = !DILocalVariable(name: "s", arg: 2, scope: !4230, file: !834, line: 325, type: !412)
!4236 = !DILocalVariable(name: "result", scope: !4230, file: !834, line: 327, type: !136)
!4237 = !DILocation(line: 0, scope: !4230)
!4238 = !DILocation(line: 327, column: 30, scope: !4230)
!4239 = !DILocation(line: 0, scope: !3893, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 327, column: 18, scope: !4230)
!4241 = !DILocation(line: 0, scope: !3900, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 55, column: 25, scope: !3893, inlinedAt: !4240)
!4243 = !DILocation(line: 57, column: 26, scope: !3900, inlinedAt: !4242)
!4244 = !DILocation(line: 0, scope: !3860, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 55, column: 10, scope: !3893, inlinedAt: !4240)
!4246 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4245)
!4247 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4245)
!4248 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4245)
!4249 = !DILocation(line: 328, column: 3, scope: !4230)
!4250 = !DILocation(line: 328, column: 13, scope: !4230)
!4251 = !DILocation(line: 0, scope: !4201, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 329, column: 10, scope: !4230)
!4253 = !DILocation(line: 29, column: 10, scope: !4201, inlinedAt: !4252)
!4254 = !DILocation(line: 329, column: 3, scope: !4230)
!4255 = distinct !DISubprogram(name: "xstrdup", scope: !834, file: !834, line: 335, type: !1110, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4256)
!4256 = !{!4257}
!4257 = !DILocalVariable(name: "string", arg: 1, scope: !4255, file: !834, line: 335, type: !142)
!4258 = !DILocation(line: 0, scope: !4255)
!4259 = !DILocation(line: 337, column: 27, scope: !4255)
!4260 = !DILocation(line: 337, column: 43, scope: !4255)
!4261 = !DILocation(line: 0, scope: !4185, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 337, column: 10, scope: !4255)
!4263 = !DILocation(line: 0, scope: !3879, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 312, column: 18, scope: !4185, inlinedAt: !4262)
!4265 = !DILocation(line: 49, column: 25, scope: !3879, inlinedAt: !4264)
!4266 = !DILocation(line: 0, scope: !3860, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 49, column: 10, scope: !3879, inlinedAt: !4264)
!4268 = !DILocation(line: 39, column: 8, scope: !3867, inlinedAt: !4267)
!4269 = !DILocation(line: 39, column: 7, scope: !3860, inlinedAt: !4267)
!4270 = !DILocation(line: 40, column: 5, scope: !3867, inlinedAt: !4267)
!4271 = !DILocation(line: 0, scope: !4201, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 312, column: 10, scope: !4185, inlinedAt: !4262)
!4273 = !DILocation(line: 29, column: 10, scope: !4201, inlinedAt: !4272)
!4274 = !DILocation(line: 337, column: 3, scope: !4255)
!4275 = distinct !DISubprogram(name: "xalloc_die", scope: !782, file: !782, line: 32, type: !550, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4276)
!4276 = !{!4277}
!4277 = !DILocalVariable(name: "__errstatus", scope: !4278, file: !782, line: 34, type: !4279)
!4278 = distinct !DILexicalBlock(scope: !4275, file: !782, line: 34, column: 3)
!4279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!4280 = !DILocation(line: 34, column: 3, scope: !4278)
!4281 = !DILocation(line: 0, scope: !4278)
!4282 = !DILocation(line: 40, column: 3, scope: !4275)
!4283 = distinct !DISubprogram(name: "xnumtoumax", scope: !789, file: !789, line: 42, type: !4284, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4286)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!882, !142, !83, !882, !882, !142, !142, !83, !83}
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4299, !4300, !4301}
!4287 = !DILocalVariable(name: "n_str", arg: 1, scope: !4283, file: !789, line: 42, type: !142)
!4288 = !DILocalVariable(name: "base", arg: 2, scope: !4283, file: !789, line: 42, type: !83)
!4289 = !DILocalVariable(name: "min", arg: 3, scope: !4283, file: !789, line: 42, type: !882)
!4290 = !DILocalVariable(name: "max", arg: 4, scope: !4283, file: !789, line: 42, type: !882)
!4291 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4283, file: !789, line: 43, type: !142)
!4292 = !DILocalVariable(name: "err", arg: 6, scope: !4283, file: !789, line: 43, type: !142)
!4293 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4283, file: !789, line: 43, type: !83)
!4294 = !DILocalVariable(name: "flags", arg: 8, scope: !4283, file: !789, line: 44, type: !83)
!4295 = !DILocalVariable(name: "tnum", scope: !4283, file: !789, line: 46, type: !882)
!4296 = !DILocalVariable(name: "r", scope: !4283, file: !789, line: 46, type: !882)
!4297 = !DILocalVariable(name: "s_err", scope: !4283, file: !789, line: 47, type: !4298)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !870, line: 43, baseType: !869)
!4299 = !DILocalVariable(name: "overflow_errno", scope: !4283, file: !789, line: 50, type: !83)
!4300 = !DILocalVariable(name: "e", scope: !4283, file: !789, line: 75, type: !83)
!4301 = !DILocalVariable(name: "__errstatus", scope: !4302, file: !789, line: 80, type: !4279)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !789, line: 80, column: 5)
!4303 = distinct !DILexicalBlock(scope: !4283, file: !789, line: 77, column: 7)
!4304 = !DILocation(line: 0, scope: !4283)
!4305 = !DILocation(line: 46, column: 3, scope: !4283)
!4306 = !DILocation(line: 47, column: 24, scope: !4283)
!4307 = !DILocation(line: 52, column: 13, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4283, file: !789, line: 52, column: 7)
!4309 = !DILocation(line: 52, column: 7, scope: !4283)
!4310 = !DILocation(line: 54, column: 11, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !789, line: 54, column: 11)
!4312 = distinct !DILexicalBlock(scope: !4308, file: !789, line: 53, column: 5)
!4313 = !DILocation(line: 54, column: 16, scope: !4311)
!4314 = !DILocation(line: 54, column: 11, scope: !4312)
!4315 = !DILocation(line: 57, column: 34, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4311, file: !789, line: 55, column: 9)
!4317 = !DILocation(line: 57, column: 28, scope: !4316)
!4318 = !DILocation(line: 58, column: 21, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4316, file: !789, line: 58, column: 15)
!4320 = !DILocation(line: 0, scope: !4316)
!4321 = !DILocation(line: 61, column: 20, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4311, file: !789, line: 61, column: 16)
!4323 = !DILocation(line: 61, column: 16, scope: !4311)
!4324 = !DILocation(line: 64, column: 34, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4322, file: !789, line: 62, column: 9)
!4326 = !DILocation(line: 64, column: 28, scope: !4325)
!4327 = !DILocation(line: 65, column: 21, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4325, file: !789, line: 65, column: 15)
!4329 = !DILocation(line: 0, scope: !4325)
!4330 = !DILocation(line: 75, column: 17, scope: !4283)
!4331 = !DILocation(line: 75, column: 11, scope: !4283)
!4332 = !DILocation(line: 77, column: 16, scope: !4303)
!4333 = !DILocation(line: 78, column: 10, scope: !4303)
!4334 = !DILocation(line: 79, column: 14, scope: !4303)
!4335 = !DILocation(line: 80, column: 5, scope: !4303)
!4336 = !DILocation(line: 82, column: 3, scope: !4283)
!4337 = !DILocation(line: 82, column: 9, scope: !4283)
!4338 = !DILocation(line: 84, column: 1, scope: !4283)
!4339 = !DILocation(line: 83, column: 3, scope: !4283)
!4340 = distinct !DISubprogram(name: "xdectoumax", scope: !789, file: !789, line: 92, type: !4341, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!882, !142, !882, !882, !142, !142, !83}
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4349}
!4344 = !DILocalVariable(name: "n_str", arg: 1, scope: !4340, file: !789, line: 92, type: !142)
!4345 = !DILocalVariable(name: "min", arg: 2, scope: !4340, file: !789, line: 92, type: !882)
!4346 = !DILocalVariable(name: "max", arg: 3, scope: !4340, file: !789, line: 92, type: !882)
!4347 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4340, file: !789, line: 93, type: !142)
!4348 = !DILocalVariable(name: "err", arg: 5, scope: !4340, file: !789, line: 93, type: !142)
!4349 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4340, file: !789, line: 93, type: !83)
!4350 = !DILocation(line: 0, scope: !4340)
!4351 = !DILocation(line: 0, scope: !4283, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 95, column: 10, scope: !4340)
!4353 = !DILocation(line: 46, column: 3, scope: !4283, inlinedAt: !4352)
!4354 = !DILocation(line: 47, column: 24, scope: !4283, inlinedAt: !4352)
!4355 = !DILocation(line: 52, column: 13, scope: !4308, inlinedAt: !4352)
!4356 = !DILocation(line: 52, column: 7, scope: !4283, inlinedAt: !4352)
!4357 = !DILocation(line: 54, column: 11, scope: !4311, inlinedAt: !4352)
!4358 = !DILocation(line: 54, column: 16, scope: !4311, inlinedAt: !4352)
!4359 = !DILocation(line: 54, column: 11, scope: !4312, inlinedAt: !4352)
!4360 = !DILocation(line: 58, column: 21, scope: !4319, inlinedAt: !4352)
!4361 = !DILocation(line: 0, scope: !4316, inlinedAt: !4352)
!4362 = !DILocation(line: 61, column: 20, scope: !4322, inlinedAt: !4352)
!4363 = !DILocation(line: 61, column: 16, scope: !4311, inlinedAt: !4352)
!4364 = !DILocation(line: 65, column: 21, scope: !4328, inlinedAt: !4352)
!4365 = !DILocation(line: 0, scope: !4325, inlinedAt: !4352)
!4366 = !DILocation(line: 75, column: 17, scope: !4283, inlinedAt: !4352)
!4367 = !DILocation(line: 75, column: 11, scope: !4283, inlinedAt: !4352)
!4368 = !DILocation(line: 77, column: 16, scope: !4303, inlinedAt: !4352)
!4369 = !DILocation(line: 78, column: 10, scope: !4303, inlinedAt: !4352)
!4370 = !DILocation(line: 80, column: 5, scope: !4303, inlinedAt: !4352)
!4371 = !DILocation(line: 82, column: 3, scope: !4283, inlinedAt: !4352)
!4372 = !DILocation(line: 82, column: 9, scope: !4283, inlinedAt: !4352)
!4373 = !DILocation(line: 84, column: 1, scope: !4283, inlinedAt: !4352)
!4374 = !DILocation(line: 95, column: 3, scope: !4340)
!4375 = distinct !DISubprogram(name: "xstrtoumax", scope: !4376, file: !4376, line: 71, type: !4377, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4380)
!4376 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!4298, !142, !1137, !83, !4379, !142}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4391, !4392, !4393, !4394, !4397, !4398}
!4381 = !DILocalVariable(name: "nptr", arg: 1, scope: !4375, file: !4376, line: 71, type: !142)
!4382 = !DILocalVariable(name: "endptr", arg: 2, scope: !4375, file: !4376, line: 71, type: !1137)
!4383 = !DILocalVariable(name: "base", arg: 3, scope: !4375, file: !4376, line: 71, type: !83)
!4384 = !DILocalVariable(name: "val", arg: 4, scope: !4375, file: !4376, line: 72, type: !4379)
!4385 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4375, file: !4376, line: 72, type: !142)
!4386 = !DILocalVariable(name: "t_ptr", scope: !4375, file: !4376, line: 74, type: !136)
!4387 = !DILocalVariable(name: "p", scope: !4375, file: !4376, line: 75, type: !1137)
!4388 = !DILocalVariable(name: "q", scope: !4389, file: !4376, line: 79, type: !142)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !4376, line: 78, column: 5)
!4390 = distinct !DILexicalBlock(scope: !4375, file: !4376, line: 77, column: 7)
!4391 = !DILocalVariable(name: "ch", scope: !4389, file: !4376, line: 80, type: !144)
!4392 = !DILocalVariable(name: "tmp", scope: !4375, file: !4376, line: 91, type: !882)
!4393 = !DILocalVariable(name: "err", scope: !4375, file: !4376, line: 92, type: !4298)
!4394 = !DILocalVariable(name: "xbase", scope: !4395, file: !4376, line: 126, type: !83)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !4376, line: 119, column: 5)
!4396 = distinct !DILexicalBlock(scope: !4375, file: !4376, line: 118, column: 7)
!4397 = !DILocalVariable(name: "suffixes", scope: !4395, file: !4376, line: 127, type: !83)
!4398 = !DILocalVariable(name: "overflow", scope: !4395, file: !4376, line: 156, type: !4298)
!4399 = !DILocation(line: 0, scope: !4375)
!4400 = !DILocation(line: 74, column: 3, scope: !4375)
!4401 = !DILocation(line: 75, column: 14, scope: !4375)
!4402 = !DILocation(line: 0, scope: !4389)
!4403 = !DILocation(line: 81, column: 7, scope: !4389)
!4404 = !DILocation(line: 81, column: 14, scope: !4389)
!4405 = !DILocation(line: 82, column: 15, scope: !4389)
!4406 = distinct !{!4406, !4403, !4407, !1034}
!4407 = !DILocation(line: 82, column: 17, scope: !4389)
!4408 = !DILocation(line: 83, column: 14, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4389, file: !4376, line: 83, column: 11)
!4410 = !DILocation(line: 83, column: 11, scope: !4389)
!4411 = !DILocation(line: 85, column: 14, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4409, file: !4376, line: 84, column: 9)
!4413 = !DILocation(line: 90, column: 3, scope: !4375)
!4414 = !DILocation(line: 90, column: 9, scope: !4375)
!4415 = !DILocation(line: 91, column: 20, scope: !4375)
!4416 = !DILocation(line: 94, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4375, file: !4376, line: 94, column: 7)
!4418 = !DILocation(line: 94, column: 10, scope: !4417)
!4419 = !DILocation(line: 94, column: 7, scope: !4375)
!4420 = !DILocation(line: 98, column: 14, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !4376, line: 98, column: 11)
!4422 = distinct !DILexicalBlock(scope: !4417, file: !4376, line: 95, column: 5)
!4423 = !DILocation(line: 98, column: 29, scope: !4421)
!4424 = !DILocation(line: 98, column: 32, scope: !4421)
!4425 = !DILocation(line: 98, column: 38, scope: !4421)
!4426 = !DILocation(line: 98, column: 41, scope: !4421)
!4427 = !DILocation(line: 98, column: 11, scope: !4422)
!4428 = !DILocation(line: 102, column: 12, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4417, file: !4376, line: 102, column: 12)
!4430 = !DILocation(line: 102, column: 12, scope: !4417)
!4431 = !DILocation(line: 107, column: 5, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4429, file: !4376, line: 103, column: 5)
!4433 = !DILocation(line: 112, column: 8, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4375, file: !4376, line: 112, column: 7)
!4435 = !DILocation(line: 112, column: 7, scope: !4375)
!4436 = !DILocation(line: 114, column: 12, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !4376, line: 113, column: 5)
!4438 = !DILocation(line: 115, column: 7, scope: !4437)
!4439 = !DILocation(line: 118, column: 7, scope: !4396)
!4440 = !DILocation(line: 118, column: 11, scope: !4396)
!4441 = !DILocation(line: 118, column: 7, scope: !4375)
!4442 = !DILocation(line: 120, column: 12, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4395, file: !4376, line: 120, column: 11)
!4444 = !DILocation(line: 120, column: 11, scope: !4395)
!4445 = !DILocation(line: 122, column: 16, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4443, file: !4376, line: 121, column: 9)
!4447 = !DILocation(line: 123, column: 22, scope: !4446)
!4448 = !DILocation(line: 123, column: 11, scope: !4446)
!4449 = !DILocation(line: 0, scope: !4395)
!4450 = !DILocation(line: 128, column: 7, scope: !4395)
!4451 = !DILocation(line: 140, column: 15, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !4376, line: 140, column: 15)
!4453 = distinct !DILexicalBlock(scope: !4395, file: !4376, line: 129, column: 9)
!4454 = !DILocation(line: 140, column: 15, scope: !4453)
!4455 = !DILocation(line: 141, column: 21, scope: !4452)
!4456 = !DILocation(line: 141, column: 13, scope: !4452)
!4457 = !DILocation(line: 144, column: 21, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !4376, line: 144, column: 21)
!4459 = distinct !DILexicalBlock(scope: !4452, file: !4376, line: 142, column: 15)
!4460 = !DILocation(line: 144, column: 29, scope: !4458)
!4461 = !DILocation(line: 144, column: 21, scope: !4459)
!4462 = !DILocation(line: 152, column: 17, scope: !4459)
!4463 = !DILocation(line: 157, column: 7, scope: !4395)
!4464 = !DILocalVariable(name: "err", scope: !4465, file: !4376, line: 64, type: !4298)
!4465 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4376, file: !4376, line: 62, type: !4466, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4468)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!4298, !4379, !83, !83}
!4468 = !{!4469, !4470, !4471, !4464}
!4469 = !DILocalVariable(name: "x", arg: 1, scope: !4465, file: !4376, line: 62, type: !4379)
!4470 = !DILocalVariable(name: "base", arg: 2, scope: !4465, file: !4376, line: 62, type: !83)
!4471 = !DILocalVariable(name: "power", arg: 3, scope: !4465, file: !4376, line: 62, type: !83)
!4472 = !DILocation(line: 0, scope: !4465, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 219, column: 22, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4395, file: !4376, line: 158, column: 9)
!4475 = !DILocalVariable(name: "x", arg: 1, scope: !4476, file: !4376, line: 47, type: !4379)
!4476 = distinct !DISubprogram(name: "bkm_scale", scope: !4376, file: !4376, line: 47, type: !4477, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!4298, !4379, !83}
!4479 = !{!4475, !4480, !4481}
!4480 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4476, file: !4376, line: 47, type: !83)
!4481 = !DILocalVariable(name: "scaled", scope: !4476, file: !4376, line: 49, type: !882)
!4482 = !DILocation(line: 0, scope: !4476, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4473)
!4484 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4483)
!4485 = distinct !DILexicalBlock(scope: !4476, file: !4376, line: 50, column: 7)
!4486 = !DILocation(line: 66, column: 9, scope: !4465, inlinedAt: !4473)
!4487 = !DILocation(line: 227, column: 11, scope: !4395)
!4488 = !DILocation(line: 0, scope: !4465, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 215, column: 22, scope: !4474)
!4490 = !DILocation(line: 0, scope: !4476, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4489)
!4492 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4491)
!4493 = !DILocation(line: 66, column: 9, scope: !4465, inlinedAt: !4489)
!4494 = !DILocation(line: 0, scope: !4465, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 202, column: 22, scope: !4474)
!4496 = !DILocation(line: 0, scope: !4476, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4495)
!4498 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4497)
!4499 = !DILocation(line: 66, column: 9, scope: !4465, inlinedAt: !4495)
!4500 = !DILocation(line: 0, scope: !4465, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 198, column: 22, scope: !4474)
!4502 = !DILocation(line: 0, scope: !4476, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4501)
!4504 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4503)
!4505 = !DILocation(line: 66, column: 9, scope: !4465, inlinedAt: !4501)
!4506 = !DILocation(line: 0, scope: !4465, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 194, column: 22, scope: !4474)
!4508 = !DILocation(line: 0, scope: !4476, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4507)
!4510 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4509)
!4511 = !DILocation(line: 66, column: 9, scope: !4465, inlinedAt: !4507)
!4512 = !DILocation(line: 0, scope: !4465, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 175, column: 22, scope: !4474)
!4514 = !DILocation(line: 0, scope: !4476, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4513)
!4516 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4515)
!4517 = !DILocation(line: 66, column: 9, scope: !4465, inlinedAt: !4513)
!4518 = !DILocation(line: 0, scope: !4476, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 160, column: 22, scope: !4474)
!4520 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4519)
!4521 = !DILocation(line: 161, column: 11, scope: !4474)
!4522 = !DILocation(line: 0, scope: !4476, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 167, column: 22, scope: !4474)
!4524 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4523)
!4525 = !DILocation(line: 168, column: 11, scope: !4474)
!4526 = !DILocation(line: 0, scope: !4465, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 180, column: 22, scope: !4474)
!4528 = !DILocation(line: 0, scope: !4476, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4527)
!4530 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4529)
!4531 = !DILocation(line: 66, column: 9, scope: !4465, inlinedAt: !4527)
!4532 = !DILocation(line: 0, scope: !4465, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 185, column: 22, scope: !4474)
!4534 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4533)
!4536 = !DILocation(line: 0, scope: !4476, inlinedAt: !4535)
!4537 = !DILocation(line: 0, scope: !4465, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 190, column: 22, scope: !4474)
!4539 = !DILocation(line: 0, scope: !4476, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4538)
!4541 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4540)
!4542 = !DILocation(line: 66, column: 9, scope: !4465, inlinedAt: !4538)
!4543 = !DILocation(line: 0, scope: !4465, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 207, column: 22, scope: !4474)
!4545 = !DILocation(line: 0, scope: !4476, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 66, column: 12, scope: !4465, inlinedAt: !4544)
!4547 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4546)
!4548 = !DILocation(line: 66, column: 9, scope: !4465, inlinedAt: !4544)
!4549 = !DILocation(line: 0, scope: !4476, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 211, column: 22, scope: !4474)
!4551 = !DILocation(line: 50, column: 7, scope: !4485, inlinedAt: !4550)
!4552 = !DILocation(line: 212, column: 11, scope: !4474)
!4553 = !DILocation(line: 0, scope: !4474)
!4554 = !DILocation(line: 228, column: 10, scope: !4395)
!4555 = !DILocation(line: 229, column: 11, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4395, file: !4376, line: 229, column: 11)
!4557 = !DILocation(line: 229, column: 11, scope: !4395)
!4558 = !DILocation(line: 223, column: 16, scope: !4474)
!4559 = !DILocation(line: 224, column: 22, scope: !4474)
!4560 = !DILocation(line: 100, column: 11, scope: !4422)
!4561 = !DILocation(line: 92, column: 16, scope: !4375)
!4562 = !DILocation(line: 233, column: 8, scope: !4375)
!4563 = !DILocation(line: 234, column: 3, scope: !4375)
!4564 = !DILocation(line: 235, column: 1, scope: !4375)
!4565 = !DISubprogram(name: "strtoumax", scope: !4566, file: !4566, line: 301, type: !4567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!4566 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!882, !978, !4569, !83}
!4569 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1137)
!4570 = distinct !DISubprogram(name: "rpl_fopen", scope: !886, file: !886, line: 46, type: !4571, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4607)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!4573, !142, !142}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !4575)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4575, file: !206, line: 51, baseType: !83, size: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4575, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4575, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4575, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4575, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4575, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4575, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4575, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4575, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4575, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4575, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4575, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4575, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4575, file: !206, line: 70, baseType: !4591, size: 64, offset: 832)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4575, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4575, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4575, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4575, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4575, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4575, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4575, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4575, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4575, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4575, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4575, file: !206, line: 93, baseType: !4591, size: 64, offset: 1344)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4575, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4575, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4575, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4575, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!4607 = !{!4608, !4609, !4610, !4611, !4612, !4613, !4617, !4619, !4620, !4625, !4628, !4629}
!4608 = !DILocalVariable(name: "filename", arg: 1, scope: !4570, file: !886, line: 46, type: !142)
!4609 = !DILocalVariable(name: "mode", arg: 2, scope: !4570, file: !886, line: 46, type: !142)
!4610 = !DILocalVariable(name: "open_direction", scope: !4570, file: !886, line: 54, type: !83)
!4611 = !DILocalVariable(name: "open_flags", scope: !4570, file: !886, line: 55, type: !83)
!4612 = !DILocalVariable(name: "open_flags_gnu", scope: !4570, file: !886, line: 57, type: !168)
!4613 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4570, file: !886, line: 59, type: !4614)
!4614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4615)
!4615 = !{!4616}
!4616 = !DISubrange(count: 81)
!4617 = !DILocalVariable(name: "p", scope: !4618, file: !886, line: 62, type: !142)
!4618 = distinct !DILexicalBlock(scope: !4570, file: !886, line: 61, column: 3)
!4619 = !DILocalVariable(name: "q", scope: !4618, file: !886, line: 64, type: !136)
!4620 = !DILocalVariable(name: "len", scope: !4621, file: !886, line: 128, type: !139)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !886, line: 127, column: 9)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !886, line: 68, column: 7)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !886, line: 67, column: 5)
!4624 = distinct !DILexicalBlock(scope: !4618, file: !886, line: 67, column: 5)
!4625 = !DILocalVariable(name: "fd", scope: !4626, file: !886, line: 199, type: !83)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !886, line: 198, column: 5)
!4627 = distinct !DILexicalBlock(scope: !4570, file: !886, line: 197, column: 7)
!4628 = !DILocalVariable(name: "fp", scope: !4626, file: !886, line: 204, type: !4573)
!4629 = !DILocalVariable(name: "saved_errno", scope: !4630, file: !886, line: 207, type: !83)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !886, line: 206, column: 9)
!4631 = distinct !DILexicalBlock(scope: !4626, file: !886, line: 205, column: 11)
!4632 = !DILocation(line: 0, scope: !4570)
!4633 = !DILocation(line: 59, column: 3, scope: !4570)
!4634 = !DILocation(line: 59, column: 8, scope: !4570)
!4635 = !DILocation(line: 0, scope: !4618)
!4636 = !DILocation(line: 67, column: 5, scope: !4618)
!4637 = !DILocation(line: 54, column: 7, scope: !4570)
!4638 = !DILocation(line: 67, column: 12, scope: !4623)
!4639 = !DILocation(line: 67, column: 5, scope: !4624)
!4640 = !DILocation(line: 74, column: 19, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !886, line: 74, column: 17)
!4642 = distinct !DILexicalBlock(scope: !4622, file: !886, line: 70, column: 11)
!4643 = !DILocation(line: 74, column: 17, scope: !4642)
!4644 = !DILocation(line: 75, column: 17, scope: !4641)
!4645 = !DILocation(line: 75, column: 20, scope: !4641)
!4646 = !DILocation(line: 75, column: 15, scope: !4641)
!4647 = !DILocation(line: 80, column: 24, scope: !4642)
!4648 = !DILocation(line: 82, column: 19, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4642, file: !886, line: 82, column: 17)
!4650 = !DILocation(line: 82, column: 17, scope: !4642)
!4651 = !DILocation(line: 83, column: 17, scope: !4649)
!4652 = !DILocation(line: 83, column: 20, scope: !4649)
!4653 = !DILocation(line: 83, column: 15, scope: !4649)
!4654 = !DILocation(line: 88, column: 24, scope: !4642)
!4655 = !DILocation(line: 90, column: 19, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4642, file: !886, line: 90, column: 17)
!4657 = !DILocation(line: 90, column: 17, scope: !4642)
!4658 = !DILocation(line: 91, column: 17, scope: !4656)
!4659 = !DILocation(line: 91, column: 20, scope: !4656)
!4660 = !DILocation(line: 91, column: 15, scope: !4656)
!4661 = !DILocation(line: 100, column: 19, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4642, file: !886, line: 100, column: 17)
!4663 = !DILocation(line: 100, column: 17, scope: !4642)
!4664 = !DILocation(line: 101, column: 17, scope: !4662)
!4665 = !DILocation(line: 101, column: 20, scope: !4662)
!4666 = !DILocation(line: 101, column: 15, scope: !4662)
!4667 = !DILocation(line: 107, column: 19, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4642, file: !886, line: 107, column: 17)
!4669 = !DILocation(line: 107, column: 17, scope: !4642)
!4670 = !DILocation(line: 108, column: 17, scope: !4668)
!4671 = !DILocation(line: 108, column: 20, scope: !4668)
!4672 = !DILocation(line: 108, column: 15, scope: !4668)
!4673 = !DILocation(line: 113, column: 24, scope: !4642)
!4674 = !DILocation(line: 115, column: 13, scope: !4642)
!4675 = !DILocation(line: 117, column: 24, scope: !4642)
!4676 = !DILocation(line: 119, column: 13, scope: !4642)
!4677 = !DILocation(line: 128, column: 24, scope: !4621)
!4678 = !DILocation(line: 0, scope: !4621)
!4679 = !DILocation(line: 129, column: 48, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4621, file: !886, line: 129, column: 15)
!4681 = !DILocation(line: 129, column: 15, scope: !4621)
!4682 = !DILocalVariable(name: "__dest", arg: 1, scope: !4683, file: !1285, line: 26, type: !1599)
!4683 = distinct !DISubprogram(name: "memcpy", scope: !1285, file: !1285, line: 26, type: !1597, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4684)
!4684 = !{!4682, !4685, !4686}
!4685 = !DILocalVariable(name: "__src", arg: 2, scope: !4683, file: !1285, line: 26, type: !1131)
!4686 = !DILocalVariable(name: "__len", arg: 3, scope: !4683, file: !1285, line: 26, type: !139)
!4687 = !DILocation(line: 0, scope: !4683, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 131, column: 11, scope: !4621)
!4689 = !DILocation(line: 29, column: 10, scope: !4683, inlinedAt: !4688)
!4690 = !DILocation(line: 132, column: 13, scope: !4621)
!4691 = !DILocation(line: 135, column: 9, scope: !4622)
!4692 = !DILocation(line: 67, column: 25, scope: !4623)
!4693 = !DILocation(line: 67, column: 5, scope: !4623)
!4694 = distinct !{!4694, !4639, !4695, !1034}
!4695 = !DILocation(line: 136, column: 7, scope: !4624)
!4696 = !DILocation(line: 138, column: 8, scope: !4618)
!4697 = !DILocation(line: 197, column: 7, scope: !4570)
!4698 = !DILocation(line: 199, column: 47, scope: !4626)
!4699 = !DILocation(line: 199, column: 16, scope: !4626)
!4700 = !DILocation(line: 0, scope: !4626)
!4701 = !DILocation(line: 201, column: 14, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4626, file: !886, line: 201, column: 11)
!4703 = !DILocation(line: 201, column: 11, scope: !4626)
!4704 = !DILocation(line: 204, column: 18, scope: !4626)
!4705 = !DILocation(line: 205, column: 14, scope: !4631)
!4706 = !DILocation(line: 205, column: 11, scope: !4626)
!4707 = !DILocation(line: 207, column: 29, scope: !4630)
!4708 = !DILocation(line: 0, scope: !4630)
!4709 = !DILocation(line: 208, column: 11, scope: !4630)
!4710 = !DILocation(line: 209, column: 17, scope: !4630)
!4711 = !DILocation(line: 210, column: 9, scope: !4630)
!4712 = !DILocalVariable(name: "filename", arg: 1, scope: !4713, file: !886, line: 30, type: !142)
!4713 = distinct !DISubprogram(name: "orig_fopen", scope: !886, file: !886, line: 30, type: !4571, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4714)
!4714 = !{!4712, !4715}
!4715 = !DILocalVariable(name: "mode", arg: 2, scope: !4713, file: !886, line: 30, type: !142)
!4716 = !DILocation(line: 0, scope: !4713, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 219, column: 10, scope: !4570)
!4718 = !DILocation(line: 32, column: 10, scope: !4713, inlinedAt: !4717)
!4719 = !DILocation(line: 219, column: 3, scope: !4570)
!4720 = !DILocation(line: 220, column: 1, scope: !4570)
!4721 = !DISubprogram(name: "open", scope: !1931, file: !1931, line: 181, type: !4722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!83, !142, !83, null}
!4724 = !DISubprogram(name: "fdopen", scope: !509, file: !509, line: 293, type: !4725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!4573, !83, !142}
!4727 = !DISubprogram(name: "close", scope: !1787, file: !1787, line: 358, type: !1699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!4728 = !DISubprogram(name: "fopen", scope: !509, file: !509, line: 258, type: !4729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!4573, !978, !978}
!4731 = distinct !DISubprogram(name: "close_stream", scope: !888, file: !888, line: 55, type: !4732, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !4768)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!83, !4734}
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !4736)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !4737)
!4737 = !{!4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4736, file: !206, line: 51, baseType: !83, size: 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4736, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4736, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4736, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4736, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4736, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4736, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4736, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4736, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4736, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4736, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4736, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4736, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4736, file: !206, line: 70, baseType: !4752, size: 64, offset: 832)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4736, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4736, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4736, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4736, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4736, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4736, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4736, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4736, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4736, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4736, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4736, file: !206, line: 93, baseType: !4752, size: 64, offset: 1344)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4736, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4736, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4736, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4736, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!4768 = !{!4769, !4770, !4772, !4773}
!4769 = !DILocalVariable(name: "stream", arg: 1, scope: !4731, file: !888, line: 55, type: !4734)
!4770 = !DILocalVariable(name: "some_pending", scope: !4731, file: !888, line: 57, type: !4771)
!4771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!4772 = !DILocalVariable(name: "prev_fail", scope: !4731, file: !888, line: 58, type: !4771)
!4773 = !DILocalVariable(name: "fclose_fail", scope: !4731, file: !888, line: 59, type: !4771)
!4774 = !DILocation(line: 0, scope: !4731)
!4775 = !DILocation(line: 57, column: 30, scope: !4731)
!4776 = !DILocalVariable(name: "__stream", arg: 1, scope: !4777, file: !1266, line: 135, type: !4734)
!4777 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1266, file: !1266, line: 135, type: !4732, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !4778)
!4778 = !{!4776}
!4779 = !DILocation(line: 0, scope: !4777, inlinedAt: !4780)
!4780 = distinct !DILocation(line: 58, column: 27, scope: !4731)
!4781 = !DILocation(line: 137, column: 10, scope: !4777, inlinedAt: !4780)
!4782 = !DILocation(line: 58, column: 43, scope: !4731)
!4783 = !DILocation(line: 59, column: 29, scope: !4731)
!4784 = !DILocation(line: 59, column: 45, scope: !4731)
!4785 = !DILocation(line: 69, column: 17, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4731, file: !888, line: 69, column: 7)
!4787 = !DILocation(line: 57, column: 50, scope: !4731)
!4788 = !DILocation(line: 69, column: 33, scope: !4786)
!4789 = !DILocation(line: 69, column: 53, scope: !4786)
!4790 = !DILocation(line: 69, column: 59, scope: !4786)
!4791 = !DILocation(line: 69, column: 7, scope: !4731)
!4792 = !DILocation(line: 71, column: 11, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4786, file: !888, line: 70, column: 5)
!4794 = !DILocation(line: 72, column: 9, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4793, file: !888, line: 71, column: 11)
!4796 = !DILocation(line: 72, column: 15, scope: !4795)
!4797 = !DILocation(line: 77, column: 1, scope: !4731)
!4798 = !DISubprogram(name: "__fpending", scope: !2135, file: !2135, line: 75, type: !4799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!139, !4734}
!4801 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !792, file: !792, line: 100, type: !4802, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !4805)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!139, !1677, !142, !139, !4804}
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!4805 = !{!4806, !4807, !4808, !4809, !4810}
!4806 = !DILocalVariable(name: "pwc", arg: 1, scope: !4801, file: !792, line: 100, type: !1677)
!4807 = !DILocalVariable(name: "s", arg: 2, scope: !4801, file: !792, line: 100, type: !142)
!4808 = !DILocalVariable(name: "n", arg: 3, scope: !4801, file: !792, line: 100, type: !139)
!4809 = !DILocalVariable(name: "ps", arg: 4, scope: !4801, file: !792, line: 100, type: !4804)
!4810 = !DILocalVariable(name: "ret", scope: !4801, file: !792, line: 130, type: !139)
!4811 = !DILocation(line: 0, scope: !4801)
!4812 = !DILocation(line: 105, column: 9, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4801, file: !792, line: 105, column: 7)
!4814 = !DILocation(line: 105, column: 7, scope: !4801)
!4815 = !DILocation(line: 117, column: 10, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4801, file: !792, line: 117, column: 7)
!4817 = !DILocation(line: 117, column: 7, scope: !4801)
!4818 = !DILocation(line: 130, column: 16, scope: !4801)
!4819 = !DILocation(line: 135, column: 11, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4801, file: !792, line: 135, column: 7)
!4821 = !DILocation(line: 135, column: 25, scope: !4820)
!4822 = !DILocation(line: 135, column: 30, scope: !4820)
!4823 = !DILocation(line: 135, column: 7, scope: !4801)
!4824 = !DILocalVariable(name: "ps", arg: 1, scope: !4825, file: !2374, line: 1135, type: !4804)
!4825 = distinct !DISubprogram(name: "mbszero", scope: !2374, file: !2374, line: 1135, type: !4826, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !4828)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{null, !4804}
!4828 = !{!4824}
!4829 = !DILocation(line: 0, scope: !4825, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 137, column: 5, scope: !4820)
!4831 = !DILocalVariable(name: "__dest", arg: 1, scope: !4832, file: !1285, line: 57, type: !137)
!4832 = distinct !DISubprogram(name: "memset", scope: !1285, file: !1285, line: 57, type: !2383, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !4833)
!4833 = !{!4831, !4834, !4835}
!4834 = !DILocalVariable(name: "__ch", arg: 2, scope: !4832, file: !1285, line: 57, type: !83)
!4835 = !DILocalVariable(name: "__len", arg: 3, scope: !4832, file: !1285, line: 57, type: !139)
!4836 = !DILocation(line: 0, scope: !4832, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 1137, column: 3, scope: !4825, inlinedAt: !4830)
!4838 = !DILocation(line: 59, column: 10, scope: !4832, inlinedAt: !4837)
!4839 = !DILocation(line: 137, column: 5, scope: !4820)
!4840 = !DILocation(line: 138, column: 11, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4801, file: !792, line: 138, column: 7)
!4842 = !DILocation(line: 138, column: 7, scope: !4801)
!4843 = !DILocation(line: 139, column: 5, scope: !4841)
!4844 = !DILocation(line: 143, column: 26, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4801, file: !792, line: 143, column: 7)
!4846 = !DILocation(line: 143, column: 41, scope: !4845)
!4847 = !DILocation(line: 143, column: 7, scope: !4801)
!4848 = !DILocation(line: 145, column: 15, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !792, line: 145, column: 11)
!4850 = distinct !DILexicalBlock(scope: !4845, file: !792, line: 144, column: 5)
!4851 = !DILocation(line: 145, column: 11, scope: !4850)
!4852 = !DILocation(line: 146, column: 32, scope: !4849)
!4853 = !DILocation(line: 146, column: 16, scope: !4849)
!4854 = !DILocation(line: 146, column: 14, scope: !4849)
!4855 = !DILocation(line: 146, column: 9, scope: !4849)
!4856 = !DILocation(line: 286, column: 1, scope: !4801)
!4857 = !DISubprogram(name: "mbsinit", scope: !1723, file: !1723, line: 293, type: !4858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !926)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!83, !4860}
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!4862 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !890, file: !890, line: 27, type: !3844, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !889, retainedNodes: !4863)
!4863 = !{!4864, !4865, !4866, !4867}
!4864 = !DILocalVariable(name: "ptr", arg: 1, scope: !4862, file: !890, line: 27, type: !137)
!4865 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4862, file: !890, line: 27, type: !139)
!4866 = !DILocalVariable(name: "size", arg: 3, scope: !4862, file: !890, line: 27, type: !139)
!4867 = !DILocalVariable(name: "nbytes", scope: !4862, file: !890, line: 29, type: !139)
!4868 = !DILocation(line: 0, scope: !4862)
!4869 = !DILocation(line: 30, column: 7, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4862, file: !890, line: 30, column: 7)
!4871 = !DILocalVariable(name: "ptr", arg: 1, scope: !4872, file: !3936, line: 2057, type: !137)
!4872 = distinct !DISubprogram(name: "rpl_realloc", scope: !3936, file: !3936, line: 2057, type: !3928, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !889, retainedNodes: !4873)
!4873 = !{!4871, !4874}
!4874 = !DILocalVariable(name: "size", arg: 2, scope: !4872, file: !3936, line: 2057, type: !139)
!4875 = !DILocation(line: 0, scope: !4872, inlinedAt: !4876)
!4876 = distinct !DILocation(line: 37, column: 10, scope: !4862)
!4877 = !DILocation(line: 2059, column: 24, scope: !4872, inlinedAt: !4876)
!4878 = !DILocation(line: 2059, column: 10, scope: !4872, inlinedAt: !4876)
!4879 = !DILocation(line: 37, column: 3, scope: !4862)
!4880 = !DILocation(line: 32, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4870, file: !890, line: 31, column: 5)
!4882 = !DILocation(line: 32, column: 13, scope: !4881)
!4883 = !DILocation(line: 33, column: 7, scope: !4881)
!4884 = !DILocation(line: 38, column: 1, scope: !4862)
!4885 = distinct !DISubprogram(name: "hard_locale", scope: !810, file: !810, line: 28, type: !4886, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !4888)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!168, !83}
!4888 = !{!4889, !4890}
!4889 = !DILocalVariable(name: "category", arg: 1, scope: !4885, file: !810, line: 28, type: !83)
!4890 = !DILocalVariable(name: "locale", scope: !4885, file: !810, line: 30, type: !4891)
!4891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4892)
!4892 = !{!4893}
!4893 = !DISubrange(count: 257)
!4894 = !DILocation(line: 0, scope: !4885)
!4895 = !DILocation(line: 30, column: 3, scope: !4885)
!4896 = !DILocation(line: 30, column: 8, scope: !4885)
!4897 = !DILocation(line: 32, column: 7, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4885, file: !810, line: 32, column: 7)
!4899 = !DILocation(line: 32, column: 7, scope: !4885)
!4900 = !DILocalVariable(name: "__s1", arg: 1, scope: !4901, file: !1000, line: 1359, type: !142)
!4901 = distinct !DISubprogram(name: "streq", scope: !1000, file: !1000, line: 1359, type: !1001, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !4902)
!4902 = !{!4900, !4903}
!4903 = !DILocalVariable(name: "__s2", arg: 2, scope: !4901, file: !1000, line: 1359, type: !142)
!4904 = !DILocation(line: 0, scope: !4901, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 35, column: 9, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4885, file: !810, line: 35, column: 7)
!4907 = !DILocation(line: 1361, column: 11, scope: !4901, inlinedAt: !4905)
!4908 = !DILocation(line: 1361, column: 10, scope: !4901, inlinedAt: !4905)
!4909 = !DILocation(line: 35, column: 29, scope: !4906)
!4910 = !DILocation(line: 0, scope: !4901, inlinedAt: !4911)
!4911 = distinct !DILocation(line: 35, column: 32, scope: !4906)
!4912 = !DILocation(line: 1361, column: 11, scope: !4901, inlinedAt: !4911)
!4913 = !DILocation(line: 1361, column: 10, scope: !4901, inlinedAt: !4911)
!4914 = !DILocation(line: 35, column: 7, scope: !4885)
!4915 = !DILocation(line: 46, column: 3, scope: !4885)
!4916 = !DILocation(line: 47, column: 1, scope: !4885)
!4917 = distinct !DISubprogram(name: "setlocale_null_r", scope: !895, file: !895, line: 154, type: !4918, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4920)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!83, !83, !136, !139}
!4920 = !{!4921, !4922, !4923}
!4921 = !DILocalVariable(name: "category", arg: 1, scope: !4917, file: !895, line: 154, type: !83)
!4922 = !DILocalVariable(name: "buf", arg: 2, scope: !4917, file: !895, line: 154, type: !136)
!4923 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4917, file: !895, line: 154, type: !139)
!4924 = !DILocation(line: 0, scope: !4917)
!4925 = !DILocation(line: 159, column: 10, scope: !4917)
!4926 = !DILocation(line: 159, column: 3, scope: !4917)
!4927 = distinct !DISubprogram(name: "setlocale_null", scope: !895, file: !895, line: 186, type: !4928, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4930)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!142, !83}
!4930 = !{!4931}
!4931 = !DILocalVariable(name: "category", arg: 1, scope: !4927, file: !895, line: 186, type: !83)
!4932 = !DILocation(line: 0, scope: !4927)
!4933 = !DILocation(line: 189, column: 10, scope: !4927)
!4934 = !DILocation(line: 189, column: 3, scope: !4927)
!4935 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !897, file: !897, line: 35, type: !4928, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !4936)
!4936 = !{!4937, !4938}
!4937 = !DILocalVariable(name: "category", arg: 1, scope: !4935, file: !897, line: 35, type: !83)
!4938 = !DILocalVariable(name: "result", scope: !4935, file: !897, line: 37, type: !142)
!4939 = !DILocation(line: 0, scope: !4935)
!4940 = !DILocation(line: 37, column: 24, scope: !4935)
!4941 = !DILocation(line: 62, column: 3, scope: !4935)
!4942 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !897, file: !897, line: 66, type: !4918, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !4943)
!4943 = !{!4944, !4945, !4946, !4947, !4948}
!4944 = !DILocalVariable(name: "category", arg: 1, scope: !4942, file: !897, line: 66, type: !83)
!4945 = !DILocalVariable(name: "buf", arg: 2, scope: !4942, file: !897, line: 66, type: !136)
!4946 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4942, file: !897, line: 66, type: !139)
!4947 = !DILocalVariable(name: "result", scope: !4942, file: !897, line: 111, type: !142)
!4948 = !DILocalVariable(name: "length", scope: !4949, file: !897, line: 125, type: !139)
!4949 = distinct !DILexicalBlock(scope: !4950, file: !897, line: 124, column: 5)
!4950 = distinct !DILexicalBlock(scope: !4942, file: !897, line: 113, column: 7)
!4951 = !DILocation(line: 0, scope: !4942)
!4952 = !DILocation(line: 0, scope: !4935, inlinedAt: !4953)
!4953 = distinct !DILocation(line: 111, column: 24, scope: !4942)
!4954 = !DILocation(line: 37, column: 24, scope: !4935, inlinedAt: !4953)
!4955 = !DILocation(line: 113, column: 14, scope: !4950)
!4956 = !DILocation(line: 113, column: 7, scope: !4942)
!4957 = !DILocation(line: 116, column: 19, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4959, file: !897, line: 116, column: 11)
!4959 = distinct !DILexicalBlock(scope: !4950, file: !897, line: 114, column: 5)
!4960 = !DILocation(line: 116, column: 11, scope: !4959)
!4961 = !DILocation(line: 120, column: 16, scope: !4958)
!4962 = !DILocation(line: 120, column: 9, scope: !4958)
!4963 = !DILocation(line: 125, column: 23, scope: !4949)
!4964 = !DILocation(line: 0, scope: !4949)
!4965 = !DILocation(line: 126, column: 18, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4949, file: !897, line: 126, column: 11)
!4967 = !DILocation(line: 126, column: 11, scope: !4949)
!4968 = !DILocation(line: 128, column: 39, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4966, file: !897, line: 127, column: 9)
!4970 = !DILocalVariable(name: "__dest", arg: 1, scope: !4971, file: !1285, line: 26, type: !1599)
!4971 = distinct !DISubprogram(name: "memcpy", scope: !1285, file: !1285, line: 26, type: !1597, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !4972)
!4972 = !{!4970, !4973, !4974}
!4973 = !DILocalVariable(name: "__src", arg: 2, scope: !4971, file: !1285, line: 26, type: !1131)
!4974 = !DILocalVariable(name: "__len", arg: 3, scope: !4971, file: !1285, line: 26, type: !139)
!4975 = !DILocation(line: 0, scope: !4971, inlinedAt: !4976)
!4976 = distinct !DILocation(line: 128, column: 11, scope: !4969)
!4977 = !DILocation(line: 29, column: 10, scope: !4971, inlinedAt: !4976)
!4978 = !DILocation(line: 129, column: 11, scope: !4969)
!4979 = !DILocation(line: 133, column: 23, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4981, file: !897, line: 133, column: 15)
!4981 = distinct !DILexicalBlock(scope: !4966, file: !897, line: 132, column: 9)
!4982 = !DILocation(line: 133, column: 15, scope: !4981)
!4983 = !DILocation(line: 138, column: 44, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4980, file: !897, line: 134, column: 13)
!4985 = !DILocation(line: 0, scope: !4971, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 138, column: 15, scope: !4984)
!4987 = !DILocation(line: 29, column: 10, scope: !4971, inlinedAt: !4986)
!4988 = !DILocation(line: 139, column: 15, scope: !4984)
!4989 = !DILocation(line: 139, column: 32, scope: !4984)
!4990 = !DILocation(line: 140, column: 13, scope: !4984)
!4991 = !DILocation(line: 0, scope: !4950)
!4992 = !DILocation(line: 145, column: 1, scope: !4942)
