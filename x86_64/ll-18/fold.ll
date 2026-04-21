; ModuleID = 'src/fold.bc'
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
@shortopts = internal constant [36 x i8] c"bcsw:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !64
@longopts = internal constant [7 x %struct.option] [%struct.option { ptr @.str.54, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.57, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !387
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
@fold_file.line_out = internal global [262144 x i8] zeroinitializer, align 16, !dbg !401
@fold_file.line_in = internal global [262144 x i8] zeroinitializer, align 16, !dbg !459
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !461
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !463
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !465
@last_character_width = internal unnamed_addr global i32 0, align 4, !dbg !467
@.str.23 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !474
@Version = dso_local local_unnamed_addr global ptr @.str.23, align 8, !dbg !477
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !481
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !494
@.str.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !486
@.str.1.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !488
@.str.2.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !490
@.str.3.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !492
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !496
@stderr = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !502
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !533
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !504
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !523
@.str.1.36 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !525
@.str.2.38 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !527
@.str.3.37 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !529
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !531
@.str.4.31 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !535
@.str.5.32 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !537
@.str.6.33 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !542
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !547
@.str.63 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !553
@.str.1.64 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !555
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !557
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !584
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !587
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !589
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !594
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !596
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !598
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !600
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !602
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !604
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !606
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.67, ptr @.str.1.68, ptr @.str.2.69, ptr @.str.3.70, ptr @.str.4.71, ptr @.str.5.72, ptr @.str.6.73, ptr @.str.7.74, ptr @.str.8.75, ptr @.str.9.76, ptr null], align 16, !dbg !608
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !621
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !635
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !673
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !680
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !637
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !682
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !625
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !642
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !644
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !646
@.str.13.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !648
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !650
@.str.85 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !686
@.str.1.86 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !689
@.str.2.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !691
@.str.3.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !693
@.str.4.89 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !695
@.str.5.90 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !697
@.str.6.91 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !702
@.str.7.92 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !707
@.str.8.93 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !709
@.str.9.94 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !714
@.str.10.95 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !719
@.str.11.96 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !724
@.str.12.97 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !727
@.str.13.98 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !729
@.str.14.99 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !734
@.str.15.100 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !739
@.str.16.101 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !744
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.106 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !746
@.str.18.107 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !748
@.str.19.108 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !750
@.str.20.109 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !752
@.str.21.110 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !754
@.str.22.111 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !756
@.str.23.112 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !758
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !763
@exit_failure = dso_local global i32 1, align 4, !dbg !771
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !777
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !780
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !782
@.str.128 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !784
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !787
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !790
@.str.1.142 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !805

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !910 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !914, metadata !DIExpression()), !dbg !915
  %2 = icmp eq i32 %0, 0, !dbg !916
  br i1 %2, label %8, label %3, !dbg !918

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !919, !tbaa !921
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !919
  %6 = load ptr, ptr @program_name, align 8, !dbg !919, !tbaa !921
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !919
  br label %41, !dbg !919

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !925
  %10 = load ptr, ptr @program_name, align 8, !dbg !925, !tbaa !921
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !925
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !927
  %13 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !921
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !927
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !928
  %16 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !921
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !928
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !931
  %19 = load ptr, ptr @stdout, align 8, !dbg !931, !tbaa !921
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !931
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !934
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !934
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !935
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !935
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !936
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !936
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !937
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !937
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !938
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !938
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !939
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata !959, metadata !953, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr poison, metadata !952, metadata !DIExpression()), !dbg !957
  tail call void @emit_bug_reporting_address() #39, !dbg !960
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !961
  call void @llvm.dbg.value(metadata ptr %27, metadata !955, metadata !DIExpression()), !dbg !957
  %28 = icmp eq ptr %27, null, !dbg !962
  br i1 %28, label %36, label %29, !dbg !964

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #40, !dbg !965
  %31 = icmp eq i32 %30, 0, !dbg !965
  br i1 %31, label %36, label %32, !dbg !966

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !967
  %34 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !921
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !967
  br label %36, !dbg !969

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !952, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !956, metadata !DIExpression()), !dbg !957
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #39, !dbg !970
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #39, !dbg !970
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #39, !dbg !971
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #39, !dbg !971
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !972
  unreachable, !dbg !972
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !973 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !977 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !983 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !986 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !180 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !184, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !185, metadata !DIExpression()), !dbg !990
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !991, !tbaa !992
  %3 = icmp eq i32 %2, -1, !dbg !994
  br i1 %3, label %4, label %16, !dbg !995

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #39, !dbg !996
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !186, metadata !DIExpression()), !dbg !997
  %6 = icmp eq ptr %5, null, !dbg !998
  br i1 %6, label %14, label %7, !dbg !999

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1000, !tbaa !1001
  %9 = icmp eq i8 %8, 0, !dbg !1000
  br i1 %9, label %14, label %10, !dbg !1002

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1003, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !1009, metadata !DIExpression()), !dbg !1010
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #40, !dbg !1012
  %12 = icmp eq i32 %11, 0, !dbg !1013
  %13 = zext i1 %12 to i32, !dbg !1002
  br label %14, !dbg !1002

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1014, !tbaa !992
  br label %16, !dbg !1015

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1016
  %18 = icmp eq i32 %17, 0, !dbg !1016
  br i1 %18, label %22, label %19, !dbg !1018

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1019, !tbaa !921
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1019
  br label %124, !dbg !1021

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !189, metadata !DIExpression()), !dbg !990
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #40, !dbg !1022
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1023
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !190, metadata !DIExpression()), !dbg !990
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !191, metadata !DIExpression()), !dbg !990
  %26 = icmp eq ptr %25, null, !dbg !1025
  br i1 %26, label %54, label %27, !dbg !1026

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1027
  br i1 %28, label %54, label %29, !dbg !1028

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !192, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !1029
  %30 = icmp ult ptr %24, %25, !dbg !1030
  br i1 %30, label %31, label %54, !dbg !1031

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !990
  %33 = load ptr, ptr %32, align 8, !tbaa !921
  br label %34, !dbg !1031

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !192, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !196, metadata !DIExpression()), !dbg !1029
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1032
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !192, metadata !DIExpression()), !dbg !1029
  %38 = load i8, ptr %35, align 1, !dbg !1032, !tbaa !1001
  %39 = sext i8 %38 to i64, !dbg !1032
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1032
  %41 = load i16, ptr %40, align 2, !dbg !1032, !tbaa !1033
  %42 = freeze i16 %41, !dbg !1035
  %43 = lshr i16 %42, 13, !dbg !1035
  %44 = and i16 %43, 1, !dbg !1035
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1036
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !196, metadata !DIExpression()), !dbg !1029
  %47 = icmp ult ptr %37, %25, !dbg !1030
  %48 = icmp ult i64 %46, 2, !dbg !1037
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1037
  br i1 %49, label %34, label %50, !dbg !1031, !llvm.loop !1038

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1040
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1042
  %53 = zext i1 %51 to i8, !dbg !1042
  br label %54, !dbg !1042

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !990
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !990
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !189, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !191, metadata !DIExpression()), !dbg !990
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.22) #40, !dbg !1043
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !197, metadata !DIExpression()), !dbg !990
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1044
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !198, metadata !DIExpression()), !dbg !990
  br label %59, !dbg !1045

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !990
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !990
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !189, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !198, metadata !DIExpression()), !dbg !990
  %62 = load i8, ptr %60, align 1, !dbg !1046, !tbaa !1001
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1047

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1048
  %65 = load i8, ptr %64, align 1, !dbg !1051, !tbaa !1001
  %66 = icmp eq i8 %65, 45, !dbg !1052
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1053
  br label %68, !dbg !1053

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !990
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !189, metadata !DIExpression()), !dbg !990
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !1054
  %71 = load ptr, ptr %70, align 8, !dbg !1054, !tbaa !921
  %72 = sext i8 %62 to i64, !dbg !1054
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1054
  %74 = load i16, ptr %73, align 2, !dbg !1054, !tbaa !1033
  %75 = and i16 %74, 8192, !dbg !1054
  %76 = icmp eq i16 %75, 0, !dbg !1054
  br i1 %76, label %92, label %77, !dbg !1056

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1057
  br i1 %78, label %94, label %79, !dbg !1060

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1061
  %81 = load i8, ptr %80, align 1, !dbg !1061, !tbaa !1001
  %82 = sext i8 %81 to i64, !dbg !1061
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1061
  %84 = load i16, ptr %83, align 2, !dbg !1061, !tbaa !1033
  %85 = and i16 %84, 8192, !dbg !1061
  %86 = icmp eq i16 %85, 0, !dbg !1061
  br i1 %86, label %87, label %94, !dbg !1062

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1063
  %89 = icmp ne i8 %88, 0, !dbg !1063
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1065
  br i1 %91, label %92, label %94, !dbg !1065

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1066
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !198, metadata !DIExpression()), !dbg !990
  br label %59, !dbg !1045, !llvm.loop !1067

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1069
  %96 = load ptr, ptr @stdout, align 8, !dbg !1069, !tbaa !921
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1069
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata !959, metadata !1009, metadata !DIExpression()), !dbg !1088
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !255, metadata !DIExpression()), !dbg !990
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #40, !dbg !1090
  %99 = icmp eq i32 %98, 0, !dbg !1090
  br i1 %99, label %103, label %100, !dbg !1092

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #40, !dbg !1093
  %102 = icmp eq i32 %101, 0, !dbg !1093
  br i1 %102, label %103, label %106, !dbg !1094

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1095
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #39, !dbg !1095
  br label %109, !dbg !1097

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1098
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #39, !dbg !1098
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1100, !tbaa !921
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %110), !dbg !1100
  %112 = load ptr, ptr @stdout, align 8, !dbg !1101, !tbaa !921
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %112), !dbg !1101
  %114 = ptrtoint ptr %60 to i64, !dbg !1102
  %115 = sub i64 %114, %95, !dbg !1102
  %116 = load ptr, ptr @stdout, align 8, !dbg !1102, !tbaa !921
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1102
  %118 = load ptr, ptr @stdout, align 8, !dbg !1103, !tbaa !921
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %118), !dbg !1103
  %120 = load ptr, ptr @stdout, align 8, !dbg !1104, !tbaa !921
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %120), !dbg !1104
  %122 = load ptr, ptr @stdout, align 8, !dbg !1105, !tbaa !921
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1105
  br label %124, !dbg !1106

124:                                              ; preds = %109, %19
  ret void, !dbg !1106
}

; Function Attrs: nounwind
declare !dbg !1107 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1111 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1115 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1117 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1120 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1123 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1126 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1129 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1135 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1136 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1142 {
  %3 = alloca [2 x i8], align 1, !DIAssignID !1158
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1152, metadata !DIExpression(), metadata !1158, metadata ptr %3, metadata !DIExpression()), !dbg !1159
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1147, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1148, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata i64 80, metadata !1149, metadata !DIExpression()), !dbg !1160
  %4 = load ptr, ptr %1, align 8, !dbg !1161, !tbaa !921
  tail call void @set_program_name(ptr noundef %4) #39, !dbg !1162
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #39, !dbg !1163
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #39, !dbg !1164
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #39, !dbg !1165
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1166
  tail call void @llvm.dbg.value(metadata i64 80, metadata !1149, metadata !DIExpression()), !dbg !1160
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1167
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1150, metadata !DIExpression()), !dbg !1160
  %10 = icmp eq i32 %9, -1, !dbg !1168
  br i1 %10, label %42, label %11, !dbg !1169

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  br label %13, !dbg !1169

13:                                               ; preds = %11, %38
  %14 = phi i32 [ %9, %11 ], [ %40, %38 ]
  %15 = phi i64 [ 80, %11 ], [ %39, %38 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1149, metadata !DIExpression()), !dbg !1160
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #39, !dbg !1170
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
    i32 -130, label %32
    i32 -131, label %33
  ], !dbg !1171

16:                                               ; preds = %13
  %17 = load ptr, ptr @optarg, align 8, !dbg !1172, !tbaa !921
  br label %28, !dbg !1171

18:                                               ; preds = %13
  store i32 1, ptr @counting_mode, align 4, !dbg !1174, !tbaa !992
  br label %38, !dbg !1175

19:                                               ; preds = %13
  store i32 2, ptr @counting_mode, align 4, !dbg !1176, !tbaa !992
  br label %38, !dbg !1177

20:                                               ; preds = %13
  store i1 true, ptr @break_spaces, align 1, !dbg !1178
  br label %38, !dbg !1179

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %22 = load ptr, ptr @optarg, align 8, !dbg !1180, !tbaa !921
  %23 = icmp eq ptr %22, null, !dbg !1180
  br i1 %23, label %26, label %24, !dbg !1182

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 -1, !dbg !1183
  store ptr %25, ptr @optarg, align 8, !dbg !1183, !tbaa !921
  br label %28, !dbg !1184

26:                                               ; preds = %21
  %27 = trunc i32 %14 to i8, !dbg !1185
  store i8 %27, ptr %3, align 1, !dbg !1187, !tbaa !1001, !DIAssignID !1188
  call void @llvm.dbg.assign(metadata i8 %27, metadata !1152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8), metadata !1188, metadata ptr %3, metadata !DIExpression()), !dbg !1159
  store i8 0, ptr %12, align 1, !dbg !1189, !tbaa !1001, !DIAssignID !1190
  call void @llvm.dbg.assign(metadata i8 0, metadata !1152, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8), metadata !1190, metadata ptr %12, metadata !DIExpression()), !dbg !1159
  store ptr %3, ptr @optarg, align 8, !dbg !1191, !tbaa !921
  br label %28

28:                                               ; preds = %16, %24, %26
  %29 = phi ptr [ %17, %16 ], [ %25, %24 ], [ %3, %26 ], !dbg !1172
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1192
  %31 = call i64 @xnumtoumax(ptr noundef %29, i32 noundef 10, i64 noundef 1, i64 noundef -10, ptr noundef nonnull @.str.10, ptr noundef %30, i32 noundef 0, i32 noundef 12) #39, !dbg !1193
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1149, metadata !DIExpression()), !dbg !1160
  br label %38, !dbg !1194

32:                                               ; preds = %13
  call void @usage(i32 noundef 0) #43, !dbg !1195
  unreachable, !dbg !1195

33:                                               ; preds = %13
  %34 = load ptr, ptr @stdout, align 8, !dbg !1196, !tbaa !921
  %35 = load ptr, ptr @Version, align 8, !dbg !1196, !tbaa !921
  %36 = call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #39, !dbg !1196
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %35, ptr noundef %36, ptr noundef null) #39, !dbg !1196
  call void @exit(i32 noundef 0) #41, !dbg !1196
  unreachable, !dbg !1196

37:                                               ; preds = %13
  call void @usage(i32 noundef 1) #43, !dbg !1197
  unreachable, !dbg !1197

38:                                               ; preds = %28, %20, %19, %18
  %39 = phi i64 [ %31, %28 ], [ %15, %20 ], [ %15, %19 ], [ %15, %18 ], !dbg !1160
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1149, metadata !DIExpression()), !dbg !1160
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #39, !dbg !1198
  %40 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1167
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1150, metadata !DIExpression()), !dbg !1160
  %41 = icmp eq i32 %40, -1, !dbg !1168
  br i1 %41, label %42, label %13, !dbg !1169, !llvm.loop !1199

42:                                               ; preds = %38, %2
  %43 = phi i64 [ 80, %2 ], [ %39, %38 ], !dbg !1160
  %44 = load i32, ptr @optind, align 4, !dbg !1200, !tbaa !992
  %45 = icmp eq i32 %44, %0, !dbg !1201
  br i1 %45, label %50, label %46, !dbg !1202

46:                                               ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !1154, metadata !DIExpression()), !dbg !1203
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1151, metadata !DIExpression()), !dbg !1160
  %47 = icmp slt i32 %44, %0, !dbg !1204
  br i1 %47, label %48, label %62, !dbg !1206

48:                                               ; preds = %46
  %49 = sext i32 %44 to i64, !dbg !1206
  br label %52, !dbg !1206

50:                                               ; preds = %42
  %51 = call fastcc zeroext i1 @fold_file(ptr noundef nonnull @.str.16, i64 noundef %43), !dbg !1207
  tail call void @llvm.dbg.value(metadata i1 %51, metadata !1151, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1160
  br label %62, !dbg !1208

52:                                               ; preds = %48, %52
  %53 = phi i64 [ %49, %48 ], [ %59, %52 ]
  %54 = phi i1 [ true, %48 ], [ %58, %52 ]
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !1154, metadata !DIExpression()), !dbg !1203
  %55 = getelementptr inbounds ptr, ptr %1, i64 %53, !dbg !1209
  %56 = load ptr, ptr %55, align 8, !dbg !1209, !tbaa !921
  %57 = call fastcc zeroext i1 @fold_file(ptr noundef %56, i64 noundef %43), !dbg !1210
  %58 = select i1 %57, i1 %54, i1 false, !dbg !1211
  tail call void @llvm.dbg.value(metadata i1 %58, metadata !1151, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1160
  %59 = add nsw i64 %53, 1, !dbg !1212
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !1154, metadata !DIExpression()), !dbg !1203
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1151, metadata !DIExpression()), !dbg !1160
  %60 = trunc i64 %59 to i32, !dbg !1204
  %61 = icmp eq i32 %60, %0, !dbg !1204
  br i1 %61, label %62, label %52, !dbg !1206, !llvm.loop !1213

62:                                               ; preds = %52, %46, %50
  %63 = phi i1 [ %51, %50 ], [ true, %46 ], [ %58, %52 ], !dbg !1215
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1151, metadata !DIExpression()), !dbg !1160
  %64 = load i1, ptr @have_read_stdin, align 1, !dbg !1216
  br i1 %64, label %65, label %72, !dbg !1218

65:                                               ; preds = %62
  %66 = load ptr, ptr @stdin, align 8, !dbg !1219, !tbaa !921
  %67 = call i32 @rpl_fclose(ptr noundef %66) #39, !dbg !1220
  %68 = icmp eq i32 %67, -1, !dbg !1221
  br i1 %68, label %69, label %72, !dbg !1222

69:                                               ; preds = %65
  %70 = tail call ptr @__errno_location() #42, !dbg !1223
  %71 = load i32, ptr %70, align 4, !dbg !1223, !tbaa !992
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %71, ptr noundef nonnull @.str.16) #39, !dbg !1223
  unreachable, !dbg !1223

72:                                               ; preds = %65, %62
  %73 = xor i1 %63, true, !dbg !1224
  %74 = zext i1 %73 to i32, !dbg !1224
  ret i32 %74, !dbg !1225
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1226 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1229 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1230 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1233 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @fold_file(ptr noundef %0, i64 noundef %1) unnamed_addr #10 !dbg !403 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1239
  %4 = alloca i32, align 4, !DIAssignID !1240
  %5 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1241
  %6 = alloca i32, align 4, !DIAssignID !1242
  %7 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1243
  %8 = alloca i32, align 4, !DIAssignID !1244
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !407, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !408, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr %0, metadata !1003, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1009, metadata !DIExpression()), !dbg !1246
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.16) #40, !dbg !1249
  %10 = icmp eq i32 %9, 0, !dbg !1250
  br i1 %10, label %11, label %13, !dbg !1251

11:                                               ; preds = %2
  %12 = load ptr, ptr @stdin, align 8, !dbg !1252, !tbaa !921
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !409, metadata !DIExpression()), !dbg !1245
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1254
  br label %15, !dbg !1255

13:                                               ; preds = %2
  %14 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.60) #39, !dbg !1256
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !409, metadata !DIExpression()), !dbg !1245
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ], !dbg !1257
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !409, metadata !DIExpression()), !dbg !1245
  %17 = icmp eq ptr %16, null, !dbg !1258
  br i1 %17, label %18, label %22, !dbg !1260

18:                                               ; preds = %15
  %19 = tail call ptr @__errno_location() #42, !dbg !1261
  %20 = load i32, ptr %19, align 4, !dbg !1261, !tbaa !992
  %21 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1261
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.61, ptr noundef %21) #39, !dbg !1261
  br label %290, !dbg !1263

22:                                               ; preds = %15
  tail call void @fadvise(ptr noundef nonnull %16, i32 noundef 2) #39, !dbg !1264
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_in, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 262144, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 0, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 0, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1245
  br label %23, !dbg !1265

23:                                               ; preds = %97, %22
  %24 = phi i64 [ 0, %22 ], [ %94, %97 ], !dbg !1245
  %25 = phi i64 [ 0, %22 ], [ %52, %97 ], !dbg !1245
  %26 = phi i64 [ 0, %22 ], [ %98, %97 ], !dbg !1245
  %27 = phi i64 [ 0, %22 ], [ %99, %97 ], !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !410, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !411, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr undef, metadata !1266, metadata !DIExpression()), !dbg !1277
  %28 = sub nsw i64 %25, %24, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %28, metadata !1272, metadata !DIExpression()), !dbg !1277
  %29 = icmp slt i64 %28, 4, !dbg !1280
  br i1 %29, label %30, label %50, !dbg !1281

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %16, metadata !1282, metadata !DIExpression()), !dbg !1288
  %31 = load i32, ptr %16, align 8, !dbg !1290, !tbaa !1291
  %32 = and i32 %31, 16, !dbg !1294
  %33 = icmp eq i32 %32, 0, !dbg !1294
  br i1 %33, label %34, label %45, !dbg !1295

34:                                               ; preds = %30
  %35 = icmp sgt i64 %28, 0, !dbg !1296
  br i1 %35, label %36, label %39, !dbg !1298

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %24, !dbg !1299
  call void @llvm.dbg.value(metadata ptr @fold_file.line_in, metadata !1301, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %37, metadata !1307, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %28, metadata !1308, metadata !DIExpression()), !dbg !1309
  %38 = call ptr @__memmove_chk(ptr noundef nonnull @fold_file.line_in, ptr noundef nonnull %37, i64 noundef %28, i64 noundef 262144) #39, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %28, metadata !1273, metadata !DIExpression()), !dbg !1312
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i64 [ %28, %36 ], [ 0, %34 ], !dbg !1313
  call void @llvm.dbg.value(metadata i64 %40, metadata !1273, metadata !DIExpression()), !dbg !1312
  %41 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %40, !dbg !1314
  %42 = sub nuw nsw i64 262144, %40, !dbg !1314
  %43 = call i64 @fread_unlocked(ptr noundef nonnull %41, i64 noundef 1, i64 noundef %42, ptr noundef nonnull %16), !dbg !1314
  %44 = add i64 %43, %40, !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 0, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %44, metadata !1272, metadata !DIExpression()), !dbg !1277
  br label %45, !dbg !1316

45:                                               ; preds = %39, %30
  %46 = phi i64 [ 0, %39 ], [ %24, %30 ], !dbg !1245
  %47 = phi i64 [ %44, %39 ], [ %25, %30 ], !dbg !1245
  %48 = phi i64 [ %44, %39 ], [ %28, %30 ], !dbg !1277
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %48, metadata !1272, metadata !DIExpression()), !dbg !1277
  %49 = icmp slt i64 %48, 1, !dbg !1317
  br i1 %49, label %265, label %50, !dbg !1319

50:                                               ; preds = %45, %23
  %51 = phi i64 [ %46, %45 ], [ %24, %23 ], !dbg !1245
  %52 = phi i64 [ %47, %45 ], [ %25, %23 ], !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1245
  %53 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %51, !dbg !1320
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1321, metadata !DIExpression(), metadata !1243, metadata ptr %7, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1329, metadata !DIExpression(), metadata !1244, metadata ptr %8, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %53, metadata !1326, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1327, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1341
  %54 = load i8, ptr %53, align 1, !dbg !1343, !tbaa !1001
  call void @llvm.dbg.value(metadata i8 %54, metadata !1328, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i8 %54, metadata !1344, metadata !DIExpression()), !dbg !1349
  %55 = icmp sgt i8 %54, -1, !dbg !1352
  br i1 %55, label %56, label %59, !dbg !1353

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 1, metadata !1354, metadata !DIExpression()), !dbg !1360
  %57 = zext nneg i8 %54 to i64, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %57, metadata !1359, metadata !DIExpression()), !dbg !1360
  %58 = or disjoint i64 %57, 1099511627776, !dbg !1362
  br label %80, !dbg !1363

59:                                               ; preds = %50
  call void @llvm.dbg.value(metadata !DIArgList(ptr @fold_file.line_in, i64 %52), metadata !1327, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1341
  %60 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %52, !dbg !1364
  call void @llvm.dbg.value(metadata ptr %60, metadata !1327, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !1365
  store i32 0, ptr %7, align 4, !dbg !1366, !tbaa !1367, !DIAssignID !1369
  call void @llvm.dbg.assign(metadata i32 0, metadata !1321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1369, metadata ptr %7, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #39, !dbg !1370
  %61 = ptrtoint ptr %60 to i64, !dbg !1371
  %62 = ptrtoint ptr %53 to i64, !dbg !1371
  %63 = sub i64 %61, %62, !dbg !1371
  %64 = call i64 @mbrtoc32(ptr noundef nonnull %8, ptr noundef nonnull %53, i64 noundef %63, ptr noundef nonnull %7) #39, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %64, metadata !1330, metadata !DIExpression()), !dbg !1341
  %65 = icmp slt i64 %64, 0, !dbg !1373
  br i1 %65, label %66, label %70, !dbg !1375, !prof !1376

66:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i8 %54, metadata !1377, metadata !DIExpression()), !dbg !1382
  %67 = zext i8 %54 to i64, !dbg !1384
  %68 = shl nuw nsw i64 %67, 32, !dbg !1384
  %69 = or disjoint i64 %68, 1099511627776, !dbg !1384
  br label %78, !dbg !1385

70:                                               ; preds = %59
  %71 = load i32, ptr %8, align 4, !dbg !1386, !tbaa !992
  call void @llvm.dbg.value(metadata i32 %71, metadata !1359, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %64, metadata !1354, metadata !DIExpression()), !dbg !1387
  %72 = icmp ne i64 %64, 0, !dbg !1389
  call void @llvm.assume(i1 %72), !dbg !1389
  %73 = icmp ult i64 %64, 5, !dbg !1390
  call void @llvm.assume(i1 %73), !dbg !1390
  %74 = icmp ult i32 %71, 1114112, !dbg !1391
  call void @llvm.assume(i1 %74), !dbg !1391
  %75 = shl nuw nsw i64 %64, 40, !dbg !1392
  %76 = zext nneg i32 %71 to i64, !dbg !1392
  %77 = or disjoint i64 %75, %76, !dbg !1392
  br label %78, !dbg !1393

78:                                               ; preds = %70, %66
  %79 = phi i64 [ %69, %66 ], [ %77, %70 ], !dbg !1341
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #39, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !1394
  br label %80

80:                                               ; preds = %78, %56
  %81 = phi i64 [ %58, %56 ], [ %79, %78 ], !dbg !1341
  call void @llvm.dbg.value(metadata i64 %81, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %81, metadata !1276, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %81, metadata !1276, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %81, metadata !1276, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1277
  %82 = and i64 %81, 1095216660480, !dbg !1395
  %83 = icmp eq i64 %82, 0, !dbg !1395
  br i1 %83, label %84, label %86, !dbg !1397

84:                                               ; preds = %80
  %85 = lshr i64 %81, 40, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %85, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %81, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1277
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %51, i64 %85), metadata !416, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1245
  br label %90, !dbg !1399

86:                                               ; preds = %80
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !416, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1245
  %87 = load i8, ptr %53, align 1, !dbg !1400, !tbaa !1001
  %88 = zext i8 %87 to i64, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %87, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1277
  %89 = lshr i64 %81, 40, !dbg !1403
  br label %90

90:                                               ; preds = %84, %86
  %91 = phi i64 [ %85, %84 ], [ %89, %86 ], !dbg !1403
  %92 = phi i64 [ %85, %84 ], [ 1, %86 ]
  %93 = phi i64 [ %81, %84 ], [ %88, %86 ], !dbg !1277
  %94 = add nsw i64 %92, %51, !dbg !1404
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1245
  call void @llvm.dbg.value(metadata i32 poison, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1277
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1245
  call void @llvm.dbg.value(metadata i64 poison, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1277
  call void @llvm.dbg.value(metadata i64 poison, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1277
  call void @llvm.dbg.value(metadata i64 poison, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1277
  call void @llvm.dbg.value(metadata i64 poison, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1277
  %95 = trunc i64 %93 to i32, !dbg !1403
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !427, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1245
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !427, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !427, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1245
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !427, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1245
  switch i32 %95, label %100 [
    i32 -1, label %265
    i32 10, label %96
  ], !dbg !1265

96:                                               ; preds = %90
  call fastcc void @write_out(i64 noundef %26, i1 noundef zeroext true), !dbg !1405
  tail call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1245
  br label %97, !dbg !1408

97:                                               ; preds = %96, %247, %258
  %98 = phi i64 [ 0, %96 ], [ %91, %247 ], [ %264, %258 ]
  %99 = phi i64 [ 0, %96 ], [ %128, %247 ], [ %254, %258 ]
  br label %23, !dbg !1245, !llvm.loop !1409

100:                                              ; preds = %90, %185
  %101 = phi i64 [ %186, %185 ], [ %26, %90 ], !dbg !1245
  %102 = phi i64 [ %187, %185 ], [ %27, %90 ], !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !410, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !411, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.label(metadata !438), !dbg !1411
  call void @llvm.dbg.value(metadata i32 %95, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1427
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1427
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1427
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1427
  call void @llvm.dbg.value(metadata i64 %102, metadata !1417, metadata !DIExpression()), !dbg !1427
  %103 = load i32, ptr @counting_mode, align 4, !dbg !1429, !tbaa !992
  %104 = icmp eq i32 %103, 1, !dbg !1430
  br i1 %104, label %125, label %105, !dbg !1431

105:                                              ; preds = %100
  switch i32 %95, label %115 [
    i32 8, label %106
    i32 13, label %253
    i32 9, label %112
  ], !dbg !1432

106:                                              ; preds = %105
  %107 = icmp eq i64 %102, 0, !dbg !1433
  br i1 %107, label %253, label %108, !dbg !1436

108:                                              ; preds = %106
  %109 = load i32, ptr @last_character_width, align 4, !dbg !1437, !tbaa !992
  %110 = sext i32 %109 to i64, !dbg !1437
  %111 = sub i64 %102, %110, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %111, metadata !1417, metadata !DIExpression()), !dbg !1427
  br label %127, !dbg !1439

112:                                              ; preds = %105
  %113 = and i64 %102, -8, !dbg !1440
  %114 = add i64 %113, 8, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %114, metadata !1417, metadata !DIExpression()), !dbg !1427
  br label %127, !dbg !1441

115:                                              ; preds = %105
  %116 = icmp eq i32 %103, 2, !dbg !1442
  br i1 %116, label %121, label %117, !dbg !1443

117:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %95, metadata !1444, metadata !DIExpression()), !dbg !1450
  %118 = call i32 @wcwidth(i32 noundef %95) #39, !dbg !1452
  call void @llvm.dbg.value(metadata i32 %118, metadata !1418, metadata !DIExpression()), !dbg !1453
  %119 = icmp slt i32 %118, 0, !dbg !1454
  %120 = select i1 %119, i32 1, i32 %118, !dbg !1455
  br label %121

121:                                              ; preds = %117, %115
  %122 = phi i32 [ %120, %117 ], [ 1, %115 ], !dbg !1456
  store i32 %122, ptr @last_character_width, align 4, !dbg !1456, !tbaa !992
  %123 = sext i32 %122 to i64, !dbg !1457
  %124 = add i64 %102, %123, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1427
  br label %127

125:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i64 %91, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1427
  %126 = add i64 %102, %91, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %126, metadata !1417, metadata !DIExpression()), !dbg !1427
  br label %127

127:                                              ; preds = %108, %112, %121, %125
  %128 = phi i64 [ %111, %108 ], [ %114, %112 ], [ %124, %121 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !1417, metadata !DIExpression()), !dbg !1427
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !410, metadata !DIExpression()), !dbg !1245
  %129 = icmp ugt i64 %128, %1, !dbg !1460
  br i1 %129, label %130, label %253, !dbg !1461

130:                                              ; preds = %127
  %131 = load i1, ptr @break_spaces, align 1, !dbg !1462
  br i1 %131, label %132, label %245, !dbg !1463

132:                                              ; preds = %130
  tail call void @llvm.dbg.value(metadata i32 0, metadata !440, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !445, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !446, metadata !DIExpression()), !dbg !1464
  %133 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %101, !dbg !1465
  tail call void @llvm.dbg.value(metadata ptr %133, metadata !447, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata i32 0, metadata !440, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !445, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !446, metadata !DIExpression()), !dbg !1464
  %134 = icmp sgt i64 %101, 0, !dbg !1466
  br i1 %134, label %135, label %245, !dbg !1468

135:                                              ; preds = %132
  %136 = ptrtoint ptr %133 to i64
  br label %139, !dbg !1468

137:                                              ; preds = %164
  %138 = icmp eq i32 %174, 0, !dbg !1469
  br i1 %138, label %245, label %177, !dbg !1470

139:                                              ; preds = %135, %164
  %140 = phi i32 [ 0, %135 ], [ %174, %164 ]
  %141 = phi i64 [ %101, %135 ], [ %173, %164 ]
  %142 = phi ptr [ @fold_file.line_out, %135 ], [ %175, %164 ]
  tail call void @llvm.dbg.value(metadata i32 %140, metadata !440, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !445, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata ptr %142, metadata !446, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1321, metadata !DIExpression(), metadata !1241, metadata ptr %5, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1329, metadata !DIExpression(), metadata !1242, metadata ptr %6, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata ptr %142, metadata !1326, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata ptr %133, metadata !1327, metadata !DIExpression()), !dbg !1471
  %143 = load i8, ptr %142, align 1, !dbg !1474, !tbaa !1001
  call void @llvm.dbg.value(metadata i8 %143, metadata !1328, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %143, metadata !1344, metadata !DIExpression()), !dbg !1475
  %144 = icmp sgt i8 %143, -1, !dbg !1477
  br i1 %144, label %145, label %149, !dbg !1478

145:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 1, metadata !1354, metadata !DIExpression()), !dbg !1479
  %146 = zext nneg i8 %143 to i64, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %146, metadata !1359, metadata !DIExpression()), !dbg !1479
  %147 = or disjoint i64 %146, 1099511627776, !dbg !1481
  %148 = ptrtoint ptr %142 to i64, !dbg !1482
  br label %164, !dbg !1483

149:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !1484
  store i32 0, ptr %5, align 4, !dbg !1485, !tbaa !1367, !DIAssignID !1486
  call void @llvm.dbg.assign(metadata i32 0, metadata !1321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1486, metadata ptr %5, metadata !DIExpression()), !dbg !1471
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #39, !dbg !1487
  %150 = ptrtoint ptr %142 to i64, !dbg !1488
  %151 = sub i64 %136, %150, !dbg !1488
  %152 = call i64 @mbrtoc32(ptr noundef nonnull %6, ptr noundef nonnull %142, i64 noundef %151, ptr noundef nonnull %5) #39, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %152, metadata !1330, metadata !DIExpression()), !dbg !1471
  %153 = icmp slt i64 %152, 0, !dbg !1490
  br i1 %153, label %162, label %154, !dbg !1491, !prof !1376

154:                                              ; preds = %149
  %155 = load i32, ptr %6, align 4, !dbg !1492, !tbaa !992
  call void @llvm.dbg.value(metadata i32 %155, metadata !1359, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %152, metadata !1354, metadata !DIExpression()), !dbg !1493
  %156 = icmp ne i64 %152, 0, !dbg !1495
  call void @llvm.assume(i1 %156), !dbg !1495
  %157 = icmp ult i64 %152, 5, !dbg !1496
  call void @llvm.assume(i1 %157), !dbg !1496
  %158 = icmp ult i32 %155, 1114112, !dbg !1497
  call void @llvm.assume(i1 %158), !dbg !1497
  %159 = shl nuw nsw i64 %152, 40, !dbg !1498
  %160 = zext nneg i32 %155 to i64, !dbg !1498
  %161 = or disjoint i64 %159, %160, !dbg !1498
  br label %162, !dbg !1499

162:                                              ; preds = %149, %154
  %163 = phi i64 [ %161, %154 ], [ 1099511627776, %149 ], !dbg !1471
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #39, !dbg !1500
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !1500
  br label %164

164:                                              ; preds = %145, %162
  %165 = phi i64 [ %148, %145 ], [ %150, %162 ], !dbg !1482
  %166 = phi i64 [ %147, %145 ], [ %163, %162 ], !dbg !1471
  %167 = trunc i64 %166 to i32, !dbg !1501
  %168 = lshr i64 %166, 40, !dbg !1501
  tail call void @llvm.dbg.value(metadata i32 %167, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1502
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !448, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1502
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !448, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1502
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !448, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %167, metadata !1503, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %167, metadata !1511, metadata !DIExpression()), !dbg !1518
  %169 = call i32 @iswblank(i32 noundef %167) #39, !dbg !1520
  %170 = icmp eq i32 %169, 0, !dbg !1521
  %171 = trunc i64 %168 to i32, !dbg !1482
  %172 = sub i64 %165, ptrtoint (ptr @fold_file.line_out to i64), !dbg !1482
  %173 = select i1 %170, i64 %141, i64 %172, !dbg !1482
  %174 = select i1 %170, i32 %140, i32 %171, !dbg !1482
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !440, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !445, metadata !DIExpression()), !dbg !1464
  %175 = getelementptr inbounds i8, ptr %142, i64 %168, !dbg !1522
  tail call void @llvm.dbg.value(metadata ptr %175, metadata !446, metadata !DIExpression()), !dbg !1464
  %176 = icmp ult ptr %175, %133, !dbg !1466
  br i1 %176, label %139, label %137, !dbg !1468, !llvm.loop !1523

177:                                              ; preds = %137
  %178 = zext nneg i32 %174 to i64
  %179 = add nsw i64 %173, %178, !dbg !1525
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !445, metadata !DIExpression()), !dbg !1464
  call fastcc void @write_out(i64 noundef %179, i1 noundef zeroext true), !dbg !1526
  %180 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %179, !dbg !1527
  %181 = sub nsw i64 %101, %179, !dbg !1528
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1301, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata ptr %180, metadata !1307, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 %181, metadata !1308, metadata !DIExpression()), !dbg !1529
  %182 = call ptr @__memmove_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %180, i64 noundef %181, i64 noundef 262144) #39, !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !411, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !450, metadata !DIExpression()), !dbg !1532
  %183 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %181, !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %183, metadata !453, metadata !DIExpression()), !dbg !1532
  %184 = icmp sgt i64 %181, 0, !dbg !1534
  br i1 %184, label %188, label %185, !dbg !1536

185:                                              ; preds = %241, %177, %252
  %186 = phi i64 [ 0, %252 ], [ %181, %177 ], [ %181, %241 ]
  %187 = phi i64 [ 0, %252 ], [ 0, %177 ], [ %242, %241 ]
  br label %100, !dbg !1245

188:                                              ; preds = %177
  %189 = ptrtoint ptr %183 to i64
  br label %190, !dbg !1536

190:                                              ; preds = %188, %241
  %191 = phi i64 [ 0, %188 ], [ %242, %241 ]
  %192 = phi ptr [ @fold_file.line_out, %188 ], [ %243, %241 ]
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !410, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata ptr %192, metadata !450, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1321, metadata !DIExpression(), metadata !1239, metadata ptr %3, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1329, metadata !DIExpression(), metadata !1240, metadata ptr %4, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %192, metadata !1326, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %183, metadata !1327, metadata !DIExpression()), !dbg !1537
  %193 = load i8, ptr %192, align 1, !dbg !1540, !tbaa !1001
  call void @llvm.dbg.value(metadata i8 %193, metadata !1328, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8 %193, metadata !1344, metadata !DIExpression()), !dbg !1541
  %194 = icmp sgt i8 %193, -1, !dbg !1543
  br i1 %194, label %195, label %198, !dbg !1544

195:                                              ; preds = %190
  call void @llvm.dbg.value(metadata i64 1, metadata !1354, metadata !DIExpression()), !dbg !1545
  %196 = zext nneg i8 %193 to i64, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %196, metadata !1359, metadata !DIExpression()), !dbg !1545
  %197 = or disjoint i64 %196, 1099511627776, !dbg !1547
  br label %213, !dbg !1548

198:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1549
  store i32 0, ptr %3, align 4, !dbg !1550, !tbaa !1367, !DIAssignID !1551
  call void @llvm.dbg.assign(metadata i32 0, metadata !1321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1551, metadata ptr %3, metadata !DIExpression()), !dbg !1537
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #39, !dbg !1552
  %199 = ptrtoint ptr %192 to i64, !dbg !1553
  %200 = sub i64 %189, %199, !dbg !1553
  %201 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %192, i64 noundef %200, ptr noundef nonnull %3) #39, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %201, metadata !1330, metadata !DIExpression()), !dbg !1537
  %202 = icmp slt i64 %201, 0, !dbg !1555
  br i1 %202, label %211, label %203, !dbg !1556, !prof !1376

203:                                              ; preds = %198
  %204 = load i32, ptr %4, align 4, !dbg !1557, !tbaa !992
  call void @llvm.dbg.value(metadata i32 %204, metadata !1359, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %201, metadata !1354, metadata !DIExpression()), !dbg !1558
  %205 = icmp ne i64 %201, 0, !dbg !1560
  call void @llvm.assume(i1 %205), !dbg !1560
  %206 = icmp ult i64 %201, 5, !dbg !1561
  call void @llvm.assume(i1 %206), !dbg !1561
  %207 = icmp ult i32 %204, 1114112, !dbg !1562
  call void @llvm.assume(i1 %207), !dbg !1562
  %208 = shl nuw nsw i64 %201, 40, !dbg !1563
  %209 = zext nneg i32 %204 to i64, !dbg !1563
  %210 = or disjoint i64 %208, %209, !dbg !1563
  br label %211, !dbg !1564

211:                                              ; preds = %198, %203
  %212 = phi i64 [ %210, %203 ], [ 1099511627776, %198 ], !dbg !1537
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #39, !dbg !1565
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1565
  br label %213

213:                                              ; preds = %195, %211
  %214 = phi i64 [ %197, %195 ], [ %212, %211 ], !dbg !1537
  %215 = lshr i64 %214, 40, !dbg !1566
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !454, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1567
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !454, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1567
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !454, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1567
  %216 = trunc i64 %214 to i32
  call void @llvm.dbg.value(metadata i32 %216, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %214, metadata !1412, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %214, metadata !1412, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %214, metadata !1412, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %191, metadata !1417, metadata !DIExpression()), !dbg !1568
  %217 = load i32, ptr @counting_mode, align 4, !dbg !1570, !tbaa !992
  %218 = icmp eq i32 %217, 1, !dbg !1571
  br i1 %218, label %239, label %219, !dbg !1572

219:                                              ; preds = %213
  switch i32 %216, label %229 [
    i32 8, label %220
    i32 13, label %241
    i32 9, label %226
  ], !dbg !1573

220:                                              ; preds = %219
  %221 = icmp eq i64 %191, 0, !dbg !1574
  br i1 %221, label %241, label %222, !dbg !1575

222:                                              ; preds = %220
  %223 = load i32, ptr @last_character_width, align 4, !dbg !1576, !tbaa !992
  %224 = sext i32 %223 to i64, !dbg !1576
  %225 = sub i64 %191, %224, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %225, metadata !1417, metadata !DIExpression()), !dbg !1568
  br label %241, !dbg !1578

226:                                              ; preds = %219
  %227 = and i64 %191, -8, !dbg !1579
  %228 = add i64 %227, 8, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %228, metadata !1417, metadata !DIExpression()), !dbg !1568
  br label %241, !dbg !1580

229:                                              ; preds = %219
  %230 = icmp eq i32 %217, 2, !dbg !1581
  br i1 %230, label %235, label %231, !dbg !1582

231:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i32 %216, metadata !1444, metadata !DIExpression()), !dbg !1583
  %232 = call i32 @wcwidth(i32 noundef %216) #39, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %232, metadata !1418, metadata !DIExpression()), !dbg !1586
  %233 = icmp slt i32 %232, 0, !dbg !1587
  %234 = select i1 %233, i32 1, i32 %232, !dbg !1588
  br label %235

235:                                              ; preds = %231, %229
  %236 = phi i32 [ %234, %231 ], [ 1, %229 ], !dbg !1589
  store i32 %236, ptr @last_character_width, align 4, !dbg !1589, !tbaa !992
  %237 = sext i32 %236 to i64, !dbg !1590
  %238 = add i64 %191, %237, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %238, metadata !1417, metadata !DIExpression()), !dbg !1568
  br label %241

239:                                              ; preds = %213
  call void @llvm.dbg.value(metadata i64 %215, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1568
  %240 = add i64 %215, %191, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %240, metadata !1417, metadata !DIExpression()), !dbg !1568
  br label %241

241:                                              ; preds = %219, %220, %222, %226, %235, %239
  %242 = phi i64 [ %225, %222 ], [ 0, %220 ], [ %228, %226 ], [ %238, %235 ], [ %240, %239 ], [ 0, %219 ]
  call void @llvm.dbg.value(metadata i64 %242, metadata !1417, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %242, metadata !410, metadata !DIExpression()), !dbg !1245
  %243 = getelementptr inbounds i8, ptr %192, i64 %215, !dbg !1593
  tail call void @llvm.dbg.value(metadata ptr %243, metadata !450, metadata !DIExpression()), !dbg !1532
  %244 = icmp ult ptr %243, %183, !dbg !1534
  br i1 %244, label %190, label %185, !dbg !1536, !llvm.loop !1594

245:                                              ; preds = %132, %137, %130
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !410, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %101, metadata !411, metadata !DIExpression()), !dbg !1245
  %246 = icmp eq i64 %101, 0, !dbg !1596
  br i1 %246, label %247, label %252, !dbg !1598

247:                                              ; preds = %245
  call void @llvm.dbg.value(metadata i64 poison, metadata !1599, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %91, metadata !1599, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1605
  call void @llvm.dbg.value(metadata i64 poison, metadata !1599, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1605
  call void @llvm.dbg.value(metadata ptr undef, metadata !1604, metadata !DIExpression()), !dbg !1605
  %248 = icmp sge i64 %94, %91, !dbg !1608
  call void @llvm.assume(i1 %248), !dbg !1610
  %249 = sub nsw i64 %94, %91, !dbg !1611
  %250 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %249, !dbg !1612
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1613, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata ptr %250, metadata !1619, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i64 %91, metadata !1620, metadata !DIExpression()), !dbg !1621
  %251 = call ptr @__memcpy_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %250, i64 noundef %91, i64 noundef 262144) #39, !dbg !1623, !alias.scope !1624
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !411, metadata !DIExpression()), !dbg !1245
  br label %97, !dbg !1628

252:                                              ; preds = %245
  call fastcc void @write_out(i64 noundef %101, i1 noundef zeroext true), !dbg !1629
  tail call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1245
  br label %185, !dbg !1630

253:                                              ; preds = %105, %106, %127
  %254 = phi i64 [ %128, %127 ], [ 0, %106 ], [ 0, %105 ]
  %255 = add nsw i64 %101, %91, !dbg !1631
  %256 = icmp ugt i64 %255, 262143, !dbg !1633
  br i1 %256, label %257, label %258, !dbg !1634

257:                                              ; preds = %253
  call fastcc void @write_out(i64 noundef %101, i1 noundef zeroext false), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1245
  br label %258, !dbg !1637

258:                                              ; preds = %257, %253
  %259 = phi i64 [ 0, %257 ], [ %101, %253 ], !dbg !1245
  tail call void @llvm.dbg.value(metadata i64 %259, metadata !411, metadata !DIExpression()), !dbg !1245
  %260 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %259, !dbg !1638
  call void @llvm.dbg.value(metadata i64 poison, metadata !1599, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1639
  call void @llvm.dbg.value(metadata i64 poison, metadata !1599, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1639
  call void @llvm.dbg.value(metadata i64 poison, metadata !1599, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1639
  call void @llvm.dbg.value(metadata ptr undef, metadata !1604, metadata !DIExpression()), !dbg !1639
  %261 = icmp sge i64 %94, %91, !dbg !1641
  call void @llvm.assume(i1 %261), !dbg !1642
  %262 = sub nsw i64 %94, %91, !dbg !1643
  %263 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %262, !dbg !1644
  call void @llvm.dbg.value(metadata ptr %260, metadata !1613, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %263, metadata !1619, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %91, metadata !1620, metadata !DIExpression()), !dbg !1645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %260, ptr noundef nonnull align 1 %263, i64 noundef %91, i1 noundef false) #39, !dbg !1647
  %264 = add nsw i64 %259, %91, !dbg !1648
  tail call void @llvm.dbg.value(metadata i64 %264, metadata !411, metadata !DIExpression()), !dbg !1245
  br label %97, !dbg !1265

265:                                              ; preds = %45, %90
  %266 = tail call ptr @__errno_location() #42, !dbg !1649
  %267 = load i32, ptr %266, align 4, !dbg !1649, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %267, metadata !426, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1650, metadata !DIExpression()), !dbg !1653
  %268 = load i32, ptr %16, align 8, !dbg !1656, !tbaa !1291
  %269 = and i32 %268, 32, !dbg !1657
  %270 = icmp eq i32 %269, 0, !dbg !1657
  %271 = select i1 %270, i32 0, i32 %267, !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %271, metadata !426, metadata !DIExpression()), !dbg !1245
  %272 = icmp eq i64 %26, 0, !dbg !1659
  br i1 %272, label %274, label %273, !dbg !1661

273:                                              ; preds = %265
  call fastcc void @write_out(i64 noundef %26, i1 noundef zeroext false), !dbg !1662
  br label %274, !dbg !1662

274:                                              ; preds = %273, %265
  call void @llvm.dbg.value(metadata ptr %0, metadata !1003, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1009, metadata !DIExpression()), !dbg !1663
  %275 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.16) #40, !dbg !1666
  %276 = icmp eq i32 %275, 0, !dbg !1667
  br i1 %276, label %277, label %278, !dbg !1668

277:                                              ; preds = %274
  call void @clearerr_unlocked(ptr noundef nonnull %16) #39, !dbg !1669
  br label %285, !dbg !1669

278:                                              ; preds = %274
  %279 = call i32 @rpl_fclose(ptr noundef nonnull %16) #39, !dbg !1670
  %280 = icmp eq i32 %279, 0, !dbg !1672
  %281 = icmp ne i32 %271, 0
  %282 = select i1 %280, i1 true, i1 %281, !dbg !1673
  br i1 %282, label %285, label %283, !dbg !1673

283:                                              ; preds = %278
  %284 = load i32, ptr %266, align 4, !dbg !1674, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %284, metadata !426, metadata !DIExpression()), !dbg !1245
  br label %285, !dbg !1675

285:                                              ; preds = %278, %283, %277
  %286 = phi i32 [ %271, %277 ], [ %271, %278 ], [ %284, %283 ], !dbg !1245
  tail call void @llvm.dbg.value(metadata i32 %286, metadata !426, metadata !DIExpression()), !dbg !1245
  %287 = icmp eq i32 %286, 0, !dbg !1676
  br i1 %287, label %290, label %288, !dbg !1678

288:                                              ; preds = %285
  %289 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1679
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %286, ptr noundef nonnull @.str.61, ptr noundef %289) #39, !dbg !1679
  br label %290, !dbg !1681

290:                                              ; preds = %288, %285, %18
  %291 = phi i1 [ false, %18 ], [ true, %285 ], [ false, %288 ], !dbg !1245
  ret i1 %291, !dbg !1682
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1683 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1687 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1691 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @write_out(i64 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !1698 {
  tail call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1702, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1703, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1704, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1710
  %3 = load ptr, ptr @stdout, align 8, !dbg !1711, !tbaa !921
  %4 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @fold_file.line_out, i64 noundef 1, i64 noundef %0, ptr noundef %3), !dbg !1711
  %5 = icmp eq i64 %4, %0, !dbg !1712
  br i1 %5, label %6, label %19, !dbg !1713

6:                                                ; preds = %2
  br i1 %1, label %7, label %28, !dbg !1714

7:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 10, metadata !1715, metadata !DIExpression()), !dbg !1720
  %8 = load ptr, ptr @stdout, align 8, !dbg !1722, !tbaa !921
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %8, i64 0, i32 5, !dbg !1722
  %10 = load ptr, ptr %9, align 8, !dbg !1722, !tbaa !1723
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %8, i64 0, i32 6, !dbg !1722
  %12 = load ptr, ptr %11, align 8, !dbg !1722, !tbaa !1724
  %13 = icmp ult ptr %10, %12, !dbg !1722
  br i1 %13, label %14, label %16, !dbg !1722, !prof !1725

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1722
  store ptr %15, ptr %9, align 8, !dbg !1722, !tbaa !1723
  store i8 10, ptr %10, align 1, !dbg !1722, !tbaa !1001
  br label %28, !dbg !1726

16:                                               ; preds = %7
  %17 = tail call i32 @__overflow(ptr noundef nonnull %8, i32 noundef 10) #39, !dbg !1722
  %18 = icmp slt i32 %17, 0, !dbg !1727
  br i1 %18, label %19, label %28, !dbg !1726

19:                                               ; preds = %16, %2
  %20 = tail call ptr @__errno_location() #42, !dbg !1728
  %21 = load i32, ptr %20, align 4, !dbg !1728, !tbaa !992
  call void @llvm.dbg.value(metadata i32 %21, metadata !1731, metadata !DIExpression()), !dbg !1733
  %22 = load ptr, ptr @stdout, align 8, !dbg !1734, !tbaa !921
  %23 = tail call i32 @fflush_unlocked(ptr noundef %22) #39, !dbg !1734
  %24 = load ptr, ptr @stdout, align 8, !dbg !1735, !tbaa !921
  %25 = tail call i32 @fpurge(ptr noundef %24) #39, !dbg !1736
  %26 = load ptr, ptr @stdout, align 8, !dbg !1737, !tbaa !921
  tail call void @clearerr_unlocked(ptr noundef %26) #39, !dbg !1737
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #39, !dbg !1738
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %21, ptr noundef %27) #39, !dbg !1738
  unreachable, !dbg !1738

28:                                               ; preds = %14, %16, %6
  ret void, !dbg !1739
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !1740 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1746 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(argmem: readwrite)
declare !dbg !1748 ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nounwind
declare !dbg !1749 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1752 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1755 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1756 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1758, metadata !DIExpression()), !dbg !1759
  store ptr %0, ptr @file_name, align 8, !dbg !1760, !tbaa !921
  ret void, !dbg !1761
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !1762 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1766, metadata !DIExpression()), !dbg !1767
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1768, !tbaa !1769
  ret void, !dbg !1771
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1772 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1777, !tbaa !921
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1778
  %3 = icmp eq i32 %2, 0, !dbg !1779
  br i1 %3, label %22, label %4, !dbg !1780

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1781, !tbaa !1769, !range !1782, !noundef !959
  %6 = icmp eq i8 %5, 0, !dbg !1781
  br i1 %6, label %11, label %7, !dbg !1783

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1784
  %9 = load i32, ptr %8, align 4, !dbg !1784, !tbaa !992
  %10 = icmp eq i32 %9, 32, !dbg !1785
  br i1 %10, label %22, label %11, !dbg !1786

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 5) #39, !dbg !1787
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1774, metadata !DIExpression()), !dbg !1788
  %13 = load ptr, ptr @file_name, align 8, !dbg !1789, !tbaa !921
  %14 = icmp eq ptr %13, null, !dbg !1789
  %15 = tail call ptr @__errno_location() #42, !dbg !1791
  %16 = load i32, ptr %15, align 4, !dbg !1791, !tbaa !992
  br i1 %14, label %19, label %17, !dbg !1792

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1793
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.28, ptr noundef %18, ptr noundef %12) #39, !dbg !1793
  br label %20, !dbg !1793

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.29, ptr noundef %12) #39, !dbg !1794
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1795, !tbaa !992
  tail call void @_exit(i32 noundef %21) #41, !dbg !1796
  unreachable, !dbg !1796

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1797, !tbaa !921
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1799
  %25 = icmp eq i32 %24, 0, !dbg !1800
  br i1 %25, label %28, label %26, !dbg !1801

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1802, !tbaa !992
  tail call void @_exit(i32 noundef %27) #41, !dbg !1803
  unreachable, !dbg !1803

28:                                               ; preds = %22
  ret void, !dbg !1804
}

; Function Attrs: noreturn
declare !dbg !1805 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1807 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1811, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1812, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1813, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1814, metadata !DIExpression()), !dbg !1815
  tail call fastcc void @flush_stdout(), !dbg !1816
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1817, !tbaa !921
  %6 = icmp eq ptr %5, null, !dbg !1817
  br i1 %6, label %8, label %7, !dbg !1819

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1820
  br label %12, !dbg !1820

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1821, !tbaa !921
  %10 = tail call ptr @getprogname() #40, !dbg !1821
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef %10) #39, !dbg !1821
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1823
  ret void, !dbg !1824
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1825 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1827, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 1, metadata !1829, metadata !DIExpression()), !dbg !1832
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1835
  %2 = icmp slt i32 %1, 0, !dbg !1836
  br i1 %2, label %6, label %3, !dbg !1837

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1838, !tbaa !921
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1838
  br label %6, !dbg !1838

6:                                                ; preds = %3, %0
  ret void, !dbg !1839
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1840 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1846
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1842, metadata !DIExpression()), !dbg !1847
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1843, metadata !DIExpression()), !dbg !1847
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1844, metadata !DIExpression()), !dbg !1847
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1845, metadata !DIExpression()), !dbg !1847
  %6 = load ptr, ptr @stderr, align 8, !dbg !1848, !tbaa !921
  call void @llvm.dbg.value(metadata ptr %6, metadata !1849, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata ptr %2, metadata !1889, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata ptr %3, metadata !1890, metadata !DIExpression()), !dbg !1891
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1893
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1894, !tbaa !992
  %9 = add i32 %8, 1, !dbg !1894
  store i32 %9, ptr @error_message_count, align 4, !dbg !1894, !tbaa !992
  %10 = icmp eq i32 %1, 0, !dbg !1895
  br i1 %10, label %20, label %11, !dbg !1897

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1898, metadata !DIExpression(), metadata !1846, metadata ptr %5, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i32 %1, metadata !1901, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1908
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1909
  call void @llvm.dbg.value(metadata ptr %12, metadata !1902, metadata !DIExpression()), !dbg !1906
  %13 = icmp eq ptr %12, null, !dbg !1910
  br i1 %13, label %14, label %16, !dbg !1912

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.31, ptr noundef nonnull @.str.5.32, i32 noundef 5) #39, !dbg !1913
  call void @llvm.dbg.value(metadata ptr %15, metadata !1902, metadata !DIExpression()), !dbg !1906
  br label %16, !dbg !1914

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1906
  call void @llvm.dbg.value(metadata ptr %17, metadata !1902, metadata !DIExpression()), !dbg !1906
  %18 = load ptr, ptr @stderr, align 8, !dbg !1915, !tbaa !921
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.33, ptr noundef %17) #39, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1916
  br label %20, !dbg !1917

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1918, !tbaa !921
  call void @llvm.dbg.value(metadata i32 10, metadata !1919, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata ptr %21, metadata !1924, metadata !DIExpression()), !dbg !1925
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1927
  %23 = load ptr, ptr %22, align 8, !dbg !1927, !tbaa !1723
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1927
  %25 = load ptr, ptr %24, align 8, !dbg !1927, !tbaa !1724
  %26 = icmp ult ptr %23, %25, !dbg !1927
  br i1 %26, label %29, label %27, !dbg !1927, !prof !1725

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1927
  br label %31, !dbg !1927

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1927
  store ptr %30, ptr %22, align 8, !dbg !1927, !tbaa !1723
  store i8 10, ptr %23, align 1, !dbg !1927, !tbaa !1001
  br label %31, !dbg !1927

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1928, !tbaa !921
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1928
  %34 = icmp eq i32 %0, 0, !dbg !1929
  br i1 %34, label %36, label %35, !dbg !1931

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1932
  unreachable, !dbg !1932

36:                                               ; preds = %31
  ret void, !dbg !1933
}

declare !dbg !1934 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1937 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1940 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1944 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1957
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1951, metadata !DIExpression(), metadata !1957, metadata ptr %4, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1948, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1949, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1950, metadata !DIExpression()), !dbg !1958
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1959
  call void @llvm.va_start(ptr nonnull %4), !dbg !1960
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1961
  call void @llvm.va_end(ptr nonnull %4), !dbg !1962
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1963
  ret void, !dbg !1963
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !506 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !517, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !518, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !519, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !520, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !521, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !522, metadata !DIExpression()), !dbg !1964
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1965, !tbaa !992
  %8 = icmp eq i32 %7, 0, !dbg !1965
  br i1 %8, label %23, label %9, !dbg !1967

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1968, !tbaa !992
  %11 = icmp eq i32 %10, %3, !dbg !1971
  br i1 %11, label %12, label %22, !dbg !1972

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1973, !tbaa !921
  %14 = icmp eq ptr %13, %2, !dbg !1974
  br i1 %14, label %36, label %15, !dbg !1975

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1976
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1977
  br i1 %18, label %19, label %22, !dbg !1977

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1978
  %21 = icmp eq i32 %20, 0, !dbg !1979
  br i1 %21, label %36, label %22, !dbg !1980

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1981, !tbaa !921
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1982, !tbaa !992
  br label %23, !dbg !1983

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1984
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1985, !tbaa !921
  %25 = icmp eq ptr %24, null, !dbg !1985
  br i1 %25, label %27, label %26, !dbg !1987

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1988
  br label %31, !dbg !1988

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1989, !tbaa !921
  %29 = tail call ptr @getprogname() #40, !dbg !1989
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.36, ptr noundef %29) #39, !dbg !1989
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1991, !tbaa !921
  %33 = icmp eq ptr %2, null, !dbg !1991
  %34 = select i1 %33, ptr @.str.3.37, ptr @.str.2.38, !dbg !1991
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1991
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1992
  br label %36, !dbg !1993

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1993
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1994 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2004
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2003, metadata !DIExpression(), metadata !2004, metadata ptr %6, metadata !DIExpression()), !dbg !2005
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1998, metadata !DIExpression()), !dbg !2005
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1999, metadata !DIExpression()), !dbg !2005
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2000, metadata !DIExpression()), !dbg !2005
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2001, metadata !DIExpression()), !dbg !2005
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2002, metadata !DIExpression()), !dbg !2005
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !2006
  call void @llvm.va_start(ptr nonnull %6), !dbg !2007
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !2008
  call void @llvm.va_end(ptr nonnull %6), !dbg !2009
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !2010
  ret void, !dbg !2010
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2011 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2017, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2018, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2019, metadata !DIExpression()), !dbg !2021
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2020, metadata !DIExpression()), !dbg !2021
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #39, !dbg !2022
  ret void, !dbg !2023
}

; Function Attrs: nounwind
declare !dbg !2024 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2027 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2065, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()), !dbg !2067
  %3 = icmp eq ptr %0, null, !dbg !2068
  br i1 %3, label %7, label %4, !dbg !2070

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %5, metadata !2017, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 0, metadata !2018, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %1, metadata !2020, metadata !DIExpression()), !dbg !2072
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #39, !dbg !2074
  br label %7, !dbg !2075

7:                                                ; preds = %4, %2
  ret void, !dbg !2076
}

; Function Attrs: nofree nounwind
declare !dbg !2077 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2080 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2118, metadata !DIExpression()), !dbg !2122
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()), !dbg !2122
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2123
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2120, metadata !DIExpression()), !dbg !2122
  %3 = icmp slt i32 %2, 0, !dbg !2124
  br i1 %3, label %4, label %6, !dbg !2126

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2127
  br label %24, !dbg !2128

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2129
  %8 = icmp eq i32 %7, 0, !dbg !2129
  br i1 %8, label %13, label %9, !dbg !2131

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2132
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !2133
  %12 = icmp eq i64 %11, -1, !dbg !2134
  br i1 %12, label %16, label %13, !dbg !2135

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !2136
  %15 = icmp eq i32 %14, 0, !dbg !2136
  br i1 %15, label %16, label %18, !dbg !2137

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()), !dbg !2122
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2121, metadata !DIExpression()), !dbg !2122
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2121, metadata !DIExpression()), !dbg !2122
  br label %24, !dbg !2139

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !2140
  %20 = load i32, ptr %19, align 4, !dbg !2140, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2119, metadata !DIExpression()), !dbg !2122
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2121, metadata !DIExpression()), !dbg !2122
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2121, metadata !DIExpression()), !dbg !2122
  %22 = icmp eq i32 %20, 0, !dbg !2141
  br i1 %22, label %24, label %23, !dbg !2139

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2143, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2121, metadata !DIExpression()), !dbg !2122
  br label %24, !dbg !2145

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2122
  ret i32 %25, !dbg !2146
}

; Function Attrs: nofree nounwind
declare !dbg !2147 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2148 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2150 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2153 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2192
  %2 = icmp eq ptr %0, null, !dbg !2193
  br i1 %2, label %6, label %3, !dbg !2195

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2196
  %5 = icmp eq i32 %4, 0, !dbg !2196
  br i1 %5, label %6, label %8, !dbg !2197

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2198
  br label %16, !dbg !2199

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2200, metadata !DIExpression()), !dbg !2205
  %9 = load i32, ptr %0, align 8, !dbg !2207, !tbaa !1291
  %10 = and i32 %9, 256, !dbg !2209
  %11 = icmp eq i32 %10, 0, !dbg !2209
  br i1 %11, label %14, label %12, !dbg !2210

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !2211
  br label %14, !dbg !2211

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2212
  br label %16, !dbg !2213

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2192
  ret i32 %17, !dbg !2214
}

; Function Attrs: nofree nounwind
declare !dbg !2215 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2216 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2254, metadata !DIExpression()), !dbg !2255
  tail call void @__fpurge(ptr noundef nonnull %0) #39, !dbg !2256
  ret i32 0, !dbg !2257
}

; Function Attrs: nounwind
declare !dbg !2258 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2261 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2299, metadata !DIExpression()), !dbg !2305
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2300, metadata !DIExpression()), !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2301, metadata !DIExpression()), !dbg !2305
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2306
  %5 = load ptr, ptr %4, align 8, !dbg !2306, !tbaa !2307
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2308
  %7 = load ptr, ptr %6, align 8, !dbg !2308, !tbaa !2309
  %8 = icmp eq ptr %5, %7, !dbg !2310
  br i1 %8, label %9, label %27, !dbg !2311

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2312
  %11 = load ptr, ptr %10, align 8, !dbg !2312, !tbaa !1723
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2313
  %13 = load ptr, ptr %12, align 8, !dbg !2313, !tbaa !2314
  %14 = icmp eq ptr %11, %13, !dbg !2315
  br i1 %14, label %15, label %27, !dbg !2316

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2317
  %17 = load ptr, ptr %16, align 8, !dbg !2317, !tbaa !2318
  %18 = icmp eq ptr %17, null, !dbg !2319
  br i1 %18, label %19, label %27, !dbg !2320

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2321
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2302, metadata !DIExpression()), !dbg !2323
  %22 = icmp eq i64 %21, -1, !dbg !2324
  br i1 %22, label %29, label %23, !dbg !2326

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2327, !tbaa !1291
  %25 = and i32 %24, -17, !dbg !2327
  store i32 %25, ptr %0, align 8, !dbg !2327, !tbaa !1291
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2328
  store i64 %21, ptr %26, align 8, !dbg !2329, !tbaa !2330
  br label %29, !dbg !2331

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2332
  br label %29, !dbg !2333

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2305
  ret i32 %30, !dbg !2334
}

; Function Attrs: nofree nounwind
declare !dbg !2335 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2338 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2341, !tbaa !921
  ret ptr %1, !dbg !2342
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2343 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2345, metadata !DIExpression()), !dbg !2348
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2349
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2346, metadata !DIExpression()), !dbg !2348
  %3 = icmp eq ptr %2, null, !dbg !2350
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2350
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2350
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2347, metadata !DIExpression()), !dbg !2348
  %6 = ptrtoint ptr %5 to i64, !dbg !2351
  %7 = ptrtoint ptr %0 to i64, !dbg !2351
  %8 = sub i64 %6, %7, !dbg !2351
  %9 = icmp sgt i64 %8, 6, !dbg !2353
  br i1 %9, label %10, label %19, !dbg !2354

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %11, metadata !2356, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata ptr @.str.63, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 7, metadata !2362, metadata !DIExpression()), !dbg !2363
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.63, i64 7), !dbg !2365
  %13 = icmp eq i32 %12, 0, !dbg !2366
  br i1 %13, label %14, label %19, !dbg !2367

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2345, metadata !DIExpression()), !dbg !2348
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.64, i64 noundef 3) #40, !dbg !2368
  %16 = icmp eq i32 %15, 0, !dbg !2371
  %17 = select i1 %16, i64 3, i64 0, !dbg !2372
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2372
  br label %19, !dbg !2372

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2348
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2347, metadata !DIExpression()), !dbg !2348
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2345, metadata !DIExpression()), !dbg !2348
  store ptr %20, ptr @program_name, align 8, !dbg !2373, !tbaa !921
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2374, !tbaa !921
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2375, !tbaa !921
  ret void, !dbg !2376
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2377 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !559 {
  %3 = alloca i32, align 4, !DIAssignID !2378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !569, metadata !DIExpression(), metadata !2378, metadata ptr %3, metadata !DIExpression()), !dbg !2379
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2380
  call void @llvm.dbg.assign(metadata i1 undef, metadata !570, metadata !DIExpression(), metadata !2380, metadata ptr %4, metadata !DIExpression()), !dbg !2379
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !566, metadata !DIExpression()), !dbg !2379
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !567, metadata !DIExpression()), !dbg !2379
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !568, metadata !DIExpression()), !dbg !2379
  %6 = icmp eq ptr %5, %0, !dbg !2382
  br i1 %6, label %7, label %14, !dbg !2384

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2386
  call void @llvm.dbg.value(metadata ptr %4, metadata !2387, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata ptr %4, metadata !2396, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 8, metadata !2402, metadata !DIExpression()), !dbg !2403
  store i64 0, ptr %4, align 8, !dbg !2405
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2406
  %9 = icmp eq i64 %8, 2, !dbg !2408
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2409
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2379
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2410
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2410
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2379
  ret ptr %15, !dbg !2410
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2411 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2416, metadata !DIExpression()), !dbg !2419
  %2 = tail call ptr @__errno_location() #42, !dbg !2420
  %3 = load i32, ptr %2, align 4, !dbg !2420, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2417, metadata !DIExpression()), !dbg !2419
  %4 = icmp eq ptr %0, null, !dbg !2421
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2421
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !2422
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2418, metadata !DIExpression()), !dbg !2419
  store i32 %3, ptr %2, align 4, !dbg !2423, !tbaa !992
  ret ptr %6, !dbg !2424
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !2425 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2431, metadata !DIExpression()), !dbg !2432
  %2 = icmp eq ptr %0, null, !dbg !2433
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2433
  %4 = load i32, ptr %3, align 8, !dbg !2434, !tbaa !2435
  ret i32 %4, !dbg !2437
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2438 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2442, metadata !DIExpression()), !dbg !2444
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2443, metadata !DIExpression()), !dbg !2444
  %3 = icmp eq ptr %0, null, !dbg !2445
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2445
  store i32 %1, ptr %4, align 8, !dbg !2446, !tbaa !2435
  ret void, !dbg !2447
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2448 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2452, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2453, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2454, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2455, metadata !DIExpression()), !dbg !2460
  %4 = icmp eq ptr %0, null, !dbg !2461
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2461
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2462
  %7 = lshr i8 %1, 5, !dbg !2463
  %8 = zext nneg i8 %7 to i64, !dbg !2463
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2464
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2456, metadata !DIExpression()), !dbg !2460
  %10 = and i8 %1, 31, !dbg !2465
  %11 = zext nneg i8 %10 to i32, !dbg !2465
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2458, metadata !DIExpression()), !dbg !2460
  %12 = load i32, ptr %9, align 4, !dbg !2466, !tbaa !992
  %13 = lshr i32 %12, %11, !dbg !2467
  %14 = and i32 %13, 1, !dbg !2468
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2459, metadata !DIExpression()), !dbg !2460
  %15 = xor i32 %13, %2, !dbg !2469
  %16 = and i32 %15, 1, !dbg !2469
  %17 = shl nuw i32 %16, %11, !dbg !2470
  %18 = xor i32 %17, %12, !dbg !2471
  store i32 %18, ptr %9, align 4, !dbg !2471, !tbaa !992
  ret i32 %14, !dbg !2472
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2477, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2478, metadata !DIExpression()), !dbg !2480
  %3 = icmp eq ptr %0, null, !dbg !2481
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2483
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !2480
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2484
  %6 = load i32, ptr %5, align 4, !dbg !2484, !tbaa !2485
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2479, metadata !DIExpression()), !dbg !2480
  store i32 %1, ptr %5, align 4, !dbg !2486, !tbaa !2485
  ret i32 %6, !dbg !2487
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2488 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2492, metadata !DIExpression()), !dbg !2495
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2493, metadata !DIExpression()), !dbg !2495
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2494, metadata !DIExpression()), !dbg !2495
  %4 = icmp eq ptr %0, null, !dbg !2496
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2498
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2492, metadata !DIExpression()), !dbg !2495
  store i32 10, ptr %5, align 8, !dbg !2499, !tbaa !2435
  %6 = icmp ne ptr %1, null, !dbg !2500
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2502
  br i1 %8, label %10, label %9, !dbg !2502

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2503
  unreachable, !dbg !2503

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2504
  store ptr %1, ptr %11, align 8, !dbg !2505, !tbaa !2506
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2507
  store ptr %2, ptr %12, align 8, !dbg !2508, !tbaa !2509
  ret void, !dbg !2510
}

; Function Attrs: noreturn nounwind
declare !dbg !2511 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2512 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2516, metadata !DIExpression()), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2517, metadata !DIExpression()), !dbg !2524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2518, metadata !DIExpression()), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2519, metadata !DIExpression()), !dbg !2524
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2520, metadata !DIExpression()), !dbg !2524
  %6 = icmp eq ptr %4, null, !dbg !2525
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2525
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2521, metadata !DIExpression()), !dbg !2524
  %8 = tail call ptr @__errno_location() #42, !dbg !2526
  %9 = load i32, ptr %8, align 4, !dbg !2526, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2522, metadata !DIExpression()), !dbg !2524
  %10 = load i32, ptr %7, align 8, !dbg !2527, !tbaa !2435
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2528
  %12 = load i32, ptr %11, align 4, !dbg !2528, !tbaa !2485
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2529
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2530
  %15 = load ptr, ptr %14, align 8, !dbg !2530, !tbaa !2506
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2531
  %17 = load ptr, ptr %16, align 8, !dbg !2531, !tbaa !2509
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i32 %9, ptr %8, align 4, !dbg !2533, !tbaa !992
  ret i64 %18, !dbg !2534
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2535 {
  %10 = alloca i32, align 4, !DIAssignID !2603
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2604
  %12 = alloca i32, align 4, !DIAssignID !2605
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2606
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2607
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2581, metadata !DIExpression(), metadata !2607, metadata ptr %14, metadata !DIExpression()), !dbg !2608
  %15 = alloca i32, align 4, !DIAssignID !2609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2584, metadata !DIExpression(), metadata !2609, metadata ptr %15, metadata !DIExpression()), !dbg !2610
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2543, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2544, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2545, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2546, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2547, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2548, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2549, metadata !DIExpression()), !dbg !2611
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2612
  %17 = icmp eq i64 %16, 1, !dbg !2613
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2553, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2554, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2611
  %18 = trunc i32 %5 to i8, !dbg !2614
  %19 = lshr i8 %18, 1, !dbg !2614
  %20 = and i8 %19, 1, !dbg !2614
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2556, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2558, metadata !DIExpression()), !dbg !2611
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2615

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2616
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2617
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2618
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2619
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2611
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2620
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2621
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2558, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2556, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2555, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2554, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2553, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2552, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2544, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2549, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2548, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2545, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.label(metadata !2559), !dbg !2622
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2560, metadata !DIExpression()), !dbg !2611
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
  ], !dbg !2623

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2556, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2545, metadata !DIExpression()), !dbg !2611
  br label %114, !dbg !2624

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2556, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2545, metadata !DIExpression()), !dbg !2611
  %43 = and i8 %37, 1, !dbg !2625
  %44 = icmp eq i8 %43, 0, !dbg !2625
  br i1 %44, label %45, label %114, !dbg !2624

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2627
  br i1 %46, label %114, label %47, !dbg !2630

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2627, !tbaa !1001
  br label %114, !dbg !2627

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !659, metadata !DIExpression(), metadata !2605, metadata ptr %12, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.assign(metadata i1 undef, metadata !660, metadata !DIExpression(), metadata !2606, metadata ptr %13, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr @.str.11.77, metadata !656, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 %29, metadata !657, metadata !DIExpression()), !dbg !2631
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.78, ptr noundef nonnull @.str.11.77, i32 noundef 5) #39, !dbg !2635
  call void @llvm.dbg.value(metadata ptr %49, metadata !658, metadata !DIExpression()), !dbg !2631
  %50 = icmp eq ptr %49, @.str.11.77, !dbg !2636
  br i1 %50, label %51, label %60, !dbg !2638

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2640
  call void @llvm.dbg.value(metadata ptr %13, metadata !2641, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %13, metadata !2649, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i32 0, metadata !2652, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i64 8, metadata !2653, metadata !DIExpression()), !dbg !2654
  store i64 0, ptr %13, align 8, !dbg !2656
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2657
  %53 = icmp eq i64 %52, 3, !dbg !2659
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2660
  %57 = icmp eq i32 %29, 9, !dbg !2660
  %58 = select i1 %57, ptr @.str.10.79, ptr @.str.12.80, !dbg !2660
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2661
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2661
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2631
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2548, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !659, metadata !DIExpression(), metadata !2603, metadata ptr %10, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !660, metadata !DIExpression(), metadata !2604, metadata ptr %11, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr @.str.12.80, metadata !656, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 %29, metadata !657, metadata !DIExpression()), !dbg !2662
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.78, ptr noundef nonnull @.str.12.80, i32 noundef 5) #39, !dbg !2664
  call void @llvm.dbg.value(metadata ptr %62, metadata !658, metadata !DIExpression()), !dbg !2662
  %63 = icmp eq ptr %62, @.str.12.80, !dbg !2665
  br i1 %63, label %64, label %73, !dbg !2666

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2667
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2668
  call void @llvm.dbg.value(metadata ptr %11, metadata !2641, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata ptr %11, metadata !2649, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 0, metadata !2652, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 8, metadata !2653, metadata !DIExpression()), !dbg !2671
  store i64 0, ptr %11, align 8, !dbg !2673
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2674
  %66 = icmp eq i64 %65, 3, !dbg !2675
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2676
  %70 = icmp eq i32 %29, 9, !dbg !2676
  %71 = select i1 %70, ptr @.str.10.79, ptr @.str.12.80, !dbg !2676
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2677
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2677
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2549, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2548, metadata !DIExpression()), !dbg !2611
  %76 = and i8 %37, 1, !dbg !2678
  %77 = icmp eq i8 %76, 0, !dbg !2678
  br i1 %77, label %78, label %93, !dbg !2679

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2561, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2551, metadata !DIExpression()), !dbg !2611
  %79 = load i8, ptr %74, align 1, !dbg !2681, !tbaa !1001
  %80 = icmp eq i8 %79, 0, !dbg !2683
  br i1 %80, label %93, label %81, !dbg !2683

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2561, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2551, metadata !DIExpression()), !dbg !2611
  %85 = icmp ult i64 %84, %40, !dbg !2684
  br i1 %85, label %86, label %88, !dbg !2687

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2684
  store i8 %82, ptr %87, align 1, !dbg !2684, !tbaa !1001
  br label %88, !dbg !2684

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2551, metadata !DIExpression()), !dbg !2611
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2688
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2561, metadata !DIExpression()), !dbg !2680
  %91 = load i8, ptr %90, align 1, !dbg !2681, !tbaa !1001
  %92 = icmp eq i8 %91, 0, !dbg !2683
  br i1 %92, label %93, label %81, !dbg !2683, !llvm.loop !2689

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2691
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2555, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2553, metadata !DIExpression()), !dbg !2611
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2692
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2554, metadata !DIExpression()), !dbg !2611
  br label %114, !dbg !2693

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2555, metadata !DIExpression()), !dbg !2611
  br label %98, !dbg !2694

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2555, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2556, metadata !DIExpression()), !dbg !2611
  br label %98, !dbg !2695

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2619
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2556, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2555, metadata !DIExpression()), !dbg !2611
  %101 = and i8 %100, 1, !dbg !2696
  %102 = icmp eq i8 %101, 0, !dbg !2696
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2698
  br label %104, !dbg !2698

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2611
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2614
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2556, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2555, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2545, metadata !DIExpression()), !dbg !2611
  %107 = and i8 %106, 1, !dbg !2699
  %108 = icmp eq i8 %107, 0, !dbg !2699
  br i1 %108, label %109, label %114, !dbg !2701

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2702
  br i1 %110, label %114, label %111, !dbg !2705

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2702, !tbaa !1001
  br label %114, !dbg !2702

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2556, metadata !DIExpression()), !dbg !2611
  br label %114, !dbg !2706

113:                                              ; preds = %28
  call void @abort() #41, !dbg !2707
  unreachable, !dbg !2707

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2691
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.79, %45 ], [ @.str.10.79, %47 ], [ @.str.10.79, %42 ], [ %34, %28 ], [ @.str.12.80, %109 ], [ @.str.12.80, %111 ], [ @.str.12.80, %104 ], [ @.str.10.79, %41 ], !dbg !2611
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2611
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2611
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2556, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2555, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2554, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2553, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2549, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2548, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2545, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2566, metadata !DIExpression()), !dbg !2708
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
  br label %138, !dbg !2709

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2691
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2616
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2620
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2621
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2710
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2711
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2566, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2558, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2552, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2544, metadata !DIExpression()), !dbg !2611
  %147 = icmp eq i64 %139, -1, !dbg !2712
  br i1 %147, label %148, label %152, !dbg !2713

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2714
  %150 = load i8, ptr %149, align 1, !dbg !2714, !tbaa !1001
  %151 = icmp eq i8 %150, 0, !dbg !2715
  br i1 %151, label %612, label %154, !dbg !2716

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2717
  br i1 %153, label %612, label %154, !dbg !2716

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2568, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2718
  br i1 %128, label %155, label %170, !dbg !2719

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2721
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2722
  br i1 %157, label %158, label %160, !dbg !2722

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2544, metadata !DIExpression()), !dbg !2611
  br label %160, !dbg !2724

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2544, metadata !DIExpression()), !dbg !2611
  %162 = icmp ugt i64 %156, %161, !dbg !2725
  br i1 %162, label %170, label %163, !dbg !2726

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2727
  call void @llvm.dbg.value(metadata ptr %164, metadata !2728, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %119, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %120, metadata !2732, metadata !DIExpression()), !dbg !2733
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2735
  %166 = icmp ne i32 %165, 0, !dbg !2736
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2737
  %168 = xor i1 %166, true, !dbg !2737
  %169 = zext i1 %168 to i8, !dbg !2737
  br i1 %167, label %170, label %666, !dbg !2737

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2718
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2568, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2544, metadata !DIExpression()), !dbg !2611
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2738
  %175 = load i8, ptr %174, align 1, !dbg !2738, !tbaa !1001
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2573, metadata !DIExpression()), !dbg !2718
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
  ], !dbg !2739

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2740

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2741

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2718
  %179 = and i8 %144, 1, !dbg !2745
  %180 = icmp eq i8 %179, 0, !dbg !2745
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2745
  br i1 %181, label %182, label %198, !dbg !2745

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2747
  br i1 %183, label %184, label %186, !dbg !2751

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2747
  store i8 39, ptr %185, align 1, !dbg !2747, !tbaa !1001
  br label %186, !dbg !2747

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2551, metadata !DIExpression()), !dbg !2611
  %188 = icmp ult i64 %187, %146, !dbg !2752
  br i1 %188, label %189, label %191, !dbg !2755

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2752
  store i8 36, ptr %190, align 1, !dbg !2752, !tbaa !1001
  br label %191, !dbg !2752

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2755
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2551, metadata !DIExpression()), !dbg !2611
  %193 = icmp ult i64 %192, %146, !dbg !2756
  br i1 %193, label %194, label %196, !dbg !2759

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2756
  store i8 39, ptr %195, align 1, !dbg !2756, !tbaa !1001
  br label %196, !dbg !2756

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2560, metadata !DIExpression()), !dbg !2611
  br label %198, !dbg !2760

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2611
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2551, metadata !DIExpression()), !dbg !2611
  %201 = icmp ult i64 %199, %146, !dbg !2761
  br i1 %201, label %202, label %204, !dbg !2764

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2761
  store i8 92, ptr %203, align 1, !dbg !2761, !tbaa !1001
  br label %204, !dbg !2761

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2551, metadata !DIExpression()), !dbg !2611
  br i1 %125, label %206, label %476, !dbg !2765

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2767
  %208 = icmp ult i64 %207, %171, !dbg !2768
  br i1 %208, label %209, label %465, !dbg !2769

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2770
  %211 = load i8, ptr %210, align 1, !dbg !2770, !tbaa !1001
  %212 = add i8 %211, -48, !dbg !2771
  %213 = icmp ult i8 %212, 10, !dbg !2771
  br i1 %213, label %214, label %465, !dbg !2771

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2772
  br i1 %215, label %216, label %218, !dbg !2776

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2772
  store i8 48, ptr %217, align 1, !dbg !2772, !tbaa !1001
  br label %218, !dbg !2772

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2551, metadata !DIExpression()), !dbg !2611
  %220 = icmp ult i64 %219, %146, !dbg !2777
  br i1 %220, label %221, label %223, !dbg !2780

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2777
  store i8 48, ptr %222, align 1, !dbg !2777, !tbaa !1001
  br label %223, !dbg !2777

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2780
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2551, metadata !DIExpression()), !dbg !2611
  br label %465, !dbg !2781

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2782

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2783

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2784

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2786

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2788
  %231 = icmp ult i64 %230, %171, !dbg !2789
  br i1 %231, label %232, label %465, !dbg !2790

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2791
  %234 = load i8, ptr %233, align 1, !dbg !2791, !tbaa !1001
  %235 = icmp eq i8 %234, 63, !dbg !2792
  br i1 %235, label %236, label %465, !dbg !2793

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2794
  %238 = load i8, ptr %237, align 1, !dbg !2794, !tbaa !1001
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
  ], !dbg !2795

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2796

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2573, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2566, metadata !DIExpression()), !dbg !2708
  %241 = icmp ult i64 %140, %146, !dbg !2798
  br i1 %241, label %242, label %244, !dbg !2801

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2798
  store i8 63, ptr %243, align 1, !dbg !2798, !tbaa !1001
  br label %244, !dbg !2798

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2551, metadata !DIExpression()), !dbg !2611
  %246 = icmp ult i64 %245, %146, !dbg !2802
  br i1 %246, label %247, label %249, !dbg !2805

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2802
  store i8 34, ptr %248, align 1, !dbg !2802, !tbaa !1001
  br label %249, !dbg !2802

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2805
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2551, metadata !DIExpression()), !dbg !2611
  %251 = icmp ult i64 %250, %146, !dbg !2806
  br i1 %251, label %252, label %254, !dbg !2809

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2806
  store i8 34, ptr %253, align 1, !dbg !2806, !tbaa !1001
  br label %254, !dbg !2806

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2809
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2551, metadata !DIExpression()), !dbg !2611
  %256 = icmp ult i64 %255, %146, !dbg !2810
  br i1 %256, label %257, label %259, !dbg !2813

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2810
  store i8 63, ptr %258, align 1, !dbg !2810, !tbaa !1001
  br label %259, !dbg !2810

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2813
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2551, metadata !DIExpression()), !dbg !2611
  br label %465, !dbg !2814

261:                                              ; preds = %170
  br label %272, !dbg !2815

262:                                              ; preds = %170
  br label %272, !dbg !2816

263:                                              ; preds = %170
  br label %270, !dbg !2817

264:                                              ; preds = %170
  br label %270, !dbg !2818

265:                                              ; preds = %170
  br label %272, !dbg !2819

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2820

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2821

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2824

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2826

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2827
  call void @llvm.dbg.label(metadata !2574), !dbg !2828
  br i1 %133, label %272, label %655, !dbg !2829

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2827
  call void @llvm.dbg.label(metadata !2577), !dbg !2831
  br i1 %124, label %520, label %476, !dbg !2832

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2833

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2834, !tbaa !1001
  %277 = icmp eq i8 %276, 0, !dbg !2836
  br i1 %277, label %278, label %465, !dbg !2837

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2838
  br i1 %279, label %280, label %465, !dbg !2840

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2572, metadata !DIExpression()), !dbg !2718
  br label %281, !dbg !2841

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2572, metadata !DIExpression()), !dbg !2718
  br i1 %133, label %465, label %655, !dbg !2842

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2572, metadata !DIExpression()), !dbg !2718
  br i1 %132, label %284, label %465, !dbg !2844

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2845

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2848
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2850
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2850
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2850
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2552, metadata !DIExpression()), !dbg !2611
  %291 = icmp ult i64 %140, %290, !dbg !2851
  br i1 %291, label %292, label %294, !dbg !2854

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2851
  store i8 39, ptr %293, align 1, !dbg !2851, !tbaa !1001
  br label %294, !dbg !2851

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2854
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2551, metadata !DIExpression()), !dbg !2611
  %296 = icmp ult i64 %295, %290, !dbg !2855
  br i1 %296, label %297, label %299, !dbg !2858

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2855
  store i8 92, ptr %298, align 1, !dbg !2855, !tbaa !1001
  br label %299, !dbg !2855

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2858
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2551, metadata !DIExpression()), !dbg !2611
  %301 = icmp ult i64 %300, %290, !dbg !2859
  br i1 %301, label %302, label %304, !dbg !2862

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2859
  store i8 39, ptr %303, align 1, !dbg !2859, !tbaa !1001
  br label %304, !dbg !2859

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2862
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2560, metadata !DIExpression()), !dbg !2611
  br label %465, !dbg !2863

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2864

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2578, metadata !DIExpression()), !dbg !2865
  %308 = tail call ptr @__ctype_b_loc() #42, !dbg !2866
  %309 = load ptr, ptr %308, align 8, !dbg !2866, !tbaa !921
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2866
  %312 = load i16, ptr %311, align 2, !dbg !2866, !tbaa !1033
  %313 = and i16 %312, 16384, !dbg !2868
  %314 = icmp ne i16 %313, 0, !dbg !2868
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2580, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2865
  br label %355, !dbg !2869

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2870
  call void @llvm.dbg.value(metadata ptr %14, metadata !2641, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %14, metadata !2649, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 0, metadata !2652, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64 8, metadata !2653, metadata !DIExpression()), !dbg !2873
  store i64 0, ptr %14, align 8, !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2578, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2580, metadata !DIExpression()), !dbg !2865
  %316 = icmp eq i64 %171, -1, !dbg !2876
  br i1 %316, label %317, label %319, !dbg !2878

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2544, metadata !DIExpression()), !dbg !2611
  br label %319, !dbg !2880

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2544, metadata !DIExpression()), !dbg !2611
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2881
  %321 = sub i64 %320, %145, !dbg !2882
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #39, !dbg !2883
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2588, metadata !DIExpression()), !dbg !2610
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2884

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2578, metadata !DIExpression()), !dbg !2865
  %324 = icmp ult i64 %145, %320, !dbg !2885
  br i1 %324, label %326, label %351, !dbg !2887

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2865
  br label %351, !dbg !2888

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2578, metadata !DIExpression()), !dbg !2865
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2890
  %330 = load i8, ptr %329, align 1, !dbg !2890, !tbaa !1001
  %331 = icmp eq i8 %330, 0, !dbg !2887
  br i1 %331, label %351, label %332, !dbg !2891

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2892
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2578, metadata !DIExpression()), !dbg !2865
  %334 = add i64 %333, %145, !dbg !2893
  %335 = icmp eq i64 %333, %321, !dbg !2885
  br i1 %335, label %351, label %326, !dbg !2887, !llvm.loop !2894

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2589, metadata !DIExpression()), !dbg !2895
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2896
  %339 = and i1 %338, %132, !dbg !2896
  br i1 %339, label %340, label %347, !dbg !2896

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2589, metadata !DIExpression()), !dbg !2895
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2897
  %343 = load i8, ptr %342, align 1, !dbg !2897, !tbaa !1001
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2899

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2900
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2589, metadata !DIExpression()), !dbg !2895
  %346 = icmp eq i64 %345, %322, !dbg !2901
  br i1 %346, label %347, label %340, !dbg !2902, !llvm.loop !2903

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2905, !tbaa !992
  call void @llvm.dbg.value(metadata i32 %348, metadata !2907, metadata !DIExpression()), !dbg !2910
  %349 = call i32 @iswprint(i32 noundef %348) #39, !dbg !2912
  %350 = icmp ne i32 %349, 0, !dbg !2913
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2578, metadata !DIExpression()), !dbg !2865
  br label %351, !dbg !2914

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2578, metadata !DIExpression()), !dbg !2865
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2916
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2578, metadata !DIExpression()), !dbg !2865
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2916
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2718
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2917
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2578, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2544, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2572, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2718
  %359 = icmp ult i64 %357, 2, !dbg !2918
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2919
  br i1 %361, label %461, label %362, !dbg !2919

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2597, metadata !DIExpression()), !dbg !2921
  br label %364, !dbg !2922

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2611
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2710
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2708
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2718
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2923
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2573, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2571, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2568, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2566, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2551, metadata !DIExpression()), !dbg !2611
  br i1 %360, label %417, label %371, !dbg !2924

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2929

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2718
  %373 = and i8 %366, 1, !dbg !2932
  %374 = icmp eq i8 %373, 0, !dbg !2932
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2932
  br i1 %375, label %376, label %392, !dbg !2932

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2934
  br i1 %377, label %378, label %380, !dbg !2938

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2934
  store i8 39, ptr %379, align 1, !dbg !2934, !tbaa !1001
  br label %380, !dbg !2934

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2938
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2551, metadata !DIExpression()), !dbg !2611
  %382 = icmp ult i64 %381, %146, !dbg !2939
  br i1 %382, label %383, label %385, !dbg !2942

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2939
  store i8 36, ptr %384, align 1, !dbg !2939, !tbaa !1001
  br label %385, !dbg !2939

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2551, metadata !DIExpression()), !dbg !2611
  %387 = icmp ult i64 %386, %146, !dbg !2943
  br i1 %387, label %388, label %390, !dbg !2946

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2943
  store i8 39, ptr %389, align 1, !dbg !2943, !tbaa !1001
  br label %390, !dbg !2943

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2946
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2560, metadata !DIExpression()), !dbg !2611
  br label %392, !dbg !2947

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2611
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2551, metadata !DIExpression()), !dbg !2611
  %395 = icmp ult i64 %393, %146, !dbg !2948
  br i1 %395, label %396, label %398, !dbg !2951

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2948
  store i8 92, ptr %397, align 1, !dbg !2948, !tbaa !1001
  br label %398, !dbg !2948

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2951
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2551, metadata !DIExpression()), !dbg !2611
  %400 = icmp ult i64 %399, %146, !dbg !2952
  br i1 %400, label %401, label %405, !dbg !2955

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2952
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2952
  store i8 %403, ptr %404, align 1, !dbg !2952, !tbaa !1001
  br label %405, !dbg !2952

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2955
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2551, metadata !DIExpression()), !dbg !2611
  %407 = icmp ult i64 %406, %146, !dbg !2956
  br i1 %407, label %408, label %413, !dbg !2959

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2956
  %411 = or disjoint i8 %410, 48, !dbg !2956
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2956
  store i8 %411, ptr %412, align 1, !dbg !2956, !tbaa !1001
  br label %413, !dbg !2956

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2551, metadata !DIExpression()), !dbg !2611
  %415 = and i8 %370, 7, !dbg !2960
  %416 = or disjoint i8 %415, 48, !dbg !2961
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2573, metadata !DIExpression()), !dbg !2718
  br label %426, !dbg !2962

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2963
  %419 = icmp eq i8 %418, 0, !dbg !2963
  br i1 %419, label %426, label %420, !dbg !2965

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2966
  br i1 %421, label %422, label %424, !dbg !2970

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2966
  store i8 92, ptr %423, align 1, !dbg !2966, !tbaa !1001
  br label %424, !dbg !2966

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2568, metadata !DIExpression()), !dbg !2718
  br label %426, !dbg !2971

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2611
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2710
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2718
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2718
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2573, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2571, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2568, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2551, metadata !DIExpression()), !dbg !2611
  %432 = add i64 %367, 1, !dbg !2972
  %433 = icmp ugt i64 %363, %432, !dbg !2974
  br i1 %433, label %434, label %463, !dbg !2975

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2976
  %436 = icmp ne i8 %435, 0, !dbg !2976
  %437 = and i8 %430, 1, !dbg !2976
  %438 = icmp eq i8 %437, 0, !dbg !2976
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2976
  br i1 %439, label %440, label %451, !dbg !2976

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2979
  br i1 %441, label %442, label %444, !dbg !2983

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2979
  store i8 39, ptr %443, align 1, !dbg !2979, !tbaa !1001
  br label %444, !dbg !2979

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2551, metadata !DIExpression()), !dbg !2611
  %446 = icmp ult i64 %445, %146, !dbg !2984
  br i1 %446, label %447, label %449, !dbg !2987

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2984
  store i8 39, ptr %448, align 1, !dbg !2984, !tbaa !1001
  br label %449, !dbg !2984

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2560, metadata !DIExpression()), !dbg !2611
  br label %451, !dbg !2988

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2989
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2551, metadata !DIExpression()), !dbg !2611
  %454 = icmp ult i64 %452, %146, !dbg !2990
  br i1 %454, label %455, label %457, !dbg !2993

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2990
  store i8 %431, ptr %456, align 1, !dbg !2990, !tbaa !1001
  br label %457, !dbg !2990

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2566, metadata !DIExpression()), !dbg !2708
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2994
  %460 = load i8, ptr %459, align 1, !dbg !2994, !tbaa !1001
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2573, metadata !DIExpression()), !dbg !2718
  br label %364, !dbg !2995, !llvm.loop !2996

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2573, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2572, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2568, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2566, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2544, metadata !DIExpression()), !dbg !2611
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2573, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2572, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2571, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2568, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2566, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2544, metadata !DIExpression()), !dbg !2611
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2999
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2611
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2616
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2611
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2611
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2708
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2718
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2718
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2718
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2573, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2572, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2571, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2568, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2566, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2552, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2544, metadata !DIExpression()), !dbg !2611
  br i1 %126, label %487, label %476, !dbg !3000

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
  br i1 %137, label %488, label %509, !dbg !3002

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3003

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
  %499 = lshr i8 %490, 5, !dbg !3004
  %500 = zext nneg i8 %499 to i64, !dbg !3004
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3005
  %502 = load i32, ptr %501, align 4, !dbg !3005, !tbaa !992
  %503 = and i8 %490, 31, !dbg !3006
  %504 = zext nneg i8 %503 to i32, !dbg !3006
  %505 = shl nuw i32 1, %504, !dbg !3007
  %506 = and i32 %502, %505, !dbg !3007
  %507 = icmp eq i32 %506, 0, !dbg !3007
  %508 = and i1 %172, %507, !dbg !3008
  br i1 %508, label %558, label %520, !dbg !3008

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
  br i1 %172, label %558, label %520, !dbg !3009

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2999
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2611
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2616
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2620
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2710
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3010
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2718
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2718
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2573, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2572, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2566, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2552, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2544, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.label(metadata !2600), !dbg !3011
  br i1 %131, label %530, label %659, !dbg !3012

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2718
  %531 = and i8 %525, 1, !dbg !3014
  %532 = icmp eq i8 %531, 0, !dbg !3014
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3014
  br i1 %533, label %534, label %550, !dbg !3014

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3016
  br i1 %535, label %536, label %538, !dbg !3020

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3016
  store i8 39, ptr %537, align 1, !dbg !3016, !tbaa !1001
  br label %538, !dbg !3016

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3020
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2551, metadata !DIExpression()), !dbg !2611
  %540 = icmp ult i64 %539, %529, !dbg !3021
  br i1 %540, label %541, label %543, !dbg !3024

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3021
  store i8 36, ptr %542, align 1, !dbg !3021, !tbaa !1001
  br label %543, !dbg !3021

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3024
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2551, metadata !DIExpression()), !dbg !2611
  %545 = icmp ult i64 %544, %529, !dbg !3025
  br i1 %545, label %546, label %548, !dbg !3028

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3025
  store i8 39, ptr %547, align 1, !dbg !3025, !tbaa !1001
  br label %548, !dbg !3025

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3028
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2560, metadata !DIExpression()), !dbg !2611
  br label %550, !dbg !3029

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2718
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2551, metadata !DIExpression()), !dbg !2611
  %553 = icmp ult i64 %551, %529, !dbg !3030
  br i1 %553, label %554, label %556, !dbg !3033

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3030
  store i8 92, ptr %555, align 1, !dbg !3030, !tbaa !1001
  br label %556, !dbg !3030

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3033
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2573, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2572, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2566, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2552, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2544, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.label(metadata !2601), !dbg !3034
  br label %585, !dbg !3035

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2999
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2611
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2616
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2620
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2710
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3010
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2718
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2718
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3038
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2573, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2572, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2571, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2566, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2552, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2544, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.label(metadata !2601), !dbg !3034
  %569 = and i8 %563, 1, !dbg !3035
  %570 = icmp ne i8 %569, 0, !dbg !3035
  %571 = and i8 %565, 1, !dbg !3035
  %572 = icmp eq i8 %571, 0, !dbg !3035
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3035
  br i1 %573, label %574, label %585, !dbg !3035

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3039
  br i1 %575, label %576, label %578, !dbg !3043

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3039
  store i8 39, ptr %577, align 1, !dbg !3039, !tbaa !1001
  br label %578, !dbg !3039

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2551, metadata !DIExpression()), !dbg !2611
  %580 = icmp ult i64 %579, %568, !dbg !3044
  br i1 %580, label %581, label %583, !dbg !3047

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3044
  store i8 39, ptr %582, align 1, !dbg !3044, !tbaa !1001
  br label %583, !dbg !3044

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2560, metadata !DIExpression()), !dbg !2611
  br label %585, !dbg !3048

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2718
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2551, metadata !DIExpression()), !dbg !2611
  %595 = icmp ult i64 %593, %586, !dbg !3049
  br i1 %595, label %596, label %598, !dbg !3052

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3049
  store i8 %587, ptr %597, align 1, !dbg !3049, !tbaa !1001
  br label %598, !dbg !3049

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2551, metadata !DIExpression()), !dbg !2611
  %600 = icmp eq i8 %588, 0, !dbg !3053
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3055
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2558, metadata !DIExpression()), !dbg !2611
  br label %602, !dbg !3056

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2999
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2611
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2616
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2620
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2621
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2710
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3010
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2566, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2560, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2558, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2552, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2544, metadata !DIExpression()), !dbg !2611
  %611 = add i64 %609, 1, !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2566, metadata !DIExpression()), !dbg !2708
  br label %138, !dbg !3058, !llvm.loop !3059

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2542, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2558, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2557, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2552, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2551, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2544, metadata !DIExpression()), !dbg !2611
  %613 = icmp eq i64 %140, 0, !dbg !3061
  %614 = and i1 %132, %613, !dbg !3063
  %615 = xor i1 %614, true, !dbg !3063
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3063
  br i1 %616, label %617, label %655, !dbg !3063

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3064
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3064
  br i1 %621, label %622, label %631, !dbg !3064

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3066
  %624 = icmp eq i8 %623, 0, !dbg !3066
  br i1 %624, label %627, label %625, !dbg !3069

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3070
  br label %672, !dbg !3071

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3072
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3074
  br i1 %630, label %28, label %631, !dbg !3074

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3075
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3077
  br i1 %634, label %635, label %650, !dbg !3077

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2553, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2551, metadata !DIExpression()), !dbg !2611
  %636 = load i8, ptr %119, align 1, !dbg !3078, !tbaa !1001
  %637 = icmp eq i8 %636, 0, !dbg !3081
  br i1 %637, label %650, label %638, !dbg !3081

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2553, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2551, metadata !DIExpression()), !dbg !2611
  %642 = icmp ult i64 %641, %146, !dbg !3082
  br i1 %642, label %643, label %645, !dbg !3085

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3082
  store i8 %639, ptr %644, align 1, !dbg !3082, !tbaa !1001
  br label %645, !dbg !3082

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2551, metadata !DIExpression()), !dbg !2611
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3086
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2553, metadata !DIExpression()), !dbg !2611
  %648 = load i8, ptr %647, align 1, !dbg !3078, !tbaa !1001
  %649 = icmp eq i8 %648, 0, !dbg !3081
  br i1 %649, label %650, label %638, !dbg !3081, !llvm.loop !3087

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2691
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2551, metadata !DIExpression()), !dbg !2611
  %652 = icmp ult i64 %651, %146, !dbg !3089
  br i1 %652, label %653, label %672, !dbg !3091

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3092
  store i8 0, ptr %654, align 1, !dbg !3093, !tbaa !1001
  br label %672, !dbg !3092

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2602), !dbg !3094
  %657 = icmp eq i8 %123, 0, !dbg !3095
  %658 = select i1 %657, i32 2, i32 4, !dbg !3095
  br label %666, !dbg !3095

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2602), !dbg !3094
  %662 = icmp eq i32 %115, 2, !dbg !3097
  %663 = icmp eq i8 %123, 0, !dbg !3095
  %664 = select i1 %663, i32 2, i32 4, !dbg !3095
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3095
  br label %666, !dbg !3095

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2545, metadata !DIExpression()), !dbg !2611
  %670 = and i32 %5, -3, !dbg !3098
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3099
  br label %672, !dbg !3100

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3101
}

; Function Attrs: nounwind
declare !dbg !3102 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3105 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3108 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3109 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3113, metadata !DIExpression()), !dbg !3116
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3116
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3115, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %0, metadata !3117, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr null, metadata !3123, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %2, metadata !3124, metadata !DIExpression()), !dbg !3130
  %4 = icmp eq ptr %2, null, !dbg !3132
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3132
  call void @llvm.dbg.value(metadata ptr %5, metadata !3125, metadata !DIExpression()), !dbg !3130
  %6 = tail call ptr @__errno_location() #42, !dbg !3133
  %7 = load i32, ptr %6, align 4, !dbg !3133, !tbaa !992
  call void @llvm.dbg.value(metadata i32 %7, metadata !3126, metadata !DIExpression()), !dbg !3130
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3134
  %9 = load i32, ptr %8, align 4, !dbg !3134, !tbaa !2485
  %10 = or i32 %9, 1, !dbg !3135
  call void @llvm.dbg.value(metadata i32 %10, metadata !3127, metadata !DIExpression()), !dbg !3130
  %11 = load i32, ptr %5, align 8, !dbg !3136, !tbaa !2435
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3137
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3138
  %14 = load ptr, ptr %13, align 8, !dbg !3138, !tbaa !2506
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3139
  %16 = load ptr, ptr %15, align 8, !dbg !3139, !tbaa !2509
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3140
  %18 = add i64 %17, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %18, metadata !3128, metadata !DIExpression()), !dbg !3130
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !3142
  call void @llvm.dbg.value(metadata ptr %19, metadata !3129, metadata !DIExpression()), !dbg !3130
  %20 = load i32, ptr %5, align 8, !dbg !3143, !tbaa !2435
  %21 = load ptr, ptr %13, align 8, !dbg !3144, !tbaa !2506
  %22 = load ptr, ptr %15, align 8, !dbg !3145, !tbaa !2509
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3146
  store i32 %7, ptr %6, align 4, !dbg !3147, !tbaa !992
  ret ptr %19, !dbg !3148
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3118 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3117, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3123, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3124, metadata !DIExpression()), !dbg !3149
  %5 = icmp eq ptr %3, null, !dbg !3150
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3150
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3125, metadata !DIExpression()), !dbg !3149
  %7 = tail call ptr @__errno_location() #42, !dbg !3151
  %8 = load i32, ptr %7, align 4, !dbg !3151, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3126, metadata !DIExpression()), !dbg !3149
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3152
  %10 = load i32, ptr %9, align 4, !dbg !3152, !tbaa !2485
  %11 = icmp eq ptr %2, null, !dbg !3153
  %12 = zext i1 %11 to i32, !dbg !3153
  %13 = or i32 %10, %12, !dbg !3154
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3127, metadata !DIExpression()), !dbg !3149
  %14 = load i32, ptr %6, align 8, !dbg !3155, !tbaa !2435
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3156
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3157
  %17 = load ptr, ptr %16, align 8, !dbg !3157, !tbaa !2506
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3158
  %19 = load ptr, ptr %18, align 8, !dbg !3158, !tbaa !2509
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3159
  %21 = add i64 %20, 1, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3128, metadata !DIExpression()), !dbg !3149
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !3161
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3129, metadata !DIExpression()), !dbg !3149
  %23 = load i32, ptr %6, align 8, !dbg !3162, !tbaa !2435
  %24 = load ptr, ptr %16, align 8, !dbg !3163, !tbaa !2506
  %25 = load ptr, ptr %18, align 8, !dbg !3164, !tbaa !2509
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3165
  store i32 %8, ptr %7, align 4, !dbg !3166, !tbaa !992
  br i1 %11, label %28, label %27, !dbg !3167

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3168, !tbaa !3170
  br label %28, !dbg !3171

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3172
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3173 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3178, !tbaa !921
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3175, metadata !DIExpression()), !dbg !3179
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3176, metadata !DIExpression()), !dbg !3180
  %2 = load i32, ptr @nslots, align 4, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3176, metadata !DIExpression()), !dbg !3180
  %3 = icmp sgt i32 %2, 1, !dbg !3181
  br i1 %3, label %4, label %6, !dbg !3183

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3181
  br label %10, !dbg !3183

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3184
  %8 = load ptr, ptr %7, align 8, !dbg !3184, !tbaa !3186
  %9 = icmp eq ptr %8, @slot0, !dbg !3188
  br i1 %9, label %17, label %16, !dbg !3189

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3176, metadata !DIExpression()), !dbg !3180
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3190
  %13 = load ptr, ptr %12, align 8, !dbg !3190, !tbaa !3186
  tail call void @free(ptr noundef %13) #39, !dbg !3191
  %14 = add nuw nsw i64 %11, 1, !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3176, metadata !DIExpression()), !dbg !3180
  %15 = icmp eq i64 %14, %5, !dbg !3181
  br i1 %15, label %6, label %10, !dbg !3183, !llvm.loop !3193

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3195
  store i64 256, ptr @slotvec0, align 8, !dbg !3197, !tbaa !3198
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3199, !tbaa !3186
  br label %17, !dbg !3200

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3201
  br i1 %18, label %20, label %19, !dbg !3203

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3204
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3206, !tbaa !921
  br label %20, !dbg !3207

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3208, !tbaa !992
  ret void, !dbg !3209
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3210 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3213 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3215, metadata !DIExpression()), !dbg !3217
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3216, metadata !DIExpression()), !dbg !3217
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3218
  ret ptr %3, !dbg !3219
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3220 {
  %5 = alloca i64, align 8, !DIAssignID !3240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3234, metadata !DIExpression(), metadata !3240, metadata ptr %5, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3224, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3225, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3226, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3227, metadata !DIExpression()), !dbg !3242
  %6 = tail call ptr @__errno_location() #42, !dbg !3243
  %7 = load i32, ptr %6, align 4, !dbg !3243, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3228, metadata !DIExpression()), !dbg !3242
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3244, !tbaa !921
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3229, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3230, metadata !DIExpression()), !dbg !3242
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3245
  br i1 %9, label %10, label %11, !dbg !3245

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3247
  unreachable, !dbg !3247

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3248, !tbaa !992
  %13 = icmp sgt i32 %12, %0, !dbg !3249
  br i1 %13, label %32, label %14, !dbg !3250

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3251
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3231, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3252
  %16 = sext i32 %12 to i64, !dbg !3253
  store i64 %16, ptr %5, align 8, !dbg !3254, !tbaa !3170, !DIAssignID !3255
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3234, metadata !DIExpression(), metadata !3255, metadata ptr %5, metadata !DIExpression()), !dbg !3241
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3256
  %18 = add nuw nsw i32 %0, 1, !dbg !3257
  %19 = sub i32 %18, %12, !dbg !3258
  %20 = sext i32 %19 to i64, !dbg !3259
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3260
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3229, metadata !DIExpression()), !dbg !3242
  store ptr %21, ptr @slotvec, align 8, !dbg !3261, !tbaa !921
  br i1 %15, label %22, label %23, !dbg !3262

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3263, !tbaa.struct !3265
  br label %23, !dbg !3266

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3267, !tbaa !992
  %25 = sext i32 %24 to i64, !dbg !3268
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3268
  %27 = load i64, ptr %5, align 8, !dbg !3269, !tbaa !3170
  %28 = sub nsw i64 %27, %25, !dbg !3270
  %29 = shl i64 %28, 4, !dbg !3271
  call void @llvm.dbg.value(metadata ptr %26, metadata !2649, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 0, metadata !2652, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 %29, metadata !2653, metadata !DIExpression()), !dbg !3272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3274
  %30 = load i64, ptr %5, align 8, !dbg !3275, !tbaa !3170
  %31 = trunc i64 %30 to i32, !dbg !3275
  store i32 %31, ptr @nslots, align 4, !dbg !3276, !tbaa !992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3277
  br label %32, !dbg !3278

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3229, metadata !DIExpression()), !dbg !3242
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3279
  %36 = load i64, ptr %35, align 8, !dbg !3280, !tbaa !3198
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3235, metadata !DIExpression()), !dbg !3281
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3282
  %38 = load ptr, ptr %37, align 8, !dbg !3282, !tbaa !3186
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3237, metadata !DIExpression()), !dbg !3281
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3283
  %40 = load i32, ptr %39, align 4, !dbg !3283, !tbaa !2485
  %41 = or i32 %40, 1, !dbg !3284
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3238, metadata !DIExpression()), !dbg !3281
  %42 = load i32, ptr %3, align 8, !dbg !3285, !tbaa !2435
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3286
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3287
  %45 = load ptr, ptr %44, align 8, !dbg !3287, !tbaa !2506
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3288
  %47 = load ptr, ptr %46, align 8, !dbg !3288, !tbaa !2509
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3239, metadata !DIExpression()), !dbg !3281
  %49 = icmp ugt i64 %36, %48, !dbg !3290
  br i1 %49, label %60, label %50, !dbg !3292

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3235, metadata !DIExpression()), !dbg !3281
  store i64 %51, ptr %35, align 8, !dbg !3295, !tbaa !3198
  %52 = icmp eq ptr %38, @slot0, !dbg !3296
  br i1 %52, label %54, label %53, !dbg !3298

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3299
  br label %54, !dbg !3299

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3300
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3237, metadata !DIExpression()), !dbg !3281
  store ptr %55, ptr %37, align 8, !dbg !3301, !tbaa !3186
  %56 = load i32, ptr %3, align 8, !dbg !3302, !tbaa !2435
  %57 = load ptr, ptr %44, align 8, !dbg !3303, !tbaa !2506
  %58 = load ptr, ptr %46, align 8, !dbg !3304, !tbaa !2509
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3305
  br label %60, !dbg !3306

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3281
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3237, metadata !DIExpression()), !dbg !3281
  store i32 %7, ptr %6, align 4, !dbg !3307, !tbaa !992
  ret ptr %61, !dbg !3308
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3309 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3313, metadata !DIExpression()), !dbg !3316
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3314, metadata !DIExpression()), !dbg !3316
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3315, metadata !DIExpression()), !dbg !3316
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3317
  ret ptr %4, !dbg !3318
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3319 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr %0, metadata !3216, metadata !DIExpression()), !dbg !3323
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3325
  ret ptr %2, !dbg !3326
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3327 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3332, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i32 0, metadata !3313, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata ptr %0, metadata !3314, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %1, metadata !3315, metadata !DIExpression()), !dbg !3334
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3336
  ret ptr %3, !dbg !3337
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3338 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3345, metadata !DIExpression(), metadata !3346, metadata ptr %4, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3342, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3343, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3344, metadata !DIExpression()), !dbg !3347
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3349), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %1, metadata !3353, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3358, metadata !DIExpression()), !dbg !3361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3361, !alias.scope !3349, !DIAssignID !3362
  call void @llvm.dbg.assign(metadata i8 0, metadata !3345, metadata !DIExpression(), metadata !3362, metadata ptr %4, metadata !DIExpression()), !dbg !3347
  %5 = icmp eq i32 %1, 10, !dbg !3363
  br i1 %5, label %6, label %7, !dbg !3365

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3366, !noalias !3349
  unreachable, !dbg !3366

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3367, !tbaa !2435, !alias.scope !3349, !DIAssignID !3368
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3368, metadata ptr %4, metadata !DIExpression()), !dbg !3347
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3369
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3370
  ret ptr %8, !dbg !3371
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3372 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3381
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3380, metadata !DIExpression(), metadata !3381, metadata ptr %5, metadata !DIExpression()), !dbg !3382
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3376, metadata !DIExpression()), !dbg !3382
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3377, metadata !DIExpression()), !dbg !3382
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3378, metadata !DIExpression()), !dbg !3382
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3379, metadata !DIExpression()), !dbg !3382
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3384), !dbg !3387
  call void @llvm.dbg.value(metadata i32 %1, metadata !3353, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3358, metadata !DIExpression()), !dbg !3390
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3390, !alias.scope !3384, !DIAssignID !3391
  call void @llvm.dbg.assign(metadata i8 0, metadata !3380, metadata !DIExpression(), metadata !3391, metadata ptr %5, metadata !DIExpression()), !dbg !3382
  %6 = icmp eq i32 %1, 10, !dbg !3392
  br i1 %6, label %7, label %8, !dbg !3393

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3394, !noalias !3384
  unreachable, !dbg !3394

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3395, !tbaa !2435, !alias.scope !3384, !DIAssignID !3396
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3380, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3396, metadata ptr %5, metadata !DIExpression()), !dbg !3382
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3397
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3398
  ret ptr %9, !dbg !3399
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3400 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3406
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3404, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3405, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3345, metadata !DIExpression(), metadata !3406, metadata ptr %3, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 0, metadata !3342, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %0, metadata !3343, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata ptr %1, metadata !3344, metadata !DIExpression()), !dbg !3408
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3411), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %0, metadata !3353, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3358, metadata !DIExpression()), !dbg !3417
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3417, !alias.scope !3411, !DIAssignID !3418
  call void @llvm.dbg.assign(metadata i8 0, metadata !3345, metadata !DIExpression(), metadata !3418, metadata ptr %3, metadata !DIExpression()), !dbg !3408
  %4 = icmp eq i32 %0, 10, !dbg !3419
  br i1 %4, label %5, label %6, !dbg !3420

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3421, !noalias !3411
  unreachable, !dbg !3421

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3422, !tbaa !2435, !alias.scope !3411, !DIAssignID !3423
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3423, metadata ptr %3, metadata !DIExpression()), !dbg !3408
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3424
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3425
  ret ptr %7, !dbg !3426
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3427 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3434
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3432, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3433, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3380, metadata !DIExpression(), metadata !3434, metadata ptr %4, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 0, metadata !3376, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 %0, metadata !3377, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata ptr %1, metadata !3378, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %2, metadata !3379, metadata !DIExpression()), !dbg !3436
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3439), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %0, metadata !3353, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3358, metadata !DIExpression()), !dbg !3445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3445, !alias.scope !3439, !DIAssignID !3446
  call void @llvm.dbg.assign(metadata i8 0, metadata !3380, metadata !DIExpression(), metadata !3446, metadata ptr %4, metadata !DIExpression()), !dbg !3436
  %5 = icmp eq i32 %0, 10, !dbg !3447
  br i1 %5, label %6, label %7, !dbg !3448

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3449, !noalias !3439
  unreachable, !dbg !3449

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3450, !tbaa !2435, !alias.scope !3439, !DIAssignID !3451
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3380, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3451, metadata ptr %4, metadata !DIExpression()), !dbg !3436
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3452
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3453
  ret ptr %8, !dbg !3454
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3455 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3463
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3462, metadata !DIExpression(), metadata !3463, metadata ptr %4, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3459, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3460, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3461, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3466, !tbaa.struct !3467, !DIAssignID !3468
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3462, metadata !DIExpression(), metadata !3468, metadata ptr %4, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2452, metadata !DIExpression()), !dbg !3469
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2453, metadata !DIExpression()), !dbg !3469
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()), !dbg !3469
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2455, metadata !DIExpression()), !dbg !3469
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3471
  %6 = lshr i8 %2, 5, !dbg !3472
  %7 = zext nneg i8 %6 to i64, !dbg !3472
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3473
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2456, metadata !DIExpression()), !dbg !3469
  %9 = and i8 %2, 31, !dbg !3474
  %10 = zext nneg i8 %9 to i32, !dbg !3474
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2458, metadata !DIExpression()), !dbg !3469
  %11 = load i32, ptr %8, align 4, !dbg !3475, !tbaa !992
  %12 = lshr i32 %11, %10, !dbg !3476
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2459, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3469
  %13 = and i32 %12, 1, !dbg !3477
  %14 = xor i32 %13, 1, !dbg !3477
  %15 = shl nuw i32 %14, %10, !dbg !3478
  %16 = xor i32 %15, %11, !dbg !3479
  store i32 %16, ptr %8, align 4, !dbg !3479, !tbaa !992
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3480
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3481
  ret ptr %17, !dbg !3482
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3483 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3489
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3490
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3488, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3462, metadata !DIExpression(), metadata !3489, metadata ptr %3, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %0, metadata !3459, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 -1, metadata !3460, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i8 %1, metadata !3461, metadata !DIExpression()), !dbg !3491
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3494, !tbaa.struct !3467, !DIAssignID !3495
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3462, metadata !DIExpression(), metadata !3495, metadata ptr %3, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %3, metadata !2452, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8 %1, metadata !2453, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8 %1, metadata !2455, metadata !DIExpression()), !dbg !3496
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3498
  %5 = lshr i8 %1, 5, !dbg !3499
  %6 = zext nneg i8 %5 to i64, !dbg !3499
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3500
  call void @llvm.dbg.value(metadata ptr %7, metadata !2456, metadata !DIExpression()), !dbg !3496
  %8 = and i8 %1, 31, !dbg !3501
  %9 = zext nneg i8 %8 to i32, !dbg !3501
  call void @llvm.dbg.value(metadata i32 %9, metadata !2458, metadata !DIExpression()), !dbg !3496
  %10 = load i32, ptr %7, align 4, !dbg !3502, !tbaa !992
  %11 = lshr i32 %10, %9, !dbg !3503
  call void @llvm.dbg.value(metadata i32 %11, metadata !2459, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3496
  %12 = and i32 %11, 1, !dbg !3504
  %13 = xor i32 %12, 1, !dbg !3504
  %14 = shl nuw i32 %13, %9, !dbg !3505
  %15 = xor i32 %14, %10, !dbg !3506
  store i32 %15, ptr %7, align 4, !dbg !3506, !tbaa !992
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3507
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3508
  ret ptr %16, !dbg !3509
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3510 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3513
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8 58, metadata !3488, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3462, metadata !DIExpression(), metadata !3513, metadata ptr %2, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata ptr %0, metadata !3459, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 -1, metadata !3460, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i8 58, metadata !3461, metadata !DIExpression()), !dbg !3517
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3520, !tbaa.struct !3467, !DIAssignID !3521
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3462, metadata !DIExpression(), metadata !3521, metadata ptr %2, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata ptr %2, metadata !2452, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8 58, metadata !2453, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8 58, metadata !2455, metadata !DIExpression()), !dbg !3522
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3524
  call void @llvm.dbg.value(metadata ptr %3, metadata !2456, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 26, metadata !2458, metadata !DIExpression()), !dbg !3522
  %4 = load i32, ptr %3, align 4, !dbg !3525, !tbaa !992
  call void @llvm.dbg.value(metadata i32 %4, metadata !2459, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3522
  %5 = or i32 %4, 67108864, !dbg !3526
  store i32 %5, ptr %3, align 4, !dbg !3526, !tbaa !992
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3527
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3528
  ret ptr %6, !dbg !3529
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3530 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3534
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3532, metadata !DIExpression()), !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3533, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3462, metadata !DIExpression(), metadata !3534, metadata ptr %3, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %0, metadata !3459, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %1, metadata !3460, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i8 58, metadata !3461, metadata !DIExpression()), !dbg !3536
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3539, !tbaa.struct !3467, !DIAssignID !3540
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3462, metadata !DIExpression(), metadata !3540, metadata ptr %3, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %3, metadata !2452, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8 58, metadata !2453, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8 58, metadata !2455, metadata !DIExpression()), !dbg !3541
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3543
  call void @llvm.dbg.value(metadata ptr %4, metadata !2456, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i32 26, metadata !2458, metadata !DIExpression()), !dbg !3541
  %5 = load i32, ptr %4, align 4, !dbg !3544, !tbaa !992
  call void @llvm.dbg.value(metadata i32 %5, metadata !2459, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3541
  %6 = or i32 %5, 67108864, !dbg !3545
  store i32 %6, ptr %4, align 4, !dbg !3545, !tbaa !992
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3546
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3547
  ret ptr %7, !dbg !3548
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3549 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3555
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3554, metadata !DIExpression(), metadata !3555, metadata ptr %4, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3358, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3557
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3551, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3552, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3553, metadata !DIExpression()), !dbg !3556
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3559
  call void @llvm.dbg.value(metadata i32 %1, metadata !3353, metadata !DIExpression()), !dbg !3560
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3560
  %5 = icmp eq i32 %1, 10, !dbg !3561
  br i1 %5, label %6, label %7, !dbg !3562

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3563, !noalias !3564
  unreachable, !dbg !3563

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3358, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3560
  store i32 %1, ptr %4, align 8, !dbg !3567, !tbaa.struct !3467, !DIAssignID !3568
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3567
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3554, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3568, metadata ptr %4, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3554, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3569, metadata ptr %8, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2452, metadata !DIExpression()), !dbg !3570
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2453, metadata !DIExpression()), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2454, metadata !DIExpression()), !dbg !3570
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2455, metadata !DIExpression()), !dbg !3570
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3572
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2456, metadata !DIExpression()), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2458, metadata !DIExpression()), !dbg !3570
  %10 = load i32, ptr %9, align 4, !dbg !3573, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2459, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3570
  %11 = or i32 %10, 67108864, !dbg !3574
  store i32 %11, ptr %9, align 4, !dbg !3574, !tbaa !992, !DIAssignID !3575
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3554, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3575, metadata ptr %9, metadata !DIExpression()), !dbg !3556
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3576
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3577
  ret ptr %12, !dbg !3578
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3579 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3587
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3583, metadata !DIExpression()), !dbg !3588
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3584, metadata !DIExpression()), !dbg !3588
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3585, metadata !DIExpression()), !dbg !3588
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3586, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(), metadata !3587, metadata ptr %5, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 %0, metadata !3594, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %1, metadata !3595, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %2, metadata !3596, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %3, metadata !3597, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 -1, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3602, !tbaa.struct !3467, !DIAssignID !3603
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(), metadata !3603, metadata ptr %5, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3604, metadata ptr undef, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %5, metadata !2492, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata ptr %1, metadata !2493, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata ptr %2, metadata !2494, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata ptr %5, metadata !2492, metadata !DIExpression()), !dbg !3605
  store i32 10, ptr %5, align 8, !dbg !3607, !tbaa !2435, !DIAssignID !3608
  call void @llvm.dbg.assign(metadata i32 10, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3608, metadata ptr %5, metadata !DIExpression()), !dbg !3599
  %6 = icmp ne ptr %1, null, !dbg !3609
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3610
  br i1 %8, label %10, label %9, !dbg !3610

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3611
  unreachable, !dbg !3611

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3612
  store ptr %1, ptr %11, align 8, !dbg !3613, !tbaa !2506, !DIAssignID !3614
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3614, metadata ptr %11, metadata !DIExpression()), !dbg !3599
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3615
  store ptr %2, ptr %12, align 8, !dbg !3616, !tbaa !2509, !DIAssignID !3617
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3617, metadata ptr %12, metadata !DIExpression()), !dbg !3599
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3618
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3619
  ret ptr %13, !dbg !3620
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3590 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3621
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(), metadata !3621, metadata ptr %6, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3594, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3595, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3596, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3597, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3598, metadata !DIExpression()), !dbg !3622
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3624, !tbaa.struct !3467, !DIAssignID !3625
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(), metadata !3625, metadata ptr %6, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3626, metadata ptr undef, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %6, metadata !2492, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %1, metadata !2493, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %2, metadata !2494, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %6, metadata !2492, metadata !DIExpression()), !dbg !3627
  store i32 10, ptr %6, align 8, !dbg !3629, !tbaa !2435, !DIAssignID !3630
  call void @llvm.dbg.assign(metadata i32 10, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3630, metadata ptr %6, metadata !DIExpression()), !dbg !3622
  %7 = icmp ne ptr %1, null, !dbg !3631
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3632
  br i1 %9, label %11, label %10, !dbg !3632

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3633
  unreachable, !dbg !3633

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3634
  store ptr %1, ptr %12, align 8, !dbg !3635, !tbaa !2506, !DIAssignID !3636
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3636, metadata ptr %12, metadata !DIExpression()), !dbg !3622
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3637
  store ptr %2, ptr %13, align 8, !dbg !3638, !tbaa !2509, !DIAssignID !3639
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3639, metadata ptr %13, metadata !DIExpression()), !dbg !3622
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3640
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3641
  ret ptr %14, !dbg !3642
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3643 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3650
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3647, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3648, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3649, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr %0, metadata !3584, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr %1, metadata !3585, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr %2, metadata !3586, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(), metadata !3650, metadata ptr %4, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i32 0, metadata !3594, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !3595, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %1, metadata !3596, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %2, metadata !3597, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 -1, metadata !3598, metadata !DIExpression()), !dbg !3654
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3657, !tbaa.struct !3467, !DIAssignID !3658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(), metadata !3658, metadata ptr %4, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3659, metadata ptr undef, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %4, metadata !2492, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %0, metadata !2493, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %1, metadata !2494, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %4, metadata !2492, metadata !DIExpression()), !dbg !3660
  store i32 10, ptr %4, align 8, !dbg !3662, !tbaa !2435, !DIAssignID !3663
  call void @llvm.dbg.assign(metadata i32 10, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3663, metadata ptr %4, metadata !DIExpression()), !dbg !3654
  %5 = icmp ne ptr %0, null, !dbg !3664
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3665
  br i1 %7, label %9, label %8, !dbg !3665

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3666
  unreachable, !dbg !3666

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3667
  store ptr %0, ptr %10, align 8, !dbg !3668, !tbaa !2506, !DIAssignID !3669
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3669, metadata ptr %10, metadata !DIExpression()), !dbg !3654
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3670
  store ptr %1, ptr %11, align 8, !dbg !3671, !tbaa !2509, !DIAssignID !3672
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3672, metadata ptr %11, metadata !DIExpression()), !dbg !3654
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3673
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3674
  ret ptr %12, !dbg !3675
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3676 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3684
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3680, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3681, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3682, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3683, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(), metadata !3684, metadata ptr %5, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3594, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata ptr %0, metadata !3595, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata ptr %1, metadata !3596, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata ptr %2, metadata !3597, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 %3, metadata !3598, metadata !DIExpression()), !dbg !3686
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3689, !tbaa.struct !3467, !DIAssignID !3690
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(), metadata !3690, metadata ptr %5, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3691, metadata ptr undef, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata ptr %5, metadata !2492, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %0, metadata !2493, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %1, metadata !2494, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %5, metadata !2492, metadata !DIExpression()), !dbg !3692
  store i32 10, ptr %5, align 8, !dbg !3694, !tbaa !2435, !DIAssignID !3695
  call void @llvm.dbg.assign(metadata i32 10, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3695, metadata ptr %5, metadata !DIExpression()), !dbg !3686
  %6 = icmp ne ptr %0, null, !dbg !3696
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3697
  br i1 %8, label %10, label %9, !dbg !3697

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3698
  unreachable, !dbg !3698

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3699
  store ptr %0, ptr %11, align 8, !dbg !3700, !tbaa !2506, !DIAssignID !3701
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3701, metadata ptr %11, metadata !DIExpression()), !dbg !3686
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3702
  store ptr %1, ptr %12, align 8, !dbg !3703, !tbaa !2509, !DIAssignID !3704
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3589, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3704, metadata ptr %12, metadata !DIExpression()), !dbg !3686
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3705
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3706
  ret ptr %13, !dbg !3707
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3708 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3712, metadata !DIExpression()), !dbg !3715
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3713, metadata !DIExpression()), !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3714, metadata !DIExpression()), !dbg !3715
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3716
  ret ptr %4, !dbg !3717
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3718 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i32 0, metadata !3712, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata ptr %0, metadata !3713, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %1, metadata !3714, metadata !DIExpression()), !dbg !3725
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3727
  ret ptr %3, !dbg !3728
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3729 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3733, metadata !DIExpression()), !dbg !3735
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3734, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i32 %0, metadata !3712, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %1, metadata !3713, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 -1, metadata !3714, metadata !DIExpression()), !dbg !3736
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3738
  ret ptr %3, !dbg !3739
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3740 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3744, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i32 0, metadata !3733, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata ptr %0, metadata !3734, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i32 0, metadata !3712, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata ptr %0, metadata !3713, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 -1, metadata !3714, metadata !DIExpression()), !dbg !3748
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3750
  ret ptr %2, !dbg !3751
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3752 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3791, metadata !DIExpression()), !dbg !3797
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3792, metadata !DIExpression()), !dbg !3797
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3793, metadata !DIExpression()), !dbg !3797
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3794, metadata !DIExpression()), !dbg !3797
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3795, metadata !DIExpression()), !dbg !3797
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3796, metadata !DIExpression()), !dbg !3797
  %7 = icmp eq ptr %1, null, !dbg !3798
  br i1 %7, label %10, label %8, !dbg !3800

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.85, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3801
  br label %12, !dbg !3801

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.86, ptr noundef %2, ptr noundef %3) #39, !dbg !3802
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.3.88, i32 noundef 5) #39, !dbg !3803
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3803
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %0), !dbg !3804
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.5.90, i32 noundef 5) #39, !dbg !3805
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.91) #39, !dbg !3805
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %0), !dbg !3806
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
  ], !dbg !3807

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.7.92, i32 noundef 5) #39, !dbg !3808
  %21 = load ptr, ptr %4, align 8, !dbg !3808, !tbaa !921
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3808
  br label %147, !dbg !3810

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.8.93, i32 noundef 5) #39, !dbg !3811
  %25 = load ptr, ptr %4, align 8, !dbg !3811, !tbaa !921
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3811
  %27 = load ptr, ptr %26, align 8, !dbg !3811, !tbaa !921
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3811
  br label %147, !dbg !3812

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.9.94, i32 noundef 5) #39, !dbg !3813
  %31 = load ptr, ptr %4, align 8, !dbg !3813, !tbaa !921
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3813
  %33 = load ptr, ptr %32, align 8, !dbg !3813, !tbaa !921
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3813
  %35 = load ptr, ptr %34, align 8, !dbg !3813, !tbaa !921
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3813
  br label %147, !dbg !3814

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.10.95, i32 noundef 5) #39, !dbg !3815
  %39 = load ptr, ptr %4, align 8, !dbg !3815, !tbaa !921
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3815
  %41 = load ptr, ptr %40, align 8, !dbg !3815, !tbaa !921
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3815
  %43 = load ptr, ptr %42, align 8, !dbg !3815, !tbaa !921
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3815
  %45 = load ptr, ptr %44, align 8, !dbg !3815, !tbaa !921
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3815
  br label %147, !dbg !3816

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.11.96, i32 noundef 5) #39, !dbg !3817
  %49 = load ptr, ptr %4, align 8, !dbg !3817, !tbaa !921
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3817
  %51 = load ptr, ptr %50, align 8, !dbg !3817, !tbaa !921
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3817
  %53 = load ptr, ptr %52, align 8, !dbg !3817, !tbaa !921
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3817
  %55 = load ptr, ptr %54, align 8, !dbg !3817, !tbaa !921
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3817
  %57 = load ptr, ptr %56, align 8, !dbg !3817, !tbaa !921
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3817
  br label %147, !dbg !3818

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.12.97, i32 noundef 5) #39, !dbg !3819
  %61 = load ptr, ptr %4, align 8, !dbg !3819, !tbaa !921
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3819
  %63 = load ptr, ptr %62, align 8, !dbg !3819, !tbaa !921
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3819
  %65 = load ptr, ptr %64, align 8, !dbg !3819, !tbaa !921
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3819
  %67 = load ptr, ptr %66, align 8, !dbg !3819, !tbaa !921
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3819
  %69 = load ptr, ptr %68, align 8, !dbg !3819, !tbaa !921
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3819
  %71 = load ptr, ptr %70, align 8, !dbg !3819, !tbaa !921
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3819
  br label %147, !dbg !3820

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.13.98, i32 noundef 5) #39, !dbg !3821
  %75 = load ptr, ptr %4, align 8, !dbg !3821, !tbaa !921
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3821
  %77 = load ptr, ptr %76, align 8, !dbg !3821, !tbaa !921
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3821
  %79 = load ptr, ptr %78, align 8, !dbg !3821, !tbaa !921
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3821
  %81 = load ptr, ptr %80, align 8, !dbg !3821, !tbaa !921
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3821
  %83 = load ptr, ptr %82, align 8, !dbg !3821, !tbaa !921
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3821
  %85 = load ptr, ptr %84, align 8, !dbg !3821, !tbaa !921
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3821
  %87 = load ptr, ptr %86, align 8, !dbg !3821, !tbaa !921
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3821
  br label %147, !dbg !3822

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.14.99, i32 noundef 5) #39, !dbg !3823
  %91 = load ptr, ptr %4, align 8, !dbg !3823, !tbaa !921
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3823
  %93 = load ptr, ptr %92, align 8, !dbg !3823, !tbaa !921
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3823
  %95 = load ptr, ptr %94, align 8, !dbg !3823, !tbaa !921
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3823
  %97 = load ptr, ptr %96, align 8, !dbg !3823, !tbaa !921
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3823
  %99 = load ptr, ptr %98, align 8, !dbg !3823, !tbaa !921
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3823
  %101 = load ptr, ptr %100, align 8, !dbg !3823, !tbaa !921
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3823
  %103 = load ptr, ptr %102, align 8, !dbg !3823, !tbaa !921
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3823
  %105 = load ptr, ptr %104, align 8, !dbg !3823, !tbaa !921
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3823
  br label %147, !dbg !3824

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.15.100, i32 noundef 5) #39, !dbg !3825
  %109 = load ptr, ptr %4, align 8, !dbg !3825, !tbaa !921
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3825
  %111 = load ptr, ptr %110, align 8, !dbg !3825, !tbaa !921
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3825
  %113 = load ptr, ptr %112, align 8, !dbg !3825, !tbaa !921
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3825
  %115 = load ptr, ptr %114, align 8, !dbg !3825, !tbaa !921
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3825
  %117 = load ptr, ptr %116, align 8, !dbg !3825, !tbaa !921
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3825
  %119 = load ptr, ptr %118, align 8, !dbg !3825, !tbaa !921
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3825
  %121 = load ptr, ptr %120, align 8, !dbg !3825, !tbaa !921
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3825
  %123 = load ptr, ptr %122, align 8, !dbg !3825, !tbaa !921
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3825
  %125 = load ptr, ptr %124, align 8, !dbg !3825, !tbaa !921
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3825
  br label %147, !dbg !3826

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.16.101, i32 noundef 5) #39, !dbg !3827
  %129 = load ptr, ptr %4, align 8, !dbg !3827, !tbaa !921
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3827
  %131 = load ptr, ptr %130, align 8, !dbg !3827, !tbaa !921
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3827
  %133 = load ptr, ptr %132, align 8, !dbg !3827, !tbaa !921
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3827
  %135 = load ptr, ptr %134, align 8, !dbg !3827, !tbaa !921
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3827
  %137 = load ptr, ptr %136, align 8, !dbg !3827, !tbaa !921
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3827
  %139 = load ptr, ptr %138, align 8, !dbg !3827, !tbaa !921
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3827
  %141 = load ptr, ptr %140, align 8, !dbg !3827, !tbaa !921
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3827
  %143 = load ptr, ptr %142, align 8, !dbg !3827, !tbaa !921
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3827
  %145 = load ptr, ptr %144, align 8, !dbg !3827, !tbaa !921
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3827
  br label %147, !dbg !3828

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3829
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3830 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3834, metadata !DIExpression()), !dbg !3840
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3835, metadata !DIExpression()), !dbg !3840
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3836, metadata !DIExpression()), !dbg !3840
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3837, metadata !DIExpression()), !dbg !3840
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3838, metadata !DIExpression()), !dbg !3840
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3839, metadata !DIExpression()), !dbg !3840
  br label %6, !dbg !3841

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3843
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3839, metadata !DIExpression()), !dbg !3840
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3844
  %9 = load ptr, ptr %8, align 8, !dbg !3844, !tbaa !921
  %10 = icmp eq ptr %9, null, !dbg !3846
  %11 = add i64 %7, 1, !dbg !3847
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3839, metadata !DIExpression()), !dbg !3840
  br i1 %10, label %12, label %6, !dbg !3846, !llvm.loop !3848

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3850
  ret void, !dbg !3851
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3852 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3871
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3869, metadata !DIExpression(), metadata !3871, metadata ptr %6, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3863, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3864, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3865, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3866, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3867, metadata !DIExpression()), !dbg !3872
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3873
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3868, metadata !DIExpression()), !dbg !3872
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3868, metadata !DIExpression()), !dbg !3872
  %10 = icmp ult i32 %9, 41, !dbg !3874
  br i1 %10, label %11, label %16, !dbg !3874

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3874
  %13 = zext nneg i32 %9 to i64, !dbg !3874
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3874
  %15 = add nuw nsw i32 %9, 8, !dbg !3874
  store i32 %15, ptr %4, align 8, !dbg !3874
  br label %19, !dbg !3874

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3874
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3874
  store ptr %18, ptr %7, align 8, !dbg !3874
  br label %19, !dbg !3874

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3874
  %22 = load ptr, ptr %21, align 8, !dbg !3874
  store ptr %22, ptr %6, align 16, !dbg !3877, !tbaa !921
  %23 = icmp eq ptr %22, null, !dbg !3878
  br i1 %23, label %128, label %24, !dbg !3879

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3868, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3868, metadata !DIExpression()), !dbg !3872
  %25 = icmp ult i32 %20, 41, !dbg !3874
  br i1 %25, label %29, label %26, !dbg !3874

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3874
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3874
  store ptr %28, ptr %7, align 8, !dbg !3874
  br label %34, !dbg !3874

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3874
  %31 = zext nneg i32 %20 to i64, !dbg !3874
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3874
  %33 = add nuw nsw i32 %20, 8, !dbg !3874
  store i32 %33, ptr %4, align 8, !dbg !3874
  br label %34, !dbg !3874

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3874
  %37 = load ptr, ptr %36, align 8, !dbg !3874
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3880
  store ptr %37, ptr %38, align 8, !dbg !3877, !tbaa !921
  %39 = icmp eq ptr %37, null, !dbg !3878
  br i1 %39, label %128, label %40, !dbg !3879

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3868, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3868, metadata !DIExpression()), !dbg !3872
  %41 = icmp ult i32 %35, 41, !dbg !3874
  br i1 %41, label %45, label %42, !dbg !3874

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3874
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3874
  store ptr %44, ptr %7, align 8, !dbg !3874
  br label %50, !dbg !3874

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3874
  %47 = zext nneg i32 %35 to i64, !dbg !3874
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3874
  %49 = add nuw nsw i32 %35, 8, !dbg !3874
  store i32 %49, ptr %4, align 8, !dbg !3874
  br label %50, !dbg !3874

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3874
  %53 = load ptr, ptr %52, align 8, !dbg !3874
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3880
  store ptr %53, ptr %54, align 16, !dbg !3877, !tbaa !921
  %55 = icmp eq ptr %53, null, !dbg !3878
  br i1 %55, label %128, label %56, !dbg !3879

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3868, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3868, metadata !DIExpression()), !dbg !3872
  %57 = icmp ult i32 %51, 41, !dbg !3874
  br i1 %57, label %61, label %58, !dbg !3874

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3874
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3874
  store ptr %60, ptr %7, align 8, !dbg !3874
  br label %66, !dbg !3874

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3874
  %63 = zext nneg i32 %51 to i64, !dbg !3874
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3874
  %65 = add nuw nsw i32 %51, 8, !dbg !3874
  store i32 %65, ptr %4, align 8, !dbg !3874
  br label %66, !dbg !3874

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3874
  %69 = load ptr, ptr %68, align 8, !dbg !3874
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3880
  store ptr %69, ptr %70, align 8, !dbg !3877, !tbaa !921
  %71 = icmp eq ptr %69, null, !dbg !3878
  br i1 %71, label %128, label %72, !dbg !3879

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3868, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3868, metadata !DIExpression()), !dbg !3872
  %73 = icmp ult i32 %67, 41, !dbg !3874
  br i1 %73, label %77, label %74, !dbg !3874

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3874
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3874
  store ptr %76, ptr %7, align 8, !dbg !3874
  br label %82, !dbg !3874

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3874
  %79 = zext nneg i32 %67 to i64, !dbg !3874
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3874
  %81 = add nuw nsw i32 %67, 8, !dbg !3874
  store i32 %81, ptr %4, align 8, !dbg !3874
  br label %82, !dbg !3874

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3874
  %85 = load ptr, ptr %84, align 8, !dbg !3874
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3880
  store ptr %85, ptr %86, align 16, !dbg !3877, !tbaa !921
  %87 = icmp eq ptr %85, null, !dbg !3878
  br i1 %87, label %128, label %88, !dbg !3879

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3868, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3868, metadata !DIExpression()), !dbg !3872
  %89 = icmp ult i32 %83, 41, !dbg !3874
  br i1 %89, label %93, label %90, !dbg !3874

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3874
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3874
  store ptr %92, ptr %7, align 8, !dbg !3874
  br label %98, !dbg !3874

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3874
  %95 = zext nneg i32 %83 to i64, !dbg !3874
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3874
  %97 = add nuw nsw i32 %83, 8, !dbg !3874
  store i32 %97, ptr %4, align 8, !dbg !3874
  br label %98, !dbg !3874

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3874
  %100 = load ptr, ptr %99, align 8, !dbg !3874
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3880
  store ptr %100, ptr %101, align 8, !dbg !3877, !tbaa !921
  %102 = icmp eq ptr %100, null, !dbg !3878
  br i1 %102, label %128, label %103, !dbg !3879

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3868, metadata !DIExpression()), !dbg !3872
  %104 = load ptr, ptr %7, align 8, !dbg !3874
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3874
  store ptr %105, ptr %7, align 8, !dbg !3874
  %106 = load ptr, ptr %104, align 8, !dbg !3874
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3880
  store ptr %106, ptr %107, align 16, !dbg !3877, !tbaa !921
  %108 = icmp eq ptr %106, null, !dbg !3878
  br i1 %108, label %128, label %109, !dbg !3879

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3868, metadata !DIExpression()), !dbg !3872
  %110 = load ptr, ptr %7, align 8, !dbg !3874
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3874
  store ptr %111, ptr %7, align 8, !dbg !3874
  %112 = load ptr, ptr %110, align 8, !dbg !3874
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3880
  store ptr %112, ptr %113, align 8, !dbg !3877, !tbaa !921
  %114 = icmp eq ptr %112, null, !dbg !3878
  br i1 %114, label %128, label %115, !dbg !3879

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3868, metadata !DIExpression()), !dbg !3872
  %116 = load ptr, ptr %7, align 8, !dbg !3874
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3874
  store ptr %117, ptr %7, align 8, !dbg !3874
  %118 = load ptr, ptr %116, align 8, !dbg !3874
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3880
  store ptr %118, ptr %119, align 16, !dbg !3877, !tbaa !921
  %120 = icmp eq ptr %118, null, !dbg !3878
  br i1 %120, label %128, label %121, !dbg !3879

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3868, metadata !DIExpression()), !dbg !3872
  %122 = load ptr, ptr %7, align 8, !dbg !3874
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3874
  store ptr %123, ptr %7, align 8, !dbg !3874
  %124 = load ptr, ptr %122, align 8, !dbg !3874
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3880
  store ptr %124, ptr %125, align 8, !dbg !3877, !tbaa !921
  %126 = icmp eq ptr %124, null, !dbg !3878
  %127 = select i1 %126, i64 9, i64 10, !dbg !3879
  br label %128, !dbg !3879

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3881
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3882
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3883
  ret void, !dbg !3883
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3884 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3897
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3892, metadata !DIExpression(), metadata !3897, metadata ptr %5, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3888, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3889, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3890, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3891, metadata !DIExpression()), !dbg !3898
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3899
  call void @llvm.va_start(ptr nonnull %5), !dbg !3900
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3901
  call void @llvm.va_end(ptr nonnull %5), !dbg !3902
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3903
  ret void, !dbg !3903
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3904 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3905, !tbaa !921
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %1), !dbg !3905
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.17.106, i32 noundef 5) #39, !dbg !3906
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.107) #39, !dbg !3906
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.19.108, i32 noundef 5) #39, !dbg !3907
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.109, ptr noundef nonnull @.str.21.110) #39, !dbg !3907
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.22.111, i32 noundef 5) #39, !dbg !3908
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.112) #39, !dbg !3908
  ret void, !dbg !3909
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3910 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3915, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3916, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3917, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr %0, metadata !3919, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %1, metadata !3922, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %2, metadata !3923, metadata !DIExpression()), !dbg !3924
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3926
  call void @llvm.dbg.value(metadata ptr %4, metadata !3927, metadata !DIExpression()), !dbg !3932
  %5 = icmp eq ptr %4, null, !dbg !3934
  br i1 %5, label %6, label %7, !dbg !3936

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3937
  unreachable, !dbg !3937

7:                                                ; preds = %3
  ret ptr %4, !dbg !3938
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3920 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3919, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3922, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3923, metadata !DIExpression()), !dbg !3939
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3940
  call void @llvm.dbg.value(metadata ptr %4, metadata !3927, metadata !DIExpression()), !dbg !3941
  %5 = icmp eq ptr %4, null, !dbg !3943
  br i1 %5, label %6, label %7, !dbg !3944

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3945
  unreachable, !dbg !3945

7:                                                ; preds = %3
  ret ptr %4, !dbg !3946
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3947 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3951, metadata !DIExpression()), !dbg !3952
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3953
  call void @llvm.dbg.value(metadata ptr %2, metadata !3927, metadata !DIExpression()), !dbg !3954
  %3 = icmp eq ptr %2, null, !dbg !3956
  br i1 %3, label %4, label %5, !dbg !3957

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3958
  unreachable, !dbg !3958

5:                                                ; preds = %1
  ret ptr %2, !dbg !3959
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3960 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3961 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3965, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i64 %0, metadata !3967, metadata !DIExpression()), !dbg !3971
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3973
  call void @llvm.dbg.value(metadata ptr %2, metadata !3927, metadata !DIExpression()), !dbg !3974
  %3 = icmp eq ptr %2, null, !dbg !3976
  br i1 %3, label %4, label %5, !dbg !3977

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3978
  unreachable, !dbg !3978

5:                                                ; preds = %1
  ret ptr %2, !dbg !3979
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3980 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3984, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %0, metadata !3951, metadata !DIExpression()), !dbg !3986
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3988
  call void @llvm.dbg.value(metadata ptr %2, metadata !3927, metadata !DIExpression()), !dbg !3989
  %3 = icmp eq ptr %2, null, !dbg !3991
  br i1 %3, label %4, label %5, !dbg !3992

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3993
  unreachable, !dbg !3993

5:                                                ; preds = %1
  ret ptr %2, !dbg !3994
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3995 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3999, metadata !DIExpression()), !dbg !4001
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %0, metadata !4002, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 %1, metadata !4006, metadata !DIExpression()), !dbg !4007
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4009
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4010
  call void @llvm.dbg.value(metadata ptr %4, metadata !3927, metadata !DIExpression()), !dbg !4011
  %5 = icmp eq ptr %4, null, !dbg !4013
  br i1 %5, label %6, label %7, !dbg !4014

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4015
  unreachable, !dbg !4015

7:                                                ; preds = %2
  ret ptr %4, !dbg !4016
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4017 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4018 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4022, metadata !DIExpression()), !dbg !4024
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4023, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %0, metadata !4025, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 %1, metadata !4028, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata ptr %0, metadata !4002, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 %1, metadata !4006, metadata !DIExpression()), !dbg !4031
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4033
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4034
  call void @llvm.dbg.value(metadata ptr %4, metadata !3927, metadata !DIExpression()), !dbg !4035
  %5 = icmp eq ptr %4, null, !dbg !4037
  br i1 %5, label %6, label %7, !dbg !4038

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4039
  unreachable, !dbg !4039

7:                                                ; preds = %2
  ret ptr %4, !dbg !4040
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4041 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4045, metadata !DIExpression()), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4047, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %0, metadata !4049, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %1, metadata !4052, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %2, metadata !4053, metadata !DIExpression()), !dbg !4054
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4056
  call void @llvm.dbg.value(metadata ptr %4, metadata !3927, metadata !DIExpression()), !dbg !4057
  %5 = icmp eq ptr %4, null, !dbg !4059
  br i1 %5, label %6, label %7, !dbg !4060

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4061
  unreachable, !dbg !4061

7:                                                ; preds = %3
  ret ptr %4, !dbg !4062
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4063 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4067, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4068, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata ptr null, metadata !3919, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i64 %0, metadata !3922, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i64 %1, metadata !3923, metadata !DIExpression()), !dbg !4070
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4072
  call void @llvm.dbg.value(metadata ptr %3, metadata !3927, metadata !DIExpression()), !dbg !4073
  %4 = icmp eq ptr %3, null, !dbg !4075
  br i1 %4, label %5, label %6, !dbg !4076

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4077
  unreachable, !dbg !4077

6:                                                ; preds = %2
  ret ptr %3, !dbg !4078
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4079 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4083, metadata !DIExpression()), !dbg !4085
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4084, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata ptr null, metadata !4045, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i64 %0, metadata !4046, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i64 %1, metadata !4047, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata ptr null, metadata !4049, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %0, metadata !4052, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %1, metadata !4053, metadata !DIExpression()), !dbg !4088
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4090
  call void @llvm.dbg.value(metadata ptr %3, metadata !3927, metadata !DIExpression()), !dbg !4091
  %4 = icmp eq ptr %3, null, !dbg !4093
  br i1 %4, label %5, label %6, !dbg !4094

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4095
  unreachable, !dbg !4095

6:                                                ; preds = %2
  ret ptr %3, !dbg !4096
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4097 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4101, metadata !DIExpression()), !dbg !4103
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4102, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %0, metadata !839, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %1, metadata !840, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 1, metadata !841, metadata !DIExpression()), !dbg !4104
  %3 = load i64, ptr %1, align 8, !dbg !4106, !tbaa !3170
  call void @llvm.dbg.value(metadata i64 %3, metadata !842, metadata !DIExpression()), !dbg !4104
  %4 = icmp eq ptr %0, null, !dbg !4107
  br i1 %4, label %5, label %8, !dbg !4109

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4110
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4113
  br label %15, !dbg !4113

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4114
  %10 = add nuw i64 %9, 1, !dbg !4114
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4114
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4114
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4114
  call void @llvm.dbg.value(metadata i64 %13, metadata !842, metadata !DIExpression()), !dbg !4104
  br i1 %12, label %14, label %15, !dbg !4117

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4118
  unreachable, !dbg !4118

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4104
  call void @llvm.dbg.value(metadata i64 %16, metadata !842, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %0, metadata !3919, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 %16, metadata !3922, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 1, metadata !3923, metadata !DIExpression()), !dbg !4119
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4121
  call void @llvm.dbg.value(metadata ptr %17, metadata !3927, metadata !DIExpression()), !dbg !4122
  %18 = icmp eq ptr %17, null, !dbg !4124
  br i1 %18, label %19, label %20, !dbg !4125

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4126
  unreachable, !dbg !4126

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !839, metadata !DIExpression()), !dbg !4104
  store i64 %16, ptr %1, align 8, !dbg !4127, !tbaa !3170
  ret ptr %17, !dbg !4128
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !834 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !839, metadata !DIExpression()), !dbg !4129
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !840, metadata !DIExpression()), !dbg !4129
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !841, metadata !DIExpression()), !dbg !4129
  %4 = load i64, ptr %1, align 8, !dbg !4130, !tbaa !3170
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !842, metadata !DIExpression()), !dbg !4129
  %5 = icmp eq ptr %0, null, !dbg !4131
  br i1 %5, label %6, label %13, !dbg !4132

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4133
  br i1 %7, label %8, label %20, !dbg !4134

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4135
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !842, metadata !DIExpression()), !dbg !4129
  %10 = icmp ugt i64 %2, 128, !dbg !4137
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !842, metadata !DIExpression()), !dbg !4129
  br label %20, !dbg !4139

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4140
  %15 = add nuw i64 %14, 1, !dbg !4140
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4140
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4140
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !842, metadata !DIExpression()), !dbg !4129
  br i1 %17, label %19, label %20, !dbg !4141

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4142
  unreachable, !dbg !4142

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4129
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !842, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata ptr %0, metadata !3919, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %21, metadata !3922, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %2, metadata !3923, metadata !DIExpression()), !dbg !4143
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4145
  call void @llvm.dbg.value(metadata ptr %22, metadata !3927, metadata !DIExpression()), !dbg !4146
  %23 = icmp eq ptr %22, null, !dbg !4148
  br i1 %23, label %24, label %25, !dbg !4149

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4150
  unreachable, !dbg !4150

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !839, metadata !DIExpression()), !dbg !4129
  store i64 %21, ptr %1, align 8, !dbg !4151, !tbaa !3170
  ret ptr %22, !dbg !4152
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !846 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !853, metadata !DIExpression()), !dbg !4153
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !854, metadata !DIExpression()), !dbg !4153
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !855, metadata !DIExpression()), !dbg !4153
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !856, metadata !DIExpression()), !dbg !4153
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !857, metadata !DIExpression()), !dbg !4153
  %6 = load i64, ptr %1, align 8, !dbg !4154, !tbaa !3170
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !858, metadata !DIExpression()), !dbg !4153
  %7 = ashr i64 %6, 1, !dbg !4155
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4155
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4155
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4155
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !859, metadata !DIExpression()), !dbg !4153
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !859, metadata !DIExpression()), !dbg !4153
  %12 = icmp sgt i64 %3, -1, !dbg !4158
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4160
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4160
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !859, metadata !DIExpression()), !dbg !4153
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4161
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4161
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4161
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !860, metadata !DIExpression()), !dbg !4153
  %18 = icmp slt i64 %17, 128, !dbg !4161
  %19 = select i1 %18, i64 128, i64 0, !dbg !4161
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4161
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !861, metadata !DIExpression()), !dbg !4153
  %21 = icmp eq i64 %20, 0, !dbg !4162
  br i1 %21, label %26, label %22, !dbg !4164

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4165
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !859, metadata !DIExpression()), !dbg !4153
  %24 = srem i64 %20, %4, !dbg !4167
  %25 = sub nsw i64 %20, %24, !dbg !4168
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !860, metadata !DIExpression()), !dbg !4153
  br label %26, !dbg !4169

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4153
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4153
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !860, metadata !DIExpression()), !dbg !4153
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !859, metadata !DIExpression()), !dbg !4153
  %29 = icmp eq ptr %0, null, !dbg !4170
  br i1 %29, label %30, label %31, !dbg !4172

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4173, !tbaa !3170
  br label %31, !dbg !4174

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4175
  %33 = icmp slt i64 %32, %2, !dbg !4177
  br i1 %33, label %34, label %46, !dbg !4178

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4179
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4179
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !859, metadata !DIExpression()), !dbg !4153
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4180
  br i1 %40, label %45, label %41, !dbg !4180

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4181
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4181
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !860, metadata !DIExpression()), !dbg !4153
  br i1 %43, label %45, label %46, !dbg !4182

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #41, !dbg !4183
  unreachable, !dbg !4183

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4153
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4153
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !860, metadata !DIExpression()), !dbg !4153
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !859, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata ptr %0, metadata !3999, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %48, metadata !4000, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata ptr %0, metadata !4002, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %48, metadata !4006, metadata !DIExpression()), !dbg !4186
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4188
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !4189
  call void @llvm.dbg.value(metadata ptr %50, metadata !3927, metadata !DIExpression()), !dbg !4190
  %51 = icmp eq ptr %50, null, !dbg !4192
  br i1 %51, label %52, label %53, !dbg !4193

52:                                               ; preds = %46
  tail call void @xalloc_die() #41, !dbg !4194
  unreachable, !dbg !4194

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !853, metadata !DIExpression()), !dbg !4153
  store i64 %47, ptr %1, align 8, !dbg !4195, !tbaa !3170
  ret ptr %50, !dbg !4196
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4197 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4199, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 %0, metadata !4201, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 1, metadata !4204, metadata !DIExpression()), !dbg !4205
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4207
  call void @llvm.dbg.value(metadata ptr %2, metadata !3927, metadata !DIExpression()), !dbg !4208
  %3 = icmp eq ptr %2, null, !dbg !4210
  br i1 %3, label %4, label %5, !dbg !4211

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4212
  unreachable, !dbg !4212

5:                                                ; preds = %1
  ret ptr %2, !dbg !4213
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4214 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4202 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4201, metadata !DIExpression()), !dbg !4215
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4215
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4216
  call void @llvm.dbg.value(metadata ptr %3, metadata !3927, metadata !DIExpression()), !dbg !4217
  %4 = icmp eq ptr %3, null, !dbg !4219
  br i1 %4, label %5, label %6, !dbg !4220

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4221
  unreachable, !dbg !4221

6:                                                ; preds = %2
  ret ptr %3, !dbg !4222
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4223 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 1, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %0, metadata !4233, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 1, metadata !4236, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %0, metadata !4233, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 1, metadata !4236, metadata !DIExpression()), !dbg !4237
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4239
  call void @llvm.dbg.value(metadata ptr %2, metadata !3927, metadata !DIExpression()), !dbg !4240
  %3 = icmp eq ptr %2, null, !dbg !4242
  br i1 %3, label %4, label %5, !dbg !4243

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4244
  unreachable, !dbg !4244

5:                                                ; preds = %1
  ret ptr %2, !dbg !4245
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4228 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4230, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %0, metadata !4233, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %1, metadata !4236, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %0, metadata !4233, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %1, metadata !4236, metadata !DIExpression()), !dbg !4247
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4249
  call void @llvm.dbg.value(metadata ptr %3, metadata !3927, metadata !DIExpression()), !dbg !4250
  %4 = icmp eq ptr %3, null, !dbg !4252
  br i1 %4, label %5, label %6, !dbg !4253

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4254
  unreachable, !dbg !4254

6:                                                ; preds = %2
  ret ptr %3, !dbg !4255
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4256 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4262
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4261, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %1, metadata !3951, metadata !DIExpression()), !dbg !4263
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4265
  call void @llvm.dbg.value(metadata ptr %3, metadata !3927, metadata !DIExpression()), !dbg !4266
  %4 = icmp eq ptr %3, null, !dbg !4268
  br i1 %4, label %5, label %6, !dbg !4269

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4270
  unreachable, !dbg !4270

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4271, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i64 %1, metadata !4275, metadata !DIExpression()), !dbg !4276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4278
  ret ptr %3, !dbg !4279
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4280 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4284, metadata !DIExpression()), !dbg !4286
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4285, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i64 %1, metadata !3965, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %1, metadata !3967, metadata !DIExpression()), !dbg !4289
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4291
  call void @llvm.dbg.value(metadata ptr %3, metadata !3927, metadata !DIExpression()), !dbg !4292
  %4 = icmp eq ptr %3, null, !dbg !4294
  br i1 %4, label %5, label %6, !dbg !4295

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4296
  unreachable, !dbg !4296

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4271, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 %1, metadata !4275, metadata !DIExpression()), !dbg !4297
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4299
  ret ptr %3, !dbg !4300
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4301 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4305, metadata !DIExpression()), !dbg !4308
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4306, metadata !DIExpression()), !dbg !4308
  %3 = add nsw i64 %1, 1, !dbg !4309
  call void @llvm.dbg.value(metadata i64 %3, metadata !3965, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i64 %3, metadata !3967, metadata !DIExpression()), !dbg !4312
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4314
  call void @llvm.dbg.value(metadata ptr %4, metadata !3927, metadata !DIExpression()), !dbg !4315
  %5 = icmp eq ptr %4, null, !dbg !4317
  br i1 %5, label %6, label %7, !dbg !4318

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4319
  unreachable, !dbg !4319

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4307, metadata !DIExpression()), !dbg !4308
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4320
  store i8 0, ptr %8, align 1, !dbg !4321, !tbaa !1001
  call void @llvm.dbg.value(metadata ptr %4, metadata !4271, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i64 %1, metadata !4275, metadata !DIExpression()), !dbg !4322
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4324
  ret ptr %4, !dbg !4325
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4326 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4328, metadata !DIExpression()), !dbg !4329
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4330
  %3 = add i64 %2, 1, !dbg !4331
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %3, metadata !4261, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %3, metadata !3951, metadata !DIExpression()), !dbg !4334
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4336
  call void @llvm.dbg.value(metadata ptr %4, metadata !3927, metadata !DIExpression()), !dbg !4337
  %5 = icmp eq ptr %4, null, !dbg !4339
  br i1 %5, label %6, label %7, !dbg !4340

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4341
  unreachable, !dbg !4341

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4271, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %3, metadata !4275, metadata !DIExpression()), !dbg !4342
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4344
  ret ptr %4, !dbg !4345
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4346 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4351, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4348, metadata !DIExpression()), !dbg !4352
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.123, ptr noundef nonnull @.str.2.124, i32 noundef 5) #39, !dbg !4351
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef %2) #39, !dbg !4351
  %3 = icmp eq i32 %1, 0, !dbg !4351
  tail call void @llvm.assume(i1 %3), !dbg !4351
  tail call void @abort() #41, !dbg !4353
  unreachable, !dbg !4353
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4354 {
  %9 = alloca i64, align 8, !DIAssignID !4375
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4366, metadata !DIExpression(), metadata !4375, metadata ptr %9, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4358, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4359, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4360, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4361, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4362, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !4363, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !4364, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4365, metadata !DIExpression()), !dbg !4376
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #39, !dbg !4377
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #39, !dbg !4378
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4368, metadata !DIExpression()), !dbg !4376
  %11 = icmp eq i32 %10, 4, !dbg !4379
  br i1 %11, label %27, label %12, !dbg !4381

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4382, !tbaa !3170
  %14 = icmp ult i64 %13, %2, !dbg !4385
  br i1 %14, label %15, label %20, !dbg !4386

15:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4367, metadata !DIExpression()), !dbg !4376
  %16 = and i32 %7, 4, !dbg !4387
  %17 = icmp eq i32 %16, 0, !dbg !4389
  %18 = select i1 %17, i32 75, i32 34, !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !4370, metadata !DIExpression()), !dbg !4376
  %19 = call i32 @llvm.umax.i32(i32 %10, i32 1), !dbg !4390
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !4368, metadata !DIExpression()), !dbg !4376
  br label %27, !dbg !4391

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4392
  br i1 %21, label %22, label %33, !dbg !4394

22:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4367, metadata !DIExpression()), !dbg !4376
  %23 = and i32 %7, 8, !dbg !4395
  %24 = icmp eq i32 %23, 0, !dbg !4397
  %25 = select i1 %24, i32 75, i32 34, !dbg !4397
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !4370, metadata !DIExpression()), !dbg !4376
  %26 = call i32 @llvm.umax.i32(i32 %10, i32 1), !dbg !4398
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4368, metadata !DIExpression()), !dbg !4376
  br label %27, !dbg !4399

27:                                               ; preds = %15, %22, %8
  %28 = phi i32 [ undef, %8 ], [ %25, %22 ], [ %18, %15 ]
  %29 = phi i32 [ 4, %8 ], [ %26, %22 ], [ %19, %15 ]
  %30 = phi i64 [ undef, %8 ], [ %3, %22 ], [ %2, %15 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !4367, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !4368, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !4370, metadata !DIExpression()), !dbg !4376
  %31 = icmp eq i32 %29, 1, !dbg !4400
  %32 = select i1 %31, i32 %28, i32 0, !dbg !4401
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !4371, metadata !DIExpression()), !dbg !4376
  br label %37, !dbg !4402

33:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !4367, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4368, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i32 75, metadata !4370, metadata !DIExpression()), !dbg !4376
  %34 = icmp eq i32 %10, 1, !dbg !4400
  %35 = select i1 %34, i32 75, i32 0, !dbg !4401
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4371, metadata !DIExpression()), !dbg !4376
  %36 = icmp eq i32 %10, 0, !dbg !4403
  br i1 %36, label %47, label %37, !dbg !4402

37:                                               ; preds = %27, %33
  %38 = phi i32 [ %32, %27 ], [ %35, %33 ]
  %39 = phi i1 [ %31, %27 ], [ %34, %33 ]
  %40 = phi i64 [ %30, %27 ], [ %13, %33 ]
  %41 = and i32 %7, 2
  %42 = icmp ne i32 %41, 0
  %43 = and i1 %42, %39, !dbg !4404
  br i1 %43, label %47, label %44, !dbg !4404

44:                                               ; preds = %37
  %45 = call i32 @llvm.umax.i32(i32 %6, i32 1), !dbg !4405
  %46 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !4405
  call void (i32, i32, ptr, ...) @error(i32 noundef %45, i32 noundef %38, ptr noundef nonnull @.str.128, ptr noundef nonnull %5, ptr noundef %46) #39, !dbg !4405
  unreachable, !dbg !4405

47:                                               ; preds = %37, %33
  %48 = phi i32 [ %38, %37 ], [ %35, %33 ]
  %49 = phi i64 [ %40, %37 ], [ %13, %33 ]
  %50 = tail call ptr @__errno_location() #42, !dbg !4406
  store i32 %48, ptr %50, align 4, !dbg !4407, !tbaa !992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #39, !dbg !4408
  ret i64 %49, !dbg !4409
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4410 {
  %7 = alloca i64, align 8, !DIAssignID !4420
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4414, metadata !DIExpression()), !dbg !4421
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4415, metadata !DIExpression()), !dbg !4421
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4416, metadata !DIExpression()), !dbg !4421
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4417, metadata !DIExpression()), !dbg !4421
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4418, metadata !DIExpression()), !dbg !4421
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4419, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4366, metadata !DIExpression(), metadata !4420, metadata ptr %7, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata ptr %0, metadata !4358, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 10, metadata !4359, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %1, metadata !4360, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %2, metadata !4361, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata ptr %3, metadata !4362, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata ptr %4, metadata !4363, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 %5, metadata !4364, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 0, metadata !4365, metadata !DIExpression()), !dbg !4422
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !4424
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #39, !dbg !4425
  call void @llvm.dbg.value(metadata i32 %8, metadata !4368, metadata !DIExpression()), !dbg !4422
  %9 = freeze i32 %8, !dbg !4426
  %10 = icmp eq i32 %9, 4, !dbg !4427
  br i1 %10, label %23, label %11, !dbg !4428

11:                                               ; preds = %6
  %12 = load i64, ptr %7, align 8, !dbg !4429, !tbaa !3170
  %13 = icmp ult i64 %12, %1, !dbg !4430
  %14 = icmp ugt i64 %12, %2
  %15 = or i1 %13, %14, !dbg !4431
  br i1 %15, label %16, label %19, !dbg !4431

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 poison, metadata !4367, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 poison, metadata !4368, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 75, metadata !4370, metadata !DIExpression()), !dbg !4422
  %17 = icmp ult i32 %9, 2, !dbg !4432
  %18 = select i1 %17, i32 75, i32 0, !dbg !4433
  br label %23, !dbg !4433

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %12, metadata !4367, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 %8, metadata !4368, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i32 75, metadata !4370, metadata !DIExpression()), !dbg !4422
  %20 = icmp eq i32 %9, 1, !dbg !4432
  %21 = select i1 %20, i32 75, i32 0, !dbg !4433
  call void @llvm.dbg.value(metadata i32 %21, metadata !4371, metadata !DIExpression()), !dbg !4422
  %22 = icmp eq i32 %9, 0, !dbg !4434
  br i1 %22, label %27, label %23, !dbg !4435

23:                                               ; preds = %16, %6, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %6 ], [ %18, %16 ]
  %25 = call i32 @llvm.umax.i32(i32 %5, i32 1), !dbg !4436
  %26 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !4436
  call void (i32, i32, ptr, ...) @error(i32 noundef %25, i32 noundef %24, ptr noundef nonnull @.str.128, ptr noundef nonnull %4, ptr noundef %26) #39, !dbg !4436
  unreachable, !dbg !4436

27:                                               ; preds = %19
  %28 = tail call ptr @__errno_location() #42, !dbg !4437
  store i32 0, ptr %28, align 4, !dbg !4438, !tbaa !992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !4439
  ret i64 %12, !dbg !4440
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4441 {
  %6 = alloca ptr, align 8, !DIAssignID !4466
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4453, metadata !DIExpression(), metadata !4466, metadata ptr %6, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4448, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4449, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4450, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4451, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4452, metadata !DIExpression()), !dbg !4467
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !4468
  %7 = icmp eq ptr %1, null, !dbg !4469
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4454, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4455, metadata !DIExpression()), !dbg !4470
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4458, metadata !DIExpression()), !dbg !4470
  %8 = tail call ptr @__ctype_b_loc() #42, !dbg !4467
  %9 = load ptr, ptr %8, align 8, !tbaa !921
  br label %10, !dbg !4471

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4470
  %12 = load i8, ptr %11, align 1, !dbg !4470, !tbaa !1001
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !4458, metadata !DIExpression()), !dbg !4470
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !4455, metadata !DIExpression()), !dbg !4470
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4472
  %15 = load i16, ptr %14, align 2, !dbg !4472, !tbaa !1033
  %16 = and i16 %15, 8192, !dbg !4472
  %17 = icmp eq i16 %16, 0, !dbg !4471
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4473
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !4455, metadata !DIExpression()), !dbg !4470
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4458, metadata !DIExpression()), !dbg !4470
  br i1 %17, label %19, label %10, !dbg !4471, !llvm.loop !4474

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4469
  %21 = icmp eq i8 %12, 45, !dbg !4476
  br i1 %21, label %22, label %23, !dbg !4478

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4479, !tbaa !921
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #42, !dbg !4481
  store i32 0, ptr %24, align 4, !dbg !4482, !tbaa !992
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %2) #39, !dbg !4483
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4459, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4460, metadata !DIExpression()), !dbg !4467
  %26 = load ptr, ptr %20, align 8, !dbg !4484, !tbaa !921
  %27 = icmp eq ptr %26, %0, !dbg !4486
  br i1 %27, label %28, label %37, !dbg !4487

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4488
  br i1 %29, label %386, label %30, !dbg !4491

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4492, !tbaa !1001
  %32 = icmp eq i8 %31, 0, !dbg !4492
  br i1 %32, label %386, label %33, !dbg !4493

33:                                               ; preds = %30
  %34 = sext i8 %31 to i32, !dbg !4492
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #40, !dbg !4494
  %36 = icmp eq ptr %35, null, !dbg !4494
  br i1 %36, label %386, label %44, !dbg !4495

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4496, !tbaa !992
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4498

39:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4460, metadata !DIExpression()), !dbg !4467
  br label %40, !dbg !4499

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4459, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !4460, metadata !DIExpression()), !dbg !4467
  %42 = icmp eq ptr %4, null, !dbg !4501
  br i1 %42, label %43, label %44, !dbg !4503

43:                                               ; preds = %40
  store i64 %25, ptr %3, align 8, !dbg !4504, !tbaa !3170
  br label %386, !dbg !4506

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4507, !tbaa !1001
  %48 = icmp eq i8 %47, 0, !dbg !4508
  br i1 %48, label %383, label %49, !dbg !4509

49:                                               ; preds = %44
  %50 = sext i8 %47 to i32, !dbg !4507
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #40, !dbg !4510
  %52 = icmp eq ptr %51, null, !dbg !4510
  br i1 %52, label %53, label %55, !dbg !4512

53:                                               ; preds = %49
  store i64 %46, ptr %3, align 8, !dbg !4513, !tbaa !3170
  %54 = or disjoint i32 %45, 2, !dbg !4515
  br label %386, !dbg !4516

55:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4461, metadata !DIExpression()), !dbg !4517
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4464, metadata !DIExpression()), !dbg !4517
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
  ], !dbg !4518

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #40, !dbg !4519
  %58 = icmp eq ptr %57, null, !dbg !4519
  br i1 %58, label %68, label %59, !dbg !4522

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4523
  %61 = load i8, ptr %60, align 1, !dbg !4523, !tbaa !1001
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4524

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4525
  %64 = load i8, ptr %63, align 1, !dbg !4525, !tbaa !1001
  %65 = icmp eq i8 %64, 66, !dbg !4528
  %66 = select i1 %65, i64 3, i64 1, !dbg !4529
  br label %68, !dbg !4529

67:                                               ; preds = %59, %59
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4461, metadata !DIExpression()), !dbg !4517
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4464, metadata !DIExpression()), !dbg !4517
  br label %68, !dbg !4530

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ], !dbg !4517
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ], !dbg !4517
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !4464, metadata !DIExpression()), !dbg !4517
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !4461, metadata !DIExpression()), !dbg !4517
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
  ], !dbg !4531

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4550
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4552
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4550
  %74 = extractvalue { i64, i1 } %72, 0, !dbg !4554
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4554
  call void @llvm.dbg.value(metadata i1 %73, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i1 %73, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4550
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4552
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4550
  %78 = extractvalue { i64, i1 } %76, 0, !dbg !4554
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4554
  %80 = or i1 %73, %77, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %80, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i1 %80, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4550
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4552
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4550
  %83 = extractvalue { i64, i1 } %81, 0, !dbg !4554
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4554
  %85 = or i1 %80, %82, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %85, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i1 %85, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4550
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4552
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4550
  %88 = extractvalue { i64, i1 } %86, 0, !dbg !4554
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4554
  %90 = or i1 %85, %87, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %90, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i1 %90, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4550
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4552
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4550
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4554
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4554
  %95 = or i1 %90, %92, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %95, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i1 %95, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4550
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4552
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4550
  %98 = extractvalue { i64, i1 } %96, 0, !dbg !4554
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4554
  %100 = or i1 %95, %97, !dbg !4555
  call void @llvm.dbg.value(metadata i1 %100, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i1 %100, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4540
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4550
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4552
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4550
  %103 = extractvalue { i64, i1 } %101, 0, !dbg !4554
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4554
  %105 = or i1 %100, %102, !dbg !4555
  %106 = zext i1 %105 to i32, !dbg !4555
  call void @llvm.dbg.value(metadata i32 %106, metadata !4532, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4540
  br label %372, !dbg !4556

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 8, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4559
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4561
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4559
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !4562
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %109, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i1 %109, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4559
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4561
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4559
  %114 = extractvalue { i64, i1 } %112, 0, !dbg !4562
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4562
  %116 = or i1 %109, %113, !dbg !4563
  call void @llvm.dbg.value(metadata i1 %116, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i1 %116, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4559
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4561
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4559
  %119 = extractvalue { i64, i1 } %117, 0, !dbg !4562
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4562
  %121 = or i1 %116, %118, !dbg !4563
  call void @llvm.dbg.value(metadata i1 %121, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i1 %121, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4559
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4561
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4559
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !4562
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4562
  %126 = or i1 %121, %123, !dbg !4563
  call void @llvm.dbg.value(metadata i1 %126, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i1 %126, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4559
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4561
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4559
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4562
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4562
  %131 = or i1 %126, %128, !dbg !4563
  call void @llvm.dbg.value(metadata i1 %131, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i1 %131, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4559
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4561
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4559
  %134 = extractvalue { i64, i1 } %132, 0, !dbg !4562
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4562
  %136 = or i1 %131, %133, !dbg !4563
  call void @llvm.dbg.value(metadata i1 %136, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i1 %136, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4559
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4561
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4559
  %139 = extractvalue { i64, i1 } %137, 0, !dbg !4562
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4562
  %141 = or i1 %136, %138, !dbg !4563
  call void @llvm.dbg.value(metadata i1 %141, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i1 %141, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4557
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4559
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4561
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4561
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4559
  %144 = extractvalue { i64, i1 } %142, 0, !dbg !4562
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4562
  %146 = or i1 %141, %143, !dbg !4563
  %147 = zext i1 %146 to i32, !dbg !4563
  call void @llvm.dbg.value(metadata i32 %147, metadata !4532, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4557
  br label %372, !dbg !4556

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 9, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 8, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4566
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4568
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4568
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4566
  %151 = extractvalue { i64, i1 } %149, 0, !dbg !4569
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4569
  call void @llvm.dbg.value(metadata i1 %150, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 8, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i1 %150, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 8, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4566
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4568
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4568
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4566
  %155 = extractvalue { i64, i1 } %153, 0, !dbg !4569
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4569
  %157 = or i1 %150, %154, !dbg !4570
  call void @llvm.dbg.value(metadata i1 %157, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i1 %157, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4566
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4568
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4568
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4566
  %160 = extractvalue { i64, i1 } %158, 0, !dbg !4569
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4569
  %162 = or i1 %157, %159, !dbg !4570
  call void @llvm.dbg.value(metadata i1 %162, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i1 %162, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4566
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4568
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4568
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4566
  %165 = extractvalue { i64, i1 } %163, 0, !dbg !4569
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4569
  %167 = or i1 %162, %164, !dbg !4570
  call void @llvm.dbg.value(metadata i1 %167, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i1 %167, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4566
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4568
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4568
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4566
  %170 = extractvalue { i64, i1 } %168, 0, !dbg !4569
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4569
  %172 = or i1 %167, %169, !dbg !4570
  call void @llvm.dbg.value(metadata i1 %172, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i1 %172, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4566
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4568
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4568
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4566
  %175 = extractvalue { i64, i1 } %173, 0, !dbg !4569
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4569
  %177 = or i1 %172, %174, !dbg !4570
  call void @llvm.dbg.value(metadata i1 %177, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i1 %177, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4566
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4568
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4568
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4566
  %180 = extractvalue { i64, i1 } %178, 0, !dbg !4569
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4569
  %182 = or i1 %177, %179, !dbg !4570
  call void @llvm.dbg.value(metadata i1 %182, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i1 %182, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4566
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4568
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4568
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4566
  %185 = extractvalue { i64, i1 } %183, 0, !dbg !4569
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4569
  %187 = or i1 %182, %184, !dbg !4570
  call void @llvm.dbg.value(metadata i1 %187, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i1 %187, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4564
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4566
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4568
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4568
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4566
  %190 = extractvalue { i64, i1 } %188, 0, !dbg !4569
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4569
  %192 = or i1 %187, %189, !dbg !4570
  %193 = zext i1 %192 to i32, !dbg !4570
  call void @llvm.dbg.value(metadata i32 %193, metadata !4532, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4564
  br label %372, !dbg !4556

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 10, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 9, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4575
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %197 = extractvalue { i64, i1 } %195, 0, !dbg !4576
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %196, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 9, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i1 %196, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 9, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 8, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4575
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !4576
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4576
  %203 = or i1 %196, %200, !dbg !4577
  call void @llvm.dbg.value(metadata i1 %203, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 8, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i1 %203, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 8, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4575
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %206 = extractvalue { i64, i1 } %204, 0, !dbg !4576
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4576
  %208 = or i1 %203, %205, !dbg !4577
  call void @llvm.dbg.value(metadata i1 %208, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i1 %208, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 7, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4575
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %211 = extractvalue { i64, i1 } %209, 0, !dbg !4576
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4576
  %213 = or i1 %208, %210, !dbg !4577
  call void @llvm.dbg.value(metadata i1 %213, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i1 %213, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4575
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %216 = extractvalue { i64, i1 } %214, 0, !dbg !4576
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4576
  %218 = or i1 %213, %215, !dbg !4577
  call void @llvm.dbg.value(metadata i1 %218, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i1 %218, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4575
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4576
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4576
  %223 = or i1 %218, %220, !dbg !4577
  call void @llvm.dbg.value(metadata i1 %223, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i1 %223, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4575
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %226 = extractvalue { i64, i1 } %224, 0, !dbg !4576
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4576
  %228 = or i1 %223, %225, !dbg !4577
  call void @llvm.dbg.value(metadata i1 %228, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i1 %228, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4575
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %231 = extractvalue { i64, i1 } %229, 0, !dbg !4576
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4576
  %233 = or i1 %228, %230, !dbg !4577
  call void @llvm.dbg.value(metadata i1 %233, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i1 %233, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4575
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4576
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4576
  %238 = or i1 %233, %235, !dbg !4577
  call void @llvm.dbg.value(metadata i1 %238, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i1 %238, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4571
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4573
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4575
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4575
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4573
  %241 = extractvalue { i64, i1 } %239, 0, !dbg !4576
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4576
  %243 = or i1 %238, %240, !dbg !4577
  %244 = zext i1 %243 to i32, !dbg !4577
  call void @llvm.dbg.value(metadata i32 %244, metadata !4532, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4571
  br label %372, !dbg !4556

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4580
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4582
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4582
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4580
  %248 = extractvalue { i64, i1 } %246, 0, !dbg !4583
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4583
  call void @llvm.dbg.value(metadata i1 %247, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i1 %247, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4580
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4582
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4582
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4580
  %252 = extractvalue { i64, i1 } %250, 0, !dbg !4583
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4583
  %254 = or i1 %247, %251, !dbg !4584
  call void @llvm.dbg.value(metadata i1 %254, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i1 %254, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4580
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4582
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4582
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4580
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4583
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4583
  %259 = or i1 %254, %256, !dbg !4584
  call void @llvm.dbg.value(metadata i1 %259, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i1 %259, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4580
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4582
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4582
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4580
  %262 = extractvalue { i64, i1 } %260, 0, !dbg !4583
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4583
  %264 = or i1 %259, %261, !dbg !4584
  call void @llvm.dbg.value(metadata i1 %264, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i1 %264, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4578
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4580
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4582
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4582
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4580
  %267 = extractvalue { i64, i1 } %265, 0, !dbg !4583
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4583
  %269 = or i1 %264, %266, !dbg !4584
  %270 = zext i1 %269 to i32, !dbg !4584
  call void @llvm.dbg.value(metadata i32 %270, metadata !4532, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4578
  br label %372, !dbg !4556

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i32 6, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4587
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4589
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4589
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4587
  %274 = extractvalue { i64, i1 } %272, 0, !dbg !4590
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4590
  call void @llvm.dbg.value(metadata i1 %273, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i1 %273, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 5, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4587
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4589
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4589
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4587
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4590
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4590
  %280 = or i1 %273, %277, !dbg !4591
  call void @llvm.dbg.value(metadata i1 %280, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i1 %280, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4587
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4589
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4589
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4587
  %283 = extractvalue { i64, i1 } %281, 0, !dbg !4590
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4590
  %285 = or i1 %280, %282, !dbg !4591
  call void @llvm.dbg.value(metadata i1 %285, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i1 %285, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4587
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4589
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4589
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4587
  %288 = extractvalue { i64, i1 } %286, 0, !dbg !4590
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4590
  %290 = or i1 %285, %287, !dbg !4591
  call void @llvm.dbg.value(metadata i1 %290, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i1 %290, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4587
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4589
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4589
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4587
  %293 = extractvalue { i64, i1 } %291, 0, !dbg !4590
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4590
  %295 = or i1 %290, %292, !dbg !4591
  call void @llvm.dbg.value(metadata i1 %295, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i1 %295, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4587
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4589
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4589
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4587
  %298 = extractvalue { i64, i1 } %296, 0, !dbg !4590
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4590
  %300 = or i1 %295, %297, !dbg !4591
  %301 = zext i1 %300 to i32, !dbg !4591
  call void @llvm.dbg.value(metadata i32 %301, metadata !4532, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4585
  br label %372, !dbg !4556

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32 512, metadata !4548, metadata !DIExpression()), !dbg !4592
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4594
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4592
  %304 = shl i64 %46, 9, !dbg !4595
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4595
  %306 = zext i1 %303 to i32, !dbg !4595
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !4459, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %306, metadata !4465, metadata !DIExpression()), !dbg !4517
  br label %372, !dbg !4596

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i32 1024, metadata !4548, metadata !DIExpression()), !dbg !4597
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4599
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4597
  %309 = shl i64 %46, 10, !dbg !4600
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4600
  %311 = zext i1 %308 to i32, !dbg !4600
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !4459, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %311, metadata !4465, metadata !DIExpression()), !dbg !4517
  br label %372, !dbg !4601

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4537, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i64 %69, metadata !4538, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4602
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4604
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4606
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4606
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4604
  %315 = extractvalue { i64, i1 } %313, 0, !dbg !4607
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4607
  call void @llvm.dbg.value(metadata i1 %314, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4602
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4602
  call void @llvm.dbg.value(metadata i1 %314, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4602
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4604
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4606
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4606
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4604
  %319 = extractvalue { i64, i1 } %317, 0, !dbg !4607
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4607
  %321 = or i1 %314, %318, !dbg !4608
  call void @llvm.dbg.value(metadata i1 %321, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4602
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4602
  call void @llvm.dbg.value(metadata i1 %321, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4602
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4604
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4606
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4606
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4604
  %324 = extractvalue { i64, i1 } %322, 0, !dbg !4607
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4607
  %326 = or i1 %321, %323, !dbg !4608
  %327 = zext i1 %326 to i32, !dbg !4608
  call void @llvm.dbg.value(metadata i32 %327, metadata !4532, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4602
  br label %372, !dbg !4556

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4537, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 %69, metadata !4538, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4609
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4611
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4611
  %331 = extractvalue { i64, i1 } %329, 0, !dbg !4613
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4613
  %333 = zext i1 %330 to i32, !dbg !4613
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4614
  br label %372, !dbg !4556

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4537, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %69, metadata !4538, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4615
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4617
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4619
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4619
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4617
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4620
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4620
  call void @llvm.dbg.value(metadata i1 %336, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4615
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4615
  call void @llvm.dbg.value(metadata i1 %336, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4615
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4617
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4619
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4619
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4617
  %341 = extractvalue { i64, i1 } %339, 0, !dbg !4620
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4620
  %343 = or i1 %336, %340, !dbg !4621
  %344 = zext i1 %343 to i32, !dbg !4621
  call void @llvm.dbg.value(metadata i32 %344, metadata !4532, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4615
  br label %372, !dbg !4556

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4537, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i64 %69, metadata !4538, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i32 0, metadata !4532, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i32 4, metadata !4539, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4624
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4626
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4626
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4624
  %348 = extractvalue { i64, i1 } %346, 0, !dbg !4627
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4627
  call void @llvm.dbg.value(metadata i1 %347, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i1 %347, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i32 3, metadata !4539, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4624
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4626
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4626
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4624
  %352 = extractvalue { i64, i1 } %350, 0, !dbg !4627
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4627
  %354 = or i1 %347, %351, !dbg !4628
  call void @llvm.dbg.value(metadata i1 %354, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i1 %354, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i32 2, metadata !4539, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4624
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4626
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4626
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4624
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4627
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4627
  %359 = or i1 %354, %356, !dbg !4628
  call void @llvm.dbg.value(metadata i1 %359, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i1 %359, metadata !4532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4622
  call void @llvm.dbg.value(metadata i32 1, metadata !4539, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %69, metadata !4548, metadata !DIExpression()), !dbg !4624
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4626
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4626
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4624
  %362 = extractvalue { i64, i1 } %360, 0, !dbg !4627
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4627
  %364 = or i1 %359, %361, !dbg !4628
  %365 = zext i1 %364 to i32, !dbg !4628
  call void @llvm.dbg.value(metadata i32 %365, metadata !4532, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i32 0, metadata !4539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4622
  br label %372, !dbg !4556

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4543, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i32 2, metadata !4548, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 poison, metadata !4549, metadata !DIExpression()), !dbg !4629
  %367 = shl i64 %46, 1, !dbg !4631
  %368 = icmp sgt i64 %46, -1, !dbg !4631
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4631
  %370 = lshr i64 %46, 63, !dbg !4631
  %371 = trunc i64 %370 to i32, !dbg !4631
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !4459, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %371, metadata !4465, metadata !DIExpression()), !dbg !4517
  br label %372, !dbg !4632

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4467
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4633
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !4459, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %374, metadata !4465, metadata !DIExpression()), !dbg !4517
  %375 = or i32 %374, %45, !dbg !4556
  tail call void @llvm.dbg.value(metadata i32 %375, metadata !4460, metadata !DIExpression()), !dbg !4467
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4634
  store ptr %376, ptr %20, align 8, !dbg !4634, !tbaa !921
  %377 = load i8, ptr %376, align 1, !dbg !4635, !tbaa !1001
  %378 = icmp eq i8 %377, 0, !dbg !4635
  %379 = or disjoint i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !4460, metadata !DIExpression()), !dbg !4467
  br label %383

381:                                              ; preds = %68
  store i64 %46, ptr %3, align 8, !dbg !4638, !tbaa !3170
  %382 = or disjoint i32 %45, 2, !dbg !4639
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !4459, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !4460, metadata !DIExpression()), !dbg !4467
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4640
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4641
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !4459, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %385, metadata !4460, metadata !DIExpression()), !dbg !4467
  store i64 %384, ptr %3, align 8, !dbg !4642, !tbaa !3170
  br label %386, !dbg !4643

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !4644
  ret i32 %387, !dbg !4644
}

; Function Attrs: nounwind
declare !dbg !4645 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4650 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !4712
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4693, metadata !DIExpression(), metadata !4712, metadata ptr %3, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4688, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4689, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4690, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4691, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4692, metadata !DIExpression()), !dbg !4713
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #39, !dbg !4714
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4697, metadata !DIExpression()), !dbg !4715
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4699, metadata !DIExpression()), !dbg !4715
  br label %4, !dbg !4716

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !4713
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4715
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4713
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4717
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4718
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4690, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4691, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4699, metadata !DIExpression()), !dbg !4715
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4697, metadata !DIExpression()), !dbg !4715
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !4692, metadata !DIExpression()), !dbg !4713
  %11 = load i8, ptr %6, align 1, !dbg !4718, !tbaa !1001
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4719

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4690, metadata !DIExpression()), !dbg !4713
  %13 = icmp slt i64 %7, 80, !dbg !4720
  br i1 %13, label %14, label %43, !dbg !4723

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4724
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4699, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4715
  store i8 114, ptr %10, align 1, !dbg !4725, !tbaa !1001
  br label %43, !dbg !4726

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4690, metadata !DIExpression()), !dbg !4713
  %17 = or i32 %8, 576, !dbg !4727
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4691, metadata !DIExpression()), !dbg !4713
  %18 = icmp slt i64 %7, 80, !dbg !4728
  br i1 %18, label %19, label %43, !dbg !4730

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4731
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4699, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4715
  store i8 119, ptr %10, align 1, !dbg !4732, !tbaa !1001
  br label %43, !dbg !4733

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4690, metadata !DIExpression()), !dbg !4713
  %22 = or i32 %8, 1088, !dbg !4734
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4691, metadata !DIExpression()), !dbg !4713
  %23 = icmp slt i64 %7, 80, !dbg !4735
  br i1 %23, label %24, label %43, !dbg !4737

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4738
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4699, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4715
  store i8 97, ptr %10, align 1, !dbg !4739, !tbaa !1001
  br label %43, !dbg !4740

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4691, metadata !DIExpression()), !dbg !4713
  %27 = icmp slt i64 %7, 80, !dbg !4741
  br i1 %27, label %28, label %43, !dbg !4743

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4744
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4699, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4715
  store i8 98, ptr %10, align 1, !dbg !4745, !tbaa !1001
  br label %43, !dbg !4746

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4690, metadata !DIExpression()), !dbg !4713
  %31 = icmp slt i64 %7, 80, !dbg !4747
  br i1 %31, label %32, label %43, !dbg !4749

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4750
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4699, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4715
  store i8 43, ptr %10, align 1, !dbg !4751, !tbaa !1001
  br label %43, !dbg !4752

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4753
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4691, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4692, metadata !DIExpression()), !dbg !4713
  br label %43, !dbg !4754

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4755
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4691, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4692, metadata !DIExpression()), !dbg !4713
  br label %43, !dbg !4756

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #40, !dbg !4757
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4700, metadata !DIExpression()), !dbg !4758
  %40 = sub nsw i64 80, %7, !dbg !4759
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4761
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4700, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata ptr %10, metadata !4762, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata ptr %6, metadata !4765, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata i64 %41, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #39, !dbg !4769
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4770
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4699, metadata !DIExpression()), !dbg !4715
  br label %49, !dbg !4771

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !4713
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4713
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4713
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4690, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4691, metadata !DIExpression()), !dbg !4713
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4699, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4715
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !4692, metadata !DIExpression()), !dbg !4713
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4772
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4697, metadata !DIExpression()), !dbg !4715
  br label %4, !dbg !4773, !llvm.loop !4774

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4715
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !4699, metadata !DIExpression()), !dbg !4715
  store i8 0, ptr %50, align 1, !dbg !4776, !tbaa !1001
  %51 = and i8 %5, 1, !dbg !4777
  %52 = icmp eq i8 %51, 0, !dbg !4777
  br i1 %52, label %64, label %53, !dbg !4778

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !4779
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #39, !dbg !4780
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !4705, metadata !DIExpression()), !dbg !4781
  %56 = icmp slt i32 %55, 0, !dbg !4782
  br i1 %56, label %66, label %57, !dbg !4784

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #39, !dbg !4785
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !4708, metadata !DIExpression()), !dbg !4781
  %59 = icmp eq ptr %58, null, !dbg !4786
  br i1 %59, label %60, label %66, !dbg !4787

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #42, !dbg !4788
  %62 = load i32, ptr %61, align 4, !dbg !4788, !tbaa !992
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !4709, metadata !DIExpression()), !dbg !4789
  %63 = tail call i32 @close(i32 noundef %55) #39, !dbg !4790
  store i32 %62, ptr %61, align 4, !dbg !4791, !tbaa !992
  br label %66, !dbg !4792

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4793, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata ptr %1, metadata !4796, metadata !DIExpression()), !dbg !4797
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4799
  br label %66, !dbg !4800

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !4713
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #39, !dbg !4801
  ret ptr %67, !dbg !4801
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4802 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare !dbg !4805 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4808 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4809 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4812 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4850, metadata !DIExpression()), !dbg !4855
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4856
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4851, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4855
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4857, metadata !DIExpression()), !dbg !4860
  %3 = load i32, ptr %0, align 8, !dbg !4862, !tbaa !1291
  %4 = and i32 %3, 32, !dbg !4863
  %5 = icmp eq i32 %4, 0, !dbg !4863
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4853, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4855
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4864
  %7 = icmp eq i32 %6, 0, !dbg !4865
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4854, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4855
  br i1 %5, label %8, label %18, !dbg !4866

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4868
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4855
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4869
  %11 = xor i1 %7, true, !dbg !4869
  %12 = sext i1 %11 to i32, !dbg !4869
  br i1 %10, label %21, label %13, !dbg !4869

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4870
  %15 = load i32, ptr %14, align 4, !dbg !4870, !tbaa !992
  %16 = icmp ne i32 %15, 9, !dbg !4871
  %17 = sext i1 %16 to i32, !dbg !4872
  br label %21, !dbg !4872

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4873

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4875
  store i32 0, ptr %20, align 4, !dbg !4877, !tbaa !992
  br label %21, !dbg !4875

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4855
  ret i32 %22, !dbg !4878
}

; Function Attrs: nounwind
declare !dbg !4879 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4882 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4887, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4888, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4889, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4890, metadata !DIExpression()), !dbg !4892
  %5 = icmp eq ptr %1, null, !dbg !4893
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4895
  %7 = select i1 %5, ptr @.str.137, ptr %1, !dbg !4895
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4895
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4889, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4888, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4887, metadata !DIExpression()), !dbg !4892
  %9 = icmp eq ptr %3, null, !dbg !4896
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4898
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4890, metadata !DIExpression()), !dbg !4892
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4899
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4891, metadata !DIExpression()), !dbg !4892
  %12 = icmp ult i64 %11, -3, !dbg !4900
  br i1 %12, label %13, label %17, !dbg !4902

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4903
  %15 = icmp eq i32 %14, 0, !dbg !4903
  br i1 %15, label %16, label %29, !dbg !4904

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4905, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.value(metadata ptr %10, metadata !4912, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i32 0, metadata !4915, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i64 8, metadata !4916, metadata !DIExpression()), !dbg !4917
  store i64 0, ptr %10, align 1, !dbg !4919
  br label %29, !dbg !4920

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4921
  br i1 %18, label %19, label %20, !dbg !4923

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4924
  unreachable, !dbg !4924

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4925

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4927
  br i1 %23, label %29, label %24, !dbg !4928

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4929
  br i1 %25, label %29, label %26, !dbg !4932

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4933, !tbaa !1001
  %28 = zext i8 %27 to i32, !dbg !4934
  store i32 %28, ptr %6, align 4, !dbg !4935, !tbaa !992
  br label %29, !dbg !4936

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4892
  ret i64 %30, !dbg !4937
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4938 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4943 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4945, metadata !DIExpression()), !dbg !4949
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4946, metadata !DIExpression()), !dbg !4949
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4947, metadata !DIExpression()), !dbg !4949
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4950
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4948, metadata !DIExpression()), !dbg !4949
  br i1 %5, label %6, label %8, !dbg !4952

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4953
  store i32 12, ptr %7, align 4, !dbg !4955, !tbaa !992
  br label %12, !dbg !4956

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4948, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata ptr %0, metadata !4957, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 %9, metadata !4960, metadata !DIExpression()), !dbg !4961
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4963
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4964
  br label %12, !dbg !4965

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4949
  ret ptr %13, !dbg !4966
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4967 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4976
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4972, metadata !DIExpression(), metadata !4976, metadata ptr %2, metadata !DIExpression()), !dbg !4977
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4971, metadata !DIExpression()), !dbg !4977
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4978
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4979
  %4 = icmp eq i32 %3, 0, !dbg !4979
  br i1 %4, label %5, label %12, !dbg !4981

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4982, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.value(metadata !959, metadata !4985, metadata !DIExpression()), !dbg !4986
  %6 = load i16, ptr %2, align 16, !dbg !4989
  %7 = icmp eq i16 %6, 67, !dbg !4989
  br i1 %7, label %11, label %8, !dbg !4990

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4982, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.value(metadata ptr @.str.1.142, metadata !4985, metadata !DIExpression()), !dbg !4991
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.142, i64 6), !dbg !4993
  %10 = icmp eq i32 %9, 0, !dbg !4994
  br i1 %10, label %11, label %12, !dbg !4995

11:                                               ; preds = %8, %5
  br label %12, !dbg !4996

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4977
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4997
  ret i1 %13, !dbg !4997
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4998 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5002, metadata !DIExpression()), !dbg !5005
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5003, metadata !DIExpression()), !dbg !5005
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5004, metadata !DIExpression()), !dbg !5005
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5006
  ret i32 %4, !dbg !5007
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5008 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5012, metadata !DIExpression()), !dbg !5013
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5014
  ret ptr %2, !dbg !5015
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5016 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5018, metadata !DIExpression()), !dbg !5020
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5021
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5019, metadata !DIExpression()), !dbg !5020
  ret ptr %2, !dbg !5022
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5023 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5025, metadata !DIExpression()), !dbg !5032
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5026, metadata !DIExpression()), !dbg !5032
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5027, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata i32 %0, metadata !5018, metadata !DIExpression()), !dbg !5033
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5035
  call void @llvm.dbg.value(metadata ptr %4, metadata !5019, metadata !DIExpression()), !dbg !5033
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5028, metadata !DIExpression()), !dbg !5032
  %5 = icmp eq ptr %4, null, !dbg !5036
  br i1 %5, label %6, label %9, !dbg !5037

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5038
  br i1 %7, label %19, label %8, !dbg !5041

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5042, !tbaa !1001
  br label %19, !dbg !5043

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5044
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5029, metadata !DIExpression()), !dbg !5045
  %11 = icmp ult i64 %10, %2, !dbg !5046
  br i1 %11, label %12, label %14, !dbg !5048

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5049
  call void @llvm.dbg.value(metadata ptr %1, metadata !5051, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata ptr %4, metadata !5054, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i64 %13, metadata !5055, metadata !DIExpression()), !dbg !5056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !5058
  br label %19, !dbg !5059

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5060
  br i1 %15, label %19, label %16, !dbg !5063

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5064
  call void @llvm.dbg.value(metadata ptr %1, metadata !5051, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.value(metadata ptr %4, metadata !5054, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.value(metadata i64 %17, metadata !5055, metadata !DIExpression()), !dbg !5066
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5068
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5069
  store i8 0, ptr %18, align 1, !dbg !5070, !tbaa !1001
  br label %19, !dbg !5071

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5072
  ret i32 %20, !dbg !5073
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nofree nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!66, !479, !483, !498, !773, !808, !813, !815, !818, !820, !822, !549, !563, !610, !824, !765, !830, !863, !865, !879, !888, !890, !792, !892, !894, !898, !900}
!llvm.ident = !{!902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902, !902}
!llvm.module.flags = !{!903, !904, !905, !906, !907, !908, !909}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/fold.c", directory: "/src", checksumkind: CSK_MD5, checksum: "eee9b3e52e2800e339faad5506a934a5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!85 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!86 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !207)
!206 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!229 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!497 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !498, file: !499, line: 66, type: !544, isLocal: false, isDefinition: true)
!498 = distinct !DICompileUnit(language: DW_LANG_C11, file: !499, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !500, globals: !501, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!500 = !{!137, !144}
!501 = !{!502, !504, !523, !525, !527, !529, !496, !531, !533, !535, !537, !542}
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !499, line: 272, type: !19, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "old_file_name", scope: !506, file: !499, line: 304, type: !142, isLocal: true, isDefinition: true)
!506 = distinct !DISubprogram(name: "verror_at_line", scope: !499, file: !499, line: 298, type: !507, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !516)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !83, !83, !142, !69, !142, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !511)
!511 = !{!512, !513, !514, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !510, file: !499, baseType: !69, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !510, file: !499, baseType: !69, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !510, file: !499, baseType: !137, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !510, file: !499, baseType: !137, size: 64, offset: 128)
!516 = !{!517, !518, !519, !520, !521, !522}
!517 = !DILocalVariable(name: "status", arg: 1, scope: !506, file: !499, line: 298, type: !83)
!518 = !DILocalVariable(name: "errnum", arg: 2, scope: !506, file: !499, line: 298, type: !83)
!519 = !DILocalVariable(name: "file_name", arg: 3, scope: !506, file: !499, line: 298, type: !142)
!520 = !DILocalVariable(name: "line_number", arg: 4, scope: !506, file: !499, line: 298, type: !69)
!521 = !DILocalVariable(name: "message", arg: 5, scope: !506, file: !499, line: 298, type: !142)
!522 = !DILocalVariable(name: "args", arg: 6, scope: !506, file: !499, line: 298, type: !509)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "old_line_number", scope: !506, file: !499, line: 305, type: !69, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !499, line: 338, type: !266, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !499, line: 346, type: !298, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !499, line: 346, type: !163, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "error_message_count", scope: !498, file: !499, line: 69, type: !69, isLocal: false, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !498, file: !499, line: 295, type: !83, isLocal: false, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !499, line: 208, type: !293, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !499, line: 208, type: !539, isLocal: true, isDefinition: true)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 21)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !499, line: 214, type: !19, isLocal: true, isDefinition: true)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{null}
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "program_name", scope: !549, file: !550, line: 31, type: !142, isLocal: false, isDefinition: true)
!549 = distinct !DICompileUnit(language: DW_LANG_C11, file: !550, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !551, globals: !552, splitDebugInlining: false, nameTableKind: None)
!550 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!551 = !{!137, !136}
!552 = !{!547, !553, !555}
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !550, line: 46, type: !298, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !550, line: 49, type: !266, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "utf07FF", scope: !559, file: !560, line: 46, type: !583, isLocal: true, isDefinition: true)
!559 = distinct !DISubprogram(name: "proper_name_lite", scope: !560, file: !560, line: 38, type: !561, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !565)
!560 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!561 = !DISubroutineType(types: !562)
!562 = !{!142, !142, !142}
!563 = distinct !DICompileUnit(language: DW_LANG_C11, file: !560, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !564, splitDebugInlining: false, nameTableKind: None)
!564 = !{!557}
!565 = !{!566, !567, !568, !569, !570}
!566 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !559, file: !560, line: 38, type: !142)
!567 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !559, file: !560, line: 38, type: !142)
!568 = !DILocalVariable(name: "translation", scope: !559, file: !560, line: 40, type: !142)
!569 = !DILocalVariable(name: "w", scope: !559, file: !560, line: 47, type: !432)
!570 = !DILocalVariable(name: "mbs", scope: !559, file: !560, line: 48, type: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !572, line: 6, baseType: !573)
!572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !574, line: 21, baseType: !575)
!574 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 13, size: 64, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !575, file: !574, line: 15, baseType: !83, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !575, file: !574, line: 20, baseType: !579, size: 32, offset: 32)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !574, line: 16, size: 32, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !579, file: !574, line: 18, baseType: !69, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !579, file: !574, line: 19, baseType: !266, size: 32)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 16, elements: !164)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !586, line: 78, type: !298, isLocal: true, isDefinition: true)
!586 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !586, line: 79, type: !271, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !586, line: 80, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 13)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !586, line: 81, type: !591, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !586, line: 82, type: !251, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !586, line: 83, type: !163, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !586, line: 84, type: !298, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !586, line: 85, type: !293, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !586, line: 86, type: !293, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !586, line: 87, type: !298, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !610, file: !586, line: 76, type: !684, isLocal: false, isDefinition: true)
!610 = distinct !DICompileUnit(language: DW_LANG_C11, file: !586, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !611, retainedTypes: !619, globals: !620, splitDebugInlining: false, nameTableKind: None)
!611 = !{!612, !614, !87}
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !613, line: 42, baseType: !69, size: 32, elements: !104)
!613 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!614 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !613, line: 254, baseType: !69, size: 32, elements: !615)
!615 = !{!616, !617, !618}
!616 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!617 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!618 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!619 = !{!137, !83, !138, !139}
!620 = !{!584, !587, !589, !594, !596, !598, !600, !602, !604, !606, !608, !621, !625, !635, !637, !642, !644, !646, !648, !650, !673, !680, !682}
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !610, file: !586, line: 92, type: !623, isLocal: false, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 320, elements: !57)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !610, file: !586, line: 1040, type: !627, isLocal: false, isDefinition: true)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !586, line: 56, size: 448, elements: !628)
!628 = !{!629, !630, !631, !633, !634}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !627, file: !586, line: 59, baseType: !612, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !586, line: 62, baseType: !83, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !627, file: !586, line: 66, baseType: !632, size: 256, offset: 64)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !299)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !627, file: !586, line: 69, baseType: !142, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !627, file: !586, line: 72, baseType: !142, size: 64, offset: 384)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !610, file: !586, line: 107, type: !627, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "slot0", scope: !610, file: !586, line: 831, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 256)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !586, line: 321, type: !163, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !586, line: 357, type: !163, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !586, line: 358, type: !163, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !586, line: 199, type: !293, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "quote", scope: !652, file: !586, line: 228, type: !671, isLocal: true, isDefinition: true)
!652 = distinct !DISubprogram(name: "gettext_quote", scope: !586, file: !586, line: 197, type: !653, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{!142, !142, !612}
!655 = !{!656, !657, !658, !659, !660}
!656 = !DILocalVariable(name: "msgid", arg: 1, scope: !652, file: !586, line: 197, type: !142)
!657 = !DILocalVariable(name: "s", arg: 2, scope: !652, file: !586, line: 197, type: !612)
!658 = !DILocalVariable(name: "translation", scope: !652, file: !586, line: 199, type: !142)
!659 = !DILocalVariable(name: "w", scope: !652, file: !586, line: 229, type: !432)
!660 = !DILocalVariable(name: "mbs", scope: !652, file: !586, line: 230, type: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !572, line: 6, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !574, line: 21, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 13, size: 64, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !663, file: !574, line: 15, baseType: !83, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !663, file: !574, line: 20, baseType: !667, size: 32, offset: 32)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !574, line: 16, size: 32, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !667, file: !574, line: 18, baseType: !69, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !667, file: !574, line: 19, baseType: !266, size: 32)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !672)
!672 = !{!165, !268}
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "slotvec", scope: !610, file: !586, line: 834, type: !675, isLocal: true, isDefinition: true)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !586, line: 823, size: 128, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !676, file: !586, line: 825, baseType: !139, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !676, file: !586, line: 826, baseType: !136, size: 64, offset: 64)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(name: "nslots", scope: !610, file: !586, line: 832, type: !83, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "slotvec0", scope: !610, file: !586, line: 833, type: !676, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 704, elements: !377)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !688, line: 67, type: !369, isLocal: true, isDefinition: true)
!688 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !688, line: 69, type: !293, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !688, line: 83, type: !293, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !688, line: 83, type: !266, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !688, line: 85, type: !163, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !688, line: 88, type: !699, isLocal: true, isDefinition: true)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 171)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !688, line: 88, type: !704, isLocal: true, isDefinition: true)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 34)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !688, line: 105, type: !158, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !688, line: 109, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 23)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !688, line: 113, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 28)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !688, line: 120, type: !721, isLocal: true, isDefinition: true)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 32)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !688, line: 127, type: !726, isLocal: true, isDefinition: true)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !470)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !688, line: 134, type: !320, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !688, line: 142, type: !731, isLocal: true, isDefinition: true)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 44)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !688, line: 150, type: !736, isLocal: true, isDefinition: true)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 48)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !688, line: 159, type: !741, isLocal: true, isDefinition: true)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 52)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !688, line: 170, type: !14, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !688, line: 248, type: !251, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !688, line: 248, type: !345, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !688, line: 254, type: !251, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !688, line: 254, type: !153, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !688, line: 254, type: !320, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !688, line: 259, type: !3, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !688, line: 259, type: !760, isLocal: true, isDefinition: true)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 29)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !765, file: !766, line: 26, type: !768, isLocal: false, isDefinition: true)
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !767, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!767 = !{!763}
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 376, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 47)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(name: "exit_failure", scope: !773, file: !774, line: 24, type: !776, isLocal: false, isDefinition: true)
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !775, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!775 = !{!771}
!776 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !779, line: 34, type: !282, isLocal: true, isDefinition: true)
!779 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !779, line: 34, type: !293, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !779, line: 34, type: !315, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !786, line: 80, type: !293, isLocal: true, isDefinition: true)
!786 = !DIFile(filename: "lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !789, line: 108, type: !51, isLocal: true, isDefinition: true)
!789 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "internal_state", scope: !792, file: !789, line: 97, type: !795, isLocal: true, isDefinition: true)
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !789, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !793, globals: !794, splitDebugInlining: false, nameTableKind: None)
!793 = !{!137, !139, !144}
!794 = !{!787, !790}
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !572, line: 6, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !574, line: 21, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 13, size: 64, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !797, file: !574, line: 15, baseType: !83, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !797, file: !574, line: 20, baseType: !801, size: 32, offset: 32)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !574, line: 16, size: 32, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !801, file: !574, line: 18, baseType: !69, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !801, file: !574, line: 19, baseType: !266, size: 32)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !807, line: 35, type: !271, isLocal: true, isDefinition: true)
!807 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !809, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !810, splitDebugInlining: false, nameTableKind: None)
!809 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!810 = !{!811}
!811 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !812, line: 44, baseType: !69, size: 32, elements: !118)
!812 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !814, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !816, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!817 = !{!137}
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!824 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !825, retainedTypes: !817, globals: !829, splitDebugInlining: false, nameTableKind: None)
!825 = !{!826}
!826 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !688, line: 40, baseType: !69, size: 32, elements: !827)
!827 = !{!828}
!828 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!829 = !{!686, !689, !691, !693, !695, !697, !702, !707, !709, !714, !719, !724, !727, !729, !734, !739, !744, !746, !748, !750, !752, !754, !756, !758}
!830 = distinct !DICompileUnit(language: DW_LANG_C11, file: !831, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !832, retainedTypes: !862, splitDebugInlining: false, nameTableKind: None)
!831 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!832 = !{!833, !845}
!833 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !834, file: !831, line: 188, baseType: !69, size: 32, elements: !843)
!834 = distinct !DISubprogram(name: "x2nrealloc", scope: !831, file: !831, line: 176, type: !835, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !838)
!835 = !DISubroutineType(types: !836)
!836 = !{!137, !137, !837, !139}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!838 = !{!839, !840, !841, !842}
!839 = !DILocalVariable(name: "p", arg: 1, scope: !834, file: !831, line: 176, type: !137)
!840 = !DILocalVariable(name: "pn", arg: 2, scope: !834, file: !831, line: 176, type: !837)
!841 = !DILocalVariable(name: "s", arg: 3, scope: !834, file: !831, line: 176, type: !139)
!842 = !DILocalVariable(name: "n", scope: !834, file: !831, line: 178, type: !139)
!843 = !{!844}
!844 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!845 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !846, file: !831, line: 228, baseType: !69, size: 32, elements: !843)
!846 = distinct !DISubprogram(name: "xpalloc", scope: !831, file: !831, line: 223, type: !847, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !852)
!847 = !DISubroutineType(types: !848)
!848 = !{!137, !137, !849, !850, !414, !850}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !851, line: 130, baseType: !414)
!851 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!852 = !{!853, !854, !855, !856, !857, !858, !859, !860, !861}
!853 = !DILocalVariable(name: "pa", arg: 1, scope: !846, file: !831, line: 223, type: !137)
!854 = !DILocalVariable(name: "pn", arg: 2, scope: !846, file: !831, line: 223, type: !849)
!855 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !846, file: !831, line: 223, type: !850)
!856 = !DILocalVariable(name: "n_max", arg: 4, scope: !846, file: !831, line: 223, type: !414)
!857 = !DILocalVariable(name: "s", arg: 5, scope: !846, file: !831, line: 223, type: !850)
!858 = !DILocalVariable(name: "n0", scope: !846, file: !831, line: 230, type: !850)
!859 = !DILocalVariable(name: "n", scope: !846, file: !831, line: 237, type: !850)
!860 = !DILocalVariable(name: "nbytes", scope: !846, file: !831, line: 248, type: !850)
!861 = !DILocalVariable(name: "adjusted_nbytes", scope: !846, file: !831, line: 252, type: !850)
!862 = !{!136, !137}
!863 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !864, splitDebugInlining: false, nameTableKind: None)
!864 = !{!777, !780, !782}
!865 = distinct !DICompileUnit(language: DW_LANG_C11, file: !866, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xdectoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xdectoumax.Tpo -c lib/xdectoumax.c -o lib/.libcoreutils_a-xdectoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !867, globals: !878, splitDebugInlining: false, nameTableKind: None)
!866 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!867 = !{!868, !876}
!868 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !869, line: 30, baseType: !69, size: 32, elements: !870)
!869 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!870 = !{!871, !872, !873, !874, !875}
!871 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!872 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!873 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!874 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!875 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!876 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !877, line: 24, baseType: !69, size: 32, elements: !76)
!877 = !DIFile(filename: "lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!878 = !{!784}
!879 = distinct !DICompileUnit(language: DW_LANG_C11, file: !880, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoumax.Tpo -c lib/xstrtoumax.c -o lib/.libcoreutils_a-xstrtoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !881, retainedTypes: !884, splitDebugInlining: false, nameTableKind: None)
!880 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!881 = !{!882, !87}
!882 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !883, line: 30, baseType: !69, size: 32, elements: !870)
!883 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!884 = !{!83, !138, !136, !885}
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !886, line: 102, baseType: !887)
!886 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !229, line: 73, baseType: !141)
!888 = distinct !DICompileUnit(language: DW_LANG_C11, file: !889, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!889 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!890 = distinct !DICompileUnit(language: DW_LANG_C11, file: !891, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!891 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!892 = distinct !DICompileUnit(language: DW_LANG_C11, file: !893, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!893 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!894 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !895, splitDebugInlining: false, nameTableKind: None)
!895 = !{!896, !805}
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !807, line: 35, type: !163, isLocal: true, isDefinition: true)
!898 = distinct !DICompileUnit(language: DW_LANG_C11, file: !899, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!899 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!900 = distinct !DICompileUnit(language: DW_LANG_C11, file: !901, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!901 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!902 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!903 = !{i32 7, !"Dwarf Version", i32 5}
!904 = !{i32 2, !"Debug Info Version", i32 3}
!905 = !{i32 1, !"wchar_size", i32 4}
!906 = !{i32 8, !"PIC Level", i32 2}
!907 = !{i32 7, !"PIE Level", i32 2}
!908 = !{i32 7, !"uwtable", i32 2}
!909 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!910 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 70, type: !911, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !83}
!913 = !{!914}
!914 = !DILocalVariable(name: "status", arg: 1, scope: !910, file: !2, line: 70, type: !83)
!915 = !DILocation(line: 0, scope: !910)
!916 = !DILocation(line: 72, column: 14, scope: !917)
!917 = distinct !DILexicalBlock(scope: !910, file: !2, line: 72, column: 7)
!918 = !DILocation(line: 72, column: 7, scope: !910)
!919 = !DILocation(line: 73, column: 5, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !2, line: 73, column: 5)
!921 = !{!922, !922, i64 0}
!922 = !{!"any pointer", !923, i64 0}
!923 = !{!"omnipotent char", !924, i64 0}
!924 = !{!"Simple C/C++ TBAA"}
!925 = !DILocation(line: 76, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !917, file: !2, line: 75, column: 5)
!927 = !DILocation(line: 80, column: 7, scope: !926)
!928 = !DILocation(line: 729, column: 3, scope: !929, inlinedAt: !930)
!929 = distinct !DISubprogram(name: "emit_stdin_note", scope: !82, file: !82, line: 727, type: !545, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!930 = distinct !DILocation(line: 84, column: 7, scope: !926)
!931 = !DILocation(line: 736, column: 3, scope: !932, inlinedAt: !933)
!932 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !82, file: !82, line: 734, type: !545, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66)
!933 = distinct !DILocation(line: 85, column: 7, scope: !926)
!934 = !DILocation(line: 87, column: 7, scope: !926)
!935 = !DILocation(line: 91, column: 7, scope: !926)
!936 = !DILocation(line: 95, column: 7, scope: !926)
!937 = !DILocation(line: 99, column: 7, scope: !926)
!938 = !DILocation(line: 103, column: 7, scope: !926)
!939 = !DILocation(line: 104, column: 7, scope: !926)
!940 = !DILocalVariable(name: "program", arg: 1, scope: !941, file: !82, line: 836, type: !142)
!941 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 836, type: !942, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !142}
!944 = !{!940, !945, !952, !953, !955, !956}
!945 = !DILocalVariable(name: "infomap", scope: !941, file: !82, line: 838, type: !946)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 896, elements: !294)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !941, file: !82, line: 838, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !948, file: !82, line: 838, baseType: !142, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !948, file: !82, line: 838, baseType: !142, size: 64, offset: 64)
!952 = !DILocalVariable(name: "node", scope: !941, file: !82, line: 848, type: !142)
!953 = !DILocalVariable(name: "map_prog", scope: !941, file: !82, line: 849, type: !954)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!955 = !DILocalVariable(name: "lc_messages", scope: !941, file: !82, line: 861, type: !142)
!956 = !DILocalVariable(name: "url_program", scope: !941, file: !82, line: 874, type: !142)
!957 = !DILocation(line: 0, scope: !941, inlinedAt: !958)
!958 = distinct !DILocation(line: 105, column: 7, scope: !926)
!959 = !{}
!960 = !DILocation(line: 857, column: 3, scope: !941, inlinedAt: !958)
!961 = !DILocation(line: 861, column: 29, scope: !941, inlinedAt: !958)
!962 = !DILocation(line: 862, column: 7, scope: !963, inlinedAt: !958)
!963 = distinct !DILexicalBlock(scope: !941, file: !82, line: 862, column: 7)
!964 = !DILocation(line: 862, column: 19, scope: !963, inlinedAt: !958)
!965 = !DILocation(line: 862, column: 22, scope: !963, inlinedAt: !958)
!966 = !DILocation(line: 862, column: 7, scope: !941, inlinedAt: !958)
!967 = !DILocation(line: 868, column: 7, scope: !968, inlinedAt: !958)
!968 = distinct !DILexicalBlock(scope: !963, file: !82, line: 863, column: 5)
!969 = !DILocation(line: 870, column: 5, scope: !968, inlinedAt: !958)
!970 = !DILocation(line: 875, column: 3, scope: !941, inlinedAt: !958)
!971 = !DILocation(line: 877, column: 3, scope: !941, inlinedAt: !958)
!972 = !DILocation(line: 107, column: 3, scope: !910)
!973 = !DISubprogram(name: "dcgettext", scope: !974, file: !974, line: 51, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!975 = !DISubroutineType(types: !976)
!976 = !{!136, !142, !142, !83}
!977 = !DISubprogram(name: "__fprintf_chk", scope: !978, file: !978, line: 93, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!979 = !DISubroutineType(types: !980)
!980 = !{!83, !981, !83, !982, null}
!981 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!982 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!983 = !DISubprogram(name: "__printf_chk", scope: !978, file: !978, line: 95, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!83, !83, !982, null}
!986 = !DISubprogram(name: "fputs_unlocked", scope: !987, file: !987, line: 691, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!988 = !DISubroutineType(types: !989)
!989 = !{!83, !982, !981}
!990 = !DILocation(line: 0, scope: !180)
!991 = !DILocation(line: 581, column: 7, scope: !188)
!992 = !{!993, !993, i64 0}
!993 = !{!"int", !923, i64 0}
!994 = !DILocation(line: 581, column: 19, scope: !188)
!995 = !DILocation(line: 581, column: 7, scope: !180)
!996 = !DILocation(line: 585, column: 26, scope: !187)
!997 = !DILocation(line: 0, scope: !187)
!998 = !DILocation(line: 586, column: 23, scope: !187)
!999 = !DILocation(line: 586, column: 28, scope: !187)
!1000 = !DILocation(line: 586, column: 32, scope: !187)
!1001 = !{!923, !923, i64 0}
!1002 = !DILocation(line: 586, column: 38, scope: !187)
!1003 = !DILocalVariable(name: "__s1", arg: 1, scope: !1004, file: !1005, line: 1359, type: !142)
!1004 = distinct !DISubprogram(name: "streq", scope: !1005, file: !1005, line: 1359, type: !1006, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1008)
!1005 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!168, !142, !142}
!1008 = !{!1003, !1009}
!1009 = !DILocalVariable(name: "__s2", arg: 2, scope: !1004, file: !1005, line: 1359, type: !142)
!1010 = !DILocation(line: 0, scope: !1004, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 586, column: 41, scope: !187)
!1012 = !DILocation(line: 1361, column: 11, scope: !1004, inlinedAt: !1011)
!1013 = !DILocation(line: 1361, column: 10, scope: !1004, inlinedAt: !1011)
!1014 = !DILocation(line: 586, column: 19, scope: !187)
!1015 = !DILocation(line: 587, column: 5, scope: !187)
!1016 = !DILocation(line: 588, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !180, file: !82, line: 588, column: 7)
!1018 = !DILocation(line: 588, column: 7, scope: !180)
!1019 = !DILocation(line: 590, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !82, line: 589, column: 5)
!1021 = !DILocation(line: 591, column: 7, scope: !1020)
!1022 = !DILocation(line: 595, column: 37, scope: !180)
!1023 = !DILocation(line: 595, column: 35, scope: !180)
!1024 = !DILocation(line: 596, column: 29, scope: !180)
!1025 = !DILocation(line: 597, column: 8, scope: !195)
!1026 = !DILocation(line: 597, column: 7, scope: !180)
!1027 = !DILocation(line: 604, column: 24, scope: !194)
!1028 = !DILocation(line: 604, column: 12, scope: !195)
!1029 = !DILocation(line: 0, scope: !193)
!1030 = !DILocation(line: 610, column: 16, scope: !193)
!1031 = !DILocation(line: 610, column: 7, scope: !193)
!1032 = !DILocation(line: 611, column: 21, scope: !193)
!1033 = !{!1034, !1034, i64 0}
!1034 = !{!"short", !923, i64 0}
!1035 = !DILocation(line: 611, column: 19, scope: !193)
!1036 = !DILocation(line: 611, column: 16, scope: !193)
!1037 = !DILocation(line: 610, column: 30, scope: !193)
!1038 = distinct !{!1038, !1031, !1032, !1039}
!1039 = !{!"llvm.loop.mustprogress"}
!1040 = !DILocation(line: 612, column: 18, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !193, file: !82, line: 612, column: 11)
!1042 = !DILocation(line: 612, column: 11, scope: !193)
!1043 = !DILocation(line: 620, column: 23, scope: !180)
!1044 = !DILocation(line: 625, column: 39, scope: !180)
!1045 = !DILocation(line: 626, column: 3, scope: !180)
!1046 = !DILocation(line: 626, column: 10, scope: !180)
!1047 = !DILocation(line: 626, column: 21, scope: !180)
!1048 = !DILocation(line: 628, column: 44, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !82, line: 628, column: 11)
!1050 = distinct !DILexicalBlock(scope: !180, file: !82, line: 627, column: 5)
!1051 = !DILocation(line: 628, column: 32, scope: !1049)
!1052 = !DILocation(line: 628, column: 49, scope: !1049)
!1053 = !DILocation(line: 628, column: 11, scope: !1050)
!1054 = !DILocation(line: 630, column: 11, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !82, line: 630, column: 11)
!1056 = !DILocation(line: 630, column: 11, scope: !1050)
!1057 = !DILocation(line: 632, column: 26, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !82, line: 632, column: 15)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !82, line: 631, column: 9)
!1060 = !DILocation(line: 632, column: 34, scope: !1058)
!1061 = !DILocation(line: 632, column: 37, scope: !1058)
!1062 = !DILocation(line: 632, column: 15, scope: !1059)
!1063 = !DILocation(line: 636, column: 16, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !82, line: 636, column: 15)
!1065 = !DILocation(line: 636, column: 29, scope: !1064)
!1066 = !DILocation(line: 640, column: 16, scope: !1050)
!1067 = distinct !{!1067, !1045, !1068, !1039}
!1068 = !DILocation(line: 641, column: 5, scope: !180)
!1069 = !DILocation(line: 644, column: 3, scope: !180)
!1070 = !DILocation(line: 0, scope: !1004, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 648, column: 31, scope: !180)
!1072 = !DILocation(line: 0, scope: !1004, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 649, column: 31, scope: !180)
!1074 = !DILocation(line: 0, scope: !1004, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 650, column: 31, scope: !180)
!1076 = !DILocation(line: 0, scope: !1004, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 651, column: 31, scope: !180)
!1078 = !DILocation(line: 0, scope: !1004, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 652, column: 31, scope: !180)
!1080 = !DILocation(line: 0, scope: !1004, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 653, column: 31, scope: !180)
!1082 = !DILocation(line: 0, scope: !1004, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 654, column: 31, scope: !180)
!1084 = !DILocation(line: 0, scope: !1004, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 655, column: 31, scope: !180)
!1086 = !DILocation(line: 0, scope: !1004, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 656, column: 31, scope: !180)
!1088 = !DILocation(line: 0, scope: !1004, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 657, column: 31, scope: !180)
!1090 = !DILocation(line: 663, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !180, file: !82, line: 663, column: 7)
!1092 = !DILocation(line: 664, column: 7, scope: !1091)
!1093 = !DILocation(line: 664, column: 10, scope: !1091)
!1094 = !DILocation(line: 663, column: 7, scope: !180)
!1095 = !DILocation(line: 669, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !82, line: 665, column: 5)
!1097 = !DILocation(line: 671, column: 5, scope: !1096)
!1098 = !DILocation(line: 676, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1091, file: !82, line: 673, column: 5)
!1100 = !DILocation(line: 679, column: 3, scope: !180)
!1101 = !DILocation(line: 683, column: 3, scope: !180)
!1102 = !DILocation(line: 686, column: 3, scope: !180)
!1103 = !DILocation(line: 688, column: 3, scope: !180)
!1104 = !DILocation(line: 691, column: 3, scope: !180)
!1105 = !DILocation(line: 695, column: 3, scope: !180)
!1106 = !DILocation(line: 696, column: 1, scope: !180)
!1107 = !DISubprogram(name: "setlocale", scope: !1108, file: !1108, line: 122, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1108 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!136, !83, !142}
!1111 = !DISubprogram(name: "strncmp", scope: !1112, file: !1112, line: 159, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1112 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!83, !142, !142, !139}
!1115 = !DISubprogram(name: "exit", scope: !1116, file: !1116, line: 624, type: !911, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1116 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1117 = !DISubprogram(name: "getenv", scope: !1116, file: !1116, line: 641, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!136, !142}
!1120 = !DISubprogram(name: "strcmp", scope: !1112, file: !1112, line: 156, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!83, !142, !142}
!1123 = !DISubprogram(name: "strspn", scope: !1112, file: !1112, line: 297, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!141, !142, !142}
!1126 = !DISubprogram(name: "strchr", scope: !1112, file: !1112, line: 246, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!136, !142, !83}
!1129 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!1135 = !DISubprogram(name: "strcspn", scope: !1112, file: !1112, line: 293, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1136 = !DISubprogram(name: "fwrite_unlocked", scope: !987, file: !987, line: 704, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!139, !1139, !139, !139, !981}
!1139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1142 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 289, type: !1143, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1146)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!83, !83, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1154}
!1147 = !DILocalVariable(name: "argc", arg: 1, scope: !1142, file: !2, line: 289, type: !83)
!1148 = !DILocalVariable(name: "argv", arg: 2, scope: !1142, file: !2, line: 289, type: !1145)
!1149 = !DILocalVariable(name: "width", scope: !1142, file: !2, line: 291, type: !139)
!1150 = !DILocalVariable(name: "optc", scope: !1142, file: !2, line: 292, type: !83)
!1151 = !DILocalVariable(name: "ok", scope: !1142, file: !2, line: 293, type: !168)
!1152 = !DILocalVariable(name: "optargbuf", scope: !1153, file: !2, line: 305, type: !163)
!1153 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 304, column: 5)
!1154 = !DILocalVariable(name: "i", scope: !1155, file: !2, line: 352, type: !83)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 352, column: 7)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 350, column: 5)
!1157 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 347, column: 7)
!1158 = distinct !DIAssignID()
!1159 = !DILocation(line: 0, scope: !1153)
!1160 = !DILocation(line: 0, scope: !1142)
!1161 = !DILocation(line: 296, column: 21, scope: !1142)
!1162 = !DILocation(line: 296, column: 3, scope: !1142)
!1163 = !DILocation(line: 297, column: 3, scope: !1142)
!1164 = !DILocation(line: 298, column: 3, scope: !1142)
!1165 = !DILocation(line: 299, column: 3, scope: !1142)
!1166 = !DILocation(line: 301, column: 3, scope: !1142)
!1167 = !DILocation(line: 303, column: 18, scope: !1142)
!1168 = !DILocation(line: 303, column: 71, scope: !1142)
!1169 = !DILocation(line: 303, column: 3, scope: !1142)
!1170 = !DILocation(line: 305, column: 7, scope: !1153)
!1171 = !DILocation(line: 307, column: 7, scope: !1153)
!1172 = !DILocation(line: 333, column: 31, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 308, column: 9)
!1174 = !DILocation(line: 310, column: 25, scope: !1173)
!1175 = !DILocation(line: 311, column: 11, scope: !1173)
!1176 = !DILocation(line: 314, column: 25, scope: !1173)
!1177 = !DILocation(line: 315, column: 11, scope: !1173)
!1178 = !DILocation(line: 318, column: 24, scope: !1173)
!1179 = !DILocation(line: 319, column: 11, scope: !1173)
!1180 = !DILocation(line: 323, column: 15, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 323, column: 15)
!1182 = !DILocation(line: 323, column: 15, scope: !1173)
!1183 = !DILocation(line: 324, column: 19, scope: !1181)
!1184 = !DILocation(line: 324, column: 13, scope: !1181)
!1185 = !DILocation(line: 327, column: 30, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 326, column: 13)
!1187 = !DILocation(line: 327, column: 28, scope: !1186)
!1188 = distinct !DIAssignID()
!1189 = !DILocation(line: 328, column: 28, scope: !1186)
!1190 = distinct !DIAssignID()
!1191 = !DILocation(line: 329, column: 22, scope: !1186)
!1192 = !DILocation(line: 334, column: 31, scope: !1173)
!1193 = !DILocation(line: 333, column: 19, scope: !1173)
!1194 = !DILocation(line: 336, column: 11, scope: !1173)
!1195 = !DILocation(line: 338, column: 9, scope: !1173)
!1196 = !DILocation(line: 340, column: 9, scope: !1173)
!1197 = !DILocation(line: 343, column: 11, scope: !1173)
!1198 = !DILocation(line: 345, column: 5, scope: !1142)
!1199 = distinct !{!1199, !1169, !1198, !1039}
!1200 = !DILocation(line: 347, column: 15, scope: !1157)
!1201 = !DILocation(line: 347, column: 12, scope: !1157)
!1202 = !DILocation(line: 347, column: 7, scope: !1142)
!1203 = !DILocation(line: 0, scope: !1155)
!1204 = !DILocation(line: 352, column: 30, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 352, column: 7)
!1206 = !DILocation(line: 352, column: 7, scope: !1155)
!1207 = !DILocation(line: 348, column: 10, scope: !1157)
!1208 = !DILocation(line: 348, column: 5, scope: !1157)
!1209 = !DILocation(line: 353, column: 26, scope: !1205)
!1210 = !DILocation(line: 353, column: 15, scope: !1205)
!1211 = !DILocation(line: 353, column: 12, scope: !1205)
!1212 = !DILocation(line: 352, column: 39, scope: !1205)
!1213 = distinct !{!1213, !1206, !1214, !1039}
!1214 = !DILocation(line: 353, column: 40, scope: !1155)
!1215 = !DILocation(line: 0, scope: !1157)
!1216 = !DILocation(line: 356, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 356, column: 7)
!1218 = !DILocation(line: 356, column: 23, scope: !1217)
!1219 = !DILocation(line: 356, column: 34, scope: !1217)
!1220 = !DILocation(line: 356, column: 26, scope: !1217)
!1221 = !DILocation(line: 356, column: 41, scope: !1217)
!1222 = !DILocation(line: 356, column: 7, scope: !1142)
!1223 = !DILocation(line: 357, column: 5, scope: !1217)
!1224 = !DILocation(line: 359, column: 10, scope: !1142)
!1225 = !DILocation(line: 359, column: 3, scope: !1142)
!1226 = !DISubprogram(name: "bindtextdomain", scope: !974, file: !974, line: 86, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!136, !142, !142}
!1229 = !DISubprogram(name: "textdomain", scope: !974, file: !974, line: 82, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1230 = !DISubprogram(name: "atexit", scope: !1116, file: !1116, line: 602, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!83, !544}
!1233 = !DISubprogram(name: "getopt_long", scope: !392, file: !392, line: 66, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!83, !83, !1236, !142, !1238, !397}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1239 = distinct !DIAssignID()
!1240 = distinct !DIAssignID()
!1241 = distinct !DIAssignID()
!1242 = distinct !DIAssignID()
!1243 = distinct !DIAssignID()
!1244 = distinct !DIAssignID()
!1245 = !DILocation(line: 0, scope: !403)
!1246 = !DILocation(line: 0, scope: !1004, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 169, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !403, file: !2, line: 169, column: 7)
!1249 = !DILocation(line: 1361, column: 11, scope: !1004, inlinedAt: !1247)
!1250 = !DILocation(line: 1361, column: 10, scope: !1004, inlinedAt: !1247)
!1251 = !DILocation(line: 169, column: 7, scope: !403)
!1252 = !DILocation(line: 171, column: 17, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 170, column: 5)
!1254 = !DILocation(line: 172, column: 23, scope: !1253)
!1255 = !DILocation(line: 173, column: 5, scope: !1253)
!1256 = !DILocation(line: 175, column: 15, scope: !1248)
!1257 = !DILocation(line: 0, scope: !1248)
!1258 = !DILocation(line: 177, column: 15, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !403, file: !2, line: 177, column: 7)
!1260 = !DILocation(line: 177, column: 7, scope: !403)
!1261 = !DILocation(line: 179, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 178, column: 5)
!1263 = !DILocation(line: 180, column: 7, scope: !1262)
!1264 = !DILocation(line: 183, column: 3, scope: !403)
!1265 = !DILocation(line: 187, column: 3, scope: !403)
!1266 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1267, file: !418, line: 71, type: !1270)
!1267 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !418, file: !418, line: 71, type: !1268, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1271)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!428, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1271 = !{!1266, !1272, !1273, !1276}
!1272 = !DILocalVariable(name: "available", scope: !1267, file: !418, line: 73, type: !412)
!1273 = !DILocalVariable(name: "start", scope: !1274, file: !418, line: 77, type: !412)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !418, line: 76, column: 5)
!1275 = distinct !DILexicalBlock(scope: !1267, file: !418, line: 75, column: 7)
!1276 = !DILocalVariable(name: "g", scope: !1267, file: !418, line: 92, type: !428)
!1277 = !DILocation(line: 0, scope: !1267, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 187, column: 15, scope: !403)
!1279 = !DILocation(line: 73, column: 35, scope: !1267, inlinedAt: !1278)
!1280 = !DILocation(line: 75, column: 17, scope: !1275, inlinedAt: !1278)
!1281 = !DILocation(line: 75, column: 32, scope: !1275, inlinedAt: !1278)
!1282 = !DILocalVariable(name: "__stream", arg: 1, scope: !1283, file: !1284, line: 128, type: !202)
!1283 = distinct !DISubprogram(name: "feof_unlocked", scope: !1284, file: !1284, line: 128, type: !1285, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1287)
!1284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!83, !202}
!1287 = !{!1282}
!1288 = !DILocation(line: 0, scope: !1283, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 75, column: 37, scope: !1275, inlinedAt: !1278)
!1290 = !DILocation(line: 130, column: 10, scope: !1283, inlinedAt: !1289)
!1291 = !{!1292, !993, i64 0}
!1292 = !{!"_IO_FILE", !993, i64 0, !922, i64 8, !922, i64 16, !922, i64 24, !922, i64 32, !922, i64 40, !922, i64 48, !922, i64 56, !922, i64 64, !922, i64 72, !922, i64 80, !922, i64 88, !922, i64 96, !922, i64 104, !993, i64 112, !993, i64 116, !1293, i64 120, !1034, i64 128, !923, i64 130, !923, i64 131, !922, i64 136, !1293, i64 144, !922, i64 152, !922, i64 160, !922, i64 168, !922, i64 176, !1293, i64 184, !993, i64 192, !923, i64 196}
!1293 = !{!"long", !923, i64 0}
!1294 = !DILocation(line: 75, column: 37, scope: !1275, inlinedAt: !1278)
!1295 = !DILocation(line: 75, column: 7, scope: !1267, inlinedAt: !1278)
!1296 = !DILocation(line: 78, column: 15, scope: !1297, inlinedAt: !1278)
!1297 = distinct !DILexicalBlock(scope: !1274, file: !418, line: 78, column: 11)
!1298 = !DILocation(line: 78, column: 11, scope: !1274, inlinedAt: !1278)
!1299 = !DILocation(line: 82, column: 49, scope: !1300, inlinedAt: !1278)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !418, line: 81, column: 9)
!1301 = !DILocalVariable(name: "__dest", arg: 1, scope: !1302, file: !1303, line: 34, type: !137)
!1302 = distinct !DISubprogram(name: "memmove", scope: !1303, file: !1303, line: 34, type: !1304, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1306)
!1303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!137, !137, !1140, !139}
!1306 = !{!1301, !1307, !1308}
!1307 = !DILocalVariable(name: "__src", arg: 2, scope: !1302, file: !1303, line: 34, type: !1140)
!1308 = !DILocalVariable(name: "__len", arg: 3, scope: !1302, file: !1303, line: 34, type: !139)
!1309 = !DILocation(line: 0, scope: !1302, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 82, column: 11, scope: !1300, inlinedAt: !1278)
!1311 = !DILocation(line: 36, column: 10, scope: !1302, inlinedAt: !1310)
!1312 = !DILocation(line: 0, scope: !1274, inlinedAt: !1278)
!1313 = !DILocation(line: 0, scope: !1297, inlinedAt: !1278)
!1314 = !DILocation(line: 85, column: 23, scope: !1274, inlinedAt: !1278)
!1315 = !DILocation(line: 86, column: 41, scope: !1274, inlinedAt: !1278)
!1316 = !DILocation(line: 89, column: 5, scope: !1274, inlinedAt: !1278)
!1317 = !DILocation(line: 90, column: 17, scope: !1318, inlinedAt: !1278)
!1318 = distinct !DILexicalBlock(scope: !1267, file: !418, line: 90, column: 7)
!1319 = !DILocation(line: 90, column: 7, scope: !1267, inlinedAt: !1278)
!1320 = !DILocation(line: 92, column: 39, scope: !1267, inlinedAt: !1278)
!1321 = !DILocalVariable(name: "mbs", scope: !1322, file: !126, line: 244, type: !1331)
!1322 = distinct !DISubprogram(name: "mcel_scan", scope: !126, file: !126, line: 230, type: !1323, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1325)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!428, !142, !142}
!1325 = !{!1326, !1327, !1328, !1321, !1329, !1330}
!1326 = !DILocalVariable(name: "p", arg: 1, scope: !1322, file: !126, line: 230, type: !142)
!1327 = !DILocalVariable(name: "lim", arg: 2, scope: !1322, file: !126, line: 230, type: !142)
!1328 = !DILocalVariable(name: "c", scope: !1322, file: !126, line: 235, type: !4)
!1329 = !DILocalVariable(name: "ch", scope: !1322, file: !126, line: 267, type: !432)
!1330 = !DILocalVariable(name: "len", scope: !1322, file: !126, line: 268, type: !139)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !572, line: 6, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !574, line: 21, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 13, size: 64, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1333, file: !574, line: 15, baseType: !83, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1333, file: !574, line: 20, baseType: !1337, size: 32, offset: 32)
!1337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !574, line: 16, size: 32, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1337, file: !574, line: 18, baseType: !69, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1337, file: !574, line: 19, baseType: !266, size: 32)
!1341 = !DILocation(line: 0, scope: !1322, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 92, column: 14, scope: !1267, inlinedAt: !1278)
!1343 = !DILocation(line: 235, column: 12, scope: !1322, inlinedAt: !1342)
!1344 = !DILocalVariable(name: "c", arg: 1, scope: !1345, file: !126, line: 215, type: !4)
!1345 = distinct !DISubprogram(name: "mcel_isbasic", scope: !126, file: !126, line: 215, type: !1346, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1348)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!168, !4}
!1348 = !{!1344}
!1349 = !DILocation(line: 0, scope: !1345, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 236, column: 7, scope: !1351, inlinedAt: !1342)
!1351 = distinct !DILexicalBlock(scope: !1322, file: !126, line: 236, column: 7)
!1352 = !DILocation(line: 217, column: 10, scope: !1345, inlinedAt: !1350)
!1353 = !DILocation(line: 236, column: 7, scope: !1322, inlinedAt: !1342)
!1354 = !DILocalVariable(name: "len", arg: 2, scope: !1355, file: !126, line: 167, type: !139)
!1355 = distinct !DISubprogram(name: "mcel_ch", scope: !126, file: !126, line: 167, type: !1356, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!428, !432, !139}
!1358 = !{!1359, !1354}
!1359 = !DILocalVariable(name: "ch", arg: 1, scope: !1355, file: !126, line: 167, type: !432)
!1360 = !DILocation(line: 0, scope: !1355, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 237, column: 12, scope: !1351, inlinedAt: !1342)
!1362 = !DILocation(line: 172, column: 3, scope: !1355, inlinedAt: !1361)
!1363 = !DILocation(line: 237, column: 5, scope: !1351, inlinedAt: !1342)
!1364 = !DILocation(line: 93, column: 39, scope: !1267, inlinedAt: !1278)
!1365 = !DILocation(line: 244, column: 3, scope: !1322, inlinedAt: !1342)
!1366 = !DILocation(line: 244, column: 30, scope: !1322, inlinedAt: !1342)
!1367 = !{!1368, !993, i64 0}
!1368 = !{!"", !993, i64 0, !923, i64 4}
!1369 = distinct !DIAssignID()
!1370 = !DILocation(line: 267, column: 3, scope: !1322, inlinedAt: !1342)
!1371 = !DILocation(line: 268, column: 38, scope: !1322, inlinedAt: !1342)
!1372 = !DILocation(line: 268, column: 16, scope: !1322, inlinedAt: !1342)
!1373 = !DILocation(line: 274, column: 7, scope: !1374, inlinedAt: !1342)
!1374 = distinct !DILexicalBlock(scope: !1322, file: !126, line: 274, column: 7)
!1375 = !DILocation(line: 274, column: 7, scope: !1322, inlinedAt: !1342)
!1376 = !{!"branch_weights", i32 1, i32 2000}
!1377 = !DILocalVariable(name: "err", arg: 1, scope: !1378, file: !126, line: 175, type: !144)
!1378 = distinct !DISubprogram(name: "mcel_err", scope: !126, file: !126, line: 175, type: !1379, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!428, !144}
!1381 = !{!1377}
!1382 = !DILocation(line: 0, scope: !1378, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 275, column: 12, scope: !1374, inlinedAt: !1342)
!1384 = !DILocation(line: 178, column: 3, scope: !1378, inlinedAt: !1383)
!1385 = !DILocation(line: 275, column: 5, scope: !1374, inlinedAt: !1342)
!1386 = !DILocation(line: 279, column: 19, scope: !1322, inlinedAt: !1342)
!1387 = !DILocation(line: 0, scope: !1355, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 279, column: 10, scope: !1322, inlinedAt: !1342)
!1389 = !DILocation(line: 169, column: 3, scope: !1355, inlinedAt: !1388)
!1390 = !DILocation(line: 170, column: 3, scope: !1355, inlinedAt: !1388)
!1391 = !DILocation(line: 171, column: 3, scope: !1355, inlinedAt: !1388)
!1392 = !DILocation(line: 172, column: 3, scope: !1355, inlinedAt: !1388)
!1393 = !DILocation(line: 279, column: 3, scope: !1322, inlinedAt: !1342)
!1394 = !DILocation(line: 280, column: 1, scope: !1322, inlinedAt: !1342)
!1395 = !DILocation(line: 94, column: 9, scope: !1396, inlinedAt: !1278)
!1396 = distinct !DILexicalBlock(scope: !1267, file: !418, line: 94, column: 7)
!1397 = !DILocation(line: 94, column: 7, scope: !1267, inlinedAt: !1278)
!1398 = !DILocation(line: 92, column: 14, scope: !1267, inlinedAt: !1278)
!1399 = !DILocation(line: 95, column: 5, scope: !1396, inlinedAt: !1278)
!1400 = !DILocation(line: 99, column: 30, scope: !1401, inlinedAt: !1278)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !418, line: 97, column: 5)
!1402 = !DILocation(line: 99, column: 14, scope: !1401, inlinedAt: !1278)
!1403 = !DILocation(line: 187, column: 15, scope: !403)
!1404 = !DILocation(line: 0, scope: !1396, inlinedAt: !1278)
!1405 = !DILocation(line: 191, column: 11, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 190, column: 9)
!1407 = distinct !DILexicalBlock(scope: !439, file: !2, line: 189, column: 11)
!1408 = !DILocation(line: 193, column: 11, scope: !1406)
!1409 = distinct !{!1409, !1265, !1410, !1039}
!1410 = !DILocation(line: 265, column: 5, scope: !403)
!1411 = !DILocation(line: 195, column: 5, scope: !439)
!1412 = !DILocalVariable(name: "g", arg: 2, scope: !1413, file: !2, line: 115, type: !428)
!1413 = distinct !DISubprogram(name: "adjust_column", scope: !2, file: !2, line: 115, type: !1414, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1416)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!139, !139, !428}
!1416 = !{!1417, !1412, !1418}
!1417 = !DILocalVariable(name: "column", arg: 1, scope: !1413, file: !2, line: 115, type: !139)
!1418 = !DILocalVariable(name: "width", scope: !1419, file: !2, line: 134, type: !83)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 133, column: 13)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 130, column: 15)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 129, column: 9)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 126, column: 16)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 124, column: 16)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 119, column: 11)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 118, column: 5)
!1426 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 117, column: 7)
!1427 = !DILocation(line: 0, scope: !1413, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 196, column: 16, scope: !439)
!1429 = !DILocation(line: 117, column: 7, scope: !1426, inlinedAt: !1428)
!1430 = !DILocation(line: 117, column: 21, scope: !1426, inlinedAt: !1428)
!1431 = !DILocation(line: 117, column: 7, scope: !1413, inlinedAt: !1428)
!1432 = !DILocation(line: 119, column: 11, scope: !1425, inlinedAt: !1428)
!1433 = !DILocation(line: 121, column: 22, scope: !1434, inlinedAt: !1428)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 121, column: 15)
!1435 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 120, column: 9)
!1436 = !DILocation(line: 121, column: 15, scope: !1435, inlinedAt: !1428)
!1437 = !DILocation(line: 122, column: 23, scope: !1434, inlinedAt: !1428)
!1438 = !DILocation(line: 122, column: 20, scope: !1434, inlinedAt: !1428)
!1439 = !DILocation(line: 122, column: 13, scope: !1434, inlinedAt: !1428)
!1440 = !DILocation(line: 127, column: 16, scope: !1422, inlinedAt: !1428)
!1441 = !DILocation(line: 127, column: 9, scope: !1422, inlinedAt: !1428)
!1442 = !DILocation(line: 130, column: 29, scope: !1420, inlinedAt: !1428)
!1443 = !DILocation(line: 130, column: 15, scope: !1421, inlinedAt: !1428)
!1444 = !DILocalVariable(name: "wc", arg: 1, scope: !1445, file: !1446, line: 1004, type: !432)
!1445 = distinct !DISubprogram(name: "c32width", scope: !1446, file: !1446, line: 1004, type: !1447, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1449)
!1446 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!83, !432}
!1449 = !{!1444}
!1450 = !DILocation(line: 0, scope: !1445, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 134, column: 27, scope: !1419, inlinedAt: !1428)
!1452 = !DILocation(line: 1010, column: 10, scope: !1445, inlinedAt: !1451)
!1453 = !DILocation(line: 0, scope: !1419, inlinedAt: !1428)
!1454 = !DILocation(line: 136, column: 44, scope: !1419, inlinedAt: !1428)
!1455 = !DILocation(line: 136, column: 38, scope: !1419, inlinedAt: !1428)
!1456 = !DILocation(line: 0, scope: !1420, inlinedAt: !1428)
!1457 = !DILocation(line: 138, column: 21, scope: !1421, inlinedAt: !1428)
!1458 = !DILocation(line: 138, column: 18, scope: !1421, inlinedAt: !1428)
!1459 = !DILocation(line: 142, column: 12, scope: !1426, inlinedAt: !1428)
!1460 = !DILocation(line: 198, column: 18, scope: !444)
!1461 = !DILocation(line: 198, column: 11, scope: !439)
!1462 = !DILocation(line: 203, column: 15, scope: !442)
!1463 = !DILocation(line: 203, column: 15, scope: !443)
!1464 = !DILocation(line: 0, scope: !441)
!1465 = !DILocation(line: 208, column: 45, scope: !441)
!1466 = !DILocation(line: 210, column: 41, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !449, file: !2, line: 210, column: 15)
!1468 = !DILocation(line: 210, column: 15, scope: !449)
!1469 = !DILocation(line: 220, column: 19, scope: !452)
!1470 = !DILocation(line: 220, column: 19, scope: !441)
!1471 = !DILocation(line: 0, scope: !1322, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 212, column: 24, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 211, column: 17)
!1474 = !DILocation(line: 235, column: 12, scope: !1322, inlinedAt: !1472)
!1475 = !DILocation(line: 0, scope: !1345, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 236, column: 7, scope: !1351, inlinedAt: !1472)
!1477 = !DILocation(line: 217, column: 10, scope: !1345, inlinedAt: !1476)
!1478 = !DILocation(line: 236, column: 7, scope: !1322, inlinedAt: !1472)
!1479 = !DILocation(line: 0, scope: !1355, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 237, column: 12, scope: !1351, inlinedAt: !1472)
!1481 = !DILocation(line: 172, column: 3, scope: !1355, inlinedAt: !1480)
!1482 = !DILocation(line: 213, column: 23, scope: !1473)
!1483 = !DILocation(line: 237, column: 5, scope: !1351, inlinedAt: !1472)
!1484 = !DILocation(line: 244, column: 3, scope: !1322, inlinedAt: !1472)
!1485 = !DILocation(line: 244, column: 30, scope: !1322, inlinedAt: !1472)
!1486 = distinct !DIAssignID()
!1487 = !DILocation(line: 267, column: 3, scope: !1322, inlinedAt: !1472)
!1488 = !DILocation(line: 268, column: 38, scope: !1322, inlinedAt: !1472)
!1489 = !DILocation(line: 268, column: 16, scope: !1322, inlinedAt: !1472)
!1490 = !DILocation(line: 274, column: 7, scope: !1374, inlinedAt: !1472)
!1491 = !DILocation(line: 274, column: 7, scope: !1322, inlinedAt: !1472)
!1492 = !DILocation(line: 279, column: 19, scope: !1322, inlinedAt: !1472)
!1493 = !DILocation(line: 0, scope: !1355, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 279, column: 10, scope: !1322, inlinedAt: !1472)
!1495 = !DILocation(line: 169, column: 3, scope: !1355, inlinedAt: !1494)
!1496 = !DILocation(line: 170, column: 3, scope: !1355, inlinedAt: !1494)
!1497 = !DILocation(line: 171, column: 3, scope: !1355, inlinedAt: !1494)
!1498 = !DILocation(line: 172, column: 3, scope: !1355, inlinedAt: !1494)
!1499 = !DILocation(line: 279, column: 3, scope: !1322, inlinedAt: !1472)
!1500 = !DILocation(line: 280, column: 1, scope: !1322, inlinedAt: !1472)
!1501 = !DILocation(line: 212, column: 24, scope: !1473)
!1502 = !DILocation(line: 0, scope: !449)
!1503 = !DILocalVariable(name: "wc", arg: 1, scope: !1504, file: !82, line: 178, type: !432)
!1504 = distinct !DISubprogram(name: "c32issep", scope: !82, file: !82, line: 178, type: !1505, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!168, !432}
!1507 = !{!1503}
!1508 = !DILocation(line: 0, scope: !1504, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 213, column: 23, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 213, column: 23)
!1511 = !DILocalVariable(name: "wc", arg: 1, scope: !1512, file: !1446, line: 770, type: !1515)
!1512 = distinct !DISubprogram(name: "c32isblank", scope: !1446, file: !1446, line: 770, type: !1513, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1517)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!83, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1516, line: 20, baseType: !69)
!1516 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1517 = !{!1511}
!1518 = !DILocation(line: 0, scope: !1512, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 181, column: 13, scope: !1504, inlinedAt: !1509)
!1520 = !DILocation(line: 776, column: 10, scope: !1512, inlinedAt: !1519)
!1521 = !DILocation(line: 181, column: 11, scope: !1504, inlinedAt: !1509)
!1522 = !DILocation(line: 210, column: 66, scope: !1467)
!1523 = distinct !{!1523, !1468, !1524, !1039}
!1524 = !DILocation(line: 218, column: 17, scope: !449)
!1525 = !DILocation(line: 222, column: 31, scope: !451)
!1526 = !DILocation(line: 224, column: 19, scope: !451)
!1527 = !DILocation(line: 227, column: 47, scope: !451)
!1528 = !DILocation(line: 228, column: 39, scope: !451)
!1529 = !DILocation(line: 0, scope: !1302, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 227, column: 19, scope: !451)
!1531 = !DILocation(line: 36, column: 10, scope: !1302, inlinedAt: !1530)
!1532 = !DILocation(line: 0, scope: !451)
!1533 = !DILocation(line: 232, column: 49, scope: !451)
!1534 = !DILocation(line: 233, column: 45, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !455, file: !2, line: 233, column: 19)
!1536 = !DILocation(line: 233, column: 19, scope: !455)
!1537 = !DILocation(line: 0, scope: !1322, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 236, column: 28, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 235, column: 21)
!1540 = !DILocation(line: 235, column: 12, scope: !1322, inlinedAt: !1538)
!1541 = !DILocation(line: 0, scope: !1345, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 236, column: 7, scope: !1351, inlinedAt: !1538)
!1543 = !DILocation(line: 217, column: 10, scope: !1345, inlinedAt: !1542)
!1544 = !DILocation(line: 236, column: 7, scope: !1322, inlinedAt: !1538)
!1545 = !DILocation(line: 0, scope: !1355, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 237, column: 12, scope: !1351, inlinedAt: !1538)
!1547 = !DILocation(line: 172, column: 3, scope: !1355, inlinedAt: !1546)
!1548 = !DILocation(line: 237, column: 5, scope: !1351, inlinedAt: !1538)
!1549 = !DILocation(line: 244, column: 3, scope: !1322, inlinedAt: !1538)
!1550 = !DILocation(line: 244, column: 30, scope: !1322, inlinedAt: !1538)
!1551 = distinct !DIAssignID()
!1552 = !DILocation(line: 267, column: 3, scope: !1322, inlinedAt: !1538)
!1553 = !DILocation(line: 268, column: 38, scope: !1322, inlinedAt: !1538)
!1554 = !DILocation(line: 268, column: 16, scope: !1322, inlinedAt: !1538)
!1555 = !DILocation(line: 274, column: 7, scope: !1374, inlinedAt: !1538)
!1556 = !DILocation(line: 274, column: 7, scope: !1322, inlinedAt: !1538)
!1557 = !DILocation(line: 279, column: 19, scope: !1322, inlinedAt: !1538)
!1558 = !DILocation(line: 0, scope: !1355, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 279, column: 10, scope: !1322, inlinedAt: !1538)
!1560 = !DILocation(line: 169, column: 3, scope: !1355, inlinedAt: !1559)
!1561 = !DILocation(line: 170, column: 3, scope: !1355, inlinedAt: !1559)
!1562 = !DILocation(line: 171, column: 3, scope: !1355, inlinedAt: !1559)
!1563 = !DILocation(line: 172, column: 3, scope: !1355, inlinedAt: !1559)
!1564 = !DILocation(line: 279, column: 3, scope: !1322, inlinedAt: !1538)
!1565 = !DILocation(line: 280, column: 1, scope: !1322, inlinedAt: !1538)
!1566 = !DILocation(line: 236, column: 28, scope: !1539)
!1567 = !DILocation(line: 0, scope: !455)
!1568 = !DILocation(line: 0, scope: !1413, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 237, column: 32, scope: !1539)
!1570 = !DILocation(line: 117, column: 7, scope: !1426, inlinedAt: !1569)
!1571 = !DILocation(line: 117, column: 21, scope: !1426, inlinedAt: !1569)
!1572 = !DILocation(line: 117, column: 7, scope: !1413, inlinedAt: !1569)
!1573 = !DILocation(line: 119, column: 11, scope: !1425, inlinedAt: !1569)
!1574 = !DILocation(line: 121, column: 22, scope: !1434, inlinedAt: !1569)
!1575 = !DILocation(line: 121, column: 15, scope: !1435, inlinedAt: !1569)
!1576 = !DILocation(line: 122, column: 23, scope: !1434, inlinedAt: !1569)
!1577 = !DILocation(line: 122, column: 20, scope: !1434, inlinedAt: !1569)
!1578 = !DILocation(line: 122, column: 13, scope: !1434, inlinedAt: !1569)
!1579 = !DILocation(line: 127, column: 16, scope: !1422, inlinedAt: !1569)
!1580 = !DILocation(line: 127, column: 9, scope: !1422, inlinedAt: !1569)
!1581 = !DILocation(line: 130, column: 29, scope: !1420, inlinedAt: !1569)
!1582 = !DILocation(line: 130, column: 15, scope: !1421, inlinedAt: !1569)
!1583 = !DILocation(line: 0, scope: !1445, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 134, column: 27, scope: !1419, inlinedAt: !1569)
!1585 = !DILocation(line: 1010, column: 10, scope: !1445, inlinedAt: !1584)
!1586 = !DILocation(line: 0, scope: !1419, inlinedAt: !1569)
!1587 = !DILocation(line: 136, column: 44, scope: !1419, inlinedAt: !1569)
!1588 = !DILocation(line: 136, column: 38, scope: !1419, inlinedAt: !1569)
!1589 = !DILocation(line: 0, scope: !1420, inlinedAt: !1569)
!1590 = !DILocation(line: 138, column: 21, scope: !1421, inlinedAt: !1569)
!1591 = !DILocation(line: 138, column: 18, scope: !1421, inlinedAt: !1569)
!1592 = !DILocation(line: 142, column: 12, scope: !1426, inlinedAt: !1569)
!1593 = !DILocation(line: 234, column: 34, scope: !1535)
!1594 = distinct !{!1594, !1536, !1595, !1039}
!1595 = !DILocation(line: 238, column: 21, scope: !455)
!1596 = !DILocation(line: 243, column: 26, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !443, file: !2, line: 243, column: 15)
!1598 = !DILocation(line: 243, column: 15, scope: !443)
!1599 = !DILocalVariable(name: "g", arg: 2, scope: !1600, file: !418, line: 107, type: !428)
!1600 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !418, file: !418, line: 107, type: !1601, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1603)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!136, !1270, !428}
!1603 = !{!1604, !1599}
!1604 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1600, file: !418, line: 107, type: !1270)
!1605 = !DILocation(line: 0, scope: !1600, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 245, column: 33, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 244, column: 13)
!1608 = !DILocation(line: 109, column: 21, scope: !1609, inlinedAt: !1606)
!1609 = distinct !DILexicalBlock(scope: !1600, file: !418, line: 109, column: 7)
!1610 = !DILocation(line: 109, column: 7, scope: !1600, inlinedAt: !1606)
!1611 = !DILocation(line: 111, column: 41, scope: !1600, inlinedAt: !1606)
!1612 = !DILocation(line: 111, column: 24, scope: !1600, inlinedAt: !1606)
!1613 = !DILocalVariable(name: "__dest", arg: 1, scope: !1614, file: !1303, line: 26, type: !1617)
!1614 = distinct !DISubprogram(name: "memcpy", scope: !1303, file: !1303, line: 26, type: !1615, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1618)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!137, !1617, !1139, !139}
!1617 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1618 = !{!1613, !1619, !1620}
!1619 = !DILocalVariable(name: "__src", arg: 2, scope: !1614, file: !1303, line: 26, type: !1139)
!1620 = !DILocalVariable(name: "__len", arg: 3, scope: !1614, file: !1303, line: 26, type: !139)
!1621 = !DILocation(line: 0, scope: !1614, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 245, column: 15, scope: !1607)
!1623 = !DILocation(line: 29, column: 10, scope: !1614, inlinedAt: !1622)
!1624 = !{!1625, !1627}
!1625 = distinct !{!1625, !1626, !"memcpy.inline: argument 0"}
!1626 = distinct !{!1626, !"memcpy.inline"}
!1627 = distinct !{!1627, !1626, !"memcpy.inline: argument 1"}
!1628 = !DILocation(line: 247, column: 15, scope: !1607)
!1629 = !DILocation(line: 250, column: 11, scope: !443)
!1630 = !DILocation(line: 252, column: 11, scope: !443)
!1631 = !DILocation(line: 257, column: 41, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !439, file: !2, line: 257, column: 11)
!1633 = !DILocation(line: 257, column: 27, scope: !1632)
!1634 = !DILocation(line: 257, column: 11, scope: !439)
!1635 = !DILocation(line: 259, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 258, column: 9)
!1637 = !DILocation(line: 261, column: 9, scope: !1636)
!1638 = !DILocation(line: 263, column: 24, scope: !439)
!1639 = !DILocation(line: 0, scope: !1600, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 263, column: 38, scope: !439)
!1641 = !DILocation(line: 109, column: 21, scope: !1609, inlinedAt: !1640)
!1642 = !DILocation(line: 109, column: 7, scope: !1600, inlinedAt: !1640)
!1643 = !DILocation(line: 111, column: 41, scope: !1600, inlinedAt: !1640)
!1644 = !DILocation(line: 111, column: 24, scope: !1600, inlinedAt: !1640)
!1645 = !DILocation(line: 0, scope: !1614, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 263, column: 7, scope: !439)
!1647 = !DILocation(line: 29, column: 10, scope: !1614, inlinedAt: !1646)
!1648 = !DILocation(line: 264, column: 18, scope: !439)
!1649 = !DILocation(line: 267, column: 17, scope: !403)
!1650 = !DILocalVariable(name: "__stream", arg: 1, scope: !1651, file: !1284, line: 135, type: !202)
!1651 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1284, file: !1284, line: 135, type: !1285, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1652)
!1652 = !{!1650}
!1653 = !DILocation(line: 0, scope: !1651, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 268, column: 8, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !403, file: !2, line: 268, column: 7)
!1656 = !DILocation(line: 137, column: 10, scope: !1651, inlinedAt: !1654)
!1657 = !DILocation(line: 268, column: 8, scope: !1655)
!1658 = !DILocation(line: 268, column: 7, scope: !403)
!1659 = !DILocation(line: 271, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !403, file: !2, line: 271, column: 7)
!1661 = !DILocation(line: 271, column: 7, scope: !403)
!1662 = !DILocation(line: 272, column: 5, scope: !1660)
!1663 = !DILocation(line: 0, scope: !1004, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 274, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !403, file: !2, line: 274, column: 7)
!1666 = !DILocation(line: 1361, column: 11, scope: !1004, inlinedAt: !1664)
!1667 = !DILocation(line: 1361, column: 10, scope: !1004, inlinedAt: !1664)
!1668 = !DILocation(line: 274, column: 7, scope: !403)
!1669 = !DILocation(line: 275, column: 5, scope: !1665)
!1670 = !DILocation(line: 276, column: 12, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 276, column: 12)
!1672 = !DILocation(line: 276, column: 29, scope: !1671)
!1673 = !DILocation(line: 276, column: 34, scope: !1671)
!1674 = !DILocation(line: 277, column: 19, scope: !1671)
!1675 = !DILocation(line: 277, column: 5, scope: !1671)
!1676 = !DILocation(line: 279, column: 7, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !403, file: !2, line: 279, column: 7)
!1678 = !DILocation(line: 279, column: 7, scope: !403)
!1679 = !DILocation(line: 281, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 280, column: 5)
!1681 = !DILocation(line: 282, column: 7, scope: !1680)
!1682 = !DILocation(line: 286, column: 1, scope: !403)
!1683 = !DISubprogram(name: "__errno_location", scope: !1684, file: !1684, line: 37, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1684 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!397}
!1687 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1688, file: !1688, line: 25, type: !1689, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1688 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!137, !137, !1140, !141, !141}
!1691 = !DISubprogram(name: "mbrtoc32", scope: !433, file: !433, line: 57, type: !1692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!139, !1694, !982, !139, !1696}
!1694 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1695)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1698 = distinct !DISubprogram(name: "write_out", scope: !2, file: !2, line: 147, type: !1699, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1701)
!1699 = !DISubroutineType(cc: DW_CC_nocall, types: !1700)
!1700 = !{null, !142, !139, !168}
!1701 = !{!1702, !1703, !1704, !1705, !1708, !1709}
!1702 = !DILocalVariable(name: "line", arg: 1, scope: !1698, file: !2, line: 147, type: !142)
!1703 = !DILocalVariable(name: "line_len", arg: 2, scope: !1698, file: !2, line: 147, type: !139)
!1704 = !DILocalVariable(name: "newline", arg: 3, scope: !1698, file: !2, line: 147, type: !168)
!1705 = !DILocalVariable(name: "__ptr", scope: !1706, file: !2, line: 149, type: !142)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !2, line: 149, column: 7)
!1707 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 149, column: 7)
!1708 = !DILocalVariable(name: "__stream", scope: !1706, file: !2, line: 149, type: !202)
!1709 = !DILocalVariable(name: "__cnt", scope: !1706, file: !2, line: 149, type: !139)
!1710 = !DILocation(line: 0, scope: !1698)
!1711 = !DILocation(line: 149, column: 7, scope: !1707)
!1712 = !DILocation(line: 149, column: 54, scope: !1707)
!1713 = !DILocation(line: 150, column: 7, scope: !1707)
!1714 = !DILocation(line: 150, column: 19, scope: !1707)
!1715 = !DILocalVariable(name: "__c", arg: 1, scope: !1716, file: !1284, line: 108, type: !83)
!1716 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1284, file: !1284, line: 108, type: !1717, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!83, !83}
!1719 = !{!1715}
!1720 = !DILocation(line: 0, scope: !1716, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 150, column: 22, scope: !1707)
!1722 = !DILocation(line: 110, column: 10, scope: !1716, inlinedAt: !1721)
!1723 = !{!1292, !922, i64 40}
!1724 = !{!1292, !922, i64 48}
!1725 = !{!"branch_weights", i32 2000, i32 1}
!1726 = !DILocation(line: 149, column: 7, scope: !1698)
!1727 = !DILocation(line: 150, column: 37, scope: !1707)
!1728 = !DILocation(line: 948, column: 21, scope: !1729, inlinedAt: !1732)
!1729 = distinct !DISubprogram(name: "write_error", scope: !82, file: !82, line: 946, type: !545, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1730)
!1730 = !{!1731}
!1731 = !DILocalVariable(name: "saved_errno", scope: !1729, file: !82, line: 948, type: !83)
!1732 = distinct !DILocation(line: 151, column: 5, scope: !1707)
!1733 = !DILocation(line: 0, scope: !1729, inlinedAt: !1732)
!1734 = !DILocation(line: 949, column: 3, scope: !1729, inlinedAt: !1732)
!1735 = !DILocation(line: 950, column: 11, scope: !1729, inlinedAt: !1732)
!1736 = !DILocation(line: 950, column: 3, scope: !1729, inlinedAt: !1732)
!1737 = !DILocation(line: 951, column: 3, scope: !1729, inlinedAt: !1732)
!1738 = !DILocation(line: 952, column: 3, scope: !1729, inlinedAt: !1732)
!1739 = !DILocation(line: 152, column: 1, scope: !1698)
!1740 = !DISubprogram(name: "wcwidth", scope: !1741, file: !1741, line: 368, type: !1742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1741 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!83, !1744}
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1745, line: 24, baseType: !83)
!1745 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_wchar_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1bf0c51e90dd5eb05cdcc01afdea587a")
!1746 = !DISubprogram(name: "iswblank", scope: !1747, file: !1747, line: 146, type: !1513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1747 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1748 = !DISubprogram(name: "__builtin___memcpy_chk", scope: !1303, file: !1303, line: 29, type: !1689, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1749 = !DISubprogram(name: "clearerr_unlocked", scope: !987, file: !987, line: 794, type: !1750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !202}
!1752 = !DISubprogram(name: "__overflow", scope: !987, file: !987, line: 886, type: !1753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!83, !202, !83}
!1755 = !DISubprogram(name: "fflush_unlocked", scope: !987, file: !987, line: 239, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1756 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !484, file: !484, line: 50, type: !942, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1757)
!1757 = !{!1758}
!1758 = !DILocalVariable(name: "file", arg: 1, scope: !1756, file: !484, line: 50, type: !142)
!1759 = !DILocation(line: 0, scope: !1756)
!1760 = !DILocation(line: 52, column: 13, scope: !1756)
!1761 = !DILocation(line: 53, column: 1, scope: !1756)
!1762 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !484, file: !484, line: 87, type: !1763, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !168}
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "ignore", arg: 1, scope: !1762, file: !484, line: 87, type: !168)
!1767 = !DILocation(line: 0, scope: !1762)
!1768 = !DILocation(line: 89, column: 16, scope: !1762)
!1769 = !{!1770, !1770, i64 0}
!1770 = !{!"_Bool", !923, i64 0}
!1771 = !DILocation(line: 90, column: 1, scope: !1762)
!1772 = distinct !DISubprogram(name: "close_stdout", scope: !484, file: !484, line: 116, type: !545, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1773)
!1773 = !{!1774}
!1774 = !DILocalVariable(name: "write_error", scope: !1775, file: !484, line: 121, type: !142)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !484, line: 120, column: 5)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !484, line: 118, column: 7)
!1777 = !DILocation(line: 118, column: 21, scope: !1776)
!1778 = !DILocation(line: 118, column: 7, scope: !1776)
!1779 = !DILocation(line: 118, column: 29, scope: !1776)
!1780 = !DILocation(line: 119, column: 7, scope: !1776)
!1781 = !DILocation(line: 119, column: 12, scope: !1776)
!1782 = !{i8 0, i8 2}
!1783 = !DILocation(line: 119, column: 25, scope: !1776)
!1784 = !DILocation(line: 119, column: 28, scope: !1776)
!1785 = !DILocation(line: 119, column: 34, scope: !1776)
!1786 = !DILocation(line: 118, column: 7, scope: !1772)
!1787 = !DILocation(line: 121, column: 33, scope: !1775)
!1788 = !DILocation(line: 0, scope: !1775)
!1789 = !DILocation(line: 122, column: 11, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1775, file: !484, line: 122, column: 11)
!1791 = !DILocation(line: 0, scope: !1790)
!1792 = !DILocation(line: 122, column: 11, scope: !1775)
!1793 = !DILocation(line: 123, column: 9, scope: !1790)
!1794 = !DILocation(line: 126, column: 9, scope: !1790)
!1795 = !DILocation(line: 128, column: 14, scope: !1775)
!1796 = !DILocation(line: 128, column: 7, scope: !1775)
!1797 = !DILocation(line: 133, column: 42, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1772, file: !484, line: 133, column: 7)
!1799 = !DILocation(line: 133, column: 28, scope: !1798)
!1800 = !DILocation(line: 133, column: 50, scope: !1798)
!1801 = !DILocation(line: 133, column: 7, scope: !1772)
!1802 = !DILocation(line: 134, column: 12, scope: !1798)
!1803 = !DILocation(line: 134, column: 5, scope: !1798)
!1804 = !DILocation(line: 135, column: 1, scope: !1772)
!1805 = !DISubprogram(name: "_exit", scope: !1806, file: !1806, line: 624, type: !911, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1806 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1807 = distinct !DISubprogram(name: "verror", scope: !499, file: !499, line: 251, type: !1808, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !83, !83, !142, !509}
!1810 = !{!1811, !1812, !1813, !1814}
!1811 = !DILocalVariable(name: "status", arg: 1, scope: !1807, file: !499, line: 251, type: !83)
!1812 = !DILocalVariable(name: "errnum", arg: 2, scope: !1807, file: !499, line: 251, type: !83)
!1813 = !DILocalVariable(name: "message", arg: 3, scope: !1807, file: !499, line: 251, type: !142)
!1814 = !DILocalVariable(name: "args", arg: 4, scope: !1807, file: !499, line: 251, type: !509)
!1815 = !DILocation(line: 0, scope: !1807)
!1816 = !DILocation(line: 261, column: 3, scope: !1807)
!1817 = !DILocation(line: 265, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1807, file: !499, line: 265, column: 7)
!1819 = !DILocation(line: 265, column: 7, scope: !1807)
!1820 = !DILocation(line: 266, column: 5, scope: !1818)
!1821 = !DILocation(line: 272, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1818, file: !499, line: 268, column: 5)
!1823 = !DILocation(line: 276, column: 3, scope: !1807)
!1824 = !DILocation(line: 282, column: 1, scope: !1807)
!1825 = distinct !DISubprogram(name: "flush_stdout", scope: !499, file: !499, line: 163, type: !545, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1826)
!1826 = !{!1827}
!1827 = !DILocalVariable(name: "stdout_fd", scope: !1825, file: !499, line: 166, type: !83)
!1828 = !DILocation(line: 0, scope: !1825)
!1829 = !DILocalVariable(name: "fd", arg: 1, scope: !1830, file: !499, line: 145, type: !83)
!1830 = distinct !DISubprogram(name: "is_open", scope: !499, file: !499, line: 145, type: !1717, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1831)
!1831 = !{!1829}
!1832 = !DILocation(line: 0, scope: !1830, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 182, column: 25, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1825, file: !499, line: 182, column: 7)
!1835 = !DILocation(line: 157, column: 15, scope: !1830, inlinedAt: !1833)
!1836 = !DILocation(line: 157, column: 12, scope: !1830, inlinedAt: !1833)
!1837 = !DILocation(line: 182, column: 7, scope: !1825)
!1838 = !DILocation(line: 184, column: 5, scope: !1834)
!1839 = !DILocation(line: 185, column: 1, scope: !1825)
!1840 = distinct !DISubprogram(name: "error_tail", scope: !499, file: !499, line: 219, type: !1808, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1841)
!1841 = !{!1842, !1843, !1844, !1845}
!1842 = !DILocalVariable(name: "status", arg: 1, scope: !1840, file: !499, line: 219, type: !83)
!1843 = !DILocalVariable(name: "errnum", arg: 2, scope: !1840, file: !499, line: 219, type: !83)
!1844 = !DILocalVariable(name: "message", arg: 3, scope: !1840, file: !499, line: 219, type: !142)
!1845 = !DILocalVariable(name: "args", arg: 4, scope: !1840, file: !499, line: 219, type: !509)
!1846 = distinct !DIAssignID()
!1847 = !DILocation(line: 0, scope: !1840)
!1848 = !DILocation(line: 229, column: 13, scope: !1840)
!1849 = !DILocalVariable(name: "__stream", arg: 1, scope: !1850, file: !978, line: 132, type: !1853)
!1850 = distinct !DISubprogram(name: "vfprintf", scope: !978, file: !978, line: 132, type: !1851, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1888)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!83, !1853, !982, !509}
!1853 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1854)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !1856)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1856, file: !206, line: 51, baseType: !83, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1856, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1856, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1856, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1856, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1856, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1856, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1856, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1856, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1856, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1856, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1856, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1856, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1856, file: !206, line: 70, baseType: !1872, size: 64, offset: 832)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1856, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1856, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1856, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1856, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1856, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1856, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1856, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1856, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1856, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1856, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1856, file: !206, line: 93, baseType: !1872, size: 64, offset: 1344)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1856, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1856, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1856, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1856, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!1888 = !{!1849, !1889, !1890}
!1889 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1850, file: !978, line: 133, type: !982)
!1890 = !DILocalVariable(name: "__ap", arg: 3, scope: !1850, file: !978, line: 133, type: !509)
!1891 = !DILocation(line: 0, scope: !1850, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 229, column: 3, scope: !1840)
!1893 = !DILocation(line: 135, column: 10, scope: !1850, inlinedAt: !1892)
!1894 = !DILocation(line: 232, column: 3, scope: !1840)
!1895 = !DILocation(line: 233, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1840, file: !499, line: 233, column: 7)
!1897 = !DILocation(line: 233, column: 7, scope: !1840)
!1898 = !DILocalVariable(name: "errbuf", scope: !1899, file: !499, line: 193, type: !1903)
!1899 = distinct !DISubprogram(name: "print_errno_message", scope: !499, file: !499, line: 188, type: !911, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1900)
!1900 = !{!1901, !1902, !1898}
!1901 = !DILocalVariable(name: "errnum", arg: 1, scope: !1899, file: !499, line: 188, type: !83)
!1902 = !DILocalVariable(name: "s", scope: !1899, file: !499, line: 190, type: !142)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1904)
!1904 = !{!1905}
!1905 = !DISubrange(count: 1024)
!1906 = !DILocation(line: 0, scope: !1899, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 234, column: 5, scope: !1896)
!1908 = !DILocation(line: 193, column: 3, scope: !1899, inlinedAt: !1907)
!1909 = !DILocation(line: 195, column: 7, scope: !1899, inlinedAt: !1907)
!1910 = !DILocation(line: 207, column: 9, scope: !1911, inlinedAt: !1907)
!1911 = distinct !DILexicalBlock(scope: !1899, file: !499, line: 207, column: 7)
!1912 = !DILocation(line: 207, column: 7, scope: !1899, inlinedAt: !1907)
!1913 = !DILocation(line: 208, column: 9, scope: !1911, inlinedAt: !1907)
!1914 = !DILocation(line: 208, column: 5, scope: !1911, inlinedAt: !1907)
!1915 = !DILocation(line: 214, column: 3, scope: !1899, inlinedAt: !1907)
!1916 = !DILocation(line: 216, column: 1, scope: !1899, inlinedAt: !1907)
!1917 = !DILocation(line: 234, column: 5, scope: !1896)
!1918 = !DILocation(line: 238, column: 3, scope: !1840)
!1919 = !DILocalVariable(name: "__c", arg: 1, scope: !1920, file: !1284, line: 101, type: !83)
!1920 = distinct !DISubprogram(name: "putc_unlocked", scope: !1284, file: !1284, line: 101, type: !1921, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1923)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!83, !83, !1854}
!1923 = !{!1919, !1924}
!1924 = !DILocalVariable(name: "__stream", arg: 2, scope: !1920, file: !1284, line: 101, type: !1854)
!1925 = !DILocation(line: 0, scope: !1920, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 238, column: 3, scope: !1840)
!1927 = !DILocation(line: 103, column: 10, scope: !1920, inlinedAt: !1926)
!1928 = !DILocation(line: 240, column: 3, scope: !1840)
!1929 = !DILocation(line: 241, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1840, file: !499, line: 241, column: 7)
!1931 = !DILocation(line: 241, column: 7, scope: !1840)
!1932 = !DILocation(line: 242, column: 5, scope: !1930)
!1933 = !DILocation(line: 243, column: 1, scope: !1840)
!1934 = !DISubprogram(name: "__vfprintf_chk", scope: !978, file: !978, line: 96, type: !1935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!83, !1853, !83, !982, !509}
!1937 = !DISubprogram(name: "strerror_r", scope: !1112, file: !1112, line: 444, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!136, !83, !136, !139}
!1940 = !DISubprogram(name: "fcntl", scope: !1941, file: !1941, line: 149, type: !1942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1941 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!83, !83, !83, null}
!1944 = distinct !DISubprogram(name: "error", scope: !499, file: !499, line: 285, type: !1945, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !83, !83, !142, null}
!1947 = !{!1948, !1949, !1950, !1951}
!1948 = !DILocalVariable(name: "status", arg: 1, scope: !1944, file: !499, line: 285, type: !83)
!1949 = !DILocalVariable(name: "errnum", arg: 2, scope: !1944, file: !499, line: 285, type: !83)
!1950 = !DILocalVariable(name: "message", arg: 3, scope: !1944, file: !499, line: 285, type: !142)
!1951 = !DILocalVariable(name: "ap", scope: !1944, file: !499, line: 287, type: !1952)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !987, line: 52, baseType: !1953)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1954, line: 12, baseType: !1955)
!1954 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !499, baseType: !1956)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 192, elements: !52)
!1957 = distinct !DIAssignID()
!1958 = !DILocation(line: 0, scope: !1944)
!1959 = !DILocation(line: 287, column: 3, scope: !1944)
!1960 = !DILocation(line: 288, column: 3, scope: !1944)
!1961 = !DILocation(line: 289, column: 3, scope: !1944)
!1962 = !DILocation(line: 290, column: 3, scope: !1944)
!1963 = !DILocation(line: 291, column: 1, scope: !1944)
!1964 = !DILocation(line: 0, scope: !506)
!1965 = !DILocation(line: 302, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !506, file: !499, line: 302, column: 7)
!1967 = !DILocation(line: 302, column: 7, scope: !506)
!1968 = !DILocation(line: 307, column: 11, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !499, line: 307, column: 11)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !499, line: 303, column: 5)
!1971 = !DILocation(line: 307, column: 27, scope: !1969)
!1972 = !DILocation(line: 308, column: 11, scope: !1969)
!1973 = !DILocation(line: 308, column: 28, scope: !1969)
!1974 = !DILocation(line: 308, column: 25, scope: !1969)
!1975 = !DILocation(line: 309, column: 15, scope: !1969)
!1976 = !DILocation(line: 309, column: 33, scope: !1969)
!1977 = !DILocation(line: 310, column: 19, scope: !1969)
!1978 = !DILocation(line: 311, column: 22, scope: !1969)
!1979 = !DILocation(line: 311, column: 56, scope: !1969)
!1980 = !DILocation(line: 307, column: 11, scope: !1970)
!1981 = !DILocation(line: 316, column: 21, scope: !1970)
!1982 = !DILocation(line: 317, column: 23, scope: !1970)
!1983 = !DILocation(line: 318, column: 5, scope: !1970)
!1984 = !DILocation(line: 327, column: 3, scope: !506)
!1985 = !DILocation(line: 331, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !506, file: !499, line: 331, column: 7)
!1987 = !DILocation(line: 331, column: 7, scope: !506)
!1988 = !DILocation(line: 332, column: 5, scope: !1986)
!1989 = !DILocation(line: 338, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !499, line: 334, column: 5)
!1991 = !DILocation(line: 346, column: 3, scope: !506)
!1992 = !DILocation(line: 350, column: 3, scope: !506)
!1993 = !DILocation(line: 356, column: 1, scope: !506)
!1994 = distinct !DISubprogram(name: "error_at_line", scope: !499, file: !499, line: 359, type: !1995, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !83, !83, !142, !69, !142, null}
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003}
!1998 = !DILocalVariable(name: "status", arg: 1, scope: !1994, file: !499, line: 359, type: !83)
!1999 = !DILocalVariable(name: "errnum", arg: 2, scope: !1994, file: !499, line: 359, type: !83)
!2000 = !DILocalVariable(name: "file_name", arg: 3, scope: !1994, file: !499, line: 359, type: !142)
!2001 = !DILocalVariable(name: "line_number", arg: 4, scope: !1994, file: !499, line: 360, type: !69)
!2002 = !DILocalVariable(name: "message", arg: 5, scope: !1994, file: !499, line: 360, type: !142)
!2003 = !DILocalVariable(name: "ap", scope: !1994, file: !499, line: 362, type: !1952)
!2004 = distinct !DIAssignID()
!2005 = !DILocation(line: 0, scope: !1994)
!2006 = !DILocation(line: 362, column: 3, scope: !1994)
!2007 = !DILocation(line: 363, column: 3, scope: !1994)
!2008 = !DILocation(line: 364, column: 3, scope: !1994)
!2009 = !DILocation(line: 366, column: 3, scope: !1994)
!2010 = !DILocation(line: 367, column: 1, scope: !1994)
!2011 = distinct !DISubprogram(name: "fdadvise", scope: !809, file: !809, line: 25, type: !2012, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !2016)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !83, !2014, !2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !987, line: 63, baseType: !228)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !812, line: 51, baseType: !811)
!2016 = !{!2017, !2018, !2019, !2020}
!2017 = !DILocalVariable(name: "fd", arg: 1, scope: !2011, file: !809, line: 25, type: !83)
!2018 = !DILocalVariable(name: "offset", arg: 2, scope: !2011, file: !809, line: 25, type: !2014)
!2019 = !DILocalVariable(name: "len", arg: 3, scope: !2011, file: !809, line: 25, type: !2014)
!2020 = !DILocalVariable(name: "advice", arg: 4, scope: !2011, file: !809, line: 25, type: !2015)
!2021 = !DILocation(line: 0, scope: !2011)
!2022 = !DILocation(line: 28, column: 3, scope: !2011)
!2023 = !DILocation(line: 30, column: 1, scope: !2011)
!2024 = !DISubprogram(name: "posix_fadvise", scope: !1941, file: !1941, line: 273, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!83, !83, !2014, !2014, !83}
!2027 = distinct !DISubprogram(name: "fadvise", scope: !809, file: !809, line: 33, type: !2028, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !2064)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !2030, !2015}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2032)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2033)
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2032, file: !206, line: 51, baseType: !83, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2032, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2032, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2032, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2032, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2032, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2032, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2032, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2032, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2032, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2032, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2032, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2032, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2032, file: !206, line: 70, baseType: !2048, size: 64, offset: 832)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2032, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2032, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2032, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2032, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2032, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2032, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2032, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2032, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2032, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2032, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2032, file: !206, line: 93, baseType: !2048, size: 64, offset: 1344)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2032, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2032, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2032, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2032, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2064 = !{!2065, !2066}
!2065 = !DILocalVariable(name: "fp", arg: 1, scope: !2027, file: !809, line: 33, type: !2030)
!2066 = !DILocalVariable(name: "advice", arg: 2, scope: !2027, file: !809, line: 33, type: !2015)
!2067 = !DILocation(line: 0, scope: !2027)
!2068 = !DILocation(line: 35, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2027, file: !809, line: 35, column: 7)
!2070 = !DILocation(line: 35, column: 7, scope: !2027)
!2071 = !DILocation(line: 36, column: 15, scope: !2069)
!2072 = !DILocation(line: 0, scope: !2011, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 36, column: 5, scope: !2069)
!2074 = !DILocation(line: 28, column: 3, scope: !2011, inlinedAt: !2073)
!2075 = !DILocation(line: 36, column: 5, scope: !2069)
!2076 = !DILocation(line: 37, column: 1, scope: !2027)
!2077 = !DISubprogram(name: "fileno", scope: !987, file: !987, line: 809, type: !2078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!83, !2030}
!2080 = distinct !DISubprogram(name: "rpl_fclose", scope: !814, file: !814, line: 58, type: !2081, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !2117)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!83, !2083}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2085)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2085, file: !206, line: 51, baseType: !83, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2085, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2085, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2085, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2085, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2085, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2085, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2085, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2085, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2085, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2085, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2085, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2085, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2085, file: !206, line: 70, baseType: !2101, size: 64, offset: 832)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2085, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2085, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2085, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2085, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2085, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2085, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2085, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2085, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2085, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2085, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2085, file: !206, line: 93, baseType: !2101, size: 64, offset: 1344)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2085, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2085, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2085, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2085, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2117 = !{!2118, !2119, !2120, !2121}
!2118 = !DILocalVariable(name: "fp", arg: 1, scope: !2080, file: !814, line: 58, type: !2083)
!2119 = !DILocalVariable(name: "saved_errno", scope: !2080, file: !814, line: 60, type: !83)
!2120 = !DILocalVariable(name: "fd", scope: !2080, file: !814, line: 63, type: !83)
!2121 = !DILocalVariable(name: "result", scope: !2080, file: !814, line: 74, type: !83)
!2122 = !DILocation(line: 0, scope: !2080)
!2123 = !DILocation(line: 63, column: 12, scope: !2080)
!2124 = !DILocation(line: 64, column: 10, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2080, file: !814, line: 64, column: 7)
!2126 = !DILocation(line: 64, column: 7, scope: !2080)
!2127 = !DILocation(line: 65, column: 12, scope: !2125)
!2128 = !DILocation(line: 65, column: 5, scope: !2125)
!2129 = !DILocation(line: 70, column: 9, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2080, file: !814, line: 70, column: 7)
!2131 = !DILocation(line: 70, column: 23, scope: !2130)
!2132 = !DILocation(line: 70, column: 33, scope: !2130)
!2133 = !DILocation(line: 70, column: 26, scope: !2130)
!2134 = !DILocation(line: 70, column: 59, scope: !2130)
!2135 = !DILocation(line: 71, column: 7, scope: !2130)
!2136 = !DILocation(line: 71, column: 10, scope: !2130)
!2137 = !DILocation(line: 70, column: 7, scope: !2080)
!2138 = !DILocation(line: 100, column: 12, scope: !2080)
!2139 = !DILocation(line: 105, column: 7, scope: !2080)
!2140 = !DILocation(line: 72, column: 19, scope: !2130)
!2141 = !DILocation(line: 105, column: 19, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2080, file: !814, line: 105, column: 7)
!2143 = !DILocation(line: 107, column: 13, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2142, file: !814, line: 106, column: 5)
!2145 = !DILocation(line: 109, column: 5, scope: !2144)
!2146 = !DILocation(line: 112, column: 1, scope: !2080)
!2147 = !DISubprogram(name: "fclose", scope: !987, file: !987, line: 178, type: !2081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2148 = !DISubprogram(name: "__freading", scope: !2149, file: !2149, line: 51, type: !2081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2149 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2150 = !DISubprogram(name: "lseek", scope: !1806, file: !1806, line: 339, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!228, !83, !228, !83}
!2153 = distinct !DISubprogram(name: "rpl_fflush", scope: !816, file: !816, line: 130, type: !2154, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !2190)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!83, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2158, file: !206, line: 51, baseType: !83, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2158, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2158, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2158, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2158, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2158, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2158, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2158, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2158, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2158, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2158, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2158, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2158, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2158, file: !206, line: 70, baseType: !2174, size: 64, offset: 832)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2158, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2158, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2158, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2158, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2158, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2158, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2158, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2158, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2158, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2158, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2158, file: !206, line: 93, baseType: !2174, size: 64, offset: 1344)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2158, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2158, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2158, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2158, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "stream", arg: 1, scope: !2153, file: !816, line: 130, type: !2156)
!2192 = !DILocation(line: 0, scope: !2153)
!2193 = !DILocation(line: 151, column: 14, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2153, file: !816, line: 151, column: 7)
!2195 = !DILocation(line: 151, column: 22, scope: !2194)
!2196 = !DILocation(line: 151, column: 27, scope: !2194)
!2197 = !DILocation(line: 151, column: 7, scope: !2153)
!2198 = !DILocation(line: 152, column: 12, scope: !2194)
!2199 = !DILocation(line: 152, column: 5, scope: !2194)
!2200 = !DILocalVariable(name: "fp", arg: 1, scope: !2201, file: !816, line: 42, type: !2156)
!2201 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !816, file: !816, line: 42, type: !2202, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !2204)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !2156}
!2204 = !{!2200}
!2205 = !DILocation(line: 0, scope: !2201, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 157, column: 3, scope: !2153)
!2207 = !DILocation(line: 44, column: 12, scope: !2208, inlinedAt: !2206)
!2208 = distinct !DILexicalBlock(scope: !2201, file: !816, line: 44, column: 7)
!2209 = !DILocation(line: 44, column: 19, scope: !2208, inlinedAt: !2206)
!2210 = !DILocation(line: 44, column: 7, scope: !2201, inlinedAt: !2206)
!2211 = !DILocation(line: 46, column: 5, scope: !2208, inlinedAt: !2206)
!2212 = !DILocation(line: 159, column: 10, scope: !2153)
!2213 = !DILocation(line: 159, column: 3, scope: !2153)
!2214 = !DILocation(line: 236, column: 1, scope: !2153)
!2215 = !DISubprogram(name: "fflush", scope: !987, file: !987, line: 230, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2216 = distinct !DISubprogram(name: "fpurge", scope: !819, file: !819, line: 32, type: !2217, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !2253)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!83, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2221, file: !206, line: 51, baseType: !83, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2221, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2221, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2221, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2221, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2221, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2221, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2221, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2221, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2221, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2221, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2221, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2221, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2221, file: !206, line: 70, baseType: !2237, size: 64, offset: 832)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2221, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2221, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2221, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2221, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2221, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2221, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2221, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2221, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2221, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2221, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2221, file: !206, line: 93, baseType: !2237, size: 64, offset: 1344)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2221, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2221, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2221, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2221, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2253 = !{!2254}
!2254 = !DILocalVariable(name: "fp", arg: 1, scope: !2216, file: !819, line: 32, type: !2219)
!2255 = !DILocation(line: 0, scope: !2216)
!2256 = !DILocation(line: 36, column: 3, scope: !2216)
!2257 = !DILocation(line: 38, column: 3, scope: !2216)
!2258 = !DISubprogram(name: "__fpurge", scope: !2149, file: !2149, line: 72, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !2219}
!2261 = distinct !DISubprogram(name: "rpl_fseeko", scope: !821, file: !821, line: 28, type: !2262, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !2298)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!83, !2264, !2014, !83}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2266)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2266, file: !206, line: 51, baseType: !83, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2266, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2266, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2266, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2266, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2266, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2266, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2266, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2266, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2266, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2266, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2266, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2266, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2266, file: !206, line: 70, baseType: !2282, size: 64, offset: 832)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2266, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2266, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2266, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2266, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2266, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2266, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2266, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2266, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2266, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2266, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2266, file: !206, line: 93, baseType: !2282, size: 64, offset: 1344)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2266, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2266, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2266, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2266, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2298 = !{!2299, !2300, !2301, !2302}
!2299 = !DILocalVariable(name: "fp", arg: 1, scope: !2261, file: !821, line: 28, type: !2264)
!2300 = !DILocalVariable(name: "offset", arg: 2, scope: !2261, file: !821, line: 28, type: !2014)
!2301 = !DILocalVariable(name: "whence", arg: 3, scope: !2261, file: !821, line: 28, type: !83)
!2302 = !DILocalVariable(name: "pos", scope: !2303, file: !821, line: 123, type: !2014)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !821, line: 119, column: 5)
!2304 = distinct !DILexicalBlock(scope: !2261, file: !821, line: 55, column: 7)
!2305 = !DILocation(line: 0, scope: !2261)
!2306 = !DILocation(line: 55, column: 12, scope: !2304)
!2307 = !{!1292, !922, i64 16}
!2308 = !DILocation(line: 55, column: 33, scope: !2304)
!2309 = !{!1292, !922, i64 8}
!2310 = !DILocation(line: 55, column: 25, scope: !2304)
!2311 = !DILocation(line: 56, column: 7, scope: !2304)
!2312 = !DILocation(line: 56, column: 15, scope: !2304)
!2313 = !DILocation(line: 56, column: 37, scope: !2304)
!2314 = !{!1292, !922, i64 32}
!2315 = !DILocation(line: 56, column: 29, scope: !2304)
!2316 = !DILocation(line: 57, column: 7, scope: !2304)
!2317 = !DILocation(line: 57, column: 15, scope: !2304)
!2318 = !{!1292, !922, i64 72}
!2319 = !DILocation(line: 57, column: 29, scope: !2304)
!2320 = !DILocation(line: 55, column: 7, scope: !2261)
!2321 = !DILocation(line: 123, column: 26, scope: !2303)
!2322 = !DILocation(line: 123, column: 19, scope: !2303)
!2323 = !DILocation(line: 0, scope: !2303)
!2324 = !DILocation(line: 124, column: 15, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2303, file: !821, line: 124, column: 11)
!2326 = !DILocation(line: 124, column: 11, scope: !2303)
!2327 = !DILocation(line: 135, column: 19, scope: !2303)
!2328 = !DILocation(line: 136, column: 12, scope: !2303)
!2329 = !DILocation(line: 136, column: 20, scope: !2303)
!2330 = !{!1292, !1293, i64 144}
!2331 = !DILocation(line: 167, column: 7, scope: !2303)
!2332 = !DILocation(line: 169, column: 10, scope: !2261)
!2333 = !DILocation(line: 169, column: 3, scope: !2261)
!2334 = !DILocation(line: 170, column: 1, scope: !2261)
!2335 = !DISubprogram(name: "fseeko", scope: !987, file: !987, line: 736, type: !2336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!83, !2264, !228, !83}
!2338 = distinct !DISubprogram(name: "getprogname", scope: !823, file: !823, line: 54, type: !2339, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!142}
!2341 = !DILocation(line: 58, column: 10, scope: !2338)
!2342 = !DILocation(line: 58, column: 3, scope: !2338)
!2343 = distinct !DISubprogram(name: "set_program_name", scope: !550, file: !550, line: 37, type: !942, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2344)
!2344 = !{!2345, !2346, !2347}
!2345 = !DILocalVariable(name: "argv0", arg: 1, scope: !2343, file: !550, line: 37, type: !142)
!2346 = !DILocalVariable(name: "slash", scope: !2343, file: !550, line: 44, type: !142)
!2347 = !DILocalVariable(name: "base", scope: !2343, file: !550, line: 45, type: !142)
!2348 = !DILocation(line: 0, scope: !2343)
!2349 = !DILocation(line: 44, column: 23, scope: !2343)
!2350 = !DILocation(line: 45, column: 22, scope: !2343)
!2351 = !DILocation(line: 46, column: 17, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2343, file: !550, line: 46, column: 7)
!2353 = !DILocation(line: 46, column: 9, scope: !2352)
!2354 = !DILocation(line: 46, column: 25, scope: !2352)
!2355 = !DILocation(line: 46, column: 40, scope: !2352)
!2356 = !DILocalVariable(name: "__s1", arg: 1, scope: !2357, file: !1005, line: 974, type: !1140)
!2357 = distinct !DISubprogram(name: "memeq", scope: !1005, file: !1005, line: 974, type: !2358, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!168, !1140, !1140, !139}
!2360 = !{!2356, !2361, !2362}
!2361 = !DILocalVariable(name: "__s2", arg: 2, scope: !2357, file: !1005, line: 974, type: !1140)
!2362 = !DILocalVariable(name: "__n", arg: 3, scope: !2357, file: !1005, line: 974, type: !139)
!2363 = !DILocation(line: 0, scope: !2357, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 46, column: 28, scope: !2352)
!2365 = !DILocation(line: 976, column: 11, scope: !2357, inlinedAt: !2364)
!2366 = !DILocation(line: 976, column: 10, scope: !2357, inlinedAt: !2364)
!2367 = !DILocation(line: 46, column: 7, scope: !2343)
!2368 = !DILocation(line: 49, column: 11, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !550, line: 49, column: 11)
!2370 = distinct !DILexicalBlock(scope: !2352, file: !550, line: 47, column: 5)
!2371 = !DILocation(line: 49, column: 36, scope: !2369)
!2372 = !DILocation(line: 49, column: 11, scope: !2370)
!2373 = !DILocation(line: 65, column: 16, scope: !2343)
!2374 = !DILocation(line: 71, column: 27, scope: !2343)
!2375 = !DILocation(line: 74, column: 33, scope: !2343)
!2376 = !DILocation(line: 76, column: 1, scope: !2343)
!2377 = !DISubprogram(name: "strrchr", scope: !1112, file: !1112, line: 273, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2378 = distinct !DIAssignID()
!2379 = !DILocation(line: 0, scope: !559)
!2380 = distinct !DIAssignID()
!2381 = !DILocation(line: 40, column: 29, scope: !559)
!2382 = !DILocation(line: 41, column: 19, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !559, file: !560, line: 41, column: 7)
!2384 = !DILocation(line: 41, column: 7, scope: !559)
!2385 = !DILocation(line: 47, column: 3, scope: !559)
!2386 = !DILocation(line: 48, column: 3, scope: !559)
!2387 = !DILocalVariable(name: "ps", arg: 1, scope: !2388, file: !2389, line: 1135, type: !2392)
!2388 = distinct !DISubprogram(name: "mbszero", scope: !2389, file: !2389, line: 1135, type: !2390, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2393)
!2389 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!2393 = !{!2387}
!2394 = !DILocation(line: 0, scope: !2388, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 48, column: 18, scope: !559)
!2396 = !DILocalVariable(name: "__dest", arg: 1, scope: !2397, file: !1303, line: 57, type: !137)
!2397 = distinct !DISubprogram(name: "memset", scope: !1303, file: !1303, line: 57, type: !2398, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!137, !137, !83, !139}
!2400 = !{!2396, !2401, !2402}
!2401 = !DILocalVariable(name: "__ch", arg: 2, scope: !2397, file: !1303, line: 57, type: !83)
!2402 = !DILocalVariable(name: "__len", arg: 3, scope: !2397, file: !1303, line: 57, type: !139)
!2403 = !DILocation(line: 0, scope: !2397, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 1137, column: 3, scope: !2388, inlinedAt: !2395)
!2405 = !DILocation(line: 59, column: 10, scope: !2397, inlinedAt: !2404)
!2406 = !DILocation(line: 49, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !559, file: !560, line: 49, column: 7)
!2408 = !DILocation(line: 49, column: 39, scope: !2407)
!2409 = !DILocation(line: 49, column: 44, scope: !2407)
!2410 = !DILocation(line: 54, column: 1, scope: !559)
!2411 = distinct !DISubprogram(name: "clone_quoting_options", scope: !586, file: !586, line: 113, type: !2412, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2415)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!2414, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!2415 = !{!2416, !2417, !2418}
!2416 = !DILocalVariable(name: "o", arg: 1, scope: !2411, file: !586, line: 113, type: !2414)
!2417 = !DILocalVariable(name: "saved_errno", scope: !2411, file: !586, line: 115, type: !83)
!2418 = !DILocalVariable(name: "p", scope: !2411, file: !586, line: 116, type: !2414)
!2419 = !DILocation(line: 0, scope: !2411)
!2420 = !DILocation(line: 115, column: 21, scope: !2411)
!2421 = !DILocation(line: 116, column: 40, scope: !2411)
!2422 = !DILocation(line: 116, column: 31, scope: !2411)
!2423 = !DILocation(line: 118, column: 9, scope: !2411)
!2424 = !DILocation(line: 119, column: 3, scope: !2411)
!2425 = distinct !DISubprogram(name: "get_quoting_style", scope: !586, file: !586, line: 124, type: !2426, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2430)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!612, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!2430 = !{!2431}
!2431 = !DILocalVariable(name: "o", arg: 1, scope: !2425, file: !586, line: 124, type: !2428)
!2432 = !DILocation(line: 0, scope: !2425)
!2433 = !DILocation(line: 126, column: 11, scope: !2425)
!2434 = !DILocation(line: 126, column: 46, scope: !2425)
!2435 = !{!2436, !993, i64 0}
!2436 = !{!"quoting_options", !993, i64 0, !993, i64 4, !923, i64 8, !922, i64 40, !922, i64 48}
!2437 = !DILocation(line: 126, column: 3, scope: !2425)
!2438 = distinct !DISubprogram(name: "set_quoting_style", scope: !586, file: !586, line: 132, type: !2439, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{null, !2414, !612}
!2441 = !{!2442, !2443}
!2442 = !DILocalVariable(name: "o", arg: 1, scope: !2438, file: !586, line: 132, type: !2414)
!2443 = !DILocalVariable(name: "s", arg: 2, scope: !2438, file: !586, line: 132, type: !612)
!2444 = !DILocation(line: 0, scope: !2438)
!2445 = !DILocation(line: 134, column: 4, scope: !2438)
!2446 = !DILocation(line: 134, column: 45, scope: !2438)
!2447 = !DILocation(line: 135, column: 1, scope: !2438)
!2448 = distinct !DISubprogram(name: "set_char_quoting", scope: !586, file: !586, line: 143, type: !2449, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!83, !2414, !4, !83}
!2451 = !{!2452, !2453, !2454, !2455, !2456, !2458, !2459}
!2452 = !DILocalVariable(name: "o", arg: 1, scope: !2448, file: !586, line: 143, type: !2414)
!2453 = !DILocalVariable(name: "c", arg: 2, scope: !2448, file: !586, line: 143, type: !4)
!2454 = !DILocalVariable(name: "i", arg: 3, scope: !2448, file: !586, line: 143, type: !83)
!2455 = !DILocalVariable(name: "uc", scope: !2448, file: !586, line: 145, type: !144)
!2456 = !DILocalVariable(name: "p", scope: !2448, file: !586, line: 146, type: !2457)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2458 = !DILocalVariable(name: "shift", scope: !2448, file: !586, line: 148, type: !83)
!2459 = !DILocalVariable(name: "r", scope: !2448, file: !586, line: 149, type: !69)
!2460 = !DILocation(line: 0, scope: !2448)
!2461 = !DILocation(line: 147, column: 6, scope: !2448)
!2462 = !DILocation(line: 147, column: 41, scope: !2448)
!2463 = !DILocation(line: 147, column: 62, scope: !2448)
!2464 = !DILocation(line: 147, column: 57, scope: !2448)
!2465 = !DILocation(line: 148, column: 15, scope: !2448)
!2466 = !DILocation(line: 149, column: 21, scope: !2448)
!2467 = !DILocation(line: 149, column: 24, scope: !2448)
!2468 = !DILocation(line: 149, column: 34, scope: !2448)
!2469 = !DILocation(line: 150, column: 19, scope: !2448)
!2470 = !DILocation(line: 150, column: 24, scope: !2448)
!2471 = !DILocation(line: 150, column: 6, scope: !2448)
!2472 = !DILocation(line: 151, column: 3, scope: !2448)
!2473 = distinct !DISubprogram(name: "set_quoting_flags", scope: !586, file: !586, line: 159, type: !2474, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!83, !2414, !83}
!2476 = !{!2477, !2478, !2479}
!2477 = !DILocalVariable(name: "o", arg: 1, scope: !2473, file: !586, line: 159, type: !2414)
!2478 = !DILocalVariable(name: "i", arg: 2, scope: !2473, file: !586, line: 159, type: !83)
!2479 = !DILocalVariable(name: "r", scope: !2473, file: !586, line: 163, type: !83)
!2480 = !DILocation(line: 0, scope: !2473)
!2481 = !DILocation(line: 161, column: 8, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2473, file: !586, line: 161, column: 7)
!2483 = !DILocation(line: 161, column: 7, scope: !2473)
!2484 = !DILocation(line: 163, column: 14, scope: !2473)
!2485 = !{!2436, !993, i64 4}
!2486 = !DILocation(line: 164, column: 12, scope: !2473)
!2487 = !DILocation(line: 165, column: 3, scope: !2473)
!2488 = distinct !DISubprogram(name: "set_custom_quoting", scope: !586, file: !586, line: 169, type: !2489, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2414, !142, !142}
!2491 = !{!2492, !2493, !2494}
!2492 = !DILocalVariable(name: "o", arg: 1, scope: !2488, file: !586, line: 169, type: !2414)
!2493 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2488, file: !586, line: 170, type: !142)
!2494 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2488, file: !586, line: 170, type: !142)
!2495 = !DILocation(line: 0, scope: !2488)
!2496 = !DILocation(line: 172, column: 8, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2488, file: !586, line: 172, column: 7)
!2498 = !DILocation(line: 172, column: 7, scope: !2488)
!2499 = !DILocation(line: 174, column: 12, scope: !2488)
!2500 = !DILocation(line: 175, column: 8, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2488, file: !586, line: 175, column: 7)
!2502 = !DILocation(line: 175, column: 19, scope: !2501)
!2503 = !DILocation(line: 176, column: 5, scope: !2501)
!2504 = !DILocation(line: 177, column: 6, scope: !2488)
!2505 = !DILocation(line: 177, column: 17, scope: !2488)
!2506 = !{!2436, !922, i64 40}
!2507 = !DILocation(line: 178, column: 6, scope: !2488)
!2508 = !DILocation(line: 178, column: 18, scope: !2488)
!2509 = !{!2436, !922, i64 48}
!2510 = !DILocation(line: 179, column: 1, scope: !2488)
!2511 = !DISubprogram(name: "abort", scope: !1116, file: !1116, line: 598, type: !545, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2512 = distinct !DISubprogram(name: "quotearg_buffer", scope: !586, file: !586, line: 774, type: !2513, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!139, !136, !139, !142, !139, !2428}
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2516 = !DILocalVariable(name: "buffer", arg: 1, scope: !2512, file: !586, line: 774, type: !136)
!2517 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2512, file: !586, line: 774, type: !139)
!2518 = !DILocalVariable(name: "arg", arg: 3, scope: !2512, file: !586, line: 775, type: !142)
!2519 = !DILocalVariable(name: "argsize", arg: 4, scope: !2512, file: !586, line: 775, type: !139)
!2520 = !DILocalVariable(name: "o", arg: 5, scope: !2512, file: !586, line: 776, type: !2428)
!2521 = !DILocalVariable(name: "p", scope: !2512, file: !586, line: 778, type: !2428)
!2522 = !DILocalVariable(name: "saved_errno", scope: !2512, file: !586, line: 779, type: !83)
!2523 = !DILocalVariable(name: "r", scope: !2512, file: !586, line: 780, type: !139)
!2524 = !DILocation(line: 0, scope: !2512)
!2525 = !DILocation(line: 778, column: 37, scope: !2512)
!2526 = !DILocation(line: 779, column: 21, scope: !2512)
!2527 = !DILocation(line: 781, column: 43, scope: !2512)
!2528 = !DILocation(line: 781, column: 53, scope: !2512)
!2529 = !DILocation(line: 781, column: 63, scope: !2512)
!2530 = !DILocation(line: 782, column: 43, scope: !2512)
!2531 = !DILocation(line: 782, column: 58, scope: !2512)
!2532 = !DILocation(line: 780, column: 14, scope: !2512)
!2533 = !DILocation(line: 783, column: 9, scope: !2512)
!2534 = !DILocation(line: 784, column: 3, scope: !2512)
!2535 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !586, file: !586, line: 251, type: !2536, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2540)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!139, !136, !139, !142, !139, !612, !83, !2538, !142, !142}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2566, !2568, !2571, !2572, !2573, !2574, !2577, !2578, !2580, !2581, !2584, !2588, !2589, !2597, !2600, !2601, !2602}
!2541 = !DILocalVariable(name: "buffer", arg: 1, scope: !2535, file: !586, line: 251, type: !136)
!2542 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2535, file: !586, line: 251, type: !139)
!2543 = !DILocalVariable(name: "arg", arg: 3, scope: !2535, file: !586, line: 252, type: !142)
!2544 = !DILocalVariable(name: "argsize", arg: 4, scope: !2535, file: !586, line: 252, type: !139)
!2545 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2535, file: !586, line: 253, type: !612)
!2546 = !DILocalVariable(name: "flags", arg: 6, scope: !2535, file: !586, line: 253, type: !83)
!2547 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2535, file: !586, line: 254, type: !2538)
!2548 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2535, file: !586, line: 255, type: !142)
!2549 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2535, file: !586, line: 256, type: !142)
!2550 = !DILocalVariable(name: "unibyte_locale", scope: !2535, file: !586, line: 258, type: !168)
!2551 = !DILocalVariable(name: "len", scope: !2535, file: !586, line: 260, type: !139)
!2552 = !DILocalVariable(name: "orig_buffersize", scope: !2535, file: !586, line: 261, type: !139)
!2553 = !DILocalVariable(name: "quote_string", scope: !2535, file: !586, line: 262, type: !142)
!2554 = !DILocalVariable(name: "quote_string_len", scope: !2535, file: !586, line: 263, type: !139)
!2555 = !DILocalVariable(name: "backslash_escapes", scope: !2535, file: !586, line: 264, type: !168)
!2556 = !DILocalVariable(name: "elide_outer_quotes", scope: !2535, file: !586, line: 265, type: !168)
!2557 = !DILocalVariable(name: "encountered_single_quote", scope: !2535, file: !586, line: 266, type: !168)
!2558 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2535, file: !586, line: 267, type: !168)
!2559 = !DILabel(scope: !2535, name: "process_input", file: !586, line: 308)
!2560 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2535, file: !586, line: 309, type: !168)
!2561 = !DILocalVariable(name: "lq", scope: !2562, file: !586, line: 361, type: !142)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !586, line: 361, column: 11)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !586, line: 360, column: 13)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !586, line: 333, column: 7)
!2565 = distinct !DILexicalBlock(scope: !2535, file: !586, line: 312, column: 5)
!2566 = !DILocalVariable(name: "i", scope: !2567, file: !586, line: 395, type: !139)
!2567 = distinct !DILexicalBlock(scope: !2535, file: !586, line: 395, column: 3)
!2568 = !DILocalVariable(name: "is_right_quote", scope: !2569, file: !586, line: 397, type: !168)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !586, line: 396, column: 5)
!2570 = distinct !DILexicalBlock(scope: !2567, file: !586, line: 395, column: 3)
!2571 = !DILocalVariable(name: "escaping", scope: !2569, file: !586, line: 398, type: !168)
!2572 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2569, file: !586, line: 399, type: !168)
!2573 = !DILocalVariable(name: "c", scope: !2569, file: !586, line: 417, type: !144)
!2574 = !DILabel(scope: !2575, name: "c_and_shell_escape", file: !586, line: 502)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !586, line: 478, column: 9)
!2576 = distinct !DILexicalBlock(scope: !2569, file: !586, line: 419, column: 9)
!2577 = !DILabel(scope: !2575, name: "c_escape", file: !586, line: 507)
!2578 = !DILocalVariable(name: "m", scope: !2579, file: !586, line: 598, type: !139)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !586, line: 596, column: 11)
!2580 = !DILocalVariable(name: "printable", scope: !2579, file: !586, line: 600, type: !168)
!2581 = !DILocalVariable(name: "mbs", scope: !2582, file: !586, line: 609, type: !661)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !586, line: 608, column: 15)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !586, line: 602, column: 17)
!2584 = !DILocalVariable(name: "w", scope: !2585, file: !586, line: 618, type: !432)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !586, line: 617, column: 19)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !586, line: 616, column: 17)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !586, line: 616, column: 17)
!2588 = !DILocalVariable(name: "bytes", scope: !2585, file: !586, line: 619, type: !139)
!2589 = !DILocalVariable(name: "j", scope: !2590, file: !586, line: 648, type: !139)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !586, line: 648, column: 29)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !586, line: 647, column: 27)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !586, line: 645, column: 29)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !586, line: 636, column: 23)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !586, line: 628, column: 30)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !586, line: 623, column: 30)
!2596 = distinct !DILexicalBlock(scope: !2585, file: !586, line: 621, column: 25)
!2597 = !DILocalVariable(name: "ilim", scope: !2598, file: !586, line: 674, type: !139)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !586, line: 671, column: 15)
!2599 = distinct !DILexicalBlock(scope: !2579, file: !586, line: 670, column: 17)
!2600 = !DILabel(scope: !2569, name: "store_escape", file: !586, line: 709)
!2601 = !DILabel(scope: !2569, name: "store_c", file: !586, line: 712)
!2602 = !DILabel(scope: !2535, name: "force_outer_quoting_style", file: !586, line: 753)
!2603 = distinct !DIAssignID()
!2604 = distinct !DIAssignID()
!2605 = distinct !DIAssignID()
!2606 = distinct !DIAssignID()
!2607 = distinct !DIAssignID()
!2608 = !DILocation(line: 0, scope: !2582)
!2609 = distinct !DIAssignID()
!2610 = !DILocation(line: 0, scope: !2585)
!2611 = !DILocation(line: 0, scope: !2535)
!2612 = !DILocation(line: 258, column: 25, scope: !2535)
!2613 = !DILocation(line: 258, column: 36, scope: !2535)
!2614 = !DILocation(line: 265, column: 8, scope: !2535)
!2615 = !DILocation(line: 267, column: 3, scope: !2535)
!2616 = !DILocation(line: 261, column: 10, scope: !2535)
!2617 = !DILocation(line: 262, column: 15, scope: !2535)
!2618 = !DILocation(line: 263, column: 10, scope: !2535)
!2619 = !DILocation(line: 264, column: 8, scope: !2535)
!2620 = !DILocation(line: 266, column: 8, scope: !2535)
!2621 = !DILocation(line: 267, column: 8, scope: !2535)
!2622 = !DILocation(line: 308, column: 2, scope: !2535)
!2623 = !DILocation(line: 311, column: 3, scope: !2535)
!2624 = !DILocation(line: 318, column: 11, scope: !2565)
!2625 = !DILocation(line: 318, column: 12, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2565, file: !586, line: 318, column: 11)
!2627 = !DILocation(line: 319, column: 9, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !586, line: 319, column: 9)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !586, line: 319, column: 9)
!2630 = !DILocation(line: 319, column: 9, scope: !2629)
!2631 = !DILocation(line: 0, scope: !652, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 357, column: 26, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !586, line: 335, column: 11)
!2634 = distinct !DILexicalBlock(scope: !2564, file: !586, line: 334, column: 13)
!2635 = !DILocation(line: 199, column: 29, scope: !652, inlinedAt: !2632)
!2636 = !DILocation(line: 201, column: 19, scope: !2637, inlinedAt: !2632)
!2637 = distinct !DILexicalBlock(scope: !652, file: !586, line: 201, column: 7)
!2638 = !DILocation(line: 201, column: 7, scope: !652, inlinedAt: !2632)
!2639 = !DILocation(line: 229, column: 3, scope: !652, inlinedAt: !2632)
!2640 = !DILocation(line: 230, column: 3, scope: !652, inlinedAt: !2632)
!2641 = !DILocalVariable(name: "ps", arg: 1, scope: !2642, file: !2389, line: 1135, type: !2645)
!2642 = distinct !DISubprogram(name: "mbszero", scope: !2389, file: !2389, line: 1135, type: !2643, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2646)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2645}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!2646 = !{!2641}
!2647 = !DILocation(line: 0, scope: !2642, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 230, column: 18, scope: !652, inlinedAt: !2632)
!2649 = !DILocalVariable(name: "__dest", arg: 1, scope: !2650, file: !1303, line: 57, type: !137)
!2650 = distinct !DISubprogram(name: "memset", scope: !1303, file: !1303, line: 57, type: !2398, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2651)
!2651 = !{!2649, !2652, !2653}
!2652 = !DILocalVariable(name: "__ch", arg: 2, scope: !2650, file: !1303, line: 57, type: !83)
!2653 = !DILocalVariable(name: "__len", arg: 3, scope: !2650, file: !1303, line: 57, type: !139)
!2654 = !DILocation(line: 0, scope: !2650, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 1137, column: 3, scope: !2642, inlinedAt: !2648)
!2656 = !DILocation(line: 59, column: 10, scope: !2650, inlinedAt: !2655)
!2657 = !DILocation(line: 231, column: 7, scope: !2658, inlinedAt: !2632)
!2658 = distinct !DILexicalBlock(scope: !652, file: !586, line: 231, column: 7)
!2659 = !DILocation(line: 231, column: 40, scope: !2658, inlinedAt: !2632)
!2660 = !DILocation(line: 231, column: 45, scope: !2658, inlinedAt: !2632)
!2661 = !DILocation(line: 235, column: 1, scope: !652, inlinedAt: !2632)
!2662 = !DILocation(line: 0, scope: !652, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 358, column: 27, scope: !2633)
!2664 = !DILocation(line: 199, column: 29, scope: !652, inlinedAt: !2663)
!2665 = !DILocation(line: 201, column: 19, scope: !2637, inlinedAt: !2663)
!2666 = !DILocation(line: 201, column: 7, scope: !652, inlinedAt: !2663)
!2667 = !DILocation(line: 229, column: 3, scope: !652, inlinedAt: !2663)
!2668 = !DILocation(line: 230, column: 3, scope: !652, inlinedAt: !2663)
!2669 = !DILocation(line: 0, scope: !2642, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 230, column: 18, scope: !652, inlinedAt: !2663)
!2671 = !DILocation(line: 0, scope: !2650, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1137, column: 3, scope: !2642, inlinedAt: !2670)
!2673 = !DILocation(line: 59, column: 10, scope: !2650, inlinedAt: !2672)
!2674 = !DILocation(line: 231, column: 7, scope: !2658, inlinedAt: !2663)
!2675 = !DILocation(line: 231, column: 40, scope: !2658, inlinedAt: !2663)
!2676 = !DILocation(line: 231, column: 45, scope: !2658, inlinedAt: !2663)
!2677 = !DILocation(line: 235, column: 1, scope: !652, inlinedAt: !2663)
!2678 = !DILocation(line: 360, column: 14, scope: !2563)
!2679 = !DILocation(line: 360, column: 13, scope: !2564)
!2680 = !DILocation(line: 0, scope: !2562)
!2681 = !DILocation(line: 361, column: 45, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2562, file: !586, line: 361, column: 11)
!2683 = !DILocation(line: 361, column: 11, scope: !2562)
!2684 = !DILocation(line: 362, column: 13, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !586, line: 362, column: 13)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !586, line: 362, column: 13)
!2687 = !DILocation(line: 362, column: 13, scope: !2686)
!2688 = !DILocation(line: 361, column: 52, scope: !2682)
!2689 = distinct !{!2689, !2683, !2690, !1039}
!2690 = !DILocation(line: 362, column: 13, scope: !2562)
!2691 = !DILocation(line: 260, column: 10, scope: !2535)
!2692 = !DILocation(line: 365, column: 28, scope: !2564)
!2693 = !DILocation(line: 367, column: 7, scope: !2565)
!2694 = !DILocation(line: 370, column: 7, scope: !2565)
!2695 = !DILocation(line: 373, column: 7, scope: !2565)
!2696 = !DILocation(line: 376, column: 12, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2565, file: !586, line: 376, column: 11)
!2698 = !DILocation(line: 376, column: 11, scope: !2565)
!2699 = !DILocation(line: 381, column: 12, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2565, file: !586, line: 381, column: 11)
!2701 = !DILocation(line: 381, column: 11, scope: !2565)
!2702 = !DILocation(line: 382, column: 9, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !586, line: 382, column: 9)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !586, line: 382, column: 9)
!2705 = !DILocation(line: 382, column: 9, scope: !2704)
!2706 = !DILocation(line: 389, column: 7, scope: !2565)
!2707 = !DILocation(line: 392, column: 7, scope: !2565)
!2708 = !DILocation(line: 0, scope: !2567)
!2709 = !DILocation(line: 395, column: 8, scope: !2567)
!2710 = !DILocation(line: 309, column: 8, scope: !2535)
!2711 = !DILocation(line: 395, scope: !2567)
!2712 = !DILocation(line: 395, column: 34, scope: !2570)
!2713 = !DILocation(line: 395, column: 26, scope: !2570)
!2714 = !DILocation(line: 395, column: 48, scope: !2570)
!2715 = !DILocation(line: 395, column: 55, scope: !2570)
!2716 = !DILocation(line: 395, column: 3, scope: !2567)
!2717 = !DILocation(line: 395, column: 67, scope: !2570)
!2718 = !DILocation(line: 0, scope: !2569)
!2719 = !DILocation(line: 402, column: 11, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2569, file: !586, line: 401, column: 11)
!2721 = !DILocation(line: 404, column: 17, scope: !2720)
!2722 = !DILocation(line: 405, column: 39, scope: !2720)
!2723 = !DILocation(line: 409, column: 32, scope: !2720)
!2724 = !DILocation(line: 405, column: 19, scope: !2720)
!2725 = !DILocation(line: 405, column: 15, scope: !2720)
!2726 = !DILocation(line: 410, column: 11, scope: !2720)
!2727 = !DILocation(line: 410, column: 25, scope: !2720)
!2728 = !DILocalVariable(name: "__s1", arg: 1, scope: !2729, file: !1005, line: 974, type: !1140)
!2729 = distinct !DISubprogram(name: "memeq", scope: !1005, file: !1005, line: 974, type: !2358, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2730)
!2730 = !{!2728, !2731, !2732}
!2731 = !DILocalVariable(name: "__s2", arg: 2, scope: !2729, file: !1005, line: 974, type: !1140)
!2732 = !DILocalVariable(name: "__n", arg: 3, scope: !2729, file: !1005, line: 974, type: !139)
!2733 = !DILocation(line: 0, scope: !2729, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 410, column: 14, scope: !2720)
!2735 = !DILocation(line: 976, column: 11, scope: !2729, inlinedAt: !2734)
!2736 = !DILocation(line: 976, column: 10, scope: !2729, inlinedAt: !2734)
!2737 = !DILocation(line: 401, column: 11, scope: !2569)
!2738 = !DILocation(line: 417, column: 25, scope: !2569)
!2739 = !DILocation(line: 418, column: 7, scope: !2569)
!2740 = !DILocation(line: 421, column: 15, scope: !2576)
!2741 = !DILocation(line: 423, column: 15, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !586, line: 423, column: 15)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !586, line: 422, column: 13)
!2744 = distinct !DILexicalBlock(scope: !2576, file: !586, line: 421, column: 15)
!2745 = !DILocation(line: 423, column: 15, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !586, line: 423, column: 15)
!2747 = !DILocation(line: 423, column: 15, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !586, line: 423, column: 15)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !586, line: 423, column: 15)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !586, line: 423, column: 15)
!2751 = !DILocation(line: 423, column: 15, scope: !2749)
!2752 = !DILocation(line: 423, column: 15, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !586, line: 423, column: 15)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !586, line: 423, column: 15)
!2755 = !DILocation(line: 423, column: 15, scope: !2754)
!2756 = !DILocation(line: 423, column: 15, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !586, line: 423, column: 15)
!2758 = distinct !DILexicalBlock(scope: !2750, file: !586, line: 423, column: 15)
!2759 = !DILocation(line: 423, column: 15, scope: !2758)
!2760 = !DILocation(line: 423, column: 15, scope: !2750)
!2761 = !DILocation(line: 423, column: 15, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !586, line: 423, column: 15)
!2763 = distinct !DILexicalBlock(scope: !2742, file: !586, line: 423, column: 15)
!2764 = !DILocation(line: 423, column: 15, scope: !2763)
!2765 = !DILocation(line: 431, column: 19, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2743, file: !586, line: 430, column: 19)
!2767 = !DILocation(line: 431, column: 24, scope: !2766)
!2768 = !DILocation(line: 431, column: 28, scope: !2766)
!2769 = !DILocation(line: 431, column: 38, scope: !2766)
!2770 = !DILocation(line: 431, column: 48, scope: !2766)
!2771 = !DILocation(line: 431, column: 59, scope: !2766)
!2772 = !DILocation(line: 433, column: 19, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !586, line: 433, column: 19)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !586, line: 433, column: 19)
!2775 = distinct !DILexicalBlock(scope: !2766, file: !586, line: 432, column: 17)
!2776 = !DILocation(line: 433, column: 19, scope: !2774)
!2777 = !DILocation(line: 434, column: 19, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !586, line: 434, column: 19)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !586, line: 434, column: 19)
!2780 = !DILocation(line: 434, column: 19, scope: !2779)
!2781 = !DILocation(line: 435, column: 17, scope: !2775)
!2782 = !DILocation(line: 442, column: 20, scope: !2744)
!2783 = !DILocation(line: 447, column: 11, scope: !2576)
!2784 = !DILocation(line: 450, column: 19, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2576, file: !586, line: 448, column: 13)
!2786 = !DILocation(line: 456, column: 19, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2785, file: !586, line: 455, column: 19)
!2788 = !DILocation(line: 456, column: 24, scope: !2787)
!2789 = !DILocation(line: 456, column: 28, scope: !2787)
!2790 = !DILocation(line: 456, column: 38, scope: !2787)
!2791 = !DILocation(line: 456, column: 41, scope: !2787)
!2792 = !DILocation(line: 456, column: 52, scope: !2787)
!2793 = !DILocation(line: 455, column: 19, scope: !2785)
!2794 = !DILocation(line: 457, column: 25, scope: !2787)
!2795 = !DILocation(line: 457, column: 17, scope: !2787)
!2796 = !DILocation(line: 464, column: 25, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2787, file: !586, line: 458, column: 19)
!2798 = !DILocation(line: 468, column: 21, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !586, line: 468, column: 21)
!2800 = distinct !DILexicalBlock(scope: !2797, file: !586, line: 468, column: 21)
!2801 = !DILocation(line: 468, column: 21, scope: !2800)
!2802 = !DILocation(line: 469, column: 21, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !586, line: 469, column: 21)
!2804 = distinct !DILexicalBlock(scope: !2797, file: !586, line: 469, column: 21)
!2805 = !DILocation(line: 469, column: 21, scope: !2804)
!2806 = !DILocation(line: 470, column: 21, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !586, line: 470, column: 21)
!2808 = distinct !DILexicalBlock(scope: !2797, file: !586, line: 470, column: 21)
!2809 = !DILocation(line: 470, column: 21, scope: !2808)
!2810 = !DILocation(line: 471, column: 21, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !586, line: 471, column: 21)
!2812 = distinct !DILexicalBlock(scope: !2797, file: !586, line: 471, column: 21)
!2813 = !DILocation(line: 471, column: 21, scope: !2812)
!2814 = !DILocation(line: 472, column: 21, scope: !2797)
!2815 = !DILocation(line: 482, column: 33, scope: !2575)
!2816 = !DILocation(line: 483, column: 33, scope: !2575)
!2817 = !DILocation(line: 485, column: 33, scope: !2575)
!2818 = !DILocation(line: 486, column: 33, scope: !2575)
!2819 = !DILocation(line: 487, column: 33, scope: !2575)
!2820 = !DILocation(line: 490, column: 17, scope: !2575)
!2821 = !DILocation(line: 492, column: 21, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !586, line: 491, column: 15)
!2823 = distinct !DILexicalBlock(scope: !2575, file: !586, line: 490, column: 17)
!2824 = !DILocation(line: 499, column: 35, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2575, file: !586, line: 499, column: 17)
!2826 = !DILocation(line: 499, column: 57, scope: !2825)
!2827 = !DILocation(line: 0, scope: !2575)
!2828 = !DILocation(line: 502, column: 11, scope: !2575)
!2829 = !DILocation(line: 504, column: 17, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2575, file: !586, line: 503, column: 17)
!2831 = !DILocation(line: 507, column: 11, scope: !2575)
!2832 = !DILocation(line: 508, column: 17, scope: !2575)
!2833 = !DILocation(line: 517, column: 15, scope: !2576)
!2834 = !DILocation(line: 517, column: 40, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2576, file: !586, line: 517, column: 15)
!2836 = !DILocation(line: 517, column: 47, scope: !2835)
!2837 = !DILocation(line: 517, column: 18, scope: !2835)
!2838 = !DILocation(line: 521, column: 17, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2576, file: !586, line: 521, column: 15)
!2840 = !DILocation(line: 521, column: 15, scope: !2576)
!2841 = !DILocation(line: 525, column: 11, scope: !2576)
!2842 = !DILocation(line: 537, column: 15, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2576, file: !586, line: 536, column: 15)
!2844 = !DILocation(line: 544, column: 15, scope: !2576)
!2845 = !DILocation(line: 546, column: 19, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !586, line: 545, column: 13)
!2847 = distinct !DILexicalBlock(scope: !2576, file: !586, line: 544, column: 15)
!2848 = !DILocation(line: 549, column: 19, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !586, line: 549, column: 19)
!2850 = !DILocation(line: 549, column: 30, scope: !2849)
!2851 = !DILocation(line: 558, column: 15, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !586, line: 558, column: 15)
!2853 = distinct !DILexicalBlock(scope: !2846, file: !586, line: 558, column: 15)
!2854 = !DILocation(line: 558, column: 15, scope: !2853)
!2855 = !DILocation(line: 559, column: 15, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !586, line: 559, column: 15)
!2857 = distinct !DILexicalBlock(scope: !2846, file: !586, line: 559, column: 15)
!2858 = !DILocation(line: 559, column: 15, scope: !2857)
!2859 = !DILocation(line: 560, column: 15, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !586, line: 560, column: 15)
!2861 = distinct !DILexicalBlock(scope: !2846, file: !586, line: 560, column: 15)
!2862 = !DILocation(line: 560, column: 15, scope: !2861)
!2863 = !DILocation(line: 562, column: 13, scope: !2846)
!2864 = !DILocation(line: 602, column: 17, scope: !2579)
!2865 = !DILocation(line: 0, scope: !2579)
!2866 = !DILocation(line: 605, column: 29, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2583, file: !586, line: 603, column: 15)
!2868 = !DILocation(line: 605, column: 27, scope: !2867)
!2869 = !DILocation(line: 606, column: 15, scope: !2867)
!2870 = !DILocation(line: 609, column: 17, scope: !2582)
!2871 = !DILocation(line: 0, scope: !2642, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 609, column: 32, scope: !2582)
!2873 = !DILocation(line: 0, scope: !2650, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 1137, column: 3, scope: !2642, inlinedAt: !2872)
!2875 = !DILocation(line: 59, column: 10, scope: !2650, inlinedAt: !2874)
!2876 = !DILocation(line: 613, column: 29, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2582, file: !586, line: 613, column: 21)
!2878 = !DILocation(line: 613, column: 21, scope: !2582)
!2879 = !DILocation(line: 614, column: 29, scope: !2877)
!2880 = !DILocation(line: 614, column: 19, scope: !2877)
!2881 = !DILocation(line: 618, column: 21, scope: !2585)
!2882 = !DILocation(line: 620, column: 54, scope: !2585)
!2883 = !DILocation(line: 619, column: 36, scope: !2585)
!2884 = !DILocation(line: 621, column: 25, scope: !2585)
!2885 = !DILocation(line: 631, column: 38, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2594, file: !586, line: 629, column: 23)
!2887 = !DILocation(line: 631, column: 48, scope: !2886)
!2888 = !DILocation(line: 626, column: 25, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2595, file: !586, line: 624, column: 23)
!2890 = !DILocation(line: 631, column: 51, scope: !2886)
!2891 = !DILocation(line: 631, column: 25, scope: !2886)
!2892 = !DILocation(line: 632, column: 28, scope: !2886)
!2893 = !DILocation(line: 631, column: 34, scope: !2886)
!2894 = distinct !{!2894, !2891, !2892, !1039}
!2895 = !DILocation(line: 0, scope: !2590)
!2896 = !DILocation(line: 646, column: 29, scope: !2592)
!2897 = !DILocation(line: 649, column: 39, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2590, file: !586, line: 648, column: 29)
!2899 = !DILocation(line: 649, column: 31, scope: !2898)
!2900 = !DILocation(line: 648, column: 60, scope: !2898)
!2901 = !DILocation(line: 648, column: 50, scope: !2898)
!2902 = !DILocation(line: 648, column: 29, scope: !2590)
!2903 = distinct !{!2903, !2902, !2904, !1039}
!2904 = !DILocation(line: 654, column: 33, scope: !2590)
!2905 = !DILocation(line: 657, column: 43, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2593, file: !586, line: 657, column: 29)
!2907 = !DILocalVariable(name: "wc", arg: 1, scope: !2908, file: !1446, line: 865, type: !1515)
!2908 = distinct !DISubprogram(name: "c32isprint", scope: !1446, file: !1446, line: 865, type: !1513, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2909)
!2909 = !{!2907}
!2910 = !DILocation(line: 0, scope: !2908, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 657, column: 31, scope: !2906)
!2912 = !DILocation(line: 871, column: 10, scope: !2908, inlinedAt: !2911)
!2913 = !DILocation(line: 657, column: 31, scope: !2906)
!2914 = !DILocation(line: 664, column: 23, scope: !2585)
!2915 = !DILocation(line: 665, column: 19, scope: !2586)
!2916 = !DILocation(line: 666, column: 15, scope: !2583)
!2917 = !DILocation(line: 0, scope: !2583)
!2918 = !DILocation(line: 670, column: 19, scope: !2599)
!2919 = !DILocation(line: 670, column: 23, scope: !2599)
!2920 = !DILocation(line: 674, column: 33, scope: !2598)
!2921 = !DILocation(line: 0, scope: !2598)
!2922 = !DILocation(line: 676, column: 17, scope: !2598)
!2923 = !DILocation(line: 398, column: 12, scope: !2569)
!2924 = !DILocation(line: 678, column: 43, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !586, line: 678, column: 25)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !586, line: 677, column: 19)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !586, line: 676, column: 17)
!2928 = distinct !DILexicalBlock(scope: !2598, file: !586, line: 676, column: 17)
!2929 = !DILocation(line: 680, column: 25, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !586, line: 680, column: 25)
!2931 = distinct !DILexicalBlock(scope: !2925, file: !586, line: 679, column: 23)
!2932 = !DILocation(line: 680, column: 25, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2930, file: !586, line: 680, column: 25)
!2934 = !DILocation(line: 680, column: 25, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !586, line: 680, column: 25)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !586, line: 680, column: 25)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !586, line: 680, column: 25)
!2938 = !DILocation(line: 680, column: 25, scope: !2936)
!2939 = !DILocation(line: 680, column: 25, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !586, line: 680, column: 25)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !586, line: 680, column: 25)
!2942 = !DILocation(line: 680, column: 25, scope: !2941)
!2943 = !DILocation(line: 680, column: 25, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !586, line: 680, column: 25)
!2945 = distinct !DILexicalBlock(scope: !2937, file: !586, line: 680, column: 25)
!2946 = !DILocation(line: 680, column: 25, scope: !2945)
!2947 = !DILocation(line: 680, column: 25, scope: !2937)
!2948 = !DILocation(line: 680, column: 25, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !586, line: 680, column: 25)
!2950 = distinct !DILexicalBlock(scope: !2930, file: !586, line: 680, column: 25)
!2951 = !DILocation(line: 680, column: 25, scope: !2950)
!2952 = !DILocation(line: 681, column: 25, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !586, line: 681, column: 25)
!2954 = distinct !DILexicalBlock(scope: !2931, file: !586, line: 681, column: 25)
!2955 = !DILocation(line: 681, column: 25, scope: !2954)
!2956 = !DILocation(line: 682, column: 25, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !586, line: 682, column: 25)
!2958 = distinct !DILexicalBlock(scope: !2931, file: !586, line: 682, column: 25)
!2959 = !DILocation(line: 682, column: 25, scope: !2958)
!2960 = !DILocation(line: 683, column: 38, scope: !2931)
!2961 = !DILocation(line: 683, column: 33, scope: !2931)
!2962 = !DILocation(line: 684, column: 23, scope: !2931)
!2963 = !DILocation(line: 685, column: 30, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2925, file: !586, line: 685, column: 30)
!2965 = !DILocation(line: 685, column: 30, scope: !2925)
!2966 = !DILocation(line: 687, column: 25, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !586, line: 687, column: 25)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !586, line: 687, column: 25)
!2969 = distinct !DILexicalBlock(scope: !2964, file: !586, line: 686, column: 23)
!2970 = !DILocation(line: 687, column: 25, scope: !2968)
!2971 = !DILocation(line: 689, column: 23, scope: !2969)
!2972 = !DILocation(line: 690, column: 35, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2926, file: !586, line: 690, column: 25)
!2974 = !DILocation(line: 690, column: 30, scope: !2973)
!2975 = !DILocation(line: 690, column: 25, scope: !2926)
!2976 = !DILocation(line: 692, column: 21, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !586, line: 692, column: 21)
!2978 = distinct !DILexicalBlock(scope: !2926, file: !586, line: 692, column: 21)
!2979 = !DILocation(line: 692, column: 21, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !586, line: 692, column: 21)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !586, line: 692, column: 21)
!2982 = distinct !DILexicalBlock(scope: !2977, file: !586, line: 692, column: 21)
!2983 = !DILocation(line: 692, column: 21, scope: !2981)
!2984 = !DILocation(line: 692, column: 21, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !586, line: 692, column: 21)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !586, line: 692, column: 21)
!2987 = !DILocation(line: 692, column: 21, scope: !2986)
!2988 = !DILocation(line: 692, column: 21, scope: !2982)
!2989 = !DILocation(line: 0, scope: !2926)
!2990 = !DILocation(line: 693, column: 21, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !586, line: 693, column: 21)
!2992 = distinct !DILexicalBlock(scope: !2926, file: !586, line: 693, column: 21)
!2993 = !DILocation(line: 693, column: 21, scope: !2992)
!2994 = !DILocation(line: 694, column: 25, scope: !2926)
!2995 = !DILocation(line: 676, column: 17, scope: !2927)
!2996 = distinct !{!2996, !2997, !2998}
!2997 = !DILocation(line: 676, column: 17, scope: !2928)
!2998 = !DILocation(line: 695, column: 19, scope: !2928)
!2999 = !DILocation(line: 409, column: 30, scope: !2720)
!3000 = !DILocation(line: 702, column: 34, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2569, file: !586, line: 702, column: 11)
!3002 = !DILocation(line: 704, column: 14, scope: !3001)
!3003 = !DILocation(line: 705, column: 14, scope: !3001)
!3004 = !DILocation(line: 705, column: 35, scope: !3001)
!3005 = !DILocation(line: 705, column: 17, scope: !3001)
!3006 = !DILocation(line: 705, column: 47, scope: !3001)
!3007 = !DILocation(line: 705, column: 65, scope: !3001)
!3008 = !DILocation(line: 706, column: 11, scope: !3001)
!3009 = !DILocation(line: 702, column: 11, scope: !2569)
!3010 = !DILocation(line: 395, column: 15, scope: !2567)
!3011 = !DILocation(line: 709, column: 5, scope: !2569)
!3012 = !DILocation(line: 710, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2569, file: !586, line: 710, column: 7)
!3014 = !DILocation(line: 710, column: 7, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3013, file: !586, line: 710, column: 7)
!3016 = !DILocation(line: 710, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !586, line: 710, column: 7)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !586, line: 710, column: 7)
!3019 = distinct !DILexicalBlock(scope: !3015, file: !586, line: 710, column: 7)
!3020 = !DILocation(line: 710, column: 7, scope: !3018)
!3021 = !DILocation(line: 710, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !586, line: 710, column: 7)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !586, line: 710, column: 7)
!3024 = !DILocation(line: 710, column: 7, scope: !3023)
!3025 = !DILocation(line: 710, column: 7, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !586, line: 710, column: 7)
!3027 = distinct !DILexicalBlock(scope: !3019, file: !586, line: 710, column: 7)
!3028 = !DILocation(line: 710, column: 7, scope: !3027)
!3029 = !DILocation(line: 710, column: 7, scope: !3019)
!3030 = !DILocation(line: 710, column: 7, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !586, line: 710, column: 7)
!3032 = distinct !DILexicalBlock(scope: !3013, file: !586, line: 710, column: 7)
!3033 = !DILocation(line: 710, column: 7, scope: !3032)
!3034 = !DILocation(line: 712, column: 5, scope: !2569)
!3035 = !DILocation(line: 713, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !586, line: 713, column: 7)
!3037 = distinct !DILexicalBlock(scope: !2569, file: !586, line: 713, column: 7)
!3038 = !DILocation(line: 417, column: 21, scope: !2569)
!3039 = !DILocation(line: 713, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !586, line: 713, column: 7)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !586, line: 713, column: 7)
!3042 = distinct !DILexicalBlock(scope: !3036, file: !586, line: 713, column: 7)
!3043 = !DILocation(line: 713, column: 7, scope: !3041)
!3044 = !DILocation(line: 713, column: 7, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !586, line: 713, column: 7)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !586, line: 713, column: 7)
!3047 = !DILocation(line: 713, column: 7, scope: !3046)
!3048 = !DILocation(line: 713, column: 7, scope: !3042)
!3049 = !DILocation(line: 714, column: 7, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !586, line: 714, column: 7)
!3051 = distinct !DILexicalBlock(scope: !2569, file: !586, line: 714, column: 7)
!3052 = !DILocation(line: 714, column: 7, scope: !3051)
!3053 = !DILocation(line: 716, column: 13, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2569, file: !586, line: 716, column: 11)
!3055 = !DILocation(line: 716, column: 11, scope: !2569)
!3056 = !DILocation(line: 718, column: 5, scope: !2570)
!3057 = !DILocation(line: 395, column: 82, scope: !2570)
!3058 = !DILocation(line: 395, column: 3, scope: !2570)
!3059 = distinct !{!3059, !2716, !3060, !1039}
!3060 = !DILocation(line: 718, column: 5, scope: !2567)
!3061 = !DILocation(line: 720, column: 11, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2535, file: !586, line: 720, column: 7)
!3063 = !DILocation(line: 720, column: 16, scope: !3062)
!3064 = !DILocation(line: 728, column: 51, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2535, file: !586, line: 728, column: 7)
!3066 = !DILocation(line: 731, column: 11, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !586, line: 731, column: 11)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !586, line: 730, column: 5)
!3069 = !DILocation(line: 731, column: 11, scope: !3068)
!3070 = !DILocation(line: 732, column: 16, scope: !3067)
!3071 = !DILocation(line: 732, column: 9, scope: !3067)
!3072 = !DILocation(line: 736, column: 18, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3067, file: !586, line: 736, column: 16)
!3074 = !DILocation(line: 736, column: 29, scope: !3073)
!3075 = !DILocation(line: 745, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !2535, file: !586, line: 745, column: 7)
!3077 = !DILocation(line: 745, column: 20, scope: !3076)
!3078 = !DILocation(line: 746, column: 12, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !586, line: 746, column: 5)
!3080 = distinct !DILexicalBlock(scope: !3076, file: !586, line: 746, column: 5)
!3081 = !DILocation(line: 746, column: 5, scope: !3080)
!3082 = !DILocation(line: 747, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !586, line: 747, column: 7)
!3084 = distinct !DILexicalBlock(scope: !3079, file: !586, line: 747, column: 7)
!3085 = !DILocation(line: 747, column: 7, scope: !3084)
!3086 = !DILocation(line: 746, column: 39, scope: !3079)
!3087 = distinct !{!3087, !3081, !3088, !1039}
!3088 = !DILocation(line: 747, column: 7, scope: !3080)
!3089 = !DILocation(line: 749, column: 11, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !2535, file: !586, line: 749, column: 7)
!3091 = !DILocation(line: 749, column: 7, scope: !2535)
!3092 = !DILocation(line: 750, column: 5, scope: !3090)
!3093 = !DILocation(line: 750, column: 17, scope: !3090)
!3094 = !DILocation(line: 753, column: 2, scope: !2535)
!3095 = !DILocation(line: 756, column: 51, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !2535, file: !586, line: 756, column: 7)
!3097 = !DILocation(line: 756, column: 21, scope: !3096)
!3098 = !DILocation(line: 760, column: 42, scope: !2535)
!3099 = !DILocation(line: 758, column: 10, scope: !2535)
!3100 = !DILocation(line: 758, column: 3, scope: !2535)
!3101 = !DILocation(line: 762, column: 1, scope: !2535)
!3102 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1116, file: !1116, line: 98, type: !3103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!139}
!3105 = !DISubprogram(name: "strlen", scope: !1112, file: !1112, line: 407, type: !3106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!141, !142}
!3108 = !DISubprogram(name: "iswprint", scope: !1747, file: !1747, line: 120, type: !1513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3109 = distinct !DISubprogram(name: "quotearg_alloc", scope: !586, file: !586, line: 788, type: !3110, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!136, !142, !139, !2428}
!3112 = !{!3113, !3114, !3115}
!3113 = !DILocalVariable(name: "arg", arg: 1, scope: !3109, file: !586, line: 788, type: !142)
!3114 = !DILocalVariable(name: "argsize", arg: 2, scope: !3109, file: !586, line: 788, type: !139)
!3115 = !DILocalVariable(name: "o", arg: 3, scope: !3109, file: !586, line: 789, type: !2428)
!3116 = !DILocation(line: 0, scope: !3109)
!3117 = !DILocalVariable(name: "arg", arg: 1, scope: !3118, file: !586, line: 801, type: !142)
!3118 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !586, file: !586, line: 801, type: !3119, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!136, !142, !139, !837, !2428}
!3121 = !{!3117, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129}
!3122 = !DILocalVariable(name: "argsize", arg: 2, scope: !3118, file: !586, line: 801, type: !139)
!3123 = !DILocalVariable(name: "size", arg: 3, scope: !3118, file: !586, line: 801, type: !837)
!3124 = !DILocalVariable(name: "o", arg: 4, scope: !3118, file: !586, line: 802, type: !2428)
!3125 = !DILocalVariable(name: "p", scope: !3118, file: !586, line: 804, type: !2428)
!3126 = !DILocalVariable(name: "saved_errno", scope: !3118, file: !586, line: 805, type: !83)
!3127 = !DILocalVariable(name: "flags", scope: !3118, file: !586, line: 807, type: !83)
!3128 = !DILocalVariable(name: "bufsize", scope: !3118, file: !586, line: 808, type: !139)
!3129 = !DILocalVariable(name: "buf", scope: !3118, file: !586, line: 812, type: !136)
!3130 = !DILocation(line: 0, scope: !3118, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 791, column: 10, scope: !3109)
!3132 = !DILocation(line: 804, column: 37, scope: !3118, inlinedAt: !3131)
!3133 = !DILocation(line: 805, column: 21, scope: !3118, inlinedAt: !3131)
!3134 = !DILocation(line: 807, column: 18, scope: !3118, inlinedAt: !3131)
!3135 = !DILocation(line: 807, column: 24, scope: !3118, inlinedAt: !3131)
!3136 = !DILocation(line: 808, column: 72, scope: !3118, inlinedAt: !3131)
!3137 = !DILocation(line: 809, column: 56, scope: !3118, inlinedAt: !3131)
!3138 = !DILocation(line: 810, column: 49, scope: !3118, inlinedAt: !3131)
!3139 = !DILocation(line: 811, column: 49, scope: !3118, inlinedAt: !3131)
!3140 = !DILocation(line: 808, column: 20, scope: !3118, inlinedAt: !3131)
!3141 = !DILocation(line: 811, column: 62, scope: !3118, inlinedAt: !3131)
!3142 = !DILocation(line: 812, column: 15, scope: !3118, inlinedAt: !3131)
!3143 = !DILocation(line: 813, column: 60, scope: !3118, inlinedAt: !3131)
!3144 = !DILocation(line: 815, column: 32, scope: !3118, inlinedAt: !3131)
!3145 = !DILocation(line: 815, column: 47, scope: !3118, inlinedAt: !3131)
!3146 = !DILocation(line: 813, column: 3, scope: !3118, inlinedAt: !3131)
!3147 = !DILocation(line: 816, column: 9, scope: !3118, inlinedAt: !3131)
!3148 = !DILocation(line: 791, column: 3, scope: !3109)
!3149 = !DILocation(line: 0, scope: !3118)
!3150 = !DILocation(line: 804, column: 37, scope: !3118)
!3151 = !DILocation(line: 805, column: 21, scope: !3118)
!3152 = !DILocation(line: 807, column: 18, scope: !3118)
!3153 = !DILocation(line: 807, column: 27, scope: !3118)
!3154 = !DILocation(line: 807, column: 24, scope: !3118)
!3155 = !DILocation(line: 808, column: 72, scope: !3118)
!3156 = !DILocation(line: 809, column: 56, scope: !3118)
!3157 = !DILocation(line: 810, column: 49, scope: !3118)
!3158 = !DILocation(line: 811, column: 49, scope: !3118)
!3159 = !DILocation(line: 808, column: 20, scope: !3118)
!3160 = !DILocation(line: 811, column: 62, scope: !3118)
!3161 = !DILocation(line: 812, column: 15, scope: !3118)
!3162 = !DILocation(line: 813, column: 60, scope: !3118)
!3163 = !DILocation(line: 815, column: 32, scope: !3118)
!3164 = !DILocation(line: 815, column: 47, scope: !3118)
!3165 = !DILocation(line: 813, column: 3, scope: !3118)
!3166 = !DILocation(line: 816, column: 9, scope: !3118)
!3167 = !DILocation(line: 817, column: 7, scope: !3118)
!3168 = !DILocation(line: 818, column: 11, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3118, file: !586, line: 817, column: 7)
!3170 = !{!1293, !1293, i64 0}
!3171 = !DILocation(line: 818, column: 5, scope: !3169)
!3172 = !DILocation(line: 819, column: 3, scope: !3118)
!3173 = distinct !DISubprogram(name: "quotearg_free", scope: !586, file: !586, line: 837, type: !545, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3174)
!3174 = !{!3175, !3176}
!3175 = !DILocalVariable(name: "sv", scope: !3173, file: !586, line: 839, type: !675)
!3176 = !DILocalVariable(name: "i", scope: !3177, file: !586, line: 840, type: !83)
!3177 = distinct !DILexicalBlock(scope: !3173, file: !586, line: 840, column: 3)
!3178 = !DILocation(line: 839, column: 24, scope: !3173)
!3179 = !DILocation(line: 0, scope: !3173)
!3180 = !DILocation(line: 0, scope: !3177)
!3181 = !DILocation(line: 840, column: 21, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !586, line: 840, column: 3)
!3183 = !DILocation(line: 840, column: 3, scope: !3177)
!3184 = !DILocation(line: 842, column: 13, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3173, file: !586, line: 842, column: 7)
!3186 = !{!3187, !922, i64 8}
!3187 = !{!"slotvec", !1293, i64 0, !922, i64 8}
!3188 = !DILocation(line: 842, column: 17, scope: !3185)
!3189 = !DILocation(line: 842, column: 7, scope: !3173)
!3190 = !DILocation(line: 841, column: 17, scope: !3182)
!3191 = !DILocation(line: 841, column: 5, scope: !3182)
!3192 = !DILocation(line: 840, column: 32, scope: !3182)
!3193 = distinct !{!3193, !3183, !3194, !1039}
!3194 = !DILocation(line: 841, column: 20, scope: !3177)
!3195 = !DILocation(line: 844, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3185, file: !586, line: 843, column: 5)
!3197 = !DILocation(line: 845, column: 21, scope: !3196)
!3198 = !{!3187, !1293, i64 0}
!3199 = !DILocation(line: 846, column: 20, scope: !3196)
!3200 = !DILocation(line: 847, column: 5, scope: !3196)
!3201 = !DILocation(line: 848, column: 10, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3173, file: !586, line: 848, column: 7)
!3203 = !DILocation(line: 848, column: 7, scope: !3173)
!3204 = !DILocation(line: 850, column: 7, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3202, file: !586, line: 849, column: 5)
!3206 = !DILocation(line: 851, column: 15, scope: !3205)
!3207 = !DILocation(line: 852, column: 5, scope: !3205)
!3208 = !DILocation(line: 853, column: 10, scope: !3173)
!3209 = !DILocation(line: 854, column: 1, scope: !3173)
!3210 = !DISubprogram(name: "free", scope: !2389, file: !2389, line: 786, type: !3211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !137}
!3213 = distinct !DISubprogram(name: "quotearg_n", scope: !586, file: !586, line: 919, type: !1109, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3214)
!3214 = !{!3215, !3216}
!3215 = !DILocalVariable(name: "n", arg: 1, scope: !3213, file: !586, line: 919, type: !83)
!3216 = !DILocalVariable(name: "arg", arg: 2, scope: !3213, file: !586, line: 919, type: !142)
!3217 = !DILocation(line: 0, scope: !3213)
!3218 = !DILocation(line: 921, column: 10, scope: !3213)
!3219 = !DILocation(line: 921, column: 3, scope: !3213)
!3220 = distinct !DISubprogram(name: "quotearg_n_options", scope: !586, file: !586, line: 866, type: !3221, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!136, !83, !142, !139, !2428}
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3234, !3235, !3237, !3238, !3239}
!3224 = !DILocalVariable(name: "n", arg: 1, scope: !3220, file: !586, line: 866, type: !83)
!3225 = !DILocalVariable(name: "arg", arg: 2, scope: !3220, file: !586, line: 866, type: !142)
!3226 = !DILocalVariable(name: "argsize", arg: 3, scope: !3220, file: !586, line: 866, type: !139)
!3227 = !DILocalVariable(name: "options", arg: 4, scope: !3220, file: !586, line: 867, type: !2428)
!3228 = !DILocalVariable(name: "saved_errno", scope: !3220, file: !586, line: 869, type: !83)
!3229 = !DILocalVariable(name: "sv", scope: !3220, file: !586, line: 871, type: !675)
!3230 = !DILocalVariable(name: "nslots_max", scope: !3220, file: !586, line: 873, type: !83)
!3231 = !DILocalVariable(name: "preallocated", scope: !3232, file: !586, line: 879, type: !168)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !586, line: 878, column: 5)
!3233 = distinct !DILexicalBlock(scope: !3220, file: !586, line: 877, column: 7)
!3234 = !DILocalVariable(name: "new_nslots", scope: !3232, file: !586, line: 880, type: !850)
!3235 = !DILocalVariable(name: "size", scope: !3236, file: !586, line: 891, type: !139)
!3236 = distinct !DILexicalBlock(scope: !3220, file: !586, line: 890, column: 3)
!3237 = !DILocalVariable(name: "val", scope: !3236, file: !586, line: 892, type: !136)
!3238 = !DILocalVariable(name: "flags", scope: !3236, file: !586, line: 894, type: !83)
!3239 = !DILocalVariable(name: "qsize", scope: !3236, file: !586, line: 895, type: !139)
!3240 = distinct !DIAssignID()
!3241 = !DILocation(line: 0, scope: !3232)
!3242 = !DILocation(line: 0, scope: !3220)
!3243 = !DILocation(line: 869, column: 21, scope: !3220)
!3244 = !DILocation(line: 871, column: 24, scope: !3220)
!3245 = !DILocation(line: 874, column: 17, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3220, file: !586, line: 874, column: 7)
!3247 = !DILocation(line: 875, column: 5, scope: !3246)
!3248 = !DILocation(line: 877, column: 7, scope: !3233)
!3249 = !DILocation(line: 877, column: 14, scope: !3233)
!3250 = !DILocation(line: 877, column: 7, scope: !3220)
!3251 = !DILocation(line: 879, column: 31, scope: !3232)
!3252 = !DILocation(line: 880, column: 7, scope: !3232)
!3253 = !DILocation(line: 880, column: 26, scope: !3232)
!3254 = !DILocation(line: 880, column: 13, scope: !3232)
!3255 = distinct !DIAssignID()
!3256 = !DILocation(line: 882, column: 31, scope: !3232)
!3257 = !DILocation(line: 883, column: 33, scope: !3232)
!3258 = !DILocation(line: 883, column: 42, scope: !3232)
!3259 = !DILocation(line: 883, column: 31, scope: !3232)
!3260 = !DILocation(line: 882, column: 22, scope: !3232)
!3261 = !DILocation(line: 882, column: 15, scope: !3232)
!3262 = !DILocation(line: 884, column: 11, scope: !3232)
!3263 = !DILocation(line: 885, column: 15, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3232, file: !586, line: 884, column: 11)
!3265 = !{i64 0, i64 8, !3170, i64 8, i64 8, !921}
!3266 = !DILocation(line: 885, column: 9, scope: !3264)
!3267 = !DILocation(line: 886, column: 20, scope: !3232)
!3268 = !DILocation(line: 886, column: 18, scope: !3232)
!3269 = !DILocation(line: 886, column: 32, scope: !3232)
!3270 = !DILocation(line: 886, column: 43, scope: !3232)
!3271 = !DILocation(line: 886, column: 53, scope: !3232)
!3272 = !DILocation(line: 0, scope: !2650, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 886, column: 7, scope: !3232)
!3274 = !DILocation(line: 59, column: 10, scope: !2650, inlinedAt: !3273)
!3275 = !DILocation(line: 887, column: 16, scope: !3232)
!3276 = !DILocation(line: 887, column: 14, scope: !3232)
!3277 = !DILocation(line: 888, column: 5, scope: !3233)
!3278 = !DILocation(line: 888, column: 5, scope: !3232)
!3279 = !DILocation(line: 891, column: 19, scope: !3236)
!3280 = !DILocation(line: 891, column: 25, scope: !3236)
!3281 = !DILocation(line: 0, scope: !3236)
!3282 = !DILocation(line: 892, column: 23, scope: !3236)
!3283 = !DILocation(line: 894, column: 26, scope: !3236)
!3284 = !DILocation(line: 894, column: 32, scope: !3236)
!3285 = !DILocation(line: 896, column: 55, scope: !3236)
!3286 = !DILocation(line: 897, column: 55, scope: !3236)
!3287 = !DILocation(line: 898, column: 55, scope: !3236)
!3288 = !DILocation(line: 899, column: 55, scope: !3236)
!3289 = !DILocation(line: 895, column: 20, scope: !3236)
!3290 = !DILocation(line: 901, column: 14, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3236, file: !586, line: 901, column: 9)
!3292 = !DILocation(line: 901, column: 9, scope: !3236)
!3293 = !DILocation(line: 903, column: 35, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3291, file: !586, line: 902, column: 7)
!3295 = !DILocation(line: 903, column: 20, scope: !3294)
!3296 = !DILocation(line: 904, column: 17, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !586, line: 904, column: 13)
!3298 = !DILocation(line: 904, column: 13, scope: !3294)
!3299 = !DILocation(line: 905, column: 11, scope: !3297)
!3300 = !DILocation(line: 906, column: 27, scope: !3294)
!3301 = !DILocation(line: 906, column: 19, scope: !3294)
!3302 = !DILocation(line: 907, column: 69, scope: !3294)
!3303 = !DILocation(line: 909, column: 44, scope: !3294)
!3304 = !DILocation(line: 910, column: 44, scope: !3294)
!3305 = !DILocation(line: 907, column: 9, scope: !3294)
!3306 = !DILocation(line: 911, column: 7, scope: !3294)
!3307 = !DILocation(line: 913, column: 11, scope: !3236)
!3308 = !DILocation(line: 914, column: 5, scope: !3236)
!3309 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !586, file: !586, line: 925, type: !3310, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!136, !83, !142, !139}
!3312 = !{!3313, !3314, !3315}
!3313 = !DILocalVariable(name: "n", arg: 1, scope: !3309, file: !586, line: 925, type: !83)
!3314 = !DILocalVariable(name: "arg", arg: 2, scope: !3309, file: !586, line: 925, type: !142)
!3315 = !DILocalVariable(name: "argsize", arg: 3, scope: !3309, file: !586, line: 925, type: !139)
!3316 = !DILocation(line: 0, scope: !3309)
!3317 = !DILocation(line: 927, column: 10, scope: !3309)
!3318 = !DILocation(line: 927, column: 3, scope: !3309)
!3319 = distinct !DISubprogram(name: "quotearg", scope: !586, file: !586, line: 931, type: !1118, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3320)
!3320 = !{!3321}
!3321 = !DILocalVariable(name: "arg", arg: 1, scope: !3319, file: !586, line: 931, type: !142)
!3322 = !DILocation(line: 0, scope: !3319)
!3323 = !DILocation(line: 0, scope: !3213, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 933, column: 10, scope: !3319)
!3325 = !DILocation(line: 921, column: 10, scope: !3213, inlinedAt: !3324)
!3326 = !DILocation(line: 933, column: 3, scope: !3319)
!3327 = distinct !DISubprogram(name: "quotearg_mem", scope: !586, file: !586, line: 937, type: !3328, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!136, !142, !139}
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "arg", arg: 1, scope: !3327, file: !586, line: 937, type: !142)
!3332 = !DILocalVariable(name: "argsize", arg: 2, scope: !3327, file: !586, line: 937, type: !139)
!3333 = !DILocation(line: 0, scope: !3327)
!3334 = !DILocation(line: 0, scope: !3309, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 939, column: 10, scope: !3327)
!3336 = !DILocation(line: 927, column: 10, scope: !3309, inlinedAt: !3335)
!3337 = !DILocation(line: 939, column: 3, scope: !3327)
!3338 = distinct !DISubprogram(name: "quotearg_n_style", scope: !586, file: !586, line: 943, type: !3339, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!136, !83, !612, !142}
!3341 = !{!3342, !3343, !3344, !3345}
!3342 = !DILocalVariable(name: "n", arg: 1, scope: !3338, file: !586, line: 943, type: !83)
!3343 = !DILocalVariable(name: "s", arg: 2, scope: !3338, file: !586, line: 943, type: !612)
!3344 = !DILocalVariable(name: "arg", arg: 3, scope: !3338, file: !586, line: 943, type: !142)
!3345 = !DILocalVariable(name: "o", scope: !3338, file: !586, line: 945, type: !2429)
!3346 = distinct !DIAssignID()
!3347 = !DILocation(line: 0, scope: !3338)
!3348 = !DILocation(line: 945, column: 3, scope: !3338)
!3349 = !{!3350}
!3350 = distinct !{!3350, !3351, !"quoting_options_from_style: argument 0"}
!3351 = distinct !{!3351, !"quoting_options_from_style"}
!3352 = !DILocation(line: 945, column: 36, scope: !3338)
!3353 = !DILocalVariable(name: "style", arg: 1, scope: !3354, file: !586, line: 183, type: !612)
!3354 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !586, file: !586, line: 183, type: !3355, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!627, !612}
!3357 = !{!3353, !3358}
!3358 = !DILocalVariable(name: "o", scope: !3354, file: !586, line: 185, type: !627)
!3359 = !DILocation(line: 0, scope: !3354, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 945, column: 36, scope: !3338)
!3361 = !DILocation(line: 185, column: 26, scope: !3354, inlinedAt: !3360)
!3362 = distinct !DIAssignID()
!3363 = !DILocation(line: 186, column: 13, scope: !3364, inlinedAt: !3360)
!3364 = distinct !DILexicalBlock(scope: !3354, file: !586, line: 186, column: 7)
!3365 = !DILocation(line: 186, column: 7, scope: !3354, inlinedAt: !3360)
!3366 = !DILocation(line: 187, column: 5, scope: !3364, inlinedAt: !3360)
!3367 = !DILocation(line: 188, column: 11, scope: !3354, inlinedAt: !3360)
!3368 = distinct !DIAssignID()
!3369 = !DILocation(line: 946, column: 10, scope: !3338)
!3370 = !DILocation(line: 947, column: 1, scope: !3338)
!3371 = !DILocation(line: 946, column: 3, scope: !3338)
!3372 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !586, file: !586, line: 950, type: !3373, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!136, !83, !612, !142, !139}
!3375 = !{!3376, !3377, !3378, !3379, !3380}
!3376 = !DILocalVariable(name: "n", arg: 1, scope: !3372, file: !586, line: 950, type: !83)
!3377 = !DILocalVariable(name: "s", arg: 2, scope: !3372, file: !586, line: 950, type: !612)
!3378 = !DILocalVariable(name: "arg", arg: 3, scope: !3372, file: !586, line: 951, type: !142)
!3379 = !DILocalVariable(name: "argsize", arg: 4, scope: !3372, file: !586, line: 951, type: !139)
!3380 = !DILocalVariable(name: "o", scope: !3372, file: !586, line: 953, type: !2429)
!3381 = distinct !DIAssignID()
!3382 = !DILocation(line: 0, scope: !3372)
!3383 = !DILocation(line: 953, column: 3, scope: !3372)
!3384 = !{!3385}
!3385 = distinct !{!3385, !3386, !"quoting_options_from_style: argument 0"}
!3386 = distinct !{!3386, !"quoting_options_from_style"}
!3387 = !DILocation(line: 953, column: 36, scope: !3372)
!3388 = !DILocation(line: 0, scope: !3354, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 953, column: 36, scope: !3372)
!3390 = !DILocation(line: 185, column: 26, scope: !3354, inlinedAt: !3389)
!3391 = distinct !DIAssignID()
!3392 = !DILocation(line: 186, column: 13, scope: !3364, inlinedAt: !3389)
!3393 = !DILocation(line: 186, column: 7, scope: !3354, inlinedAt: !3389)
!3394 = !DILocation(line: 187, column: 5, scope: !3364, inlinedAt: !3389)
!3395 = !DILocation(line: 188, column: 11, scope: !3354, inlinedAt: !3389)
!3396 = distinct !DIAssignID()
!3397 = !DILocation(line: 954, column: 10, scope: !3372)
!3398 = !DILocation(line: 955, column: 1, scope: !3372)
!3399 = !DILocation(line: 954, column: 3, scope: !3372)
!3400 = distinct !DISubprogram(name: "quotearg_style", scope: !586, file: !586, line: 958, type: !3401, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!136, !612, !142}
!3403 = !{!3404, !3405}
!3404 = !DILocalVariable(name: "s", arg: 1, scope: !3400, file: !586, line: 958, type: !612)
!3405 = !DILocalVariable(name: "arg", arg: 2, scope: !3400, file: !586, line: 958, type: !142)
!3406 = distinct !DIAssignID()
!3407 = !DILocation(line: 0, scope: !3400)
!3408 = !DILocation(line: 0, scope: !3338, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 960, column: 10, scope: !3400)
!3410 = !DILocation(line: 945, column: 3, scope: !3338, inlinedAt: !3409)
!3411 = !{!3412}
!3412 = distinct !{!3412, !3413, !"quoting_options_from_style: argument 0"}
!3413 = distinct !{!3413, !"quoting_options_from_style"}
!3414 = !DILocation(line: 945, column: 36, scope: !3338, inlinedAt: !3409)
!3415 = !DILocation(line: 0, scope: !3354, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 945, column: 36, scope: !3338, inlinedAt: !3409)
!3417 = !DILocation(line: 185, column: 26, scope: !3354, inlinedAt: !3416)
!3418 = distinct !DIAssignID()
!3419 = !DILocation(line: 186, column: 13, scope: !3364, inlinedAt: !3416)
!3420 = !DILocation(line: 186, column: 7, scope: !3354, inlinedAt: !3416)
!3421 = !DILocation(line: 187, column: 5, scope: !3364, inlinedAt: !3416)
!3422 = !DILocation(line: 188, column: 11, scope: !3354, inlinedAt: !3416)
!3423 = distinct !DIAssignID()
!3424 = !DILocation(line: 946, column: 10, scope: !3338, inlinedAt: !3409)
!3425 = !DILocation(line: 947, column: 1, scope: !3338, inlinedAt: !3409)
!3426 = !DILocation(line: 960, column: 3, scope: !3400)
!3427 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !586, file: !586, line: 964, type: !3428, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!136, !612, !142, !139}
!3430 = !{!3431, !3432, !3433}
!3431 = !DILocalVariable(name: "s", arg: 1, scope: !3427, file: !586, line: 964, type: !612)
!3432 = !DILocalVariable(name: "arg", arg: 2, scope: !3427, file: !586, line: 964, type: !142)
!3433 = !DILocalVariable(name: "argsize", arg: 3, scope: !3427, file: !586, line: 964, type: !139)
!3434 = distinct !DIAssignID()
!3435 = !DILocation(line: 0, scope: !3427)
!3436 = !DILocation(line: 0, scope: !3372, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 966, column: 10, scope: !3427)
!3438 = !DILocation(line: 953, column: 3, scope: !3372, inlinedAt: !3437)
!3439 = !{!3440}
!3440 = distinct !{!3440, !3441, !"quoting_options_from_style: argument 0"}
!3441 = distinct !{!3441, !"quoting_options_from_style"}
!3442 = !DILocation(line: 953, column: 36, scope: !3372, inlinedAt: !3437)
!3443 = !DILocation(line: 0, scope: !3354, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 953, column: 36, scope: !3372, inlinedAt: !3437)
!3445 = !DILocation(line: 185, column: 26, scope: !3354, inlinedAt: !3444)
!3446 = distinct !DIAssignID()
!3447 = !DILocation(line: 186, column: 13, scope: !3364, inlinedAt: !3444)
!3448 = !DILocation(line: 186, column: 7, scope: !3354, inlinedAt: !3444)
!3449 = !DILocation(line: 187, column: 5, scope: !3364, inlinedAt: !3444)
!3450 = !DILocation(line: 188, column: 11, scope: !3354, inlinedAt: !3444)
!3451 = distinct !DIAssignID()
!3452 = !DILocation(line: 954, column: 10, scope: !3372, inlinedAt: !3437)
!3453 = !DILocation(line: 955, column: 1, scope: !3372, inlinedAt: !3437)
!3454 = !DILocation(line: 966, column: 3, scope: !3427)
!3455 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !586, file: !586, line: 970, type: !3456, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!136, !142, !139, !4}
!3458 = !{!3459, !3460, !3461, !3462}
!3459 = !DILocalVariable(name: "arg", arg: 1, scope: !3455, file: !586, line: 970, type: !142)
!3460 = !DILocalVariable(name: "argsize", arg: 2, scope: !3455, file: !586, line: 970, type: !139)
!3461 = !DILocalVariable(name: "ch", arg: 3, scope: !3455, file: !586, line: 970, type: !4)
!3462 = !DILocalVariable(name: "options", scope: !3455, file: !586, line: 972, type: !627)
!3463 = distinct !DIAssignID()
!3464 = !DILocation(line: 0, scope: !3455)
!3465 = !DILocation(line: 972, column: 3, scope: !3455)
!3466 = !DILocation(line: 973, column: 13, scope: !3455)
!3467 = !{i64 0, i64 4, !992, i64 4, i64 4, !992, i64 8, i64 32, !1001, i64 40, i64 8, !921, i64 48, i64 8, !921}
!3468 = distinct !DIAssignID()
!3469 = !DILocation(line: 0, scope: !2448, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 974, column: 3, scope: !3455)
!3471 = !DILocation(line: 147, column: 41, scope: !2448, inlinedAt: !3470)
!3472 = !DILocation(line: 147, column: 62, scope: !2448, inlinedAt: !3470)
!3473 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3470)
!3474 = !DILocation(line: 148, column: 15, scope: !2448, inlinedAt: !3470)
!3475 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3470)
!3476 = !DILocation(line: 149, column: 24, scope: !2448, inlinedAt: !3470)
!3477 = !DILocation(line: 150, column: 19, scope: !2448, inlinedAt: !3470)
!3478 = !DILocation(line: 150, column: 24, scope: !2448, inlinedAt: !3470)
!3479 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3470)
!3480 = !DILocation(line: 975, column: 10, scope: !3455)
!3481 = !DILocation(line: 976, column: 1, scope: !3455)
!3482 = !DILocation(line: 975, column: 3, scope: !3455)
!3483 = distinct !DISubprogram(name: "quotearg_char", scope: !586, file: !586, line: 979, type: !3484, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!136, !142, !4}
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "arg", arg: 1, scope: !3483, file: !586, line: 979, type: !142)
!3488 = !DILocalVariable(name: "ch", arg: 2, scope: !3483, file: !586, line: 979, type: !4)
!3489 = distinct !DIAssignID()
!3490 = !DILocation(line: 0, scope: !3483)
!3491 = !DILocation(line: 0, scope: !3455, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 981, column: 10, scope: !3483)
!3493 = !DILocation(line: 972, column: 3, scope: !3455, inlinedAt: !3492)
!3494 = !DILocation(line: 973, column: 13, scope: !3455, inlinedAt: !3492)
!3495 = distinct !DIAssignID()
!3496 = !DILocation(line: 0, scope: !2448, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 974, column: 3, scope: !3455, inlinedAt: !3492)
!3498 = !DILocation(line: 147, column: 41, scope: !2448, inlinedAt: !3497)
!3499 = !DILocation(line: 147, column: 62, scope: !2448, inlinedAt: !3497)
!3500 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3497)
!3501 = !DILocation(line: 148, column: 15, scope: !2448, inlinedAt: !3497)
!3502 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3497)
!3503 = !DILocation(line: 149, column: 24, scope: !2448, inlinedAt: !3497)
!3504 = !DILocation(line: 150, column: 19, scope: !2448, inlinedAt: !3497)
!3505 = !DILocation(line: 150, column: 24, scope: !2448, inlinedAt: !3497)
!3506 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3497)
!3507 = !DILocation(line: 975, column: 10, scope: !3455, inlinedAt: !3492)
!3508 = !DILocation(line: 976, column: 1, scope: !3455, inlinedAt: !3492)
!3509 = !DILocation(line: 981, column: 3, scope: !3483)
!3510 = distinct !DISubprogram(name: "quotearg_colon", scope: !586, file: !586, line: 985, type: !1118, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3511)
!3511 = !{!3512}
!3512 = !DILocalVariable(name: "arg", arg: 1, scope: !3510, file: !586, line: 985, type: !142)
!3513 = distinct !DIAssignID()
!3514 = !DILocation(line: 0, scope: !3510)
!3515 = !DILocation(line: 0, scope: !3483, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 987, column: 10, scope: !3510)
!3517 = !DILocation(line: 0, scope: !3455, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 981, column: 10, scope: !3483, inlinedAt: !3516)
!3519 = !DILocation(line: 972, column: 3, scope: !3455, inlinedAt: !3518)
!3520 = !DILocation(line: 973, column: 13, scope: !3455, inlinedAt: !3518)
!3521 = distinct !DIAssignID()
!3522 = !DILocation(line: 0, scope: !2448, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 974, column: 3, scope: !3455, inlinedAt: !3518)
!3524 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3523)
!3525 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3523)
!3526 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3523)
!3527 = !DILocation(line: 975, column: 10, scope: !3455, inlinedAt: !3518)
!3528 = !DILocation(line: 976, column: 1, scope: !3455, inlinedAt: !3518)
!3529 = !DILocation(line: 987, column: 3, scope: !3510)
!3530 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !586, file: !586, line: 991, type: !3328, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3531)
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "arg", arg: 1, scope: !3530, file: !586, line: 991, type: !142)
!3533 = !DILocalVariable(name: "argsize", arg: 2, scope: !3530, file: !586, line: 991, type: !139)
!3534 = distinct !DIAssignID()
!3535 = !DILocation(line: 0, scope: !3530)
!3536 = !DILocation(line: 0, scope: !3455, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 993, column: 10, scope: !3530)
!3538 = !DILocation(line: 972, column: 3, scope: !3455, inlinedAt: !3537)
!3539 = !DILocation(line: 973, column: 13, scope: !3455, inlinedAt: !3537)
!3540 = distinct !DIAssignID()
!3541 = !DILocation(line: 0, scope: !2448, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 974, column: 3, scope: !3455, inlinedAt: !3537)
!3543 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3542)
!3544 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3542)
!3545 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3542)
!3546 = !DILocation(line: 975, column: 10, scope: !3455, inlinedAt: !3537)
!3547 = !DILocation(line: 976, column: 1, scope: !3455, inlinedAt: !3537)
!3548 = !DILocation(line: 993, column: 3, scope: !3530)
!3549 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !586, file: !586, line: 997, type: !3339, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3550)
!3550 = !{!3551, !3552, !3553, !3554}
!3551 = !DILocalVariable(name: "n", arg: 1, scope: !3549, file: !586, line: 997, type: !83)
!3552 = !DILocalVariable(name: "s", arg: 2, scope: !3549, file: !586, line: 997, type: !612)
!3553 = !DILocalVariable(name: "arg", arg: 3, scope: !3549, file: !586, line: 997, type: !142)
!3554 = !DILocalVariable(name: "options", scope: !3549, file: !586, line: 999, type: !627)
!3555 = distinct !DIAssignID()
!3556 = !DILocation(line: 0, scope: !3549)
!3557 = !DILocation(line: 185, column: 26, scope: !3354, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 1000, column: 13, scope: !3549)
!3559 = !DILocation(line: 999, column: 3, scope: !3549)
!3560 = !DILocation(line: 0, scope: !3354, inlinedAt: !3558)
!3561 = !DILocation(line: 186, column: 13, scope: !3364, inlinedAt: !3558)
!3562 = !DILocation(line: 186, column: 7, scope: !3354, inlinedAt: !3558)
!3563 = !DILocation(line: 187, column: 5, scope: !3364, inlinedAt: !3558)
!3564 = !{!3565}
!3565 = distinct !{!3565, !3566, !"quoting_options_from_style: argument 0"}
!3566 = distinct !{!3566, !"quoting_options_from_style"}
!3567 = !DILocation(line: 1000, column: 13, scope: !3549)
!3568 = distinct !DIAssignID()
!3569 = distinct !DIAssignID()
!3570 = !DILocation(line: 0, scope: !2448, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 1001, column: 3, scope: !3549)
!3572 = !DILocation(line: 147, column: 57, scope: !2448, inlinedAt: !3571)
!3573 = !DILocation(line: 149, column: 21, scope: !2448, inlinedAt: !3571)
!3574 = !DILocation(line: 150, column: 6, scope: !2448, inlinedAt: !3571)
!3575 = distinct !DIAssignID()
!3576 = !DILocation(line: 1002, column: 10, scope: !3549)
!3577 = !DILocation(line: 1003, column: 1, scope: !3549)
!3578 = !DILocation(line: 1002, column: 3, scope: !3549)
!3579 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !586, file: !586, line: 1006, type: !3580, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!136, !83, !142, !142, !142}
!3582 = !{!3583, !3584, !3585, !3586}
!3583 = !DILocalVariable(name: "n", arg: 1, scope: !3579, file: !586, line: 1006, type: !83)
!3584 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3579, file: !586, line: 1006, type: !142)
!3585 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3579, file: !586, line: 1007, type: !142)
!3586 = !DILocalVariable(name: "arg", arg: 4, scope: !3579, file: !586, line: 1007, type: !142)
!3587 = distinct !DIAssignID()
!3588 = !DILocation(line: 0, scope: !3579)
!3589 = !DILocalVariable(name: "o", scope: !3590, file: !586, line: 1018, type: !627)
!3590 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !586, file: !586, line: 1014, type: !3591, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!136, !83, !142, !142, !142, !139}
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3589}
!3594 = !DILocalVariable(name: "n", arg: 1, scope: !3590, file: !586, line: 1014, type: !83)
!3595 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3590, file: !586, line: 1014, type: !142)
!3596 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3590, file: !586, line: 1015, type: !142)
!3597 = !DILocalVariable(name: "arg", arg: 4, scope: !3590, file: !586, line: 1016, type: !142)
!3598 = !DILocalVariable(name: "argsize", arg: 5, scope: !3590, file: !586, line: 1016, type: !139)
!3599 = !DILocation(line: 0, scope: !3590, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 1009, column: 10, scope: !3579)
!3601 = !DILocation(line: 1018, column: 3, scope: !3590, inlinedAt: !3600)
!3602 = !DILocation(line: 1018, column: 30, scope: !3590, inlinedAt: !3600)
!3603 = distinct !DIAssignID()
!3604 = distinct !DIAssignID()
!3605 = !DILocation(line: 0, scope: !2488, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 1019, column: 3, scope: !3590, inlinedAt: !3600)
!3607 = !DILocation(line: 174, column: 12, scope: !2488, inlinedAt: !3606)
!3608 = distinct !DIAssignID()
!3609 = !DILocation(line: 175, column: 8, scope: !2501, inlinedAt: !3606)
!3610 = !DILocation(line: 175, column: 19, scope: !2501, inlinedAt: !3606)
!3611 = !DILocation(line: 176, column: 5, scope: !2501, inlinedAt: !3606)
!3612 = !DILocation(line: 177, column: 6, scope: !2488, inlinedAt: !3606)
!3613 = !DILocation(line: 177, column: 17, scope: !2488, inlinedAt: !3606)
!3614 = distinct !DIAssignID()
!3615 = !DILocation(line: 178, column: 6, scope: !2488, inlinedAt: !3606)
!3616 = !DILocation(line: 178, column: 18, scope: !2488, inlinedAt: !3606)
!3617 = distinct !DIAssignID()
!3618 = !DILocation(line: 1020, column: 10, scope: !3590, inlinedAt: !3600)
!3619 = !DILocation(line: 1021, column: 1, scope: !3590, inlinedAt: !3600)
!3620 = !DILocation(line: 1009, column: 3, scope: !3579)
!3621 = distinct !DIAssignID()
!3622 = !DILocation(line: 0, scope: !3590)
!3623 = !DILocation(line: 1018, column: 3, scope: !3590)
!3624 = !DILocation(line: 1018, column: 30, scope: !3590)
!3625 = distinct !DIAssignID()
!3626 = distinct !DIAssignID()
!3627 = !DILocation(line: 0, scope: !2488, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 1019, column: 3, scope: !3590)
!3629 = !DILocation(line: 174, column: 12, scope: !2488, inlinedAt: !3628)
!3630 = distinct !DIAssignID()
!3631 = !DILocation(line: 175, column: 8, scope: !2501, inlinedAt: !3628)
!3632 = !DILocation(line: 175, column: 19, scope: !2501, inlinedAt: !3628)
!3633 = !DILocation(line: 176, column: 5, scope: !2501, inlinedAt: !3628)
!3634 = !DILocation(line: 177, column: 6, scope: !2488, inlinedAt: !3628)
!3635 = !DILocation(line: 177, column: 17, scope: !2488, inlinedAt: !3628)
!3636 = distinct !DIAssignID()
!3637 = !DILocation(line: 178, column: 6, scope: !2488, inlinedAt: !3628)
!3638 = !DILocation(line: 178, column: 18, scope: !2488, inlinedAt: !3628)
!3639 = distinct !DIAssignID()
!3640 = !DILocation(line: 1020, column: 10, scope: !3590)
!3641 = !DILocation(line: 1021, column: 1, scope: !3590)
!3642 = !DILocation(line: 1020, column: 3, scope: !3590)
!3643 = distinct !DISubprogram(name: "quotearg_custom", scope: !586, file: !586, line: 1024, type: !3644, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!136, !142, !142, !142}
!3646 = !{!3647, !3648, !3649}
!3647 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3643, file: !586, line: 1024, type: !142)
!3648 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3643, file: !586, line: 1024, type: !142)
!3649 = !DILocalVariable(name: "arg", arg: 3, scope: !3643, file: !586, line: 1025, type: !142)
!3650 = distinct !DIAssignID()
!3651 = !DILocation(line: 0, scope: !3643)
!3652 = !DILocation(line: 0, scope: !3579, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 1027, column: 10, scope: !3643)
!3654 = !DILocation(line: 0, scope: !3590, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 1009, column: 10, scope: !3579, inlinedAt: !3653)
!3656 = !DILocation(line: 1018, column: 3, scope: !3590, inlinedAt: !3655)
!3657 = !DILocation(line: 1018, column: 30, scope: !3590, inlinedAt: !3655)
!3658 = distinct !DIAssignID()
!3659 = distinct !DIAssignID()
!3660 = !DILocation(line: 0, scope: !2488, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 1019, column: 3, scope: !3590, inlinedAt: !3655)
!3662 = !DILocation(line: 174, column: 12, scope: !2488, inlinedAt: !3661)
!3663 = distinct !DIAssignID()
!3664 = !DILocation(line: 175, column: 8, scope: !2501, inlinedAt: !3661)
!3665 = !DILocation(line: 175, column: 19, scope: !2501, inlinedAt: !3661)
!3666 = !DILocation(line: 176, column: 5, scope: !2501, inlinedAt: !3661)
!3667 = !DILocation(line: 177, column: 6, scope: !2488, inlinedAt: !3661)
!3668 = !DILocation(line: 177, column: 17, scope: !2488, inlinedAt: !3661)
!3669 = distinct !DIAssignID()
!3670 = !DILocation(line: 178, column: 6, scope: !2488, inlinedAt: !3661)
!3671 = !DILocation(line: 178, column: 18, scope: !2488, inlinedAt: !3661)
!3672 = distinct !DIAssignID()
!3673 = !DILocation(line: 1020, column: 10, scope: !3590, inlinedAt: !3655)
!3674 = !DILocation(line: 1021, column: 1, scope: !3590, inlinedAt: !3655)
!3675 = !DILocation(line: 1027, column: 3, scope: !3643)
!3676 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !586, file: !586, line: 1031, type: !3677, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3679)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!136, !142, !142, !142, !139}
!3679 = !{!3680, !3681, !3682, !3683}
!3680 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3676, file: !586, line: 1031, type: !142)
!3681 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3676, file: !586, line: 1031, type: !142)
!3682 = !DILocalVariable(name: "arg", arg: 3, scope: !3676, file: !586, line: 1032, type: !142)
!3683 = !DILocalVariable(name: "argsize", arg: 4, scope: !3676, file: !586, line: 1032, type: !139)
!3684 = distinct !DIAssignID()
!3685 = !DILocation(line: 0, scope: !3676)
!3686 = !DILocation(line: 0, scope: !3590, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 1034, column: 10, scope: !3676)
!3688 = !DILocation(line: 1018, column: 3, scope: !3590, inlinedAt: !3687)
!3689 = !DILocation(line: 1018, column: 30, scope: !3590, inlinedAt: !3687)
!3690 = distinct !DIAssignID()
!3691 = distinct !DIAssignID()
!3692 = !DILocation(line: 0, scope: !2488, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 1019, column: 3, scope: !3590, inlinedAt: !3687)
!3694 = !DILocation(line: 174, column: 12, scope: !2488, inlinedAt: !3693)
!3695 = distinct !DIAssignID()
!3696 = !DILocation(line: 175, column: 8, scope: !2501, inlinedAt: !3693)
!3697 = !DILocation(line: 175, column: 19, scope: !2501, inlinedAt: !3693)
!3698 = !DILocation(line: 176, column: 5, scope: !2501, inlinedAt: !3693)
!3699 = !DILocation(line: 177, column: 6, scope: !2488, inlinedAt: !3693)
!3700 = !DILocation(line: 177, column: 17, scope: !2488, inlinedAt: !3693)
!3701 = distinct !DIAssignID()
!3702 = !DILocation(line: 178, column: 6, scope: !2488, inlinedAt: !3693)
!3703 = !DILocation(line: 178, column: 18, scope: !2488, inlinedAt: !3693)
!3704 = distinct !DIAssignID()
!3705 = !DILocation(line: 1020, column: 10, scope: !3590, inlinedAt: !3687)
!3706 = !DILocation(line: 1021, column: 1, scope: !3590, inlinedAt: !3687)
!3707 = !DILocation(line: 1034, column: 3, scope: !3676)
!3708 = distinct !DISubprogram(name: "quote_n_mem", scope: !586, file: !586, line: 1049, type: !3709, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3711)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!142, !83, !142, !139}
!3711 = !{!3712, !3713, !3714}
!3712 = !DILocalVariable(name: "n", arg: 1, scope: !3708, file: !586, line: 1049, type: !83)
!3713 = !DILocalVariable(name: "arg", arg: 2, scope: !3708, file: !586, line: 1049, type: !142)
!3714 = !DILocalVariable(name: "argsize", arg: 3, scope: !3708, file: !586, line: 1049, type: !139)
!3715 = !DILocation(line: 0, scope: !3708)
!3716 = !DILocation(line: 1051, column: 10, scope: !3708)
!3717 = !DILocation(line: 1051, column: 3, scope: !3708)
!3718 = distinct !DISubprogram(name: "quote_mem", scope: !586, file: !586, line: 1055, type: !3719, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!142, !142, !139}
!3721 = !{!3722, !3723}
!3722 = !DILocalVariable(name: "arg", arg: 1, scope: !3718, file: !586, line: 1055, type: !142)
!3723 = !DILocalVariable(name: "argsize", arg: 2, scope: !3718, file: !586, line: 1055, type: !139)
!3724 = !DILocation(line: 0, scope: !3718)
!3725 = !DILocation(line: 0, scope: !3708, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 1057, column: 10, scope: !3718)
!3727 = !DILocation(line: 1051, column: 10, scope: !3708, inlinedAt: !3726)
!3728 = !DILocation(line: 1057, column: 3, scope: !3718)
!3729 = distinct !DISubprogram(name: "quote_n", scope: !586, file: !586, line: 1061, type: !3730, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!142, !83, !142}
!3732 = !{!3733, !3734}
!3733 = !DILocalVariable(name: "n", arg: 1, scope: !3729, file: !586, line: 1061, type: !83)
!3734 = !DILocalVariable(name: "arg", arg: 2, scope: !3729, file: !586, line: 1061, type: !142)
!3735 = !DILocation(line: 0, scope: !3729)
!3736 = !DILocation(line: 0, scope: !3708, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 1063, column: 10, scope: !3729)
!3738 = !DILocation(line: 1051, column: 10, scope: !3708, inlinedAt: !3737)
!3739 = !DILocation(line: 1063, column: 3, scope: !3729)
!3740 = distinct !DISubprogram(name: "quote", scope: !586, file: !586, line: 1067, type: !3741, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!142, !142}
!3743 = !{!3744}
!3744 = !DILocalVariable(name: "arg", arg: 1, scope: !3740, file: !586, line: 1067, type: !142)
!3745 = !DILocation(line: 0, scope: !3740)
!3746 = !DILocation(line: 0, scope: !3729, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 1069, column: 10, scope: !3740)
!3748 = !DILocation(line: 0, scope: !3708, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 1063, column: 10, scope: !3729, inlinedAt: !3747)
!3750 = !DILocation(line: 1051, column: 10, scope: !3708, inlinedAt: !3749)
!3751 = !DILocation(line: 1069, column: 3, scope: !3740)
!3752 = distinct !DISubprogram(name: "version_etc_arn", scope: !688, file: !688, line: 61, type: !3753, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !3790)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !3755, !142, !142, !142, !3789, !139}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !3757)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !3758)
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3757, file: !206, line: 51, baseType: !83, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3757, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3757, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3757, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3757, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3757, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3757, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3757, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3757, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3757, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3757, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3757, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3757, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3757, file: !206, line: 70, baseType: !3773, size: 64, offset: 832)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3757, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3757, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3757, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3757, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3757, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3757, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3757, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3757, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3757, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3757, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3757, file: !206, line: 93, baseType: !3773, size: 64, offset: 1344)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3757, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3757, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3757, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3757, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!3790 = !{!3791, !3792, !3793, !3794, !3795, !3796}
!3791 = !DILocalVariable(name: "stream", arg: 1, scope: !3752, file: !688, line: 61, type: !3755)
!3792 = !DILocalVariable(name: "command_name", arg: 2, scope: !3752, file: !688, line: 62, type: !142)
!3793 = !DILocalVariable(name: "package", arg: 3, scope: !3752, file: !688, line: 62, type: !142)
!3794 = !DILocalVariable(name: "version", arg: 4, scope: !3752, file: !688, line: 63, type: !142)
!3795 = !DILocalVariable(name: "authors", arg: 5, scope: !3752, file: !688, line: 64, type: !3789)
!3796 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3752, file: !688, line: 64, type: !139)
!3797 = !DILocation(line: 0, scope: !3752)
!3798 = !DILocation(line: 66, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3752, file: !688, line: 66, column: 7)
!3800 = !DILocation(line: 66, column: 7, scope: !3752)
!3801 = !DILocation(line: 67, column: 5, scope: !3799)
!3802 = !DILocation(line: 69, column: 5, scope: !3799)
!3803 = !DILocation(line: 83, column: 3, scope: !3752)
!3804 = !DILocation(line: 85, column: 3, scope: !3752)
!3805 = !DILocation(line: 88, column: 3, scope: !3752)
!3806 = !DILocation(line: 95, column: 3, scope: !3752)
!3807 = !DILocation(line: 97, column: 3, scope: !3752)
!3808 = !DILocation(line: 105, column: 7, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3752, file: !688, line: 98, column: 5)
!3810 = !DILocation(line: 106, column: 7, scope: !3809)
!3811 = !DILocation(line: 109, column: 7, scope: !3809)
!3812 = !DILocation(line: 110, column: 7, scope: !3809)
!3813 = !DILocation(line: 113, column: 7, scope: !3809)
!3814 = !DILocation(line: 115, column: 7, scope: !3809)
!3815 = !DILocation(line: 120, column: 7, scope: !3809)
!3816 = !DILocation(line: 122, column: 7, scope: !3809)
!3817 = !DILocation(line: 127, column: 7, scope: !3809)
!3818 = !DILocation(line: 129, column: 7, scope: !3809)
!3819 = !DILocation(line: 134, column: 7, scope: !3809)
!3820 = !DILocation(line: 137, column: 7, scope: !3809)
!3821 = !DILocation(line: 142, column: 7, scope: !3809)
!3822 = !DILocation(line: 145, column: 7, scope: !3809)
!3823 = !DILocation(line: 150, column: 7, scope: !3809)
!3824 = !DILocation(line: 154, column: 7, scope: !3809)
!3825 = !DILocation(line: 159, column: 7, scope: !3809)
!3826 = !DILocation(line: 163, column: 7, scope: !3809)
!3827 = !DILocation(line: 170, column: 7, scope: !3809)
!3828 = !DILocation(line: 174, column: 7, scope: !3809)
!3829 = !DILocation(line: 176, column: 1, scope: !3752)
!3830 = distinct !DISubprogram(name: "version_etc_ar", scope: !688, file: !688, line: 183, type: !3831, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !3755, !142, !142, !142, !3789}
!3833 = !{!3834, !3835, !3836, !3837, !3838, !3839}
!3834 = !DILocalVariable(name: "stream", arg: 1, scope: !3830, file: !688, line: 183, type: !3755)
!3835 = !DILocalVariable(name: "command_name", arg: 2, scope: !3830, file: !688, line: 184, type: !142)
!3836 = !DILocalVariable(name: "package", arg: 3, scope: !3830, file: !688, line: 184, type: !142)
!3837 = !DILocalVariable(name: "version", arg: 4, scope: !3830, file: !688, line: 185, type: !142)
!3838 = !DILocalVariable(name: "authors", arg: 5, scope: !3830, file: !688, line: 185, type: !3789)
!3839 = !DILocalVariable(name: "n_authors", scope: !3830, file: !688, line: 187, type: !139)
!3840 = !DILocation(line: 0, scope: !3830)
!3841 = !DILocation(line: 189, column: 8, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3830, file: !688, line: 189, column: 3)
!3843 = !DILocation(line: 189, scope: !3842)
!3844 = !DILocation(line: 189, column: 23, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3842, file: !688, line: 189, column: 3)
!3846 = !DILocation(line: 189, column: 3, scope: !3842)
!3847 = !DILocation(line: 189, column: 52, scope: !3845)
!3848 = distinct !{!3848, !3846, !3849, !1039}
!3849 = !DILocation(line: 190, column: 5, scope: !3842)
!3850 = !DILocation(line: 191, column: 3, scope: !3830)
!3851 = !DILocation(line: 192, column: 1, scope: !3830)
!3852 = distinct !DISubprogram(name: "version_etc_va", scope: !688, file: !688, line: 199, type: !3853, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !3862)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3755, !142, !142, !142, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3857)
!3857 = !{!3858, !3859, !3860, !3861}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3856, file: !688, line: 192, baseType: !69, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3856, file: !688, line: 192, baseType: !69, size: 32, offset: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3856, file: !688, line: 192, baseType: !137, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3856, file: !688, line: 192, baseType: !137, size: 64, offset: 128)
!3862 = !{!3863, !3864, !3865, !3866, !3867, !3868, !3869}
!3863 = !DILocalVariable(name: "stream", arg: 1, scope: !3852, file: !688, line: 199, type: !3755)
!3864 = !DILocalVariable(name: "command_name", arg: 2, scope: !3852, file: !688, line: 200, type: !142)
!3865 = !DILocalVariable(name: "package", arg: 3, scope: !3852, file: !688, line: 200, type: !142)
!3866 = !DILocalVariable(name: "version", arg: 4, scope: !3852, file: !688, line: 201, type: !142)
!3867 = !DILocalVariable(name: "authors", arg: 5, scope: !3852, file: !688, line: 201, type: !3855)
!3868 = !DILocalVariable(name: "n_authors", scope: !3852, file: !688, line: 203, type: !139)
!3869 = !DILocalVariable(name: "authtab", scope: !3852, file: !688, line: 204, type: !3870)
!3870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 640, elements: !57)
!3871 = distinct !DIAssignID()
!3872 = !DILocation(line: 0, scope: !3852)
!3873 = !DILocation(line: 204, column: 3, scope: !3852)
!3874 = !DILocation(line: 208, column: 35, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !688, line: 206, column: 3)
!3876 = distinct !DILexicalBlock(scope: !3852, file: !688, line: 206, column: 3)
!3877 = !DILocation(line: 208, column: 33, scope: !3875)
!3878 = !DILocation(line: 208, column: 67, scope: !3875)
!3879 = !DILocation(line: 206, column: 3, scope: !3876)
!3880 = !DILocation(line: 208, column: 14, scope: !3875)
!3881 = !DILocation(line: 0, scope: !3876)
!3882 = !DILocation(line: 211, column: 3, scope: !3852)
!3883 = !DILocation(line: 213, column: 1, scope: !3852)
!3884 = distinct !DISubprogram(name: "version_etc", scope: !688, file: !688, line: 230, type: !3885, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !3755, !142, !142, !142, null}
!3887 = !{!3888, !3889, !3890, !3891, !3892}
!3888 = !DILocalVariable(name: "stream", arg: 1, scope: !3884, file: !688, line: 230, type: !3755)
!3889 = !DILocalVariable(name: "command_name", arg: 2, scope: !3884, file: !688, line: 231, type: !142)
!3890 = !DILocalVariable(name: "package", arg: 3, scope: !3884, file: !688, line: 231, type: !142)
!3891 = !DILocalVariable(name: "version", arg: 4, scope: !3884, file: !688, line: 232, type: !142)
!3892 = !DILocalVariable(name: "authors", scope: !3884, file: !688, line: 234, type: !3893)
!3893 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !987, line: 52, baseType: !3894)
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1954, line: 12, baseType: !3895)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !688, baseType: !3896)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3856, size: 192, elements: !52)
!3897 = distinct !DIAssignID()
!3898 = !DILocation(line: 0, scope: !3884)
!3899 = !DILocation(line: 234, column: 3, scope: !3884)
!3900 = !DILocation(line: 235, column: 3, scope: !3884)
!3901 = !DILocation(line: 236, column: 3, scope: !3884)
!3902 = !DILocation(line: 237, column: 3, scope: !3884)
!3903 = !DILocation(line: 238, column: 1, scope: !3884)
!3904 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !688, file: !688, line: 241, type: !545, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824)
!3905 = !DILocation(line: 243, column: 3, scope: !3904)
!3906 = !DILocation(line: 248, column: 3, scope: !3904)
!3907 = !DILocation(line: 254, column: 3, scope: !3904)
!3908 = !DILocation(line: 259, column: 3, scope: !3904)
!3909 = !DILocation(line: 261, column: 1, scope: !3904)
!3910 = distinct !DISubprogram(name: "xnrealloc", scope: !3911, file: !3911, line: 147, type: !3912, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !3914)
!3911 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!137, !137, !139, !139}
!3914 = !{!3915, !3916, !3917}
!3915 = !DILocalVariable(name: "p", arg: 1, scope: !3910, file: !3911, line: 147, type: !137)
!3916 = !DILocalVariable(name: "n", arg: 2, scope: !3910, file: !3911, line: 147, type: !139)
!3917 = !DILocalVariable(name: "s", arg: 3, scope: !3910, file: !3911, line: 147, type: !139)
!3918 = !DILocation(line: 0, scope: !3910)
!3919 = !DILocalVariable(name: "p", arg: 1, scope: !3920, file: !831, line: 83, type: !137)
!3920 = distinct !DISubprogram(name: "xreallocarray", scope: !831, file: !831, line: 83, type: !3912, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !3921)
!3921 = !{!3919, !3922, !3923}
!3922 = !DILocalVariable(name: "n", arg: 2, scope: !3920, file: !831, line: 83, type: !139)
!3923 = !DILocalVariable(name: "s", arg: 3, scope: !3920, file: !831, line: 83, type: !139)
!3924 = !DILocation(line: 0, scope: !3920, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 149, column: 10, scope: !3910)
!3926 = !DILocation(line: 85, column: 25, scope: !3920, inlinedAt: !3925)
!3927 = !DILocalVariable(name: "p", arg: 1, scope: !3928, file: !831, line: 37, type: !137)
!3928 = distinct !DISubprogram(name: "check_nonnull", scope: !831, file: !831, line: 37, type: !3929, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !3931)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!137, !137}
!3931 = !{!3927}
!3932 = !DILocation(line: 0, scope: !3928, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 85, column: 10, scope: !3920, inlinedAt: !3925)
!3934 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !3933)
!3935 = distinct !DILexicalBlock(scope: !3928, file: !831, line: 39, column: 7)
!3936 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !3933)
!3937 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !3933)
!3938 = !DILocation(line: 149, column: 3, scope: !3910)
!3939 = !DILocation(line: 0, scope: !3920)
!3940 = !DILocation(line: 85, column: 25, scope: !3920)
!3941 = !DILocation(line: 0, scope: !3928, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 85, column: 10, scope: !3920)
!3943 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !3942)
!3944 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !3942)
!3945 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !3942)
!3946 = !DILocation(line: 85, column: 3, scope: !3920)
!3947 = distinct !DISubprogram(name: "xmalloc", scope: !831, file: !831, line: 47, type: !3948, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!137, !139}
!3950 = !{!3951}
!3951 = !DILocalVariable(name: "s", arg: 1, scope: !3947, file: !831, line: 47, type: !139)
!3952 = !DILocation(line: 0, scope: !3947)
!3953 = !DILocation(line: 49, column: 25, scope: !3947)
!3954 = !DILocation(line: 0, scope: !3928, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 49, column: 10, scope: !3947)
!3956 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !3955)
!3957 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !3955)
!3958 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !3955)
!3959 = !DILocation(line: 49, column: 3, scope: !3947)
!3960 = !DISubprogram(name: "malloc", scope: !1116, file: !1116, line: 540, type: !3948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3961 = distinct !DISubprogram(name: "ximalloc", scope: !831, file: !831, line: 53, type: !3962, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!137, !850}
!3964 = !{!3965}
!3965 = !DILocalVariable(name: "s", arg: 1, scope: !3961, file: !831, line: 53, type: !850)
!3966 = !DILocation(line: 0, scope: !3961)
!3967 = !DILocalVariable(name: "s", arg: 1, scope: !3968, file: !3969, line: 55, type: !850)
!3968 = distinct !DISubprogram(name: "imalloc", scope: !3969, file: !3969, line: 55, type: !3962, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !3970)
!3969 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3970 = !{!3967}
!3971 = !DILocation(line: 0, scope: !3968, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 55, column: 25, scope: !3961)
!3973 = !DILocation(line: 57, column: 26, scope: !3968, inlinedAt: !3972)
!3974 = !DILocation(line: 0, scope: !3928, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 55, column: 10, scope: !3961)
!3976 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !3975)
!3977 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !3975)
!3978 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !3975)
!3979 = !DILocation(line: 55, column: 3, scope: !3961)
!3980 = distinct !DISubprogram(name: "xcharalloc", scope: !831, file: !831, line: 59, type: !3981, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!136, !139}
!3983 = !{!3984}
!3984 = !DILocalVariable(name: "n", arg: 1, scope: !3980, file: !831, line: 59, type: !139)
!3985 = !DILocation(line: 0, scope: !3980)
!3986 = !DILocation(line: 0, scope: !3947, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 61, column: 10, scope: !3980)
!3988 = !DILocation(line: 49, column: 25, scope: !3947, inlinedAt: !3987)
!3989 = !DILocation(line: 0, scope: !3928, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 49, column: 10, scope: !3947, inlinedAt: !3987)
!3991 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !3990)
!3992 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !3990)
!3993 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !3990)
!3994 = !DILocation(line: 61, column: 3, scope: !3980)
!3995 = distinct !DISubprogram(name: "xrealloc", scope: !831, file: !831, line: 68, type: !3996, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!137, !137, !139}
!3998 = !{!3999, !4000}
!3999 = !DILocalVariable(name: "p", arg: 1, scope: !3995, file: !831, line: 68, type: !137)
!4000 = !DILocalVariable(name: "s", arg: 2, scope: !3995, file: !831, line: 68, type: !139)
!4001 = !DILocation(line: 0, scope: !3995)
!4002 = !DILocalVariable(name: "ptr", arg: 1, scope: !4003, file: !4004, line: 2057, type: !137)
!4003 = distinct !DISubprogram(name: "rpl_realloc", scope: !4004, file: !4004, line: 2057, type: !3996, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4005)
!4004 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4005 = !{!4002, !4006}
!4006 = !DILocalVariable(name: "size", arg: 2, scope: !4003, file: !4004, line: 2057, type: !139)
!4007 = !DILocation(line: 0, scope: !4003, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 70, column: 25, scope: !3995)
!4009 = !DILocation(line: 2059, column: 24, scope: !4003, inlinedAt: !4008)
!4010 = !DILocation(line: 2059, column: 10, scope: !4003, inlinedAt: !4008)
!4011 = !DILocation(line: 0, scope: !3928, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 70, column: 10, scope: !3995)
!4013 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4012)
!4014 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4012)
!4015 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4012)
!4016 = !DILocation(line: 70, column: 3, scope: !3995)
!4017 = !DISubprogram(name: "realloc", scope: !1116, file: !1116, line: 551, type: !3996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4018 = distinct !DISubprogram(name: "xirealloc", scope: !831, file: !831, line: 74, type: !4019, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!137, !137, !850}
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "p", arg: 1, scope: !4018, file: !831, line: 74, type: !137)
!4023 = !DILocalVariable(name: "s", arg: 2, scope: !4018, file: !831, line: 74, type: !850)
!4024 = !DILocation(line: 0, scope: !4018)
!4025 = !DILocalVariable(name: "p", arg: 1, scope: !4026, file: !3969, line: 66, type: !137)
!4026 = distinct !DISubprogram(name: "irealloc", scope: !3969, file: !3969, line: 66, type: !4019, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4027)
!4027 = !{!4025, !4028}
!4028 = !DILocalVariable(name: "s", arg: 2, scope: !4026, file: !3969, line: 66, type: !850)
!4029 = !DILocation(line: 0, scope: !4026, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 76, column: 25, scope: !4018)
!4031 = !DILocation(line: 0, scope: !4003, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 68, column: 26, scope: !4026, inlinedAt: !4030)
!4033 = !DILocation(line: 2059, column: 24, scope: !4003, inlinedAt: !4032)
!4034 = !DILocation(line: 2059, column: 10, scope: !4003, inlinedAt: !4032)
!4035 = !DILocation(line: 0, scope: !3928, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 76, column: 10, scope: !4018)
!4037 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4036)
!4038 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4036)
!4039 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4036)
!4040 = !DILocation(line: 76, column: 3, scope: !4018)
!4041 = distinct !DISubprogram(name: "xireallocarray", scope: !831, file: !831, line: 89, type: !4042, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!137, !137, !850, !850}
!4044 = !{!4045, !4046, !4047}
!4045 = !DILocalVariable(name: "p", arg: 1, scope: !4041, file: !831, line: 89, type: !137)
!4046 = !DILocalVariable(name: "n", arg: 2, scope: !4041, file: !831, line: 89, type: !850)
!4047 = !DILocalVariable(name: "s", arg: 3, scope: !4041, file: !831, line: 89, type: !850)
!4048 = !DILocation(line: 0, scope: !4041)
!4049 = !DILocalVariable(name: "p", arg: 1, scope: !4050, file: !3969, line: 98, type: !137)
!4050 = distinct !DISubprogram(name: "ireallocarray", scope: !3969, file: !3969, line: 98, type: !4042, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4051)
!4051 = !{!4049, !4052, !4053}
!4052 = !DILocalVariable(name: "n", arg: 2, scope: !4050, file: !3969, line: 98, type: !850)
!4053 = !DILocalVariable(name: "s", arg: 3, scope: !4050, file: !3969, line: 98, type: !850)
!4054 = !DILocation(line: 0, scope: !4050, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 91, column: 25, scope: !4041)
!4056 = !DILocation(line: 101, column: 13, scope: !4050, inlinedAt: !4055)
!4057 = !DILocation(line: 0, scope: !3928, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 91, column: 10, scope: !4041)
!4059 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4058)
!4060 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4058)
!4061 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4058)
!4062 = !DILocation(line: 91, column: 3, scope: !4041)
!4063 = distinct !DISubprogram(name: "xnmalloc", scope: !831, file: !831, line: 98, type: !4064, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4066)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!137, !139, !139}
!4066 = !{!4067, !4068}
!4067 = !DILocalVariable(name: "n", arg: 1, scope: !4063, file: !831, line: 98, type: !139)
!4068 = !DILocalVariable(name: "s", arg: 2, scope: !4063, file: !831, line: 98, type: !139)
!4069 = !DILocation(line: 0, scope: !4063)
!4070 = !DILocation(line: 0, scope: !3920, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 100, column: 10, scope: !4063)
!4072 = !DILocation(line: 85, column: 25, scope: !3920, inlinedAt: !4071)
!4073 = !DILocation(line: 0, scope: !3928, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 85, column: 10, scope: !3920, inlinedAt: !4071)
!4075 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4074)
!4076 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4074)
!4077 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4074)
!4078 = !DILocation(line: 100, column: 3, scope: !4063)
!4079 = distinct !DISubprogram(name: "xinmalloc", scope: !831, file: !831, line: 104, type: !4080, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!137, !850, !850}
!4082 = !{!4083, !4084}
!4083 = !DILocalVariable(name: "n", arg: 1, scope: !4079, file: !831, line: 104, type: !850)
!4084 = !DILocalVariable(name: "s", arg: 2, scope: !4079, file: !831, line: 104, type: !850)
!4085 = !DILocation(line: 0, scope: !4079)
!4086 = !DILocation(line: 0, scope: !4041, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 106, column: 10, scope: !4079)
!4088 = !DILocation(line: 0, scope: !4050, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 91, column: 25, scope: !4041, inlinedAt: !4087)
!4090 = !DILocation(line: 101, column: 13, scope: !4050, inlinedAt: !4089)
!4091 = !DILocation(line: 0, scope: !3928, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 91, column: 10, scope: !4041, inlinedAt: !4087)
!4093 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4092)
!4094 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4092)
!4095 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4092)
!4096 = !DILocation(line: 106, column: 3, scope: !4079)
!4097 = distinct !DISubprogram(name: "x2realloc", scope: !831, file: !831, line: 116, type: !4098, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4100)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!137, !137, !837}
!4100 = !{!4101, !4102}
!4101 = !DILocalVariable(name: "p", arg: 1, scope: !4097, file: !831, line: 116, type: !137)
!4102 = !DILocalVariable(name: "ps", arg: 2, scope: !4097, file: !831, line: 116, type: !837)
!4103 = !DILocation(line: 0, scope: !4097)
!4104 = !DILocation(line: 0, scope: !834, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 118, column: 10, scope: !4097)
!4106 = !DILocation(line: 178, column: 14, scope: !834, inlinedAt: !4105)
!4107 = !DILocation(line: 180, column: 9, scope: !4108, inlinedAt: !4105)
!4108 = distinct !DILexicalBlock(scope: !834, file: !831, line: 180, column: 7)
!4109 = !DILocation(line: 180, column: 7, scope: !834, inlinedAt: !4105)
!4110 = !DILocation(line: 182, column: 13, scope: !4111, inlinedAt: !4105)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !831, line: 182, column: 11)
!4112 = distinct !DILexicalBlock(scope: !4108, file: !831, line: 181, column: 5)
!4113 = !DILocation(line: 182, column: 11, scope: !4112, inlinedAt: !4105)
!4114 = !DILocation(line: 197, column: 11, scope: !4115, inlinedAt: !4105)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !831, line: 197, column: 11)
!4116 = distinct !DILexicalBlock(scope: !4108, file: !831, line: 195, column: 5)
!4117 = !DILocation(line: 197, column: 11, scope: !4116, inlinedAt: !4105)
!4118 = !DILocation(line: 198, column: 9, scope: !4115, inlinedAt: !4105)
!4119 = !DILocation(line: 0, scope: !3920, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 201, column: 7, scope: !834, inlinedAt: !4105)
!4121 = !DILocation(line: 85, column: 25, scope: !3920, inlinedAt: !4120)
!4122 = !DILocation(line: 0, scope: !3928, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 85, column: 10, scope: !3920, inlinedAt: !4120)
!4124 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4123)
!4125 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4123)
!4126 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4123)
!4127 = !DILocation(line: 202, column: 7, scope: !834, inlinedAt: !4105)
!4128 = !DILocation(line: 118, column: 3, scope: !4097)
!4129 = !DILocation(line: 0, scope: !834)
!4130 = !DILocation(line: 178, column: 14, scope: !834)
!4131 = !DILocation(line: 180, column: 9, scope: !4108)
!4132 = !DILocation(line: 180, column: 7, scope: !834)
!4133 = !DILocation(line: 182, column: 13, scope: !4111)
!4134 = !DILocation(line: 182, column: 11, scope: !4112)
!4135 = !DILocation(line: 190, column: 30, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4111, file: !831, line: 183, column: 9)
!4137 = !DILocation(line: 191, column: 16, scope: !4136)
!4138 = !DILocation(line: 191, column: 13, scope: !4136)
!4139 = !DILocation(line: 192, column: 9, scope: !4136)
!4140 = !DILocation(line: 197, column: 11, scope: !4115)
!4141 = !DILocation(line: 197, column: 11, scope: !4116)
!4142 = !DILocation(line: 198, column: 9, scope: !4115)
!4143 = !DILocation(line: 0, scope: !3920, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 201, column: 7, scope: !834)
!4145 = !DILocation(line: 85, column: 25, scope: !3920, inlinedAt: !4144)
!4146 = !DILocation(line: 0, scope: !3928, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 85, column: 10, scope: !3920, inlinedAt: !4144)
!4148 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4147)
!4149 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4147)
!4150 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4147)
!4151 = !DILocation(line: 202, column: 7, scope: !834)
!4152 = !DILocation(line: 203, column: 3, scope: !834)
!4153 = !DILocation(line: 0, scope: !846)
!4154 = !DILocation(line: 230, column: 14, scope: !846)
!4155 = !DILocation(line: 238, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !846, file: !831, line: 238, column: 7)
!4157 = !DILocation(line: 238, column: 7, scope: !846)
!4158 = !DILocation(line: 240, column: 9, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !846, file: !831, line: 240, column: 7)
!4160 = !DILocation(line: 240, column: 18, scope: !4159)
!4161 = !DILocation(line: 253, column: 8, scope: !846)
!4162 = !DILocation(line: 256, column: 7, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !846, file: !831, line: 256, column: 7)
!4164 = !DILocation(line: 256, column: 7, scope: !846)
!4165 = !DILocation(line: 258, column: 27, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4163, file: !831, line: 257, column: 5)
!4167 = !DILocation(line: 259, column: 50, scope: !4166)
!4168 = !DILocation(line: 259, column: 32, scope: !4166)
!4169 = !DILocation(line: 260, column: 5, scope: !4166)
!4170 = !DILocation(line: 262, column: 9, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !846, file: !831, line: 262, column: 7)
!4172 = !DILocation(line: 262, column: 7, scope: !846)
!4173 = !DILocation(line: 263, column: 9, scope: !4171)
!4174 = !DILocation(line: 263, column: 5, scope: !4171)
!4175 = !DILocation(line: 264, column: 9, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !846, file: !831, line: 264, column: 7)
!4177 = !DILocation(line: 264, column: 14, scope: !4176)
!4178 = !DILocation(line: 265, column: 7, scope: !4176)
!4179 = !DILocation(line: 265, column: 11, scope: !4176)
!4180 = !DILocation(line: 266, column: 11, scope: !4176)
!4181 = !DILocation(line: 267, column: 14, scope: !4176)
!4182 = !DILocation(line: 264, column: 7, scope: !846)
!4183 = !DILocation(line: 268, column: 5, scope: !4176)
!4184 = !DILocation(line: 0, scope: !3995, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 269, column: 8, scope: !846)
!4186 = !DILocation(line: 0, scope: !4003, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 70, column: 25, scope: !3995, inlinedAt: !4185)
!4188 = !DILocation(line: 2059, column: 24, scope: !4003, inlinedAt: !4187)
!4189 = !DILocation(line: 2059, column: 10, scope: !4003, inlinedAt: !4187)
!4190 = !DILocation(line: 0, scope: !3928, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 70, column: 10, scope: !3995, inlinedAt: !4185)
!4192 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4191)
!4193 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4191)
!4194 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4191)
!4195 = !DILocation(line: 270, column: 7, scope: !846)
!4196 = !DILocation(line: 271, column: 3, scope: !846)
!4197 = distinct !DISubprogram(name: "xzalloc", scope: !831, file: !831, line: 279, type: !3948, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4198)
!4198 = !{!4199}
!4199 = !DILocalVariable(name: "s", arg: 1, scope: !4197, file: !831, line: 279, type: !139)
!4200 = !DILocation(line: 0, scope: !4197)
!4201 = !DILocalVariable(name: "n", arg: 1, scope: !4202, file: !831, line: 294, type: !139)
!4202 = distinct !DISubprogram(name: "xcalloc", scope: !831, file: !831, line: 294, type: !4064, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4203)
!4203 = !{!4201, !4204}
!4204 = !DILocalVariable(name: "s", arg: 2, scope: !4202, file: !831, line: 294, type: !139)
!4205 = !DILocation(line: 0, scope: !4202, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 281, column: 10, scope: !4197)
!4207 = !DILocation(line: 296, column: 25, scope: !4202, inlinedAt: !4206)
!4208 = !DILocation(line: 0, scope: !3928, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 296, column: 10, scope: !4202, inlinedAt: !4206)
!4210 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4209)
!4211 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4209)
!4212 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4209)
!4213 = !DILocation(line: 281, column: 3, scope: !4197)
!4214 = !DISubprogram(name: "calloc", scope: !1116, file: !1116, line: 543, type: !4064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4215 = !DILocation(line: 0, scope: !4202)
!4216 = !DILocation(line: 296, column: 25, scope: !4202)
!4217 = !DILocation(line: 0, scope: !3928, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 296, column: 10, scope: !4202)
!4219 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4218)
!4220 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4218)
!4221 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4218)
!4222 = !DILocation(line: 296, column: 3, scope: !4202)
!4223 = distinct !DISubprogram(name: "xizalloc", scope: !831, file: !831, line: 285, type: !3962, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4224)
!4224 = !{!4225}
!4225 = !DILocalVariable(name: "s", arg: 1, scope: !4223, file: !831, line: 285, type: !850)
!4226 = !DILocation(line: 0, scope: !4223)
!4227 = !DILocalVariable(name: "n", arg: 1, scope: !4228, file: !831, line: 300, type: !850)
!4228 = distinct !DISubprogram(name: "xicalloc", scope: !831, file: !831, line: 300, type: !4080, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4229)
!4229 = !{!4227, !4230}
!4230 = !DILocalVariable(name: "s", arg: 2, scope: !4228, file: !831, line: 300, type: !850)
!4231 = !DILocation(line: 0, scope: !4228, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 287, column: 10, scope: !4223)
!4233 = !DILocalVariable(name: "n", arg: 1, scope: !4234, file: !3969, line: 77, type: !850)
!4234 = distinct !DISubprogram(name: "icalloc", scope: !3969, file: !3969, line: 77, type: !4080, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4235)
!4235 = !{!4233, !4236}
!4236 = !DILocalVariable(name: "s", arg: 2, scope: !4234, file: !3969, line: 77, type: !850)
!4237 = !DILocation(line: 0, scope: !4234, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 302, column: 25, scope: !4228, inlinedAt: !4232)
!4239 = !DILocation(line: 91, column: 10, scope: !4234, inlinedAt: !4238)
!4240 = !DILocation(line: 0, scope: !3928, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 302, column: 10, scope: !4228, inlinedAt: !4232)
!4242 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4241)
!4243 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4241)
!4244 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4241)
!4245 = !DILocation(line: 287, column: 3, scope: !4223)
!4246 = !DILocation(line: 0, scope: !4228)
!4247 = !DILocation(line: 0, scope: !4234, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 302, column: 25, scope: !4228)
!4249 = !DILocation(line: 91, column: 10, scope: !4234, inlinedAt: !4248)
!4250 = !DILocation(line: 0, scope: !3928, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 302, column: 10, scope: !4228)
!4252 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4251)
!4253 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4251)
!4254 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4251)
!4255 = !DILocation(line: 302, column: 3, scope: !4228)
!4256 = distinct !DISubprogram(name: "xmemdup", scope: !831, file: !831, line: 310, type: !4257, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4259)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!137, !1140, !139}
!4259 = !{!4260, !4261}
!4260 = !DILocalVariable(name: "p", arg: 1, scope: !4256, file: !831, line: 310, type: !1140)
!4261 = !DILocalVariable(name: "s", arg: 2, scope: !4256, file: !831, line: 310, type: !139)
!4262 = !DILocation(line: 0, scope: !4256)
!4263 = !DILocation(line: 0, scope: !3947, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 312, column: 18, scope: !4256)
!4265 = !DILocation(line: 49, column: 25, scope: !3947, inlinedAt: !4264)
!4266 = !DILocation(line: 0, scope: !3928, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 49, column: 10, scope: !3947, inlinedAt: !4264)
!4268 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4267)
!4269 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4267)
!4270 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4267)
!4271 = !DILocalVariable(name: "__dest", arg: 1, scope: !4272, file: !1303, line: 26, type: !1617)
!4272 = distinct !DISubprogram(name: "memcpy", scope: !1303, file: !1303, line: 26, type: !1615, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4273)
!4273 = !{!4271, !4274, !4275}
!4274 = !DILocalVariable(name: "__src", arg: 2, scope: !4272, file: !1303, line: 26, type: !1139)
!4275 = !DILocalVariable(name: "__len", arg: 3, scope: !4272, file: !1303, line: 26, type: !139)
!4276 = !DILocation(line: 0, scope: !4272, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 312, column: 10, scope: !4256)
!4278 = !DILocation(line: 29, column: 10, scope: !4272, inlinedAt: !4277)
!4279 = !DILocation(line: 312, column: 3, scope: !4256)
!4280 = distinct !DISubprogram(name: "ximemdup", scope: !831, file: !831, line: 316, type: !4281, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4283)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!137, !1140, !850}
!4283 = !{!4284, !4285}
!4284 = !DILocalVariable(name: "p", arg: 1, scope: !4280, file: !831, line: 316, type: !1140)
!4285 = !DILocalVariable(name: "s", arg: 2, scope: !4280, file: !831, line: 316, type: !850)
!4286 = !DILocation(line: 0, scope: !4280)
!4287 = !DILocation(line: 0, scope: !3961, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 318, column: 18, scope: !4280)
!4289 = !DILocation(line: 0, scope: !3968, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 55, column: 25, scope: !3961, inlinedAt: !4288)
!4291 = !DILocation(line: 57, column: 26, scope: !3968, inlinedAt: !4290)
!4292 = !DILocation(line: 0, scope: !3928, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 55, column: 10, scope: !3961, inlinedAt: !4288)
!4294 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4293)
!4295 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4293)
!4296 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4293)
!4297 = !DILocation(line: 0, scope: !4272, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 318, column: 10, scope: !4280)
!4299 = !DILocation(line: 29, column: 10, scope: !4272, inlinedAt: !4298)
!4300 = !DILocation(line: 318, column: 3, scope: !4280)
!4301 = distinct !DISubprogram(name: "ximemdup0", scope: !831, file: !831, line: 325, type: !4302, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!136, !1140, !850}
!4304 = !{!4305, !4306, !4307}
!4305 = !DILocalVariable(name: "p", arg: 1, scope: !4301, file: !831, line: 325, type: !1140)
!4306 = !DILocalVariable(name: "s", arg: 2, scope: !4301, file: !831, line: 325, type: !850)
!4307 = !DILocalVariable(name: "result", scope: !4301, file: !831, line: 327, type: !136)
!4308 = !DILocation(line: 0, scope: !4301)
!4309 = !DILocation(line: 327, column: 30, scope: !4301)
!4310 = !DILocation(line: 0, scope: !3961, inlinedAt: !4311)
!4311 = distinct !DILocation(line: 327, column: 18, scope: !4301)
!4312 = !DILocation(line: 0, scope: !3968, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 55, column: 25, scope: !3961, inlinedAt: !4311)
!4314 = !DILocation(line: 57, column: 26, scope: !3968, inlinedAt: !4313)
!4315 = !DILocation(line: 0, scope: !3928, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 55, column: 10, scope: !3961, inlinedAt: !4311)
!4317 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4316)
!4318 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4316)
!4319 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4316)
!4320 = !DILocation(line: 328, column: 3, scope: !4301)
!4321 = !DILocation(line: 328, column: 13, scope: !4301)
!4322 = !DILocation(line: 0, scope: !4272, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 329, column: 10, scope: !4301)
!4324 = !DILocation(line: 29, column: 10, scope: !4272, inlinedAt: !4323)
!4325 = !DILocation(line: 329, column: 3, scope: !4301)
!4326 = distinct !DISubprogram(name: "xstrdup", scope: !831, file: !831, line: 335, type: !1118, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4327)
!4327 = !{!4328}
!4328 = !DILocalVariable(name: "string", arg: 1, scope: !4326, file: !831, line: 335, type: !142)
!4329 = !DILocation(line: 0, scope: !4326)
!4330 = !DILocation(line: 337, column: 27, scope: !4326)
!4331 = !DILocation(line: 337, column: 43, scope: !4326)
!4332 = !DILocation(line: 0, scope: !4256, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 337, column: 10, scope: !4326)
!4334 = !DILocation(line: 0, scope: !3947, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 312, column: 18, scope: !4256, inlinedAt: !4333)
!4336 = !DILocation(line: 49, column: 25, scope: !3947, inlinedAt: !4335)
!4337 = !DILocation(line: 0, scope: !3928, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 49, column: 10, scope: !3947, inlinedAt: !4335)
!4339 = !DILocation(line: 39, column: 8, scope: !3935, inlinedAt: !4338)
!4340 = !DILocation(line: 39, column: 7, scope: !3928, inlinedAt: !4338)
!4341 = !DILocation(line: 40, column: 5, scope: !3935, inlinedAt: !4338)
!4342 = !DILocation(line: 0, scope: !4272, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 312, column: 10, scope: !4256, inlinedAt: !4333)
!4344 = !DILocation(line: 29, column: 10, scope: !4272, inlinedAt: !4343)
!4345 = !DILocation(line: 337, column: 3, scope: !4326)
!4346 = distinct !DISubprogram(name: "xalloc_die", scope: !779, file: !779, line: 32, type: !545, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !863, retainedNodes: !4347)
!4347 = !{!4348}
!4348 = !DILocalVariable(name: "__errstatus", scope: !4349, file: !779, line: 34, type: !4350)
!4349 = distinct !DILexicalBlock(scope: !4346, file: !779, line: 34, column: 3)
!4350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!4351 = !DILocation(line: 34, column: 3, scope: !4349)
!4352 = !DILocation(line: 0, scope: !4349)
!4353 = !DILocation(line: 40, column: 3, scope: !4346)
!4354 = distinct !DISubprogram(name: "xnumtoumax", scope: !786, file: !786, line: 42, type: !4355, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !865, retainedNodes: !4357)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!885, !142, !83, !885, !885, !142, !142, !83, !83}
!4357 = !{!4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4370, !4371, !4372}
!4358 = !DILocalVariable(name: "n_str", arg: 1, scope: !4354, file: !786, line: 42, type: !142)
!4359 = !DILocalVariable(name: "base", arg: 2, scope: !4354, file: !786, line: 42, type: !83)
!4360 = !DILocalVariable(name: "min", arg: 3, scope: !4354, file: !786, line: 42, type: !885)
!4361 = !DILocalVariable(name: "max", arg: 4, scope: !4354, file: !786, line: 42, type: !885)
!4362 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4354, file: !786, line: 43, type: !142)
!4363 = !DILocalVariable(name: "err", arg: 6, scope: !4354, file: !786, line: 43, type: !142)
!4364 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4354, file: !786, line: 43, type: !83)
!4365 = !DILocalVariable(name: "flags", arg: 8, scope: !4354, file: !786, line: 44, type: !83)
!4366 = !DILocalVariable(name: "tnum", scope: !4354, file: !786, line: 46, type: !885)
!4367 = !DILocalVariable(name: "r", scope: !4354, file: !786, line: 46, type: !885)
!4368 = !DILocalVariable(name: "s_err", scope: !4354, file: !786, line: 47, type: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !869, line: 43, baseType: !868)
!4370 = !DILocalVariable(name: "overflow_errno", scope: !4354, file: !786, line: 50, type: !83)
!4371 = !DILocalVariable(name: "e", scope: !4354, file: !786, line: 75, type: !83)
!4372 = !DILocalVariable(name: "__errstatus", scope: !4373, file: !786, line: 80, type: !4350)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !786, line: 80, column: 5)
!4374 = distinct !DILexicalBlock(scope: !4354, file: !786, line: 77, column: 7)
!4375 = distinct !DIAssignID()
!4376 = !DILocation(line: 0, scope: !4354)
!4377 = !DILocation(line: 46, column: 3, scope: !4354)
!4378 = !DILocation(line: 47, column: 24, scope: !4354)
!4379 = !DILocation(line: 52, column: 13, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4354, file: !786, line: 52, column: 7)
!4381 = !DILocation(line: 52, column: 7, scope: !4354)
!4382 = !DILocation(line: 54, column: 11, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !786, line: 54, column: 11)
!4384 = distinct !DILexicalBlock(scope: !4380, file: !786, line: 53, column: 5)
!4385 = !DILocation(line: 54, column: 16, scope: !4383)
!4386 = !DILocation(line: 54, column: 11, scope: !4384)
!4387 = !DILocation(line: 57, column: 34, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4383, file: !786, line: 55, column: 9)
!4389 = !DILocation(line: 57, column: 28, scope: !4388)
!4390 = !DILocation(line: 58, column: 15, scope: !4388)
!4391 = !DILocation(line: 60, column: 9, scope: !4388)
!4392 = !DILocation(line: 61, column: 20, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4383, file: !786, line: 61, column: 16)
!4394 = !DILocation(line: 61, column: 16, scope: !4383)
!4395 = !DILocation(line: 64, column: 34, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4393, file: !786, line: 62, column: 9)
!4397 = !DILocation(line: 64, column: 28, scope: !4396)
!4398 = !DILocation(line: 65, column: 15, scope: !4396)
!4399 = !DILocation(line: 67, column: 9, scope: !4396)
!4400 = !DILocation(line: 75, column: 17, scope: !4354)
!4401 = !DILocation(line: 75, column: 11, scope: !4354)
!4402 = !DILocation(line: 78, column: 10, scope: !4374)
!4403 = !DILocation(line: 77, column: 16, scope: !4374)
!4404 = !DILocation(line: 79, column: 14, scope: !4374)
!4405 = !DILocation(line: 80, column: 5, scope: !4374)
!4406 = !DILocation(line: 82, column: 3, scope: !4354)
!4407 = !DILocation(line: 82, column: 9, scope: !4354)
!4408 = !DILocation(line: 84, column: 1, scope: !4354)
!4409 = !DILocation(line: 83, column: 3, scope: !4354)
!4410 = distinct !DISubprogram(name: "xdectoumax", scope: !786, file: !786, line: 92, type: !4411, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !865, retainedNodes: !4413)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!885, !142, !885, !885, !142, !142, !83}
!4413 = !{!4414, !4415, !4416, !4417, !4418, !4419}
!4414 = !DILocalVariable(name: "n_str", arg: 1, scope: !4410, file: !786, line: 92, type: !142)
!4415 = !DILocalVariable(name: "min", arg: 2, scope: !4410, file: !786, line: 92, type: !885)
!4416 = !DILocalVariable(name: "max", arg: 3, scope: !4410, file: !786, line: 92, type: !885)
!4417 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4410, file: !786, line: 93, type: !142)
!4418 = !DILocalVariable(name: "err", arg: 5, scope: !4410, file: !786, line: 93, type: !142)
!4419 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4410, file: !786, line: 93, type: !83)
!4420 = distinct !DIAssignID()
!4421 = !DILocation(line: 0, scope: !4410)
!4422 = !DILocation(line: 0, scope: !4354, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 95, column: 10, scope: !4410)
!4424 = !DILocation(line: 46, column: 3, scope: !4354, inlinedAt: !4423)
!4425 = !DILocation(line: 47, column: 24, scope: !4354, inlinedAt: !4423)
!4426 = !DILocation(line: 0, scope: !4383, inlinedAt: !4423)
!4427 = !DILocation(line: 52, column: 13, scope: !4380, inlinedAt: !4423)
!4428 = !DILocation(line: 52, column: 7, scope: !4354, inlinedAt: !4423)
!4429 = !DILocation(line: 54, column: 11, scope: !4383, inlinedAt: !4423)
!4430 = !DILocation(line: 54, column: 16, scope: !4383, inlinedAt: !4423)
!4431 = !DILocation(line: 54, column: 11, scope: !4384, inlinedAt: !4423)
!4432 = !DILocation(line: 75, column: 17, scope: !4354, inlinedAt: !4423)
!4433 = !DILocation(line: 75, column: 11, scope: !4354, inlinedAt: !4423)
!4434 = !DILocation(line: 77, column: 16, scope: !4374, inlinedAt: !4423)
!4435 = !DILocation(line: 78, column: 10, scope: !4374, inlinedAt: !4423)
!4436 = !DILocation(line: 80, column: 5, scope: !4374, inlinedAt: !4423)
!4437 = !DILocation(line: 82, column: 3, scope: !4354, inlinedAt: !4423)
!4438 = !DILocation(line: 82, column: 9, scope: !4354, inlinedAt: !4423)
!4439 = !DILocation(line: 84, column: 1, scope: !4354, inlinedAt: !4423)
!4440 = !DILocation(line: 95, column: 3, scope: !4410)
!4441 = distinct !DISubprogram(name: "xstrtoumax", scope: !4442, file: !4442, line: 71, type: !4443, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4447)
!4442 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!4445, !142, !1145, !83, !4446, !142}
!4445 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !883, line: 43, baseType: !882)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4458, !4459, !4460, !4461, !4464, !4465}
!4448 = !DILocalVariable(name: "nptr", arg: 1, scope: !4441, file: !4442, line: 71, type: !142)
!4449 = !DILocalVariable(name: "endptr", arg: 2, scope: !4441, file: !4442, line: 71, type: !1145)
!4450 = !DILocalVariable(name: "base", arg: 3, scope: !4441, file: !4442, line: 71, type: !83)
!4451 = !DILocalVariable(name: "val", arg: 4, scope: !4441, file: !4442, line: 72, type: !4446)
!4452 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4441, file: !4442, line: 72, type: !142)
!4453 = !DILocalVariable(name: "t_ptr", scope: !4441, file: !4442, line: 74, type: !136)
!4454 = !DILocalVariable(name: "p", scope: !4441, file: !4442, line: 75, type: !1145)
!4455 = !DILocalVariable(name: "q", scope: !4456, file: !4442, line: 79, type: !142)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !4442, line: 78, column: 5)
!4457 = distinct !DILexicalBlock(scope: !4441, file: !4442, line: 77, column: 7)
!4458 = !DILocalVariable(name: "ch", scope: !4456, file: !4442, line: 80, type: !144)
!4459 = !DILocalVariable(name: "tmp", scope: !4441, file: !4442, line: 91, type: !885)
!4460 = !DILocalVariable(name: "err", scope: !4441, file: !4442, line: 92, type: !4445)
!4461 = !DILocalVariable(name: "xbase", scope: !4462, file: !4442, line: 126, type: !83)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !4442, line: 119, column: 5)
!4463 = distinct !DILexicalBlock(scope: !4441, file: !4442, line: 118, column: 7)
!4464 = !DILocalVariable(name: "suffixes", scope: !4462, file: !4442, line: 127, type: !83)
!4465 = !DILocalVariable(name: "overflow", scope: !4462, file: !4442, line: 156, type: !4445)
!4466 = distinct !DIAssignID()
!4467 = !DILocation(line: 0, scope: !4441)
!4468 = !DILocation(line: 74, column: 3, scope: !4441)
!4469 = !DILocation(line: 75, column: 14, scope: !4441)
!4470 = !DILocation(line: 0, scope: !4456)
!4471 = !DILocation(line: 81, column: 7, scope: !4456)
!4472 = !DILocation(line: 81, column: 14, scope: !4456)
!4473 = !DILocation(line: 82, column: 15, scope: !4456)
!4474 = distinct !{!4474, !4471, !4475, !1039}
!4475 = !DILocation(line: 82, column: 17, scope: !4456)
!4476 = !DILocation(line: 83, column: 14, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4456, file: !4442, line: 83, column: 11)
!4478 = !DILocation(line: 83, column: 11, scope: !4456)
!4479 = !DILocation(line: 85, column: 14, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4477, file: !4442, line: 84, column: 9)
!4481 = !DILocation(line: 90, column: 3, scope: !4441)
!4482 = !DILocation(line: 90, column: 9, scope: !4441)
!4483 = !DILocation(line: 91, column: 20, scope: !4441)
!4484 = !DILocation(line: 94, column: 7, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4441, file: !4442, line: 94, column: 7)
!4486 = !DILocation(line: 94, column: 10, scope: !4485)
!4487 = !DILocation(line: 94, column: 7, scope: !4441)
!4488 = !DILocation(line: 98, column: 14, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !4442, line: 98, column: 11)
!4490 = distinct !DILexicalBlock(scope: !4485, file: !4442, line: 95, column: 5)
!4491 = !DILocation(line: 98, column: 29, scope: !4489)
!4492 = !DILocation(line: 98, column: 32, scope: !4489)
!4493 = !DILocation(line: 98, column: 38, scope: !4489)
!4494 = !DILocation(line: 98, column: 41, scope: !4489)
!4495 = !DILocation(line: 98, column: 11, scope: !4490)
!4496 = !DILocation(line: 102, column: 12, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4485, file: !4442, line: 102, column: 12)
!4498 = !DILocation(line: 102, column: 12, scope: !4485)
!4499 = !DILocation(line: 107, column: 5, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4497, file: !4442, line: 103, column: 5)
!4501 = !DILocation(line: 112, column: 8, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4441, file: !4442, line: 112, column: 7)
!4503 = !DILocation(line: 112, column: 7, scope: !4441)
!4504 = !DILocation(line: 114, column: 12, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4502, file: !4442, line: 113, column: 5)
!4506 = !DILocation(line: 115, column: 7, scope: !4505)
!4507 = !DILocation(line: 118, column: 7, scope: !4463)
!4508 = !DILocation(line: 118, column: 11, scope: !4463)
!4509 = !DILocation(line: 118, column: 7, scope: !4441)
!4510 = !DILocation(line: 120, column: 12, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4462, file: !4442, line: 120, column: 11)
!4512 = !DILocation(line: 120, column: 11, scope: !4462)
!4513 = !DILocation(line: 122, column: 16, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4511, file: !4442, line: 121, column: 9)
!4515 = !DILocation(line: 123, column: 22, scope: !4514)
!4516 = !DILocation(line: 123, column: 11, scope: !4514)
!4517 = !DILocation(line: 0, scope: !4462)
!4518 = !DILocation(line: 128, column: 7, scope: !4462)
!4519 = !DILocation(line: 140, column: 15, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !4442, line: 140, column: 15)
!4521 = distinct !DILexicalBlock(scope: !4462, file: !4442, line: 129, column: 9)
!4522 = !DILocation(line: 140, column: 15, scope: !4521)
!4523 = !DILocation(line: 141, column: 21, scope: !4520)
!4524 = !DILocation(line: 141, column: 13, scope: !4520)
!4525 = !DILocation(line: 144, column: 21, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !4442, line: 144, column: 21)
!4527 = distinct !DILexicalBlock(scope: !4520, file: !4442, line: 142, column: 15)
!4528 = !DILocation(line: 144, column: 29, scope: !4526)
!4529 = !DILocation(line: 144, column: 21, scope: !4527)
!4530 = !DILocation(line: 152, column: 17, scope: !4527)
!4531 = !DILocation(line: 157, column: 7, scope: !4462)
!4532 = !DILocalVariable(name: "err", scope: !4533, file: !4442, line: 64, type: !4445)
!4533 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4442, file: !4442, line: 62, type: !4534, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4536)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!4445, !4446, !83, !83}
!4536 = !{!4537, !4538, !4539, !4532}
!4537 = !DILocalVariable(name: "x", arg: 1, scope: !4533, file: !4442, line: 62, type: !4446)
!4538 = !DILocalVariable(name: "base", arg: 2, scope: !4533, file: !4442, line: 62, type: !83)
!4539 = !DILocalVariable(name: "power", arg: 3, scope: !4533, file: !4442, line: 62, type: !83)
!4540 = !DILocation(line: 0, scope: !4533, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 219, column: 22, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4462, file: !4442, line: 158, column: 9)
!4543 = !DILocalVariable(name: "x", arg: 1, scope: !4544, file: !4442, line: 47, type: !4446)
!4544 = distinct !DISubprogram(name: "bkm_scale", scope: !4442, file: !4442, line: 47, type: !4545, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4547)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!4445, !4446, !83}
!4547 = !{!4543, !4548, !4549}
!4548 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4544, file: !4442, line: 47, type: !83)
!4549 = !DILocalVariable(name: "scaled", scope: !4544, file: !4442, line: 49, type: !885)
!4550 = !DILocation(line: 0, scope: !4544, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4541)
!4552 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4551)
!4553 = distinct !DILexicalBlock(scope: !4544, file: !4442, line: 50, column: 7)
!4554 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4551)
!4555 = !DILocation(line: 66, column: 9, scope: !4533, inlinedAt: !4541)
!4556 = !DILocation(line: 227, column: 11, scope: !4462)
!4557 = !DILocation(line: 0, scope: !4533, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 215, column: 22, scope: !4542)
!4559 = !DILocation(line: 0, scope: !4544, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4558)
!4561 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4560)
!4562 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4560)
!4563 = !DILocation(line: 66, column: 9, scope: !4533, inlinedAt: !4558)
!4564 = !DILocation(line: 0, scope: !4533, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 202, column: 22, scope: !4542)
!4566 = !DILocation(line: 0, scope: !4544, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4565)
!4568 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4567)
!4569 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4567)
!4570 = !DILocation(line: 66, column: 9, scope: !4533, inlinedAt: !4565)
!4571 = !DILocation(line: 0, scope: !4533, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 198, column: 22, scope: !4542)
!4573 = !DILocation(line: 0, scope: !4544, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4572)
!4575 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4574)
!4576 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4574)
!4577 = !DILocation(line: 66, column: 9, scope: !4533, inlinedAt: !4572)
!4578 = !DILocation(line: 0, scope: !4533, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 194, column: 22, scope: !4542)
!4580 = !DILocation(line: 0, scope: !4544, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4579)
!4582 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4581)
!4583 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4581)
!4584 = !DILocation(line: 66, column: 9, scope: !4533, inlinedAt: !4579)
!4585 = !DILocation(line: 0, scope: !4533, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 175, column: 22, scope: !4542)
!4587 = !DILocation(line: 0, scope: !4544, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4586)
!4589 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4588)
!4590 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4588)
!4591 = !DILocation(line: 66, column: 9, scope: !4533, inlinedAt: !4586)
!4592 = !DILocation(line: 0, scope: !4544, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 160, column: 22, scope: !4542)
!4594 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4593)
!4595 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4593)
!4596 = !DILocation(line: 161, column: 11, scope: !4542)
!4597 = !DILocation(line: 0, scope: !4544, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 167, column: 22, scope: !4542)
!4599 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4598)
!4600 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4598)
!4601 = !DILocation(line: 168, column: 11, scope: !4542)
!4602 = !DILocation(line: 0, scope: !4533, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 180, column: 22, scope: !4542)
!4604 = !DILocation(line: 0, scope: !4544, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4603)
!4606 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4605)
!4607 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4605)
!4608 = !DILocation(line: 66, column: 9, scope: !4533, inlinedAt: !4603)
!4609 = !DILocation(line: 0, scope: !4533, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 185, column: 22, scope: !4542)
!4611 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4610)
!4613 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4612)
!4614 = !DILocation(line: 0, scope: !4544, inlinedAt: !4612)
!4615 = !DILocation(line: 0, scope: !4533, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 190, column: 22, scope: !4542)
!4617 = !DILocation(line: 0, scope: !4544, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4616)
!4619 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4618)
!4620 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4618)
!4621 = !DILocation(line: 66, column: 9, scope: !4533, inlinedAt: !4616)
!4622 = !DILocation(line: 0, scope: !4533, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 207, column: 22, scope: !4542)
!4624 = !DILocation(line: 0, scope: !4544, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 66, column: 12, scope: !4533, inlinedAt: !4623)
!4626 = !DILocation(line: 50, column: 7, scope: !4553, inlinedAt: !4625)
!4627 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4625)
!4628 = !DILocation(line: 66, column: 9, scope: !4533, inlinedAt: !4623)
!4629 = !DILocation(line: 0, scope: !4544, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 211, column: 22, scope: !4542)
!4631 = !DILocation(line: 50, column: 7, scope: !4544, inlinedAt: !4630)
!4632 = !DILocation(line: 212, column: 11, scope: !4542)
!4633 = !DILocation(line: 0, scope: !4542)
!4634 = !DILocation(line: 228, column: 10, scope: !4462)
!4635 = !DILocation(line: 229, column: 11, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4462, file: !4442, line: 229, column: 11)
!4637 = !DILocation(line: 229, column: 11, scope: !4462)
!4638 = !DILocation(line: 223, column: 16, scope: !4542)
!4639 = !DILocation(line: 224, column: 22, scope: !4542)
!4640 = !DILocation(line: 100, column: 11, scope: !4490)
!4641 = !DILocation(line: 92, column: 16, scope: !4441)
!4642 = !DILocation(line: 233, column: 8, scope: !4441)
!4643 = !DILocation(line: 234, column: 3, scope: !4441)
!4644 = !DILocation(line: 235, column: 1, scope: !4441)
!4645 = !DISubprogram(name: "strtoumax", scope: !4646, file: !4646, line: 301, type: !4647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4646 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!885, !982, !4649, !83}
!4649 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1145)
!4650 = distinct !DISubprogram(name: "rpl_fopen", scope: !889, file: !889, line: 46, type: !4651, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !4687)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!4653, !142, !142}
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !4655)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !4656)
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4655, file: !206, line: 51, baseType: !83, size: 32)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4655, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4655, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4655, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4655, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4655, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4655, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4655, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4655, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4655, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4655, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4655, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4655, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4655, file: !206, line: 70, baseType: !4671, size: 64, offset: 832)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4655, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4655, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4655, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4655, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4655, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4655, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4655, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4655, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4655, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4655, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4655, file: !206, line: 93, baseType: !4671, size: 64, offset: 1344)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4655, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4655, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4655, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4655, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!4687 = !{!4688, !4689, !4690, !4691, !4692, !4693, !4697, !4699, !4700, !4705, !4708, !4709}
!4688 = !DILocalVariable(name: "filename", arg: 1, scope: !4650, file: !889, line: 46, type: !142)
!4689 = !DILocalVariable(name: "mode", arg: 2, scope: !4650, file: !889, line: 46, type: !142)
!4690 = !DILocalVariable(name: "open_direction", scope: !4650, file: !889, line: 54, type: !83)
!4691 = !DILocalVariable(name: "open_flags", scope: !4650, file: !889, line: 55, type: !83)
!4692 = !DILocalVariable(name: "open_flags_gnu", scope: !4650, file: !889, line: 57, type: !168)
!4693 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4650, file: !889, line: 59, type: !4694)
!4694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4695)
!4695 = !{!4696}
!4696 = !DISubrange(count: 81)
!4697 = !DILocalVariable(name: "p", scope: !4698, file: !889, line: 62, type: !142)
!4698 = distinct !DILexicalBlock(scope: !4650, file: !889, line: 61, column: 3)
!4699 = !DILocalVariable(name: "q", scope: !4698, file: !889, line: 64, type: !136)
!4700 = !DILocalVariable(name: "len", scope: !4701, file: !889, line: 128, type: !139)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !889, line: 127, column: 9)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !889, line: 68, column: 7)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !889, line: 67, column: 5)
!4704 = distinct !DILexicalBlock(scope: !4698, file: !889, line: 67, column: 5)
!4705 = !DILocalVariable(name: "fd", scope: !4706, file: !889, line: 199, type: !83)
!4706 = distinct !DILexicalBlock(scope: !4707, file: !889, line: 198, column: 5)
!4707 = distinct !DILexicalBlock(scope: !4650, file: !889, line: 197, column: 7)
!4708 = !DILocalVariable(name: "fp", scope: !4706, file: !889, line: 204, type: !4653)
!4709 = !DILocalVariable(name: "saved_errno", scope: !4710, file: !889, line: 207, type: !83)
!4710 = distinct !DILexicalBlock(scope: !4711, file: !889, line: 206, column: 9)
!4711 = distinct !DILexicalBlock(scope: !4706, file: !889, line: 205, column: 11)
!4712 = distinct !DIAssignID()
!4713 = !DILocation(line: 0, scope: !4650)
!4714 = !DILocation(line: 59, column: 3, scope: !4650)
!4715 = !DILocation(line: 0, scope: !4698)
!4716 = !DILocation(line: 67, column: 5, scope: !4698)
!4717 = !DILocation(line: 54, column: 7, scope: !4650)
!4718 = !DILocation(line: 67, column: 12, scope: !4703)
!4719 = !DILocation(line: 67, column: 5, scope: !4704)
!4720 = !DILocation(line: 74, column: 19, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !889, line: 74, column: 17)
!4722 = distinct !DILexicalBlock(scope: !4702, file: !889, line: 70, column: 11)
!4723 = !DILocation(line: 74, column: 17, scope: !4722)
!4724 = !DILocation(line: 75, column: 17, scope: !4721)
!4725 = !DILocation(line: 75, column: 20, scope: !4721)
!4726 = !DILocation(line: 75, column: 15, scope: !4721)
!4727 = !DILocation(line: 80, column: 24, scope: !4722)
!4728 = !DILocation(line: 82, column: 19, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4722, file: !889, line: 82, column: 17)
!4730 = !DILocation(line: 82, column: 17, scope: !4722)
!4731 = !DILocation(line: 83, column: 17, scope: !4729)
!4732 = !DILocation(line: 83, column: 20, scope: !4729)
!4733 = !DILocation(line: 83, column: 15, scope: !4729)
!4734 = !DILocation(line: 88, column: 24, scope: !4722)
!4735 = !DILocation(line: 90, column: 19, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4722, file: !889, line: 90, column: 17)
!4737 = !DILocation(line: 90, column: 17, scope: !4722)
!4738 = !DILocation(line: 91, column: 17, scope: !4736)
!4739 = !DILocation(line: 91, column: 20, scope: !4736)
!4740 = !DILocation(line: 91, column: 15, scope: !4736)
!4741 = !DILocation(line: 100, column: 19, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4722, file: !889, line: 100, column: 17)
!4743 = !DILocation(line: 100, column: 17, scope: !4722)
!4744 = !DILocation(line: 101, column: 17, scope: !4742)
!4745 = !DILocation(line: 101, column: 20, scope: !4742)
!4746 = !DILocation(line: 101, column: 15, scope: !4742)
!4747 = !DILocation(line: 107, column: 19, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4722, file: !889, line: 107, column: 17)
!4749 = !DILocation(line: 107, column: 17, scope: !4722)
!4750 = !DILocation(line: 108, column: 17, scope: !4748)
!4751 = !DILocation(line: 108, column: 20, scope: !4748)
!4752 = !DILocation(line: 108, column: 15, scope: !4748)
!4753 = !DILocation(line: 113, column: 24, scope: !4722)
!4754 = !DILocation(line: 115, column: 13, scope: !4722)
!4755 = !DILocation(line: 117, column: 24, scope: !4722)
!4756 = !DILocation(line: 119, column: 13, scope: !4722)
!4757 = !DILocation(line: 128, column: 24, scope: !4701)
!4758 = !DILocation(line: 0, scope: !4701)
!4759 = !DILocation(line: 129, column: 48, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4701, file: !889, line: 129, column: 15)
!4761 = !DILocation(line: 129, column: 15, scope: !4701)
!4762 = !DILocalVariable(name: "__dest", arg: 1, scope: !4763, file: !1303, line: 26, type: !1617)
!4763 = distinct !DISubprogram(name: "memcpy", scope: !1303, file: !1303, line: 26, type: !1615, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !4764)
!4764 = !{!4762, !4765, !4766}
!4765 = !DILocalVariable(name: "__src", arg: 2, scope: !4763, file: !1303, line: 26, type: !1139)
!4766 = !DILocalVariable(name: "__len", arg: 3, scope: !4763, file: !1303, line: 26, type: !139)
!4767 = !DILocation(line: 0, scope: !4763, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 131, column: 11, scope: !4701)
!4769 = !DILocation(line: 29, column: 10, scope: !4763, inlinedAt: !4768)
!4770 = !DILocation(line: 132, column: 13, scope: !4701)
!4771 = !DILocation(line: 135, column: 9, scope: !4702)
!4772 = !DILocation(line: 67, column: 25, scope: !4703)
!4773 = !DILocation(line: 67, column: 5, scope: !4703)
!4774 = distinct !{!4774, !4719, !4775, !1039}
!4775 = !DILocation(line: 136, column: 7, scope: !4704)
!4776 = !DILocation(line: 138, column: 8, scope: !4698)
!4777 = !DILocation(line: 197, column: 7, scope: !4707)
!4778 = !DILocation(line: 197, column: 7, scope: !4650)
!4779 = !DILocation(line: 199, column: 47, scope: !4706)
!4780 = !DILocation(line: 199, column: 16, scope: !4706)
!4781 = !DILocation(line: 0, scope: !4706)
!4782 = !DILocation(line: 201, column: 14, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4706, file: !889, line: 201, column: 11)
!4784 = !DILocation(line: 201, column: 11, scope: !4706)
!4785 = !DILocation(line: 204, column: 18, scope: !4706)
!4786 = !DILocation(line: 205, column: 14, scope: !4711)
!4787 = !DILocation(line: 205, column: 11, scope: !4706)
!4788 = !DILocation(line: 207, column: 29, scope: !4710)
!4789 = !DILocation(line: 0, scope: !4710)
!4790 = !DILocation(line: 208, column: 11, scope: !4710)
!4791 = !DILocation(line: 209, column: 17, scope: !4710)
!4792 = !DILocation(line: 210, column: 9, scope: !4710)
!4793 = !DILocalVariable(name: "filename", arg: 1, scope: !4794, file: !889, line: 30, type: !142)
!4794 = distinct !DISubprogram(name: "orig_fopen", scope: !889, file: !889, line: 30, type: !4651, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !4795)
!4795 = !{!4793, !4796}
!4796 = !DILocalVariable(name: "mode", arg: 2, scope: !4794, file: !889, line: 30, type: !142)
!4797 = !DILocation(line: 0, scope: !4794, inlinedAt: !4798)
!4798 = distinct !DILocation(line: 219, column: 10, scope: !4650)
!4799 = !DILocation(line: 32, column: 10, scope: !4794, inlinedAt: !4798)
!4800 = !DILocation(line: 219, column: 3, scope: !4650)
!4801 = !DILocation(line: 220, column: 1, scope: !4650)
!4802 = !DISubprogram(name: "open", scope: !1941, file: !1941, line: 181, type: !4803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!83, !142, !83, null}
!4805 = !DISubprogram(name: "fdopen", scope: !987, file: !987, line: 293, type: !4806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!4653, !83, !142}
!4808 = !DISubprogram(name: "close", scope: !1806, file: !1806, line: 358, type: !1717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4809 = !DISubprogram(name: "fopen", scope: !987, file: !987, line: 258, type: !4810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!4653, !982, !982}
!4812 = distinct !DISubprogram(name: "close_stream", scope: !891, file: !891, line: 55, type: !4813, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !4849)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!83, !4815}
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !4817)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4817, file: !206, line: 51, baseType: !83, size: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4817, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4817, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4817, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4817, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4817, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4817, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4817, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4817, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4817, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4817, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4817, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4817, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4817, file: !206, line: 70, baseType: !4833, size: 64, offset: 832)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4817, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4817, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4817, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4817, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4817, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4817, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4817, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4817, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4817, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4817, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4817, file: !206, line: 93, baseType: !4833, size: 64, offset: 1344)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4817, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4817, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4817, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4817, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!4849 = !{!4850, !4851, !4853, !4854}
!4850 = !DILocalVariable(name: "stream", arg: 1, scope: !4812, file: !891, line: 55, type: !4815)
!4851 = !DILocalVariable(name: "some_pending", scope: !4812, file: !891, line: 57, type: !4852)
!4852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!4853 = !DILocalVariable(name: "prev_fail", scope: !4812, file: !891, line: 58, type: !4852)
!4854 = !DILocalVariable(name: "fclose_fail", scope: !4812, file: !891, line: 59, type: !4852)
!4855 = !DILocation(line: 0, scope: !4812)
!4856 = !DILocation(line: 57, column: 30, scope: !4812)
!4857 = !DILocalVariable(name: "__stream", arg: 1, scope: !4858, file: !1284, line: 135, type: !4815)
!4858 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1284, file: !1284, line: 135, type: !4813, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !4859)
!4859 = !{!4857}
!4860 = !DILocation(line: 0, scope: !4858, inlinedAt: !4861)
!4861 = distinct !DILocation(line: 58, column: 27, scope: !4812)
!4862 = !DILocation(line: 137, column: 10, scope: !4858, inlinedAt: !4861)
!4863 = !DILocation(line: 58, column: 43, scope: !4812)
!4864 = !DILocation(line: 59, column: 29, scope: !4812)
!4865 = !DILocation(line: 59, column: 45, scope: !4812)
!4866 = !DILocation(line: 69, column: 17, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4812, file: !891, line: 69, column: 7)
!4868 = !DILocation(line: 57, column: 50, scope: !4812)
!4869 = !DILocation(line: 69, column: 33, scope: !4867)
!4870 = !DILocation(line: 69, column: 53, scope: !4867)
!4871 = !DILocation(line: 69, column: 59, scope: !4867)
!4872 = !DILocation(line: 69, column: 7, scope: !4812)
!4873 = !DILocation(line: 71, column: 11, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4867, file: !891, line: 70, column: 5)
!4875 = !DILocation(line: 72, column: 9, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4874, file: !891, line: 71, column: 11)
!4877 = !DILocation(line: 72, column: 15, scope: !4876)
!4878 = !DILocation(line: 77, column: 1, scope: !4812)
!4879 = !DISubprogram(name: "__fpending", scope: !2149, file: !2149, line: 75, type: !4880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!139, !4815}
!4882 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !789, file: !789, line: 100, type: !4883, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4886)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!139, !1695, !142, !139, !4885}
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!4886 = !{!4887, !4888, !4889, !4890, !4891}
!4887 = !DILocalVariable(name: "pwc", arg: 1, scope: !4882, file: !789, line: 100, type: !1695)
!4888 = !DILocalVariable(name: "s", arg: 2, scope: !4882, file: !789, line: 100, type: !142)
!4889 = !DILocalVariable(name: "n", arg: 3, scope: !4882, file: !789, line: 100, type: !139)
!4890 = !DILocalVariable(name: "ps", arg: 4, scope: !4882, file: !789, line: 100, type: !4885)
!4891 = !DILocalVariable(name: "ret", scope: !4882, file: !789, line: 130, type: !139)
!4892 = !DILocation(line: 0, scope: !4882)
!4893 = !DILocation(line: 105, column: 9, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4882, file: !789, line: 105, column: 7)
!4895 = !DILocation(line: 105, column: 7, scope: !4882)
!4896 = !DILocation(line: 117, column: 10, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4882, file: !789, line: 117, column: 7)
!4898 = !DILocation(line: 117, column: 7, scope: !4882)
!4899 = !DILocation(line: 130, column: 16, scope: !4882)
!4900 = !DILocation(line: 135, column: 11, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4882, file: !789, line: 135, column: 7)
!4902 = !DILocation(line: 135, column: 25, scope: !4901)
!4903 = !DILocation(line: 135, column: 30, scope: !4901)
!4904 = !DILocation(line: 135, column: 7, scope: !4882)
!4905 = !DILocalVariable(name: "ps", arg: 1, scope: !4906, file: !2389, line: 1135, type: !4885)
!4906 = distinct !DISubprogram(name: "mbszero", scope: !2389, file: !2389, line: 1135, type: !4907, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4909)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{null, !4885}
!4909 = !{!4905}
!4910 = !DILocation(line: 0, scope: !4906, inlinedAt: !4911)
!4911 = distinct !DILocation(line: 137, column: 5, scope: !4901)
!4912 = !DILocalVariable(name: "__dest", arg: 1, scope: !4913, file: !1303, line: 57, type: !137)
!4913 = distinct !DISubprogram(name: "memset", scope: !1303, file: !1303, line: 57, type: !2398, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4914)
!4914 = !{!4912, !4915, !4916}
!4915 = !DILocalVariable(name: "__ch", arg: 2, scope: !4913, file: !1303, line: 57, type: !83)
!4916 = !DILocalVariable(name: "__len", arg: 3, scope: !4913, file: !1303, line: 57, type: !139)
!4917 = !DILocation(line: 0, scope: !4913, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 1137, column: 3, scope: !4906, inlinedAt: !4911)
!4919 = !DILocation(line: 59, column: 10, scope: !4913, inlinedAt: !4918)
!4920 = !DILocation(line: 137, column: 5, scope: !4901)
!4921 = !DILocation(line: 138, column: 11, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4882, file: !789, line: 138, column: 7)
!4923 = !DILocation(line: 138, column: 7, scope: !4882)
!4924 = !DILocation(line: 139, column: 5, scope: !4922)
!4925 = !DILocation(line: 143, column: 26, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4882, file: !789, line: 143, column: 7)
!4927 = !DILocation(line: 143, column: 41, scope: !4926)
!4928 = !DILocation(line: 143, column: 7, scope: !4882)
!4929 = !DILocation(line: 145, column: 15, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4931, file: !789, line: 145, column: 11)
!4931 = distinct !DILexicalBlock(scope: !4926, file: !789, line: 144, column: 5)
!4932 = !DILocation(line: 145, column: 11, scope: !4931)
!4933 = !DILocation(line: 146, column: 32, scope: !4930)
!4934 = !DILocation(line: 146, column: 16, scope: !4930)
!4935 = !DILocation(line: 146, column: 14, scope: !4930)
!4936 = !DILocation(line: 146, column: 9, scope: !4930)
!4937 = !DILocation(line: 286, column: 1, scope: !4882)
!4938 = !DISubprogram(name: "mbsinit", scope: !1741, file: !1741, line: 293, type: !4939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!83, !4941}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!4943 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !893, file: !893, line: 27, type: !3912, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !4944)
!4944 = !{!4945, !4946, !4947, !4948}
!4945 = !DILocalVariable(name: "ptr", arg: 1, scope: !4943, file: !893, line: 27, type: !137)
!4946 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4943, file: !893, line: 27, type: !139)
!4947 = !DILocalVariable(name: "size", arg: 3, scope: !4943, file: !893, line: 27, type: !139)
!4948 = !DILocalVariable(name: "nbytes", scope: !4943, file: !893, line: 29, type: !139)
!4949 = !DILocation(line: 0, scope: !4943)
!4950 = !DILocation(line: 30, column: 7, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4943, file: !893, line: 30, column: 7)
!4952 = !DILocation(line: 30, column: 7, scope: !4943)
!4953 = !DILocation(line: 32, column: 7, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4951, file: !893, line: 31, column: 5)
!4955 = !DILocation(line: 32, column: 13, scope: !4954)
!4956 = !DILocation(line: 33, column: 7, scope: !4954)
!4957 = !DILocalVariable(name: "ptr", arg: 1, scope: !4958, file: !4004, line: 2057, type: !137)
!4958 = distinct !DISubprogram(name: "rpl_realloc", scope: !4004, file: !4004, line: 2057, type: !3996, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !4959)
!4959 = !{!4957, !4960}
!4960 = !DILocalVariable(name: "size", arg: 2, scope: !4958, file: !4004, line: 2057, type: !139)
!4961 = !DILocation(line: 0, scope: !4958, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 37, column: 10, scope: !4943)
!4963 = !DILocation(line: 2059, column: 24, scope: !4958, inlinedAt: !4962)
!4964 = !DILocation(line: 2059, column: 10, scope: !4958, inlinedAt: !4962)
!4965 = !DILocation(line: 37, column: 3, scope: !4943)
!4966 = !DILocation(line: 38, column: 1, scope: !4943)
!4967 = distinct !DISubprogram(name: "hard_locale", scope: !807, file: !807, line: 28, type: !4968, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4970)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!168, !83}
!4970 = !{!4971, !4972}
!4971 = !DILocalVariable(name: "category", arg: 1, scope: !4967, file: !807, line: 28, type: !83)
!4972 = !DILocalVariable(name: "locale", scope: !4967, file: !807, line: 30, type: !4973)
!4973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4974)
!4974 = !{!4975}
!4975 = !DISubrange(count: 257)
!4976 = distinct !DIAssignID()
!4977 = !DILocation(line: 0, scope: !4967)
!4978 = !DILocation(line: 30, column: 3, scope: !4967)
!4979 = !DILocation(line: 32, column: 7, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4967, file: !807, line: 32, column: 7)
!4981 = !DILocation(line: 32, column: 7, scope: !4967)
!4982 = !DILocalVariable(name: "__s1", arg: 1, scope: !4983, file: !1005, line: 1359, type: !142)
!4983 = distinct !DISubprogram(name: "streq", scope: !1005, file: !1005, line: 1359, type: !1006, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4984)
!4984 = !{!4982, !4985}
!4985 = !DILocalVariable(name: "__s2", arg: 2, scope: !4983, file: !1005, line: 1359, type: !142)
!4986 = !DILocation(line: 0, scope: !4983, inlinedAt: !4987)
!4987 = distinct !DILocation(line: 35, column: 9, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4967, file: !807, line: 35, column: 7)
!4989 = !DILocation(line: 1361, column: 11, scope: !4983, inlinedAt: !4987)
!4990 = !DILocation(line: 35, column: 29, scope: !4988)
!4991 = !DILocation(line: 0, scope: !4983, inlinedAt: !4992)
!4992 = distinct !DILocation(line: 35, column: 32, scope: !4988)
!4993 = !DILocation(line: 1361, column: 11, scope: !4983, inlinedAt: !4992)
!4994 = !DILocation(line: 1361, column: 10, scope: !4983, inlinedAt: !4992)
!4995 = !DILocation(line: 35, column: 7, scope: !4967)
!4996 = !DILocation(line: 46, column: 3, scope: !4967)
!4997 = !DILocation(line: 47, column: 1, scope: !4967)
!4998 = distinct !DISubprogram(name: "setlocale_null_r", scope: !899, file: !899, line: 154, type: !4999, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !898, retainedNodes: !5001)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!83, !83, !136, !139}
!5001 = !{!5002, !5003, !5004}
!5002 = !DILocalVariable(name: "category", arg: 1, scope: !4998, file: !899, line: 154, type: !83)
!5003 = !DILocalVariable(name: "buf", arg: 2, scope: !4998, file: !899, line: 154, type: !136)
!5004 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4998, file: !899, line: 154, type: !139)
!5005 = !DILocation(line: 0, scope: !4998)
!5006 = !DILocation(line: 159, column: 10, scope: !4998)
!5007 = !DILocation(line: 159, column: 3, scope: !4998)
!5008 = distinct !DISubprogram(name: "setlocale_null", scope: !899, file: !899, line: 186, type: !5009, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !898, retainedNodes: !5011)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!142, !83}
!5011 = !{!5012}
!5012 = !DILocalVariable(name: "category", arg: 1, scope: !5008, file: !899, line: 186, type: !83)
!5013 = !DILocation(line: 0, scope: !5008)
!5014 = !DILocation(line: 189, column: 10, scope: !5008)
!5015 = !DILocation(line: 189, column: 3, scope: !5008)
!5016 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !901, file: !901, line: 35, type: !5009, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !900, retainedNodes: !5017)
!5017 = !{!5018, !5019}
!5018 = !DILocalVariable(name: "category", arg: 1, scope: !5016, file: !901, line: 35, type: !83)
!5019 = !DILocalVariable(name: "result", scope: !5016, file: !901, line: 37, type: !142)
!5020 = !DILocation(line: 0, scope: !5016)
!5021 = !DILocation(line: 37, column: 24, scope: !5016)
!5022 = !DILocation(line: 62, column: 3, scope: !5016)
!5023 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !901, file: !901, line: 66, type: !4999, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !900, retainedNodes: !5024)
!5024 = !{!5025, !5026, !5027, !5028, !5029}
!5025 = !DILocalVariable(name: "category", arg: 1, scope: !5023, file: !901, line: 66, type: !83)
!5026 = !DILocalVariable(name: "buf", arg: 2, scope: !5023, file: !901, line: 66, type: !136)
!5027 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5023, file: !901, line: 66, type: !139)
!5028 = !DILocalVariable(name: "result", scope: !5023, file: !901, line: 111, type: !142)
!5029 = !DILocalVariable(name: "length", scope: !5030, file: !901, line: 125, type: !139)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !901, line: 124, column: 5)
!5031 = distinct !DILexicalBlock(scope: !5023, file: !901, line: 113, column: 7)
!5032 = !DILocation(line: 0, scope: !5023)
!5033 = !DILocation(line: 0, scope: !5016, inlinedAt: !5034)
!5034 = distinct !DILocation(line: 111, column: 24, scope: !5023)
!5035 = !DILocation(line: 37, column: 24, scope: !5016, inlinedAt: !5034)
!5036 = !DILocation(line: 113, column: 14, scope: !5031)
!5037 = !DILocation(line: 113, column: 7, scope: !5023)
!5038 = !DILocation(line: 116, column: 19, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !901, line: 116, column: 11)
!5040 = distinct !DILexicalBlock(scope: !5031, file: !901, line: 114, column: 5)
!5041 = !DILocation(line: 116, column: 11, scope: !5040)
!5042 = !DILocation(line: 120, column: 16, scope: !5039)
!5043 = !DILocation(line: 120, column: 9, scope: !5039)
!5044 = !DILocation(line: 125, column: 23, scope: !5030)
!5045 = !DILocation(line: 0, scope: !5030)
!5046 = !DILocation(line: 126, column: 18, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5030, file: !901, line: 126, column: 11)
!5048 = !DILocation(line: 126, column: 11, scope: !5030)
!5049 = !DILocation(line: 128, column: 39, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5047, file: !901, line: 127, column: 9)
!5051 = !DILocalVariable(name: "__dest", arg: 1, scope: !5052, file: !1303, line: 26, type: !1617)
!5052 = distinct !DISubprogram(name: "memcpy", scope: !1303, file: !1303, line: 26, type: !1615, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !900, retainedNodes: !5053)
!5053 = !{!5051, !5054, !5055}
!5054 = !DILocalVariable(name: "__src", arg: 2, scope: !5052, file: !1303, line: 26, type: !1139)
!5055 = !DILocalVariable(name: "__len", arg: 3, scope: !5052, file: !1303, line: 26, type: !139)
!5056 = !DILocation(line: 0, scope: !5052, inlinedAt: !5057)
!5057 = distinct !DILocation(line: 128, column: 11, scope: !5050)
!5058 = !DILocation(line: 29, column: 10, scope: !5052, inlinedAt: !5057)
!5059 = !DILocation(line: 129, column: 11, scope: !5050)
!5060 = !DILocation(line: 133, column: 23, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !901, line: 133, column: 15)
!5062 = distinct !DILexicalBlock(scope: !5047, file: !901, line: 132, column: 9)
!5063 = !DILocation(line: 133, column: 15, scope: !5062)
!5064 = !DILocation(line: 138, column: 44, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5061, file: !901, line: 134, column: 13)
!5066 = !DILocation(line: 0, scope: !5052, inlinedAt: !5067)
!5067 = distinct !DILocation(line: 138, column: 15, scope: !5065)
!5068 = !DILocation(line: 29, column: 10, scope: !5052, inlinedAt: !5067)
!5069 = !DILocation(line: 139, column: 15, scope: !5065)
!5070 = !DILocation(line: 139, column: 32, scope: !5065)
!5071 = !DILocation(line: 140, column: 13, scope: !5065)
!5072 = !DILocation(line: 0, scope: !5031)
!5073 = !DILocation(line: 145, column: 1, scope: !5023)
