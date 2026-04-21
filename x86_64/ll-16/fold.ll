; ModuleID = 'src/fold.bc'
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
@fold_file.line_out = internal global [262144 x i8] zeroinitializer, align 16, !dbg !401
@fold_file.line_in = internal global [262144 x i8] zeroinitializer, align 16, !dbg !458
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !460
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !462
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !464
@last_character_width = internal unnamed_addr global i32 0, align 4, !dbg !466
@.str.23 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !473
@Version = dso_local local_unnamed_addr global ptr @.str.23, align 8, !dbg !476
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !480
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !493
@.str.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !485
@.str.1.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !487
@.str.2.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !489
@.str.3.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !491
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !495
@stderr = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !501
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !533
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !503
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !619
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !633
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !671
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !678
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !635
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !680
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !623
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !640
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !642
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !644
@.str.13.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !646
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !648
@.str.85 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !684
@.str.1.86 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !687
@.str.2.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !689
@.str.3.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !691
@.str.4.89 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !693
@.str.5.90 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !695
@.str.6.91 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !700
@.str.7.92 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !705
@.str.8.93 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !707
@.str.9.94 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !712
@.str.10.95 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !717
@.str.11.96 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !722
@.str.12.97 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !725
@.str.13.98 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !727
@.str.14.99 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !732
@.str.15.100 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !737
@.str.16.101 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !742
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.106 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !744
@.str.18.107 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !746
@.str.19.108 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !748
@.str.20.109 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !750
@.str.21.110 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !752
@.str.22.111 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !754
@.str.23.112 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !756
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !761
@exit_failure = dso_local global i32 1, align 4, !dbg !769
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !775
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !778
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !780
@.str.128 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !782
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !785
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !788
@.str.1.142 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !803

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !900 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !904, metadata !DIExpression()), !dbg !905
  %2 = icmp eq i32 %0, 0, !dbg !906
  br i1 %2, label %8, label %3, !dbg !908

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !909, !tbaa !911
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !909
  %6 = load ptr, ptr @program_name, align 8, !dbg !909, !tbaa !911
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !909
  br label %41, !dbg !909

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !915
  %10 = load ptr, ptr @program_name, align 8, !dbg !915, !tbaa !911
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !915
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !917
  %13 = load ptr, ptr @stdout, align 8, !dbg !917, !tbaa !911
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !917
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !918
  %16 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !911
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !918
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !922
  %19 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !911
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !922
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !925
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !925
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !926
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !926
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !927
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !927
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !928
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !928
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !929
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !929
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !930
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !930
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !931, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !943, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr poison, metadata !943, metadata !DIExpression()), !dbg !948
  tail call void @emit_bug_reporting_address() #38, !dbg !950
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !951
  call void @llvm.dbg.value(metadata ptr %27, metadata !946, metadata !DIExpression()), !dbg !948
  %28 = icmp eq ptr %27, null, !dbg !952
  br i1 %28, label %36, label %29, !dbg !954

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #39, !dbg !955
  %31 = icmp eq i32 %30, 0, !dbg !955
  br i1 %31, label %36, label %32, !dbg !956

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !957
  %34 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !911
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !957
  br label %36, !dbg !959

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !943, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !948
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !960
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #38, !dbg !960
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #38, !dbg !961
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #38, !dbg !961
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !962
  unreachable, !dbg !962
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !963 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !967 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !973 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !976 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !180 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !184, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr %0, metadata !185, metadata !DIExpression()), !dbg !980
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !981, !tbaa !982
  %3 = icmp eq i32 %2, -1, !dbg !984
  br i1 %3, label %4, label %16, !dbg !985

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #38, !dbg !986
  call void @llvm.dbg.value(metadata ptr %5, metadata !186, metadata !DIExpression()), !dbg !987
  %6 = icmp eq ptr %5, null, !dbg !988
  br i1 %6, label %14, label %7, !dbg !989

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !990, !tbaa !991
  %9 = icmp eq i8 %8, 0, !dbg !990
  br i1 %9, label %14, label %10, !dbg !992

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !993, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !999, metadata !DIExpression()), !dbg !1000
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #39, !dbg !1002
  %12 = icmp eq i32 %11, 0, !dbg !1003
  %13 = zext i1 %12 to i32, !dbg !992
  br label %14, !dbg !992

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1004, !tbaa !982
  br label %16, !dbg !1005

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1006
  %18 = icmp eq i32 %17, 0, !dbg !1006
  br i1 %18, label %22, label %19, !dbg !1008

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1009, !tbaa !911
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1009
  br label %128, !dbg !1011

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !189, metadata !DIExpression()), !dbg !980
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #39, !dbg !1012
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1013
  call void @llvm.dbg.value(metadata ptr %24, metadata !190, metadata !DIExpression()), !dbg !980
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1014
  call void @llvm.dbg.value(metadata ptr %25, metadata !191, metadata !DIExpression()), !dbg !980
  %26 = icmp eq ptr %25, null, !dbg !1015
  br i1 %26, label %58, label %27, !dbg !1016

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1017
  br i1 %28, label %58, label %29, !dbg !1018

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !192, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !1019
  %30 = icmp ult ptr %24, %25, !dbg !1020
  br i1 %30, label %31, label %52, !dbg !1021

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !980
  %33 = load ptr, ptr %32, align 8, !tbaa !911
  br label %34, !dbg !1021

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !192, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %36, metadata !196, metadata !DIExpression()), !dbg !1019
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1022
  call void @llvm.dbg.value(metadata ptr %37, metadata !192, metadata !DIExpression()), !dbg !1019
  %38 = load i8, ptr %35, align 1, !dbg !1022, !tbaa !991
  %39 = sext i8 %38 to i64, !dbg !1022
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1022
  %41 = load i16, ptr %40, align 2, !dbg !1022, !tbaa !1023
  %42 = freeze i16 %41, !dbg !1025
  %43 = lshr i16 %42, 13, !dbg !1025
  %44 = and i16 %43, 1, !dbg !1025
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %46, metadata !196, metadata !DIExpression()), !dbg !1019
  %47 = icmp ult ptr %37, %25, !dbg !1020
  %48 = icmp ult i64 %46, 2, !dbg !1027
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1027
  br i1 %49, label %34, label %50, !dbg !1021, !llvm.loop !1028

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1030
  br i1 %51, label %52, label %54, !dbg !1032

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1032

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1032
  call void @llvm.dbg.value(metadata i8 %57, metadata !189, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr %56, metadata !191, metadata !DIExpression()), !dbg !980
  br label %58, !dbg !1033

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !980
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !980
  call void @llvm.dbg.value(metadata i8 %60, metadata !189, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr %59, metadata !191, metadata !DIExpression()), !dbg !980
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.22) #39, !dbg !1034
  call void @llvm.dbg.value(metadata i64 %61, metadata !197, metadata !DIExpression()), !dbg !980
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %62, metadata !198, metadata !DIExpression()), !dbg !980
  br label %63, !dbg !1036

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !980
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !980
  call void @llvm.dbg.value(metadata i8 %65, metadata !189, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr %64, metadata !198, metadata !DIExpression()), !dbg !980
  %66 = load i8, ptr %64, align 1, !dbg !1037, !tbaa !991
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1038

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1039
  %69 = load i8, ptr %68, align 1, !dbg !1042, !tbaa !991
  %70 = icmp eq i8 %69, 45, !dbg !1043
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1044
  br label %72, !dbg !1044

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !980
  call void @llvm.dbg.value(metadata i8 %73, metadata !189, metadata !DIExpression()), !dbg !980
  %74 = tail call ptr @__ctype_b_loc() #41, !dbg !1045
  %75 = load ptr, ptr %74, align 8, !dbg !1045, !tbaa !911
  %76 = sext i8 %66 to i64, !dbg !1045
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1045
  %78 = load i16, ptr %77, align 2, !dbg !1045, !tbaa !1023
  %79 = and i16 %78, 8192, !dbg !1045
  %80 = icmp eq i16 %79, 0, !dbg !1045
  br i1 %80, label %96, label %81, !dbg !1047

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1048
  br i1 %82, label %98, label %83, !dbg !1051

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1052
  %85 = load i8, ptr %84, align 1, !dbg !1052, !tbaa !991
  %86 = sext i8 %85 to i64, !dbg !1052
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1052
  %88 = load i16, ptr %87, align 2, !dbg !1052, !tbaa !1023
  %89 = and i16 %88, 8192, !dbg !1052
  %90 = icmp eq i16 %89, 0, !dbg !1052
  br i1 %90, label %91, label %98, !dbg !1053

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1054
  %93 = icmp ne i8 %92, 0, !dbg !1054
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1056
  br i1 %95, label %96, label %98, !dbg !1056

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1057
  call void @llvm.dbg.value(metadata ptr %97, metadata !198, metadata !DIExpression()), !dbg !980
  br label %63, !dbg !1036, !llvm.loop !1058

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1060
  %100 = load ptr, ptr @stdout, align 8, !dbg !1060, !tbaa !911
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1060
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !993, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !255, metadata !DIExpression()), !dbg !980
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #39, !dbg !1081
  %103 = icmp eq i32 %102, 0, !dbg !1081
  br i1 %103, label %107, label %104, !dbg !1083

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #39, !dbg !1084
  %106 = icmp eq i32 %105, 0, !dbg !1084
  br i1 %106, label %107, label %110, !dbg !1085

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1086
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #38, !dbg !1086
  br label %113, !dbg !1088

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1089
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #38, !dbg !1089
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1091, !tbaa !911
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %114), !dbg !1091
  %116 = load ptr, ptr @stdout, align 8, !dbg !1092, !tbaa !911
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %116), !dbg !1092
  %118 = ptrtoint ptr %64 to i64, !dbg !1093
  %119 = sub i64 %118, %99, !dbg !1093
  %120 = load ptr, ptr @stdout, align 8, !dbg !1093, !tbaa !911
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1093
  %122 = load ptr, ptr @stdout, align 8, !dbg !1094, !tbaa !911
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %122), !dbg !1094
  %124 = load ptr, ptr @stdout, align 8, !dbg !1095, !tbaa !911
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %124), !dbg !1095
  %126 = load ptr, ptr @stdout, align 8, !dbg !1096, !tbaa !911
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1096
  br label %128, !dbg !1097

128:                                              ; preds = %113, %19
  ret void, !dbg !1097
}

; Function Attrs: nounwind
declare !dbg !1098 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1102 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1106 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1108 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1111 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1114 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1117 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1120 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1126 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1127 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1133 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1138, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata ptr %1, metadata !1139, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 80, metadata !1140, metadata !DIExpression()), !dbg !1149
  %4 = load ptr, ptr %1, align 8, !dbg !1150, !tbaa !911
  tail call void @set_program_name(ptr noundef %4) #38, !dbg !1151
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #38, !dbg !1152
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #38, !dbg !1153
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #38, !dbg !1154
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1155
  call void @llvm.dbg.value(metadata i64 80, metadata !1140, metadata !DIExpression()), !dbg !1149
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %9, metadata !1141, metadata !DIExpression()), !dbg !1149
  %10 = icmp eq i32 %9, -1, !dbg !1157
  br i1 %10, label %42, label %11, !dbg !1158

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  br label %13, !dbg !1158

13:                                               ; preds = %11, %38
  %14 = phi i32 [ %9, %11 ], [ %40, %38 ]
  %15 = phi i64 [ 80, %11 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !1140, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #38, !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1143, metadata !DIExpression()), !dbg !1160
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
  ], !dbg !1161

16:                                               ; preds = %13
  %17 = load ptr, ptr @optarg, align 8, !dbg !1162, !tbaa !911
  br label %28, !dbg !1161

18:                                               ; preds = %13
  store i32 1, ptr @counting_mode, align 4, !dbg !1164, !tbaa !991
  br label %38, !dbg !1165

19:                                               ; preds = %13
  store i32 2, ptr @counting_mode, align 4, !dbg !1166, !tbaa !991
  br label %38, !dbg !1167

20:                                               ; preds = %13
  store i1 true, ptr @break_spaces, align 1, !dbg !1168
  br label %38, !dbg !1169

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %22 = load ptr, ptr @optarg, align 8, !dbg !1170, !tbaa !911
  %23 = icmp eq ptr %22, null, !dbg !1170
  br i1 %23, label %26, label %24, !dbg !1172

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %22, i64 -1, !dbg !1173
  store ptr %25, ptr @optarg, align 8, !dbg !1173, !tbaa !911
  br label %28, !dbg !1174

26:                                               ; preds = %21
  %27 = trunc i32 %14 to i8, !dbg !1175
  store i8 %27, ptr %3, align 1, !dbg !1177, !tbaa !991
  store i8 0, ptr %12, align 1, !dbg !1178, !tbaa !991
  store ptr %3, ptr @optarg, align 8, !dbg !1179, !tbaa !911
  br label %28

28:                                               ; preds = %16, %24, %26
  %29 = phi ptr [ %17, %16 ], [ %25, %24 ], [ %3, %26 ], !dbg !1162
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #38, !dbg !1180
  %31 = call i64 @xnumtoumax(ptr noundef %29, i32 noundef 10, i64 noundef 1, i64 noundef -10, ptr noundef nonnull @.str.10, ptr noundef %30, i32 noundef 0, i32 noundef 12) #38, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %31, metadata !1140, metadata !DIExpression()), !dbg !1149
  br label %38, !dbg !1182

32:                                               ; preds = %13
  call void @usage(i32 noundef 0) #42, !dbg !1183
  unreachable, !dbg !1183

33:                                               ; preds = %13
  %34 = load ptr, ptr @stdout, align 8, !dbg !1184, !tbaa !911
  %35 = load ptr, ptr @Version, align 8, !dbg !1184, !tbaa !911
  %36 = call ptr @proper_name_lite(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #38, !dbg !1184
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef %35, ptr noundef %36, ptr noundef null) #38, !dbg !1184
  call void @exit(i32 noundef 0) #40, !dbg !1184
  unreachable, !dbg !1184

37:                                               ; preds = %13
  call void @usage(i32 noundef 1) #42, !dbg !1185
  unreachable, !dbg !1185

38:                                               ; preds = %28, %20, %19, %18
  %39 = phi i64 [ %31, %28 ], [ %15, %20 ], [ %15, %19 ], [ %15, %18 ], !dbg !1149
  call void @llvm.dbg.value(metadata i64 %39, metadata !1140, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #38, !dbg !1186
  %40 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %40, metadata !1141, metadata !DIExpression()), !dbg !1149
  %41 = icmp eq i32 %40, -1, !dbg !1157
  br i1 %41, label %42, label %13, !dbg !1158, !llvm.loop !1187

42:                                               ; preds = %38, %2
  %43 = phi i64 [ 80, %2 ], [ %39, %38 ], !dbg !1149
  %44 = load i32, ptr @optind, align 4, !dbg !1188, !tbaa !982
  %45 = icmp eq i32 %44, %0, !dbg !1189
  br i1 %45, label %50, label %46, !dbg !1190

46:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %44, metadata !1145, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 1, metadata !1142, metadata !DIExpression()), !dbg !1149
  %47 = icmp slt i32 %44, %0, !dbg !1192
  br i1 %47, label %48, label %62, !dbg !1194

48:                                               ; preds = %46
  %49 = sext i32 %44 to i64, !dbg !1194
  br label %52, !dbg !1194

50:                                               ; preds = %42
  %51 = call fastcc zeroext i1 @fold_file(ptr noundef nonnull @.str.16, i64 noundef %43), !dbg !1195
  call void @llvm.dbg.value(metadata i1 %51, metadata !1142, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1149
  br label %62, !dbg !1196

52:                                               ; preds = %48, %52
  %53 = phi i64 [ %49, %48 ], [ %59, %52 ]
  %54 = phi i1 [ true, %48 ], [ %58, %52 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !1145, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 poison, metadata !1142, metadata !DIExpression()), !dbg !1149
  %55 = getelementptr inbounds ptr, ptr %1, i64 %53, !dbg !1197
  %56 = load ptr, ptr %55, align 8, !dbg !1197, !tbaa !911
  %57 = call fastcc zeroext i1 @fold_file(ptr noundef %56, i64 noundef %43), !dbg !1198
  %58 = and i1 %54, %57, !dbg !1199
  call void @llvm.dbg.value(metadata i1 %58, metadata !1142, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1149
  %59 = add nsw i64 %53, 1, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %59, metadata !1145, metadata !DIExpression()), !dbg !1191
  %60 = trunc i64 %59 to i32, !dbg !1192
  %61 = icmp eq i32 %60, %0, !dbg !1192
  br i1 %61, label %62, label %52, !dbg !1194, !llvm.loop !1201

62:                                               ; preds = %52, %46, %50
  %63 = phi i1 [ %51, %50 ], [ true, %46 ], [ %58, %52 ]
  call void @llvm.dbg.value(metadata i1 %63, metadata !1142, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1149
  %64 = load i1, ptr @have_read_stdin, align 1, !dbg !1203
  br i1 %64, label %65, label %72, !dbg !1205

65:                                               ; preds = %62
  %66 = load ptr, ptr @stdin, align 8, !dbg !1206, !tbaa !911
  %67 = call i32 @rpl_fclose(ptr noundef %66) #38, !dbg !1207
  %68 = icmp eq i32 %67, -1, !dbg !1208
  br i1 %68, label %69, label %72, !dbg !1209

69:                                               ; preds = %65
  %70 = tail call ptr @__errno_location() #41, !dbg !1210
  %71 = load i32, ptr %70, align 4, !dbg !1210, !tbaa !982
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %71, ptr noundef nonnull @.str.16) #38, !dbg !1210
  unreachable, !dbg !1210

72:                                               ; preds = %65, %62
  call void @llvm.dbg.value(metadata i1 %63, metadata !1142, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1149
  %73 = xor i1 %63, true, !dbg !1211
  %74 = zext i1 %73 to i32, !dbg !1211
  ret i32 %74, !dbg !1212
}

; Function Attrs: nounwind
declare !dbg !1213 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1216 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1217 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1220 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @fold_file(ptr noundef %0, i64 noundef %1) unnamed_addr #10 !dbg !403 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__mbstate_t, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.__mbstate_t, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !407, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %1, metadata !408, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr %0, metadata !993, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !999, metadata !DIExpression()), !dbg !1227
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.16) #39, !dbg !1230
  %10 = icmp eq i32 %9, 0, !dbg !1231
  br i1 %10, label %11, label %13, !dbg !1232

11:                                               ; preds = %2
  %12 = load ptr, ptr @stdin, align 8, !dbg !1233, !tbaa !911
  call void @llvm.dbg.value(metadata ptr %12, metadata !409, metadata !DIExpression()), !dbg !1226
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1235
  br label %15, !dbg !1236

13:                                               ; preds = %2
  %14 = tail call noalias ptr @rpl_fopen(ptr noundef %0, ptr noundef nonnull @.str.60) #38, !dbg !1237
  call void @llvm.dbg.value(metadata ptr %14, metadata !409, metadata !DIExpression()), !dbg !1226
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ], !dbg !1238
  call void @llvm.dbg.value(metadata ptr %16, metadata !409, metadata !DIExpression()), !dbg !1226
  %17 = icmp eq ptr %16, null, !dbg !1239
  br i1 %17, label %18, label %22, !dbg !1241

18:                                               ; preds = %15
  %19 = tail call ptr @__errno_location() #41, !dbg !1242
  %20 = load i32, ptr %19, align 4, !dbg !1242, !tbaa !982
  %21 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #38, !dbg !1242
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.61, ptr noundef %21) #38, !dbg !1242
  br label %290, !dbg !1244

22:                                               ; preds = %15
  tail call void @fadvise(ptr noundef nonnull %16, i32 noundef 2) #38, !dbg !1245
  call void @llvm.dbg.value(metadata ptr @fold_file.line_in, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata ptr %16, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 262144, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1226
  br label %23, !dbg !1246

23:                                               ; preds = %97, %22
  %24 = phi i64 [ 0, %22 ], [ %92, %97 ], !dbg !1226
  %25 = phi i64 [ 0, %22 ], [ %52, %97 ], !dbg !1226
  %26 = phi i64 [ 0, %22 ], [ %98, %97 ], !dbg !1226
  %27 = phi i64 [ 0, %22 ], [ %99, %97 ], !dbg !1226
  call void @llvm.dbg.value(metadata i64 %25, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %24, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %27, metadata !410, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %26, metadata !411, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr undef, metadata !1247, metadata !DIExpression()), !dbg !1258
  %28 = sub nsw i64 %25, %24, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %28, metadata !1253, metadata !DIExpression()), !dbg !1258
  %29 = icmp slt i64 %28, 4, !dbg !1261
  br i1 %29, label %30, label %50, !dbg !1262

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %16, metadata !1263, metadata !DIExpression()), !dbg !1269
  %31 = load i32, ptr %16, align 8, !dbg !1271, !tbaa !1272
  %32 = and i32 %31, 16, !dbg !1275
  %33 = icmp eq i32 %32, 0, !dbg !1275
  br i1 %33, label %34, label %45, !dbg !1276

34:                                               ; preds = %30
  %35 = icmp sgt i64 %28, 0, !dbg !1277
  br i1 %35, label %36, label %39, !dbg !1279

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %24, !dbg !1280
  call void @llvm.dbg.value(metadata ptr @fold_file.line_in, metadata !1282, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %37, metadata !1288, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64 %28, metadata !1289, metadata !DIExpression()), !dbg !1290
  %38 = call ptr @__memmove_chk(ptr noundef nonnull @fold_file.line_in, ptr noundef nonnull %37, i64 noundef %28, i64 noundef 262144) #38, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %28, metadata !1254, metadata !DIExpression()), !dbg !1293
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i64 [ %28, %36 ], [ 0, %34 ], !dbg !1294
  call void @llvm.dbg.value(metadata i64 %40, metadata !1254, metadata !DIExpression()), !dbg !1293
  %41 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %40, !dbg !1295
  %42 = sub nuw nsw i64 262144, %40, !dbg !1295
  %43 = call i64 @fread_unlocked(ptr noundef nonnull %41, i64 noundef 1, i64 noundef %42, ptr noundef nonnull %16), !dbg !1295
  %44 = add i64 %43, %40, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %44, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %44, metadata !1253, metadata !DIExpression()), !dbg !1258
  br label %45, !dbg !1297

45:                                               ; preds = %39, %30
  %46 = phi i64 [ 0, %39 ], [ %24, %30 ], !dbg !1226
  %47 = phi i64 [ %44, %39 ], [ %25, %30 ], !dbg !1226
  %48 = phi i64 [ %44, %39 ], [ %28, %30 ], !dbg !1258
  call void @llvm.dbg.value(metadata i64 %47, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %46, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %48, metadata !1253, metadata !DIExpression()), !dbg !1258
  %49 = icmp slt i64 %48, 1, !dbg !1298
  br i1 %49, label %265, label %50, !dbg !1300

50:                                               ; preds = %45, %23
  %51 = phi i64 [ %46, %45 ], [ %24, %23 ], !dbg !1226
  %52 = phi i64 [ %47, %45 ], [ %25, %23 ], !dbg !1226
  call void @llvm.dbg.value(metadata i64 %52, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %51, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1226
  %53 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %51, !dbg !1301
  call void @llvm.dbg.value(metadata ptr %53, metadata !1302, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1322
  %54 = load i8, ptr %53, align 1, !dbg !1324, !tbaa !991
  call void @llvm.dbg.value(metadata i8 %54, metadata !1308, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8 %54, metadata !1325, metadata !DIExpression()), !dbg !1330
  %55 = icmp sgt i8 %54, -1, !dbg !1333
  br i1 %55, label %56, label %59, !dbg !1334

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 1, metadata !1335, metadata !DIExpression()), !dbg !1341
  %57 = zext i8 %54 to i64, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %57, metadata !1340, metadata !DIExpression()), !dbg !1341
  %58 = or i64 %57, 1099511627776, !dbg !1343
  br label %80, !dbg !1344

59:                                               ; preds = %50
  call void @llvm.dbg.value(metadata !DIArgList(ptr @fold_file.line_in, i64 %52), metadata !1307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1322
  %60 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %52, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %60, metadata !1307, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #38, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1309, metadata !DIExpression()), !dbg !1347
  store i32 0, ptr %7, align 4, !dbg !1348, !tbaa !1349
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #38, !dbg !1351
  %61 = ptrtoint ptr %60 to i64, !dbg !1352
  %62 = ptrtoint ptr %53 to i64, !dbg !1352
  %63 = sub i64 %61, %62, !dbg !1352
  call void @llvm.dbg.value(metadata ptr %8, metadata !1320, metadata !DIExpression(DW_OP_deref)), !dbg !1322
  %64 = call i64 @mbrtoc32(ptr noundef nonnull %8, ptr noundef nonnull %53, i64 noundef %63, ptr noundef nonnull %7) #38, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %64, metadata !1321, metadata !DIExpression()), !dbg !1322
  %65 = icmp slt i64 %64, 0, !dbg !1354
  br i1 %65, label %66, label %70, !dbg !1356, !prof !1357

66:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i8 %54, metadata !1358, metadata !DIExpression()), !dbg !1363
  %67 = zext i8 %54 to i64, !dbg !1365
  %68 = shl nuw nsw i64 %67, 32, !dbg !1365
  %69 = or i64 %68, 1099511627776, !dbg !1365
  br label %78, !dbg !1366

70:                                               ; preds = %59
  %71 = load i32, ptr %8, align 4, !dbg !1367, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %71, metadata !1320, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %71, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %64, metadata !1335, metadata !DIExpression()), !dbg !1368
  %72 = icmp ne i64 %64, 0, !dbg !1370
  call void @llvm.assume(i1 %72), !dbg !1370
  %73 = icmp ult i64 %64, 5, !dbg !1371
  call void @llvm.assume(i1 %73), !dbg !1371
  %74 = icmp ult i32 %71, 1114112, !dbg !1372
  call void @llvm.assume(i1 %74), !dbg !1372
  %75 = shl nuw nsw i64 %64, 40, !dbg !1373
  %76 = zext i32 %71 to i64, !dbg !1373
  %77 = or i64 %75, %76, !dbg !1373
  br label %78, !dbg !1374

78:                                               ; preds = %70, %66
  %79 = phi i64 [ %69, %66 ], [ %77, %70 ], !dbg !1322
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #38, !dbg !1375
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #38, !dbg !1375
  br label %80

80:                                               ; preds = %78, %56
  %81 = phi i64 [ %58, %56 ], [ %79, %78 ], !dbg !1322
  call void @llvm.dbg.value(metadata i64 %81, metadata !1257, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %81, metadata !1257, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %81, metadata !1257, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %81, metadata !1257, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1258
  %82 = and i64 %81, 1095216660480, !dbg !1376
  %83 = icmp eq i64 %82, 0, !dbg !1376
  br i1 %83, label %84, label %86, !dbg !1378

84:                                               ; preds = %80
  %85 = lshr i64 %81, 40, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %85, metadata !1257, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %81, metadata !1257, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1258
  call void @llvm.dbg.value(metadata !DIArgList(i64 %51, i64 %85), metadata !415, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1226
  br label %89, !dbg !1380

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 %51, metadata !415, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1226
  %87 = load i8, ptr %53, align 1, !dbg !1381, !tbaa !991
  %88 = zext i8 %87 to i64, !dbg !1383
  call void @llvm.dbg.value(metadata i8 %87, metadata !1257, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1258
  br label %89

89:                                               ; preds = %84, %86
  %90 = phi i64 [ %85, %84 ], [ 1, %86 ]
  %91 = phi i64 [ %81, %84 ], [ %88, %86 ], !dbg !1258
  %92 = add nsw i64 %90, %51, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %92, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i32 poison, metadata !1257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %52, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %92, metadata !415, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1226
  call void @llvm.dbg.value(metadata i16 poison, metadata !1257, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1258
  call void @llvm.dbg.value(metadata i32 poison, metadata !1257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1258
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1258
  call void @llvm.dbg.value(metadata i8 poison, metadata !1257, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1258
  %93 = trunc i64 %91 to i32, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %93, metadata !426, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1226
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %81, metadata !426, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1226
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1226
  switch i32 %93, label %94 [
    i32 -1, label %265
    i32 10, label %96
  ], !dbg !1246

94:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i64 %81, metadata !426, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1226
  %95 = lshr i64 %81, 40, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %95, metadata !426, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1226
  br label %100, !dbg !1386

96:                                               ; preds = %89
  call fastcc void @write_out(i64 noundef %26, i1 noundef zeroext true), !dbg !1403
  call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1226
  br label %97, !dbg !1406

97:                                               ; preds = %96, %247, %258
  %98 = phi i64 [ 0, %96 ], [ %95, %247 ], [ %264, %258 ]
  %99 = phi i64 [ 0, %96 ], [ %128, %247 ], [ %254, %258 ]
  br label %23, !dbg !1226, !llvm.loop !1407

100:                                              ; preds = %185, %94
  %101 = phi i64 [ %26, %94 ], [ %186, %185 ], !dbg !1226
  %102 = phi i64 [ %27, %94 ], [ %187, %185 ], !dbg !1226
  call void @llvm.dbg.value(metadata i64 %102, metadata !410, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %101, metadata !411, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.label(metadata !454), !dbg !1409
  call void @llvm.dbg.value(metadata i32 %93, metadata !1392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1410
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1392, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1410
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1392, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1410
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1392, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %102, metadata !1391, metadata !DIExpression()), !dbg !1410
  %103 = load i32, ptr @counting_mode, align 4, !dbg !1411, !tbaa !991
  %104 = icmp eq i32 %103, 1, !dbg !1412
  br i1 %104, label %125, label %105, !dbg !1386

105:                                              ; preds = %100
  switch i32 %93, label %115 [
    i32 8, label %106
    i32 13, label %253
    i32 9, label %112
  ], !dbg !1413

106:                                              ; preds = %105
  %107 = icmp eq i64 %102, 0, !dbg !1414
  br i1 %107, label %253, label %108, !dbg !1417

108:                                              ; preds = %106
  %109 = load i32, ptr @last_character_width, align 4, !dbg !1418, !tbaa !982
  %110 = sext i32 %109 to i64, !dbg !1418
  %111 = sub i64 %102, %110, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %111, metadata !1391, metadata !DIExpression()), !dbg !1410
  br label %127, !dbg !1420

112:                                              ; preds = %105
  %113 = and i64 %102, -8, !dbg !1421
  %114 = add i64 %113, 8, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %114, metadata !1391, metadata !DIExpression()), !dbg !1410
  br label %127, !dbg !1422

115:                                              ; preds = %105
  %116 = icmp eq i32 %103, 2, !dbg !1423
  br i1 %116, label %121, label %117, !dbg !1424

117:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %93, metadata !1425, metadata !DIExpression()), !dbg !1431
  %118 = call i32 @wcwidth(i32 noundef %93) #38, !dbg !1433
  call void @llvm.dbg.value(metadata i32 %118, metadata !1393, metadata !DIExpression()), !dbg !1434
  %119 = icmp slt i32 %118, 0, !dbg !1435
  %120 = select i1 %119, i32 1, i32 %118, !dbg !1436
  br label %121

121:                                              ; preds = %117, %115
  %122 = phi i32 [ %120, %117 ], [ 1, %115 ], !dbg !1437
  store i32 %122, ptr @last_character_width, align 4, !dbg !1437, !tbaa !982
  %123 = zext i32 %122 to i64, !dbg !1438
  %124 = add i64 %102, %123, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %124, metadata !1391, metadata !DIExpression()), !dbg !1410
  br label %127

125:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i64 %81, metadata !1392, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1410
  %126 = add i64 %102, %95, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %126, metadata !1391, metadata !DIExpression()), !dbg !1410
  br label %127

127:                                              ; preds = %108, %112, %121, %125
  %128 = phi i64 [ %111, %108 ], [ %114, %112 ], [ %124, %121 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !1391, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %128, metadata !410, metadata !DIExpression()), !dbg !1226
  %129 = icmp ugt i64 %128, %1, !dbg !1441
  br i1 %129, label %130, label %253, !dbg !1442

130:                                              ; preds = %127
  %131 = load i1, ptr @break_spaces, align 1, !dbg !1443
  br i1 %131, label %132, label %245, !dbg !1444

132:                                              ; preds = %130
  call void @llvm.dbg.value(metadata i32 0, metadata !437, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %101, metadata !443, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !444, metadata !DIExpression()), !dbg !1445
  %133 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %101, !dbg !1446
  call void @llvm.dbg.value(metadata ptr %133, metadata !445, metadata !DIExpression()), !dbg !1445
  %134 = icmp sgt i64 %101, 0, !dbg !1447
  br i1 %134, label %135, label %245, !dbg !1449

135:                                              ; preds = %132
  %136 = ptrtoint ptr %133 to i64
  br label %139, !dbg !1449

137:                                              ; preds = %164
  %138 = icmp eq i32 %174, 0, !dbg !1450
  br i1 %138, label %245, label %177, !dbg !1451

139:                                              ; preds = %135, %164
  %140 = phi i32 [ 0, %135 ], [ %174, %164 ]
  %141 = phi i64 [ %101, %135 ], [ %173, %164 ]
  %142 = phi ptr [ @fold_file.line_out, %135 ], [ %175, %164 ]
  call void @llvm.dbg.value(metadata i32 %140, metadata !437, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %141, metadata !443, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata ptr %142, metadata !444, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata ptr %142, metadata !1302, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata ptr %133, metadata !1307, metadata !DIExpression()), !dbg !1452
  %143 = load i8, ptr %142, align 1, !dbg !1455, !tbaa !991
  call void @llvm.dbg.value(metadata i8 %143, metadata !1308, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %143, metadata !1325, metadata !DIExpression()), !dbg !1456
  %144 = icmp sgt i8 %143, -1, !dbg !1458
  br i1 %144, label %145, label %149, !dbg !1459

145:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 1, metadata !1335, metadata !DIExpression()), !dbg !1460
  %146 = zext i8 %143 to i64, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %146, metadata !1340, metadata !DIExpression()), !dbg !1460
  %147 = or i64 %146, 1099511627776, !dbg !1462
  %148 = ptrtoint ptr %142 to i64, !dbg !1463
  br label %164, !dbg !1464

149:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !1465
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1309, metadata !DIExpression()), !dbg !1466
  store i32 0, ptr %5, align 4, !dbg !1467, !tbaa !1349
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #38, !dbg !1468
  %150 = ptrtoint ptr %142 to i64, !dbg !1469
  %151 = sub i64 %136, %150, !dbg !1469
  call void @llvm.dbg.value(metadata ptr %6, metadata !1320, metadata !DIExpression(DW_OP_deref)), !dbg !1452
  %152 = call i64 @mbrtoc32(ptr noundef nonnull %6, ptr noundef nonnull %142, i64 noundef %151, ptr noundef nonnull %5) #38, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %152, metadata !1321, metadata !DIExpression()), !dbg !1452
  %153 = icmp slt i64 %152, 0, !dbg !1471
  br i1 %153, label %162, label %154, !dbg !1472, !prof !1357

154:                                              ; preds = %149
  %155 = load i32, ptr %6, align 4, !dbg !1473, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %155, metadata !1320, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 %155, metadata !1340, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i64 %152, metadata !1335, metadata !DIExpression()), !dbg !1474
  %156 = icmp ne i64 %152, 0, !dbg !1476
  call void @llvm.assume(i1 %156), !dbg !1476
  %157 = icmp ult i64 %152, 5, !dbg !1477
  call void @llvm.assume(i1 %157), !dbg !1477
  %158 = icmp ult i32 %155, 1114112, !dbg !1478
  call void @llvm.assume(i1 %158), !dbg !1478
  %159 = shl nuw nsw i64 %152, 40, !dbg !1479
  %160 = zext i32 %155 to i64, !dbg !1479
  %161 = or i64 %159, %160, !dbg !1479
  br label %162, !dbg !1480

162:                                              ; preds = %149, %154
  %163 = phi i64 [ %161, %154 ], [ 1099511627776, %149 ], !dbg !1452
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #38, !dbg !1481
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1481
  br label %164

164:                                              ; preds = %145, %162
  %165 = phi i64 [ %148, %145 ], [ %150, %162 ], !dbg !1463
  %166 = phi i64 [ %147, %145 ], [ %163, %162 ], !dbg !1452
  %167 = trunc i64 %166 to i32, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %167, metadata !446, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %166, metadata !446, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1483
  %168 = lshr i64 %166, 40, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %168, metadata !446, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %166, metadata !446, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %167, metadata !1484, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %167, metadata !1492, metadata !DIExpression()), !dbg !1499
  %169 = call i32 @iswblank(i32 noundef %167) #38, !dbg !1501
  %170 = icmp eq i32 %169, 0, !dbg !1502
  %171 = trunc i64 %168 to i32, !dbg !1463
  %172 = sub i64 %165, ptrtoint (ptr @fold_file.line_out to i64), !dbg !1463
  %173 = select i1 %170, i64 %141, i64 %172, !dbg !1463
  %174 = select i1 %170, i32 %140, i32 %171, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %174, metadata !437, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 %173, metadata !443, metadata !DIExpression()), !dbg !1445
  %175 = getelementptr inbounds i8, ptr %142, i64 %168, !dbg !1503
  call void @llvm.dbg.value(metadata ptr %175, metadata !444, metadata !DIExpression()), !dbg !1445
  %176 = icmp ult ptr %175, %133, !dbg !1447
  br i1 %176, label %139, label %137, !dbg !1449, !llvm.loop !1504

177:                                              ; preds = %137
  %178 = zext i32 %174 to i64
  %179 = add nsw i64 %173, %178, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %179, metadata !443, metadata !DIExpression()), !dbg !1445
  call fastcc void @write_out(i64 noundef %179, i1 noundef zeroext true), !dbg !1507
  %180 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %179, !dbg !1508
  %181 = sub nsw i64 %101, %179, !dbg !1509
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1282, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr %180, metadata !1288, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i64 %181, metadata !1289, metadata !DIExpression()), !dbg !1510
  %182 = call ptr @__memmove_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %180, i64 noundef %181, i64 noundef 262144) #38, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %181, metadata !411, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !448, metadata !DIExpression()), !dbg !1513
  %183 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %181, !dbg !1514
  call void @llvm.dbg.value(metadata ptr %183, metadata !451, metadata !DIExpression()), !dbg !1513
  %184 = icmp sgt i64 %181, 0, !dbg !1515
  br i1 %184, label %188, label %185, !dbg !1517

185:                                              ; preds = %241, %177, %252
  %186 = phi i64 [ 0, %252 ], [ %181, %177 ], [ %181, %241 ]
  %187 = phi i64 [ 0, %252 ], [ 0, %177 ], [ %242, %241 ]
  br label %100, !dbg !1226

188:                                              ; preds = %177
  %189 = ptrtoint ptr %183 to i64
  br label %190, !dbg !1517

190:                                              ; preds = %188, %241
  %191 = phi i64 [ 0, %188 ], [ %242, %241 ]
  %192 = phi ptr [ @fold_file.line_out, %188 ], [ %243, %241 ]
  call void @llvm.dbg.value(metadata i64 %191, metadata !410, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr %192, metadata !448, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata ptr %192, metadata !1302, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata ptr %183, metadata !1307, metadata !DIExpression()), !dbg !1518
  %193 = load i8, ptr %192, align 1, !dbg !1521, !tbaa !991
  call void @llvm.dbg.value(metadata i8 %193, metadata !1308, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 %193, metadata !1325, metadata !DIExpression()), !dbg !1522
  %194 = icmp sgt i8 %193, -1, !dbg !1524
  br i1 %194, label %195, label %198, !dbg !1525

195:                                              ; preds = %190
  call void @llvm.dbg.value(metadata i64 1, metadata !1335, metadata !DIExpression()), !dbg !1526
  %196 = zext i8 %193 to i64, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %196, metadata !1340, metadata !DIExpression()), !dbg !1526
  %197 = or i64 %196, 1099511627776, !dbg !1528
  br label %213, !dbg !1529

198:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1530
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1309, metadata !DIExpression()), !dbg !1531
  store i32 0, ptr %3, align 4, !dbg !1532, !tbaa !1349
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1533
  %199 = ptrtoint ptr %192 to i64, !dbg !1534
  %200 = sub i64 %189, %199, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %4, metadata !1320, metadata !DIExpression(DW_OP_deref)), !dbg !1518
  %201 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %192, i64 noundef %200, ptr noundef nonnull %3) #38, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %201, metadata !1321, metadata !DIExpression()), !dbg !1518
  %202 = icmp slt i64 %201, 0, !dbg !1536
  br i1 %202, label %211, label %203, !dbg !1537, !prof !1357

203:                                              ; preds = %198
  %204 = load i32, ptr %4, align 4, !dbg !1538, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %204, metadata !1320, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i32 %204, metadata !1340, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %201, metadata !1335, metadata !DIExpression()), !dbg !1539
  %205 = icmp ne i64 %201, 0, !dbg !1541
  call void @llvm.assume(i1 %205), !dbg !1541
  %206 = icmp ult i64 %201, 5, !dbg !1542
  call void @llvm.assume(i1 %206), !dbg !1542
  %207 = icmp ult i32 %204, 1114112, !dbg !1543
  call void @llvm.assume(i1 %207), !dbg !1543
  %208 = shl nuw nsw i64 %201, 40, !dbg !1544
  %209 = zext i32 %204 to i64, !dbg !1544
  %210 = or i64 %208, %209, !dbg !1544
  br label %211, !dbg !1545

211:                                              ; preds = %198, %203
  %212 = phi i64 [ %210, %203 ], [ 1099511627776, %198 ], !dbg !1518
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1546
  br label %213

213:                                              ; preds = %195, %211
  %214 = phi i64 [ %197, %195 ], [ %212, %211 ], !dbg !1518
  call void @llvm.dbg.value(metadata i64 %214, metadata !452, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1547
  %215 = lshr i64 %214, 40, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %215, metadata !452, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %214, metadata !452, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1547
  %216 = trunc i64 %214 to i32
  call void @llvm.dbg.value(metadata i32 %216, metadata !1392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %214, metadata !1392, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %214, metadata !1392, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %214, metadata !1392, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %191, metadata !1391, metadata !DIExpression()), !dbg !1549
  %217 = load i32, ptr @counting_mode, align 4, !dbg !1551, !tbaa !991
  %218 = icmp eq i32 %217, 1, !dbg !1552
  br i1 %218, label %239, label %219, !dbg !1553

219:                                              ; preds = %213
  switch i32 %216, label %229 [
    i32 8, label %220
    i32 13, label %241
    i32 9, label %226
  ], !dbg !1554

220:                                              ; preds = %219
  %221 = icmp eq i64 %191, 0, !dbg !1555
  br i1 %221, label %241, label %222, !dbg !1556

222:                                              ; preds = %220
  %223 = load i32, ptr @last_character_width, align 4, !dbg !1557, !tbaa !982
  %224 = sext i32 %223 to i64, !dbg !1557
  %225 = sub i64 %191, %224, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %225, metadata !1391, metadata !DIExpression()), !dbg !1549
  br label %241, !dbg !1559

226:                                              ; preds = %219
  %227 = and i64 %191, -8, !dbg !1560
  %228 = add i64 %227, 8, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %228, metadata !1391, metadata !DIExpression()), !dbg !1549
  br label %241, !dbg !1561

229:                                              ; preds = %219
  %230 = icmp eq i32 %217, 2, !dbg !1562
  br i1 %230, label %235, label %231, !dbg !1563

231:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i32 %216, metadata !1425, metadata !DIExpression()), !dbg !1564
  %232 = call i32 @wcwidth(i32 noundef %216) #38, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %232, metadata !1393, metadata !DIExpression()), !dbg !1567
  %233 = icmp slt i32 %232, 0, !dbg !1568
  %234 = select i1 %233, i32 1, i32 %232, !dbg !1569
  br label %235

235:                                              ; preds = %231, %229
  %236 = phi i32 [ %234, %231 ], [ 1, %229 ], !dbg !1570
  store i32 %236, ptr @last_character_width, align 4, !dbg !1570, !tbaa !982
  %237 = zext i32 %236 to i64, !dbg !1571
  %238 = add i64 %191, %237, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %238, metadata !1391, metadata !DIExpression()), !dbg !1549
  br label %241

239:                                              ; preds = %213
  call void @llvm.dbg.value(metadata i64 %215, metadata !1392, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1549
  %240 = add i64 %215, %191, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %240, metadata !1391, metadata !DIExpression()), !dbg !1549
  br label %241

241:                                              ; preds = %219, %220, %222, %226, %235, %239
  %242 = phi i64 [ %225, %222 ], [ 0, %220 ], [ %228, %226 ], [ %238, %235 ], [ %240, %239 ], [ 0, %219 ]
  call void @llvm.dbg.value(metadata i64 %242, metadata !1391, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %242, metadata !410, metadata !DIExpression()), !dbg !1226
  %243 = getelementptr inbounds i8, ptr %192, i64 %215, !dbg !1574
  call void @llvm.dbg.value(metadata ptr %243, metadata !448, metadata !DIExpression()), !dbg !1513
  %244 = icmp ult ptr %243, %183, !dbg !1515
  br i1 %244, label %190, label %185, !dbg !1517, !llvm.loop !1575

245:                                              ; preds = %132, %137, %130
  call void @llvm.dbg.value(metadata i64 %128, metadata !410, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %101, metadata !411, metadata !DIExpression()), !dbg !1226
  %246 = icmp eq i64 %101, 0, !dbg !1577
  br i1 %246, label %247, label %252, !dbg !1579

247:                                              ; preds = %245
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1580, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %81, metadata !1580, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1586
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1580, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1586
  call void @llvm.dbg.value(metadata ptr undef, metadata !1585, metadata !DIExpression()), !dbg !1586
  %248 = icmp sge i64 %92, %95, !dbg !1589
  call void @llvm.assume(i1 %248), !dbg !1591
  %249 = sub nsw i64 %92, %95, !dbg !1592
  %250 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %249, !dbg !1593
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1594, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata ptr %250, metadata !1600, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %95, metadata !1601, metadata !DIExpression()), !dbg !1602
  %251 = call ptr @__memcpy_chk(ptr noundef nonnull @fold_file.line_out, ptr noundef nonnull %250, i64 noundef %95, i64 noundef 262144) #38, !dbg !1604, !alias.scope !1605
  call void @llvm.dbg.value(metadata i64 %95, metadata !411, metadata !DIExpression()), !dbg !1226
  br label %97, !dbg !1609

252:                                              ; preds = %245
  call fastcc void @write_out(i64 noundef %101, i1 noundef zeroext true), !dbg !1610
  call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !410, metadata !DIExpression()), !dbg !1226
  br label %185, !dbg !1611

253:                                              ; preds = %105, %106, %127
  %254 = phi i64 [ %128, %127 ], [ 0, %106 ], [ 0, %105 ]
  %255 = add nsw i64 %101, %95, !dbg !1612
  %256 = icmp ugt i64 %255, 262143, !dbg !1614
  br i1 %256, label %257, label %258, !dbg !1615

257:                                              ; preds = %253
  call fastcc void @write_out(i64 noundef %101, i1 noundef zeroext false), !dbg !1616
  call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !1226
  br label %258, !dbg !1618

258:                                              ; preds = %257, %253
  %259 = phi i64 [ 0, %257 ], [ %101, %253 ], !dbg !1226
  call void @llvm.dbg.value(metadata i64 %259, metadata !411, metadata !DIExpression()), !dbg !1226
  %260 = getelementptr inbounds i8, ptr @fold_file.line_out, i64 %259, !dbg !1619
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1580, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1620
  call void @llvm.dbg.value(metadata i64 %81, metadata !1580, metadata !DIExpression(DW_OP_constu, 18446744069414584320, DW_OP_and, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1620
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !1580, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1620
  call void @llvm.dbg.value(metadata ptr undef, metadata !1585, metadata !DIExpression()), !dbg !1620
  %261 = icmp sge i64 %92, %95, !dbg !1622
  call void @llvm.assume(i1 %261), !dbg !1623
  %262 = sub nsw i64 %92, %95, !dbg !1624
  %263 = getelementptr inbounds i8, ptr @fold_file.line_in, i64 %262, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %260, metadata !1594, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata ptr %263, metadata !1600, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %95, metadata !1601, metadata !DIExpression()), !dbg !1626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %260, ptr noundef nonnull align 1 %263, i64 noundef %95, i1 noundef false) #38, !dbg !1628
  %264 = add nsw i64 %259, %95, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %264, metadata !411, metadata !DIExpression()), !dbg !1226
  br label %97, !dbg !1246

265:                                              ; preds = %45, %89
  %266 = tail call ptr @__errno_location() #41, !dbg !1630
  %267 = load i32, ptr %266, align 4, !dbg !1630, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %267, metadata !425, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr %16, metadata !1631, metadata !DIExpression()), !dbg !1634
  %268 = load i32, ptr %16, align 8, !dbg !1637, !tbaa !1272
  %269 = and i32 %268, 32, !dbg !1638
  %270 = icmp eq i32 %269, 0, !dbg !1638
  %271 = select i1 %270, i32 0, i32 %267, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %271, metadata !425, metadata !DIExpression()), !dbg !1226
  %272 = icmp eq i64 %26, 0, !dbg !1640
  br i1 %272, label %274, label %273, !dbg !1642

273:                                              ; preds = %265
  call fastcc void @write_out(i64 noundef %26, i1 noundef zeroext false), !dbg !1643
  br label %274, !dbg !1643

274:                                              ; preds = %273, %265
  call void @llvm.dbg.value(metadata ptr %0, metadata !993, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !999, metadata !DIExpression()), !dbg !1644
  %275 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.16) #39, !dbg !1647
  %276 = icmp eq i32 %275, 0, !dbg !1648
  br i1 %276, label %277, label %278, !dbg !1649

277:                                              ; preds = %274
  call void @clearerr_unlocked(ptr noundef nonnull %16) #38, !dbg !1650
  br label %285, !dbg !1650

278:                                              ; preds = %274
  %279 = call i32 @rpl_fclose(ptr noundef nonnull %16) #38, !dbg !1651
  %280 = icmp eq i32 %279, 0, !dbg !1653
  %281 = icmp ne i32 %271, 0
  %282 = select i1 %280, i1 true, i1 %281, !dbg !1654
  br i1 %282, label %285, label %283, !dbg !1654

283:                                              ; preds = %278
  %284 = load i32, ptr %266, align 4, !dbg !1655, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %284, metadata !425, metadata !DIExpression()), !dbg !1226
  br label %285, !dbg !1656

285:                                              ; preds = %278, %283, %277
  %286 = phi i32 [ %271, %277 ], [ %271, %278 ], [ %284, %283 ], !dbg !1226
  call void @llvm.dbg.value(metadata i32 %286, metadata !425, metadata !DIExpression()), !dbg !1226
  %287 = icmp eq i32 %286, 0, !dbg !1657
  br i1 %287, label %290, label %288, !dbg !1659

288:                                              ; preds = %285
  %289 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #38, !dbg !1660
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %286, ptr noundef nonnull @.str.61, ptr noundef %289) #38, !dbg !1660
  br label %290, !dbg !1662

290:                                              ; preds = %288, %285, %18
  %291 = phi i1 [ false, %18 ], [ true, %285 ], [ false, %288 ], !dbg !1226
  ret i1 %291, !dbg !1663
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1664 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1668 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1672 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @write_out(i64 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !1679 {
  call void @llvm.dbg.value(metadata ptr @fold_file.line_out, metadata !1683, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %0, metadata !1684, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i1 %1, metadata !1685, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1691
  %3 = load ptr, ptr @stdout, align 8, !dbg !1692, !tbaa !911
  %4 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @fold_file.line_out, i64 noundef 1, i64 noundef %0, ptr noundef %3), !dbg !1692
  %5 = icmp eq i64 %4, %0, !dbg !1693
  br i1 %5, label %6, label %19, !dbg !1694

6:                                                ; preds = %2
  br i1 %1, label %7, label %28, !dbg !1695

7:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 10, metadata !1696, metadata !DIExpression()), !dbg !1701
  %8 = load ptr, ptr @stdout, align 8, !dbg !1703, !tbaa !911
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %8, i64 0, i32 5, !dbg !1703
  %10 = load ptr, ptr %9, align 8, !dbg !1703, !tbaa !1704
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %8, i64 0, i32 6, !dbg !1703
  %12 = load ptr, ptr %11, align 8, !dbg !1703, !tbaa !1705
  %13 = icmp ult ptr %10, %12, !dbg !1703
  br i1 %13, label %14, label %16, !dbg !1703, !prof !1706

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1703
  store ptr %15, ptr %9, align 8, !dbg !1703, !tbaa !1704
  store i8 10, ptr %10, align 1, !dbg !1703, !tbaa !991
  br label %28, !dbg !1707

16:                                               ; preds = %7
  %17 = tail call i32 @__overflow(ptr noundef nonnull %8, i32 noundef 10) #38, !dbg !1703
  %18 = icmp slt i32 %17, 0, !dbg !1708
  br i1 %18, label %19, label %28, !dbg !1707

19:                                               ; preds = %16, %2
  %20 = tail call ptr @__errno_location() #41, !dbg !1709
  %21 = load i32, ptr %20, align 4, !dbg !1709, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %21, metadata !1712, metadata !DIExpression()), !dbg !1714
  %22 = load ptr, ptr @stdout, align 8, !dbg !1715, !tbaa !911
  %23 = tail call i32 @fflush_unlocked(ptr noundef %22) #38, !dbg !1715
  %24 = load ptr, ptr @stdout, align 8, !dbg !1716, !tbaa !911
  %25 = tail call i32 @fpurge(ptr noundef %24) #38, !dbg !1717
  %26 = load ptr, ptr @stdout, align 8, !dbg !1718, !tbaa !911
  tail call void @clearerr_unlocked(ptr noundef %26) #38, !dbg !1718
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #38, !dbg !1719
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %21, ptr noundef %27) #38, !dbg !1719
  unreachable, !dbg !1719

28:                                               ; preds = %14, %16, %6
  ret void, !dbg !1720
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !1721 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1726 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(argmem: readwrite)
declare !dbg !1728 ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nounwind
declare !dbg !1729 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !1732 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1735 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1736 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1738, metadata !DIExpression()), !dbg !1739
  store ptr %0, ptr @file_name, align 8, !dbg !1740, !tbaa !911
  ret void, !dbg !1741
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !1742 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1746, metadata !DIExpression()), !dbg !1747
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1748, !tbaa !1749
  ret void, !dbg !1751
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1752 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1757, !tbaa !911
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1758
  %3 = icmp eq i32 %2, 0, !dbg !1759
  br i1 %3, label %22, label %4, !dbg !1760

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1761, !tbaa !1749, !range !1762, !noundef !920
  %6 = icmp eq i8 %5, 0, !dbg !1761
  br i1 %6, label %11, label %7, !dbg !1763

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1764
  %9 = load i32, ptr %8, align 4, !dbg !1764, !tbaa !982
  %10 = icmp eq i32 %9, 32, !dbg !1765
  br i1 %10, label %22, label %11, !dbg !1766

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 5) #38, !dbg !1767
  call void @llvm.dbg.value(metadata ptr %12, metadata !1754, metadata !DIExpression()), !dbg !1768
  %13 = load ptr, ptr @file_name, align 8, !dbg !1769, !tbaa !911
  %14 = icmp eq ptr %13, null, !dbg !1769
  %15 = tail call ptr @__errno_location() #41, !dbg !1771
  %16 = load i32, ptr %15, align 4, !dbg !1771, !tbaa !982
  br i1 %14, label %19, label %17, !dbg !1772

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1773
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.28, ptr noundef %18, ptr noundef %12) #38, !dbg !1773
  br label %20, !dbg !1773

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.29, ptr noundef %12) #38, !dbg !1774
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1775, !tbaa !982
  tail call void @_exit(i32 noundef %21) #40, !dbg !1776
  unreachable, !dbg !1776

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1777, !tbaa !911
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1779
  %25 = icmp eq i32 %24, 0, !dbg !1780
  br i1 %25, label %28, label %26, !dbg !1781

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1782, !tbaa !982
  tail call void @_exit(i32 noundef %27) #40, !dbg !1783
  unreachable, !dbg !1783

28:                                               ; preds = %22
  ret void, !dbg !1784
}

; Function Attrs: noreturn
declare !dbg !1785 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1787 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1791, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i32 %1, metadata !1792, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata ptr %2, metadata !1793, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata ptr %3, metadata !1794, metadata !DIExpression()), !dbg !1795
  tail call fastcc void @flush_stdout(), !dbg !1796
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1797, !tbaa !911
  %6 = icmp eq ptr %5, null, !dbg !1797
  br i1 %6, label %8, label %7, !dbg !1799

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1800
  br label %12, !dbg !1800

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1801, !tbaa !911
  %10 = tail call ptr @getprogname() #39, !dbg !1801
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef %10) #38, !dbg !1801
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1803
  ret void, !dbg !1804
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1805 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1807, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 1, metadata !1809, metadata !DIExpression()), !dbg !1812
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1815
  %2 = icmp slt i32 %1, 0, !dbg !1816
  br i1 %2, label %6, label %3, !dbg !1817

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1818, !tbaa !911
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1818
  br label %6, !dbg !1818

6:                                                ; preds = %3, %0
  ret void, !dbg !1819
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1820 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1822, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i32 %1, metadata !1823, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata ptr %2, metadata !1824, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata ptr %3, metadata !1825, metadata !DIExpression()), !dbg !1826
  %6 = load ptr, ptr @stderr, align 8, !dbg !1827, !tbaa !911
  call void @llvm.dbg.value(metadata ptr %6, metadata !1828, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr %2, metadata !1868, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr %3, metadata !1869, metadata !DIExpression()), !dbg !1870
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1872
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1873, !tbaa !982
  %9 = add i32 %8, 1, !dbg !1873
  store i32 %9, ptr @error_message_count, align 4, !dbg !1873, !tbaa !982
  %10 = icmp eq i32 %1, 0, !dbg !1874
  br i1 %10, label %20, label %11, !dbg !1876

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1877, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1887
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1881, metadata !DIExpression()), !dbg !1888
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %12, metadata !1880, metadata !DIExpression()), !dbg !1885
  %13 = icmp eq ptr %12, null, !dbg !1890
  br i1 %13, label %14, label %16, !dbg !1892

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.31, ptr noundef nonnull @.str.5.32, i32 noundef 5) #38, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %15, metadata !1880, metadata !DIExpression()), !dbg !1885
  br label %16, !dbg !1894

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1885
  call void @llvm.dbg.value(metadata ptr %17, metadata !1880, metadata !DIExpression()), !dbg !1885
  %18 = load ptr, ptr @stderr, align 8, !dbg !1895, !tbaa !911
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.33, ptr noundef %17) #38, !dbg !1895
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1896
  br label %20, !dbg !1897

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1898, !tbaa !911
  call void @llvm.dbg.value(metadata i32 10, metadata !1899, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata ptr %21, metadata !1904, metadata !DIExpression()), !dbg !1905
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1907
  %23 = load ptr, ptr %22, align 8, !dbg !1907, !tbaa !1704
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1907
  %25 = load ptr, ptr %24, align 8, !dbg !1907, !tbaa !1705
  %26 = icmp ult ptr %23, %25, !dbg !1907
  br i1 %26, label %29, label %27, !dbg !1907, !prof !1706

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1907
  br label %31, !dbg !1907

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1907
  store ptr %30, ptr %22, align 8, !dbg !1907, !tbaa !1704
  store i8 10, ptr %23, align 1, !dbg !1907, !tbaa !991
  br label %31, !dbg !1907

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1908, !tbaa !911
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1908
  %34 = icmp eq i32 %0, 0, !dbg !1909
  br i1 %34, label %36, label %35, !dbg !1911

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !1912
  unreachable, !dbg !1912

36:                                               ; preds = %31
  ret void, !dbg !1913
}

declare !dbg !1914 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1917 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1920 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1924 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1928, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 %1, metadata !1929, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata ptr %2, metadata !1930, metadata !DIExpression()), !dbg !1937
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1938
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1931, metadata !DIExpression()), !dbg !1939
  call void @llvm.va_start(ptr nonnull %4), !dbg !1940
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !1941
  call void @llvm.va_end(ptr nonnull %4), !dbg !1942
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1943
  ret void, !dbg !1943
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !505 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !517, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %1, metadata !518, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata ptr %2, metadata !519, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %3, metadata !520, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata ptr %4, metadata !521, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata ptr %5, metadata !522, metadata !DIExpression()), !dbg !1944
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1945, !tbaa !982
  %8 = icmp eq i32 %7, 0, !dbg !1945
  br i1 %8, label %23, label %9, !dbg !1947

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1948, !tbaa !982
  %11 = icmp eq i32 %10, %3, !dbg !1951
  br i1 %11, label %12, label %22, !dbg !1952

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1953, !tbaa !911
  %14 = icmp eq ptr %13, %2, !dbg !1954
  br i1 %14, label %36, label %15, !dbg !1955

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1956
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1957
  br i1 %18, label %19, label %22, !dbg !1957

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1958
  %21 = icmp eq i32 %20, 0, !dbg !1959
  br i1 %21, label %36, label %22, !dbg !1960

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1961, !tbaa !911
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1962, !tbaa !982
  br label %23, !dbg !1963

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1964
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1965, !tbaa !911
  %25 = icmp eq ptr %24, null, !dbg !1965
  br i1 %25, label %27, label %26, !dbg !1967

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1968
  br label %31, !dbg !1968

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1969, !tbaa !911
  %29 = tail call ptr @getprogname() #39, !dbg !1969
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.36, ptr noundef %29) #38, !dbg !1969
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1971, !tbaa !911
  %33 = icmp eq ptr %2, null, !dbg !1971
  %34 = select i1 %33, ptr @.str.3.37, ptr @.str.2.38, !dbg !1971
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1971
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1972
  br label %36, !dbg !1973

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1973
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1974 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1978, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 %1, metadata !1979, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %2, metadata !1980, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 %3, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %4, metadata !1982, metadata !DIExpression()), !dbg !1984
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1985
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1983, metadata !DIExpression()), !dbg !1986
  call void @llvm.va_start(ptr nonnull %6), !dbg !1987
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !1988
  call void @llvm.va_end(ptr nonnull %6), !dbg !1989
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1990
  ret void, !dbg !1990
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !1991 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1997, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %1, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %2, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %3, metadata !2000, metadata !DIExpression()), !dbg !2001
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2002
  ret void, !dbg !2003
}

; Function Attrs: nounwind
declare !dbg !2004 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2007 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2045, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %1, metadata !2046, metadata !DIExpression()), !dbg !2047
  %3 = icmp eq ptr %0, null, !dbg !2048
  br i1 %3, label %7, label %4, !dbg !2050

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %5, metadata !1997, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 0, metadata !1998, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 0, metadata !1999, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 %1, metadata !2000, metadata !DIExpression()), !dbg !2052
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2054
  br label %7, !dbg !2055

7:                                                ; preds = %4, %2
  ret void, !dbg !2056
}

; Function Attrs: nofree nounwind
declare !dbg !2057 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2060 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2098, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 0, metadata !2099, metadata !DIExpression()), !dbg !2102
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %2, metadata !2100, metadata !DIExpression()), !dbg !2102
  %3 = icmp slt i32 %2, 0, !dbg !2104
  br i1 %3, label %4, label %6, !dbg !2106

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2107
  br label %24, !dbg !2108

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2109
  %8 = icmp eq i32 %7, 0, !dbg !2109
  br i1 %8, label %13, label %9, !dbg !2111

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2112
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2113
  %12 = icmp eq i64 %11, -1, !dbg !2114
  br i1 %12, label %16, label %13, !dbg !2115

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2116
  %15 = icmp eq i32 %14, 0, !dbg !2116
  br i1 %15, label %16, label %18, !dbg !2117

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2099, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 0, metadata !2101, metadata !DIExpression()), !dbg !2102
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %17, metadata !2101, metadata !DIExpression()), !dbg !2102
  br label %24, !dbg !2119

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2120
  %20 = load i32, ptr %19, align 4, !dbg !2120, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %20, metadata !2099, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 0, metadata !2101, metadata !DIExpression()), !dbg !2102
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %21, metadata !2101, metadata !DIExpression()), !dbg !2102
  %22 = icmp eq i32 %20, 0, !dbg !2121
  br i1 %22, label %24, label %23, !dbg !2119

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2123, !tbaa !982
  call void @llvm.dbg.value(metadata i32 -1, metadata !2101, metadata !DIExpression()), !dbg !2102
  br label %24, !dbg !2125

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2102
  ret i32 %25, !dbg !2126
}

; Function Attrs: nofree nounwind
declare !dbg !2127 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2128 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2130 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2133 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2171, metadata !DIExpression()), !dbg !2172
  %2 = icmp eq ptr %0, null, !dbg !2173
  br i1 %2, label %6, label %3, !dbg !2175

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2176
  %5 = icmp eq i32 %4, 0, !dbg !2176
  br i1 %5, label %6, label %8, !dbg !2177

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2178
  br label %16, !dbg !2179

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2185
  %9 = load i32, ptr %0, align 8, !dbg !2187, !tbaa !1272
  %10 = and i32 %9, 256, !dbg !2189
  %11 = icmp eq i32 %10, 0, !dbg !2189
  br i1 %11, label %14, label %12, !dbg !2190

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2191
  br label %14, !dbg !2191

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2192
  br label %16, !dbg !2193

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2172
  ret i32 %17, !dbg !2194
}

; Function Attrs: nofree nounwind
declare !dbg !2195 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2196 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2234, metadata !DIExpression()), !dbg !2235
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2236
  ret i32 0, !dbg !2237
}

; Function Attrs: nounwind
declare !dbg !2238 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2241 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2279, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %1, metadata !2280, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 %2, metadata !2281, metadata !DIExpression()), !dbg !2285
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2286
  %5 = load ptr, ptr %4, align 8, !dbg !2286, !tbaa !2287
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2288
  %7 = load ptr, ptr %6, align 8, !dbg !2288, !tbaa !2289
  %8 = icmp eq ptr %5, %7, !dbg !2290
  br i1 %8, label %9, label %27, !dbg !2291

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2292
  %11 = load ptr, ptr %10, align 8, !dbg !2292, !tbaa !1704
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2293
  %13 = load ptr, ptr %12, align 8, !dbg !2293, !tbaa !2294
  %14 = icmp eq ptr %11, %13, !dbg !2295
  br i1 %14, label %15, label %27, !dbg !2296

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2297
  %17 = load ptr, ptr %16, align 8, !dbg !2297, !tbaa !2298
  %18 = icmp eq ptr %17, null, !dbg !2299
  br i1 %18, label %19, label %27, !dbg !2300

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2301
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %21, metadata !2282, metadata !DIExpression()), !dbg !2303
  %22 = icmp eq i64 %21, -1, !dbg !2304
  br i1 %22, label %29, label %23, !dbg !2306

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2307, !tbaa !1272
  %25 = and i32 %24, -17, !dbg !2307
  store i32 %25, ptr %0, align 8, !dbg !2307, !tbaa !1272
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2308
  store i64 %21, ptr %26, align 8, !dbg !2309, !tbaa !2310
  br label %29, !dbg !2311

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2312
  br label %29, !dbg !2313

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2285
  ret i32 %30, !dbg !2314
}

; Function Attrs: nofree nounwind
declare !dbg !2315 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2318 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2321, !tbaa !911
  ret ptr %1, !dbg !2322
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2323 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2325, metadata !DIExpression()), !dbg !2328
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2329
  call void @llvm.dbg.value(metadata ptr %2, metadata !2326, metadata !DIExpression()), !dbg !2328
  %3 = icmp eq ptr %2, null, !dbg !2330
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2330
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2330
  call void @llvm.dbg.value(metadata ptr %5, metadata !2327, metadata !DIExpression()), !dbg !2328
  %6 = ptrtoint ptr %5 to i64, !dbg !2331
  %7 = ptrtoint ptr %0 to i64, !dbg !2331
  %8 = sub i64 %6, %7, !dbg !2331
  %9 = icmp sgt i64 %8, 6, !dbg !2333
  br i1 %9, label %10, label %19, !dbg !2334

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %11, metadata !2336, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata ptr @.str.63, metadata !2341, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 7, metadata !2342, metadata !DIExpression()), !dbg !2343
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.63, i64 7), !dbg !2345
  %13 = icmp eq i32 %12, 0, !dbg !2346
  br i1 %13, label %14, label %19, !dbg !2347

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2325, metadata !DIExpression()), !dbg !2328
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.64, i64 noundef 3) #39, !dbg !2348
  %16 = icmp eq i32 %15, 0, !dbg !2351
  %17 = select i1 %16, i64 3, i64 0, !dbg !2352
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2352
  br label %19, !dbg !2352

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2328
  call void @llvm.dbg.value(metadata ptr %21, metadata !2327, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata ptr %20, metadata !2325, metadata !DIExpression()), !dbg !2328
  store ptr %20, ptr @program_name, align 8, !dbg !2353, !tbaa !911
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2354, !tbaa !911
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2355, !tbaa !911
  ret void, !dbg !2356
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2357 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !559 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !566, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata ptr %1, metadata !567, metadata !DIExpression()), !dbg !2358
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2359
  call void @llvm.dbg.value(metadata ptr %5, metadata !568, metadata !DIExpression()), !dbg !2358
  %6 = icmp eq ptr %5, %0, !dbg !2360
  br i1 %6, label %7, label %14, !dbg !2362

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2363
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2364
  call void @llvm.dbg.declare(metadata ptr %4, metadata !570, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %4, metadata !2366, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %4, metadata !2375, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 0, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i64 8, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i64 0, ptr %4, align 8, !dbg !2384
  call void @llvm.dbg.value(metadata ptr %3, metadata !569, metadata !DIExpression(DW_OP_deref)), !dbg !2358
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2385
  %9 = icmp eq i64 %8, 2, !dbg !2387
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !569, metadata !DIExpression()), !dbg !2358
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2388
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2358
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2389
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2389
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2358
  ret ptr %15, !dbg !2389
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2390 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2395, metadata !DIExpression()), !dbg !2398
  %2 = tail call ptr @__errno_location() #41, !dbg !2399
  %3 = load i32, ptr %2, align 4, !dbg !2399, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %3, metadata !2396, metadata !DIExpression()), !dbg !2398
  %4 = icmp eq ptr %0, null, !dbg !2400
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2400
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2401
  call void @llvm.dbg.value(metadata ptr %6, metadata !2397, metadata !DIExpression()), !dbg !2398
  store i32 %3, ptr %2, align 4, !dbg !2402, !tbaa !982
  ret ptr %6, !dbg !2403
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !2404 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2410, metadata !DIExpression()), !dbg !2411
  %2 = icmp eq ptr %0, null, !dbg !2412
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2412
  %4 = load i32, ptr %3, align 8, !dbg !2413, !tbaa !2414
  ret i32 %4, !dbg !2416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2417 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2421, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %1, metadata !2422, metadata !DIExpression()), !dbg !2423
  %3 = icmp eq ptr %0, null, !dbg !2424
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2424
  store i32 %1, ptr %4, align 8, !dbg !2425, !tbaa !2414
  ret void, !dbg !2426
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2427 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2431, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 %1, metadata !2432, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %2, metadata !2433, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 %1, metadata !2434, metadata !DIExpression()), !dbg !2439
  %4 = icmp eq ptr %0, null, !dbg !2440
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2440
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2441
  %7 = lshr i8 %1, 5, !dbg !2442
  %8 = zext i8 %7 to i64, !dbg !2442
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2443
  call void @llvm.dbg.value(metadata ptr %9, metadata !2435, metadata !DIExpression()), !dbg !2439
  %10 = and i8 %1, 31, !dbg !2444
  %11 = zext i8 %10 to i32, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %11, metadata !2437, metadata !DIExpression()), !dbg !2439
  %12 = load i32, ptr %9, align 4, !dbg !2445, !tbaa !982
  %13 = lshr i32 %12, %11, !dbg !2446
  %14 = and i32 %13, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %14, metadata !2438, metadata !DIExpression()), !dbg !2439
  %15 = xor i32 %13, %2, !dbg !2448
  %16 = and i32 %15, 1, !dbg !2448
  %17 = shl nuw i32 %16, %11, !dbg !2449
  %18 = xor i32 %17, %12, !dbg !2450
  store i32 %18, ptr %9, align 4, !dbg !2450, !tbaa !982
  ret i32 %14, !dbg !2451
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2452 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 %1, metadata !2457, metadata !DIExpression()), !dbg !2459
  %3 = icmp eq ptr %0, null, !dbg !2460
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2462
  call void @llvm.dbg.value(metadata ptr %4, metadata !2456, metadata !DIExpression()), !dbg !2459
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2463
  %6 = load i32, ptr %5, align 4, !dbg !2463, !tbaa !2464
  call void @llvm.dbg.value(metadata i32 %6, metadata !2458, metadata !DIExpression()), !dbg !2459
  store i32 %1, ptr %5, align 4, !dbg !2465, !tbaa !2464
  ret i32 %6, !dbg !2466
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2467 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %1, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %2, metadata !2473, metadata !DIExpression()), !dbg !2474
  %4 = icmp eq ptr %0, null, !dbg !2475
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2477
  call void @llvm.dbg.value(metadata ptr %5, metadata !2471, metadata !DIExpression()), !dbg !2474
  store i32 10, ptr %5, align 8, !dbg !2478, !tbaa !2414
  %6 = icmp ne ptr %1, null, !dbg !2479
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2481
  br i1 %8, label %10, label %9, !dbg !2481

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2482
  unreachable, !dbg !2482

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2483
  store ptr %1, ptr %11, align 8, !dbg !2484, !tbaa !2485
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2486
  store ptr %2, ptr %12, align 8, !dbg !2487, !tbaa !2488
  ret void, !dbg !2489
}

; Function Attrs: noreturn nounwind
declare !dbg !2490 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2491 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %1, metadata !2496, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %2, metadata !2497, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %3, metadata !2498, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %4, metadata !2499, metadata !DIExpression()), !dbg !2503
  %6 = icmp eq ptr %4, null, !dbg !2504
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2504
  call void @llvm.dbg.value(metadata ptr %7, metadata !2500, metadata !DIExpression()), !dbg !2503
  %8 = tail call ptr @__errno_location() #41, !dbg !2505
  %9 = load i32, ptr %8, align 4, !dbg !2505, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %9, metadata !2501, metadata !DIExpression()), !dbg !2503
  %10 = load i32, ptr %7, align 8, !dbg !2506, !tbaa !2414
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2507
  %12 = load i32, ptr %11, align 4, !dbg !2507, !tbaa !2464
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2508
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2509
  %15 = load ptr, ptr %14, align 8, !dbg !2509, !tbaa !2485
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2510
  %17 = load ptr, ptr %16, align 8, !dbg !2510, !tbaa !2488
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %18, metadata !2502, metadata !DIExpression()), !dbg !2503
  store i32 %9, ptr %8, align 4, !dbg !2512, !tbaa !982
  ret i64 %18, !dbg !2513
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2514 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %1, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %2, metadata !2522, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %3, metadata !2523, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %4, metadata !2524, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %5, metadata !2525, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %6, metadata !2526, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %7, metadata !2527, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %8, metadata !2528, metadata !DIExpression()), !dbg !2582
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2583
  %17 = icmp eq i64 %16, 1, !dbg !2584
  call void @llvm.dbg.value(metadata i1 %17, metadata !2529, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2582
  call void @llvm.dbg.value(metadata i64 0, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 0, metadata !2531, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr null, metadata !2532, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 0, metadata !2533, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2582
  %18 = trunc i32 %5 to i8, !dbg !2585
  %19 = lshr i8 %18, 1, !dbg !2585
  %20 = and i8 %19, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i8 %20, metadata !2535, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 1, metadata !2537, metadata !DIExpression()), !dbg !2582
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2586

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2587
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2588
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2589
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2590
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2582
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2591
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2592
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %39, metadata !2537, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %38, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %37, metadata !2535, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %36, metadata !2534, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %35, metadata !2533, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %34, metadata !2532, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %33, metadata !2531, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 0, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %32, metadata !2523, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %31, metadata !2528, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %30, metadata !2527, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %29, metadata !2524, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.label(metadata !2575), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2582
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
  ], !dbg !2594

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2535, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 5, metadata !2524, metadata !DIExpression()), !dbg !2582
  br label %115, !dbg !2595

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2535, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 5, metadata !2524, metadata !DIExpression()), !dbg !2582
  %43 = and i8 %37, 1, !dbg !2596
  %44 = icmp eq i8 %43, 0, !dbg !2596
  br i1 %44, label %45, label %115, !dbg !2595

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2598
  br i1 %46, label %115, label %47, !dbg !2601

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2598, !tbaa !991
  br label %115, !dbg !2598

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.77, metadata !654, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %29, metadata !655, metadata !DIExpression()), !dbg !2602
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.78, ptr noundef nonnull @.str.11.77, i32 noundef 5) #38, !dbg !2606
  call void @llvm.dbg.value(metadata ptr %49, metadata !656, metadata !DIExpression()), !dbg !2602
  %50 = icmp eq ptr %49, @.str.11.77, !dbg !2607
  br i1 %50, label %51, label %60, !dbg !2609

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2610
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2611
  call void @llvm.dbg.declare(metadata ptr %13, metadata !658, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %13, metadata !2613, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata ptr %13, metadata !2621, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i64 8, metadata !2625, metadata !DIExpression()), !dbg !2626
  store i64 0, ptr %13, align 8, !dbg !2628
  call void @llvm.dbg.value(metadata ptr %12, metadata !657, metadata !DIExpression(DW_OP_deref)), !dbg !2602
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2629
  %53 = icmp eq i64 %52, 3, !dbg !2631
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !657, metadata !DIExpression()), !dbg !2602
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2632
  %57 = icmp eq i32 %29, 9, !dbg !2632
  %58 = select i1 %57, ptr @.str.10.79, ptr @.str.12.80, !dbg !2632
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2633
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2602
  call void @llvm.dbg.value(metadata ptr %61, metadata !2527, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr @.str.12.80, metadata !654, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32 %29, metadata !655, metadata !DIExpression()), !dbg !2634
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.78, ptr noundef nonnull @.str.12.80, i32 noundef 5) #38, !dbg !2636
  call void @llvm.dbg.value(metadata ptr %62, metadata !656, metadata !DIExpression()), !dbg !2634
  %63 = icmp eq ptr %62, @.str.12.80, !dbg !2637
  br i1 %63, label %64, label %73, !dbg !2638

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2640
  call void @llvm.dbg.declare(metadata ptr %11, metadata !658, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %11, metadata !2613, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %11, metadata !2621, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i64 8, metadata !2625, metadata !DIExpression()), !dbg !2644
  store i64 0, ptr %11, align 8, !dbg !2646
  call void @llvm.dbg.value(metadata ptr %10, metadata !657, metadata !DIExpression(DW_OP_deref)), !dbg !2634
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2647
  %66 = icmp eq i64 %65, 3, !dbg !2648
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !657, metadata !DIExpression()), !dbg !2634
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2649
  %70 = icmp eq i32 %29, 9, !dbg !2649
  %71 = select i1 %70, ptr @.str.10.79, ptr @.str.12.80, !dbg !2649
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2649
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2650
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2650
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2528, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %74, metadata !2527, metadata !DIExpression()), !dbg !2582
  %76 = and i8 %37, 1, !dbg !2651
  %77 = icmp eq i8 %76, 0, !dbg !2651
  br i1 %77, label %78, label %93, !dbg !2652

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2539, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 0, metadata !2530, metadata !DIExpression()), !dbg !2582
  %79 = load i8, ptr %74, align 1, !dbg !2654, !tbaa !991
  %80 = icmp eq i8 %79, 0, !dbg !2656
  br i1 %80, label %93, label %81, !dbg !2656

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2539, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %84, metadata !2530, metadata !DIExpression()), !dbg !2582
  %85 = icmp ult i64 %84, %40, !dbg !2657
  br i1 %85, label %86, label %88, !dbg !2660

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2657
  store i8 %82, ptr %87, align 1, !dbg !2657, !tbaa !991
  br label %88, !dbg !2657

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %89, metadata !2530, metadata !DIExpression()), !dbg !2582
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %90, metadata !2539, metadata !DIExpression()), !dbg !2653
  %91 = load i8, ptr %90, align 1, !dbg !2654, !tbaa !991
  %92 = icmp eq i8 %91, 0, !dbg !2656
  br i1 %92, label %93, label %81, !dbg !2656, !llvm.loop !2662

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2664
  call void @llvm.dbg.value(metadata i64 %94, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 1, metadata !2534, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %75, metadata !2532, metadata !DIExpression()), !dbg !2582
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %95, metadata !2533, metadata !DIExpression()), !dbg !2582
  br label %115, !dbg !2666

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2534, metadata !DIExpression()), !dbg !2582
  br label %97, !dbg !2667

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2582
  call void @llvm.dbg.value(metadata i8 %98, metadata !2534, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 1, metadata !2535, metadata !DIExpression()), !dbg !2582
  br label %99, !dbg !2668

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2590
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2582
  call void @llvm.dbg.value(metadata i8 %101, metadata !2535, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %100, metadata !2534, metadata !DIExpression()), !dbg !2582
  %102 = and i8 %101, 1, !dbg !2669
  %103 = icmp eq i8 %102, 0, !dbg !2669
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2671
  br label %105, !dbg !2671

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2582
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2585
  call void @llvm.dbg.value(metadata i8 %107, metadata !2535, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %106, metadata !2534, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 2, metadata !2524, metadata !DIExpression()), !dbg !2582
  %108 = and i8 %107, 1, !dbg !2672
  %109 = icmp eq i8 %108, 0, !dbg !2672
  br i1 %109, label %110, label %115, !dbg !2674

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2675
  br i1 %111, label %115, label %112, !dbg !2678

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2675, !tbaa !991
  br label %115, !dbg !2675

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2582
  br label %115, !dbg !2679

114:                                              ; preds = %28
  call void @abort() #40, !dbg !2680
  unreachable, !dbg !2680

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2664
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.79, %45 ], [ @.str.10.79, %47 ], [ @.str.10.79, %42 ], [ %34, %28 ], [ @.str.12.80, %110 ], [ @.str.12.80, %112 ], [ @.str.12.80, %105 ], [ @.str.10.79, %41 ], !dbg !2582
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2582
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2582
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2582
  call void @llvm.dbg.value(metadata i8 %123, metadata !2535, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %122, metadata !2534, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %121, metadata !2533, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %120, metadata !2532, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %119, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %118, metadata !2528, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %117, metadata !2527, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %116, metadata !2524, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 0, metadata !2544, metadata !DIExpression()), !dbg !2681
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
  br label %138, !dbg !2682

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2664
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2587
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2591
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2592
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2683
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2684
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %145, metadata !2544, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 %144, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %143, metadata !2537, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %142, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %141, metadata !2531, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %140, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %139, metadata !2523, metadata !DIExpression()), !dbg !2582
  %147 = icmp eq i64 %139, -1, !dbg !2685
  br i1 %147, label %148, label %152, !dbg !2686

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2687
  %150 = load i8, ptr %149, align 1, !dbg !2687, !tbaa !991
  %151 = icmp eq i8 %150, 0, !dbg !2688
  br i1 %151, label %627, label %154, !dbg !2689

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2690
  br i1 %153, label %627, label %154, !dbg !2689

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2546, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2549, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 0, metadata !2550, metadata !DIExpression()), !dbg !2691
  br i1 %129, label %155, label %170, !dbg !2692

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2694
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2695
  br i1 %157, label %158, label %160, !dbg !2695

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %159, metadata !2523, metadata !DIExpression()), !dbg !2582
  br label %160, !dbg !2697

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2697
  call void @llvm.dbg.value(metadata i64 %161, metadata !2523, metadata !DIExpression()), !dbg !2582
  %162 = icmp ugt i64 %156, %161, !dbg !2698
  br i1 %162, label %170, label %163, !dbg !2699

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2700
  call void @llvm.dbg.value(metadata ptr %164, metadata !2701, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %120, metadata !2704, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %121, metadata !2705, metadata !DIExpression()), !dbg !2706
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2708
  %166 = icmp ne i32 %165, 0, !dbg !2709
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2710
  %168 = xor i1 %166, true, !dbg !2710
  %169 = zext i1 %168 to i8, !dbg !2710
  br i1 %167, label %170, label %688, !dbg !2710

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2691
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %173, metadata !2546, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %171, metadata !2523, metadata !DIExpression()), !dbg !2582
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2711
  %175 = load i8, ptr %174, align 1, !dbg !2711, !tbaa !991
  call void @llvm.dbg.value(metadata i8 %175, metadata !2551, metadata !DIExpression()), !dbg !2691
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
  ], !dbg !2712

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2713

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2714

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2549, metadata !DIExpression()), !dbg !2691
  %179 = and i8 %144, 1, !dbg !2718
  %180 = icmp eq i8 %179, 0, !dbg !2718
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2718
  br i1 %181, label %182, label %198, !dbg !2718

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2720
  br i1 %183, label %184, label %186, !dbg !2724

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2720
  store i8 39, ptr %185, align 1, !dbg !2720, !tbaa !991
  br label %186, !dbg !2720

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %187, metadata !2530, metadata !DIExpression()), !dbg !2582
  %188 = icmp ult i64 %187, %146, !dbg !2725
  br i1 %188, label %189, label %191, !dbg !2728

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2725
  store i8 36, ptr %190, align 1, !dbg !2725, !tbaa !991
  br label %191, !dbg !2725

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %192, metadata !2530, metadata !DIExpression()), !dbg !2582
  %193 = icmp ult i64 %192, %146, !dbg !2729
  br i1 %193, label %194, label %196, !dbg !2732

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2729
  store i8 39, ptr %195, align 1, !dbg !2729, !tbaa !991
  br label %196, !dbg !2729

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %197, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2582
  br label %198, !dbg !2733

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2582
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2582
  call void @llvm.dbg.value(metadata i8 %200, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %199, metadata !2530, metadata !DIExpression()), !dbg !2582
  %201 = icmp ult i64 %199, %146, !dbg !2734
  br i1 %201, label %202, label %204, !dbg !2737

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2734
  store i8 92, ptr %203, align 1, !dbg !2734, !tbaa !991
  br label %204, !dbg !2734

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %205, metadata !2530, metadata !DIExpression()), !dbg !2582
  br i1 %126, label %206, label %491, !dbg !2738

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2740
  %208 = icmp ult i64 %207, %171, !dbg !2741
  br i1 %208, label %209, label %480, !dbg !2742

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2743
  %211 = load i8, ptr %210, align 1, !dbg !2743, !tbaa !991
  %212 = add i8 %211, -48, !dbg !2744
  %213 = icmp ult i8 %212, 10, !dbg !2744
  br i1 %213, label %214, label %480, !dbg !2744

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2745
  br i1 %215, label %216, label %218, !dbg !2749

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2745
  store i8 48, ptr %217, align 1, !dbg !2745, !tbaa !991
  br label %218, !dbg !2745

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %219, metadata !2530, metadata !DIExpression()), !dbg !2582
  %220 = icmp ult i64 %219, %146, !dbg !2750
  br i1 %220, label %221, label %223, !dbg !2753

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2750
  store i8 48, ptr %222, align 1, !dbg !2750, !tbaa !991
  br label %223, !dbg !2750

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %224, metadata !2530, metadata !DIExpression()), !dbg !2582
  br label %480, !dbg !2754

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2755

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2756

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2757

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2759

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2761
  %231 = icmp ult i64 %230, %171, !dbg !2762
  br i1 %231, label %232, label %480, !dbg !2763

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2764
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2765
  %235 = load i8, ptr %234, align 1, !dbg !2765, !tbaa !991
  %236 = icmp eq i8 %235, 63, !dbg !2766
  br i1 %236, label %237, label %480, !dbg !2767

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2768
  %239 = load i8, ptr %238, align 1, !dbg !2768, !tbaa !991
  %240 = sext i8 %239 to i32, !dbg !2768
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
  ], !dbg !2769

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2770

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2551, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %230, metadata !2544, metadata !DIExpression()), !dbg !2681
  %243 = icmp ult i64 %140, %146, !dbg !2772
  br i1 %243, label %244, label %246, !dbg !2775

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2772
  store i8 63, ptr %245, align 1, !dbg !2772, !tbaa !991
  br label %246, !dbg !2772

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %247, metadata !2530, metadata !DIExpression()), !dbg !2582
  %248 = icmp ult i64 %247, %146, !dbg !2776
  br i1 %248, label %249, label %251, !dbg !2779

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2776
  store i8 34, ptr %250, align 1, !dbg !2776, !tbaa !991
  br label %251, !dbg !2776

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %252, metadata !2530, metadata !DIExpression()), !dbg !2582
  %253 = icmp ult i64 %252, %146, !dbg !2780
  br i1 %253, label %254, label %256, !dbg !2783

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2780
  store i8 34, ptr %255, align 1, !dbg !2780, !tbaa !991
  br label %256, !dbg !2780

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %257, metadata !2530, metadata !DIExpression()), !dbg !2582
  %258 = icmp ult i64 %257, %146, !dbg !2784
  br i1 %258, label %259, label %261, !dbg !2787

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2784
  store i8 63, ptr %260, align 1, !dbg !2784, !tbaa !991
  br label %261, !dbg !2784

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %262, metadata !2530, metadata !DIExpression()), !dbg !2582
  br label %480, !dbg !2788

263:                                              ; preds = %170
  br label %274, !dbg !2789

264:                                              ; preds = %170
  br label %274, !dbg !2790

265:                                              ; preds = %170
  br label %272, !dbg !2791

266:                                              ; preds = %170
  br label %272, !dbg !2792

267:                                              ; preds = %170
  br label %274, !dbg !2793

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2794

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2795

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2798

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2800

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2801
  call void @llvm.dbg.label(metadata !2576), !dbg !2802
  br i1 %134, label %274, label %670, !dbg !2803

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2801
  call void @llvm.dbg.label(metadata !2578), !dbg !2805
  br i1 %125, label %535, label %491, !dbg !2806

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2807

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2808, !tbaa !991
  %279 = icmp eq i8 %278, 0, !dbg !2810
  br i1 %279, label %280, label %480, !dbg !2811

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2812
  br i1 %281, label %282, label %480, !dbg !2814

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2550, metadata !DIExpression()), !dbg !2691
  br label %283, !dbg !2815

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %284, metadata !2550, metadata !DIExpression()), !dbg !2691
  br i1 %134, label %480, label %670, !dbg !2816

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 1, metadata !2550, metadata !DIExpression()), !dbg !2691
  br i1 %133, label %286, label %480, !dbg !2818

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2819

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2822
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2824
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2824
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %292, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %291, metadata !2531, metadata !DIExpression()), !dbg !2582
  %293 = icmp ult i64 %140, %292, !dbg !2825
  br i1 %293, label %294, label %296, !dbg !2828

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2825
  store i8 39, ptr %295, align 1, !dbg !2825, !tbaa !991
  br label %296, !dbg !2825

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %297, metadata !2530, metadata !DIExpression()), !dbg !2582
  %298 = icmp ult i64 %297, %292, !dbg !2829
  br i1 %298, label %299, label %301, !dbg !2832

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2829
  store i8 92, ptr %300, align 1, !dbg !2829, !tbaa !991
  br label %301, !dbg !2829

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %302, metadata !2530, metadata !DIExpression()), !dbg !2582
  %303 = icmp ult i64 %302, %292, !dbg !2833
  br i1 %303, label %304, label %306, !dbg !2836

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2833
  store i8 39, ptr %305, align 1, !dbg !2833, !tbaa !991
  br label %306, !dbg !2833

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2836
  call void @llvm.dbg.value(metadata i64 %307, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2582
  br label %480, !dbg !2837

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2838

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2552, metadata !DIExpression()), !dbg !2839
  %310 = tail call ptr @__ctype_b_loc() #41, !dbg !2840
  %311 = load ptr, ptr %310, align 8, !dbg !2840, !tbaa !911
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2840
  %314 = load i16, ptr %313, align 2, !dbg !2840, !tbaa !1023
  %315 = lshr i16 %314, 14, !dbg !2842
  %316 = trunc i16 %315 to i8, !dbg !2842
  %317 = and i8 %316, 1, !dbg !2842
  call void @llvm.dbg.value(metadata i8 %317, metadata !2555, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %171, metadata !2523, metadata !DIExpression()), !dbg !2582
  %318 = icmp eq i8 %317, 0, !dbg !2843
  call void @llvm.dbg.value(metadata i1 %318, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2691
  br label %368, !dbg !2844

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2845
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2556, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %14, metadata !2613, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %14, metadata !2621, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 8, metadata !2625, metadata !DIExpression()), !dbg !2849
  store i64 0, ptr %14, align 8, !dbg !2851
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 1, metadata !2555, metadata !DIExpression()), !dbg !2839
  %320 = icmp eq i64 %171, -1, !dbg !2852
  br i1 %320, label %321, label %323, !dbg !2854

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %322, metadata !2523, metadata !DIExpression()), !dbg !2582
  br label %323, !dbg !2856

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2691
  call void @llvm.dbg.value(metadata i64 %324, metadata !2523, metadata !DIExpression()), !dbg !2582
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2857
  %325 = sub i64 %324, %145, !dbg !2858
  call void @llvm.dbg.value(metadata ptr %15, metadata !2559, metadata !DIExpression(DW_OP_deref)), !dbg !2859
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #38, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %326, metadata !2563, metadata !DIExpression()), !dbg !2859
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2861

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2839
  %328 = icmp ugt i64 %324, %145, !dbg !2862
  br i1 %328, label %331, label %329, !dbg !2864

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2839
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2865
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %324, metadata !2523, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i1 true, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2691
  br label %368, !dbg !2844

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2839
  br label %360, !dbg !2867

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2552, metadata !DIExpression()), !dbg !2839
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2869
  %335 = load i8, ptr %334, align 1, !dbg !2869, !tbaa !991
  %336 = icmp eq i8 %335, 0, !dbg !2864
  br i1 %336, label %363, label %337, !dbg !2870

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %338, metadata !2552, metadata !DIExpression()), !dbg !2839
  %339 = add i64 %338, %145, !dbg !2872
  %340 = icmp eq i64 %338, %325, !dbg !2862
  br i1 %340, label %363, label %331, !dbg !2864, !llvm.loop !2873

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2874
  %344 = and i1 %343, %133, !dbg !2874
  call void @llvm.dbg.value(metadata i64 1, metadata !2564, metadata !DIExpression()), !dbg !2875
  br i1 %344, label %345, label %354, !dbg !2874

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2564, metadata !DIExpression()), !dbg !2875
  %347 = add i64 %346, %145, !dbg !2876
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2878
  %349 = load i8, ptr %348, align 1, !dbg !2878, !tbaa !991
  %350 = sext i8 %349 to i32, !dbg !2878
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2879

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %352, metadata !2564, metadata !DIExpression()), !dbg !2875
  %353 = icmp eq i64 %352, %326, !dbg !2881
  br i1 %353, label %354, label %345, !dbg !2882, !llvm.loop !2883

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2885, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %355, metadata !2559, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i32 %355, metadata !2887, metadata !DIExpression()), !dbg !2890
  %356 = call i32 @iswprint(i32 noundef %355) #38, !dbg !2892
  %357 = icmp ne i32 %356, 0, !dbg !2893
  %358 = zext i1 %357 to i8, !dbg !2894
  call void @llvm.dbg.value(metadata i8 %358, metadata !2555, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %326, metadata !2552, metadata !DIExpression()), !dbg !2839
  br label %363, !dbg !2895

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2555, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2839
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2865
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2866
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2555, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 0, metadata !2552, metadata !DIExpression()), !dbg !2839
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2865
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %324, metadata !2523, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i1 %361, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2691
  br label %368, !dbg !2844

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2555, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %364, metadata !2552, metadata !DIExpression()), !dbg !2839
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2865
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %324, metadata !2523, metadata !DIExpression()), !dbg !2582
  %366 = icmp eq i8 %365, 0, !dbg !2843
  call void @llvm.dbg.value(metadata i1 %366, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2691
  %367 = icmp ugt i64 %364, 1, !dbg !2896
  br i1 %367, label %374, label %368, !dbg !2844

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2897
  br i1 %373, label %374, label %480, !dbg !2897

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2898
  call void @llvm.dbg.value(metadata i64 %379, metadata !2572, metadata !DIExpression()), !dbg !2899
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2900

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2582
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2683
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2681
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2691
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2901
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %387, metadata !2551, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %386, metadata !2549, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %385, metadata !2546, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %384, metadata !2544, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 %383, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %382, metadata !2530, metadata !DIExpression()), !dbg !2582
  br i1 %380, label %388, label %434, !dbg !2902

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2907

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2549, metadata !DIExpression()), !dbg !2691
  %390 = and i8 %383, 1, !dbg !2910
  %391 = icmp eq i8 %390, 0, !dbg !2910
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2910
  br i1 %392, label %393, label %409, !dbg !2910

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2912
  br i1 %394, label %395, label %397, !dbg !2916

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2912
  store i8 39, ptr %396, align 1, !dbg !2912, !tbaa !991
  br label %397, !dbg !2912

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %398, metadata !2530, metadata !DIExpression()), !dbg !2582
  %399 = icmp ult i64 %398, %146, !dbg !2917
  br i1 %399, label %400, label %402, !dbg !2920

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2917
  store i8 36, ptr %401, align 1, !dbg !2917, !tbaa !991
  br label %402, !dbg !2917

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %403, metadata !2530, metadata !DIExpression()), !dbg !2582
  %404 = icmp ult i64 %403, %146, !dbg !2921
  br i1 %404, label %405, label %407, !dbg !2924

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2921
  store i8 39, ptr %406, align 1, !dbg !2921, !tbaa !991
  br label %407, !dbg !2921

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %408, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2582
  br label %409, !dbg !2925

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2582
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2582
  call void @llvm.dbg.value(metadata i8 %411, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %410, metadata !2530, metadata !DIExpression()), !dbg !2582
  %412 = icmp ult i64 %410, %146, !dbg !2926
  br i1 %412, label %413, label %415, !dbg !2929

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2926
  store i8 92, ptr %414, align 1, !dbg !2926, !tbaa !991
  br label %415, !dbg !2926

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2929
  call void @llvm.dbg.value(metadata i64 %416, metadata !2530, metadata !DIExpression()), !dbg !2582
  %417 = icmp ult i64 %416, %146, !dbg !2930
  br i1 %417, label %418, label %422, !dbg !2933

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2930
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2930
  store i8 %420, ptr %421, align 1, !dbg !2930, !tbaa !991
  br label %422, !dbg !2930

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2933
  call void @llvm.dbg.value(metadata i64 %423, metadata !2530, metadata !DIExpression()), !dbg !2582
  %424 = icmp ult i64 %423, %146, !dbg !2934
  br i1 %424, label %425, label %430, !dbg !2937

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2934
  %428 = or i8 %427, 48, !dbg !2934
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2934
  store i8 %428, ptr %429, align 1, !dbg !2934, !tbaa !991
  br label %430, !dbg !2934

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %431, metadata !2530, metadata !DIExpression()), !dbg !2582
  %432 = and i8 %387, 7, !dbg !2938
  %433 = or i8 %432, 48, !dbg !2939
  call void @llvm.dbg.value(metadata i8 %433, metadata !2551, metadata !DIExpression()), !dbg !2691
  br label %443, !dbg !2940

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2941
  %436 = icmp eq i8 %435, 0, !dbg !2941
  br i1 %436, label %443, label %437, !dbg !2943

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2944
  br i1 %438, label %439, label %441, !dbg !2948

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2944
  store i8 92, ptr %440, align 1, !dbg !2944, !tbaa !991
  br label %441, !dbg !2944

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %442, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2546, metadata !DIExpression()), !dbg !2691
  br label %443, !dbg !2949

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2582
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2683
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2691
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2691
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %448, metadata !2551, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %447, metadata !2549, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %446, metadata !2546, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %445, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %444, metadata !2530, metadata !DIExpression()), !dbg !2582
  %449 = add i64 %384, 1, !dbg !2950
  %450 = icmp ugt i64 %379, %449, !dbg !2952
  br i1 %450, label %451, label %478, !dbg !2953

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2954
  %453 = icmp ne i8 %452, 0, !dbg !2954
  %454 = and i8 %447, 1, !dbg !2954
  %455 = icmp eq i8 %454, 0, !dbg !2954
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2954
  br i1 %456, label %457, label %468, !dbg !2954

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2957
  br i1 %458, label %459, label %461, !dbg !2961

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2957
  store i8 39, ptr %460, align 1, !dbg !2957, !tbaa !991
  br label %461, !dbg !2957

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %462, metadata !2530, metadata !DIExpression()), !dbg !2582
  %463 = icmp ult i64 %462, %146, !dbg !2962
  br i1 %463, label %464, label %466, !dbg !2965

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2962
  store i8 39, ptr %465, align 1, !dbg !2962, !tbaa !991
  br label %466, !dbg !2962

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2965
  call void @llvm.dbg.value(metadata i64 %467, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2582
  br label %468, !dbg !2966

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2967
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2582
  call void @llvm.dbg.value(metadata i8 %470, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %469, metadata !2530, metadata !DIExpression()), !dbg !2582
  %471 = icmp ult i64 %469, %146, !dbg !2968
  br i1 %471, label %472, label %474, !dbg !2971

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2968
  store i8 %448, ptr %473, align 1, !dbg !2968, !tbaa !991
  br label %474, !dbg !2968

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %475, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %449, metadata !2544, metadata !DIExpression()), !dbg !2681
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2972
  %477 = load i8, ptr %476, align 1, !dbg !2972, !tbaa !991
  call void @llvm.dbg.value(metadata i8 %477, metadata !2551, metadata !DIExpression()), !dbg !2691
  br label %381, !dbg !2973, !llvm.loop !2974

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i8 %448, metadata !2551, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %479, metadata !2550, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %447, metadata !2549, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %446, metadata !2546, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %384, metadata !2544, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 %445, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %444, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %378, metadata !2523, metadata !DIExpression()), !dbg !2582
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2977
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2582
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2587
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2582
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2582
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2681
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2691
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2691
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2691
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %489, metadata !2551, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %488, metadata !2550, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %487, metadata !2549, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %173, metadata !2546, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %486, metadata !2544, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 %485, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %484, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %483, metadata !2531, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %482, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %481, metadata !2523, metadata !DIExpression()), !dbg !2582
  br i1 %127, label %502, label %491, !dbg !2978

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
  br i1 %137, label %503, label %524, !dbg !2980

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2981

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
  %514 = lshr i8 %505, 5, !dbg !2982
  %515 = zext i8 %514 to i64, !dbg !2982
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2983
  %517 = load i32, ptr %516, align 4, !dbg !2983, !tbaa !982
  %518 = and i8 %505, 31, !dbg !2984
  %519 = zext i8 %518 to i32, !dbg !2984
  %520 = shl nuw i32 1, %519, !dbg !2985
  %521 = and i32 %517, %520, !dbg !2985
  %522 = icmp eq i32 %521, 0, !dbg !2985
  %523 = and i1 %172, %522, !dbg !2986
  br i1 %523, label %573, label %535, !dbg !2986

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
  br i1 %172, label %573, label %535, !dbg !2987

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2977
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2582
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2587
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2591
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2683
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2988
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2691
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2691
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %543, metadata !2551, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %542, metadata !2550, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %541, metadata !2544, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 %540, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %539, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %538, metadata !2531, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %537, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %536, metadata !2523, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.label(metadata !2579), !dbg !2989
  br i1 %132, label %545, label %674, !dbg !2990

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2549, metadata !DIExpression()), !dbg !2691
  %546 = and i8 %540, 1, !dbg !2992
  %547 = icmp eq i8 %546, 0, !dbg !2992
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2992
  br i1 %548, label %549, label %565, !dbg !2992

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2994
  br i1 %550, label %551, label %553, !dbg !2998

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2994
  store i8 39, ptr %552, align 1, !dbg !2994, !tbaa !991
  br label %553, !dbg !2994

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %554, metadata !2530, metadata !DIExpression()), !dbg !2582
  %555 = icmp ult i64 %554, %544, !dbg !2999
  br i1 %555, label %556, label %558, !dbg !3002

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2999
  store i8 36, ptr %557, align 1, !dbg !2999, !tbaa !991
  br label %558, !dbg !2999

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3002
  call void @llvm.dbg.value(metadata i64 %559, metadata !2530, metadata !DIExpression()), !dbg !2582
  %560 = icmp ult i64 %559, %544, !dbg !3003
  br i1 %560, label %561, label %563, !dbg !3006

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3003
  store i8 39, ptr %562, align 1, !dbg !3003, !tbaa !991
  br label %563, !dbg !3003

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3006
  call void @llvm.dbg.value(metadata i64 %564, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2582
  br label %565, !dbg !3007

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2691
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2582
  call void @llvm.dbg.value(metadata i8 %567, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %566, metadata !2530, metadata !DIExpression()), !dbg !2582
  %568 = icmp ult i64 %566, %544, !dbg !3008
  br i1 %568, label %569, label %571, !dbg !3011

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3008
  store i8 92, ptr %570, align 1, !dbg !3008, !tbaa !991
  br label %571, !dbg !3008

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %544, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %543, metadata !2551, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %542, metadata !2550, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 1, metadata !2549, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %541, metadata !2544, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 %567, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %539, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %538, metadata !2531, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %572, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %536, metadata !2523, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.label(metadata !2580), !dbg !3012
  br label %600, !dbg !3013

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2977
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2582
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2587
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2591
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2683
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2988
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2691
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2691
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3016
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %582, metadata !2551, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %581, metadata !2550, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 %580, metadata !2549, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %579, metadata !2544, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 %578, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %577, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %576, metadata !2531, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %575, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %574, metadata !2523, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.label(metadata !2580), !dbg !3012
  %584 = and i8 %578, 1, !dbg !3013
  %585 = icmp ne i8 %584, 0, !dbg !3013
  %586 = and i8 %580, 1, !dbg !3013
  %587 = icmp eq i8 %586, 0, !dbg !3013
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3013
  br i1 %588, label %589, label %600, !dbg !3013

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3017
  br i1 %590, label %591, label %593, !dbg !3021

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3017
  store i8 39, ptr %592, align 1, !dbg !3017, !tbaa !991
  br label %593, !dbg !3017

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %594, metadata !2530, metadata !DIExpression()), !dbg !2582
  %595 = icmp ult i64 %594, %583, !dbg !3022
  br i1 %595, label %596, label %598, !dbg !3025

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3022
  store i8 39, ptr %597, align 1, !dbg !3022, !tbaa !991
  br label %598, !dbg !3022

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %599, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2582
  br label %600, !dbg !3026

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2691
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2582
  call void @llvm.dbg.value(metadata i8 %609, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %608, metadata !2530, metadata !DIExpression()), !dbg !2582
  %610 = icmp ult i64 %608, %601, !dbg !3027
  br i1 %610, label %611, label %613, !dbg !3030

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3027
  store i8 %602, ptr %612, align 1, !dbg !3027, !tbaa !991
  br label %613, !dbg !3027

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %614, metadata !2530, metadata !DIExpression()), !dbg !2582
  %615 = icmp eq i8 %603, 0, !dbg !3031
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3033
  call void @llvm.dbg.value(metadata i8 %616, metadata !2537, metadata !DIExpression()), !dbg !2582
  br label %617, !dbg !3034

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2977
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2582
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2587
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2591
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2592
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2683
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2988
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %624, metadata !2544, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 %623, metadata !2538, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %622, metadata !2537, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %621, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %620, metadata !2531, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %619, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %618, metadata !2523, metadata !DIExpression()), !dbg !2582
  %626 = add i64 %624, 1, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %626, metadata !2544, metadata !DIExpression()), !dbg !2681
  br label %138, !dbg !3036, !llvm.loop !3037

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2521, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %143, metadata !2537, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %142, metadata !2536, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %141, metadata !2531, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %140, metadata !2530, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %139, metadata !2523, metadata !DIExpression()), !dbg !2582
  %628 = icmp eq i64 %140, 0, !dbg !3039
  %629 = and i1 %133, %628, !dbg !3041
  %630 = xor i1 %629, true, !dbg !3041
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3041
  br i1 %631, label %632, label %670, !dbg !3041

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3042
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3042
  br i1 %636, label %637, label %646, !dbg !3042

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3044
  %639 = icmp eq i8 %638, 0, !dbg !3044
  br i1 %639, label %642, label %640, !dbg !3047

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3048
  br label %694, !dbg !3049

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3050
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3052
  br i1 %645, label %28, label %646, !dbg !3052

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3053
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3055
  br i1 %649, label %650, label %665, !dbg !3055

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2532, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %140, metadata !2530, metadata !DIExpression()), !dbg !2582
  %651 = load i8, ptr %120, align 1, !dbg !3056, !tbaa !991
  %652 = icmp eq i8 %651, 0, !dbg !3059
  br i1 %652, label %665, label %653, !dbg !3059

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2532, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %656, metadata !2530, metadata !DIExpression()), !dbg !2582
  %657 = icmp ult i64 %656, %146, !dbg !3060
  br i1 %657, label %658, label %660, !dbg !3063

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3060
  store i8 %654, ptr %659, align 1, !dbg !3060, !tbaa !991
  br label %660, !dbg !3060

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %661, metadata !2530, metadata !DIExpression()), !dbg !2582
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3064
  call void @llvm.dbg.value(metadata ptr %662, metadata !2532, metadata !DIExpression()), !dbg !2582
  %663 = load i8, ptr %662, align 1, !dbg !3056, !tbaa !991
  %664 = icmp eq i8 %663, 0, !dbg !3059
  br i1 %664, label %665, label %653, !dbg !3059, !llvm.loop !3065

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2664
  call void @llvm.dbg.value(metadata i64 %666, metadata !2530, metadata !DIExpression()), !dbg !2582
  %667 = icmp ult i64 %666, %146, !dbg !3067
  br i1 %667, label %668, label %694, !dbg !3069

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3070
  store i8 0, ptr %669, align 1, !dbg !3071, !tbaa !991
  br label %694, !dbg !3070

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2581), !dbg !3072
  %672 = icmp eq i8 %124, 0, !dbg !3073
  %673 = select i1 %672, i32 2, i32 4, !dbg !3073
  br label %684, !dbg !3073

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3073
  %678 = select i1 %677, i32 2, i32 4, !dbg !3073
  br label %679, !dbg !3075

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2581), !dbg !3072
  %683 = icmp eq i32 %116, 2, !dbg !3075
  br i1 %683, label %684, label %688, !dbg !3073

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3073

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2524, metadata !DIExpression()), !dbg !2582
  %692 = and i32 %5, -3, !dbg !3076
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3077
  br label %694, !dbg !3078

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3079
}

; Function Attrs: nounwind
declare !dbg !3080 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3083 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3086 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3087 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr %2, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr %0, metadata !3095, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr null, metadata !3101, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %2, metadata !3102, metadata !DIExpression()), !dbg !3108
  %4 = icmp eq ptr %2, null, !dbg !3110
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %5, metadata !3103, metadata !DIExpression()), !dbg !3108
  %6 = tail call ptr @__errno_location() #41, !dbg !3111
  %7 = load i32, ptr %6, align 4, !dbg !3111, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %7, metadata !3104, metadata !DIExpression()), !dbg !3108
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3112
  %9 = load i32, ptr %8, align 4, !dbg !3112, !tbaa !2464
  %10 = or i32 %9, 1, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %10, metadata !3105, metadata !DIExpression()), !dbg !3108
  %11 = load i32, ptr %5, align 8, !dbg !3114, !tbaa !2414
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3115
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3116
  %14 = load ptr, ptr %13, align 8, !dbg !3116, !tbaa !2485
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3117
  %16 = load ptr, ptr %15, align 8, !dbg !3117, !tbaa !2488
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3118
  %18 = add i64 %17, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %18, metadata !3106, metadata !DIExpression()), !dbg !3108
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3120
  call void @llvm.dbg.value(metadata ptr %19, metadata !3107, metadata !DIExpression()), !dbg !3108
  %20 = load i32, ptr %5, align 8, !dbg !3121, !tbaa !2414
  %21 = load ptr, ptr %13, align 8, !dbg !3122, !tbaa !2485
  %22 = load ptr, ptr %15, align 8, !dbg !3123, !tbaa !2488
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3124
  store i32 %7, ptr %6, align 4, !dbg !3125, !tbaa !982
  ret ptr %19, !dbg !3126
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3096 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3095, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata ptr %2, metadata !3101, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata ptr %3, metadata !3102, metadata !DIExpression()), !dbg !3127
  %5 = icmp eq ptr %3, null, !dbg !3128
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3128
  call void @llvm.dbg.value(metadata ptr %6, metadata !3103, metadata !DIExpression()), !dbg !3127
  %7 = tail call ptr @__errno_location() #41, !dbg !3129
  %8 = load i32, ptr %7, align 4, !dbg !3129, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %8, metadata !3104, metadata !DIExpression()), !dbg !3127
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3130
  %10 = load i32, ptr %9, align 4, !dbg !3130, !tbaa !2464
  %11 = icmp eq ptr %2, null, !dbg !3131
  %12 = zext i1 %11 to i32, !dbg !3131
  %13 = or i32 %10, %12, !dbg !3132
  call void @llvm.dbg.value(metadata i32 %13, metadata !3105, metadata !DIExpression()), !dbg !3127
  %14 = load i32, ptr %6, align 8, !dbg !3133, !tbaa !2414
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3134
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3135
  %17 = load ptr, ptr %16, align 8, !dbg !3135, !tbaa !2485
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3136
  %19 = load ptr, ptr %18, align 8, !dbg !3136, !tbaa !2488
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3137
  %21 = add i64 %20, 1, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %21, metadata !3106, metadata !DIExpression()), !dbg !3127
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3139
  call void @llvm.dbg.value(metadata ptr %22, metadata !3107, metadata !DIExpression()), !dbg !3127
  %23 = load i32, ptr %6, align 8, !dbg !3140, !tbaa !2414
  %24 = load ptr, ptr %16, align 8, !dbg !3141, !tbaa !2485
  %25 = load ptr, ptr %18, align 8, !dbg !3142, !tbaa !2488
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3143
  store i32 %8, ptr %7, align 4, !dbg !3144, !tbaa !982
  br i1 %11, label %28, label %27, !dbg !3145

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3146, !tbaa !3148
  br label %28, !dbg !3149

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3150
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3151 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3156, !tbaa !911
  call void @llvm.dbg.value(metadata ptr %1, metadata !3153, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32 1, metadata !3154, metadata !DIExpression()), !dbg !3158
  %2 = load i32, ptr @nslots, align 4, !tbaa !982
  call void @llvm.dbg.value(metadata i32 1, metadata !3154, metadata !DIExpression()), !dbg !3158
  %3 = icmp sgt i32 %2, 1, !dbg !3159
  br i1 %3, label %4, label %6, !dbg !3161

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3159
  br label %10, !dbg !3161

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3162
  %8 = load ptr, ptr %7, align 8, !dbg !3162, !tbaa !3164
  %9 = icmp eq ptr %8, @slot0, !dbg !3166
  br i1 %9, label %17, label %16, !dbg !3167

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3154, metadata !DIExpression()), !dbg !3158
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3168
  %13 = load ptr, ptr %12, align 8, !dbg !3168, !tbaa !3164
  tail call void @free(ptr noundef %13) #38, !dbg !3169
  %14 = add nuw nsw i64 %11, 1, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %14, metadata !3154, metadata !DIExpression()), !dbg !3158
  %15 = icmp eq i64 %14, %5, !dbg !3159
  br i1 %15, label %6, label %10, !dbg !3161, !llvm.loop !3171

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3173
  store i64 256, ptr @slotvec0, align 8, !dbg !3175, !tbaa !3176
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3177, !tbaa !3164
  br label %17, !dbg !3178

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3179
  br i1 %18, label %20, label %19, !dbg !3181

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3182
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3184, !tbaa !911
  br label %20, !dbg !3185

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3186, !tbaa !982
  ret void, !dbg !3187
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3188 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3191 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3193, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata ptr %1, metadata !3194, metadata !DIExpression()), !dbg !3195
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3196
  ret ptr %3, !dbg !3197
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3198 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3202, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %1, metadata !3203, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %2, metadata !3204, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %3, metadata !3205, metadata !DIExpression()), !dbg !3218
  %6 = tail call ptr @__errno_location() #41, !dbg !3219
  %7 = load i32, ptr %6, align 4, !dbg !3219, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %7, metadata !3206, metadata !DIExpression()), !dbg !3218
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3220, !tbaa !911
  call void @llvm.dbg.value(metadata ptr %8, metadata !3207, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3208, metadata !DIExpression()), !dbg !3218
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3221
  br i1 %9, label %10, label %11, !dbg !3221

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3223
  unreachable, !dbg !3223

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3224, !tbaa !982
  %13 = icmp sgt i32 %12, %0, !dbg !3225
  br i1 %13, label %32, label %14, !dbg !3226

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3227
  call void @llvm.dbg.value(metadata i1 %15, metadata !3209, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3229
  %16 = sext i32 %12 to i64, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %16, metadata !3212, metadata !DIExpression()), !dbg !3228
  store i64 %16, ptr %5, align 8, !dbg !3231, !tbaa !3148
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3232
  %18 = add nuw nsw i32 %0, 1, !dbg !3233
  %19 = sub i32 %18, %12, !dbg !3234
  %20 = sext i32 %19 to i64, !dbg !3235
  call void @llvm.dbg.value(metadata ptr %5, metadata !3212, metadata !DIExpression(DW_OP_deref)), !dbg !3228
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3236
  call void @llvm.dbg.value(metadata ptr %21, metadata !3207, metadata !DIExpression()), !dbg !3218
  store ptr %21, ptr @slotvec, align 8, !dbg !3237, !tbaa !911
  br i1 %15, label %22, label %23, !dbg !3238

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3239, !tbaa.struct !3241
  br label %23, !dbg !3242

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3243, !tbaa !982
  %25 = sext i32 %24 to i64, !dbg !3244
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3244
  %27 = load i64, ptr %5, align 8, !dbg !3245, !tbaa !3148
  call void @llvm.dbg.value(metadata i64 %27, metadata !3212, metadata !DIExpression()), !dbg !3228
  %28 = sub nsw i64 %27, %25, !dbg !3246
  %29 = shl i64 %28, 4, !dbg !3247
  call void @llvm.dbg.value(metadata ptr %26, metadata !2621, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %29, metadata !2625, metadata !DIExpression()), !dbg !3248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3250
  %30 = load i64, ptr %5, align 8, !dbg !3251, !tbaa !3148
  call void @llvm.dbg.value(metadata i64 %30, metadata !3212, metadata !DIExpression()), !dbg !3228
  %31 = trunc i64 %30 to i32, !dbg !3251
  store i32 %31, ptr @nslots, align 4, !dbg !3252, !tbaa !982
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3253
  br label %32, !dbg !3254

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3218
  call void @llvm.dbg.value(metadata ptr %33, metadata !3207, metadata !DIExpression()), !dbg !3218
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3255
  %36 = load i64, ptr %35, align 8, !dbg !3256, !tbaa !3176
  call void @llvm.dbg.value(metadata i64 %36, metadata !3213, metadata !DIExpression()), !dbg !3257
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3258
  %38 = load ptr, ptr %37, align 8, !dbg !3258, !tbaa !3164
  call void @llvm.dbg.value(metadata ptr %38, metadata !3215, metadata !DIExpression()), !dbg !3257
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3259
  %40 = load i32, ptr %39, align 4, !dbg !3259, !tbaa !2464
  %41 = or i32 %40, 1, !dbg !3260
  call void @llvm.dbg.value(metadata i32 %41, metadata !3216, metadata !DIExpression()), !dbg !3257
  %42 = load i32, ptr %3, align 8, !dbg !3261, !tbaa !2414
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3262
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3263
  %45 = load ptr, ptr %44, align 8, !dbg !3263, !tbaa !2485
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3264
  %47 = load ptr, ptr %46, align 8, !dbg !3264, !tbaa !2488
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %48, metadata !3217, metadata !DIExpression()), !dbg !3257
  %49 = icmp ugt i64 %36, %48, !dbg !3266
  br i1 %49, label %60, label %50, !dbg !3268

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i64 %51, metadata !3213, metadata !DIExpression()), !dbg !3257
  store i64 %51, ptr %35, align 8, !dbg !3271, !tbaa !3176
  %52 = icmp eq ptr %38, @slot0, !dbg !3272
  br i1 %52, label %54, label %53, !dbg !3274

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3275
  br label %54, !dbg !3275

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3276
  call void @llvm.dbg.value(metadata ptr %55, metadata !3215, metadata !DIExpression()), !dbg !3257
  store ptr %55, ptr %37, align 8, !dbg !3277, !tbaa !3164
  %56 = load i32, ptr %3, align 8, !dbg !3278, !tbaa !2414
  %57 = load ptr, ptr %44, align 8, !dbg !3279, !tbaa !2485
  %58 = load ptr, ptr %46, align 8, !dbg !3280, !tbaa !2488
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3281
  br label %60, !dbg !3282

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3257
  call void @llvm.dbg.value(metadata ptr %61, metadata !3215, metadata !DIExpression()), !dbg !3257
  store i32 %7, ptr %6, align 4, !dbg !3283, !tbaa !982
  ret ptr %61, !dbg !3284
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3289, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata ptr %1, metadata !3290, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %2, metadata !3291, metadata !DIExpression()), !dbg !3292
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3293
  ret ptr %4, !dbg !3294
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3295 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 0, metadata !3193, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3299
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3301
  ret ptr %2, !dbg !3302
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3303 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3307, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i64 %1, metadata !3308, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 0, metadata !3289, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata ptr %0, metadata !3290, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3310
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3312
  ret ptr %3, !dbg !3313
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3314 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3318, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 %1, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata ptr %2, metadata !3320, metadata !DIExpression()), !dbg !3322
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3323
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3321, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3325), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3334, metadata !DIExpression()), !dbg !3337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3337, !alias.scope !3325
  %5 = icmp eq i32 %1, 10, !dbg !3338
  br i1 %5, label %6, label %7, !dbg !3340

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3341, !noalias !3325
  unreachable, !dbg !3341

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3342, !tbaa !2414, !alias.scope !3325
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3343
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3344
  ret ptr %8, !dbg !3345
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3346 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3350, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %1, metadata !3351, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata ptr %2, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %3, metadata !3353, metadata !DIExpression()), !dbg !3355
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3356
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3354, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3358), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3334, metadata !DIExpression()), !dbg !3364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3364, !alias.scope !3358
  %6 = icmp eq i32 %1, 10, !dbg !3365
  br i1 %6, label %7, label %8, !dbg !3366

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3367, !noalias !3358
  unreachable, !dbg !3367

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3368, !tbaa !2414, !alias.scope !3358
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3369
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3370
  ret ptr %9, !dbg !3371
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3372 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3376, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %1, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 0, metadata !3318, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i32 %0, metadata !3319, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %1, metadata !3320, metadata !DIExpression()), !dbg !3379
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3381
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3321, metadata !DIExpression()), !dbg !3382
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3383), !dbg !3386
  call void @llvm.dbg.value(metadata i32 %0, metadata !3329, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3334, metadata !DIExpression()), !dbg !3389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3389, !alias.scope !3383
  %4 = icmp eq i32 %0, 10, !dbg !3390
  br i1 %4, label %5, label %6, !dbg !3391

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3392, !noalias !3383
  unreachable, !dbg !3392

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3393, !tbaa !2414, !alias.scope !3383
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3394
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3395
  ret ptr %7, !dbg !3396
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3397 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3401, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %1, metadata !3402, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %2, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3350, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata ptr %1, metadata !3352, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %2, metadata !3353, metadata !DIExpression()), !dbg !3405
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3407
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3354, metadata !DIExpression()), !dbg !3408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3409), !dbg !3412
  call void @llvm.dbg.value(metadata i32 %0, metadata !3329, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3334, metadata !DIExpression()), !dbg !3415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3415, !alias.scope !3409
  %5 = icmp eq i32 %0, 10, !dbg !3416
  br i1 %5, label %6, label %7, !dbg !3417

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3418, !noalias !3409
  unreachable, !dbg !3418

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3419, !tbaa !2414, !alias.scope !3409
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3420
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3421
  ret ptr %8, !dbg !3422
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3423 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %1, metadata !3428, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8 %2, metadata !3429, metadata !DIExpression()), !dbg !3431
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3432
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3430, metadata !DIExpression()), !dbg !3433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3434, !tbaa.struct !3435
  call void @llvm.dbg.value(metadata ptr %4, metadata !2431, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i8 %2, metadata !2432, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 1, metadata !2433, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i8 %2, metadata !2434, metadata !DIExpression()), !dbg !3436
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3438
  %6 = lshr i8 %2, 5, !dbg !3439
  %7 = zext i8 %6 to i64, !dbg !3439
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3440
  call void @llvm.dbg.value(metadata ptr %8, metadata !2435, metadata !DIExpression()), !dbg !3436
  %9 = and i8 %2, 31, !dbg !3441
  %10 = zext i8 %9 to i32, !dbg !3441
  call void @llvm.dbg.value(metadata i32 %10, metadata !2437, metadata !DIExpression()), !dbg !3436
  %11 = load i32, ptr %8, align 4, !dbg !3442, !tbaa !982
  %12 = lshr i32 %11, %10, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %12, metadata !2438, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3436
  %13 = and i32 %12, 1, !dbg !3444
  %14 = xor i32 %13, 1, !dbg !3444
  %15 = shl nuw i32 %14, %10, !dbg !3445
  %16 = xor i32 %15, %11, !dbg !3446
  store i32 %16, ptr %8, align 4, !dbg !3446, !tbaa !982
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3447
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3448
  ret ptr %17, !dbg !3449
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3450 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8 %1, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 -1, metadata !3428, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8 %1, metadata !3429, metadata !DIExpression()), !dbg !3457
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3459
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3430, metadata !DIExpression()), !dbg !3460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3461, !tbaa.struct !3435
  call void @llvm.dbg.value(metadata ptr %3, metadata !2431, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8 %1, metadata !2432, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i32 1, metadata !2433, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8 %1, metadata !2434, metadata !DIExpression()), !dbg !3462
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3464
  %5 = lshr i8 %1, 5, !dbg !3465
  %6 = zext i8 %5 to i64, !dbg !3465
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3466
  call void @llvm.dbg.value(metadata ptr %7, metadata !2435, metadata !DIExpression()), !dbg !3462
  %8 = and i8 %1, 31, !dbg !3467
  %9 = zext i8 %8 to i32, !dbg !3467
  call void @llvm.dbg.value(metadata i32 %9, metadata !2437, metadata !DIExpression()), !dbg !3462
  %10 = load i32, ptr %7, align 4, !dbg !3468, !tbaa !982
  %11 = lshr i32 %10, %9, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %11, metadata !2438, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3462
  %12 = and i32 %11, 1, !dbg !3470
  %13 = xor i32 %12, 1, !dbg !3470
  %14 = shl nuw i32 %13, %9, !dbg !3471
  %15 = xor i32 %14, %10, !dbg !3472
  store i32 %15, ptr %7, align 4, !dbg !3472, !tbaa !982
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3473
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3474
  ret ptr %16, !dbg !3475
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3476 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata ptr %0, metadata !3454, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 58, metadata !3455, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 -1, metadata !3428, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 58, metadata !3429, metadata !DIExpression()), !dbg !3482
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !3484
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3430, metadata !DIExpression()), !dbg !3485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3486, !tbaa.struct !3435
  call void @llvm.dbg.value(metadata ptr %2, metadata !2431, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 58, metadata !2432, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 1, metadata !2433, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 58, metadata !2434, metadata !DIExpression()), !dbg !3487
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3489
  call void @llvm.dbg.value(metadata ptr %3, metadata !2435, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 26, metadata !2437, metadata !DIExpression()), !dbg !3487
  %4 = load i32, ptr %3, align 4, !dbg !3490, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %4, metadata !2438, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3487
  %5 = or i32 %4, 67108864, !dbg !3491
  store i32 %5, ptr %3, align 4, !dbg !3491, !tbaa !982
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3492
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !3493
  ret ptr %6, !dbg !3494
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3495 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3497, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %1, metadata !3498, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %1, metadata !3428, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8 58, metadata !3429, metadata !DIExpression()), !dbg !3500
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3502
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3430, metadata !DIExpression()), !dbg !3503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3504, !tbaa.struct !3435
  call void @llvm.dbg.value(metadata ptr %3, metadata !2431, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 58, metadata !2432, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 1, metadata !2433, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 58, metadata !2434, metadata !DIExpression()), !dbg !3505
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3507
  call void @llvm.dbg.value(metadata ptr %4, metadata !2435, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 26, metadata !2437, metadata !DIExpression()), !dbg !3505
  %5 = load i32, ptr %4, align 4, !dbg !3508, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %5, metadata !2438, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3505
  %6 = or i32 %5, 67108864, !dbg !3509
  store i32 %6, ptr %4, align 4, !dbg !3509, !tbaa !982
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3510
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3511
  ret ptr %7, !dbg !3512
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3513 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3334, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3519
  call void @llvm.dbg.value(metadata i32 %0, metadata !3515, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i32 %1, metadata !3516, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata ptr %2, metadata !3517, metadata !DIExpression()), !dbg !3521
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3522
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3518, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i32 0, metadata !3334, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3524
  %5 = icmp eq i32 %1, 10, !dbg !3525
  br i1 %5, label %6, label %7, !dbg !3526

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3527, !noalias !3528
  unreachable, !dbg !3527

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3334, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3524
  store i32 %1, ptr %4, align 8, !dbg !3531, !tbaa.struct !3435
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3531
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3531
  call void @llvm.dbg.value(metadata ptr %4, metadata !2431, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8 58, metadata !2432, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 1, metadata !2433, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8 58, metadata !2434, metadata !DIExpression()), !dbg !3532
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3534
  call void @llvm.dbg.value(metadata ptr %9, metadata !2435, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 26, metadata !2437, metadata !DIExpression()), !dbg !3532
  %10 = load i32, ptr %9, align 4, !dbg !3535, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %10, metadata !2438, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3532
  %11 = or i32 %10, 67108864, !dbg !3536
  store i32 %11, ptr %9, align 4, !dbg !3536, !tbaa !982
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3537
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3538
  ret ptr %12, !dbg !3539
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3540 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3544, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %1, metadata !3545, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %2, metadata !3546, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %3, metadata !3547, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i32 %0, metadata !3549, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %1, metadata !3554, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %2, metadata !3555, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %3, metadata !3556, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 -1, metadata !3557, metadata !DIExpression()), !dbg !3559
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3561
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3558, metadata !DIExpression()), !dbg !3562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3563, !tbaa.struct !3435
  call void @llvm.dbg.value(metadata ptr %5, metadata !2471, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata ptr %1, metadata !2472, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata ptr %2, metadata !2473, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata ptr %5, metadata !2471, metadata !DIExpression()), !dbg !3564
  store i32 10, ptr %5, align 8, !dbg !3566, !tbaa !2414
  %6 = icmp ne ptr %1, null, !dbg !3567
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3568
  br i1 %8, label %10, label %9, !dbg !3568

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3569
  unreachable, !dbg !3569

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3570
  store ptr %1, ptr %11, align 8, !dbg !3571, !tbaa !2485
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3572
  store ptr %2, ptr %12, align 8, !dbg !3573, !tbaa !2488
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3574
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3575
  ret ptr %13, !dbg !3576
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3550 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3549, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr %1, metadata !3554, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr %2, metadata !3555, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr %3, metadata !3556, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 %4, metadata !3557, metadata !DIExpression()), !dbg !3577
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3578
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3558, metadata !DIExpression()), !dbg !3579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3580, !tbaa.struct !3435
  call void @llvm.dbg.value(metadata ptr %6, metadata !2471, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %1, metadata !2472, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %2, metadata !2473, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %6, metadata !2471, metadata !DIExpression()), !dbg !3581
  store i32 10, ptr %6, align 8, !dbg !3583, !tbaa !2414
  %7 = icmp ne ptr %1, null, !dbg !3584
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3585
  br i1 %9, label %11, label %10, !dbg !3585

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3586
  unreachable, !dbg !3586

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3587
  store ptr %1, ptr %12, align 8, !dbg !3588, !tbaa !2485
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3589
  store ptr %2, ptr %13, align 8, !dbg !3590, !tbaa !2488
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3591
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3592
  ret ptr %14, !dbg !3593
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3594 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3598, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata ptr %1, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata ptr %2, metadata !3600, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr %0, metadata !3545, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr %1, metadata !3546, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr %2, metadata !3547, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 0, metadata !3549, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %0, metadata !3554, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %1, metadata !3555, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %2, metadata !3556, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i64 -1, metadata !3557, metadata !DIExpression()), !dbg !3604
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3606
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3558, metadata !DIExpression()), !dbg !3607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3608, !tbaa.struct !3435
  call void @llvm.dbg.value(metadata ptr %4, metadata !2471, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %0, metadata !2472, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %1, metadata !2473, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %4, metadata !2471, metadata !DIExpression()), !dbg !3609
  store i32 10, ptr %4, align 8, !dbg !3611, !tbaa !2414
  %5 = icmp ne ptr %0, null, !dbg !3612
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3613
  br i1 %7, label %9, label %8, !dbg !3613

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3614
  unreachable, !dbg !3614

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3615
  store ptr %0, ptr %10, align 8, !dbg !3616, !tbaa !2485
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3617
  store ptr %1, ptr %11, align 8, !dbg !3618, !tbaa !2488
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3619
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3620
  ret ptr %12, !dbg !3621
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3622 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %1, metadata !3627, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %2, metadata !3628, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %3, metadata !3629, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 0, metadata !3549, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %0, metadata !3554, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %1, metadata !3555, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %2, metadata !3556, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %3, metadata !3557, metadata !DIExpression()), !dbg !3631
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3633
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3558, metadata !DIExpression()), !dbg !3634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3635, !tbaa.struct !3435
  call void @llvm.dbg.value(metadata ptr %5, metadata !2471, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %0, metadata !2472, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %1, metadata !2473, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %5, metadata !2471, metadata !DIExpression()), !dbg !3636
  store i32 10, ptr %5, align 8, !dbg !3638, !tbaa !2414
  %6 = icmp ne ptr %0, null, !dbg !3639
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3640
  br i1 %8, label %10, label %9, !dbg !3640

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3641
  unreachable, !dbg !3641

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3642
  store ptr %0, ptr %11, align 8, !dbg !3643, !tbaa !2485
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3644
  store ptr %1, ptr %12, align 8, !dbg !3645, !tbaa !2488
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3646
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3647
  ret ptr %13, !dbg !3648
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3649 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3653, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %1, metadata !3654, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %2, metadata !3655, metadata !DIExpression()), !dbg !3656
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3657
  ret ptr %4, !dbg !3658
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3659 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3663, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %1, metadata !3664, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 0, metadata !3653, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr %0, metadata !3654, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 %1, metadata !3655, metadata !DIExpression()), !dbg !3666
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3668
  ret ptr %3, !dbg !3669
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3670 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3674, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %1, metadata !3675, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %0, metadata !3653, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %1, metadata !3654, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 -1, metadata !3655, metadata !DIExpression()), !dbg !3677
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3679
  ret ptr %3, !dbg !3680
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3681 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3685, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3674, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr %0, metadata !3675, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i32 0, metadata !3653, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata ptr %0, metadata !3654, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 -1, metadata !3655, metadata !DIExpression()), !dbg !3689
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3691
  ret ptr %2, !dbg !3692
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3693 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3732, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %1, metadata !3733, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %2, metadata !3734, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %3, metadata !3735, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %4, metadata !3736, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %5, metadata !3737, metadata !DIExpression()), !dbg !3738
  %7 = icmp eq ptr %1, null, !dbg !3739
  br i1 %7, label %10, label %8, !dbg !3741

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.85, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3742
  br label %12, !dbg !3742

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.86, ptr noundef %2, ptr noundef %3) #38, !dbg !3743
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.3.88, i32 noundef 5) #38, !dbg !3744
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3744
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %0), !dbg !3745
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.5.90, i32 noundef 5) #38, !dbg !3746
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.91) #38, !dbg !3746
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %0), !dbg !3747
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
  ], !dbg !3748

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.7.92, i32 noundef 5) #38, !dbg !3749
  %21 = load ptr, ptr %4, align 8, !dbg !3749, !tbaa !911
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3749
  br label %147, !dbg !3751

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.8.93, i32 noundef 5) #38, !dbg !3752
  %25 = load ptr, ptr %4, align 8, !dbg !3752, !tbaa !911
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3752
  %27 = load ptr, ptr %26, align 8, !dbg !3752, !tbaa !911
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3752
  br label %147, !dbg !3753

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.9.94, i32 noundef 5) #38, !dbg !3754
  %31 = load ptr, ptr %4, align 8, !dbg !3754, !tbaa !911
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3754
  %33 = load ptr, ptr %32, align 8, !dbg !3754, !tbaa !911
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3754
  %35 = load ptr, ptr %34, align 8, !dbg !3754, !tbaa !911
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3754
  br label %147, !dbg !3755

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.10.95, i32 noundef 5) #38, !dbg !3756
  %39 = load ptr, ptr %4, align 8, !dbg !3756, !tbaa !911
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3756
  %41 = load ptr, ptr %40, align 8, !dbg !3756, !tbaa !911
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3756
  %43 = load ptr, ptr %42, align 8, !dbg !3756, !tbaa !911
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3756
  %45 = load ptr, ptr %44, align 8, !dbg !3756, !tbaa !911
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3756
  br label %147, !dbg !3757

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.11.96, i32 noundef 5) #38, !dbg !3758
  %49 = load ptr, ptr %4, align 8, !dbg !3758, !tbaa !911
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3758
  %51 = load ptr, ptr %50, align 8, !dbg !3758, !tbaa !911
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3758
  %53 = load ptr, ptr %52, align 8, !dbg !3758, !tbaa !911
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3758
  %55 = load ptr, ptr %54, align 8, !dbg !3758, !tbaa !911
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3758
  %57 = load ptr, ptr %56, align 8, !dbg !3758, !tbaa !911
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3758
  br label %147, !dbg !3759

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.12.97, i32 noundef 5) #38, !dbg !3760
  %61 = load ptr, ptr %4, align 8, !dbg !3760, !tbaa !911
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3760
  %63 = load ptr, ptr %62, align 8, !dbg !3760, !tbaa !911
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3760
  %65 = load ptr, ptr %64, align 8, !dbg !3760, !tbaa !911
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3760
  %67 = load ptr, ptr %66, align 8, !dbg !3760, !tbaa !911
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3760
  %69 = load ptr, ptr %68, align 8, !dbg !3760, !tbaa !911
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3760
  %71 = load ptr, ptr %70, align 8, !dbg !3760, !tbaa !911
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3760
  br label %147, !dbg !3761

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.13.98, i32 noundef 5) #38, !dbg !3762
  %75 = load ptr, ptr %4, align 8, !dbg !3762, !tbaa !911
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3762
  %77 = load ptr, ptr %76, align 8, !dbg !3762, !tbaa !911
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3762
  %79 = load ptr, ptr %78, align 8, !dbg !3762, !tbaa !911
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3762
  %81 = load ptr, ptr %80, align 8, !dbg !3762, !tbaa !911
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3762
  %83 = load ptr, ptr %82, align 8, !dbg !3762, !tbaa !911
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3762
  %85 = load ptr, ptr %84, align 8, !dbg !3762, !tbaa !911
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3762
  %87 = load ptr, ptr %86, align 8, !dbg !3762, !tbaa !911
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3762
  br label %147, !dbg !3763

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.14.99, i32 noundef 5) #38, !dbg !3764
  %91 = load ptr, ptr %4, align 8, !dbg !3764, !tbaa !911
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3764
  %93 = load ptr, ptr %92, align 8, !dbg !3764, !tbaa !911
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3764
  %95 = load ptr, ptr %94, align 8, !dbg !3764, !tbaa !911
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3764
  %97 = load ptr, ptr %96, align 8, !dbg !3764, !tbaa !911
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3764
  %99 = load ptr, ptr %98, align 8, !dbg !3764, !tbaa !911
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3764
  %101 = load ptr, ptr %100, align 8, !dbg !3764, !tbaa !911
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3764
  %103 = load ptr, ptr %102, align 8, !dbg !3764, !tbaa !911
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3764
  %105 = load ptr, ptr %104, align 8, !dbg !3764, !tbaa !911
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3764
  br label %147, !dbg !3765

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.15.100, i32 noundef 5) #38, !dbg !3766
  %109 = load ptr, ptr %4, align 8, !dbg !3766, !tbaa !911
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3766
  %111 = load ptr, ptr %110, align 8, !dbg !3766, !tbaa !911
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3766
  %113 = load ptr, ptr %112, align 8, !dbg !3766, !tbaa !911
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3766
  %115 = load ptr, ptr %114, align 8, !dbg !3766, !tbaa !911
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3766
  %117 = load ptr, ptr %116, align 8, !dbg !3766, !tbaa !911
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3766
  %119 = load ptr, ptr %118, align 8, !dbg !3766, !tbaa !911
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3766
  %121 = load ptr, ptr %120, align 8, !dbg !3766, !tbaa !911
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3766
  %123 = load ptr, ptr %122, align 8, !dbg !3766, !tbaa !911
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3766
  %125 = load ptr, ptr %124, align 8, !dbg !3766, !tbaa !911
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3766
  br label %147, !dbg !3767

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.16.101, i32 noundef 5) #38, !dbg !3768
  %129 = load ptr, ptr %4, align 8, !dbg !3768, !tbaa !911
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3768
  %131 = load ptr, ptr %130, align 8, !dbg !3768, !tbaa !911
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3768
  %133 = load ptr, ptr %132, align 8, !dbg !3768, !tbaa !911
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3768
  %135 = load ptr, ptr %134, align 8, !dbg !3768, !tbaa !911
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3768
  %137 = load ptr, ptr %136, align 8, !dbg !3768, !tbaa !911
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3768
  %139 = load ptr, ptr %138, align 8, !dbg !3768, !tbaa !911
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3768
  %141 = load ptr, ptr %140, align 8, !dbg !3768, !tbaa !911
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3768
  %143 = load ptr, ptr %142, align 8, !dbg !3768, !tbaa !911
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3768
  %145 = load ptr, ptr %144, align 8, !dbg !3768, !tbaa !911
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3768
  br label %147, !dbg !3769

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3770
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3771 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3775, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata ptr %1, metadata !3776, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata ptr %2, metadata !3777, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata ptr %3, metadata !3778, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata ptr %4, metadata !3779, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 0, metadata !3780, metadata !DIExpression()), !dbg !3781
  br label %6, !dbg !3782

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3784
  call void @llvm.dbg.value(metadata i64 %7, metadata !3780, metadata !DIExpression()), !dbg !3781
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3785
  %9 = load ptr, ptr %8, align 8, !dbg !3785, !tbaa !911
  %10 = icmp eq ptr %9, null, !dbg !3787
  %11 = add i64 %7, 1, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %11, metadata !3780, metadata !DIExpression()), !dbg !3781
  br i1 %10, label %12, label %6, !dbg !3787, !llvm.loop !3789

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3791
  ret void, !dbg !3792
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3793 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3805, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %1, metadata !3806, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %2, metadata !3807, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %3, metadata !3808, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %4, metadata !3809, metadata !DIExpression()), !dbg !3813
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3814
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3811, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i64 0, metadata !3810, metadata !DIExpression()), !dbg !3813
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3810, metadata !DIExpression()), !dbg !3813
  %10 = icmp ult i32 %9, 41, !dbg !3816
  br i1 %10, label %11, label %16, !dbg !3816

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3816
  %13 = zext i32 %9 to i64, !dbg !3816
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3816
  %15 = add nuw nsw i32 %9, 8, !dbg !3816
  store i32 %15, ptr %4, align 8, !dbg !3816
  br label %19, !dbg !3816

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3816
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3816
  store ptr %18, ptr %7, align 8, !dbg !3816
  br label %19, !dbg !3816

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3816
  %22 = load ptr, ptr %21, align 8, !dbg !3816
  store ptr %22, ptr %6, align 16, !dbg !3819, !tbaa !911
  %23 = icmp eq ptr %22, null, !dbg !3820
  br i1 %23, label %128, label %24, !dbg !3821

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 1, metadata !3810, metadata !DIExpression()), !dbg !3813
  %25 = icmp ult i32 %20, 41, !dbg !3816
  br i1 %25, label %29, label %26, !dbg !3816

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3816
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3816
  store ptr %28, ptr %7, align 8, !dbg !3816
  br label %34, !dbg !3816

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3816
  %31 = zext i32 %20 to i64, !dbg !3816
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3816
  %33 = add nuw nsw i32 %20, 8, !dbg !3816
  store i32 %33, ptr %4, align 8, !dbg !3816
  br label %34, !dbg !3816

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3816
  %37 = load ptr, ptr %36, align 8, !dbg !3816
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3822
  store ptr %37, ptr %38, align 8, !dbg !3819, !tbaa !911
  %39 = icmp eq ptr %37, null, !dbg !3820
  br i1 %39, label %128, label %40, !dbg !3821

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 2, metadata !3810, metadata !DIExpression()), !dbg !3813
  %41 = icmp ult i32 %35, 41, !dbg !3816
  br i1 %41, label %45, label %42, !dbg !3816

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3816
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3816
  store ptr %44, ptr %7, align 8, !dbg !3816
  br label %50, !dbg !3816

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3816
  %47 = zext i32 %35 to i64, !dbg !3816
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3816
  %49 = add nuw nsw i32 %35, 8, !dbg !3816
  store i32 %49, ptr %4, align 8, !dbg !3816
  br label %50, !dbg !3816

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3816
  %53 = load ptr, ptr %52, align 8, !dbg !3816
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3822
  store ptr %53, ptr %54, align 16, !dbg !3819, !tbaa !911
  %55 = icmp eq ptr %53, null, !dbg !3820
  br i1 %55, label %128, label %56, !dbg !3821

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 3, metadata !3810, metadata !DIExpression()), !dbg !3813
  %57 = icmp ult i32 %51, 41, !dbg !3816
  br i1 %57, label %61, label %58, !dbg !3816

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3816
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3816
  store ptr %60, ptr %7, align 8, !dbg !3816
  br label %66, !dbg !3816

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3816
  %63 = zext i32 %51 to i64, !dbg !3816
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3816
  %65 = add nuw nsw i32 %51, 8, !dbg !3816
  store i32 %65, ptr %4, align 8, !dbg !3816
  br label %66, !dbg !3816

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3816
  %69 = load ptr, ptr %68, align 8, !dbg !3816
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3822
  store ptr %69, ptr %70, align 8, !dbg !3819, !tbaa !911
  %71 = icmp eq ptr %69, null, !dbg !3820
  br i1 %71, label %128, label %72, !dbg !3821

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 4, metadata !3810, metadata !DIExpression()), !dbg !3813
  %73 = icmp ult i32 %67, 41, !dbg !3816
  br i1 %73, label %77, label %74, !dbg !3816

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3816
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3816
  store ptr %76, ptr %7, align 8, !dbg !3816
  br label %82, !dbg !3816

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3816
  %79 = zext i32 %67 to i64, !dbg !3816
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3816
  %81 = add nuw nsw i32 %67, 8, !dbg !3816
  store i32 %81, ptr %4, align 8, !dbg !3816
  br label %82, !dbg !3816

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3816
  %85 = load ptr, ptr %84, align 8, !dbg !3816
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3822
  store ptr %85, ptr %86, align 16, !dbg !3819, !tbaa !911
  %87 = icmp eq ptr %85, null, !dbg !3820
  br i1 %87, label %128, label %88, !dbg !3821

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 5, metadata !3810, metadata !DIExpression()), !dbg !3813
  %89 = icmp ult i32 %83, 41, !dbg !3816
  br i1 %89, label %93, label %90, !dbg !3816

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3816
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3816
  store ptr %92, ptr %7, align 8, !dbg !3816
  br label %98, !dbg !3816

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3816
  %95 = zext i32 %83 to i64, !dbg !3816
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3816
  %97 = add nuw nsw i32 %83, 8, !dbg !3816
  store i32 %97, ptr %4, align 8, !dbg !3816
  br label %98, !dbg !3816

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3816
  %100 = load ptr, ptr %99, align 8, !dbg !3816
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3822
  store ptr %100, ptr %101, align 8, !dbg !3819, !tbaa !911
  %102 = icmp eq ptr %100, null, !dbg !3820
  br i1 %102, label %128, label %103, !dbg !3821

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3810, metadata !DIExpression()), !dbg !3813
  %104 = load ptr, ptr %7, align 8, !dbg !3816
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3816
  store ptr %105, ptr %7, align 8, !dbg !3816
  %106 = load ptr, ptr %104, align 8, !dbg !3816
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3822
  store ptr %106, ptr %107, align 16, !dbg !3819, !tbaa !911
  %108 = icmp eq ptr %106, null, !dbg !3820
  br i1 %108, label %128, label %109, !dbg !3821

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3810, metadata !DIExpression()), !dbg !3813
  %110 = load ptr, ptr %7, align 8, !dbg !3816
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3816
  store ptr %111, ptr %7, align 8, !dbg !3816
  %112 = load ptr, ptr %110, align 8, !dbg !3816
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3822
  store ptr %112, ptr %113, align 8, !dbg !3819, !tbaa !911
  %114 = icmp eq ptr %112, null, !dbg !3820
  br i1 %114, label %128, label %115, !dbg !3821

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3810, metadata !DIExpression()), !dbg !3813
  %116 = load ptr, ptr %7, align 8, !dbg !3816
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3816
  store ptr %117, ptr %7, align 8, !dbg !3816
  %118 = load ptr, ptr %116, align 8, !dbg !3816
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3822
  store ptr %118, ptr %119, align 16, !dbg !3819, !tbaa !911
  %120 = icmp eq ptr %118, null, !dbg !3820
  br i1 %120, label %128, label %121, !dbg !3821

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3810, metadata !DIExpression()), !dbg !3813
  %122 = load ptr, ptr %7, align 8, !dbg !3816
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3816
  store ptr %123, ptr %7, align 8, !dbg !3816
  %124 = load ptr, ptr %122, align 8, !dbg !3816
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3822
  store ptr %124, ptr %125, align 8, !dbg !3819, !tbaa !911
  %126 = icmp eq ptr %124, null, !dbg !3820
  %127 = select i1 %126, i64 9, i64 10, !dbg !3821
  br label %128, !dbg !3821

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3823
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3824
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3825
  ret void, !dbg !3825
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3826 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3830, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %1, metadata !3831, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %2, metadata !3832, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %3, metadata !3833, metadata !DIExpression()), !dbg !3839
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3840
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3834, metadata !DIExpression()), !dbg !3841
  call void @llvm.va_start(ptr nonnull %5), !dbg !3842
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3843
  call void @llvm.va_end(ptr nonnull %5), !dbg !3844
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3845
  ret void, !dbg !3845
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3846 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3847, !tbaa !911
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.89, ptr noundef %1), !dbg !3847
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.17.106, i32 noundef 5) #38, !dbg !3848
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.107) #38, !dbg !3848
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.19.108, i32 noundef 5) #38, !dbg !3849
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.109, ptr noundef nonnull @.str.21.110) #38, !dbg !3849
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.87, ptr noundef nonnull @.str.22.111, i32 noundef 5) #38, !dbg !3850
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.112) #38, !dbg !3850
  ret void, !dbg !3851
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3852 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3857, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %1, metadata !3858, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %2, metadata !3859, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata ptr %0, metadata !3861, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %1, metadata !3864, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %2, metadata !3865, metadata !DIExpression()), !dbg !3866
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3868
  call void @llvm.dbg.value(metadata ptr %4, metadata !3869, metadata !DIExpression()), !dbg !3874
  %5 = icmp eq ptr %4, null, !dbg !3876
  br i1 %5, label %6, label %7, !dbg !3878

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3879
  unreachable, !dbg !3879

7:                                                ; preds = %3
  ret ptr %4, !dbg !3880
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3862 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3861, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %1, metadata !3864, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %2, metadata !3865, metadata !DIExpression()), !dbg !3881
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3882
  call void @llvm.dbg.value(metadata ptr %4, metadata !3869, metadata !DIExpression()), !dbg !3883
  %5 = icmp eq ptr %4, null, !dbg !3885
  br i1 %5, label %6, label %7, !dbg !3886

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3887
  unreachable, !dbg !3887

7:                                                ; preds = %3
  ret ptr %4, !dbg !3888
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3889 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3893, metadata !DIExpression()), !dbg !3894
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3895
  call void @llvm.dbg.value(metadata ptr %2, metadata !3869, metadata !DIExpression()), !dbg !3896
  %3 = icmp eq ptr %2, null, !dbg !3898
  br i1 %3, label %4, label %5, !dbg !3899

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3900
  unreachable, !dbg !3900

5:                                                ; preds = %1
  ret ptr %2, !dbg !3901
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3902 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3903 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3907, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %0, metadata !3909, metadata !DIExpression()), !dbg !3913
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3915
  call void @llvm.dbg.value(metadata ptr %2, metadata !3869, metadata !DIExpression()), !dbg !3916
  %3 = icmp eq ptr %2, null, !dbg !3918
  br i1 %3, label %4, label %5, !dbg !3919

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3920
  unreachable, !dbg !3920

5:                                                ; preds = %1
  ret ptr %2, !dbg !3921
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3922 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3926, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i64 %0, metadata !3893, metadata !DIExpression()), !dbg !3928
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3930
  call void @llvm.dbg.value(metadata ptr %2, metadata !3869, metadata !DIExpression()), !dbg !3931
  %3 = icmp eq ptr %2, null, !dbg !3933
  br i1 %3, label %4, label %5, !dbg !3934

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3935
  unreachable, !dbg !3935

5:                                                ; preds = %1
  ret ptr %2, !dbg !3936
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3937 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %1, metadata !3942, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata ptr %0, metadata !3944, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i64 %1, metadata !3948, metadata !DIExpression()), !dbg !3949
  %3 = icmp eq i64 %1, 0, !dbg !3951
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3951
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %5, metadata !3869, metadata !DIExpression()), !dbg !3953
  %6 = icmp eq ptr %5, null, !dbg !3955
  br i1 %6, label %7, label %8, !dbg !3956

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3957
  unreachable, !dbg !3957

8:                                                ; preds = %2
  ret ptr %5, !dbg !3958
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3959 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3960 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3964, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i64 %1, metadata !3965, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata ptr %0, metadata !3967, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %1, metadata !3970, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata ptr %0, metadata !3944, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i64 %1, metadata !3948, metadata !DIExpression()), !dbg !3973
  %3 = icmp eq i64 %1, 0, !dbg !3975
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3975
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3976
  call void @llvm.dbg.value(metadata ptr %5, metadata !3869, metadata !DIExpression()), !dbg !3977
  %6 = icmp eq ptr %5, null, !dbg !3979
  br i1 %6, label %7, label %8, !dbg !3980

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3981
  unreachable, !dbg !3981

8:                                                ; preds = %2
  ret ptr %5, !dbg !3982
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3983 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3987, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %1, metadata !3988, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %2, metadata !3989, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata ptr %0, metadata !3991, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %2, metadata !3995, metadata !DIExpression()), !dbg !3996
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3998
  call void @llvm.dbg.value(metadata ptr %4, metadata !3869, metadata !DIExpression()), !dbg !3999
  %5 = icmp eq ptr %4, null, !dbg !4001
  br i1 %5, label %6, label %7, !dbg !4002

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4003
  unreachable, !dbg !4003

7:                                                ; preds = %3
  ret ptr %4, !dbg !4004
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4005 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4009, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4010, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr null, metadata !3861, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 %0, metadata !3864, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 %1, metadata !3865, metadata !DIExpression()), !dbg !4012
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4014
  call void @llvm.dbg.value(metadata ptr %3, metadata !3869, metadata !DIExpression()), !dbg !4015
  %4 = icmp eq ptr %3, null, !dbg !4017
  br i1 %4, label %5, label %6, !dbg !4018

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4019
  unreachable, !dbg !4019

6:                                                ; preds = %2
  ret ptr %3, !dbg !4020
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4021 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4025, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i64 %1, metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata ptr null, metadata !3987, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %0, metadata !3988, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr null, metadata !3991, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %0, metadata !3994, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3995, metadata !DIExpression()), !dbg !4030
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4032
  call void @llvm.dbg.value(metadata ptr %3, metadata !3869, metadata !DIExpression()), !dbg !4033
  %4 = icmp eq ptr %3, null, !dbg !4035
  br i1 %4, label %5, label %6, !dbg !4036

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4037
  unreachable, !dbg !4037

6:                                                ; preds = %2
  ret ptr %3, !dbg !4038
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4039 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4043, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata ptr %1, metadata !4044, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata ptr %0, metadata !835, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %1, metadata !836, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 1, metadata !837, metadata !DIExpression()), !dbg !4046
  %3 = load i64, ptr %1, align 8, !dbg !4048, !tbaa !3148
  call void @llvm.dbg.value(metadata i64 %3, metadata !838, metadata !DIExpression()), !dbg !4046
  %4 = icmp eq ptr %0, null, !dbg !4049
  br i1 %4, label %5, label %8, !dbg !4051

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4052
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4055
  br label %15, !dbg !4055

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4056
  %10 = add nuw i64 %9, 1, !dbg !4056
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4056
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4056
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %13, metadata !838, metadata !DIExpression()), !dbg !4046
  br i1 %12, label %14, label %15, !dbg !4059

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4060
  unreachable, !dbg !4060

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4046
  call void @llvm.dbg.value(metadata i64 %16, metadata !838, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %0, metadata !3861, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 %16, metadata !3864, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 1, metadata !3865, metadata !DIExpression()), !dbg !4061
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4063
  call void @llvm.dbg.value(metadata ptr %17, metadata !3869, metadata !DIExpression()), !dbg !4064
  %18 = icmp eq ptr %17, null, !dbg !4066
  br i1 %18, label %19, label %20, !dbg !4067

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4068
  unreachable, !dbg !4068

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !835, metadata !DIExpression()), !dbg !4046
  store i64 %16, ptr %1, align 8, !dbg !4069, !tbaa !3148
  ret ptr %17, !dbg !4070
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !830 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !835, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata ptr %1, metadata !836, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %2, metadata !837, metadata !DIExpression()), !dbg !4071
  %4 = load i64, ptr %1, align 8, !dbg !4072, !tbaa !3148
  call void @llvm.dbg.value(metadata i64 %4, metadata !838, metadata !DIExpression()), !dbg !4071
  %5 = icmp eq ptr %0, null, !dbg !4073
  br i1 %5, label %6, label %13, !dbg !4074

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4075
  br i1 %7, label %8, label %20, !dbg !4076

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4077
  call void @llvm.dbg.value(metadata i64 %9, metadata !838, metadata !DIExpression()), !dbg !4071
  %10 = icmp ugt i64 %2, 128, !dbg !4079
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4080
  call void @llvm.dbg.value(metadata i64 %12, metadata !838, metadata !DIExpression()), !dbg !4071
  br label %20, !dbg !4081

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4082
  %15 = add nuw i64 %14, 1, !dbg !4082
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4082
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4082
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4082
  call void @llvm.dbg.value(metadata i64 %18, metadata !838, metadata !DIExpression()), !dbg !4071
  br i1 %17, label %19, label %20, !dbg !4083

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4084
  unreachable, !dbg !4084

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4071
  call void @llvm.dbg.value(metadata i64 %21, metadata !838, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata ptr %0, metadata !3861, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %21, metadata !3864, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %2, metadata !3865, metadata !DIExpression()), !dbg !4085
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4087
  call void @llvm.dbg.value(metadata ptr %22, metadata !3869, metadata !DIExpression()), !dbg !4088
  %23 = icmp eq ptr %22, null, !dbg !4090
  br i1 %23, label %24, label %25, !dbg !4091

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4092
  unreachable, !dbg !4092

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !835, metadata !DIExpression()), !dbg !4071
  store i64 %21, ptr %1, align 8, !dbg !4093, !tbaa !3148
  ret ptr %22, !dbg !4094
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !842 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !847, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %1, metadata !848, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %2, metadata !849, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %3, metadata !850, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %4, metadata !851, metadata !DIExpression()), !dbg !4095
  %6 = load i64, ptr %1, align 8, !dbg !4096, !tbaa !3148
  call void @llvm.dbg.value(metadata i64 %6, metadata !852, metadata !DIExpression()), !dbg !4095
  %7 = ashr i64 %6, 1, !dbg !4097
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4097
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4097
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4097
  call void @llvm.dbg.value(metadata i64 %10, metadata !853, metadata !DIExpression()), !dbg !4095
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %11, metadata !853, metadata !DIExpression()), !dbg !4095
  %12 = icmp sgt i64 %3, -1, !dbg !4100
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4102
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4102
  call void @llvm.dbg.value(metadata i64 %15, metadata !853, metadata !DIExpression()), !dbg !4095
  %16 = icmp slt i64 %4, 0, !dbg !4103
  br i1 %16, label %17, label %30, !dbg !4103

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4103
  br i1 %18, label %19, label %24, !dbg !4103

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4103
  %21 = udiv i64 9223372036854775807, %20, !dbg !4103
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4103
  br i1 %23, label %46, label %43, !dbg !4103

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4103
  br i1 %25, label %43, label %26, !dbg !4103

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4103
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4103
  %29 = icmp ult i64 %28, %15, !dbg !4103
  br i1 %29, label %46, label %43, !dbg !4103

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4103
  br i1 %31, label %43, label %32, !dbg !4103

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4103
  br i1 %33, label %34, label %40, !dbg !4103

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4103
  br i1 %35, label %43, label %36, !dbg !4103

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4103
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4103
  %39 = icmp ult i64 %38, %4, !dbg !4103
  br i1 %39, label %46, label %43, !dbg !4103

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4103
  br i1 %42, label %46, label %43, !dbg !4103

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !854, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4095
  %44 = mul i64 %15, %4, !dbg !4103
  call void @llvm.dbg.value(metadata i64 %44, metadata !854, metadata !DIExpression()), !dbg !4095
  %45 = icmp slt i64 %44, 128, !dbg !4103
  br i1 %45, label %46, label %51, !dbg !4103

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !855, metadata !DIExpression()), !dbg !4095
  %48 = sdiv i64 %47, %4, !dbg !4104
  call void @llvm.dbg.value(metadata i64 %48, metadata !853, metadata !DIExpression()), !dbg !4095
  %49 = srem i64 %47, %4, !dbg !4107
  %50 = sub nsw i64 %47, %49, !dbg !4108
  call void @llvm.dbg.value(metadata i64 %50, metadata !854, metadata !DIExpression()), !dbg !4095
  br label %51, !dbg !4109

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4095
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4095
  call void @llvm.dbg.value(metadata i64 %53, metadata !854, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %52, metadata !853, metadata !DIExpression()), !dbg !4095
  %54 = icmp eq ptr %0, null, !dbg !4110
  br i1 %54, label %55, label %56, !dbg !4112

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4113, !tbaa !3148
  br label %56, !dbg !4114

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4115
  %58 = icmp slt i64 %57, %2, !dbg !4117
  br i1 %58, label %59, label %96, !dbg !4118

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4119
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4119
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4119
  call void @llvm.dbg.value(metadata i64 %62, metadata !853, metadata !DIExpression()), !dbg !4095
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4120
  br i1 %65, label %95, label %66, !dbg !4120

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4121

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4121
  br i1 %68, label %69, label %74, !dbg !4121

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4121
  %71 = udiv i64 9223372036854775807, %70, !dbg !4121
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4121
  br i1 %73, label %95, label %93, !dbg !4121

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4121
  br i1 %75, label %93, label %76, !dbg !4121

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4121
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4121
  %79 = icmp ult i64 %78, %62, !dbg !4121
  br i1 %79, label %95, label %93, !dbg !4121

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4121
  br i1 %81, label %93, label %82, !dbg !4121

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4121
  br i1 %83, label %84, label %90, !dbg !4121

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4121
  br i1 %85, label %93, label %86, !dbg !4121

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4121
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4121
  %89 = icmp ult i64 %88, %4, !dbg !4121
  br i1 %89, label %95, label %93, !dbg !4121

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4121
  br i1 %92, label %95, label %93, !dbg !4121

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !854, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4095
  %94 = mul i64 %62, %4, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %94, metadata !854, metadata !DIExpression()), !dbg !4095
  br label %96, !dbg !4122

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #40, !dbg !4123
  unreachable, !dbg !4123

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4095
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4095
  call void @llvm.dbg.value(metadata i64 %98, metadata !854, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %97, metadata !853, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %98, metadata !3942, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %0, metadata !3944, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %98, metadata !3948, metadata !DIExpression()), !dbg !4126
  %99 = icmp eq i64 %98, 0, !dbg !4128
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4128
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !4129
  call void @llvm.dbg.value(metadata ptr %101, metadata !3869, metadata !DIExpression()), !dbg !4130
  %102 = icmp eq ptr %101, null, !dbg !4132
  br i1 %102, label %103, label %104, !dbg !4133

103:                                              ; preds = %96
  tail call void @xalloc_die() #40, !dbg !4134
  unreachable, !dbg !4134

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !847, metadata !DIExpression()), !dbg !4095
  store i64 %97, ptr %1, align 8, !dbg !4135, !tbaa !3148
  ret ptr %101, !dbg !4136
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4137 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4139, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %0, metadata !4141, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i64 1, metadata !4144, metadata !DIExpression()), !dbg !4145
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4147
  call void @llvm.dbg.value(metadata ptr %2, metadata !3869, metadata !DIExpression()), !dbg !4148
  %3 = icmp eq ptr %2, null, !dbg !4150
  br i1 %3, label %4, label %5, !dbg !4151

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4152
  unreachable, !dbg !4152

5:                                                ; preds = %1
  ret ptr %2, !dbg !4153
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4154 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4142 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4141, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %1, metadata !4144, metadata !DIExpression()), !dbg !4155
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4156
  call void @llvm.dbg.value(metadata ptr %3, metadata !3869, metadata !DIExpression()), !dbg !4157
  %4 = icmp eq ptr %3, null, !dbg !4159
  br i1 %4, label %5, label %6, !dbg !4160

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4161
  unreachable, !dbg !4161

6:                                                ; preds = %2
  ret ptr %3, !dbg !4162
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4163 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4165, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %0, metadata !4167, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i64 1, metadata !4170, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i64 %0, metadata !4173, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i64 1, metadata !4176, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i64 %0, metadata !4173, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i64 1, metadata !4176, metadata !DIExpression()), !dbg !4177
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4179
  call void @llvm.dbg.value(metadata ptr %2, metadata !3869, metadata !DIExpression()), !dbg !4180
  %3 = icmp eq ptr %2, null, !dbg !4182
  br i1 %3, label %4, label %5, !dbg !4183

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4184
  unreachable, !dbg !4184

5:                                                ; preds = %1
  ret ptr %2, !dbg !4185
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4168 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4167, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %1, metadata !4170, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %0, metadata !4173, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %1, metadata !4176, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %0, metadata !4173, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %1, metadata !4176, metadata !DIExpression()), !dbg !4187
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4189
  call void @llvm.dbg.value(metadata ptr %3, metadata !3869, metadata !DIExpression()), !dbg !4190
  %4 = icmp eq ptr %3, null, !dbg !4192
  br i1 %4, label %5, label %6, !dbg !4193

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4194
  unreachable, !dbg !4194

6:                                                ; preds = %2
  ret ptr %3, !dbg !4195
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4196 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4200, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i64 %1, metadata !4201, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i64 %1, metadata !3893, metadata !DIExpression()), !dbg !4203
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4205
  call void @llvm.dbg.value(metadata ptr %3, metadata !3869, metadata !DIExpression()), !dbg !4206
  %4 = icmp eq ptr %3, null, !dbg !4208
  br i1 %4, label %5, label %6, !dbg !4209

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4210
  unreachable, !dbg !4210

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4211, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata ptr %0, metadata !4214, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i64 %1, metadata !4215, metadata !DIExpression()), !dbg !4216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4218
  ret ptr %3, !dbg !4219
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4220 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4224, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %1, metadata !3909, metadata !DIExpression()), !dbg !4229
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4231
  call void @llvm.dbg.value(metadata ptr %3, metadata !3869, metadata !DIExpression()), !dbg !4232
  %4 = icmp eq ptr %3, null, !dbg !4234
  br i1 %4, label %5, label %6, !dbg !4235

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4236
  unreachable, !dbg !4236

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4211, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata ptr %0, metadata !4214, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %1, metadata !4215, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4239
  ret ptr %3, !dbg !4240
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4241 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 %1, metadata !4246, metadata !DIExpression()), !dbg !4248
  %3 = add nsw i64 %1, 1, !dbg !4249
  call void @llvm.dbg.value(metadata i64 %3, metadata !3907, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i64 %3, metadata !3909, metadata !DIExpression()), !dbg !4252
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4254
  call void @llvm.dbg.value(metadata ptr %4, metadata !3869, metadata !DIExpression()), !dbg !4255
  %5 = icmp eq ptr %4, null, !dbg !4257
  br i1 %5, label %6, label %7, !dbg !4258

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4259
  unreachable, !dbg !4259

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4247, metadata !DIExpression()), !dbg !4248
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4260
  store i8 0, ptr %8, align 1, !dbg !4261, !tbaa !991
  call void @llvm.dbg.value(metadata ptr %4, metadata !4211, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata ptr %0, metadata !4214, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %1, metadata !4215, metadata !DIExpression()), !dbg !4262
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4264
  ret ptr %4, !dbg !4265
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4266 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4269
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4270
  %3 = add i64 %2, 1, !dbg !4271
  call void @llvm.dbg.value(metadata ptr %0, metadata !4200, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %3, metadata !4201, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %3, metadata !3893, metadata !DIExpression()), !dbg !4274
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4276
  call void @llvm.dbg.value(metadata ptr %4, metadata !3869, metadata !DIExpression()), !dbg !4277
  %5 = icmp eq ptr %4, null, !dbg !4279
  br i1 %5, label %6, label %7, !dbg !4280

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4281
  unreachable, !dbg !4281

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4211, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %0, metadata !4214, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 %3, metadata !4215, metadata !DIExpression()), !dbg !4282
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4284
  ret ptr %4, !dbg !4285
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4286 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4291, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %1, metadata !4288, metadata !DIExpression()), !dbg !4292
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.123, ptr noundef nonnull @.str.2.124, i32 noundef 5) #38, !dbg !4291
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef %2) #38, !dbg !4291
  %3 = icmp eq i32 %1, 0, !dbg !4291
  tail call void @llvm.assume(i1 %3), !dbg !4291
  tail call void @abort() #40, !dbg !4293
  unreachable, !dbg !4293
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4294 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 %1, metadata !4299, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %2, metadata !4300, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i64 %3, metadata !4301, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata ptr %4, metadata !4302, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata ptr %5, metadata !4303, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 %6, metadata !4304, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 %7, metadata !4305, metadata !DIExpression()), !dbg !4315
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #38, !dbg !4316
  call void @llvm.dbg.value(metadata ptr %9, metadata !4306, metadata !DIExpression(DW_OP_deref)), !dbg !4315
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #38, !dbg !4317
  call void @llvm.dbg.value(metadata i32 %10, metadata !4308, metadata !DIExpression()), !dbg !4315
  %11 = icmp eq i32 %10, 4, !dbg !4318
  br i1 %11, label %40, label %12, !dbg !4320

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4321, !tbaa !3148
  call void @llvm.dbg.value(metadata i64 %13, metadata !4306, metadata !DIExpression()), !dbg !4315
  %14 = icmp ult i64 %13, %2, !dbg !4324
  br i1 %14, label %15, label %20, !dbg !4325

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !4307, metadata !DIExpression()), !dbg !4315
  %16 = and i32 %7, 4, !dbg !4326
  %17 = icmp eq i32 %16, 0, !dbg !4328
  %18 = select i1 %17, i32 75, i32 34, !dbg !4328
  call void @llvm.dbg.value(metadata i32 %18, metadata !4310, metadata !DIExpression()), !dbg !4315
  %19 = icmp eq i32 %10, 0, !dbg !4329
  call void @llvm.dbg.value(metadata i32 undef, metadata !4308, metadata !DIExpression()), !dbg !4315
  br i1 %19, label %33, label %27, !dbg !4331

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4332
  br i1 %21, label %22, label %27, !dbg !4334

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !4307, metadata !DIExpression()), !dbg !4315
  %23 = and i32 %7, 8, !dbg !4335
  %24 = icmp eq i32 %23, 0, !dbg !4337
  %25 = select i1 %24, i32 75, i32 34, !dbg !4337
  call void @llvm.dbg.value(metadata i32 %25, metadata !4310, metadata !DIExpression()), !dbg !4315
  %26 = icmp eq i32 %10, 0, !dbg !4338
  call void @llvm.dbg.value(metadata i32 undef, metadata !4308, metadata !DIExpression()), !dbg !4315
  br i1 %26, label %33, label %27, !dbg !4340

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !4307, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 %10, metadata !4308, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 %28, metadata !4310, metadata !DIExpression()), !dbg !4315
  %30 = icmp eq i32 %10, 1, !dbg !4341
  %31 = select i1 %30, i32 %28, i32 0, !dbg !4342
  call void @llvm.dbg.value(metadata i32 %31, metadata !4311, metadata !DIExpression()), !dbg !4315
  %32 = icmp eq i32 %10, 0, !dbg !4343
  br i1 %32, label %45, label %33, !dbg !4344

33:                                               ; preds = %22, %15, %27
  %34 = phi i32 [ %31, %27 ], [ %18, %15 ], [ %25, %22 ]
  %35 = phi i1 [ %30, %27 ], [ true, %15 ], [ true, %22 ]
  %36 = phi i64 [ %29, %27 ], [ %2, %15 ], [ %3, %22 ]
  %37 = and i32 %7, 2
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %38, %35, !dbg !4315
  call void @llvm.dbg.value(metadata i64 poison, metadata !4306, metadata !DIExpression()), !dbg !4315
  br i1 %39, label %45, label %40, !dbg !4345

40:                                               ; preds = %8, %33
  %41 = phi i32 [ %34, %33 ], [ 0, %8 ]
  %42 = icmp eq i32 %6, 0, !dbg !4346
  %43 = select i1 %42, i32 1, i32 %6, !dbg !4346
  %44 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !4346
  call void (i32, i32, ptr, ...) @error(i32 noundef %43, i32 noundef %41, ptr noundef nonnull @.str.128, ptr noundef nonnull %5, ptr noundef %44) #38, !dbg !4346
  unreachable, !dbg !4346

45:                                               ; preds = %33, %27
  %46 = phi i32 [ %34, %33 ], [ %31, %27 ]
  %47 = phi i64 [ %36, %33 ], [ %29, %27 ]
  %48 = tail call ptr @__errno_location() #41, !dbg !4347
  store i32 %46, ptr %48, align 4, !dbg !4348, !tbaa !982
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #38, !dbg !4349
  ret i64 %47, !dbg !4350
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4351 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4355, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i64 %1, metadata !4356, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i64 %2, metadata !4357, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata ptr %3, metadata !4358, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata ptr %4, metadata !4359, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i32 %5, metadata !4360, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 10, metadata !4299, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %1, metadata !4300, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %2, metadata !4301, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata ptr %3, metadata !4302, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata ptr %4, metadata !4303, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 %5, metadata !4304, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 0, metadata !4305, metadata !DIExpression()), !dbg !4362
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #38, !dbg !4364
  call void @llvm.dbg.value(metadata ptr %7, metadata !4306, metadata !DIExpression(DW_OP_deref)), !dbg !4362
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #38, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %8, metadata !4308, metadata !DIExpression()), !dbg !4362
  %9 = icmp eq i32 %8, 4, !dbg !4366
  br i1 %9, label %24, label %10, !dbg !4367

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !4368, !tbaa !3148
  call void @llvm.dbg.value(metadata i64 %11, metadata !4306, metadata !DIExpression()), !dbg !4362
  %12 = icmp ult i64 %11, %1, !dbg !4369
  br i1 %12, label %13, label %15, !dbg !4370

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !4307, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 75, metadata !4310, metadata !DIExpression()), !dbg !4362
  %14 = icmp eq i32 %8, 0, !dbg !4371
  call void @llvm.dbg.value(metadata i32 undef, metadata !4308, metadata !DIExpression()), !dbg !4362
  br i1 %14, label %24, label %19, !dbg !4372

15:                                               ; preds = %10
  %16 = icmp ugt i64 %11, %2, !dbg !4373
  br i1 %16, label %17, label %19, !dbg !4374

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !4307, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 75, metadata !4310, metadata !DIExpression()), !dbg !4362
  %18 = icmp eq i32 %8, 0, !dbg !4375
  call void @llvm.dbg.value(metadata i32 undef, metadata !4308, metadata !DIExpression()), !dbg !4362
  br i1 %18, label %24, label %19, !dbg !4376

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !4307, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 %8, metadata !4308, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 75, metadata !4310, metadata !DIExpression()), !dbg !4362
  %21 = icmp eq i32 %8, 1, !dbg !4377
  %22 = select i1 %21, i32 75, i32 0, !dbg !4378
  call void @llvm.dbg.value(metadata i32 %22, metadata !4311, metadata !DIExpression()), !dbg !4362
  %23 = icmp eq i32 %8, 0, !dbg !4379
  br i1 %23, label %29, label %24, !dbg !4380

24:                                               ; preds = %13, %17, %19, %6
  %25 = phi i32 [ 0, %6 ], [ %22, %19 ], [ 75, %13 ], [ 75, %17 ]
  %26 = icmp eq i32 %5, 0, !dbg !4381
  %27 = select i1 %26, i32 1, i32 %5, !dbg !4381
  %28 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !4381
  call void (i32, i32, ptr, ...) @error(i32 noundef %27, i32 noundef %25, ptr noundef nonnull @.str.128, ptr noundef nonnull %4, ptr noundef %28) #38, !dbg !4381
  unreachable, !dbg !4381

29:                                               ; preds = %19
  %30 = tail call ptr @__errno_location() #41, !dbg !4382
  store i32 %22, ptr %30, align 4, !dbg !4383, !tbaa !982
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #38, !dbg !4384
  ret i64 %20, !dbg !4385
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4386 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4392, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata ptr %1, metadata !4393, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i32 %2, metadata !4394, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata ptr %3, metadata !4395, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata ptr %4, metadata !4396, metadata !DIExpression()), !dbg !4410
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #38, !dbg !4411
  %7 = icmp eq ptr %1, null, !dbg !4412
  call void @llvm.dbg.value(metadata ptr %20, metadata !4398, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata ptr %0, metadata !4399, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i8 poison, metadata !4402, metadata !DIExpression()), !dbg !4413
  %8 = tail call ptr @__ctype_b_loc() #41, !dbg !4410
  %9 = load ptr, ptr %8, align 8, !tbaa !911
  br label %10, !dbg !4414

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4413
  %12 = load i8, ptr %11, align 1, !dbg !4413, !tbaa !991
  call void @llvm.dbg.value(metadata i8 %12, metadata !4402, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %11, metadata !4399, metadata !DIExpression()), !dbg !4413
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4415
  %15 = load i16, ptr %14, align 2, !dbg !4415, !tbaa !1023
  %16 = and i16 %15, 8192, !dbg !4415
  %17 = icmp eq i16 %16, 0, !dbg !4414
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4416
  call void @llvm.dbg.value(metadata ptr %18, metadata !4399, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i8 poison, metadata !4402, metadata !DIExpression()), !dbg !4413
  br i1 %17, label %19, label %10, !dbg !4414, !llvm.loop !4417

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4412
  %21 = icmp eq i8 %12, 45, !dbg !4419
  br i1 %21, label %22, label %23, !dbg !4421

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4422, !tbaa !911
  br label %387

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #41, !dbg !4424
  store i32 0, ptr %24, align 4, !dbg !4425, !tbaa !982
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef %20, i32 noundef %2) #38, !dbg !4426
  call void @llvm.dbg.value(metadata i64 %25, metadata !4403, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i32 0, metadata !4404, metadata !DIExpression()), !dbg !4410
  %26 = load ptr, ptr %20, align 8, !dbg !4427, !tbaa !911
  %27 = icmp eq ptr %26, %0, !dbg !4429
  br i1 %27, label %28, label %37, !dbg !4430

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4431
  br i1 %29, label %387, label %30, !dbg !4434

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4435, !tbaa !991
  %32 = icmp eq i8 %31, 0, !dbg !4435
  br i1 %32, label %387, label %33, !dbg !4436

33:                                               ; preds = %30
  %34 = sext i8 %31 to i32, !dbg !4435
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #39, !dbg !4437
  %36 = icmp eq ptr %35, null, !dbg !4437
  br i1 %36, label %387, label %44, !dbg !4438

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4439, !tbaa !982
  switch i32 %38, label %387 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4441

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !4404, metadata !DIExpression()), !dbg !4410
  br label %40, !dbg !4442

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4410
  call void @llvm.dbg.value(metadata i32 %41, metadata !4404, metadata !DIExpression()), !dbg !4410
  %42 = icmp eq ptr %4, null, !dbg !4444
  br i1 %42, label %43, label %44, !dbg !4446

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !4403, metadata !DIExpression()), !dbg !4410
  store i64 %25, ptr %3, align 8, !dbg !4447, !tbaa !3148
  br label %387, !dbg !4449

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4450, !tbaa !991
  %48 = sext i8 %47 to i32, !dbg !4450
  %49 = icmp eq i8 %47, 0, !dbg !4451
  br i1 %49, label %384, label %50, !dbg !4452

50:                                               ; preds = %44
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %48) #39, !dbg !4453
  %52 = icmp eq ptr %51, null, !dbg !4453
  br i1 %52, label %53, label %55, !dbg !4455

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %25, metadata !4403, metadata !DIExpression()), !dbg !4410
  store i64 %46, ptr %3, align 8, !dbg !4456, !tbaa !3148
  %54 = or i32 %45, 2, !dbg !4458
  br label %387, !dbg !4459

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !4405, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i32 1, metadata !4408, metadata !DIExpression()), !dbg !4460
  switch i32 %48, label %69 [
    i32 69, label %56
    i32 71, label %56
    i32 103, label %56
    i32 107, label %56
    i32 75, label %56
    i32 77, label %56
    i32 109, label %56
    i32 80, label %56
    i32 81, label %56
    i32 82, label %56
    i32 84, label %56
    i32 116, label %56
    i32 89, label %56
    i32 90, label %56
  ], !dbg !4461

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #39, !dbg !4462
  %58 = icmp eq ptr %57, null, !dbg !4462
  br i1 %58, label %69, label %59, !dbg !4465

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4466
  %61 = load i8, ptr %60, align 1, !dbg !4466, !tbaa !991
  %62 = sext i8 %61 to i32, !dbg !4466
  switch i32 %62, label %69 [
    i32 105, label %63
    i32 66, label %68
    i32 68, label %68
  ], !dbg !4467

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4468
  %65 = load i8, ptr %64, align 1, !dbg !4468, !tbaa !991
  %66 = icmp eq i8 %65, 66, !dbg !4471
  %67 = select i1 %66, i64 3, i64 1, !dbg !4472
  br label %69, !dbg !4472

68:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !4405, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i32 2, metadata !4408, metadata !DIExpression()), !dbg !4460
  br label %69, !dbg !4473

69:                                               ; preds = %63, %56, %59, %68, %55
  %70 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %68 ], [ 1024, %56 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %68 ], [ 1, %56 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4408, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i32 poison, metadata !4405, metadata !DIExpression()), !dbg !4460
  switch i32 %48, label %382 [
    i32 98, label %303
    i32 66, label %308
    i32 99, label %373
    i32 69, label %272
    i32 71, label %313
    i32 103, label %313
    i32 107, label %329
    i32 75, label %329
    i32 77, label %335
    i32 109, label %335
    i32 80, label %246
    i32 81, label %195
    i32 82, label %149
    i32 84, label %346
    i32 116, label %346
    i32 119, label %367
    i32 89, label %108
    i32 90, label %72
  ], !dbg !4474

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4493
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4495
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !4495
  %75 = mul i64 %46, %70, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %75, metadata !4492, metadata !DIExpression()), !dbg !4493
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !4493
  call void @llvm.dbg.value(metadata i1 %74, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i1 %74, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4493
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76), !dbg !4495
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4495
  %79 = mul i64 %76, %70, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %79, metadata !4492, metadata !DIExpression()), !dbg !4493
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !4493
  %81 = or i1 %74, %78, !dbg !4497
  call void @llvm.dbg.value(metadata i1 %81, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i1 %81, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4493
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80), !dbg !4495
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !4495
  %84 = mul i64 %80, %70, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %84, metadata !4492, metadata !DIExpression()), !dbg !4493
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !4493
  %86 = or i1 %81, %83, !dbg !4497
  call void @llvm.dbg.value(metadata i1 %86, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i1 %86, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4493
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85), !dbg !4495
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !4495
  %89 = mul i64 %85, %70, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %89, metadata !4492, metadata !DIExpression()), !dbg !4493
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !4493
  %91 = or i1 %86, %88, !dbg !4497
  call void @llvm.dbg.value(metadata i1 %91, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i1 %91, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4493
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90), !dbg !4495
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !4495
  %94 = mul i64 %90, %70, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %94, metadata !4492, metadata !DIExpression()), !dbg !4493
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !4493
  %96 = or i1 %91, %93, !dbg !4497
  call void @llvm.dbg.value(metadata i1 %96, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i1 %96, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4493
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95), !dbg !4495
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !4495
  %99 = mul i64 %95, %70, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %99, metadata !4492, metadata !DIExpression()), !dbg !4493
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4493
  %101 = or i1 %96, %98, !dbg !4497
  call void @llvm.dbg.value(metadata i1 %101, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i1 %101, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4483
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4493
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100), !dbg !4495
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !4495
  %104 = mul i64 %100, %70, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %104, metadata !4492, metadata !DIExpression()), !dbg !4493
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !4493
  %106 = or i1 %101, %103, !dbg !4497
  %107 = zext i1 %106 to i32, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %107, metadata !4475, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4483
  br label %373, !dbg !4498

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 8, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4501
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4503
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !4503
  %111 = mul i64 %46, %70, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %111, metadata !4492, metadata !DIExpression()), !dbg !4501
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !4501
  call void @llvm.dbg.value(metadata i1 %110, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i1 %110, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4501
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112), !dbg !4503
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4503
  %115 = mul i64 %112, %70, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %115, metadata !4492, metadata !DIExpression()), !dbg !4501
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !4501
  %117 = or i1 %110, %114, !dbg !4504
  call void @llvm.dbg.value(metadata i1 %117, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i1 %117, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4501
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116), !dbg !4503
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !4503
  %120 = mul i64 %116, %70, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %120, metadata !4492, metadata !DIExpression()), !dbg !4501
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !4501
  %122 = or i1 %117, %119, !dbg !4504
  call void @llvm.dbg.value(metadata i1 %122, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i1 %122, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4501
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121), !dbg !4503
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !4503
  %125 = mul i64 %121, %70, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %125, metadata !4492, metadata !DIExpression()), !dbg !4501
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !4501
  %127 = or i1 %122, %124, !dbg !4504
  call void @llvm.dbg.value(metadata i1 %127, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i1 %127, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4501
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126), !dbg !4503
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !4503
  %130 = mul i64 %126, %70, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %130, metadata !4492, metadata !DIExpression()), !dbg !4501
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !4501
  %132 = or i1 %127, %129, !dbg !4504
  call void @llvm.dbg.value(metadata i1 %132, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i1 %132, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4501
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131), !dbg !4503
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !4503
  %135 = mul i64 %131, %70, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %135, metadata !4492, metadata !DIExpression()), !dbg !4501
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !4501
  %137 = or i1 %132, %134, !dbg !4504
  call void @llvm.dbg.value(metadata i1 %137, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i1 %137, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4501
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136), !dbg !4503
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !4503
  %140 = mul i64 %136, %70, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %140, metadata !4492, metadata !DIExpression()), !dbg !4501
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !4501
  %142 = or i1 %137, %139, !dbg !4504
  call void @llvm.dbg.value(metadata i1 %142, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i1 %142, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4499
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4501
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141), !dbg !4503
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !4503
  %145 = mul i64 %141, %70, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %145, metadata !4492, metadata !DIExpression()), !dbg !4501
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !4501
  %147 = or i1 %142, %144, !dbg !4504
  %148 = zext i1 %147 to i32, !dbg !4504
  call void @llvm.dbg.value(metadata i32 %148, metadata !4475, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4499
  br label %373, !dbg !4498

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 9, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 8, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4507
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4509
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !4509
  %152 = mul i64 %46, %70, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %152, metadata !4492, metadata !DIExpression()), !dbg !4507
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !4507
  call void @llvm.dbg.value(metadata i1 %151, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 8, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i1 %151, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 8, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4507
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153), !dbg !4509
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !4509
  %156 = mul i64 %153, %70, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %156, metadata !4492, metadata !DIExpression()), !dbg !4507
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !4507
  %158 = or i1 %151, %155, !dbg !4510
  call void @llvm.dbg.value(metadata i1 %158, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i1 %158, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4507
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157), !dbg !4509
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !4509
  %161 = mul i64 %157, %70, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %161, metadata !4492, metadata !DIExpression()), !dbg !4507
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !4507
  %163 = or i1 %158, %160, !dbg !4510
  call void @llvm.dbg.value(metadata i1 %163, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i1 %163, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4507
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162), !dbg !4509
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4509
  %166 = mul i64 %162, %70, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %166, metadata !4492, metadata !DIExpression()), !dbg !4507
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4507
  %168 = or i1 %163, %165, !dbg !4510
  call void @llvm.dbg.value(metadata i1 %168, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i1 %168, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4507
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167), !dbg !4509
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !4509
  %171 = mul i64 %167, %70, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %171, metadata !4492, metadata !DIExpression()), !dbg !4507
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !4507
  %173 = or i1 %168, %170, !dbg !4510
  call void @llvm.dbg.value(metadata i1 %173, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i1 %173, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4507
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172), !dbg !4509
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !4509
  %176 = mul i64 %172, %70, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %176, metadata !4492, metadata !DIExpression()), !dbg !4507
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !4507
  %178 = or i1 %173, %175, !dbg !4510
  call void @llvm.dbg.value(metadata i1 %178, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i1 %178, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4507
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177), !dbg !4509
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !4509
  %181 = mul i64 %177, %70, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %181, metadata !4492, metadata !DIExpression()), !dbg !4507
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !4507
  %183 = or i1 %178, %180, !dbg !4510
  call void @llvm.dbg.value(metadata i1 %183, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i1 %183, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4507
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182), !dbg !4509
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4509
  %186 = mul i64 %182, %70, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %186, metadata !4492, metadata !DIExpression()), !dbg !4507
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !4507
  %188 = or i1 %183, %185, !dbg !4510
  call void @llvm.dbg.value(metadata i1 %188, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i1 %188, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4505
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4507
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187), !dbg !4509
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !4509
  %191 = mul i64 %187, %70, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %191, metadata !4492, metadata !DIExpression()), !dbg !4507
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !4507
  %193 = or i1 %188, %190, !dbg !4510
  %194 = zext i1 %193 to i32, !dbg !4510
  call void @llvm.dbg.value(metadata i32 %194, metadata !4475, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4505
  br label %373, !dbg !4498

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 10, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 9, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4515
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !4515
  %198 = mul i64 %46, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %198, metadata !4492, metadata !DIExpression()), !dbg !4513
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !4513
  call void @llvm.dbg.value(metadata i1 %197, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 9, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i1 %197, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 9, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 8, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199), !dbg !4515
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4515
  %202 = mul i64 %199, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %202, metadata !4492, metadata !DIExpression()), !dbg !4513
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4513
  %204 = or i1 %197, %201, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %204, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 8, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i1 %204, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 8, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203), !dbg !4515
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4515
  %207 = mul i64 %203, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %207, metadata !4492, metadata !DIExpression()), !dbg !4513
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !4513
  %209 = or i1 %204, %206, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %209, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i1 %209, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 7, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208), !dbg !4515
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !4515
  %212 = mul i64 %208, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %212, metadata !4492, metadata !DIExpression()), !dbg !4513
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !4513
  %214 = or i1 %209, %211, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %214, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i1 %214, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213), !dbg !4515
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !4515
  %217 = mul i64 %213, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %217, metadata !4492, metadata !DIExpression()), !dbg !4513
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4513
  %219 = or i1 %214, %216, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %219, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i1 %219, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218), !dbg !4515
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4515
  %222 = mul i64 %218, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %222, metadata !4492, metadata !DIExpression()), !dbg !4513
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4513
  %224 = or i1 %219, %221, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %224, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i1 %224, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223), !dbg !4515
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4515
  %227 = mul i64 %223, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %227, metadata !4492, metadata !DIExpression()), !dbg !4513
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4513
  %229 = or i1 %224, %226, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %229, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i1 %229, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228), !dbg !4515
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !4515
  %232 = mul i64 %228, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %232, metadata !4492, metadata !DIExpression()), !dbg !4513
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !4513
  %234 = or i1 %229, %231, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %234, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i1 %234, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233), !dbg !4515
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4515
  %237 = mul i64 %233, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %237, metadata !4492, metadata !DIExpression()), !dbg !4513
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4513
  %239 = or i1 %234, %236, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %239, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i1 %239, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4511
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4513
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238), !dbg !4515
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4515
  %242 = mul i64 %238, %70, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %242, metadata !4492, metadata !DIExpression()), !dbg !4513
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4513
  %244 = or i1 %239, %241, !dbg !4516
  %245 = zext i1 %244 to i32, !dbg !4516
  call void @llvm.dbg.value(metadata i32 %245, metadata !4475, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4511
  br label %373, !dbg !4498

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4519
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4521
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !4521
  %249 = mul i64 %46, %70, !dbg !4521
  call void @llvm.dbg.value(metadata i64 %249, metadata !4492, metadata !DIExpression()), !dbg !4519
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !4519
  call void @llvm.dbg.value(metadata i1 %248, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i1 %248, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4519
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250), !dbg !4521
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !4521
  %253 = mul i64 %250, %70, !dbg !4521
  call void @llvm.dbg.value(metadata i64 %253, metadata !4492, metadata !DIExpression()), !dbg !4519
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !4519
  %255 = or i1 %248, %252, !dbg !4522
  call void @llvm.dbg.value(metadata i1 %255, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i1 %255, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4519
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254), !dbg !4521
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !4521
  %258 = mul i64 %254, %70, !dbg !4521
  call void @llvm.dbg.value(metadata i64 %258, metadata !4492, metadata !DIExpression()), !dbg !4519
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !4519
  %260 = or i1 %255, %257, !dbg !4522
  call void @llvm.dbg.value(metadata i1 %260, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i1 %260, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4519
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259), !dbg !4521
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4521
  %263 = mul i64 %259, %70, !dbg !4521
  call void @llvm.dbg.value(metadata i64 %263, metadata !4492, metadata !DIExpression()), !dbg !4519
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4519
  %265 = or i1 %260, %262, !dbg !4522
  call void @llvm.dbg.value(metadata i1 %265, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i1 %265, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4517
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4519
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264), !dbg !4521
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4521
  %268 = mul i64 %264, %70, !dbg !4521
  call void @llvm.dbg.value(metadata i64 %268, metadata !4492, metadata !DIExpression()), !dbg !4519
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4519
  %270 = or i1 %265, %267, !dbg !4522
  %271 = zext i1 %270 to i32, !dbg !4522
  call void @llvm.dbg.value(metadata i32 %271, metadata !4475, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4517
  br label %373, !dbg !4498

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 6, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4525
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4527
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !4527
  %275 = mul i64 %46, %70, !dbg !4527
  call void @llvm.dbg.value(metadata i64 %275, metadata !4492, metadata !DIExpression()), !dbg !4525
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !4525
  call void @llvm.dbg.value(metadata i1 %274, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i1 %274, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 5, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4525
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276), !dbg !4527
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !4527
  %279 = mul i64 %276, %70, !dbg !4527
  call void @llvm.dbg.value(metadata i64 %279, metadata !4492, metadata !DIExpression()), !dbg !4525
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !4525
  %281 = or i1 %274, %278, !dbg !4528
  call void @llvm.dbg.value(metadata i1 %281, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i1 %281, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4525
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280), !dbg !4527
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !4527
  %284 = mul i64 %280, %70, !dbg !4527
  call void @llvm.dbg.value(metadata i64 %284, metadata !4492, metadata !DIExpression()), !dbg !4525
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !4525
  %286 = or i1 %281, %283, !dbg !4528
  call void @llvm.dbg.value(metadata i1 %286, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i1 %286, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4525
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285), !dbg !4527
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !4527
  %289 = mul i64 %285, %70, !dbg !4527
  call void @llvm.dbg.value(metadata i64 %289, metadata !4492, metadata !DIExpression()), !dbg !4525
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !4525
  %291 = or i1 %286, %288, !dbg !4528
  call void @llvm.dbg.value(metadata i1 %291, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i1 %291, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4525
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290), !dbg !4527
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !4527
  %294 = mul i64 %290, %70, !dbg !4527
  call void @llvm.dbg.value(metadata i64 %294, metadata !4492, metadata !DIExpression()), !dbg !4525
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !4525
  %296 = or i1 %291, %293, !dbg !4528
  call void @llvm.dbg.value(metadata i1 %296, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i1 %296, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4523
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4525
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295), !dbg !4527
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !4527
  %299 = mul i64 %295, %70, !dbg !4527
  call void @llvm.dbg.value(metadata i64 %299, metadata !4492, metadata !DIExpression()), !dbg !4525
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !4525
  %301 = or i1 %296, %298, !dbg !4528
  %302 = zext i1 %301 to i32, !dbg !4528
  call void @llvm.dbg.value(metadata i32 %302, metadata !4475, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4523
  br label %373, !dbg !4498

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i32 512, metadata !4491, metadata !DIExpression()), !dbg !4529
  %304 = icmp ugt i64 %46, 36028797018963967, !dbg !4531
  %305 = shl i64 %46, 9, !dbg !4531
  call void @llvm.dbg.value(metadata i64 %305, metadata !4492, metadata !DIExpression()), !dbg !4529
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !4529
  %307 = zext i1 %304 to i32, !dbg !4529
  call void @llvm.dbg.value(metadata i32 %307, metadata !4409, metadata !DIExpression()), !dbg !4460
  br label %373, !dbg !4532

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i32 1024, metadata !4491, metadata !DIExpression()), !dbg !4533
  %309 = icmp ugt i64 %46, 18014398509481983, !dbg !4535
  %310 = shl i64 %46, 10, !dbg !4535
  call void @llvm.dbg.value(metadata i64 %310, metadata !4492, metadata !DIExpression()), !dbg !4533
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !4533
  %312 = zext i1 %309 to i32, !dbg !4533
  call void @llvm.dbg.value(metadata i32 %312, metadata !4409, metadata !DIExpression()), !dbg !4460
  br label %373, !dbg !4536

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4480, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 poison, metadata !4481, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4539
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4541
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !4541
  %316 = mul i64 %46, %70, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %316, metadata !4492, metadata !DIExpression()), !dbg !4539
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !4539
  call void @llvm.dbg.value(metadata i1 %315, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i1 %315, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4539
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317), !dbg !4541
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !4541
  %320 = mul i64 %317, %70, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %320, metadata !4492, metadata !DIExpression()), !dbg !4539
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !4539
  %322 = or i1 %315, %319, !dbg !4542
  call void @llvm.dbg.value(metadata i1 %322, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i1 %322, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4537
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4539
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321), !dbg !4541
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !4541
  %325 = mul i64 %321, %70, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %325, metadata !4492, metadata !DIExpression()), !dbg !4539
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !4539
  %327 = or i1 %322, %324, !dbg !4542
  %328 = zext i1 %327 to i32, !dbg !4542
  call void @llvm.dbg.value(metadata i32 %328, metadata !4475, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4537
  br label %373, !dbg !4498

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4480, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 poison, metadata !4481, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4543
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4545
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !4545
  %332 = mul i64 %46, %70, !dbg !4545
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !4547
  %334 = zext i1 %331 to i32, !dbg !4547
  call void @llvm.dbg.value(metadata i32 poison, metadata !4475, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i32 poison, metadata !4482, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata ptr poison, metadata !4486, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 poison, metadata !4492, metadata !DIExpression()), !dbg !4547
  br label %373, !dbg !4498

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4480, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 poison, metadata !4481, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4550
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4552
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !4552
  %338 = mul i64 %46, %70, !dbg !4552
  call void @llvm.dbg.value(metadata i64 %338, metadata !4492, metadata !DIExpression()), !dbg !4550
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !4550
  call void @llvm.dbg.value(metadata i1 %337, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i1 %337, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4548
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4550
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339), !dbg !4552
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !4552
  %342 = mul i64 %339, %70, !dbg !4552
  call void @llvm.dbg.value(metadata i64 %342, metadata !4492, metadata !DIExpression()), !dbg !4550
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !4550
  %344 = or i1 %337, %341, !dbg !4553
  %345 = zext i1 %344 to i32, !dbg !4553
  call void @llvm.dbg.value(metadata i32 %345, metadata !4475, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4548
  br label %373, !dbg !4498

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4480, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 poison, metadata !4481, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 4, metadata !4482, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4556
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4558
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !4558
  %349 = mul i64 %46, %70, !dbg !4558
  call void @llvm.dbg.value(metadata i64 %349, metadata !4492, metadata !DIExpression()), !dbg !4556
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !4556
  call void @llvm.dbg.value(metadata i1 %348, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i1 %348, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i32 3, metadata !4482, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4556
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350), !dbg !4558
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !4558
  %353 = mul i64 %350, %70, !dbg !4558
  call void @llvm.dbg.value(metadata i64 %353, metadata !4492, metadata !DIExpression()), !dbg !4556
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !4556
  %355 = or i1 %348, %352, !dbg !4559
  call void @llvm.dbg.value(metadata i1 %355, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i1 %355, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i32 2, metadata !4482, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4556
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354), !dbg !4558
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !4558
  %358 = mul i64 %354, %70, !dbg !4558
  call void @llvm.dbg.value(metadata i64 %358, metadata !4492, metadata !DIExpression()), !dbg !4556
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !4556
  %360 = or i1 %355, %357, !dbg !4559
  call void @llvm.dbg.value(metadata i1 %360, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i1 %360, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4554
  call void @llvm.dbg.value(metadata i32 1, metadata !4482, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i32 poison, metadata !4491, metadata !DIExpression()), !dbg !4556
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359), !dbg !4558
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !4558
  %363 = mul i64 %359, %70, !dbg !4558
  call void @llvm.dbg.value(metadata i64 %363, metadata !4492, metadata !DIExpression()), !dbg !4556
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !4556
  %365 = or i1 %360, %362, !dbg !4559
  %366 = zext i1 %365 to i32, !dbg !4559
  call void @llvm.dbg.value(metadata i32 %366, metadata !4475, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i32 0, metadata !4482, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4554
  br label %373, !dbg !4498

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4486, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.value(metadata i32 2, metadata !4491, metadata !DIExpression()), !dbg !4560
  %368 = shl i64 %46, 1, !dbg !4562
  call void @llvm.dbg.value(metadata i64 %368, metadata !4492, metadata !DIExpression()), !dbg !4560
  %369 = icmp sgt i64 %46, -1, !dbg !4560
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !4560
  %371 = lshr i64 %46, 63, !dbg !4560
  %372 = trunc i64 %371 to i32, !dbg !4560
  call void @llvm.dbg.value(metadata i32 %372, metadata !4409, metadata !DIExpression()), !dbg !4460
  br label %373, !dbg !4563

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %46, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !4410
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !4564
  call void @llvm.dbg.value(metadata i32 %375, metadata !4409, metadata !DIExpression()), !dbg !4460
  %376 = or i32 %375, %45, !dbg !4498
  call void @llvm.dbg.value(metadata i32 %376, metadata !4404, metadata !DIExpression()), !dbg !4410
  %377 = getelementptr inbounds i8, ptr %26, i64 %71, !dbg !4565
  store ptr %377, ptr %20, align 8, !dbg !4565, !tbaa !911
  %378 = load i8, ptr %377, align 1, !dbg !4566, !tbaa !991
  %379 = icmp eq i8 %378, 0, !dbg !4566
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !4568
  call void @llvm.dbg.value(metadata i32 %381, metadata !4404, metadata !DIExpression()), !dbg !4410
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %25, metadata !4403, metadata !DIExpression()), !dbg !4410
  store i64 %46, ptr %3, align 8, !dbg !4569, !tbaa !3148
  %383 = or i32 %45, 2, !dbg !4570
  call void @llvm.dbg.value(metadata i32 %45, metadata !4404, metadata !DIExpression()), !dbg !4410
  br label %387

384:                                              ; preds = %373, %44
  %385 = phi i64 [ %46, %44 ], [ %374, %373 ], !dbg !4571
  %386 = phi i32 [ %45, %44 ], [ %381, %373 ], !dbg !4572
  call void @llvm.dbg.value(metadata i32 %386, metadata !4404, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i64 %385, metadata !4403, metadata !DIExpression()), !dbg !4410
  store i64 %385, ptr %3, align 8, !dbg !4573, !tbaa !3148
  br label %387, !dbg !4574

387:                                              ; preds = %43, %53, %384, %33, %30, %28, %37, %382, %22
  %388 = phi i32 [ 4, %22 ], [ %386, %384 ], [ %383, %382 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4410
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #38, !dbg !4575
  ret i32 %388, !dbg !4575
}

; Function Attrs: nounwind
declare !dbg !4576 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4581 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4619, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata ptr %1, metadata !4620, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i32 0, metadata !4621, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i32 0, metadata !4622, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i8 0, metadata !4623, metadata !DIExpression()), !dbg !4643
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4624, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata ptr %1, metadata !4628, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata ptr %3, metadata !4630, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i32 0, metadata !4621, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i32 0, metadata !4622, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i8 0, metadata !4623, metadata !DIExpression()), !dbg !4643
  %4 = load i8, ptr %1, align 1, !dbg !4647, !tbaa !991
  %5 = icmp eq i8 %4, 0, !dbg !4648
  br i1 %5, label %6, label %7, !dbg !4649

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4630, metadata !DIExpression()), !dbg !4646
  store i8 0, ptr %3, align 16, !dbg !4650, !tbaa !991
  br label %74, !dbg !4651

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4621, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i32 %11, metadata !4622, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata ptr %13, metadata !4628, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i8 %14, metadata !4623, metadata !DIExpression()), !dbg !4643
  %15 = sext i8 %8 to i32, !dbg !4647
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !4652

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !4621, metadata !DIExpression()), !dbg !4643
  %17 = icmp slt i64 %12, 80, !dbg !4653
  br i1 %17, label %18, label %47, !dbg !4656

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !4657
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !4630, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4646
  store i8 %8, ptr %9, align 1, !dbg !4658, !tbaa !991
  br label %47, !dbg !4659

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4621, metadata !DIExpression()), !dbg !4643
  %21 = or i32 %11, 576, !dbg !4660
  call void @llvm.dbg.value(metadata i32 %21, metadata !4622, metadata !DIExpression()), !dbg !4643
  %22 = icmp slt i64 %12, 80, !dbg !4661
  br i1 %22, label %23, label %47, !dbg !4663

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !4664
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !4630, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4646
  store i8 %8, ptr %9, align 1, !dbg !4665, !tbaa !991
  br label %47, !dbg !4666

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4621, metadata !DIExpression()), !dbg !4643
  %26 = or i32 %11, 1088, !dbg !4667
  call void @llvm.dbg.value(metadata i32 %26, metadata !4622, metadata !DIExpression()), !dbg !4643
  %27 = icmp slt i64 %12, 80, !dbg !4668
  br i1 %27, label %28, label %47, !dbg !4670

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !4671
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4630, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4646
  store i8 %8, ptr %9, align 1, !dbg !4672, !tbaa !991
  br label %47, !dbg !4673

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !4622, metadata !DIExpression()), !dbg !4643
  %31 = icmp slt i64 %12, 80, !dbg !4674
  br i1 %31, label %32, label %47, !dbg !4676

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !4677
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4630, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4646
  store i8 %8, ptr %9, align 1, !dbg !4678, !tbaa !991
  br label %47, !dbg !4679

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !4621, metadata !DIExpression()), !dbg !4643
  %35 = icmp slt i64 %12, 80, !dbg !4680
  br i1 %35, label %36, label %47, !dbg !4682

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !4683
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !4630, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4646
  store i8 %8, ptr %9, align 1, !dbg !4684, !tbaa !991
  br label %47, !dbg !4685

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !4686
  call void @llvm.dbg.value(metadata i32 %39, metadata !4622, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i8 1, metadata !4623, metadata !DIExpression()), !dbg !4643
  br label %47, !dbg !4687

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !4688
  call void @llvm.dbg.value(metadata i32 %41, metadata !4622, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i8 1, metadata !4623, metadata !DIExpression()), !dbg !4643
  br label %47, !dbg !4689

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #39, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %43, metadata !4631, metadata !DIExpression()), !dbg !4691
  %44 = sub nsw i64 80, %12, !dbg !4692
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %45, metadata !4631, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata ptr %9, metadata !4695, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata ptr %13, metadata !4698, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i64 %45, metadata !4699, metadata !DIExpression()), !dbg !4700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #38, !dbg !4702
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !4703
  call void @llvm.dbg.value(metadata ptr %46, metadata !4630, metadata !DIExpression()), !dbg !4646
  br label %56, !dbg !4704

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !4643
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !4643
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !4643
  call void @llvm.dbg.value(metadata i32 %51, metadata !4621, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i32 %50, metadata !4622, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !4630, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4646
  call void @llvm.dbg.value(metadata i8 %48, metadata !4623, metadata !DIExpression()), !dbg !4643
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !4705
  call void @llvm.dbg.value(metadata ptr %52, metadata !4628, metadata !DIExpression()), !dbg !4646
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !4643
  call void @llvm.dbg.value(metadata ptr %53, metadata !4630, metadata !DIExpression()), !dbg !4646
  %54 = load i8, ptr %52, align 1, !dbg !4647, !tbaa !991
  %55 = icmp eq i8 %54, 0, !dbg !4648
  br i1 %55, label %56, label %7, !dbg !4649, !llvm.loop !4706

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !4646
  call void @llvm.dbg.value(metadata ptr %60, metadata !4630, metadata !DIExpression()), !dbg !4646
  store i8 0, ptr %60, align 1, !dbg !4650, !tbaa !991
  %61 = and i8 %57, 1, !dbg !4708
  %62 = icmp eq i8 %61, 0, !dbg !4708
  br i1 %62, label %74, label %63, !dbg !4651

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !4709
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #38, !dbg !4710
  call void @llvm.dbg.value(metadata i32 %65, metadata !4636, metadata !DIExpression()), !dbg !4711
  %66 = icmp slt i32 %65, 0, !dbg !4712
  br i1 %66, label %76, label %67, !dbg !4714

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #38, !dbg !4715
  call void @llvm.dbg.value(metadata ptr %68, metadata !4639, metadata !DIExpression()), !dbg !4711
  %69 = icmp eq ptr %68, null, !dbg !4716
  br i1 %69, label %70, label %76, !dbg !4717

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #41, !dbg !4718
  %72 = load i32, ptr %71, align 4, !dbg !4718, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %72, metadata !4640, metadata !DIExpression()), !dbg !4719
  %73 = tail call i32 @close(i32 noundef %65) #38, !dbg !4720
  store i32 %72, ptr %71, align 4, !dbg !4721, !tbaa !982
  br label %76, !dbg !4722

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !4723, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata ptr %1, metadata !4726, metadata !DIExpression()), !dbg !4727
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4729
  br label %76, !dbg !4730

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !4643
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !4731
  ret ptr %77, !dbg !4731
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4732 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !4735 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4738 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4739 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4742 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4780, metadata !DIExpression()), !dbg !4785
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4786
  call void @llvm.dbg.value(metadata i1 poison, metadata !4781, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4785
  call void @llvm.dbg.value(metadata ptr %0, metadata !4787, metadata !DIExpression()), !dbg !4790
  %3 = load i32, ptr %0, align 8, !dbg !4792, !tbaa !1272
  %4 = and i32 %3, 32, !dbg !4793
  %5 = icmp eq i32 %4, 0, !dbg !4793
  call void @llvm.dbg.value(metadata i1 %5, metadata !4783, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4785
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4794
  %7 = icmp eq i32 %6, 0, !dbg !4795
  call void @llvm.dbg.value(metadata i1 %7, metadata !4784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4785
  br i1 %5, label %8, label %18, !dbg !4796

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4798
  call void @llvm.dbg.value(metadata i1 %9, metadata !4781, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4785
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4799
  %11 = xor i1 %7, true, !dbg !4799
  %12 = sext i1 %11 to i32, !dbg !4799
  br i1 %10, label %21, label %13, !dbg !4799

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4800
  %15 = load i32, ptr %14, align 4, !dbg !4800, !tbaa !982
  %16 = icmp ne i32 %15, 9, !dbg !4801
  %17 = sext i1 %16 to i32, !dbg !4802
  br label %21, !dbg !4802

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4803

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4805
  store i32 0, ptr %20, align 4, !dbg !4807, !tbaa !982
  br label %21, !dbg !4805

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4785
  ret i32 %22, !dbg !4808
}

; Function Attrs: nounwind
declare !dbg !4809 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4812 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4817, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata ptr %1, metadata !4818, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i64 %2, metadata !4819, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata ptr %3, metadata !4820, metadata !DIExpression()), !dbg !4822
  %5 = icmp eq ptr %1, null, !dbg !4823
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4825
  %7 = select i1 %5, ptr @.str.137, ptr %1, !dbg !4825
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4825
  call void @llvm.dbg.value(metadata i64 %8, metadata !4819, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata ptr %7, metadata !4818, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata ptr %6, metadata !4817, metadata !DIExpression()), !dbg !4822
  %9 = icmp eq ptr %3, null, !dbg !4826
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4828
  call void @llvm.dbg.value(metadata ptr %10, metadata !4820, metadata !DIExpression()), !dbg !4822
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %11, metadata !4821, metadata !DIExpression()), !dbg !4822
  %12 = icmp ult i64 %11, -3, !dbg !4830
  br i1 %12, label %13, label %17, !dbg !4832

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !4833
  %15 = icmp eq i32 %14, 0, !dbg !4833
  br i1 %15, label %16, label %29, !dbg !4834

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4835, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr %10, metadata !4842, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i32 0, metadata !4845, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 8, metadata !4846, metadata !DIExpression()), !dbg !4847
  store i64 0, ptr %10, align 1, !dbg !4849
  br label %29, !dbg !4850

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4851
  br i1 %18, label %19, label %20, !dbg !4853

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4854
  unreachable, !dbg !4854

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4855

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !4857
  br i1 %23, label %29, label %24, !dbg !4858

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4859
  br i1 %25, label %29, label %26, !dbg !4862

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4863, !tbaa !991
  %28 = zext i8 %27 to i32, !dbg !4864
  store i32 %28, ptr %6, align 4, !dbg !4865, !tbaa !982
  br label %29, !dbg !4866

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4822
  ret i64 %30, !dbg !4867
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4868 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4873 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4875, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i64 %1, metadata !4876, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i64 %2, metadata !4877, metadata !DIExpression()), !dbg !4879
  %4 = icmp eq i64 %2, 0, !dbg !4880
  br i1 %4, label %8, label %5, !dbg !4880

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4880
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4880
  br i1 %7, label %13, label %8, !dbg !4880

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4878, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4879
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4878, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4879
  %9 = mul i64 %2, %1, !dbg !4880
  call void @llvm.dbg.value(metadata i64 %9, metadata !4878, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata ptr %0, metadata !4882, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata i64 %9, metadata !4885, metadata !DIExpression()), !dbg !4886
  %10 = icmp eq i64 %9, 0, !dbg !4888
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4888
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4889
  br label %15, !dbg !4890

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4878, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4879
  %14 = tail call ptr @__errno_location() #41, !dbg !4891
  store i32 12, ptr %14, align 4, !dbg !4893, !tbaa !982
  br label %15, !dbg !4894

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4879
  ret ptr %16, !dbg !4895
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4896 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4900, metadata !DIExpression()), !dbg !4905
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4906
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4901, metadata !DIExpression()), !dbg !4907
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4908
  %4 = icmp eq i32 %3, 0, !dbg !4908
  br i1 %4, label %5, label %12, !dbg !4910

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4911, metadata !DIExpression()), !dbg !4915
  %6 = load i16, ptr %2, align 16, !dbg !4918
  %7 = icmp eq i16 %6, 67, !dbg !4918
  br i1 %7, label %11, label %8, !dbg !4919

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4911, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata ptr @.str.1.142, metadata !4914, metadata !DIExpression()), !dbg !4920
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.142, i64 6), !dbg !4922
  %10 = icmp eq i32 %9, 0, !dbg !4923
  br i1 %10, label %11, label %12, !dbg !4924

11:                                               ; preds = %8, %5
  br label %12, !dbg !4925

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4905
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4926
  ret i1 %13, !dbg !4926
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4931, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata ptr %1, metadata !4932, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %2, metadata !4933, metadata !DIExpression()), !dbg !4934
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4935
  ret i32 %4, !dbg !4936
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4941, metadata !DIExpression()), !dbg !4942
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4943
  ret ptr %2, !dbg !4944
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4945 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4947, metadata !DIExpression()), !dbg !4949
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4950
  call void @llvm.dbg.value(metadata ptr %2, metadata !4948, metadata !DIExpression()), !dbg !4949
  ret ptr %2, !dbg !4951
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4952 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4954, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata ptr %1, metadata !4955, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 %2, metadata !4956, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i32 %0, metadata !4947, metadata !DIExpression()), !dbg !4962
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4964
  call void @llvm.dbg.value(metadata ptr %4, metadata !4948, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata ptr %4, metadata !4957, metadata !DIExpression()), !dbg !4961
  %5 = icmp eq ptr %4, null, !dbg !4965
  br i1 %5, label %6, label %9, !dbg !4966

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4967
  br i1 %7, label %19, label %8, !dbg !4970

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4971, !tbaa !991
  br label %19, !dbg !4972

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4973
  call void @llvm.dbg.value(metadata i64 %10, metadata !4958, metadata !DIExpression()), !dbg !4974
  %11 = icmp ult i64 %10, %2, !dbg !4975
  br i1 %11, label %12, label %14, !dbg !4977

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4978
  call void @llvm.dbg.value(metadata ptr %1, metadata !4980, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.value(metadata ptr %4, metadata !4983, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.value(metadata i64 %13, metadata !4984, metadata !DIExpression()), !dbg !4985
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4987
  br label %19, !dbg !4988

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4989
  br i1 %15, label %19, label %16, !dbg !4992

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4993
  call void @llvm.dbg.value(metadata ptr %1, metadata !4980, metadata !DIExpression()), !dbg !4995
  call void @llvm.dbg.value(metadata ptr %4, metadata !4983, metadata !DIExpression()), !dbg !4995
  call void @llvm.dbg.value(metadata i64 %17, metadata !4984, metadata !DIExpression()), !dbg !4995
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4997
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4998
  store i8 0, ptr %18, align 1, !dbg !4999, !tbaa !991
  br label %19, !dbg !5000

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5001
  ret i32 %20, !dbg !5002
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nofree nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!66, !478, !482, !497, !771, !806, !809, !811, !814, !816, !818, !549, !563, !610, !820, !763, !826, !857, !859, !871, !878, !880, !790, !882, !885, !889, !891}
!llvm.ident = !{!893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893, !893}
!llvm.module.flags = !{!894, !895, !896, !897, !898, !899}

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
!496 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !497, file: !498, line: 66, type: !544, isLocal: false, isDefinition: true)
!497 = distinct !DICompileUnit(language: DW_LANG_C11, file: !498, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !499, globals: !500, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!499 = !{!137, !144}
!500 = !{!501, !503, !523, !525, !527, !529, !495, !531, !533, !535, !537, !542}
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !498, line: 272, type: !19, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "old_file_name", scope: !505, file: !498, line: 304, type: !142, isLocal: true, isDefinition: true)
!505 = distinct !DISubprogram(name: "verror_at_line", scope: !498, file: !498, line: 298, type: !506, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !516)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !83, !83, !142, !69, !142, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !510)
!510 = !{!511, !513, !514, !515}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !509, file: !512, baseType: !69, size: 32)
!512 = !DIFile(filename: "lib/error.c", directory: "/src")
!513 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !509, file: !512, baseType: !69, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !509, file: !512, baseType: !137, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !509, file: !512, baseType: !137, size: 64, offset: 128)
!516 = !{!517, !518, !519, !520, !521, !522}
!517 = !DILocalVariable(name: "status", arg: 1, scope: !505, file: !498, line: 298, type: !83)
!518 = !DILocalVariable(name: "errnum", arg: 2, scope: !505, file: !498, line: 298, type: !83)
!519 = !DILocalVariable(name: "file_name", arg: 3, scope: !505, file: !498, line: 298, type: !142)
!520 = !DILocalVariable(name: "line_number", arg: 4, scope: !505, file: !498, line: 298, type: !69)
!521 = !DILocalVariable(name: "message", arg: 5, scope: !505, file: !498, line: 298, type: !142)
!522 = !DILocalVariable(name: "args", arg: 6, scope: !505, file: !498, line: 298, type: !508)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "old_line_number", scope: !505, file: !498, line: 305, type: !69, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !498, line: 338, type: !266, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !498, line: 346, type: !298, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !498, line: 346, type: !163, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "error_message_count", scope: !497, file: !498, line: 69, type: !69, isLocal: false, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !497, file: !498, line: 295, type: !83, isLocal: false, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !498, line: 208, type: !293, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !498, line: 208, type: !539, isLocal: true, isDefinition: true)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 21)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !498, line: 214, type: !19, isLocal: true, isDefinition: true)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{null}
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "program_name", scope: !549, file: !550, line: 31, type: !142, isLocal: false, isDefinition: true)
!549 = distinct !DICompileUnit(language: DW_LANG_C11, file: !550, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !551, globals: !552, splitDebugInlining: false, nameTableKind: None)
!550 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!551 = !{!136}
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
!563 = distinct !DICompileUnit(language: DW_LANG_C11, file: !560, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !564, splitDebugInlining: false, nameTableKind: None)
!564 = !{!557}
!565 = !{!566, !567, !568, !569, !570}
!566 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !559, file: !560, line: 38, type: !142)
!567 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !559, file: !560, line: 38, type: !142)
!568 = !DILocalVariable(name: "translation", scope: !559, file: !560, line: 40, type: !142)
!569 = !DILocalVariable(name: "w", scope: !559, file: !560, line: 47, type: !431)
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
!609 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !610, file: !586, line: 76, type: !682, isLocal: false, isDefinition: true)
!610 = distinct !DICompileUnit(language: DW_LANG_C11, file: !586, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !611, retainedTypes: !617, globals: !618, splitDebugInlining: false, nameTableKind: None)
!611 = !{!102, !612, !87}
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !103, line: 254, baseType: !69, size: 32, elements: !613)
!613 = !{!614, !615, !616}
!614 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!615 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!616 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!617 = !{!83, !138, !139}
!618 = !{!584, !587, !589, !594, !596, !598, !600, !602, !604, !606, !608, !619, !623, !633, !635, !640, !642, !644, !646, !648, !671, !678, !680}
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !610, file: !586, line: 92, type: !621, isLocal: false, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 320, elements: !57)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !610, file: !586, line: 1040, type: !625, isLocal: false, isDefinition: true)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !586, line: 56, size: 448, elements: !626)
!626 = !{!627, !628, !629, !631, !632}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !625, file: !586, line: 59, baseType: !102, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !586, line: 62, baseType: !83, size: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !625, file: !586, line: 66, baseType: !630, size: 256, offset: 64)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !299)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !625, file: !586, line: 69, baseType: !142, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !625, file: !586, line: 72, baseType: !142, size: 64, offset: 384)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !610, file: !586, line: 107, type: !625, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "slot0", scope: !610, file: !586, line: 831, type: !637, isLocal: true, isDefinition: true)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 256)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !586, line: 321, type: !163, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !586, line: 357, type: !163, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !586, line: 358, type: !163, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !586, line: 199, type: !293, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "quote", scope: !650, file: !586, line: 228, type: !669, isLocal: true, isDefinition: true)
!650 = distinct !DISubprogram(name: "gettext_quote", scope: !586, file: !586, line: 197, type: !651, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{!142, !142, !102}
!653 = !{!654, !655, !656, !657, !658}
!654 = !DILocalVariable(name: "msgid", arg: 1, scope: !650, file: !586, line: 197, type: !142)
!655 = !DILocalVariable(name: "s", arg: 2, scope: !650, file: !586, line: 197, type: !102)
!656 = !DILocalVariable(name: "translation", scope: !650, file: !586, line: 199, type: !142)
!657 = !DILocalVariable(name: "w", scope: !650, file: !586, line: 229, type: !431)
!658 = !DILocalVariable(name: "mbs", scope: !650, file: !586, line: 230, type: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !572, line: 6, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !574, line: 21, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 13, size: 64, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !661, file: !574, line: 15, baseType: !83, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !661, file: !574, line: 20, baseType: !665, size: 32, offset: 32)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !574, line: 16, size: 32, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !665, file: !574, line: 18, baseType: !69, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !665, file: !574, line: 19, baseType: !266, size: 32)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !670)
!670 = !{!165, !268}
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "slotvec", scope: !610, file: !586, line: 834, type: !673, isLocal: true, isDefinition: true)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !586, line: 823, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !674, file: !586, line: 825, baseType: !139, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !674, file: !586, line: 826, baseType: !136, size: 64, offset: 64)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(name: "nslots", scope: !610, file: !586, line: 832, type: !83, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(name: "slotvec0", scope: !610, file: !586, line: 833, type: !674, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 704, elements: !377)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !686, line: 67, type: !369, isLocal: true, isDefinition: true)
!686 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !686, line: 69, type: !293, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !686, line: 83, type: !293, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !686, line: 83, type: !266, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !686, line: 85, type: !163, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !686, line: 88, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 171)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !686, line: 88, type: !702, isLocal: true, isDefinition: true)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 34)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !686, line: 105, type: !158, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !686, line: 109, type: !709, isLocal: true, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 23)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !686, line: 113, type: !714, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 28)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !686, line: 120, type: !719, isLocal: true, isDefinition: true)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 32)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !686, line: 127, type: !724, isLocal: true, isDefinition: true)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !469)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !686, line: 134, type: !320, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !686, line: 142, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 44)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !686, line: 150, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 48)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !686, line: 159, type: !739, isLocal: true, isDefinition: true)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 52)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !686, line: 170, type: !14, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !686, line: 248, type: !251, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !686, line: 248, type: !345, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !686, line: 254, type: !251, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !686, line: 254, type: !153, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !686, line: 254, type: !320, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !686, line: 259, type: !3, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !686, line: 259, type: !758, isLocal: true, isDefinition: true)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 29)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !763, file: !764, line: 26, type: !766, isLocal: false, isDefinition: true)
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !765, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!765 = !{!761}
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 376, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 47)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(name: "exit_failure", scope: !771, file: !772, line: 24, type: !774, isLocal: false, isDefinition: true)
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !773, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!773 = !{!769}
!774 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !777, line: 34, type: !282, isLocal: true, isDefinition: true)
!777 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !777, line: 34, type: !293, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !777, line: 34, type: !315, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !784, line: 80, type: !293, isLocal: true, isDefinition: true)
!784 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !787, line: 108, type: !51, isLocal: true, isDefinition: true)
!787 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "internal_state", scope: !790, file: !787, line: 97, type: !793, isLocal: true, isDefinition: true)
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !791, globals: !792, splitDebugInlining: false, nameTableKind: None)
!791 = !{!137, !139, !144}
!792 = !{!785, !788}
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !572, line: 6, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !574, line: 21, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 13, size: 64, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !795, file: !574, line: 15, baseType: !83, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !795, file: !574, line: 20, baseType: !799, size: 32, offset: 32)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !574, line: 16, size: 32, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !799, file: !574, line: 18, baseType: !69, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !799, file: !574, line: 19, baseType: !266, size: 32)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !805, line: 35, type: !271, isLocal: true, isDefinition: true)
!805 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !808, splitDebugInlining: false, nameTableKind: None)
!807 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!808 = !{!116}
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !813, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!813 = !{!137}
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !813, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !821, retainedTypes: !813, globals: !825, splitDebugInlining: false, nameTableKind: None)
!821 = !{!822}
!822 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !686, line: 40, baseType: !69, size: 32, elements: !823)
!823 = !{!824}
!824 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!825 = !{!684, !687, !689, !691, !693, !695, !700, !705, !707, !712, !717, !722, !725, !727, !732, !737, !742, !744, !746, !748, !750, !752, !754, !756}
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !828, retainedTypes: !856, splitDebugInlining: false, nameTableKind: None)
!827 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!828 = !{!829, !841}
!829 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !830, file: !827, line: 188, baseType: !69, size: 32, elements: !839)
!830 = distinct !DISubprogram(name: "x2nrealloc", scope: !827, file: !827, line: 176, type: !831, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !834)
!831 = !DISubroutineType(types: !832)
!832 = !{!137, !137, !833, !139}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!834 = !{!835, !836, !837, !838}
!835 = !DILocalVariable(name: "p", arg: 1, scope: !830, file: !827, line: 176, type: !137)
!836 = !DILocalVariable(name: "pn", arg: 2, scope: !830, file: !827, line: 176, type: !833)
!837 = !DILocalVariable(name: "s", arg: 3, scope: !830, file: !827, line: 176, type: !139)
!838 = !DILocalVariable(name: "n", scope: !830, file: !827, line: 178, type: !139)
!839 = !{!840}
!840 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!841 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !842, file: !827, line: 228, baseType: !69, size: 32, elements: !839)
!842 = distinct !DISubprogram(name: "xpalloc", scope: !827, file: !827, line: 223, type: !843, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !846)
!843 = !DISubroutineType(types: !844)
!844 = !{!137, !137, !845, !412, !414, !412}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854, !855}
!847 = !DILocalVariable(name: "pa", arg: 1, scope: !842, file: !827, line: 223, type: !137)
!848 = !DILocalVariable(name: "pn", arg: 2, scope: !842, file: !827, line: 223, type: !845)
!849 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !842, file: !827, line: 223, type: !412)
!850 = !DILocalVariable(name: "n_max", arg: 4, scope: !842, file: !827, line: 223, type: !414)
!851 = !DILocalVariable(name: "s", arg: 5, scope: !842, file: !827, line: 223, type: !412)
!852 = !DILocalVariable(name: "n0", scope: !842, file: !827, line: 230, type: !412)
!853 = !DILocalVariable(name: "n", scope: !842, file: !827, line: 237, type: !412)
!854 = !DILocalVariable(name: "nbytes", scope: !842, file: !827, line: 248, type: !412)
!855 = !DILocalVariable(name: "adjusted_nbytes", scope: !842, file: !827, line: 252, type: !412)
!856 = !{!136, !137, !168, !230, !141}
!857 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !858, splitDebugInlining: false, nameTableKind: None)
!858 = !{!775, !778, !780}
!859 = distinct !DICompileUnit(language: DW_LANG_C11, file: !860, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !861, globals: !870, splitDebugInlining: false, nameTableKind: None)
!860 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!861 = !{!862, !74}
!862 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !863, line: 30, baseType: !69, size: 32, elements: !864)
!863 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!864 = !{!865, !866, !867, !868, !869}
!865 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!866 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!867 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!868 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!869 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!870 = !{!782}
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !872, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !873, retainedTypes: !874, splitDebugInlining: false, nameTableKind: None)
!872 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!873 = !{!862, !87}
!874 = !{!83, !138, !136, !168, !141, !875}
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !876, line: 102, baseType: !877)
!876 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !229, line: 73, baseType: !141)
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !879, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !813, splitDebugInlining: false, nameTableKind: None)
!879 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!880 = distinct !DICompileUnit(language: DW_LANG_C11, file: !881, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!881 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!882 = distinct !DICompileUnit(language: DW_LANG_C11, file: !883, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !884, splitDebugInlining: false, nameTableKind: None)
!883 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!884 = !{!168, !141, !137}
!885 = distinct !DICompileUnit(language: DW_LANG_C11, file: !805, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !886, splitDebugInlining: false, nameTableKind: None)
!886 = !{!887, !803}
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !805, line: 35, type: !163, isLocal: true, isDefinition: true)
!889 = distinct !DICompileUnit(language: DW_LANG_C11, file: !890, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!890 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!891 = distinct !DICompileUnit(language: DW_LANG_C11, file: !892, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !813, splitDebugInlining: false, nameTableKind: None)
!892 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!893 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!894 = !{i32 7, !"Dwarf Version", i32 5}
!895 = !{i32 2, !"Debug Info Version", i32 3}
!896 = !{i32 1, !"wchar_size", i32 4}
!897 = !{i32 8, !"PIC Level", i32 2}
!898 = !{i32 7, !"PIE Level", i32 2}
!899 = !{i32 7, !"uwtable", i32 2}
!900 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 70, type: !901, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !83}
!903 = !{!904}
!904 = !DILocalVariable(name: "status", arg: 1, scope: !900, file: !2, line: 70, type: !83)
!905 = !DILocation(line: 0, scope: !900)
!906 = !DILocation(line: 72, column: 14, scope: !907)
!907 = distinct !DILexicalBlock(scope: !900, file: !2, line: 72, column: 7)
!908 = !DILocation(line: 72, column: 7, scope: !900)
!909 = !DILocation(line: 73, column: 5, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !2, line: 73, column: 5)
!911 = !{!912, !912, i64 0}
!912 = !{!"any pointer", !913, i64 0}
!913 = !{!"omnipotent char", !914, i64 0}
!914 = !{!"Simple C/C++ TBAA"}
!915 = !DILocation(line: 76, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !907, file: !2, line: 75, column: 5)
!917 = !DILocation(line: 80, column: 7, scope: !916)
!918 = !DILocation(line: 729, column: 3, scope: !919, inlinedAt: !921)
!919 = distinct !DISubprogram(name: "emit_stdin_note", scope: !82, file: !82, line: 727, type: !545, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !920)
!920 = !{}
!921 = distinct !DILocation(line: 84, column: 7, scope: !916)
!922 = !DILocation(line: 736, column: 3, scope: !923, inlinedAt: !924)
!923 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !82, file: !82, line: 734, type: !545, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !920)
!924 = distinct !DILocation(line: 85, column: 7, scope: !916)
!925 = !DILocation(line: 87, column: 7, scope: !916)
!926 = !DILocation(line: 91, column: 7, scope: !916)
!927 = !DILocation(line: 95, column: 7, scope: !916)
!928 = !DILocation(line: 99, column: 7, scope: !916)
!929 = !DILocation(line: 103, column: 7, scope: !916)
!930 = !DILocation(line: 104, column: 7, scope: !916)
!931 = !DILocalVariable(name: "program", arg: 1, scope: !932, file: !82, line: 836, type: !142)
!932 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 836, type: !933, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !142}
!935 = !{!931, !936, !943, !944, !946, !947}
!936 = !DILocalVariable(name: "infomap", scope: !932, file: !82, line: 838, type: !937)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 896, elements: !294)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !932, file: !82, line: 838, size: 128, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !939, file: !82, line: 838, baseType: !142, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !939, file: !82, line: 838, baseType: !142, size: 64, offset: 64)
!943 = !DILocalVariable(name: "node", scope: !932, file: !82, line: 848, type: !142)
!944 = !DILocalVariable(name: "map_prog", scope: !932, file: !82, line: 849, type: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!946 = !DILocalVariable(name: "lc_messages", scope: !932, file: !82, line: 861, type: !142)
!947 = !DILocalVariable(name: "url_program", scope: !932, file: !82, line: 874, type: !142)
!948 = !DILocation(line: 0, scope: !932, inlinedAt: !949)
!949 = distinct !DILocation(line: 105, column: 7, scope: !916)
!950 = !DILocation(line: 857, column: 3, scope: !932, inlinedAt: !949)
!951 = !DILocation(line: 861, column: 29, scope: !932, inlinedAt: !949)
!952 = !DILocation(line: 862, column: 7, scope: !953, inlinedAt: !949)
!953 = distinct !DILexicalBlock(scope: !932, file: !82, line: 862, column: 7)
!954 = !DILocation(line: 862, column: 19, scope: !953, inlinedAt: !949)
!955 = !DILocation(line: 862, column: 22, scope: !953, inlinedAt: !949)
!956 = !DILocation(line: 862, column: 7, scope: !932, inlinedAt: !949)
!957 = !DILocation(line: 868, column: 7, scope: !958, inlinedAt: !949)
!958 = distinct !DILexicalBlock(scope: !953, file: !82, line: 863, column: 5)
!959 = !DILocation(line: 870, column: 5, scope: !958, inlinedAt: !949)
!960 = !DILocation(line: 875, column: 3, scope: !932, inlinedAt: !949)
!961 = !DILocation(line: 877, column: 3, scope: !932, inlinedAt: !949)
!962 = !DILocation(line: 107, column: 3, scope: !900)
!963 = !DISubprogram(name: "dcgettext", scope: !964, file: !964, line: 51, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!964 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!965 = !DISubroutineType(types: !966)
!966 = !{!136, !142, !142, !83}
!967 = !DISubprogram(name: "__fprintf_chk", scope: !968, file: !968, line: 93, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!968 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!969 = !DISubroutineType(types: !970)
!970 = !{!83, !971, !83, !972, null}
!971 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!972 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!973 = !DISubprogram(name: "__printf_chk", scope: !968, file: !968, line: 95, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!974 = !DISubroutineType(types: !975)
!975 = !{!83, !83, !972, null}
!976 = !DISubprogram(name: "fputs_unlocked", scope: !977, file: !977, line: 691, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!977 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!978 = !DISubroutineType(types: !979)
!979 = !{!83, !972, !971}
!980 = !DILocation(line: 0, scope: !180)
!981 = !DILocation(line: 581, column: 7, scope: !188)
!982 = !{!983, !983, i64 0}
!983 = !{!"int", !913, i64 0}
!984 = !DILocation(line: 581, column: 19, scope: !188)
!985 = !DILocation(line: 581, column: 7, scope: !180)
!986 = !DILocation(line: 585, column: 26, scope: !187)
!987 = !DILocation(line: 0, scope: !187)
!988 = !DILocation(line: 586, column: 23, scope: !187)
!989 = !DILocation(line: 586, column: 28, scope: !187)
!990 = !DILocation(line: 586, column: 32, scope: !187)
!991 = !{!913, !913, i64 0}
!992 = !DILocation(line: 586, column: 38, scope: !187)
!993 = !DILocalVariable(name: "__s1", arg: 1, scope: !994, file: !995, line: 1359, type: !142)
!994 = distinct !DISubprogram(name: "streq", scope: !995, file: !995, line: 1359, type: !996, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !998)
!995 = !DIFile(filename: "./lib/string.h", directory: "/src")
!996 = !DISubroutineType(types: !997)
!997 = !{!168, !142, !142}
!998 = !{!993, !999}
!999 = !DILocalVariable(name: "__s2", arg: 2, scope: !994, file: !995, line: 1359, type: !142)
!1000 = !DILocation(line: 0, scope: !994, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 586, column: 41, scope: !187)
!1002 = !DILocation(line: 1361, column: 11, scope: !994, inlinedAt: !1001)
!1003 = !DILocation(line: 1361, column: 10, scope: !994, inlinedAt: !1001)
!1004 = !DILocation(line: 586, column: 19, scope: !187)
!1005 = !DILocation(line: 587, column: 5, scope: !187)
!1006 = !DILocation(line: 588, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !180, file: !82, line: 588, column: 7)
!1008 = !DILocation(line: 588, column: 7, scope: !180)
!1009 = !DILocation(line: 590, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !82, line: 589, column: 5)
!1011 = !DILocation(line: 591, column: 7, scope: !1010)
!1012 = !DILocation(line: 595, column: 37, scope: !180)
!1013 = !DILocation(line: 595, column: 35, scope: !180)
!1014 = !DILocation(line: 596, column: 29, scope: !180)
!1015 = !DILocation(line: 597, column: 8, scope: !195)
!1016 = !DILocation(line: 597, column: 7, scope: !180)
!1017 = !DILocation(line: 604, column: 24, scope: !194)
!1018 = !DILocation(line: 604, column: 12, scope: !195)
!1019 = !DILocation(line: 0, scope: !193)
!1020 = !DILocation(line: 610, column: 16, scope: !193)
!1021 = !DILocation(line: 610, column: 7, scope: !193)
!1022 = !DILocation(line: 611, column: 21, scope: !193)
!1023 = !{!1024, !1024, i64 0}
!1024 = !{!"short", !913, i64 0}
!1025 = !DILocation(line: 611, column: 19, scope: !193)
!1026 = !DILocation(line: 611, column: 16, scope: !193)
!1027 = !DILocation(line: 610, column: 30, scope: !193)
!1028 = distinct !{!1028, !1021, !1022, !1029}
!1029 = !{!"llvm.loop.mustprogress"}
!1030 = !DILocation(line: 612, column: 18, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !193, file: !82, line: 612, column: 11)
!1032 = !DILocation(line: 612, column: 11, scope: !193)
!1033 = !DILocation(line: 618, column: 5, scope: !193)
!1034 = !DILocation(line: 620, column: 23, scope: !180)
!1035 = !DILocation(line: 625, column: 39, scope: !180)
!1036 = !DILocation(line: 626, column: 3, scope: !180)
!1037 = !DILocation(line: 626, column: 10, scope: !180)
!1038 = !DILocation(line: 626, column: 21, scope: !180)
!1039 = !DILocation(line: 628, column: 44, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !82, line: 628, column: 11)
!1041 = distinct !DILexicalBlock(scope: !180, file: !82, line: 627, column: 5)
!1042 = !DILocation(line: 628, column: 32, scope: !1040)
!1043 = !DILocation(line: 628, column: 49, scope: !1040)
!1044 = !DILocation(line: 628, column: 11, scope: !1041)
!1045 = !DILocation(line: 630, column: 11, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !82, line: 630, column: 11)
!1047 = !DILocation(line: 630, column: 11, scope: !1041)
!1048 = !DILocation(line: 632, column: 26, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !82, line: 632, column: 15)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !82, line: 631, column: 9)
!1051 = !DILocation(line: 632, column: 34, scope: !1049)
!1052 = !DILocation(line: 632, column: 37, scope: !1049)
!1053 = !DILocation(line: 632, column: 15, scope: !1050)
!1054 = !DILocation(line: 636, column: 16, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !82, line: 636, column: 15)
!1056 = !DILocation(line: 636, column: 29, scope: !1055)
!1057 = !DILocation(line: 640, column: 16, scope: !1041)
!1058 = distinct !{!1058, !1036, !1059, !1029}
!1059 = !DILocation(line: 641, column: 5, scope: !180)
!1060 = !DILocation(line: 644, column: 3, scope: !180)
!1061 = !DILocation(line: 0, scope: !994, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 648, column: 31, scope: !180)
!1063 = !DILocation(line: 0, scope: !994, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 649, column: 31, scope: !180)
!1065 = !DILocation(line: 0, scope: !994, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 650, column: 31, scope: !180)
!1067 = !DILocation(line: 0, scope: !994, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 651, column: 31, scope: !180)
!1069 = !DILocation(line: 0, scope: !994, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 652, column: 31, scope: !180)
!1071 = !DILocation(line: 0, scope: !994, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 653, column: 31, scope: !180)
!1073 = !DILocation(line: 0, scope: !994, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 654, column: 31, scope: !180)
!1075 = !DILocation(line: 0, scope: !994, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 655, column: 31, scope: !180)
!1077 = !DILocation(line: 0, scope: !994, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 656, column: 31, scope: !180)
!1079 = !DILocation(line: 0, scope: !994, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 657, column: 31, scope: !180)
!1081 = !DILocation(line: 663, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !180, file: !82, line: 663, column: 7)
!1083 = !DILocation(line: 664, column: 7, scope: !1082)
!1084 = !DILocation(line: 664, column: 10, scope: !1082)
!1085 = !DILocation(line: 663, column: 7, scope: !180)
!1086 = !DILocation(line: 669, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !82, line: 665, column: 5)
!1088 = !DILocation(line: 671, column: 5, scope: !1087)
!1089 = !DILocation(line: 676, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !82, line: 673, column: 5)
!1091 = !DILocation(line: 679, column: 3, scope: !180)
!1092 = !DILocation(line: 683, column: 3, scope: !180)
!1093 = !DILocation(line: 686, column: 3, scope: !180)
!1094 = !DILocation(line: 688, column: 3, scope: !180)
!1095 = !DILocation(line: 691, column: 3, scope: !180)
!1096 = !DILocation(line: 695, column: 3, scope: !180)
!1097 = !DILocation(line: 696, column: 1, scope: !180)
!1098 = !DISubprogram(name: "setlocale", scope: !1099, file: !1099, line: 122, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1099 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!136, !83, !142}
!1102 = !DISubprogram(name: "strncmp", scope: !1103, file: !1103, line: 159, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1103 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!83, !142, !142, !139}
!1106 = !DISubprogram(name: "exit", scope: !1107, file: !1107, line: 624, type: !901, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1107 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1108 = !DISubprogram(name: "getenv", scope: !1107, file: !1107, line: 641, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!136, !142}
!1111 = !DISubprogram(name: "strcmp", scope: !1103, file: !1103, line: 156, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!83, !142, !142}
!1114 = !DISubprogram(name: "strspn", scope: !1103, file: !1103, line: 297, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!141, !142, !142}
!1117 = !DISubprogram(name: "strchr", scope: !1103, file: !1103, line: 246, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!136, !142, !83}
!1120 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!1126 = !DISubprogram(name: "strcspn", scope: !1103, file: !1103, line: 293, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1127 = !DISubprogram(name: "fwrite_unlocked", scope: !977, file: !977, line: 704, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!139, !1130, !139, !139, !971}
!1130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1133 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 289, type: !1134, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1137)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!83, !83, !1136}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1145}
!1138 = !DILocalVariable(name: "argc", arg: 1, scope: !1133, file: !2, line: 289, type: !83)
!1139 = !DILocalVariable(name: "argv", arg: 2, scope: !1133, file: !2, line: 289, type: !1136)
!1140 = !DILocalVariable(name: "width", scope: !1133, file: !2, line: 291, type: !139)
!1141 = !DILocalVariable(name: "optc", scope: !1133, file: !2, line: 292, type: !83)
!1142 = !DILocalVariable(name: "ok", scope: !1133, file: !2, line: 293, type: !168)
!1143 = !DILocalVariable(name: "optargbuf", scope: !1144, file: !2, line: 305, type: !163)
!1144 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 304, column: 5)
!1145 = !DILocalVariable(name: "i", scope: !1146, file: !2, line: 352, type: !83)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 352, column: 7)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 350, column: 5)
!1148 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 347, column: 7)
!1149 = !DILocation(line: 0, scope: !1133)
!1150 = !DILocation(line: 296, column: 21, scope: !1133)
!1151 = !DILocation(line: 296, column: 3, scope: !1133)
!1152 = !DILocation(line: 297, column: 3, scope: !1133)
!1153 = !DILocation(line: 298, column: 3, scope: !1133)
!1154 = !DILocation(line: 299, column: 3, scope: !1133)
!1155 = !DILocation(line: 301, column: 3, scope: !1133)
!1156 = !DILocation(line: 303, column: 18, scope: !1133)
!1157 = !DILocation(line: 303, column: 71, scope: !1133)
!1158 = !DILocation(line: 303, column: 3, scope: !1133)
!1159 = !DILocation(line: 305, column: 7, scope: !1144)
!1160 = !DILocation(line: 305, column: 12, scope: !1144)
!1161 = !DILocation(line: 307, column: 7, scope: !1144)
!1162 = !DILocation(line: 333, column: 31, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 308, column: 9)
!1164 = !DILocation(line: 310, column: 25, scope: !1163)
!1165 = !DILocation(line: 311, column: 11, scope: !1163)
!1166 = !DILocation(line: 314, column: 25, scope: !1163)
!1167 = !DILocation(line: 315, column: 11, scope: !1163)
!1168 = !DILocation(line: 318, column: 24, scope: !1163)
!1169 = !DILocation(line: 319, column: 11, scope: !1163)
!1170 = !DILocation(line: 323, column: 15, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 323, column: 15)
!1172 = !DILocation(line: 323, column: 15, scope: !1163)
!1173 = !DILocation(line: 324, column: 19, scope: !1171)
!1174 = !DILocation(line: 324, column: 13, scope: !1171)
!1175 = !DILocation(line: 327, column: 30, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 326, column: 13)
!1177 = !DILocation(line: 327, column: 28, scope: !1176)
!1178 = !DILocation(line: 328, column: 28, scope: !1176)
!1179 = !DILocation(line: 329, column: 22, scope: !1176)
!1180 = !DILocation(line: 334, column: 31, scope: !1163)
!1181 = !DILocation(line: 333, column: 19, scope: !1163)
!1182 = !DILocation(line: 336, column: 11, scope: !1163)
!1183 = !DILocation(line: 338, column: 9, scope: !1163)
!1184 = !DILocation(line: 340, column: 9, scope: !1163)
!1185 = !DILocation(line: 343, column: 11, scope: !1163)
!1186 = !DILocation(line: 345, column: 5, scope: !1133)
!1187 = distinct !{!1187, !1158, !1186, !1029}
!1188 = !DILocation(line: 347, column: 15, scope: !1148)
!1189 = !DILocation(line: 347, column: 12, scope: !1148)
!1190 = !DILocation(line: 347, column: 7, scope: !1133)
!1191 = !DILocation(line: 0, scope: !1146)
!1192 = !DILocation(line: 352, column: 30, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 352, column: 7)
!1194 = !DILocation(line: 352, column: 7, scope: !1146)
!1195 = !DILocation(line: 348, column: 10, scope: !1148)
!1196 = !DILocation(line: 348, column: 5, scope: !1148)
!1197 = !DILocation(line: 353, column: 26, scope: !1193)
!1198 = !DILocation(line: 353, column: 15, scope: !1193)
!1199 = !DILocation(line: 353, column: 12, scope: !1193)
!1200 = !DILocation(line: 352, column: 39, scope: !1193)
!1201 = distinct !{!1201, !1194, !1202, !1029}
!1202 = !DILocation(line: 353, column: 40, scope: !1146)
!1203 = !DILocation(line: 356, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 356, column: 7)
!1205 = !DILocation(line: 356, column: 23, scope: !1204)
!1206 = !DILocation(line: 356, column: 34, scope: !1204)
!1207 = !DILocation(line: 356, column: 26, scope: !1204)
!1208 = !DILocation(line: 356, column: 41, scope: !1204)
!1209 = !DILocation(line: 356, column: 7, scope: !1133)
!1210 = !DILocation(line: 357, column: 5, scope: !1204)
!1211 = !DILocation(line: 359, column: 10, scope: !1133)
!1212 = !DILocation(line: 359, column: 3, scope: !1133)
!1213 = !DISubprogram(name: "bindtextdomain", scope: !964, file: !964, line: 86, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!136, !142, !142}
!1216 = !DISubprogram(name: "textdomain", scope: !964, file: !964, line: 82, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1217 = !DISubprogram(name: "atexit", scope: !1107, file: !1107, line: 602, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!83, !544}
!1220 = !DISubprogram(name: "getopt_long", scope: !392, file: !392, line: 66, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!83, !83, !1223, !142, !1225, !397}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1226 = !DILocation(line: 0, scope: !403)
!1227 = !DILocation(line: 0, scope: !994, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 169, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !403, file: !2, line: 169, column: 7)
!1230 = !DILocation(line: 1361, column: 11, scope: !994, inlinedAt: !1228)
!1231 = !DILocation(line: 1361, column: 10, scope: !994, inlinedAt: !1228)
!1232 = !DILocation(line: 169, column: 7, scope: !403)
!1233 = !DILocation(line: 171, column: 17, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 170, column: 5)
!1235 = !DILocation(line: 172, column: 23, scope: !1234)
!1236 = !DILocation(line: 173, column: 5, scope: !1234)
!1237 = !DILocation(line: 175, column: 15, scope: !1229)
!1238 = !DILocation(line: 0, scope: !1229)
!1239 = !DILocation(line: 177, column: 15, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !403, file: !2, line: 177, column: 7)
!1241 = !DILocation(line: 177, column: 7, scope: !403)
!1242 = !DILocation(line: 179, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 178, column: 5)
!1244 = !DILocation(line: 180, column: 7, scope: !1243)
!1245 = !DILocation(line: 183, column: 3, scope: !403)
!1246 = !DILocation(line: 187, column: 3, scope: !403)
!1247 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1248, file: !417, line: 71, type: !1251)
!1248 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !417, file: !417, line: 71, type: !1249, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1252)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!427, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1252 = !{!1247, !1253, !1254, !1257}
!1253 = !DILocalVariable(name: "available", scope: !1248, file: !417, line: 73, type: !412)
!1254 = !DILocalVariable(name: "start", scope: !1255, file: !417, line: 77, type: !412)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !417, line: 76, column: 5)
!1256 = distinct !DILexicalBlock(scope: !1248, file: !417, line: 75, column: 7)
!1257 = !DILocalVariable(name: "g", scope: !1248, file: !417, line: 92, type: !427)
!1258 = !DILocation(line: 0, scope: !1248, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 187, column: 15, scope: !403)
!1260 = !DILocation(line: 73, column: 35, scope: !1248, inlinedAt: !1259)
!1261 = !DILocation(line: 75, column: 17, scope: !1256, inlinedAt: !1259)
!1262 = !DILocation(line: 75, column: 32, scope: !1256, inlinedAt: !1259)
!1263 = !DILocalVariable(name: "__stream", arg: 1, scope: !1264, file: !1265, line: 128, type: !202)
!1264 = distinct !DISubprogram(name: "feof_unlocked", scope: !1265, file: !1265, line: 128, type: !1266, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1268)
!1265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!83, !202}
!1268 = !{!1263}
!1269 = !DILocation(line: 0, scope: !1264, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 75, column: 37, scope: !1256, inlinedAt: !1259)
!1271 = !DILocation(line: 130, column: 10, scope: !1264, inlinedAt: !1270)
!1272 = !{!1273, !983, i64 0}
!1273 = !{!"_IO_FILE", !983, i64 0, !912, i64 8, !912, i64 16, !912, i64 24, !912, i64 32, !912, i64 40, !912, i64 48, !912, i64 56, !912, i64 64, !912, i64 72, !912, i64 80, !912, i64 88, !912, i64 96, !912, i64 104, !983, i64 112, !983, i64 116, !1274, i64 120, !1024, i64 128, !913, i64 130, !913, i64 131, !912, i64 136, !1274, i64 144, !912, i64 152, !912, i64 160, !912, i64 168, !912, i64 176, !1274, i64 184, !983, i64 192, !913, i64 196}
!1274 = !{!"long", !913, i64 0}
!1275 = !DILocation(line: 75, column: 37, scope: !1256, inlinedAt: !1259)
!1276 = !DILocation(line: 75, column: 7, scope: !1248, inlinedAt: !1259)
!1277 = !DILocation(line: 78, column: 15, scope: !1278, inlinedAt: !1259)
!1278 = distinct !DILexicalBlock(scope: !1255, file: !417, line: 78, column: 11)
!1279 = !DILocation(line: 78, column: 11, scope: !1255, inlinedAt: !1259)
!1280 = !DILocation(line: 82, column: 49, scope: !1281, inlinedAt: !1259)
!1281 = distinct !DILexicalBlock(scope: !1278, file: !417, line: 81, column: 9)
!1282 = !DILocalVariable(name: "__dest", arg: 1, scope: !1283, file: !1284, line: 34, type: !137)
!1283 = distinct !DISubprogram(name: "memmove", scope: !1284, file: !1284, line: 34, type: !1285, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1287)
!1284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!137, !137, !1131, !139}
!1287 = !{!1282, !1288, !1289}
!1288 = !DILocalVariable(name: "__src", arg: 2, scope: !1283, file: !1284, line: 34, type: !1131)
!1289 = !DILocalVariable(name: "__len", arg: 3, scope: !1283, file: !1284, line: 34, type: !139)
!1290 = !DILocation(line: 0, scope: !1283, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 82, column: 11, scope: !1281, inlinedAt: !1259)
!1292 = !DILocation(line: 36, column: 10, scope: !1283, inlinedAt: !1291)
!1293 = !DILocation(line: 0, scope: !1255, inlinedAt: !1259)
!1294 = !DILocation(line: 0, scope: !1278, inlinedAt: !1259)
!1295 = !DILocation(line: 85, column: 23, scope: !1255, inlinedAt: !1259)
!1296 = !DILocation(line: 86, column: 41, scope: !1255, inlinedAt: !1259)
!1297 = !DILocation(line: 89, column: 5, scope: !1255, inlinedAt: !1259)
!1298 = !DILocation(line: 90, column: 17, scope: !1299, inlinedAt: !1259)
!1299 = distinct !DILexicalBlock(scope: !1248, file: !417, line: 90, column: 7)
!1300 = !DILocation(line: 90, column: 7, scope: !1248, inlinedAt: !1259)
!1301 = !DILocation(line: 92, column: 39, scope: !1248, inlinedAt: !1259)
!1302 = !DILocalVariable(name: "p", arg: 1, scope: !1303, file: !126, line: 230, type: !142)
!1303 = distinct !DISubprogram(name: "mcel_scan", scope: !126, file: !126, line: 230, type: !1304, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1306)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!427, !142, !142}
!1306 = !{!1302, !1307, !1308, !1309, !1320, !1321}
!1307 = !DILocalVariable(name: "lim", arg: 2, scope: !1303, file: !126, line: 230, type: !142)
!1308 = !DILocalVariable(name: "c", scope: !1303, file: !126, line: 235, type: !4)
!1309 = !DILocalVariable(name: "mbs", scope: !1303, file: !126, line: 244, type: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !572, line: 6, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !574, line: 21, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 13, size: 64, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1312, file: !574, line: 15, baseType: !83, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1312, file: !574, line: 20, baseType: !1316, size: 32, offset: 32)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !574, line: 16, size: 32, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1316, file: !574, line: 18, baseType: !69, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1316, file: !574, line: 19, baseType: !266, size: 32)
!1320 = !DILocalVariable(name: "ch", scope: !1303, file: !126, line: 267, type: !431)
!1321 = !DILocalVariable(name: "len", scope: !1303, file: !126, line: 268, type: !139)
!1322 = !DILocation(line: 0, scope: !1303, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 92, column: 14, scope: !1248, inlinedAt: !1259)
!1324 = !DILocation(line: 235, column: 12, scope: !1303, inlinedAt: !1323)
!1325 = !DILocalVariable(name: "c", arg: 1, scope: !1326, file: !126, line: 215, type: !4)
!1326 = distinct !DISubprogram(name: "mcel_isbasic", scope: !126, file: !126, line: 215, type: !1327, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1329)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!168, !4}
!1329 = !{!1325}
!1330 = !DILocation(line: 0, scope: !1326, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 236, column: 7, scope: !1332, inlinedAt: !1323)
!1332 = distinct !DILexicalBlock(scope: !1303, file: !126, line: 236, column: 7)
!1333 = !DILocation(line: 217, column: 10, scope: !1326, inlinedAt: !1331)
!1334 = !DILocation(line: 236, column: 7, scope: !1303, inlinedAt: !1323)
!1335 = !DILocalVariable(name: "len", arg: 2, scope: !1336, file: !126, line: 167, type: !139)
!1336 = distinct !DISubprogram(name: "mcel_ch", scope: !126, file: !126, line: 167, type: !1337, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1339)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!427, !431, !139}
!1339 = !{!1340, !1335}
!1340 = !DILocalVariable(name: "ch", arg: 1, scope: !1336, file: !126, line: 167, type: !431)
!1341 = !DILocation(line: 0, scope: !1336, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 237, column: 12, scope: !1332, inlinedAt: !1323)
!1343 = !DILocation(line: 172, column: 3, scope: !1336, inlinedAt: !1342)
!1344 = !DILocation(line: 237, column: 5, scope: !1332, inlinedAt: !1323)
!1345 = !DILocation(line: 93, column: 39, scope: !1248, inlinedAt: !1259)
!1346 = !DILocation(line: 244, column: 3, scope: !1303, inlinedAt: !1323)
!1347 = !DILocation(line: 244, column: 13, scope: !1303, inlinedAt: !1323)
!1348 = !DILocation(line: 244, column: 30, scope: !1303, inlinedAt: !1323)
!1349 = !{!1350, !983, i64 0}
!1350 = !{!"", !983, i64 0, !913, i64 4}
!1351 = !DILocation(line: 267, column: 3, scope: !1303, inlinedAt: !1323)
!1352 = !DILocation(line: 268, column: 38, scope: !1303, inlinedAt: !1323)
!1353 = !DILocation(line: 268, column: 16, scope: !1303, inlinedAt: !1323)
!1354 = !DILocation(line: 274, column: 7, scope: !1355, inlinedAt: !1323)
!1355 = distinct !DILexicalBlock(scope: !1303, file: !126, line: 274, column: 7)
!1356 = !DILocation(line: 274, column: 7, scope: !1303, inlinedAt: !1323)
!1357 = !{!"branch_weights", i32 1, i32 2000}
!1358 = !DILocalVariable(name: "err", arg: 1, scope: !1359, file: !126, line: 175, type: !144)
!1359 = distinct !DISubprogram(name: "mcel_err", scope: !126, file: !126, line: 175, type: !1360, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!427, !144}
!1362 = !{!1358}
!1363 = !DILocation(line: 0, scope: !1359, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 275, column: 12, scope: !1355, inlinedAt: !1323)
!1365 = !DILocation(line: 178, column: 3, scope: !1359, inlinedAt: !1364)
!1366 = !DILocation(line: 275, column: 5, scope: !1355, inlinedAt: !1323)
!1367 = !DILocation(line: 279, column: 19, scope: !1303, inlinedAt: !1323)
!1368 = !DILocation(line: 0, scope: !1336, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 279, column: 10, scope: !1303, inlinedAt: !1323)
!1370 = !DILocation(line: 169, column: 3, scope: !1336, inlinedAt: !1369)
!1371 = !DILocation(line: 170, column: 3, scope: !1336, inlinedAt: !1369)
!1372 = !DILocation(line: 171, column: 3, scope: !1336, inlinedAt: !1369)
!1373 = !DILocation(line: 172, column: 3, scope: !1336, inlinedAt: !1369)
!1374 = !DILocation(line: 279, column: 3, scope: !1303, inlinedAt: !1323)
!1375 = !DILocation(line: 280, column: 1, scope: !1303, inlinedAt: !1323)
!1376 = !DILocation(line: 94, column: 9, scope: !1377, inlinedAt: !1259)
!1377 = distinct !DILexicalBlock(scope: !1248, file: !417, line: 94, column: 7)
!1378 = !DILocation(line: 94, column: 7, scope: !1248, inlinedAt: !1259)
!1379 = !DILocation(line: 92, column: 14, scope: !1248, inlinedAt: !1259)
!1380 = !DILocation(line: 95, column: 5, scope: !1377, inlinedAt: !1259)
!1381 = !DILocation(line: 99, column: 30, scope: !1382, inlinedAt: !1259)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !417, line: 97, column: 5)
!1383 = !DILocation(line: 99, column: 14, scope: !1382, inlinedAt: !1259)
!1384 = !DILocation(line: 0, scope: !1377, inlinedAt: !1259)
!1385 = !DILocation(line: 187, column: 15, scope: !403)
!1386 = !DILocation(line: 117, column: 7, scope: !1387, inlinedAt: !1402)
!1387 = distinct !DISubprogram(name: "adjust_column", scope: !2, file: !2, line: 115, type: !1388, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!139, !139, !427}
!1390 = !{!1391, !1392, !1393}
!1391 = !DILocalVariable(name: "column", arg: 1, scope: !1387, file: !2, line: 115, type: !139)
!1392 = !DILocalVariable(name: "g", arg: 2, scope: !1387, file: !2, line: 115, type: !427)
!1393 = !DILocalVariable(name: "width", scope: !1394, file: !2, line: 134, type: !83)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 133, column: 13)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 130, column: 15)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 129, column: 9)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 126, column: 16)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 124, column: 16)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 119, column: 11)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 118, column: 5)
!1401 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 117, column: 7)
!1402 = distinct !DILocation(line: 196, column: 16, scope: !442)
!1403 = !DILocation(line: 191, column: 11, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 190, column: 9)
!1405 = distinct !DILexicalBlock(scope: !442, file: !2, line: 189, column: 11)
!1406 = !DILocation(line: 193, column: 11, scope: !1404)
!1407 = distinct !{!1407, !1246, !1408, !1029}
!1408 = !DILocation(line: 265, column: 5, scope: !403)
!1409 = !DILocation(line: 195, column: 5, scope: !442)
!1410 = !DILocation(line: 0, scope: !1387, inlinedAt: !1402)
!1411 = !DILocation(line: 117, column: 7, scope: !1401, inlinedAt: !1402)
!1412 = !DILocation(line: 117, column: 21, scope: !1401, inlinedAt: !1402)
!1413 = !DILocation(line: 119, column: 11, scope: !1400, inlinedAt: !1402)
!1414 = !DILocation(line: 121, column: 22, scope: !1415, inlinedAt: !1402)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 121, column: 15)
!1416 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 120, column: 9)
!1417 = !DILocation(line: 121, column: 15, scope: !1416, inlinedAt: !1402)
!1418 = !DILocation(line: 122, column: 23, scope: !1415, inlinedAt: !1402)
!1419 = !DILocation(line: 122, column: 20, scope: !1415, inlinedAt: !1402)
!1420 = !DILocation(line: 122, column: 13, scope: !1415, inlinedAt: !1402)
!1421 = !DILocation(line: 127, column: 16, scope: !1397, inlinedAt: !1402)
!1422 = !DILocation(line: 127, column: 9, scope: !1397, inlinedAt: !1402)
!1423 = !DILocation(line: 130, column: 29, scope: !1395, inlinedAt: !1402)
!1424 = !DILocation(line: 130, column: 15, scope: !1396, inlinedAt: !1402)
!1425 = !DILocalVariable(name: "wc", arg: 1, scope: !1426, file: !1427, line: 1004, type: !431)
!1426 = distinct !DISubprogram(name: "c32width", scope: !1427, file: !1427, line: 1004, type: !1428, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1430)
!1427 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!83, !431}
!1430 = !{!1425}
!1431 = !DILocation(line: 0, scope: !1426, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 134, column: 27, scope: !1394, inlinedAt: !1402)
!1433 = !DILocation(line: 1010, column: 10, scope: !1426, inlinedAt: !1432)
!1434 = !DILocation(line: 0, scope: !1394, inlinedAt: !1402)
!1435 = !DILocation(line: 136, column: 44, scope: !1394, inlinedAt: !1402)
!1436 = !DILocation(line: 136, column: 38, scope: !1394, inlinedAt: !1402)
!1437 = !DILocation(line: 0, scope: !1395, inlinedAt: !1402)
!1438 = !DILocation(line: 138, column: 21, scope: !1396, inlinedAt: !1402)
!1439 = !DILocation(line: 138, column: 18, scope: !1396, inlinedAt: !1402)
!1440 = !DILocation(line: 142, column: 12, scope: !1401, inlinedAt: !1402)
!1441 = !DILocation(line: 198, column: 18, scope: !441)
!1442 = !DILocation(line: 198, column: 11, scope: !442)
!1443 = !DILocation(line: 203, column: 15, scope: !439)
!1444 = !DILocation(line: 203, column: 15, scope: !440)
!1445 = !DILocation(line: 0, scope: !438)
!1446 = !DILocation(line: 208, column: 45, scope: !438)
!1447 = !DILocation(line: 210, column: 41, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !447, file: !2, line: 210, column: 15)
!1449 = !DILocation(line: 210, column: 15, scope: !447)
!1450 = !DILocation(line: 220, column: 19, scope: !450)
!1451 = !DILocation(line: 220, column: 19, scope: !438)
!1452 = !DILocation(line: 0, scope: !1303, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 212, column: 24, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 211, column: 17)
!1455 = !DILocation(line: 235, column: 12, scope: !1303, inlinedAt: !1453)
!1456 = !DILocation(line: 0, scope: !1326, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 236, column: 7, scope: !1332, inlinedAt: !1453)
!1458 = !DILocation(line: 217, column: 10, scope: !1326, inlinedAt: !1457)
!1459 = !DILocation(line: 236, column: 7, scope: !1303, inlinedAt: !1453)
!1460 = !DILocation(line: 0, scope: !1336, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 237, column: 12, scope: !1332, inlinedAt: !1453)
!1462 = !DILocation(line: 172, column: 3, scope: !1336, inlinedAt: !1461)
!1463 = !DILocation(line: 213, column: 23, scope: !1454)
!1464 = !DILocation(line: 237, column: 5, scope: !1332, inlinedAt: !1453)
!1465 = !DILocation(line: 244, column: 3, scope: !1303, inlinedAt: !1453)
!1466 = !DILocation(line: 244, column: 13, scope: !1303, inlinedAt: !1453)
!1467 = !DILocation(line: 244, column: 30, scope: !1303, inlinedAt: !1453)
!1468 = !DILocation(line: 267, column: 3, scope: !1303, inlinedAt: !1453)
!1469 = !DILocation(line: 268, column: 38, scope: !1303, inlinedAt: !1453)
!1470 = !DILocation(line: 268, column: 16, scope: !1303, inlinedAt: !1453)
!1471 = !DILocation(line: 274, column: 7, scope: !1355, inlinedAt: !1453)
!1472 = !DILocation(line: 274, column: 7, scope: !1303, inlinedAt: !1453)
!1473 = !DILocation(line: 279, column: 19, scope: !1303, inlinedAt: !1453)
!1474 = !DILocation(line: 0, scope: !1336, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 279, column: 10, scope: !1303, inlinedAt: !1453)
!1476 = !DILocation(line: 169, column: 3, scope: !1336, inlinedAt: !1475)
!1477 = !DILocation(line: 170, column: 3, scope: !1336, inlinedAt: !1475)
!1478 = !DILocation(line: 171, column: 3, scope: !1336, inlinedAt: !1475)
!1479 = !DILocation(line: 172, column: 3, scope: !1336, inlinedAt: !1475)
!1480 = !DILocation(line: 279, column: 3, scope: !1303, inlinedAt: !1453)
!1481 = !DILocation(line: 280, column: 1, scope: !1303, inlinedAt: !1453)
!1482 = !DILocation(line: 212, column: 24, scope: !1454)
!1483 = !DILocation(line: 0, scope: !447)
!1484 = !DILocalVariable(name: "wc", arg: 1, scope: !1485, file: !82, line: 178, type: !431)
!1485 = distinct !DISubprogram(name: "c32issep", scope: !82, file: !82, line: 178, type: !1486, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1488)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!168, !431}
!1488 = !{!1484}
!1489 = !DILocation(line: 0, scope: !1485, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 213, column: 23, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 213, column: 23)
!1492 = !DILocalVariable(name: "wc", arg: 1, scope: !1493, file: !1427, line: 770, type: !1496)
!1493 = distinct !DISubprogram(name: "c32isblank", scope: !1427, file: !1427, line: 770, type: !1494, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1498)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!83, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1497, line: 20, baseType: !69)
!1497 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1498 = !{!1492}
!1499 = !DILocation(line: 0, scope: !1493, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 181, column: 13, scope: !1485, inlinedAt: !1490)
!1501 = !DILocation(line: 776, column: 10, scope: !1493, inlinedAt: !1500)
!1502 = !DILocation(line: 181, column: 11, scope: !1485, inlinedAt: !1490)
!1503 = !DILocation(line: 210, column: 66, scope: !1448)
!1504 = distinct !{!1504, !1449, !1505, !1029}
!1505 = !DILocation(line: 218, column: 17, scope: !447)
!1506 = !DILocation(line: 222, column: 31, scope: !449)
!1507 = !DILocation(line: 224, column: 19, scope: !449)
!1508 = !DILocation(line: 227, column: 47, scope: !449)
!1509 = !DILocation(line: 228, column: 39, scope: !449)
!1510 = !DILocation(line: 0, scope: !1283, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 227, column: 19, scope: !449)
!1512 = !DILocation(line: 36, column: 10, scope: !1283, inlinedAt: !1511)
!1513 = !DILocation(line: 0, scope: !449)
!1514 = !DILocation(line: 232, column: 49, scope: !449)
!1515 = !DILocation(line: 233, column: 45, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !453, file: !2, line: 233, column: 19)
!1517 = !DILocation(line: 233, column: 19, scope: !453)
!1518 = !DILocation(line: 0, scope: !1303, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 236, column: 28, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 235, column: 21)
!1521 = !DILocation(line: 235, column: 12, scope: !1303, inlinedAt: !1519)
!1522 = !DILocation(line: 0, scope: !1326, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 236, column: 7, scope: !1332, inlinedAt: !1519)
!1524 = !DILocation(line: 217, column: 10, scope: !1326, inlinedAt: !1523)
!1525 = !DILocation(line: 236, column: 7, scope: !1303, inlinedAt: !1519)
!1526 = !DILocation(line: 0, scope: !1336, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 237, column: 12, scope: !1332, inlinedAt: !1519)
!1528 = !DILocation(line: 172, column: 3, scope: !1336, inlinedAt: !1527)
!1529 = !DILocation(line: 237, column: 5, scope: !1332, inlinedAt: !1519)
!1530 = !DILocation(line: 244, column: 3, scope: !1303, inlinedAt: !1519)
!1531 = !DILocation(line: 244, column: 13, scope: !1303, inlinedAt: !1519)
!1532 = !DILocation(line: 244, column: 30, scope: !1303, inlinedAt: !1519)
!1533 = !DILocation(line: 267, column: 3, scope: !1303, inlinedAt: !1519)
!1534 = !DILocation(line: 268, column: 38, scope: !1303, inlinedAt: !1519)
!1535 = !DILocation(line: 268, column: 16, scope: !1303, inlinedAt: !1519)
!1536 = !DILocation(line: 274, column: 7, scope: !1355, inlinedAt: !1519)
!1537 = !DILocation(line: 274, column: 7, scope: !1303, inlinedAt: !1519)
!1538 = !DILocation(line: 279, column: 19, scope: !1303, inlinedAt: !1519)
!1539 = !DILocation(line: 0, scope: !1336, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 279, column: 10, scope: !1303, inlinedAt: !1519)
!1541 = !DILocation(line: 169, column: 3, scope: !1336, inlinedAt: !1540)
!1542 = !DILocation(line: 170, column: 3, scope: !1336, inlinedAt: !1540)
!1543 = !DILocation(line: 171, column: 3, scope: !1336, inlinedAt: !1540)
!1544 = !DILocation(line: 172, column: 3, scope: !1336, inlinedAt: !1540)
!1545 = !DILocation(line: 279, column: 3, scope: !1303, inlinedAt: !1519)
!1546 = !DILocation(line: 280, column: 1, scope: !1303, inlinedAt: !1519)
!1547 = !DILocation(line: 0, scope: !453)
!1548 = !DILocation(line: 236, column: 28, scope: !1520)
!1549 = !DILocation(line: 0, scope: !1387, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 237, column: 32, scope: !1520)
!1551 = !DILocation(line: 117, column: 7, scope: !1401, inlinedAt: !1550)
!1552 = !DILocation(line: 117, column: 21, scope: !1401, inlinedAt: !1550)
!1553 = !DILocation(line: 117, column: 7, scope: !1387, inlinedAt: !1550)
!1554 = !DILocation(line: 119, column: 11, scope: !1400, inlinedAt: !1550)
!1555 = !DILocation(line: 121, column: 22, scope: !1415, inlinedAt: !1550)
!1556 = !DILocation(line: 121, column: 15, scope: !1416, inlinedAt: !1550)
!1557 = !DILocation(line: 122, column: 23, scope: !1415, inlinedAt: !1550)
!1558 = !DILocation(line: 122, column: 20, scope: !1415, inlinedAt: !1550)
!1559 = !DILocation(line: 122, column: 13, scope: !1415, inlinedAt: !1550)
!1560 = !DILocation(line: 127, column: 16, scope: !1397, inlinedAt: !1550)
!1561 = !DILocation(line: 127, column: 9, scope: !1397, inlinedAt: !1550)
!1562 = !DILocation(line: 130, column: 29, scope: !1395, inlinedAt: !1550)
!1563 = !DILocation(line: 130, column: 15, scope: !1396, inlinedAt: !1550)
!1564 = !DILocation(line: 0, scope: !1426, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 134, column: 27, scope: !1394, inlinedAt: !1550)
!1566 = !DILocation(line: 1010, column: 10, scope: !1426, inlinedAt: !1565)
!1567 = !DILocation(line: 0, scope: !1394, inlinedAt: !1550)
!1568 = !DILocation(line: 136, column: 44, scope: !1394, inlinedAt: !1550)
!1569 = !DILocation(line: 136, column: 38, scope: !1394, inlinedAt: !1550)
!1570 = !DILocation(line: 0, scope: !1395, inlinedAt: !1550)
!1571 = !DILocation(line: 138, column: 21, scope: !1396, inlinedAt: !1550)
!1572 = !DILocation(line: 138, column: 18, scope: !1396, inlinedAt: !1550)
!1573 = !DILocation(line: 142, column: 12, scope: !1401, inlinedAt: !1550)
!1574 = !DILocation(line: 234, column: 34, scope: !1516)
!1575 = distinct !{!1575, !1517, !1576, !1029}
!1576 = !DILocation(line: 238, column: 21, scope: !453)
!1577 = !DILocation(line: 243, column: 26, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !440, file: !2, line: 243, column: 15)
!1579 = !DILocation(line: 243, column: 15, scope: !440)
!1580 = !DILocalVariable(name: "g", arg: 2, scope: !1581, file: !417, line: 107, type: !427)
!1581 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !417, file: !417, line: 107, type: !1582, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!136, !1251, !427}
!1584 = !{!1585, !1580}
!1585 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1581, file: !417, line: 107, type: !1251)
!1586 = !DILocation(line: 0, scope: !1581, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 245, column: 33, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 244, column: 13)
!1589 = !DILocation(line: 109, column: 21, scope: !1590, inlinedAt: !1587)
!1590 = distinct !DILexicalBlock(scope: !1581, file: !417, line: 109, column: 7)
!1591 = !DILocation(line: 109, column: 7, scope: !1581, inlinedAt: !1587)
!1592 = !DILocation(line: 111, column: 41, scope: !1581, inlinedAt: !1587)
!1593 = !DILocation(line: 111, column: 24, scope: !1581, inlinedAt: !1587)
!1594 = !DILocalVariable(name: "__dest", arg: 1, scope: !1595, file: !1284, line: 26, type: !1598)
!1595 = distinct !DISubprogram(name: "memcpy", scope: !1284, file: !1284, line: 26, type: !1596, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1599)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!137, !1598, !1130, !139}
!1598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1599 = !{!1594, !1600, !1601}
!1600 = !DILocalVariable(name: "__src", arg: 2, scope: !1595, file: !1284, line: 26, type: !1130)
!1601 = !DILocalVariable(name: "__len", arg: 3, scope: !1595, file: !1284, line: 26, type: !139)
!1602 = !DILocation(line: 0, scope: !1595, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 245, column: 15, scope: !1588)
!1604 = !DILocation(line: 29, column: 10, scope: !1595, inlinedAt: !1603)
!1605 = !{!1606, !1608}
!1606 = distinct !{!1606, !1607, !"memcpy.inline: argument 0"}
!1607 = distinct !{!1607, !"memcpy.inline"}
!1608 = distinct !{!1608, !1607, !"memcpy.inline: argument 1"}
!1609 = !DILocation(line: 247, column: 15, scope: !1588)
!1610 = !DILocation(line: 250, column: 11, scope: !440)
!1611 = !DILocation(line: 252, column: 11, scope: !440)
!1612 = !DILocation(line: 257, column: 41, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !442, file: !2, line: 257, column: 11)
!1614 = !DILocation(line: 257, column: 27, scope: !1613)
!1615 = !DILocation(line: 257, column: 11, scope: !442)
!1616 = !DILocation(line: 259, column: 11, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 258, column: 9)
!1618 = !DILocation(line: 261, column: 9, scope: !1617)
!1619 = !DILocation(line: 263, column: 24, scope: !442)
!1620 = !DILocation(line: 0, scope: !1581, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 263, column: 38, scope: !442)
!1622 = !DILocation(line: 109, column: 21, scope: !1590, inlinedAt: !1621)
!1623 = !DILocation(line: 109, column: 7, scope: !1581, inlinedAt: !1621)
!1624 = !DILocation(line: 111, column: 41, scope: !1581, inlinedAt: !1621)
!1625 = !DILocation(line: 111, column: 24, scope: !1581, inlinedAt: !1621)
!1626 = !DILocation(line: 0, scope: !1595, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 263, column: 7, scope: !442)
!1628 = !DILocation(line: 29, column: 10, scope: !1595, inlinedAt: !1627)
!1629 = !DILocation(line: 264, column: 18, scope: !442)
!1630 = !DILocation(line: 267, column: 17, scope: !403)
!1631 = !DILocalVariable(name: "__stream", arg: 1, scope: !1632, file: !1265, line: 135, type: !202)
!1632 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1265, file: !1265, line: 135, type: !1266, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1633)
!1633 = !{!1631}
!1634 = !DILocation(line: 0, scope: !1632, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 268, column: 8, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !403, file: !2, line: 268, column: 7)
!1637 = !DILocation(line: 137, column: 10, scope: !1632, inlinedAt: !1635)
!1638 = !DILocation(line: 268, column: 8, scope: !1636)
!1639 = !DILocation(line: 268, column: 7, scope: !403)
!1640 = !DILocation(line: 271, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !403, file: !2, line: 271, column: 7)
!1642 = !DILocation(line: 271, column: 7, scope: !403)
!1643 = !DILocation(line: 272, column: 5, scope: !1641)
!1644 = !DILocation(line: 0, scope: !994, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 274, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !403, file: !2, line: 274, column: 7)
!1647 = !DILocation(line: 1361, column: 11, scope: !994, inlinedAt: !1645)
!1648 = !DILocation(line: 1361, column: 10, scope: !994, inlinedAt: !1645)
!1649 = !DILocation(line: 274, column: 7, scope: !403)
!1650 = !DILocation(line: 275, column: 5, scope: !1646)
!1651 = !DILocation(line: 276, column: 12, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 276, column: 12)
!1653 = !DILocation(line: 276, column: 29, scope: !1652)
!1654 = !DILocation(line: 276, column: 34, scope: !1652)
!1655 = !DILocation(line: 277, column: 19, scope: !1652)
!1656 = !DILocation(line: 277, column: 5, scope: !1652)
!1657 = !DILocation(line: 279, column: 7, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !403, file: !2, line: 279, column: 7)
!1659 = !DILocation(line: 279, column: 7, scope: !403)
!1660 = !DILocation(line: 281, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 280, column: 5)
!1662 = !DILocation(line: 282, column: 7, scope: !1661)
!1663 = !DILocation(line: 286, column: 1, scope: !403)
!1664 = !DISubprogram(name: "__errno_location", scope: !1665, file: !1665, line: 37, type: !1666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1665 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!397}
!1668 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1669, file: !1669, line: 25, type: !1670, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1669 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!137, !137, !1131, !141, !141}
!1672 = !DISubprogram(name: "mbrtoc32", scope: !432, file: !432, line: 57, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!139, !1675, !972, !139, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1678)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1679 = distinct !DISubprogram(name: "write_out", scope: !2, file: !2, line: 147, type: !1680, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1682)
!1680 = !DISubroutineType(cc: DW_CC_nocall, types: !1681)
!1681 = !{null, !142, !139, !168}
!1682 = !{!1683, !1684, !1685, !1686, !1689, !1690}
!1683 = !DILocalVariable(name: "line", arg: 1, scope: !1679, file: !2, line: 147, type: !142)
!1684 = !DILocalVariable(name: "line_len", arg: 2, scope: !1679, file: !2, line: 147, type: !139)
!1685 = !DILocalVariable(name: "newline", arg: 3, scope: !1679, file: !2, line: 147, type: !168)
!1686 = !DILocalVariable(name: "__ptr", scope: !1687, file: !2, line: 149, type: !142)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 149, column: 7)
!1688 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 149, column: 7)
!1689 = !DILocalVariable(name: "__stream", scope: !1687, file: !2, line: 149, type: !202)
!1690 = !DILocalVariable(name: "__cnt", scope: !1687, file: !2, line: 149, type: !139)
!1691 = !DILocation(line: 0, scope: !1679)
!1692 = !DILocation(line: 149, column: 7, scope: !1688)
!1693 = !DILocation(line: 149, column: 54, scope: !1688)
!1694 = !DILocation(line: 150, column: 7, scope: !1688)
!1695 = !DILocation(line: 150, column: 19, scope: !1688)
!1696 = !DILocalVariable(name: "__c", arg: 1, scope: !1697, file: !1265, line: 108, type: !83)
!1697 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1265, file: !1265, line: 108, type: !1698, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!83, !83}
!1700 = !{!1696}
!1701 = !DILocation(line: 0, scope: !1697, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 150, column: 22, scope: !1688)
!1703 = !DILocation(line: 110, column: 10, scope: !1697, inlinedAt: !1702)
!1704 = !{!1273, !912, i64 40}
!1705 = !{!1273, !912, i64 48}
!1706 = !{!"branch_weights", i32 2000, i32 1}
!1707 = !DILocation(line: 149, column: 7, scope: !1679)
!1708 = !DILocation(line: 150, column: 37, scope: !1688)
!1709 = !DILocation(line: 948, column: 21, scope: !1710, inlinedAt: !1713)
!1710 = distinct !DISubprogram(name: "write_error", scope: !82, file: !82, line: 946, type: !545, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1711)
!1711 = !{!1712}
!1712 = !DILocalVariable(name: "saved_errno", scope: !1710, file: !82, line: 948, type: !83)
!1713 = distinct !DILocation(line: 151, column: 5, scope: !1688)
!1714 = !DILocation(line: 0, scope: !1710, inlinedAt: !1713)
!1715 = !DILocation(line: 949, column: 3, scope: !1710, inlinedAt: !1713)
!1716 = !DILocation(line: 950, column: 11, scope: !1710, inlinedAt: !1713)
!1717 = !DILocation(line: 950, column: 3, scope: !1710, inlinedAt: !1713)
!1718 = !DILocation(line: 951, column: 3, scope: !1710, inlinedAt: !1713)
!1719 = !DILocation(line: 952, column: 3, scope: !1710, inlinedAt: !1713)
!1720 = !DILocation(line: 152, column: 1, scope: !1679)
!1721 = !DISubprogram(name: "wcwidth", scope: !1722, file: !1722, line: 368, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1722 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!83, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !140, line: 74, baseType: !83)
!1726 = !DISubprogram(name: "iswblank", scope: !1727, file: !1727, line: 146, type: !1494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1727 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1728 = !DISubprogram(name: "__builtin___memcpy_chk", scope: !1284, file: !1284, line: 29, type: !1670, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1729 = !DISubprogram(name: "clearerr_unlocked", scope: !977, file: !977, line: 794, type: !1730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !202}
!1732 = !DISubprogram(name: "__overflow", scope: !977, file: !977, line: 886, type: !1733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!83, !202, !83}
!1735 = !DISubprogram(name: "fflush_unlocked", scope: !977, file: !977, line: 239, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1736 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !483, file: !483, line: 50, type: !933, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1737)
!1737 = !{!1738}
!1738 = !DILocalVariable(name: "file", arg: 1, scope: !1736, file: !483, line: 50, type: !142)
!1739 = !DILocation(line: 0, scope: !1736)
!1740 = !DILocation(line: 52, column: 13, scope: !1736)
!1741 = !DILocation(line: 53, column: 1, scope: !1736)
!1742 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !483, file: !483, line: 87, type: !1743, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1745)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !168}
!1745 = !{!1746}
!1746 = !DILocalVariable(name: "ignore", arg: 1, scope: !1742, file: !483, line: 87, type: !168)
!1747 = !DILocation(line: 0, scope: !1742)
!1748 = !DILocation(line: 89, column: 16, scope: !1742)
!1749 = !{!1750, !1750, i64 0}
!1750 = !{!"_Bool", !913, i64 0}
!1751 = !DILocation(line: 90, column: 1, scope: !1742)
!1752 = distinct !DISubprogram(name: "close_stdout", scope: !483, file: !483, line: 116, type: !545, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1753)
!1753 = !{!1754}
!1754 = !DILocalVariable(name: "write_error", scope: !1755, file: !483, line: 121, type: !142)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !483, line: 120, column: 5)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !483, line: 118, column: 7)
!1757 = !DILocation(line: 118, column: 21, scope: !1756)
!1758 = !DILocation(line: 118, column: 7, scope: !1756)
!1759 = !DILocation(line: 118, column: 29, scope: !1756)
!1760 = !DILocation(line: 119, column: 7, scope: !1756)
!1761 = !DILocation(line: 119, column: 12, scope: !1756)
!1762 = !{i8 0, i8 2}
!1763 = !DILocation(line: 119, column: 25, scope: !1756)
!1764 = !DILocation(line: 119, column: 28, scope: !1756)
!1765 = !DILocation(line: 119, column: 34, scope: !1756)
!1766 = !DILocation(line: 118, column: 7, scope: !1752)
!1767 = !DILocation(line: 121, column: 33, scope: !1755)
!1768 = !DILocation(line: 0, scope: !1755)
!1769 = !DILocation(line: 122, column: 11, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1755, file: !483, line: 122, column: 11)
!1771 = !DILocation(line: 0, scope: !1770)
!1772 = !DILocation(line: 122, column: 11, scope: !1755)
!1773 = !DILocation(line: 123, column: 9, scope: !1770)
!1774 = !DILocation(line: 126, column: 9, scope: !1770)
!1775 = !DILocation(line: 128, column: 14, scope: !1755)
!1776 = !DILocation(line: 128, column: 7, scope: !1755)
!1777 = !DILocation(line: 133, column: 42, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1752, file: !483, line: 133, column: 7)
!1779 = !DILocation(line: 133, column: 28, scope: !1778)
!1780 = !DILocation(line: 133, column: 50, scope: !1778)
!1781 = !DILocation(line: 133, column: 7, scope: !1752)
!1782 = !DILocation(line: 134, column: 12, scope: !1778)
!1783 = !DILocation(line: 134, column: 5, scope: !1778)
!1784 = !DILocation(line: 135, column: 1, scope: !1752)
!1785 = !DISubprogram(name: "_exit", scope: !1786, file: !1786, line: 624, type: !901, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1786 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1787 = distinct !DISubprogram(name: "verror", scope: !498, file: !498, line: 251, type: !1788, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !83, !83, !142, !508}
!1790 = !{!1791, !1792, !1793, !1794}
!1791 = !DILocalVariable(name: "status", arg: 1, scope: !1787, file: !498, line: 251, type: !83)
!1792 = !DILocalVariable(name: "errnum", arg: 2, scope: !1787, file: !498, line: 251, type: !83)
!1793 = !DILocalVariable(name: "message", arg: 3, scope: !1787, file: !498, line: 251, type: !142)
!1794 = !DILocalVariable(name: "args", arg: 4, scope: !1787, file: !498, line: 251, type: !508)
!1795 = !DILocation(line: 0, scope: !1787)
!1796 = !DILocation(line: 261, column: 3, scope: !1787)
!1797 = !DILocation(line: 265, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1787, file: !498, line: 265, column: 7)
!1799 = !DILocation(line: 265, column: 7, scope: !1787)
!1800 = !DILocation(line: 266, column: 5, scope: !1798)
!1801 = !DILocation(line: 272, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !498, line: 268, column: 5)
!1803 = !DILocation(line: 276, column: 3, scope: !1787)
!1804 = !DILocation(line: 282, column: 1, scope: !1787)
!1805 = distinct !DISubprogram(name: "flush_stdout", scope: !498, file: !498, line: 163, type: !545, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1806)
!1806 = !{!1807}
!1807 = !DILocalVariable(name: "stdout_fd", scope: !1805, file: !498, line: 166, type: !83)
!1808 = !DILocation(line: 0, scope: !1805)
!1809 = !DILocalVariable(name: "fd", arg: 1, scope: !1810, file: !498, line: 145, type: !83)
!1810 = distinct !DISubprogram(name: "is_open", scope: !498, file: !498, line: 145, type: !1698, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1811)
!1811 = !{!1809}
!1812 = !DILocation(line: 0, scope: !1810, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 182, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !498, line: 182, column: 7)
!1815 = !DILocation(line: 157, column: 15, scope: !1810, inlinedAt: !1813)
!1816 = !DILocation(line: 157, column: 12, scope: !1810, inlinedAt: !1813)
!1817 = !DILocation(line: 182, column: 7, scope: !1805)
!1818 = !DILocation(line: 184, column: 5, scope: !1814)
!1819 = !DILocation(line: 185, column: 1, scope: !1805)
!1820 = distinct !DISubprogram(name: "error_tail", scope: !498, file: !498, line: 219, type: !1788, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1821)
!1821 = !{!1822, !1823, !1824, !1825}
!1822 = !DILocalVariable(name: "status", arg: 1, scope: !1820, file: !498, line: 219, type: !83)
!1823 = !DILocalVariable(name: "errnum", arg: 2, scope: !1820, file: !498, line: 219, type: !83)
!1824 = !DILocalVariable(name: "message", arg: 3, scope: !1820, file: !498, line: 219, type: !142)
!1825 = !DILocalVariable(name: "args", arg: 4, scope: !1820, file: !498, line: 219, type: !508)
!1826 = !DILocation(line: 0, scope: !1820)
!1827 = !DILocation(line: 229, column: 13, scope: !1820)
!1828 = !DILocalVariable(name: "__stream", arg: 1, scope: !1829, file: !968, line: 132, type: !1832)
!1829 = distinct !DISubprogram(name: "vfprintf", scope: !968, file: !968, line: 132, type: !1830, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1867)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!83, !1832, !972, !508}
!1832 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1833)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1835, file: !206, line: 51, baseType: !83, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1835, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1835, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1835, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1835, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1835, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1835, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1835, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1835, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1835, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1835, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1835, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1835, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1835, file: !206, line: 70, baseType: !1851, size: 64, offset: 832)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1835, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1835, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1835, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1835, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1835, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1835, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1835, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1835, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1835, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1835, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1835, file: !206, line: 93, baseType: !1851, size: 64, offset: 1344)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1835, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1835, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1835, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1835, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!1867 = !{!1828, !1868, !1869}
!1868 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1829, file: !968, line: 133, type: !972)
!1869 = !DILocalVariable(name: "__ap", arg: 3, scope: !1829, file: !968, line: 133, type: !508)
!1870 = !DILocation(line: 0, scope: !1829, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 229, column: 3, scope: !1820)
!1872 = !DILocation(line: 135, column: 10, scope: !1829, inlinedAt: !1871)
!1873 = !DILocation(line: 232, column: 3, scope: !1820)
!1874 = !DILocation(line: 233, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1820, file: !498, line: 233, column: 7)
!1876 = !DILocation(line: 233, column: 7, scope: !1820)
!1877 = !DILocalVariable(name: "errnum", arg: 1, scope: !1878, file: !498, line: 188, type: !83)
!1878 = distinct !DISubprogram(name: "print_errno_message", scope: !498, file: !498, line: 188, type: !901, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1879)
!1879 = !{!1877, !1880, !1881}
!1880 = !DILocalVariable(name: "s", scope: !1878, file: !498, line: 190, type: !142)
!1881 = !DILocalVariable(name: "errbuf", scope: !1878, file: !498, line: 193, type: !1882)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1883)
!1883 = !{!1884}
!1884 = !DISubrange(count: 1024)
!1885 = !DILocation(line: 0, scope: !1878, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 234, column: 5, scope: !1875)
!1887 = !DILocation(line: 193, column: 3, scope: !1878, inlinedAt: !1886)
!1888 = !DILocation(line: 193, column: 8, scope: !1878, inlinedAt: !1886)
!1889 = !DILocation(line: 195, column: 7, scope: !1878, inlinedAt: !1886)
!1890 = !DILocation(line: 207, column: 9, scope: !1891, inlinedAt: !1886)
!1891 = distinct !DILexicalBlock(scope: !1878, file: !498, line: 207, column: 7)
!1892 = !DILocation(line: 207, column: 7, scope: !1878, inlinedAt: !1886)
!1893 = !DILocation(line: 208, column: 9, scope: !1891, inlinedAt: !1886)
!1894 = !DILocation(line: 208, column: 5, scope: !1891, inlinedAt: !1886)
!1895 = !DILocation(line: 214, column: 3, scope: !1878, inlinedAt: !1886)
!1896 = !DILocation(line: 216, column: 1, scope: !1878, inlinedAt: !1886)
!1897 = !DILocation(line: 234, column: 5, scope: !1875)
!1898 = !DILocation(line: 238, column: 3, scope: !1820)
!1899 = !DILocalVariable(name: "__c", arg: 1, scope: !1900, file: !1265, line: 101, type: !83)
!1900 = distinct !DISubprogram(name: "putc_unlocked", scope: !1265, file: !1265, line: 101, type: !1901, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!83, !83, !1833}
!1903 = !{!1899, !1904}
!1904 = !DILocalVariable(name: "__stream", arg: 2, scope: !1900, file: !1265, line: 101, type: !1833)
!1905 = !DILocation(line: 0, scope: !1900, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 238, column: 3, scope: !1820)
!1907 = !DILocation(line: 103, column: 10, scope: !1900, inlinedAt: !1906)
!1908 = !DILocation(line: 240, column: 3, scope: !1820)
!1909 = !DILocation(line: 241, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1820, file: !498, line: 241, column: 7)
!1911 = !DILocation(line: 241, column: 7, scope: !1820)
!1912 = !DILocation(line: 242, column: 5, scope: !1910)
!1913 = !DILocation(line: 243, column: 1, scope: !1820)
!1914 = !DISubprogram(name: "__vfprintf_chk", scope: !968, file: !968, line: 96, type: !1915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!83, !1832, !83, !972, !508}
!1917 = !DISubprogram(name: "strerror_r", scope: !1103, file: !1103, line: 444, type: !1918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!136, !83, !136, !139}
!1920 = !DISubprogram(name: "fcntl", scope: !1921, file: !1921, line: 149, type: !1922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!1921 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!83, !83, !83, null}
!1924 = distinct !DISubprogram(name: "error", scope: !498, file: !498, line: 285, type: !1925, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !83, !83, !142, null}
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DILocalVariable(name: "status", arg: 1, scope: !1924, file: !498, line: 285, type: !83)
!1929 = !DILocalVariable(name: "errnum", arg: 2, scope: !1924, file: !498, line: 285, type: !83)
!1930 = !DILocalVariable(name: "message", arg: 3, scope: !1924, file: !498, line: 285, type: !142)
!1931 = !DILocalVariable(name: "ap", scope: !1924, file: !498, line: 287, type: !1932)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !977, line: 52, baseType: !1933)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1934, line: 14, baseType: !1935)
!1934 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !512, baseType: !1936)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 192, elements: !52)
!1937 = !DILocation(line: 0, scope: !1924)
!1938 = !DILocation(line: 287, column: 3, scope: !1924)
!1939 = !DILocation(line: 287, column: 11, scope: !1924)
!1940 = !DILocation(line: 288, column: 3, scope: !1924)
!1941 = !DILocation(line: 289, column: 3, scope: !1924)
!1942 = !DILocation(line: 290, column: 3, scope: !1924)
!1943 = !DILocation(line: 291, column: 1, scope: !1924)
!1944 = !DILocation(line: 0, scope: !505)
!1945 = !DILocation(line: 302, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !505, file: !498, line: 302, column: 7)
!1947 = !DILocation(line: 302, column: 7, scope: !505)
!1948 = !DILocation(line: 307, column: 11, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !498, line: 307, column: 11)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !498, line: 303, column: 5)
!1951 = !DILocation(line: 307, column: 27, scope: !1949)
!1952 = !DILocation(line: 308, column: 11, scope: !1949)
!1953 = !DILocation(line: 308, column: 28, scope: !1949)
!1954 = !DILocation(line: 308, column: 25, scope: !1949)
!1955 = !DILocation(line: 309, column: 15, scope: !1949)
!1956 = !DILocation(line: 309, column: 33, scope: !1949)
!1957 = !DILocation(line: 310, column: 19, scope: !1949)
!1958 = !DILocation(line: 311, column: 22, scope: !1949)
!1959 = !DILocation(line: 311, column: 56, scope: !1949)
!1960 = !DILocation(line: 307, column: 11, scope: !1950)
!1961 = !DILocation(line: 316, column: 21, scope: !1950)
!1962 = !DILocation(line: 317, column: 23, scope: !1950)
!1963 = !DILocation(line: 318, column: 5, scope: !1950)
!1964 = !DILocation(line: 327, column: 3, scope: !505)
!1965 = !DILocation(line: 331, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !505, file: !498, line: 331, column: 7)
!1967 = !DILocation(line: 331, column: 7, scope: !505)
!1968 = !DILocation(line: 332, column: 5, scope: !1966)
!1969 = !DILocation(line: 338, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !498, line: 334, column: 5)
!1971 = !DILocation(line: 346, column: 3, scope: !505)
!1972 = !DILocation(line: 350, column: 3, scope: !505)
!1973 = !DILocation(line: 356, column: 1, scope: !505)
!1974 = distinct !DISubprogram(name: "error_at_line", scope: !498, file: !498, line: 359, type: !1975, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !83, !83, !142, !69, !142, null}
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983}
!1978 = !DILocalVariable(name: "status", arg: 1, scope: !1974, file: !498, line: 359, type: !83)
!1979 = !DILocalVariable(name: "errnum", arg: 2, scope: !1974, file: !498, line: 359, type: !83)
!1980 = !DILocalVariable(name: "file_name", arg: 3, scope: !1974, file: !498, line: 359, type: !142)
!1981 = !DILocalVariable(name: "line_number", arg: 4, scope: !1974, file: !498, line: 360, type: !69)
!1982 = !DILocalVariable(name: "message", arg: 5, scope: !1974, file: !498, line: 360, type: !142)
!1983 = !DILocalVariable(name: "ap", scope: !1974, file: !498, line: 362, type: !1932)
!1984 = !DILocation(line: 0, scope: !1974)
!1985 = !DILocation(line: 362, column: 3, scope: !1974)
!1986 = !DILocation(line: 362, column: 11, scope: !1974)
!1987 = !DILocation(line: 363, column: 3, scope: !1974)
!1988 = !DILocation(line: 364, column: 3, scope: !1974)
!1989 = !DILocation(line: 366, column: 3, scope: !1974)
!1990 = !DILocation(line: 367, column: 1, scope: !1974)
!1991 = distinct !DISubprogram(name: "fdadvise", scope: !807, file: !807, line: 25, type: !1992, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !1996)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !83, !1994, !1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !977, line: 63, baseType: !228)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !117, line: 51, baseType: !116)
!1996 = !{!1997, !1998, !1999, !2000}
!1997 = !DILocalVariable(name: "fd", arg: 1, scope: !1991, file: !807, line: 25, type: !83)
!1998 = !DILocalVariable(name: "offset", arg: 2, scope: !1991, file: !807, line: 25, type: !1994)
!1999 = !DILocalVariable(name: "len", arg: 3, scope: !1991, file: !807, line: 25, type: !1994)
!2000 = !DILocalVariable(name: "advice", arg: 4, scope: !1991, file: !807, line: 25, type: !1995)
!2001 = !DILocation(line: 0, scope: !1991)
!2002 = !DILocation(line: 28, column: 3, scope: !1991)
!2003 = !DILocation(line: 30, column: 1, scope: !1991)
!2004 = !DISubprogram(name: "posix_fadvise", scope: !1921, file: !1921, line: 273, type: !2005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!83, !83, !1994, !1994, !83}
!2007 = distinct !DISubprogram(name: "fadvise", scope: !807, file: !807, line: 33, type: !2008, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !2044)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !2010, !1995}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2012, file: !206, line: 51, baseType: !83, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2012, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2012, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2012, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2012, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2012, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2012, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2012, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2012, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2012, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2012, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2012, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2012, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2012, file: !206, line: 70, baseType: !2028, size: 64, offset: 832)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2012, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2012, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2012, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2012, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2012, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2012, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2012, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2012, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2012, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2012, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2012, file: !206, line: 93, baseType: !2028, size: 64, offset: 1344)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2012, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2012, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2012, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2012, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2044 = !{!2045, !2046}
!2045 = !DILocalVariable(name: "fp", arg: 1, scope: !2007, file: !807, line: 33, type: !2010)
!2046 = !DILocalVariable(name: "advice", arg: 2, scope: !2007, file: !807, line: 33, type: !1995)
!2047 = !DILocation(line: 0, scope: !2007)
!2048 = !DILocation(line: 35, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2007, file: !807, line: 35, column: 7)
!2050 = !DILocation(line: 35, column: 7, scope: !2007)
!2051 = !DILocation(line: 36, column: 15, scope: !2049)
!2052 = !DILocation(line: 0, scope: !1991, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 36, column: 5, scope: !2049)
!2054 = !DILocation(line: 28, column: 3, scope: !1991, inlinedAt: !2053)
!2055 = !DILocation(line: 36, column: 5, scope: !2049)
!2056 = !DILocation(line: 37, column: 1, scope: !2007)
!2057 = !DISubprogram(name: "fileno", scope: !977, file: !977, line: 809, type: !2058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!83, !2010}
!2060 = distinct !DISubprogram(name: "rpl_fclose", scope: !810, file: !810, line: 58, type: !2061, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !2097)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!83, !2063}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2065)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2065, file: !206, line: 51, baseType: !83, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2065, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2065, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2065, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2065, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2065, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2065, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2065, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2065, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2065, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2065, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2065, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2065, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2065, file: !206, line: 70, baseType: !2081, size: 64, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2065, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2065, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2065, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2065, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2065, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2065, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2065, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2065, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2065, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2065, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2065, file: !206, line: 93, baseType: !2081, size: 64, offset: 1344)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2065, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2065, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2065, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2065, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2097 = !{!2098, !2099, !2100, !2101}
!2098 = !DILocalVariable(name: "fp", arg: 1, scope: !2060, file: !810, line: 58, type: !2063)
!2099 = !DILocalVariable(name: "saved_errno", scope: !2060, file: !810, line: 60, type: !83)
!2100 = !DILocalVariable(name: "fd", scope: !2060, file: !810, line: 63, type: !83)
!2101 = !DILocalVariable(name: "result", scope: !2060, file: !810, line: 74, type: !83)
!2102 = !DILocation(line: 0, scope: !2060)
!2103 = !DILocation(line: 63, column: 12, scope: !2060)
!2104 = !DILocation(line: 64, column: 10, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2060, file: !810, line: 64, column: 7)
!2106 = !DILocation(line: 64, column: 7, scope: !2060)
!2107 = !DILocation(line: 65, column: 12, scope: !2105)
!2108 = !DILocation(line: 65, column: 5, scope: !2105)
!2109 = !DILocation(line: 70, column: 9, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2060, file: !810, line: 70, column: 7)
!2111 = !DILocation(line: 70, column: 23, scope: !2110)
!2112 = !DILocation(line: 70, column: 33, scope: !2110)
!2113 = !DILocation(line: 70, column: 26, scope: !2110)
!2114 = !DILocation(line: 70, column: 59, scope: !2110)
!2115 = !DILocation(line: 71, column: 7, scope: !2110)
!2116 = !DILocation(line: 71, column: 10, scope: !2110)
!2117 = !DILocation(line: 70, column: 7, scope: !2060)
!2118 = !DILocation(line: 100, column: 12, scope: !2060)
!2119 = !DILocation(line: 105, column: 7, scope: !2060)
!2120 = !DILocation(line: 72, column: 19, scope: !2110)
!2121 = !DILocation(line: 105, column: 19, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2060, file: !810, line: 105, column: 7)
!2123 = !DILocation(line: 107, column: 13, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2122, file: !810, line: 106, column: 5)
!2125 = !DILocation(line: 109, column: 5, scope: !2124)
!2126 = !DILocation(line: 112, column: 1, scope: !2060)
!2127 = !DISubprogram(name: "fclose", scope: !977, file: !977, line: 178, type: !2061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2128 = !DISubprogram(name: "__freading", scope: !2129, file: !2129, line: 51, type: !2061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2129 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2130 = !DISubprogram(name: "lseek", scope: !1786, file: !1786, line: 339, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!228, !83, !228, !83}
!2133 = distinct !DISubprogram(name: "rpl_fflush", scope: !812, file: !812, line: 130, type: !2134, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !2170)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!83, !2136}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2138)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2139)
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2138, file: !206, line: 51, baseType: !83, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2138, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2138, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2138, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2138, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2138, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2138, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2138, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2138, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2138, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2138, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2138, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2138, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2138, file: !206, line: 70, baseType: !2154, size: 64, offset: 832)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2138, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2138, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2138, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2138, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2138, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2138, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2138, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2138, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2138, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2138, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2138, file: !206, line: 93, baseType: !2154, size: 64, offset: 1344)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2138, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2138, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2138, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2138, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2170 = !{!2171}
!2171 = !DILocalVariable(name: "stream", arg: 1, scope: !2133, file: !812, line: 130, type: !2136)
!2172 = !DILocation(line: 0, scope: !2133)
!2173 = !DILocation(line: 151, column: 14, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2133, file: !812, line: 151, column: 7)
!2175 = !DILocation(line: 151, column: 22, scope: !2174)
!2176 = !DILocation(line: 151, column: 27, scope: !2174)
!2177 = !DILocation(line: 151, column: 7, scope: !2133)
!2178 = !DILocation(line: 152, column: 12, scope: !2174)
!2179 = !DILocation(line: 152, column: 5, scope: !2174)
!2180 = !DILocalVariable(name: "fp", arg: 1, scope: !2181, file: !812, line: 42, type: !2136)
!2181 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !812, file: !812, line: 42, type: !2182, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{null, !2136}
!2184 = !{!2180}
!2185 = !DILocation(line: 0, scope: !2181, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 157, column: 3, scope: !2133)
!2187 = !DILocation(line: 44, column: 12, scope: !2188, inlinedAt: !2186)
!2188 = distinct !DILexicalBlock(scope: !2181, file: !812, line: 44, column: 7)
!2189 = !DILocation(line: 44, column: 19, scope: !2188, inlinedAt: !2186)
!2190 = !DILocation(line: 44, column: 7, scope: !2181, inlinedAt: !2186)
!2191 = !DILocation(line: 46, column: 5, scope: !2188, inlinedAt: !2186)
!2192 = !DILocation(line: 159, column: 10, scope: !2133)
!2193 = !DILocation(line: 159, column: 3, scope: !2133)
!2194 = !DILocation(line: 236, column: 1, scope: !2133)
!2195 = !DISubprogram(name: "fflush", scope: !977, file: !977, line: 230, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2196 = distinct !DISubprogram(name: "fpurge", scope: !815, file: !815, line: 32, type: !2197, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !2233)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!83, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2201, file: !206, line: 51, baseType: !83, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2201, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2201, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2201, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2201, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2201, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2201, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2201, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2201, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2201, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2201, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2201, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2201, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2201, file: !206, line: 70, baseType: !2217, size: 64, offset: 832)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2201, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2201, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2201, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2201, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2201, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2201, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2201, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2201, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2201, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2201, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2201, file: !206, line: 93, baseType: !2217, size: 64, offset: 1344)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2201, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2201, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2201, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2201, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2233 = !{!2234}
!2234 = !DILocalVariable(name: "fp", arg: 1, scope: !2196, file: !815, line: 32, type: !2199)
!2235 = !DILocation(line: 0, scope: !2196)
!2236 = !DILocation(line: 36, column: 3, scope: !2196)
!2237 = !DILocation(line: 38, column: 3, scope: !2196)
!2238 = !DISubprogram(name: "__fpurge", scope: !2129, file: !2129, line: 72, type: !2239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !2199}
!2241 = distinct !DISubprogram(name: "rpl_fseeko", scope: !817, file: !817, line: 28, type: !2242, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !2278)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!83, !2244, !1994, !83}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !2246)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2246, file: !206, line: 51, baseType: !83, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2246, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2246, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2246, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2246, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2246, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2246, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2246, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2246, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2246, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2246, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2246, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2246, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2246, file: !206, line: 70, baseType: !2262, size: 64, offset: 832)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2246, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2246, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2246, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2246, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2246, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2246, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2246, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2246, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2246, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2246, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2246, file: !206, line: 93, baseType: !2262, size: 64, offset: 1344)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2246, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2246, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2246, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2246, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!2278 = !{!2279, !2280, !2281, !2282}
!2279 = !DILocalVariable(name: "fp", arg: 1, scope: !2241, file: !817, line: 28, type: !2244)
!2280 = !DILocalVariable(name: "offset", arg: 2, scope: !2241, file: !817, line: 28, type: !1994)
!2281 = !DILocalVariable(name: "whence", arg: 3, scope: !2241, file: !817, line: 28, type: !83)
!2282 = !DILocalVariable(name: "pos", scope: !2283, file: !817, line: 123, type: !1994)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !817, line: 119, column: 5)
!2284 = distinct !DILexicalBlock(scope: !2241, file: !817, line: 55, column: 7)
!2285 = !DILocation(line: 0, scope: !2241)
!2286 = !DILocation(line: 55, column: 12, scope: !2284)
!2287 = !{!1273, !912, i64 16}
!2288 = !DILocation(line: 55, column: 33, scope: !2284)
!2289 = !{!1273, !912, i64 8}
!2290 = !DILocation(line: 55, column: 25, scope: !2284)
!2291 = !DILocation(line: 56, column: 7, scope: !2284)
!2292 = !DILocation(line: 56, column: 15, scope: !2284)
!2293 = !DILocation(line: 56, column: 37, scope: !2284)
!2294 = !{!1273, !912, i64 32}
!2295 = !DILocation(line: 56, column: 29, scope: !2284)
!2296 = !DILocation(line: 57, column: 7, scope: !2284)
!2297 = !DILocation(line: 57, column: 15, scope: !2284)
!2298 = !{!1273, !912, i64 72}
!2299 = !DILocation(line: 57, column: 29, scope: !2284)
!2300 = !DILocation(line: 55, column: 7, scope: !2241)
!2301 = !DILocation(line: 123, column: 26, scope: !2283)
!2302 = !DILocation(line: 123, column: 19, scope: !2283)
!2303 = !DILocation(line: 0, scope: !2283)
!2304 = !DILocation(line: 124, column: 15, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2283, file: !817, line: 124, column: 11)
!2306 = !DILocation(line: 124, column: 11, scope: !2283)
!2307 = !DILocation(line: 135, column: 19, scope: !2283)
!2308 = !DILocation(line: 136, column: 12, scope: !2283)
!2309 = !DILocation(line: 136, column: 20, scope: !2283)
!2310 = !{!1273, !1274, i64 144}
!2311 = !DILocation(line: 167, column: 7, scope: !2283)
!2312 = !DILocation(line: 169, column: 10, scope: !2241)
!2313 = !DILocation(line: 169, column: 3, scope: !2241)
!2314 = !DILocation(line: 170, column: 1, scope: !2241)
!2315 = !DISubprogram(name: "fseeko", scope: !977, file: !977, line: 736, type: !2316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!83, !2244, !228, !83}
!2318 = distinct !DISubprogram(name: "getprogname", scope: !819, file: !819, line: 54, type: !2319, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !920)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!142}
!2321 = !DILocation(line: 58, column: 10, scope: !2318)
!2322 = !DILocation(line: 58, column: 3, scope: !2318)
!2323 = distinct !DISubprogram(name: "set_program_name", scope: !550, file: !550, line: 37, type: !933, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2324)
!2324 = !{!2325, !2326, !2327}
!2325 = !DILocalVariable(name: "argv0", arg: 1, scope: !2323, file: !550, line: 37, type: !142)
!2326 = !DILocalVariable(name: "slash", scope: !2323, file: !550, line: 44, type: !142)
!2327 = !DILocalVariable(name: "base", scope: !2323, file: !550, line: 45, type: !142)
!2328 = !DILocation(line: 0, scope: !2323)
!2329 = !DILocation(line: 44, column: 23, scope: !2323)
!2330 = !DILocation(line: 45, column: 22, scope: !2323)
!2331 = !DILocation(line: 46, column: 17, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2323, file: !550, line: 46, column: 7)
!2333 = !DILocation(line: 46, column: 9, scope: !2332)
!2334 = !DILocation(line: 46, column: 25, scope: !2332)
!2335 = !DILocation(line: 46, column: 40, scope: !2332)
!2336 = !DILocalVariable(name: "__s1", arg: 1, scope: !2337, file: !995, line: 974, type: !1131)
!2337 = distinct !DISubprogram(name: "memeq", scope: !995, file: !995, line: 974, type: !2338, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!168, !1131, !1131, !139}
!2340 = !{!2336, !2341, !2342}
!2341 = !DILocalVariable(name: "__s2", arg: 2, scope: !2337, file: !995, line: 974, type: !1131)
!2342 = !DILocalVariable(name: "__n", arg: 3, scope: !2337, file: !995, line: 974, type: !139)
!2343 = !DILocation(line: 0, scope: !2337, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 46, column: 28, scope: !2332)
!2345 = !DILocation(line: 976, column: 11, scope: !2337, inlinedAt: !2344)
!2346 = !DILocation(line: 976, column: 10, scope: !2337, inlinedAt: !2344)
!2347 = !DILocation(line: 46, column: 7, scope: !2323)
!2348 = !DILocation(line: 49, column: 11, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !550, line: 49, column: 11)
!2350 = distinct !DILexicalBlock(scope: !2332, file: !550, line: 47, column: 5)
!2351 = !DILocation(line: 49, column: 36, scope: !2349)
!2352 = !DILocation(line: 49, column: 11, scope: !2350)
!2353 = !DILocation(line: 65, column: 16, scope: !2323)
!2354 = !DILocation(line: 71, column: 27, scope: !2323)
!2355 = !DILocation(line: 74, column: 33, scope: !2323)
!2356 = !DILocation(line: 76, column: 1, scope: !2323)
!2357 = !DISubprogram(name: "strrchr", scope: !1103, file: !1103, line: 273, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2358 = !DILocation(line: 0, scope: !559)
!2359 = !DILocation(line: 40, column: 29, scope: !559)
!2360 = !DILocation(line: 41, column: 19, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !559, file: !560, line: 41, column: 7)
!2362 = !DILocation(line: 41, column: 7, scope: !559)
!2363 = !DILocation(line: 47, column: 3, scope: !559)
!2364 = !DILocation(line: 48, column: 3, scope: !559)
!2365 = !DILocation(line: 48, column: 13, scope: !559)
!2366 = !DILocalVariable(name: "ps", arg: 1, scope: !2367, file: !2368, line: 1135, type: !2371)
!2367 = distinct !DISubprogram(name: "mbszero", scope: !2368, file: !2368, line: 1135, type: !2369, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2372)
!2368 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!2372 = !{!2366}
!2373 = !DILocation(line: 0, scope: !2367, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 48, column: 18, scope: !559)
!2375 = !DILocalVariable(name: "__dest", arg: 1, scope: !2376, file: !1284, line: 57, type: !137)
!2376 = distinct !DISubprogram(name: "memset", scope: !1284, file: !1284, line: 57, type: !2377, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!137, !137, !83, !139}
!2379 = !{!2375, !2380, !2381}
!2380 = !DILocalVariable(name: "__ch", arg: 2, scope: !2376, file: !1284, line: 57, type: !83)
!2381 = !DILocalVariable(name: "__len", arg: 3, scope: !2376, file: !1284, line: 57, type: !139)
!2382 = !DILocation(line: 0, scope: !2376, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 1137, column: 3, scope: !2367, inlinedAt: !2374)
!2384 = !DILocation(line: 59, column: 10, scope: !2376, inlinedAt: !2383)
!2385 = !DILocation(line: 49, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !559, file: !560, line: 49, column: 7)
!2387 = !DILocation(line: 49, column: 39, scope: !2386)
!2388 = !DILocation(line: 49, column: 44, scope: !2386)
!2389 = !DILocation(line: 54, column: 1, scope: !559)
!2390 = distinct !DISubprogram(name: "clone_quoting_options", scope: !586, file: !586, line: 113, type: !2391, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2394)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!2393, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!2394 = !{!2395, !2396, !2397}
!2395 = !DILocalVariable(name: "o", arg: 1, scope: !2390, file: !586, line: 113, type: !2393)
!2396 = !DILocalVariable(name: "saved_errno", scope: !2390, file: !586, line: 115, type: !83)
!2397 = !DILocalVariable(name: "p", scope: !2390, file: !586, line: 116, type: !2393)
!2398 = !DILocation(line: 0, scope: !2390)
!2399 = !DILocation(line: 115, column: 21, scope: !2390)
!2400 = !DILocation(line: 116, column: 40, scope: !2390)
!2401 = !DILocation(line: 116, column: 31, scope: !2390)
!2402 = !DILocation(line: 118, column: 9, scope: !2390)
!2403 = !DILocation(line: 119, column: 3, scope: !2390)
!2404 = distinct !DISubprogram(name: "get_quoting_style", scope: !586, file: !586, line: 124, type: !2405, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2409)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!102, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!2409 = !{!2410}
!2410 = !DILocalVariable(name: "o", arg: 1, scope: !2404, file: !586, line: 124, type: !2407)
!2411 = !DILocation(line: 0, scope: !2404)
!2412 = !DILocation(line: 126, column: 11, scope: !2404)
!2413 = !DILocation(line: 126, column: 46, scope: !2404)
!2414 = !{!2415, !913, i64 0}
!2415 = !{!"quoting_options", !913, i64 0, !983, i64 4, !913, i64 8, !912, i64 40, !912, i64 48}
!2416 = !DILocation(line: 126, column: 3, scope: !2404)
!2417 = distinct !DISubprogram(name: "set_quoting_style", scope: !586, file: !586, line: 132, type: !2418, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{null, !2393, !102}
!2420 = !{!2421, !2422}
!2421 = !DILocalVariable(name: "o", arg: 1, scope: !2417, file: !586, line: 132, type: !2393)
!2422 = !DILocalVariable(name: "s", arg: 2, scope: !2417, file: !586, line: 132, type: !102)
!2423 = !DILocation(line: 0, scope: !2417)
!2424 = !DILocation(line: 134, column: 4, scope: !2417)
!2425 = !DILocation(line: 134, column: 45, scope: !2417)
!2426 = !DILocation(line: 135, column: 1, scope: !2417)
!2427 = distinct !DISubprogram(name: "set_char_quoting", scope: !586, file: !586, line: 143, type: !2428, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!83, !2393, !4, !83}
!2430 = !{!2431, !2432, !2433, !2434, !2435, !2437, !2438}
!2431 = !DILocalVariable(name: "o", arg: 1, scope: !2427, file: !586, line: 143, type: !2393)
!2432 = !DILocalVariable(name: "c", arg: 2, scope: !2427, file: !586, line: 143, type: !4)
!2433 = !DILocalVariable(name: "i", arg: 3, scope: !2427, file: !586, line: 143, type: !83)
!2434 = !DILocalVariable(name: "uc", scope: !2427, file: !586, line: 145, type: !144)
!2435 = !DILocalVariable(name: "p", scope: !2427, file: !586, line: 146, type: !2436)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2437 = !DILocalVariable(name: "shift", scope: !2427, file: !586, line: 148, type: !83)
!2438 = !DILocalVariable(name: "r", scope: !2427, file: !586, line: 149, type: !69)
!2439 = !DILocation(line: 0, scope: !2427)
!2440 = !DILocation(line: 147, column: 6, scope: !2427)
!2441 = !DILocation(line: 147, column: 41, scope: !2427)
!2442 = !DILocation(line: 147, column: 62, scope: !2427)
!2443 = !DILocation(line: 147, column: 57, scope: !2427)
!2444 = !DILocation(line: 148, column: 15, scope: !2427)
!2445 = !DILocation(line: 149, column: 21, scope: !2427)
!2446 = !DILocation(line: 149, column: 24, scope: !2427)
!2447 = !DILocation(line: 149, column: 34, scope: !2427)
!2448 = !DILocation(line: 150, column: 19, scope: !2427)
!2449 = !DILocation(line: 150, column: 24, scope: !2427)
!2450 = !DILocation(line: 150, column: 6, scope: !2427)
!2451 = !DILocation(line: 151, column: 3, scope: !2427)
!2452 = distinct !DISubprogram(name: "set_quoting_flags", scope: !586, file: !586, line: 159, type: !2453, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!83, !2393, !83}
!2455 = !{!2456, !2457, !2458}
!2456 = !DILocalVariable(name: "o", arg: 1, scope: !2452, file: !586, line: 159, type: !2393)
!2457 = !DILocalVariable(name: "i", arg: 2, scope: !2452, file: !586, line: 159, type: !83)
!2458 = !DILocalVariable(name: "r", scope: !2452, file: !586, line: 163, type: !83)
!2459 = !DILocation(line: 0, scope: !2452)
!2460 = !DILocation(line: 161, column: 8, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2452, file: !586, line: 161, column: 7)
!2462 = !DILocation(line: 161, column: 7, scope: !2452)
!2463 = !DILocation(line: 163, column: 14, scope: !2452)
!2464 = !{!2415, !983, i64 4}
!2465 = !DILocation(line: 164, column: 12, scope: !2452)
!2466 = !DILocation(line: 165, column: 3, scope: !2452)
!2467 = distinct !DISubprogram(name: "set_custom_quoting", scope: !586, file: !586, line: 169, type: !2468, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !2393, !142, !142}
!2470 = !{!2471, !2472, !2473}
!2471 = !DILocalVariable(name: "o", arg: 1, scope: !2467, file: !586, line: 169, type: !2393)
!2472 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2467, file: !586, line: 170, type: !142)
!2473 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2467, file: !586, line: 170, type: !142)
!2474 = !DILocation(line: 0, scope: !2467)
!2475 = !DILocation(line: 172, column: 8, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2467, file: !586, line: 172, column: 7)
!2477 = !DILocation(line: 172, column: 7, scope: !2467)
!2478 = !DILocation(line: 174, column: 12, scope: !2467)
!2479 = !DILocation(line: 175, column: 8, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2467, file: !586, line: 175, column: 7)
!2481 = !DILocation(line: 175, column: 19, scope: !2480)
!2482 = !DILocation(line: 176, column: 5, scope: !2480)
!2483 = !DILocation(line: 177, column: 6, scope: !2467)
!2484 = !DILocation(line: 177, column: 17, scope: !2467)
!2485 = !{!2415, !912, i64 40}
!2486 = !DILocation(line: 178, column: 6, scope: !2467)
!2487 = !DILocation(line: 178, column: 18, scope: !2467)
!2488 = !{!2415, !912, i64 48}
!2489 = !DILocation(line: 179, column: 1, scope: !2467)
!2490 = !DISubprogram(name: "abort", scope: !1107, file: !1107, line: 598, type: !545, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !920)
!2491 = distinct !DISubprogram(name: "quotearg_buffer", scope: !586, file: !586, line: 774, type: !2492, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!139, !136, !139, !142, !139, !2407}
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502}
!2495 = !DILocalVariable(name: "buffer", arg: 1, scope: !2491, file: !586, line: 774, type: !136)
!2496 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2491, file: !586, line: 774, type: !139)
!2497 = !DILocalVariable(name: "arg", arg: 3, scope: !2491, file: !586, line: 775, type: !142)
!2498 = !DILocalVariable(name: "argsize", arg: 4, scope: !2491, file: !586, line: 775, type: !139)
!2499 = !DILocalVariable(name: "o", arg: 5, scope: !2491, file: !586, line: 776, type: !2407)
!2500 = !DILocalVariable(name: "p", scope: !2491, file: !586, line: 778, type: !2407)
!2501 = !DILocalVariable(name: "saved_errno", scope: !2491, file: !586, line: 779, type: !83)
!2502 = !DILocalVariable(name: "r", scope: !2491, file: !586, line: 780, type: !139)
!2503 = !DILocation(line: 0, scope: !2491)
!2504 = !DILocation(line: 778, column: 37, scope: !2491)
!2505 = !DILocation(line: 779, column: 21, scope: !2491)
!2506 = !DILocation(line: 781, column: 43, scope: !2491)
!2507 = !DILocation(line: 781, column: 53, scope: !2491)
!2508 = !DILocation(line: 781, column: 63, scope: !2491)
!2509 = !DILocation(line: 782, column: 43, scope: !2491)
!2510 = !DILocation(line: 782, column: 58, scope: !2491)
!2511 = !DILocation(line: 780, column: 14, scope: !2491)
!2512 = !DILocation(line: 783, column: 9, scope: !2491)
!2513 = !DILocation(line: 784, column: 3, scope: !2491)
!2514 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !586, file: !586, line: 251, type: !2515, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2519)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!139, !136, !139, !142, !139, !102, !83, !2517, !142, !142}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2519 = !{!2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2544, !2546, !2549, !2550, !2551, !2552, !2555, !2556, !2559, !2563, !2564, !2572, !2575, !2576, !2578, !2579, !2580, !2581}
!2520 = !DILocalVariable(name: "buffer", arg: 1, scope: !2514, file: !586, line: 251, type: !136)
!2521 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2514, file: !586, line: 251, type: !139)
!2522 = !DILocalVariable(name: "arg", arg: 3, scope: !2514, file: !586, line: 252, type: !142)
!2523 = !DILocalVariable(name: "argsize", arg: 4, scope: !2514, file: !586, line: 252, type: !139)
!2524 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2514, file: !586, line: 253, type: !102)
!2525 = !DILocalVariable(name: "flags", arg: 6, scope: !2514, file: !586, line: 253, type: !83)
!2526 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2514, file: !586, line: 254, type: !2517)
!2527 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2514, file: !586, line: 255, type: !142)
!2528 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2514, file: !586, line: 256, type: !142)
!2529 = !DILocalVariable(name: "unibyte_locale", scope: !2514, file: !586, line: 258, type: !168)
!2530 = !DILocalVariable(name: "len", scope: !2514, file: !586, line: 260, type: !139)
!2531 = !DILocalVariable(name: "orig_buffersize", scope: !2514, file: !586, line: 261, type: !139)
!2532 = !DILocalVariable(name: "quote_string", scope: !2514, file: !586, line: 262, type: !142)
!2533 = !DILocalVariable(name: "quote_string_len", scope: !2514, file: !586, line: 263, type: !139)
!2534 = !DILocalVariable(name: "backslash_escapes", scope: !2514, file: !586, line: 264, type: !168)
!2535 = !DILocalVariable(name: "elide_outer_quotes", scope: !2514, file: !586, line: 265, type: !168)
!2536 = !DILocalVariable(name: "encountered_single_quote", scope: !2514, file: !586, line: 266, type: !168)
!2537 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2514, file: !586, line: 267, type: !168)
!2538 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2514, file: !586, line: 309, type: !168)
!2539 = !DILocalVariable(name: "lq", scope: !2540, file: !586, line: 361, type: !142)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !586, line: 361, column: 11)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !586, line: 360, column: 13)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !586, line: 333, column: 7)
!2543 = distinct !DILexicalBlock(scope: !2514, file: !586, line: 312, column: 5)
!2544 = !DILocalVariable(name: "i", scope: !2545, file: !586, line: 395, type: !139)
!2545 = distinct !DILexicalBlock(scope: !2514, file: !586, line: 395, column: 3)
!2546 = !DILocalVariable(name: "is_right_quote", scope: !2547, file: !586, line: 397, type: !168)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !586, line: 396, column: 5)
!2548 = distinct !DILexicalBlock(scope: !2545, file: !586, line: 395, column: 3)
!2549 = !DILocalVariable(name: "escaping", scope: !2547, file: !586, line: 398, type: !168)
!2550 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2547, file: !586, line: 399, type: !168)
!2551 = !DILocalVariable(name: "c", scope: !2547, file: !586, line: 417, type: !144)
!2552 = !DILocalVariable(name: "m", scope: !2553, file: !586, line: 598, type: !139)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !586, line: 596, column: 11)
!2554 = distinct !DILexicalBlock(scope: !2547, file: !586, line: 419, column: 9)
!2555 = !DILocalVariable(name: "printable", scope: !2553, file: !586, line: 600, type: !168)
!2556 = !DILocalVariable(name: "mbs", scope: !2557, file: !586, line: 609, type: !659)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !586, line: 608, column: 15)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !586, line: 602, column: 17)
!2559 = !DILocalVariable(name: "w", scope: !2560, file: !586, line: 618, type: !431)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !586, line: 617, column: 19)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !586, line: 616, column: 17)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !586, line: 616, column: 17)
!2563 = !DILocalVariable(name: "bytes", scope: !2560, file: !586, line: 619, type: !139)
!2564 = !DILocalVariable(name: "j", scope: !2565, file: !586, line: 648, type: !139)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !586, line: 648, column: 29)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !586, line: 647, column: 27)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !586, line: 645, column: 29)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !586, line: 636, column: 23)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !586, line: 628, column: 30)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !586, line: 623, column: 30)
!2571 = distinct !DILexicalBlock(scope: !2560, file: !586, line: 621, column: 25)
!2572 = !DILocalVariable(name: "ilim", scope: !2573, file: !586, line: 674, type: !139)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !586, line: 671, column: 15)
!2574 = distinct !DILexicalBlock(scope: !2553, file: !586, line: 670, column: 17)
!2575 = !DILabel(scope: !2514, name: "process_input", file: !586, line: 308)
!2576 = !DILabel(scope: !2577, name: "c_and_shell_escape", file: !586, line: 502)
!2577 = distinct !DILexicalBlock(scope: !2554, file: !586, line: 478, column: 9)
!2578 = !DILabel(scope: !2577, name: "c_escape", file: !586, line: 507)
!2579 = !DILabel(scope: !2547, name: "store_escape", file: !586, line: 709)
!2580 = !DILabel(scope: !2547, name: "store_c", file: !586, line: 712)
!2581 = !DILabel(scope: !2514, name: "force_outer_quoting_style", file: !586, line: 753)
!2582 = !DILocation(line: 0, scope: !2514)
!2583 = !DILocation(line: 258, column: 25, scope: !2514)
!2584 = !DILocation(line: 258, column: 36, scope: !2514)
!2585 = !DILocation(line: 265, column: 8, scope: !2514)
!2586 = !DILocation(line: 267, column: 3, scope: !2514)
!2587 = !DILocation(line: 261, column: 10, scope: !2514)
!2588 = !DILocation(line: 262, column: 15, scope: !2514)
!2589 = !DILocation(line: 263, column: 10, scope: !2514)
!2590 = !DILocation(line: 264, column: 8, scope: !2514)
!2591 = !DILocation(line: 266, column: 8, scope: !2514)
!2592 = !DILocation(line: 267, column: 8, scope: !2514)
!2593 = !DILocation(line: 308, column: 2, scope: !2514)
!2594 = !DILocation(line: 311, column: 3, scope: !2514)
!2595 = !DILocation(line: 318, column: 11, scope: !2543)
!2596 = !DILocation(line: 318, column: 12, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2543, file: !586, line: 318, column: 11)
!2598 = !DILocation(line: 319, column: 9, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !586, line: 319, column: 9)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !586, line: 319, column: 9)
!2601 = !DILocation(line: 319, column: 9, scope: !2600)
!2602 = !DILocation(line: 0, scope: !650, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 357, column: 26, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !586, line: 335, column: 11)
!2605 = distinct !DILexicalBlock(scope: !2542, file: !586, line: 334, column: 13)
!2606 = !DILocation(line: 199, column: 29, scope: !650, inlinedAt: !2603)
!2607 = !DILocation(line: 201, column: 19, scope: !2608, inlinedAt: !2603)
!2608 = distinct !DILexicalBlock(scope: !650, file: !586, line: 201, column: 7)
!2609 = !DILocation(line: 201, column: 7, scope: !650, inlinedAt: !2603)
!2610 = !DILocation(line: 229, column: 3, scope: !650, inlinedAt: !2603)
!2611 = !DILocation(line: 230, column: 3, scope: !650, inlinedAt: !2603)
!2612 = !DILocation(line: 230, column: 13, scope: !650, inlinedAt: !2603)
!2613 = !DILocalVariable(name: "ps", arg: 1, scope: !2614, file: !2368, line: 1135, type: !2617)
!2614 = distinct !DISubprogram(name: "mbszero", scope: !2368, file: !2368, line: 1135, type: !2615, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2618)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!2618 = !{!2613}
!2619 = !DILocation(line: 0, scope: !2614, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 230, column: 18, scope: !650, inlinedAt: !2603)
!2621 = !DILocalVariable(name: "__dest", arg: 1, scope: !2622, file: !1284, line: 57, type: !137)
!2622 = distinct !DISubprogram(name: "memset", scope: !1284, file: !1284, line: 57, type: !2377, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2623)
!2623 = !{!2621, !2624, !2625}
!2624 = !DILocalVariable(name: "__ch", arg: 2, scope: !2622, file: !1284, line: 57, type: !83)
!2625 = !DILocalVariable(name: "__len", arg: 3, scope: !2622, file: !1284, line: 57, type: !139)
!2626 = !DILocation(line: 0, scope: !2622, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1137, column: 3, scope: !2614, inlinedAt: !2620)
!2628 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !2627)
!2629 = !DILocation(line: 231, column: 7, scope: !2630, inlinedAt: !2603)
!2630 = distinct !DILexicalBlock(scope: !650, file: !586, line: 231, column: 7)
!2631 = !DILocation(line: 231, column: 40, scope: !2630, inlinedAt: !2603)
!2632 = !DILocation(line: 231, column: 45, scope: !2630, inlinedAt: !2603)
!2633 = !DILocation(line: 235, column: 1, scope: !650, inlinedAt: !2603)
!2634 = !DILocation(line: 0, scope: !650, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 358, column: 27, scope: !2604)
!2636 = !DILocation(line: 199, column: 29, scope: !650, inlinedAt: !2635)
!2637 = !DILocation(line: 201, column: 19, scope: !2608, inlinedAt: !2635)
!2638 = !DILocation(line: 201, column: 7, scope: !650, inlinedAt: !2635)
!2639 = !DILocation(line: 229, column: 3, scope: !650, inlinedAt: !2635)
!2640 = !DILocation(line: 230, column: 3, scope: !650, inlinedAt: !2635)
!2641 = !DILocation(line: 230, column: 13, scope: !650, inlinedAt: !2635)
!2642 = !DILocation(line: 0, scope: !2614, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 230, column: 18, scope: !650, inlinedAt: !2635)
!2644 = !DILocation(line: 0, scope: !2622, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 1137, column: 3, scope: !2614, inlinedAt: !2643)
!2646 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !2645)
!2647 = !DILocation(line: 231, column: 7, scope: !2630, inlinedAt: !2635)
!2648 = !DILocation(line: 231, column: 40, scope: !2630, inlinedAt: !2635)
!2649 = !DILocation(line: 231, column: 45, scope: !2630, inlinedAt: !2635)
!2650 = !DILocation(line: 235, column: 1, scope: !650, inlinedAt: !2635)
!2651 = !DILocation(line: 360, column: 14, scope: !2541)
!2652 = !DILocation(line: 360, column: 13, scope: !2542)
!2653 = !DILocation(line: 0, scope: !2540)
!2654 = !DILocation(line: 361, column: 45, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2540, file: !586, line: 361, column: 11)
!2656 = !DILocation(line: 361, column: 11, scope: !2540)
!2657 = !DILocation(line: 362, column: 13, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !586, line: 362, column: 13)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !586, line: 362, column: 13)
!2660 = !DILocation(line: 362, column: 13, scope: !2659)
!2661 = !DILocation(line: 361, column: 52, scope: !2655)
!2662 = distinct !{!2662, !2656, !2663, !1029}
!2663 = !DILocation(line: 362, column: 13, scope: !2540)
!2664 = !DILocation(line: 260, column: 10, scope: !2514)
!2665 = !DILocation(line: 365, column: 28, scope: !2542)
!2666 = !DILocation(line: 367, column: 7, scope: !2543)
!2667 = !DILocation(line: 370, column: 7, scope: !2543)
!2668 = !DILocation(line: 373, column: 7, scope: !2543)
!2669 = !DILocation(line: 376, column: 12, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2543, file: !586, line: 376, column: 11)
!2671 = !DILocation(line: 376, column: 11, scope: !2543)
!2672 = !DILocation(line: 381, column: 12, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2543, file: !586, line: 381, column: 11)
!2674 = !DILocation(line: 381, column: 11, scope: !2543)
!2675 = !DILocation(line: 382, column: 9, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !586, line: 382, column: 9)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !586, line: 382, column: 9)
!2678 = !DILocation(line: 382, column: 9, scope: !2677)
!2679 = !DILocation(line: 389, column: 7, scope: !2543)
!2680 = !DILocation(line: 392, column: 7, scope: !2543)
!2681 = !DILocation(line: 0, scope: !2545)
!2682 = !DILocation(line: 395, column: 8, scope: !2545)
!2683 = !DILocation(line: 309, column: 8, scope: !2514)
!2684 = !DILocation(line: 395, scope: !2545)
!2685 = !DILocation(line: 395, column: 34, scope: !2548)
!2686 = !DILocation(line: 395, column: 26, scope: !2548)
!2687 = !DILocation(line: 395, column: 48, scope: !2548)
!2688 = !DILocation(line: 395, column: 55, scope: !2548)
!2689 = !DILocation(line: 395, column: 3, scope: !2545)
!2690 = !DILocation(line: 395, column: 67, scope: !2548)
!2691 = !DILocation(line: 0, scope: !2547)
!2692 = !DILocation(line: 402, column: 11, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2547, file: !586, line: 401, column: 11)
!2694 = !DILocation(line: 404, column: 17, scope: !2693)
!2695 = !DILocation(line: 405, column: 39, scope: !2693)
!2696 = !DILocation(line: 409, column: 32, scope: !2693)
!2697 = !DILocation(line: 405, column: 19, scope: !2693)
!2698 = !DILocation(line: 405, column: 15, scope: !2693)
!2699 = !DILocation(line: 410, column: 11, scope: !2693)
!2700 = !DILocation(line: 410, column: 25, scope: !2693)
!2701 = !DILocalVariable(name: "__s1", arg: 1, scope: !2702, file: !995, line: 974, type: !1131)
!2702 = distinct !DISubprogram(name: "memeq", scope: !995, file: !995, line: 974, type: !2338, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2703)
!2703 = !{!2701, !2704, !2705}
!2704 = !DILocalVariable(name: "__s2", arg: 2, scope: !2702, file: !995, line: 974, type: !1131)
!2705 = !DILocalVariable(name: "__n", arg: 3, scope: !2702, file: !995, line: 974, type: !139)
!2706 = !DILocation(line: 0, scope: !2702, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 410, column: 14, scope: !2693)
!2708 = !DILocation(line: 976, column: 11, scope: !2702, inlinedAt: !2707)
!2709 = !DILocation(line: 976, column: 10, scope: !2702, inlinedAt: !2707)
!2710 = !DILocation(line: 401, column: 11, scope: !2547)
!2711 = !DILocation(line: 417, column: 25, scope: !2547)
!2712 = !DILocation(line: 418, column: 7, scope: !2547)
!2713 = !DILocation(line: 421, column: 15, scope: !2554)
!2714 = !DILocation(line: 423, column: 15, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !586, line: 423, column: 15)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !586, line: 422, column: 13)
!2717 = distinct !DILexicalBlock(scope: !2554, file: !586, line: 421, column: 15)
!2718 = !DILocation(line: 423, column: 15, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !586, line: 423, column: 15)
!2720 = !DILocation(line: 423, column: 15, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !586, line: 423, column: 15)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !586, line: 423, column: 15)
!2723 = distinct !DILexicalBlock(scope: !2719, file: !586, line: 423, column: 15)
!2724 = !DILocation(line: 423, column: 15, scope: !2722)
!2725 = !DILocation(line: 423, column: 15, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !586, line: 423, column: 15)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !586, line: 423, column: 15)
!2728 = !DILocation(line: 423, column: 15, scope: !2727)
!2729 = !DILocation(line: 423, column: 15, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !586, line: 423, column: 15)
!2731 = distinct !DILexicalBlock(scope: !2723, file: !586, line: 423, column: 15)
!2732 = !DILocation(line: 423, column: 15, scope: !2731)
!2733 = !DILocation(line: 423, column: 15, scope: !2723)
!2734 = !DILocation(line: 423, column: 15, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !586, line: 423, column: 15)
!2736 = distinct !DILexicalBlock(scope: !2715, file: !586, line: 423, column: 15)
!2737 = !DILocation(line: 423, column: 15, scope: !2736)
!2738 = !DILocation(line: 431, column: 19, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2716, file: !586, line: 430, column: 19)
!2740 = !DILocation(line: 431, column: 24, scope: !2739)
!2741 = !DILocation(line: 431, column: 28, scope: !2739)
!2742 = !DILocation(line: 431, column: 38, scope: !2739)
!2743 = !DILocation(line: 431, column: 48, scope: !2739)
!2744 = !DILocation(line: 431, column: 59, scope: !2739)
!2745 = !DILocation(line: 433, column: 19, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !586, line: 433, column: 19)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !586, line: 433, column: 19)
!2748 = distinct !DILexicalBlock(scope: !2739, file: !586, line: 432, column: 17)
!2749 = !DILocation(line: 433, column: 19, scope: !2747)
!2750 = !DILocation(line: 434, column: 19, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !586, line: 434, column: 19)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !586, line: 434, column: 19)
!2753 = !DILocation(line: 434, column: 19, scope: !2752)
!2754 = !DILocation(line: 435, column: 17, scope: !2748)
!2755 = !DILocation(line: 442, column: 20, scope: !2717)
!2756 = !DILocation(line: 447, column: 11, scope: !2554)
!2757 = !DILocation(line: 450, column: 19, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2554, file: !586, line: 448, column: 13)
!2759 = !DILocation(line: 456, column: 19, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2758, file: !586, line: 455, column: 19)
!2761 = !DILocation(line: 456, column: 24, scope: !2760)
!2762 = !DILocation(line: 456, column: 28, scope: !2760)
!2763 = !DILocation(line: 456, column: 38, scope: !2760)
!2764 = !DILocation(line: 456, column: 47, scope: !2760)
!2765 = !DILocation(line: 456, column: 41, scope: !2760)
!2766 = !DILocation(line: 456, column: 52, scope: !2760)
!2767 = !DILocation(line: 455, column: 19, scope: !2758)
!2768 = !DILocation(line: 457, column: 25, scope: !2760)
!2769 = !DILocation(line: 457, column: 17, scope: !2760)
!2770 = !DILocation(line: 464, column: 25, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2760, file: !586, line: 458, column: 19)
!2772 = !DILocation(line: 468, column: 21, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !586, line: 468, column: 21)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !586, line: 468, column: 21)
!2775 = !DILocation(line: 468, column: 21, scope: !2774)
!2776 = !DILocation(line: 469, column: 21, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !586, line: 469, column: 21)
!2778 = distinct !DILexicalBlock(scope: !2771, file: !586, line: 469, column: 21)
!2779 = !DILocation(line: 469, column: 21, scope: !2778)
!2780 = !DILocation(line: 470, column: 21, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !586, line: 470, column: 21)
!2782 = distinct !DILexicalBlock(scope: !2771, file: !586, line: 470, column: 21)
!2783 = !DILocation(line: 470, column: 21, scope: !2782)
!2784 = !DILocation(line: 471, column: 21, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !586, line: 471, column: 21)
!2786 = distinct !DILexicalBlock(scope: !2771, file: !586, line: 471, column: 21)
!2787 = !DILocation(line: 471, column: 21, scope: !2786)
!2788 = !DILocation(line: 472, column: 21, scope: !2771)
!2789 = !DILocation(line: 482, column: 33, scope: !2577)
!2790 = !DILocation(line: 483, column: 33, scope: !2577)
!2791 = !DILocation(line: 485, column: 33, scope: !2577)
!2792 = !DILocation(line: 486, column: 33, scope: !2577)
!2793 = !DILocation(line: 487, column: 33, scope: !2577)
!2794 = !DILocation(line: 490, column: 17, scope: !2577)
!2795 = !DILocation(line: 492, column: 21, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !586, line: 491, column: 15)
!2797 = distinct !DILexicalBlock(scope: !2577, file: !586, line: 490, column: 17)
!2798 = !DILocation(line: 499, column: 35, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2577, file: !586, line: 499, column: 17)
!2800 = !DILocation(line: 499, column: 57, scope: !2799)
!2801 = !DILocation(line: 0, scope: !2577)
!2802 = !DILocation(line: 502, column: 11, scope: !2577)
!2803 = !DILocation(line: 504, column: 17, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2577, file: !586, line: 503, column: 17)
!2805 = !DILocation(line: 507, column: 11, scope: !2577)
!2806 = !DILocation(line: 508, column: 17, scope: !2577)
!2807 = !DILocation(line: 517, column: 15, scope: !2554)
!2808 = !DILocation(line: 517, column: 40, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2554, file: !586, line: 517, column: 15)
!2810 = !DILocation(line: 517, column: 47, scope: !2809)
!2811 = !DILocation(line: 517, column: 18, scope: !2809)
!2812 = !DILocation(line: 521, column: 17, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2554, file: !586, line: 521, column: 15)
!2814 = !DILocation(line: 521, column: 15, scope: !2554)
!2815 = !DILocation(line: 525, column: 11, scope: !2554)
!2816 = !DILocation(line: 537, column: 15, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2554, file: !586, line: 536, column: 15)
!2818 = !DILocation(line: 544, column: 15, scope: !2554)
!2819 = !DILocation(line: 546, column: 19, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !586, line: 545, column: 13)
!2821 = distinct !DILexicalBlock(scope: !2554, file: !586, line: 544, column: 15)
!2822 = !DILocation(line: 549, column: 19, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !586, line: 549, column: 19)
!2824 = !DILocation(line: 549, column: 30, scope: !2823)
!2825 = !DILocation(line: 558, column: 15, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !586, line: 558, column: 15)
!2827 = distinct !DILexicalBlock(scope: !2820, file: !586, line: 558, column: 15)
!2828 = !DILocation(line: 558, column: 15, scope: !2827)
!2829 = !DILocation(line: 559, column: 15, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !586, line: 559, column: 15)
!2831 = distinct !DILexicalBlock(scope: !2820, file: !586, line: 559, column: 15)
!2832 = !DILocation(line: 559, column: 15, scope: !2831)
!2833 = !DILocation(line: 560, column: 15, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !586, line: 560, column: 15)
!2835 = distinct !DILexicalBlock(scope: !2820, file: !586, line: 560, column: 15)
!2836 = !DILocation(line: 560, column: 15, scope: !2835)
!2837 = !DILocation(line: 562, column: 13, scope: !2820)
!2838 = !DILocation(line: 602, column: 17, scope: !2553)
!2839 = !DILocation(line: 0, scope: !2553)
!2840 = !DILocation(line: 605, column: 29, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2558, file: !586, line: 603, column: 15)
!2842 = !DILocation(line: 605, column: 27, scope: !2841)
!2843 = !DILocation(line: 668, column: 40, scope: !2553)
!2844 = !DILocation(line: 670, column: 23, scope: !2574)
!2845 = !DILocation(line: 609, column: 17, scope: !2557)
!2846 = !DILocation(line: 609, column: 27, scope: !2557)
!2847 = !DILocation(line: 0, scope: !2614, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 609, column: 32, scope: !2557)
!2849 = !DILocation(line: 0, scope: !2622, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 1137, column: 3, scope: !2614, inlinedAt: !2848)
!2851 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !2850)
!2852 = !DILocation(line: 613, column: 29, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2557, file: !586, line: 613, column: 21)
!2854 = !DILocation(line: 613, column: 21, scope: !2557)
!2855 = !DILocation(line: 614, column: 29, scope: !2853)
!2856 = !DILocation(line: 614, column: 19, scope: !2853)
!2857 = !DILocation(line: 618, column: 21, scope: !2560)
!2858 = !DILocation(line: 620, column: 54, scope: !2560)
!2859 = !DILocation(line: 0, scope: !2560)
!2860 = !DILocation(line: 619, column: 36, scope: !2560)
!2861 = !DILocation(line: 621, column: 25, scope: !2560)
!2862 = !DILocation(line: 631, column: 38, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2569, file: !586, line: 629, column: 23)
!2864 = !DILocation(line: 631, column: 48, scope: !2863)
!2865 = !DILocation(line: 665, column: 19, scope: !2561)
!2866 = !DILocation(line: 666, column: 15, scope: !2558)
!2867 = !DILocation(line: 626, column: 25, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2570, file: !586, line: 624, column: 23)
!2869 = !DILocation(line: 631, column: 51, scope: !2863)
!2870 = !DILocation(line: 631, column: 25, scope: !2863)
!2871 = !DILocation(line: 632, column: 28, scope: !2863)
!2872 = !DILocation(line: 631, column: 34, scope: !2863)
!2873 = distinct !{!2873, !2870, !2871, !1029}
!2874 = !DILocation(line: 646, column: 29, scope: !2567)
!2875 = !DILocation(line: 0, scope: !2565)
!2876 = !DILocation(line: 649, column: 49, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2565, file: !586, line: 648, column: 29)
!2878 = !DILocation(line: 649, column: 39, scope: !2877)
!2879 = !DILocation(line: 649, column: 31, scope: !2877)
!2880 = !DILocation(line: 648, column: 60, scope: !2877)
!2881 = !DILocation(line: 648, column: 50, scope: !2877)
!2882 = !DILocation(line: 648, column: 29, scope: !2565)
!2883 = distinct !{!2883, !2882, !2884, !1029}
!2884 = !DILocation(line: 654, column: 33, scope: !2565)
!2885 = !DILocation(line: 657, column: 43, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2568, file: !586, line: 657, column: 29)
!2887 = !DILocalVariable(name: "wc", arg: 1, scope: !2888, file: !1427, line: 865, type: !1496)
!2888 = distinct !DISubprogram(name: "c32isprint", scope: !1427, file: !1427, line: 865, type: !1494, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !2889)
!2889 = !{!2887}
!2890 = !DILocation(line: 0, scope: !2888, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 657, column: 31, scope: !2886)
!2892 = !DILocation(line: 871, column: 10, scope: !2888, inlinedAt: !2891)
!2893 = !DILocation(line: 657, column: 31, scope: !2886)
!2894 = !DILocation(line: 657, column: 29, scope: !2568)
!2895 = !DILocation(line: 664, column: 23, scope: !2560)
!2896 = !DILocation(line: 670, column: 19, scope: !2574)
!2897 = !DILocation(line: 670, column: 45, scope: !2574)
!2898 = !DILocation(line: 674, column: 33, scope: !2573)
!2899 = !DILocation(line: 0, scope: !2573)
!2900 = !DILocation(line: 676, column: 17, scope: !2573)
!2901 = !DILocation(line: 398, column: 12, scope: !2547)
!2902 = !DILocation(line: 678, column: 43, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !586, line: 678, column: 25)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !586, line: 677, column: 19)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !586, line: 676, column: 17)
!2906 = distinct !DILexicalBlock(scope: !2573, file: !586, line: 676, column: 17)
!2907 = !DILocation(line: 680, column: 25, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !586, line: 680, column: 25)
!2909 = distinct !DILexicalBlock(scope: !2903, file: !586, line: 679, column: 23)
!2910 = !DILocation(line: 680, column: 25, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2908, file: !586, line: 680, column: 25)
!2912 = !DILocation(line: 680, column: 25, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !586, line: 680, column: 25)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !586, line: 680, column: 25)
!2915 = distinct !DILexicalBlock(scope: !2911, file: !586, line: 680, column: 25)
!2916 = !DILocation(line: 680, column: 25, scope: !2914)
!2917 = !DILocation(line: 680, column: 25, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !586, line: 680, column: 25)
!2919 = distinct !DILexicalBlock(scope: !2915, file: !586, line: 680, column: 25)
!2920 = !DILocation(line: 680, column: 25, scope: !2919)
!2921 = !DILocation(line: 680, column: 25, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !586, line: 680, column: 25)
!2923 = distinct !DILexicalBlock(scope: !2915, file: !586, line: 680, column: 25)
!2924 = !DILocation(line: 680, column: 25, scope: !2923)
!2925 = !DILocation(line: 680, column: 25, scope: !2915)
!2926 = !DILocation(line: 680, column: 25, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !586, line: 680, column: 25)
!2928 = distinct !DILexicalBlock(scope: !2908, file: !586, line: 680, column: 25)
!2929 = !DILocation(line: 680, column: 25, scope: !2928)
!2930 = !DILocation(line: 681, column: 25, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !586, line: 681, column: 25)
!2932 = distinct !DILexicalBlock(scope: !2909, file: !586, line: 681, column: 25)
!2933 = !DILocation(line: 681, column: 25, scope: !2932)
!2934 = !DILocation(line: 682, column: 25, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !586, line: 682, column: 25)
!2936 = distinct !DILexicalBlock(scope: !2909, file: !586, line: 682, column: 25)
!2937 = !DILocation(line: 682, column: 25, scope: !2936)
!2938 = !DILocation(line: 683, column: 38, scope: !2909)
!2939 = !DILocation(line: 683, column: 33, scope: !2909)
!2940 = !DILocation(line: 684, column: 23, scope: !2909)
!2941 = !DILocation(line: 685, column: 30, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2903, file: !586, line: 685, column: 30)
!2943 = !DILocation(line: 685, column: 30, scope: !2903)
!2944 = !DILocation(line: 687, column: 25, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !586, line: 687, column: 25)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !586, line: 687, column: 25)
!2947 = distinct !DILexicalBlock(scope: !2942, file: !586, line: 686, column: 23)
!2948 = !DILocation(line: 687, column: 25, scope: !2946)
!2949 = !DILocation(line: 689, column: 23, scope: !2947)
!2950 = !DILocation(line: 690, column: 35, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2904, file: !586, line: 690, column: 25)
!2952 = !DILocation(line: 690, column: 30, scope: !2951)
!2953 = !DILocation(line: 690, column: 25, scope: !2904)
!2954 = !DILocation(line: 692, column: 21, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !586, line: 692, column: 21)
!2956 = distinct !DILexicalBlock(scope: !2904, file: !586, line: 692, column: 21)
!2957 = !DILocation(line: 692, column: 21, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !586, line: 692, column: 21)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !586, line: 692, column: 21)
!2960 = distinct !DILexicalBlock(scope: !2955, file: !586, line: 692, column: 21)
!2961 = !DILocation(line: 692, column: 21, scope: !2959)
!2962 = !DILocation(line: 692, column: 21, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !586, line: 692, column: 21)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !586, line: 692, column: 21)
!2965 = !DILocation(line: 692, column: 21, scope: !2964)
!2966 = !DILocation(line: 692, column: 21, scope: !2960)
!2967 = !DILocation(line: 0, scope: !2904)
!2968 = !DILocation(line: 693, column: 21, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !586, line: 693, column: 21)
!2970 = distinct !DILexicalBlock(scope: !2904, file: !586, line: 693, column: 21)
!2971 = !DILocation(line: 693, column: 21, scope: !2970)
!2972 = !DILocation(line: 694, column: 25, scope: !2904)
!2973 = !DILocation(line: 676, column: 17, scope: !2905)
!2974 = distinct !{!2974, !2975, !2976}
!2975 = !DILocation(line: 676, column: 17, scope: !2906)
!2976 = !DILocation(line: 695, column: 19, scope: !2906)
!2977 = !DILocation(line: 409, column: 30, scope: !2693)
!2978 = !DILocation(line: 702, column: 34, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2547, file: !586, line: 702, column: 11)
!2980 = !DILocation(line: 704, column: 14, scope: !2979)
!2981 = !DILocation(line: 705, column: 14, scope: !2979)
!2982 = !DILocation(line: 705, column: 35, scope: !2979)
!2983 = !DILocation(line: 705, column: 17, scope: !2979)
!2984 = !DILocation(line: 705, column: 47, scope: !2979)
!2985 = !DILocation(line: 705, column: 65, scope: !2979)
!2986 = !DILocation(line: 706, column: 11, scope: !2979)
!2987 = !DILocation(line: 702, column: 11, scope: !2547)
!2988 = !DILocation(line: 395, column: 15, scope: !2545)
!2989 = !DILocation(line: 709, column: 5, scope: !2547)
!2990 = !DILocation(line: 710, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2547, file: !586, line: 710, column: 7)
!2992 = !DILocation(line: 710, column: 7, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2991, file: !586, line: 710, column: 7)
!2994 = !DILocation(line: 710, column: 7, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !586, line: 710, column: 7)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !586, line: 710, column: 7)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !586, line: 710, column: 7)
!2998 = !DILocation(line: 710, column: 7, scope: !2996)
!2999 = !DILocation(line: 710, column: 7, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !586, line: 710, column: 7)
!3001 = distinct !DILexicalBlock(scope: !2997, file: !586, line: 710, column: 7)
!3002 = !DILocation(line: 710, column: 7, scope: !3001)
!3003 = !DILocation(line: 710, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !586, line: 710, column: 7)
!3005 = distinct !DILexicalBlock(scope: !2997, file: !586, line: 710, column: 7)
!3006 = !DILocation(line: 710, column: 7, scope: !3005)
!3007 = !DILocation(line: 710, column: 7, scope: !2997)
!3008 = !DILocation(line: 710, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !586, line: 710, column: 7)
!3010 = distinct !DILexicalBlock(scope: !2991, file: !586, line: 710, column: 7)
!3011 = !DILocation(line: 710, column: 7, scope: !3010)
!3012 = !DILocation(line: 712, column: 5, scope: !2547)
!3013 = !DILocation(line: 713, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !586, line: 713, column: 7)
!3015 = distinct !DILexicalBlock(scope: !2547, file: !586, line: 713, column: 7)
!3016 = !DILocation(line: 417, column: 21, scope: !2547)
!3017 = !DILocation(line: 713, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !586, line: 713, column: 7)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !586, line: 713, column: 7)
!3020 = distinct !DILexicalBlock(scope: !3014, file: !586, line: 713, column: 7)
!3021 = !DILocation(line: 713, column: 7, scope: !3019)
!3022 = !DILocation(line: 713, column: 7, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !586, line: 713, column: 7)
!3024 = distinct !DILexicalBlock(scope: !3020, file: !586, line: 713, column: 7)
!3025 = !DILocation(line: 713, column: 7, scope: !3024)
!3026 = !DILocation(line: 713, column: 7, scope: !3020)
!3027 = !DILocation(line: 714, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !586, line: 714, column: 7)
!3029 = distinct !DILexicalBlock(scope: !2547, file: !586, line: 714, column: 7)
!3030 = !DILocation(line: 714, column: 7, scope: !3029)
!3031 = !DILocation(line: 716, column: 13, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2547, file: !586, line: 716, column: 11)
!3033 = !DILocation(line: 716, column: 11, scope: !2547)
!3034 = !DILocation(line: 718, column: 5, scope: !2548)
!3035 = !DILocation(line: 395, column: 82, scope: !2548)
!3036 = !DILocation(line: 395, column: 3, scope: !2548)
!3037 = distinct !{!3037, !2689, !3038, !1029}
!3038 = !DILocation(line: 718, column: 5, scope: !2545)
!3039 = !DILocation(line: 720, column: 11, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2514, file: !586, line: 720, column: 7)
!3041 = !DILocation(line: 720, column: 16, scope: !3040)
!3042 = !DILocation(line: 728, column: 51, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2514, file: !586, line: 728, column: 7)
!3044 = !DILocation(line: 731, column: 11, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !586, line: 731, column: 11)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !586, line: 730, column: 5)
!3047 = !DILocation(line: 731, column: 11, scope: !3046)
!3048 = !DILocation(line: 732, column: 16, scope: !3045)
!3049 = !DILocation(line: 732, column: 9, scope: !3045)
!3050 = !DILocation(line: 736, column: 18, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3045, file: !586, line: 736, column: 16)
!3052 = !DILocation(line: 736, column: 29, scope: !3051)
!3053 = !DILocation(line: 745, column: 7, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2514, file: !586, line: 745, column: 7)
!3055 = !DILocation(line: 745, column: 20, scope: !3054)
!3056 = !DILocation(line: 746, column: 12, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !586, line: 746, column: 5)
!3058 = distinct !DILexicalBlock(scope: !3054, file: !586, line: 746, column: 5)
!3059 = !DILocation(line: 746, column: 5, scope: !3058)
!3060 = !DILocation(line: 747, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !586, line: 747, column: 7)
!3062 = distinct !DILexicalBlock(scope: !3057, file: !586, line: 747, column: 7)
!3063 = !DILocation(line: 747, column: 7, scope: !3062)
!3064 = !DILocation(line: 746, column: 39, scope: !3057)
!3065 = distinct !{!3065, !3059, !3066, !1029}
!3066 = !DILocation(line: 747, column: 7, scope: !3058)
!3067 = !DILocation(line: 749, column: 11, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !2514, file: !586, line: 749, column: 7)
!3069 = !DILocation(line: 749, column: 7, scope: !2514)
!3070 = !DILocation(line: 750, column: 5, scope: !3068)
!3071 = !DILocation(line: 750, column: 17, scope: !3068)
!3072 = !DILocation(line: 753, column: 2, scope: !2514)
!3073 = !DILocation(line: 756, column: 51, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2514, file: !586, line: 756, column: 7)
!3075 = !DILocation(line: 756, column: 21, scope: !3074)
!3076 = !DILocation(line: 760, column: 42, scope: !2514)
!3077 = !DILocation(line: 758, column: 10, scope: !2514)
!3078 = !DILocation(line: 758, column: 3, scope: !2514)
!3079 = !DILocation(line: 762, column: 1, scope: !2514)
!3080 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1107, file: !1107, line: 98, type: !3081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!139}
!3083 = !DISubprogram(name: "strlen", scope: !1103, file: !1103, line: 407, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!141, !142}
!3086 = !DISubprogram(name: "iswprint", scope: !1727, file: !1727, line: 120, type: !1494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!3087 = distinct !DISubprogram(name: "quotearg_alloc", scope: !586, file: !586, line: 788, type: !3088, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!136, !142, !139, !2407}
!3090 = !{!3091, !3092, !3093}
!3091 = !DILocalVariable(name: "arg", arg: 1, scope: !3087, file: !586, line: 788, type: !142)
!3092 = !DILocalVariable(name: "argsize", arg: 2, scope: !3087, file: !586, line: 788, type: !139)
!3093 = !DILocalVariable(name: "o", arg: 3, scope: !3087, file: !586, line: 789, type: !2407)
!3094 = !DILocation(line: 0, scope: !3087)
!3095 = !DILocalVariable(name: "arg", arg: 1, scope: !3096, file: !586, line: 801, type: !142)
!3096 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !586, file: !586, line: 801, type: !3097, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3099)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!136, !142, !139, !833, !2407}
!3099 = !{!3095, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107}
!3100 = !DILocalVariable(name: "argsize", arg: 2, scope: !3096, file: !586, line: 801, type: !139)
!3101 = !DILocalVariable(name: "size", arg: 3, scope: !3096, file: !586, line: 801, type: !833)
!3102 = !DILocalVariable(name: "o", arg: 4, scope: !3096, file: !586, line: 802, type: !2407)
!3103 = !DILocalVariable(name: "p", scope: !3096, file: !586, line: 804, type: !2407)
!3104 = !DILocalVariable(name: "saved_errno", scope: !3096, file: !586, line: 805, type: !83)
!3105 = !DILocalVariable(name: "flags", scope: !3096, file: !586, line: 807, type: !83)
!3106 = !DILocalVariable(name: "bufsize", scope: !3096, file: !586, line: 808, type: !139)
!3107 = !DILocalVariable(name: "buf", scope: !3096, file: !586, line: 812, type: !136)
!3108 = !DILocation(line: 0, scope: !3096, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 791, column: 10, scope: !3087)
!3110 = !DILocation(line: 804, column: 37, scope: !3096, inlinedAt: !3109)
!3111 = !DILocation(line: 805, column: 21, scope: !3096, inlinedAt: !3109)
!3112 = !DILocation(line: 807, column: 18, scope: !3096, inlinedAt: !3109)
!3113 = !DILocation(line: 807, column: 24, scope: !3096, inlinedAt: !3109)
!3114 = !DILocation(line: 808, column: 72, scope: !3096, inlinedAt: !3109)
!3115 = !DILocation(line: 809, column: 56, scope: !3096, inlinedAt: !3109)
!3116 = !DILocation(line: 810, column: 49, scope: !3096, inlinedAt: !3109)
!3117 = !DILocation(line: 811, column: 49, scope: !3096, inlinedAt: !3109)
!3118 = !DILocation(line: 808, column: 20, scope: !3096, inlinedAt: !3109)
!3119 = !DILocation(line: 811, column: 62, scope: !3096, inlinedAt: !3109)
!3120 = !DILocation(line: 812, column: 15, scope: !3096, inlinedAt: !3109)
!3121 = !DILocation(line: 813, column: 60, scope: !3096, inlinedAt: !3109)
!3122 = !DILocation(line: 815, column: 32, scope: !3096, inlinedAt: !3109)
!3123 = !DILocation(line: 815, column: 47, scope: !3096, inlinedAt: !3109)
!3124 = !DILocation(line: 813, column: 3, scope: !3096, inlinedAt: !3109)
!3125 = !DILocation(line: 816, column: 9, scope: !3096, inlinedAt: !3109)
!3126 = !DILocation(line: 791, column: 3, scope: !3087)
!3127 = !DILocation(line: 0, scope: !3096)
!3128 = !DILocation(line: 804, column: 37, scope: !3096)
!3129 = !DILocation(line: 805, column: 21, scope: !3096)
!3130 = !DILocation(line: 807, column: 18, scope: !3096)
!3131 = !DILocation(line: 807, column: 27, scope: !3096)
!3132 = !DILocation(line: 807, column: 24, scope: !3096)
!3133 = !DILocation(line: 808, column: 72, scope: !3096)
!3134 = !DILocation(line: 809, column: 56, scope: !3096)
!3135 = !DILocation(line: 810, column: 49, scope: !3096)
!3136 = !DILocation(line: 811, column: 49, scope: !3096)
!3137 = !DILocation(line: 808, column: 20, scope: !3096)
!3138 = !DILocation(line: 811, column: 62, scope: !3096)
!3139 = !DILocation(line: 812, column: 15, scope: !3096)
!3140 = !DILocation(line: 813, column: 60, scope: !3096)
!3141 = !DILocation(line: 815, column: 32, scope: !3096)
!3142 = !DILocation(line: 815, column: 47, scope: !3096)
!3143 = !DILocation(line: 813, column: 3, scope: !3096)
!3144 = !DILocation(line: 816, column: 9, scope: !3096)
!3145 = !DILocation(line: 817, column: 7, scope: !3096)
!3146 = !DILocation(line: 818, column: 11, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3096, file: !586, line: 817, column: 7)
!3148 = !{!1274, !1274, i64 0}
!3149 = !DILocation(line: 818, column: 5, scope: !3147)
!3150 = !DILocation(line: 819, column: 3, scope: !3096)
!3151 = distinct !DISubprogram(name: "quotearg_free", scope: !586, file: !586, line: 837, type: !545, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3152)
!3152 = !{!3153, !3154}
!3153 = !DILocalVariable(name: "sv", scope: !3151, file: !586, line: 839, type: !673)
!3154 = !DILocalVariable(name: "i", scope: !3155, file: !586, line: 840, type: !83)
!3155 = distinct !DILexicalBlock(scope: !3151, file: !586, line: 840, column: 3)
!3156 = !DILocation(line: 839, column: 24, scope: !3151)
!3157 = !DILocation(line: 0, scope: !3151)
!3158 = !DILocation(line: 0, scope: !3155)
!3159 = !DILocation(line: 840, column: 21, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3155, file: !586, line: 840, column: 3)
!3161 = !DILocation(line: 840, column: 3, scope: !3155)
!3162 = !DILocation(line: 842, column: 13, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3151, file: !586, line: 842, column: 7)
!3164 = !{!3165, !912, i64 8}
!3165 = !{!"slotvec", !1274, i64 0, !912, i64 8}
!3166 = !DILocation(line: 842, column: 17, scope: !3163)
!3167 = !DILocation(line: 842, column: 7, scope: !3151)
!3168 = !DILocation(line: 841, column: 17, scope: !3160)
!3169 = !DILocation(line: 841, column: 5, scope: !3160)
!3170 = !DILocation(line: 840, column: 32, scope: !3160)
!3171 = distinct !{!3171, !3161, !3172, !1029}
!3172 = !DILocation(line: 841, column: 20, scope: !3155)
!3173 = !DILocation(line: 844, column: 7, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3163, file: !586, line: 843, column: 5)
!3175 = !DILocation(line: 845, column: 21, scope: !3174)
!3176 = !{!3165, !1274, i64 0}
!3177 = !DILocation(line: 846, column: 20, scope: !3174)
!3178 = !DILocation(line: 847, column: 5, scope: !3174)
!3179 = !DILocation(line: 848, column: 10, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3151, file: !586, line: 848, column: 7)
!3181 = !DILocation(line: 848, column: 7, scope: !3151)
!3182 = !DILocation(line: 850, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !586, line: 849, column: 5)
!3184 = !DILocation(line: 851, column: 15, scope: !3183)
!3185 = !DILocation(line: 852, column: 5, scope: !3183)
!3186 = !DILocation(line: 853, column: 10, scope: !3151)
!3187 = !DILocation(line: 854, column: 1, scope: !3151)
!3188 = !DISubprogram(name: "free", scope: !2368, file: !2368, line: 786, type: !3189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !137}
!3191 = distinct !DISubprogram(name: "quotearg_n", scope: !586, file: !586, line: 919, type: !1100, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3192)
!3192 = !{!3193, !3194}
!3193 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !586, line: 919, type: !83)
!3194 = !DILocalVariable(name: "arg", arg: 2, scope: !3191, file: !586, line: 919, type: !142)
!3195 = !DILocation(line: 0, scope: !3191)
!3196 = !DILocation(line: 921, column: 10, scope: !3191)
!3197 = !DILocation(line: 921, column: 3, scope: !3191)
!3198 = distinct !DISubprogram(name: "quotearg_n_options", scope: !586, file: !586, line: 866, type: !3199, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!136, !83, !142, !139, !2407}
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3212, !3213, !3215, !3216, !3217}
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3198, file: !586, line: 866, type: !83)
!3203 = !DILocalVariable(name: "arg", arg: 2, scope: !3198, file: !586, line: 866, type: !142)
!3204 = !DILocalVariable(name: "argsize", arg: 3, scope: !3198, file: !586, line: 866, type: !139)
!3205 = !DILocalVariable(name: "options", arg: 4, scope: !3198, file: !586, line: 867, type: !2407)
!3206 = !DILocalVariable(name: "saved_errno", scope: !3198, file: !586, line: 869, type: !83)
!3207 = !DILocalVariable(name: "sv", scope: !3198, file: !586, line: 871, type: !673)
!3208 = !DILocalVariable(name: "nslots_max", scope: !3198, file: !586, line: 873, type: !83)
!3209 = !DILocalVariable(name: "preallocated", scope: !3210, file: !586, line: 879, type: !168)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !586, line: 878, column: 5)
!3211 = distinct !DILexicalBlock(scope: !3198, file: !586, line: 877, column: 7)
!3212 = !DILocalVariable(name: "new_nslots", scope: !3210, file: !586, line: 880, type: !412)
!3213 = !DILocalVariable(name: "size", scope: !3214, file: !586, line: 891, type: !139)
!3214 = distinct !DILexicalBlock(scope: !3198, file: !586, line: 890, column: 3)
!3215 = !DILocalVariable(name: "val", scope: !3214, file: !586, line: 892, type: !136)
!3216 = !DILocalVariable(name: "flags", scope: !3214, file: !586, line: 894, type: !83)
!3217 = !DILocalVariable(name: "qsize", scope: !3214, file: !586, line: 895, type: !139)
!3218 = !DILocation(line: 0, scope: !3198)
!3219 = !DILocation(line: 869, column: 21, scope: !3198)
!3220 = !DILocation(line: 871, column: 24, scope: !3198)
!3221 = !DILocation(line: 874, column: 17, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3198, file: !586, line: 874, column: 7)
!3223 = !DILocation(line: 875, column: 5, scope: !3222)
!3224 = !DILocation(line: 877, column: 7, scope: !3211)
!3225 = !DILocation(line: 877, column: 14, scope: !3211)
!3226 = !DILocation(line: 877, column: 7, scope: !3198)
!3227 = !DILocation(line: 879, column: 31, scope: !3210)
!3228 = !DILocation(line: 0, scope: !3210)
!3229 = !DILocation(line: 880, column: 7, scope: !3210)
!3230 = !DILocation(line: 880, column: 26, scope: !3210)
!3231 = !DILocation(line: 880, column: 13, scope: !3210)
!3232 = !DILocation(line: 882, column: 31, scope: !3210)
!3233 = !DILocation(line: 883, column: 33, scope: !3210)
!3234 = !DILocation(line: 883, column: 42, scope: !3210)
!3235 = !DILocation(line: 883, column: 31, scope: !3210)
!3236 = !DILocation(line: 882, column: 22, scope: !3210)
!3237 = !DILocation(line: 882, column: 15, scope: !3210)
!3238 = !DILocation(line: 884, column: 11, scope: !3210)
!3239 = !DILocation(line: 885, column: 15, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3210, file: !586, line: 884, column: 11)
!3241 = !{i64 0, i64 8, !3148, i64 8, i64 8, !911}
!3242 = !DILocation(line: 885, column: 9, scope: !3240)
!3243 = !DILocation(line: 886, column: 20, scope: !3210)
!3244 = !DILocation(line: 886, column: 18, scope: !3210)
!3245 = !DILocation(line: 886, column: 32, scope: !3210)
!3246 = !DILocation(line: 886, column: 43, scope: !3210)
!3247 = !DILocation(line: 886, column: 53, scope: !3210)
!3248 = !DILocation(line: 0, scope: !2622, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 886, column: 7, scope: !3210)
!3250 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !3249)
!3251 = !DILocation(line: 887, column: 16, scope: !3210)
!3252 = !DILocation(line: 887, column: 14, scope: !3210)
!3253 = !DILocation(line: 888, column: 5, scope: !3211)
!3254 = !DILocation(line: 888, column: 5, scope: !3210)
!3255 = !DILocation(line: 891, column: 19, scope: !3214)
!3256 = !DILocation(line: 891, column: 25, scope: !3214)
!3257 = !DILocation(line: 0, scope: !3214)
!3258 = !DILocation(line: 892, column: 23, scope: !3214)
!3259 = !DILocation(line: 894, column: 26, scope: !3214)
!3260 = !DILocation(line: 894, column: 32, scope: !3214)
!3261 = !DILocation(line: 896, column: 55, scope: !3214)
!3262 = !DILocation(line: 897, column: 55, scope: !3214)
!3263 = !DILocation(line: 898, column: 55, scope: !3214)
!3264 = !DILocation(line: 899, column: 55, scope: !3214)
!3265 = !DILocation(line: 895, column: 20, scope: !3214)
!3266 = !DILocation(line: 901, column: 14, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3214, file: !586, line: 901, column: 9)
!3268 = !DILocation(line: 901, column: 9, scope: !3214)
!3269 = !DILocation(line: 903, column: 35, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3267, file: !586, line: 902, column: 7)
!3271 = !DILocation(line: 903, column: 20, scope: !3270)
!3272 = !DILocation(line: 904, column: 17, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3270, file: !586, line: 904, column: 13)
!3274 = !DILocation(line: 904, column: 13, scope: !3270)
!3275 = !DILocation(line: 905, column: 11, scope: !3273)
!3276 = !DILocation(line: 906, column: 27, scope: !3270)
!3277 = !DILocation(line: 906, column: 19, scope: !3270)
!3278 = !DILocation(line: 907, column: 69, scope: !3270)
!3279 = !DILocation(line: 909, column: 44, scope: !3270)
!3280 = !DILocation(line: 910, column: 44, scope: !3270)
!3281 = !DILocation(line: 907, column: 9, scope: !3270)
!3282 = !DILocation(line: 911, column: 7, scope: !3270)
!3283 = !DILocation(line: 913, column: 11, scope: !3214)
!3284 = !DILocation(line: 914, column: 5, scope: !3214)
!3285 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !586, file: !586, line: 925, type: !3286, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!136, !83, !142, !139}
!3288 = !{!3289, !3290, !3291}
!3289 = !DILocalVariable(name: "n", arg: 1, scope: !3285, file: !586, line: 925, type: !83)
!3290 = !DILocalVariable(name: "arg", arg: 2, scope: !3285, file: !586, line: 925, type: !142)
!3291 = !DILocalVariable(name: "argsize", arg: 3, scope: !3285, file: !586, line: 925, type: !139)
!3292 = !DILocation(line: 0, scope: !3285)
!3293 = !DILocation(line: 927, column: 10, scope: !3285)
!3294 = !DILocation(line: 927, column: 3, scope: !3285)
!3295 = distinct !DISubprogram(name: "quotearg", scope: !586, file: !586, line: 931, type: !1109, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3296)
!3296 = !{!3297}
!3297 = !DILocalVariable(name: "arg", arg: 1, scope: !3295, file: !586, line: 931, type: !142)
!3298 = !DILocation(line: 0, scope: !3295)
!3299 = !DILocation(line: 0, scope: !3191, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 933, column: 10, scope: !3295)
!3301 = !DILocation(line: 921, column: 10, scope: !3191, inlinedAt: !3300)
!3302 = !DILocation(line: 933, column: 3, scope: !3295)
!3303 = distinct !DISubprogram(name: "quotearg_mem", scope: !586, file: !586, line: 937, type: !3304, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!136, !142, !139}
!3306 = !{!3307, !3308}
!3307 = !DILocalVariable(name: "arg", arg: 1, scope: !3303, file: !586, line: 937, type: !142)
!3308 = !DILocalVariable(name: "argsize", arg: 2, scope: !3303, file: !586, line: 937, type: !139)
!3309 = !DILocation(line: 0, scope: !3303)
!3310 = !DILocation(line: 0, scope: !3285, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 939, column: 10, scope: !3303)
!3312 = !DILocation(line: 927, column: 10, scope: !3285, inlinedAt: !3311)
!3313 = !DILocation(line: 939, column: 3, scope: !3303)
!3314 = distinct !DISubprogram(name: "quotearg_n_style", scope: !586, file: !586, line: 943, type: !3315, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!136, !83, !102, !142}
!3317 = !{!3318, !3319, !3320, !3321}
!3318 = !DILocalVariable(name: "n", arg: 1, scope: !3314, file: !586, line: 943, type: !83)
!3319 = !DILocalVariable(name: "s", arg: 2, scope: !3314, file: !586, line: 943, type: !102)
!3320 = !DILocalVariable(name: "arg", arg: 3, scope: !3314, file: !586, line: 943, type: !142)
!3321 = !DILocalVariable(name: "o", scope: !3314, file: !586, line: 945, type: !2408)
!3322 = !DILocation(line: 0, scope: !3314)
!3323 = !DILocation(line: 945, column: 3, scope: !3314)
!3324 = !DILocation(line: 945, column: 32, scope: !3314)
!3325 = !{!3326}
!3326 = distinct !{!3326, !3327, !"quoting_options_from_style: argument 0"}
!3327 = distinct !{!3327, !"quoting_options_from_style"}
!3328 = !DILocation(line: 945, column: 36, scope: !3314)
!3329 = !DILocalVariable(name: "style", arg: 1, scope: !3330, file: !586, line: 183, type: !102)
!3330 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !586, file: !586, line: 183, type: !3331, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!625, !102}
!3333 = !{!3329, !3334}
!3334 = !DILocalVariable(name: "o", scope: !3330, file: !586, line: 185, type: !625)
!3335 = !DILocation(line: 0, scope: !3330, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 945, column: 36, scope: !3314)
!3337 = !DILocation(line: 185, column: 26, scope: !3330, inlinedAt: !3336)
!3338 = !DILocation(line: 186, column: 13, scope: !3339, inlinedAt: !3336)
!3339 = distinct !DILexicalBlock(scope: !3330, file: !586, line: 186, column: 7)
!3340 = !DILocation(line: 186, column: 7, scope: !3330, inlinedAt: !3336)
!3341 = !DILocation(line: 187, column: 5, scope: !3339, inlinedAt: !3336)
!3342 = !DILocation(line: 188, column: 11, scope: !3330, inlinedAt: !3336)
!3343 = !DILocation(line: 946, column: 10, scope: !3314)
!3344 = !DILocation(line: 947, column: 1, scope: !3314)
!3345 = !DILocation(line: 946, column: 3, scope: !3314)
!3346 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !586, file: !586, line: 950, type: !3347, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!136, !83, !102, !142, !139}
!3349 = !{!3350, !3351, !3352, !3353, !3354}
!3350 = !DILocalVariable(name: "n", arg: 1, scope: !3346, file: !586, line: 950, type: !83)
!3351 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !586, line: 950, type: !102)
!3352 = !DILocalVariable(name: "arg", arg: 3, scope: !3346, file: !586, line: 951, type: !142)
!3353 = !DILocalVariable(name: "argsize", arg: 4, scope: !3346, file: !586, line: 951, type: !139)
!3354 = !DILocalVariable(name: "o", scope: !3346, file: !586, line: 953, type: !2408)
!3355 = !DILocation(line: 0, scope: !3346)
!3356 = !DILocation(line: 953, column: 3, scope: !3346)
!3357 = !DILocation(line: 953, column: 32, scope: !3346)
!3358 = !{!3359}
!3359 = distinct !{!3359, !3360, !"quoting_options_from_style: argument 0"}
!3360 = distinct !{!3360, !"quoting_options_from_style"}
!3361 = !DILocation(line: 953, column: 36, scope: !3346)
!3362 = !DILocation(line: 0, scope: !3330, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 953, column: 36, scope: !3346)
!3364 = !DILocation(line: 185, column: 26, scope: !3330, inlinedAt: !3363)
!3365 = !DILocation(line: 186, column: 13, scope: !3339, inlinedAt: !3363)
!3366 = !DILocation(line: 186, column: 7, scope: !3330, inlinedAt: !3363)
!3367 = !DILocation(line: 187, column: 5, scope: !3339, inlinedAt: !3363)
!3368 = !DILocation(line: 188, column: 11, scope: !3330, inlinedAt: !3363)
!3369 = !DILocation(line: 954, column: 10, scope: !3346)
!3370 = !DILocation(line: 955, column: 1, scope: !3346)
!3371 = !DILocation(line: 954, column: 3, scope: !3346)
!3372 = distinct !DISubprogram(name: "quotearg_style", scope: !586, file: !586, line: 958, type: !3373, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!136, !102, !142}
!3375 = !{!3376, !3377}
!3376 = !DILocalVariable(name: "s", arg: 1, scope: !3372, file: !586, line: 958, type: !102)
!3377 = !DILocalVariable(name: "arg", arg: 2, scope: !3372, file: !586, line: 958, type: !142)
!3378 = !DILocation(line: 0, scope: !3372)
!3379 = !DILocation(line: 0, scope: !3314, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 960, column: 10, scope: !3372)
!3381 = !DILocation(line: 945, column: 3, scope: !3314, inlinedAt: !3380)
!3382 = !DILocation(line: 945, column: 32, scope: !3314, inlinedAt: !3380)
!3383 = !{!3384}
!3384 = distinct !{!3384, !3385, !"quoting_options_from_style: argument 0"}
!3385 = distinct !{!3385, !"quoting_options_from_style"}
!3386 = !DILocation(line: 945, column: 36, scope: !3314, inlinedAt: !3380)
!3387 = !DILocation(line: 0, scope: !3330, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 945, column: 36, scope: !3314, inlinedAt: !3380)
!3389 = !DILocation(line: 185, column: 26, scope: !3330, inlinedAt: !3388)
!3390 = !DILocation(line: 186, column: 13, scope: !3339, inlinedAt: !3388)
!3391 = !DILocation(line: 186, column: 7, scope: !3330, inlinedAt: !3388)
!3392 = !DILocation(line: 187, column: 5, scope: !3339, inlinedAt: !3388)
!3393 = !DILocation(line: 188, column: 11, scope: !3330, inlinedAt: !3388)
!3394 = !DILocation(line: 946, column: 10, scope: !3314, inlinedAt: !3380)
!3395 = !DILocation(line: 947, column: 1, scope: !3314, inlinedAt: !3380)
!3396 = !DILocation(line: 960, column: 3, scope: !3372)
!3397 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !586, file: !586, line: 964, type: !3398, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!136, !102, !142, !139}
!3400 = !{!3401, !3402, !3403}
!3401 = !DILocalVariable(name: "s", arg: 1, scope: !3397, file: !586, line: 964, type: !102)
!3402 = !DILocalVariable(name: "arg", arg: 2, scope: !3397, file: !586, line: 964, type: !142)
!3403 = !DILocalVariable(name: "argsize", arg: 3, scope: !3397, file: !586, line: 964, type: !139)
!3404 = !DILocation(line: 0, scope: !3397)
!3405 = !DILocation(line: 0, scope: !3346, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 966, column: 10, scope: !3397)
!3407 = !DILocation(line: 953, column: 3, scope: !3346, inlinedAt: !3406)
!3408 = !DILocation(line: 953, column: 32, scope: !3346, inlinedAt: !3406)
!3409 = !{!3410}
!3410 = distinct !{!3410, !3411, !"quoting_options_from_style: argument 0"}
!3411 = distinct !{!3411, !"quoting_options_from_style"}
!3412 = !DILocation(line: 953, column: 36, scope: !3346, inlinedAt: !3406)
!3413 = !DILocation(line: 0, scope: !3330, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 953, column: 36, scope: !3346, inlinedAt: !3406)
!3415 = !DILocation(line: 185, column: 26, scope: !3330, inlinedAt: !3414)
!3416 = !DILocation(line: 186, column: 13, scope: !3339, inlinedAt: !3414)
!3417 = !DILocation(line: 186, column: 7, scope: !3330, inlinedAt: !3414)
!3418 = !DILocation(line: 187, column: 5, scope: !3339, inlinedAt: !3414)
!3419 = !DILocation(line: 188, column: 11, scope: !3330, inlinedAt: !3414)
!3420 = !DILocation(line: 954, column: 10, scope: !3346, inlinedAt: !3406)
!3421 = !DILocation(line: 955, column: 1, scope: !3346, inlinedAt: !3406)
!3422 = !DILocation(line: 966, column: 3, scope: !3397)
!3423 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !586, file: !586, line: 970, type: !3424, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!136, !142, !139, !4}
!3426 = !{!3427, !3428, !3429, !3430}
!3427 = !DILocalVariable(name: "arg", arg: 1, scope: !3423, file: !586, line: 970, type: !142)
!3428 = !DILocalVariable(name: "argsize", arg: 2, scope: !3423, file: !586, line: 970, type: !139)
!3429 = !DILocalVariable(name: "ch", arg: 3, scope: !3423, file: !586, line: 970, type: !4)
!3430 = !DILocalVariable(name: "options", scope: !3423, file: !586, line: 972, type: !625)
!3431 = !DILocation(line: 0, scope: !3423)
!3432 = !DILocation(line: 972, column: 3, scope: !3423)
!3433 = !DILocation(line: 972, column: 26, scope: !3423)
!3434 = !DILocation(line: 973, column: 13, scope: !3423)
!3435 = !{i64 0, i64 4, !991, i64 4, i64 4, !982, i64 8, i64 32, !991, i64 40, i64 8, !911, i64 48, i64 8, !911}
!3436 = !DILocation(line: 0, scope: !2427, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 974, column: 3, scope: !3423)
!3438 = !DILocation(line: 147, column: 41, scope: !2427, inlinedAt: !3437)
!3439 = !DILocation(line: 147, column: 62, scope: !2427, inlinedAt: !3437)
!3440 = !DILocation(line: 147, column: 57, scope: !2427, inlinedAt: !3437)
!3441 = !DILocation(line: 148, column: 15, scope: !2427, inlinedAt: !3437)
!3442 = !DILocation(line: 149, column: 21, scope: !2427, inlinedAt: !3437)
!3443 = !DILocation(line: 149, column: 24, scope: !2427, inlinedAt: !3437)
!3444 = !DILocation(line: 150, column: 19, scope: !2427, inlinedAt: !3437)
!3445 = !DILocation(line: 150, column: 24, scope: !2427, inlinedAt: !3437)
!3446 = !DILocation(line: 150, column: 6, scope: !2427, inlinedAt: !3437)
!3447 = !DILocation(line: 975, column: 10, scope: !3423)
!3448 = !DILocation(line: 976, column: 1, scope: !3423)
!3449 = !DILocation(line: 975, column: 3, scope: !3423)
!3450 = distinct !DISubprogram(name: "quotearg_char", scope: !586, file: !586, line: 979, type: !3451, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!136, !142, !4}
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "arg", arg: 1, scope: !3450, file: !586, line: 979, type: !142)
!3455 = !DILocalVariable(name: "ch", arg: 2, scope: !3450, file: !586, line: 979, type: !4)
!3456 = !DILocation(line: 0, scope: !3450)
!3457 = !DILocation(line: 0, scope: !3423, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 981, column: 10, scope: !3450)
!3459 = !DILocation(line: 972, column: 3, scope: !3423, inlinedAt: !3458)
!3460 = !DILocation(line: 972, column: 26, scope: !3423, inlinedAt: !3458)
!3461 = !DILocation(line: 973, column: 13, scope: !3423, inlinedAt: !3458)
!3462 = !DILocation(line: 0, scope: !2427, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 974, column: 3, scope: !3423, inlinedAt: !3458)
!3464 = !DILocation(line: 147, column: 41, scope: !2427, inlinedAt: !3463)
!3465 = !DILocation(line: 147, column: 62, scope: !2427, inlinedAt: !3463)
!3466 = !DILocation(line: 147, column: 57, scope: !2427, inlinedAt: !3463)
!3467 = !DILocation(line: 148, column: 15, scope: !2427, inlinedAt: !3463)
!3468 = !DILocation(line: 149, column: 21, scope: !2427, inlinedAt: !3463)
!3469 = !DILocation(line: 149, column: 24, scope: !2427, inlinedAt: !3463)
!3470 = !DILocation(line: 150, column: 19, scope: !2427, inlinedAt: !3463)
!3471 = !DILocation(line: 150, column: 24, scope: !2427, inlinedAt: !3463)
!3472 = !DILocation(line: 150, column: 6, scope: !2427, inlinedAt: !3463)
!3473 = !DILocation(line: 975, column: 10, scope: !3423, inlinedAt: !3458)
!3474 = !DILocation(line: 976, column: 1, scope: !3423, inlinedAt: !3458)
!3475 = !DILocation(line: 981, column: 3, scope: !3450)
!3476 = distinct !DISubprogram(name: "quotearg_colon", scope: !586, file: !586, line: 985, type: !1109, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3477)
!3477 = !{!3478}
!3478 = !DILocalVariable(name: "arg", arg: 1, scope: !3476, file: !586, line: 985, type: !142)
!3479 = !DILocation(line: 0, scope: !3476)
!3480 = !DILocation(line: 0, scope: !3450, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 987, column: 10, scope: !3476)
!3482 = !DILocation(line: 0, scope: !3423, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 981, column: 10, scope: !3450, inlinedAt: !3481)
!3484 = !DILocation(line: 972, column: 3, scope: !3423, inlinedAt: !3483)
!3485 = !DILocation(line: 972, column: 26, scope: !3423, inlinedAt: !3483)
!3486 = !DILocation(line: 973, column: 13, scope: !3423, inlinedAt: !3483)
!3487 = !DILocation(line: 0, scope: !2427, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 974, column: 3, scope: !3423, inlinedAt: !3483)
!3489 = !DILocation(line: 147, column: 57, scope: !2427, inlinedAt: !3488)
!3490 = !DILocation(line: 149, column: 21, scope: !2427, inlinedAt: !3488)
!3491 = !DILocation(line: 150, column: 6, scope: !2427, inlinedAt: !3488)
!3492 = !DILocation(line: 975, column: 10, scope: !3423, inlinedAt: !3483)
!3493 = !DILocation(line: 976, column: 1, scope: !3423, inlinedAt: !3483)
!3494 = !DILocation(line: 987, column: 3, scope: !3476)
!3495 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !586, file: !586, line: 991, type: !3304, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3496)
!3496 = !{!3497, !3498}
!3497 = !DILocalVariable(name: "arg", arg: 1, scope: !3495, file: !586, line: 991, type: !142)
!3498 = !DILocalVariable(name: "argsize", arg: 2, scope: !3495, file: !586, line: 991, type: !139)
!3499 = !DILocation(line: 0, scope: !3495)
!3500 = !DILocation(line: 0, scope: !3423, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 993, column: 10, scope: !3495)
!3502 = !DILocation(line: 972, column: 3, scope: !3423, inlinedAt: !3501)
!3503 = !DILocation(line: 972, column: 26, scope: !3423, inlinedAt: !3501)
!3504 = !DILocation(line: 973, column: 13, scope: !3423, inlinedAt: !3501)
!3505 = !DILocation(line: 0, scope: !2427, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 974, column: 3, scope: !3423, inlinedAt: !3501)
!3507 = !DILocation(line: 147, column: 57, scope: !2427, inlinedAt: !3506)
!3508 = !DILocation(line: 149, column: 21, scope: !2427, inlinedAt: !3506)
!3509 = !DILocation(line: 150, column: 6, scope: !2427, inlinedAt: !3506)
!3510 = !DILocation(line: 975, column: 10, scope: !3423, inlinedAt: !3501)
!3511 = !DILocation(line: 976, column: 1, scope: !3423, inlinedAt: !3501)
!3512 = !DILocation(line: 993, column: 3, scope: !3495)
!3513 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !586, file: !586, line: 997, type: !3315, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3514)
!3514 = !{!3515, !3516, !3517, !3518}
!3515 = !DILocalVariable(name: "n", arg: 1, scope: !3513, file: !586, line: 997, type: !83)
!3516 = !DILocalVariable(name: "s", arg: 2, scope: !3513, file: !586, line: 997, type: !102)
!3517 = !DILocalVariable(name: "arg", arg: 3, scope: !3513, file: !586, line: 997, type: !142)
!3518 = !DILocalVariable(name: "options", scope: !3513, file: !586, line: 999, type: !625)
!3519 = !DILocation(line: 185, column: 26, scope: !3330, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 1000, column: 13, scope: !3513)
!3521 = !DILocation(line: 0, scope: !3513)
!3522 = !DILocation(line: 999, column: 3, scope: !3513)
!3523 = !DILocation(line: 999, column: 26, scope: !3513)
!3524 = !DILocation(line: 0, scope: !3330, inlinedAt: !3520)
!3525 = !DILocation(line: 186, column: 13, scope: !3339, inlinedAt: !3520)
!3526 = !DILocation(line: 186, column: 7, scope: !3330, inlinedAt: !3520)
!3527 = !DILocation(line: 187, column: 5, scope: !3339, inlinedAt: !3520)
!3528 = !{!3529}
!3529 = distinct !{!3529, !3530, !"quoting_options_from_style: argument 0"}
!3530 = distinct !{!3530, !"quoting_options_from_style"}
!3531 = !DILocation(line: 1000, column: 13, scope: !3513)
!3532 = !DILocation(line: 0, scope: !2427, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 1001, column: 3, scope: !3513)
!3534 = !DILocation(line: 147, column: 57, scope: !2427, inlinedAt: !3533)
!3535 = !DILocation(line: 149, column: 21, scope: !2427, inlinedAt: !3533)
!3536 = !DILocation(line: 150, column: 6, scope: !2427, inlinedAt: !3533)
!3537 = !DILocation(line: 1002, column: 10, scope: !3513)
!3538 = !DILocation(line: 1003, column: 1, scope: !3513)
!3539 = !DILocation(line: 1002, column: 3, scope: !3513)
!3540 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !586, file: !586, line: 1006, type: !3541, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!136, !83, !142, !142, !142}
!3543 = !{!3544, !3545, !3546, !3547}
!3544 = !DILocalVariable(name: "n", arg: 1, scope: !3540, file: !586, line: 1006, type: !83)
!3545 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3540, file: !586, line: 1006, type: !142)
!3546 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3540, file: !586, line: 1007, type: !142)
!3547 = !DILocalVariable(name: "arg", arg: 4, scope: !3540, file: !586, line: 1007, type: !142)
!3548 = !DILocation(line: 0, scope: !3540)
!3549 = !DILocalVariable(name: "n", arg: 1, scope: !3550, file: !586, line: 1014, type: !83)
!3550 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !586, file: !586, line: 1014, type: !3551, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!136, !83, !142, !142, !142, !139}
!3553 = !{!3549, !3554, !3555, !3556, !3557, !3558}
!3554 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3550, file: !586, line: 1014, type: !142)
!3555 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3550, file: !586, line: 1015, type: !142)
!3556 = !DILocalVariable(name: "arg", arg: 4, scope: !3550, file: !586, line: 1016, type: !142)
!3557 = !DILocalVariable(name: "argsize", arg: 5, scope: !3550, file: !586, line: 1016, type: !139)
!3558 = !DILocalVariable(name: "o", scope: !3550, file: !586, line: 1018, type: !625)
!3559 = !DILocation(line: 0, scope: !3550, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 1009, column: 10, scope: !3540)
!3561 = !DILocation(line: 1018, column: 3, scope: !3550, inlinedAt: !3560)
!3562 = !DILocation(line: 1018, column: 26, scope: !3550, inlinedAt: !3560)
!3563 = !DILocation(line: 1018, column: 30, scope: !3550, inlinedAt: !3560)
!3564 = !DILocation(line: 0, scope: !2467, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 1019, column: 3, scope: !3550, inlinedAt: !3560)
!3566 = !DILocation(line: 174, column: 12, scope: !2467, inlinedAt: !3565)
!3567 = !DILocation(line: 175, column: 8, scope: !2480, inlinedAt: !3565)
!3568 = !DILocation(line: 175, column: 19, scope: !2480, inlinedAt: !3565)
!3569 = !DILocation(line: 176, column: 5, scope: !2480, inlinedAt: !3565)
!3570 = !DILocation(line: 177, column: 6, scope: !2467, inlinedAt: !3565)
!3571 = !DILocation(line: 177, column: 17, scope: !2467, inlinedAt: !3565)
!3572 = !DILocation(line: 178, column: 6, scope: !2467, inlinedAt: !3565)
!3573 = !DILocation(line: 178, column: 18, scope: !2467, inlinedAt: !3565)
!3574 = !DILocation(line: 1020, column: 10, scope: !3550, inlinedAt: !3560)
!3575 = !DILocation(line: 1021, column: 1, scope: !3550, inlinedAt: !3560)
!3576 = !DILocation(line: 1009, column: 3, scope: !3540)
!3577 = !DILocation(line: 0, scope: !3550)
!3578 = !DILocation(line: 1018, column: 3, scope: !3550)
!3579 = !DILocation(line: 1018, column: 26, scope: !3550)
!3580 = !DILocation(line: 1018, column: 30, scope: !3550)
!3581 = !DILocation(line: 0, scope: !2467, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1019, column: 3, scope: !3550)
!3583 = !DILocation(line: 174, column: 12, scope: !2467, inlinedAt: !3582)
!3584 = !DILocation(line: 175, column: 8, scope: !2480, inlinedAt: !3582)
!3585 = !DILocation(line: 175, column: 19, scope: !2480, inlinedAt: !3582)
!3586 = !DILocation(line: 176, column: 5, scope: !2480, inlinedAt: !3582)
!3587 = !DILocation(line: 177, column: 6, scope: !2467, inlinedAt: !3582)
!3588 = !DILocation(line: 177, column: 17, scope: !2467, inlinedAt: !3582)
!3589 = !DILocation(line: 178, column: 6, scope: !2467, inlinedAt: !3582)
!3590 = !DILocation(line: 178, column: 18, scope: !2467, inlinedAt: !3582)
!3591 = !DILocation(line: 1020, column: 10, scope: !3550)
!3592 = !DILocation(line: 1021, column: 1, scope: !3550)
!3593 = !DILocation(line: 1020, column: 3, scope: !3550)
!3594 = distinct !DISubprogram(name: "quotearg_custom", scope: !586, file: !586, line: 1024, type: !3595, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!136, !142, !142, !142}
!3597 = !{!3598, !3599, !3600}
!3598 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3594, file: !586, line: 1024, type: !142)
!3599 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3594, file: !586, line: 1024, type: !142)
!3600 = !DILocalVariable(name: "arg", arg: 3, scope: !3594, file: !586, line: 1025, type: !142)
!3601 = !DILocation(line: 0, scope: !3594)
!3602 = !DILocation(line: 0, scope: !3540, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 1027, column: 10, scope: !3594)
!3604 = !DILocation(line: 0, scope: !3550, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 1009, column: 10, scope: !3540, inlinedAt: !3603)
!3606 = !DILocation(line: 1018, column: 3, scope: !3550, inlinedAt: !3605)
!3607 = !DILocation(line: 1018, column: 26, scope: !3550, inlinedAt: !3605)
!3608 = !DILocation(line: 1018, column: 30, scope: !3550, inlinedAt: !3605)
!3609 = !DILocation(line: 0, scope: !2467, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 1019, column: 3, scope: !3550, inlinedAt: !3605)
!3611 = !DILocation(line: 174, column: 12, scope: !2467, inlinedAt: !3610)
!3612 = !DILocation(line: 175, column: 8, scope: !2480, inlinedAt: !3610)
!3613 = !DILocation(line: 175, column: 19, scope: !2480, inlinedAt: !3610)
!3614 = !DILocation(line: 176, column: 5, scope: !2480, inlinedAt: !3610)
!3615 = !DILocation(line: 177, column: 6, scope: !2467, inlinedAt: !3610)
!3616 = !DILocation(line: 177, column: 17, scope: !2467, inlinedAt: !3610)
!3617 = !DILocation(line: 178, column: 6, scope: !2467, inlinedAt: !3610)
!3618 = !DILocation(line: 178, column: 18, scope: !2467, inlinedAt: !3610)
!3619 = !DILocation(line: 1020, column: 10, scope: !3550, inlinedAt: !3605)
!3620 = !DILocation(line: 1021, column: 1, scope: !3550, inlinedAt: !3605)
!3621 = !DILocation(line: 1027, column: 3, scope: !3594)
!3622 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !586, file: !586, line: 1031, type: !3623, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3625)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!136, !142, !142, !142, !139}
!3625 = !{!3626, !3627, !3628, !3629}
!3626 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3622, file: !586, line: 1031, type: !142)
!3627 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3622, file: !586, line: 1031, type: !142)
!3628 = !DILocalVariable(name: "arg", arg: 3, scope: !3622, file: !586, line: 1032, type: !142)
!3629 = !DILocalVariable(name: "argsize", arg: 4, scope: !3622, file: !586, line: 1032, type: !139)
!3630 = !DILocation(line: 0, scope: !3622)
!3631 = !DILocation(line: 0, scope: !3550, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 1034, column: 10, scope: !3622)
!3633 = !DILocation(line: 1018, column: 3, scope: !3550, inlinedAt: !3632)
!3634 = !DILocation(line: 1018, column: 26, scope: !3550, inlinedAt: !3632)
!3635 = !DILocation(line: 1018, column: 30, scope: !3550, inlinedAt: !3632)
!3636 = !DILocation(line: 0, scope: !2467, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 1019, column: 3, scope: !3550, inlinedAt: !3632)
!3638 = !DILocation(line: 174, column: 12, scope: !2467, inlinedAt: !3637)
!3639 = !DILocation(line: 175, column: 8, scope: !2480, inlinedAt: !3637)
!3640 = !DILocation(line: 175, column: 19, scope: !2480, inlinedAt: !3637)
!3641 = !DILocation(line: 176, column: 5, scope: !2480, inlinedAt: !3637)
!3642 = !DILocation(line: 177, column: 6, scope: !2467, inlinedAt: !3637)
!3643 = !DILocation(line: 177, column: 17, scope: !2467, inlinedAt: !3637)
!3644 = !DILocation(line: 178, column: 6, scope: !2467, inlinedAt: !3637)
!3645 = !DILocation(line: 178, column: 18, scope: !2467, inlinedAt: !3637)
!3646 = !DILocation(line: 1020, column: 10, scope: !3550, inlinedAt: !3632)
!3647 = !DILocation(line: 1021, column: 1, scope: !3550, inlinedAt: !3632)
!3648 = !DILocation(line: 1034, column: 3, scope: !3622)
!3649 = distinct !DISubprogram(name: "quote_n_mem", scope: !586, file: !586, line: 1049, type: !3650, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!142, !83, !142, !139}
!3652 = !{!3653, !3654, !3655}
!3653 = !DILocalVariable(name: "n", arg: 1, scope: !3649, file: !586, line: 1049, type: !83)
!3654 = !DILocalVariable(name: "arg", arg: 2, scope: !3649, file: !586, line: 1049, type: !142)
!3655 = !DILocalVariable(name: "argsize", arg: 3, scope: !3649, file: !586, line: 1049, type: !139)
!3656 = !DILocation(line: 0, scope: !3649)
!3657 = !DILocation(line: 1051, column: 10, scope: !3649)
!3658 = !DILocation(line: 1051, column: 3, scope: !3649)
!3659 = distinct !DISubprogram(name: "quote_mem", scope: !586, file: !586, line: 1055, type: !3660, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!142, !142, !139}
!3662 = !{!3663, !3664}
!3663 = !DILocalVariable(name: "arg", arg: 1, scope: !3659, file: !586, line: 1055, type: !142)
!3664 = !DILocalVariable(name: "argsize", arg: 2, scope: !3659, file: !586, line: 1055, type: !139)
!3665 = !DILocation(line: 0, scope: !3659)
!3666 = !DILocation(line: 0, scope: !3649, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 1057, column: 10, scope: !3659)
!3668 = !DILocation(line: 1051, column: 10, scope: !3649, inlinedAt: !3667)
!3669 = !DILocation(line: 1057, column: 3, scope: !3659)
!3670 = distinct !DISubprogram(name: "quote_n", scope: !586, file: !586, line: 1061, type: !3671, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!142, !83, !142}
!3673 = !{!3674, !3675}
!3674 = !DILocalVariable(name: "n", arg: 1, scope: !3670, file: !586, line: 1061, type: !83)
!3675 = !DILocalVariable(name: "arg", arg: 2, scope: !3670, file: !586, line: 1061, type: !142)
!3676 = !DILocation(line: 0, scope: !3670)
!3677 = !DILocation(line: 0, scope: !3649, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 1063, column: 10, scope: !3670)
!3679 = !DILocation(line: 1051, column: 10, scope: !3649, inlinedAt: !3678)
!3680 = !DILocation(line: 1063, column: 3, scope: !3670)
!3681 = distinct !DISubprogram(name: "quote", scope: !586, file: !586, line: 1067, type: !3682, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!142, !142}
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "arg", arg: 1, scope: !3681, file: !586, line: 1067, type: !142)
!3686 = !DILocation(line: 0, scope: !3681)
!3687 = !DILocation(line: 0, scope: !3670, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 1069, column: 10, scope: !3681)
!3689 = !DILocation(line: 0, scope: !3649, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 1063, column: 10, scope: !3670, inlinedAt: !3688)
!3691 = !DILocation(line: 1051, column: 10, scope: !3649, inlinedAt: !3690)
!3692 = !DILocation(line: 1069, column: 3, scope: !3681)
!3693 = distinct !DISubprogram(name: "version_etc_arn", scope: !686, file: !686, line: 61, type: !3694, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !3731)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{null, !3696, !142, !142, !142, !3730, !139}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !3698)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !3699)
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3698, file: !206, line: 51, baseType: !83, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3698, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3698, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3698, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3698, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3698, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3698, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3698, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3698, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3698, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3698, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3698, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3698, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3698, file: !206, line: 70, baseType: !3714, size: 64, offset: 832)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3698, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3698, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3698, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3698, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3698, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3698, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3698, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3698, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3698, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3698, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3698, file: !206, line: 93, baseType: !3714, size: 64, offset: 1344)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3698, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3698, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3698, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3698, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737}
!3732 = !DILocalVariable(name: "stream", arg: 1, scope: !3693, file: !686, line: 61, type: !3696)
!3733 = !DILocalVariable(name: "command_name", arg: 2, scope: !3693, file: !686, line: 62, type: !142)
!3734 = !DILocalVariable(name: "package", arg: 3, scope: !3693, file: !686, line: 62, type: !142)
!3735 = !DILocalVariable(name: "version", arg: 4, scope: !3693, file: !686, line: 63, type: !142)
!3736 = !DILocalVariable(name: "authors", arg: 5, scope: !3693, file: !686, line: 64, type: !3730)
!3737 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3693, file: !686, line: 64, type: !139)
!3738 = !DILocation(line: 0, scope: !3693)
!3739 = !DILocation(line: 66, column: 7, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3693, file: !686, line: 66, column: 7)
!3741 = !DILocation(line: 66, column: 7, scope: !3693)
!3742 = !DILocation(line: 67, column: 5, scope: !3740)
!3743 = !DILocation(line: 69, column: 5, scope: !3740)
!3744 = !DILocation(line: 83, column: 3, scope: !3693)
!3745 = !DILocation(line: 85, column: 3, scope: !3693)
!3746 = !DILocation(line: 88, column: 3, scope: !3693)
!3747 = !DILocation(line: 95, column: 3, scope: !3693)
!3748 = !DILocation(line: 97, column: 3, scope: !3693)
!3749 = !DILocation(line: 105, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3693, file: !686, line: 98, column: 5)
!3751 = !DILocation(line: 106, column: 7, scope: !3750)
!3752 = !DILocation(line: 109, column: 7, scope: !3750)
!3753 = !DILocation(line: 110, column: 7, scope: !3750)
!3754 = !DILocation(line: 113, column: 7, scope: !3750)
!3755 = !DILocation(line: 115, column: 7, scope: !3750)
!3756 = !DILocation(line: 120, column: 7, scope: !3750)
!3757 = !DILocation(line: 122, column: 7, scope: !3750)
!3758 = !DILocation(line: 127, column: 7, scope: !3750)
!3759 = !DILocation(line: 129, column: 7, scope: !3750)
!3760 = !DILocation(line: 134, column: 7, scope: !3750)
!3761 = !DILocation(line: 137, column: 7, scope: !3750)
!3762 = !DILocation(line: 142, column: 7, scope: !3750)
!3763 = !DILocation(line: 145, column: 7, scope: !3750)
!3764 = !DILocation(line: 150, column: 7, scope: !3750)
!3765 = !DILocation(line: 154, column: 7, scope: !3750)
!3766 = !DILocation(line: 159, column: 7, scope: !3750)
!3767 = !DILocation(line: 163, column: 7, scope: !3750)
!3768 = !DILocation(line: 170, column: 7, scope: !3750)
!3769 = !DILocation(line: 174, column: 7, scope: !3750)
!3770 = !DILocation(line: 176, column: 1, scope: !3693)
!3771 = distinct !DISubprogram(name: "version_etc_ar", scope: !686, file: !686, line: 183, type: !3772, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !3696, !142, !142, !142, !3730}
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780}
!3775 = !DILocalVariable(name: "stream", arg: 1, scope: !3771, file: !686, line: 183, type: !3696)
!3776 = !DILocalVariable(name: "command_name", arg: 2, scope: !3771, file: !686, line: 184, type: !142)
!3777 = !DILocalVariable(name: "package", arg: 3, scope: !3771, file: !686, line: 184, type: !142)
!3778 = !DILocalVariable(name: "version", arg: 4, scope: !3771, file: !686, line: 185, type: !142)
!3779 = !DILocalVariable(name: "authors", arg: 5, scope: !3771, file: !686, line: 185, type: !3730)
!3780 = !DILocalVariable(name: "n_authors", scope: !3771, file: !686, line: 187, type: !139)
!3781 = !DILocation(line: 0, scope: !3771)
!3782 = !DILocation(line: 189, column: 8, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3771, file: !686, line: 189, column: 3)
!3784 = !DILocation(line: 189, scope: !3783)
!3785 = !DILocation(line: 189, column: 23, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3783, file: !686, line: 189, column: 3)
!3787 = !DILocation(line: 189, column: 3, scope: !3783)
!3788 = !DILocation(line: 189, column: 52, scope: !3786)
!3789 = distinct !{!3789, !3787, !3790, !1029}
!3790 = !DILocation(line: 190, column: 5, scope: !3783)
!3791 = !DILocation(line: 191, column: 3, scope: !3771)
!3792 = !DILocation(line: 192, column: 1, scope: !3771)
!3793 = distinct !DISubprogram(name: "version_etc_va", scope: !686, file: !686, line: 199, type: !3794, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !3804)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3696, !142, !142, !142, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3798)
!3798 = !{!3799, !3801, !3802, !3803}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3797, file: !3800, line: 192, baseType: !69, size: 32)
!3800 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3797, file: !3800, line: 192, baseType: !69, size: 32, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3797, file: !3800, line: 192, baseType: !137, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3797, file: !3800, line: 192, baseType: !137, size: 64, offset: 128)
!3804 = !{!3805, !3806, !3807, !3808, !3809, !3810, !3811}
!3805 = !DILocalVariable(name: "stream", arg: 1, scope: !3793, file: !686, line: 199, type: !3696)
!3806 = !DILocalVariable(name: "command_name", arg: 2, scope: !3793, file: !686, line: 200, type: !142)
!3807 = !DILocalVariable(name: "package", arg: 3, scope: !3793, file: !686, line: 200, type: !142)
!3808 = !DILocalVariable(name: "version", arg: 4, scope: !3793, file: !686, line: 201, type: !142)
!3809 = !DILocalVariable(name: "authors", arg: 5, scope: !3793, file: !686, line: 201, type: !3796)
!3810 = !DILocalVariable(name: "n_authors", scope: !3793, file: !686, line: 203, type: !139)
!3811 = !DILocalVariable(name: "authtab", scope: !3793, file: !686, line: 204, type: !3812)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 640, elements: !57)
!3813 = !DILocation(line: 0, scope: !3793)
!3814 = !DILocation(line: 204, column: 3, scope: !3793)
!3815 = !DILocation(line: 204, column: 15, scope: !3793)
!3816 = !DILocation(line: 208, column: 35, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !686, line: 206, column: 3)
!3818 = distinct !DILexicalBlock(scope: !3793, file: !686, line: 206, column: 3)
!3819 = !DILocation(line: 208, column: 33, scope: !3817)
!3820 = !DILocation(line: 208, column: 67, scope: !3817)
!3821 = !DILocation(line: 206, column: 3, scope: !3818)
!3822 = !DILocation(line: 208, column: 14, scope: !3817)
!3823 = !DILocation(line: 0, scope: !3818)
!3824 = !DILocation(line: 211, column: 3, scope: !3793)
!3825 = !DILocation(line: 213, column: 1, scope: !3793)
!3826 = distinct !DISubprogram(name: "version_etc", scope: !686, file: !686, line: 230, type: !3827, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !3696, !142, !142, !142, null}
!3829 = !{!3830, !3831, !3832, !3833, !3834}
!3830 = !DILocalVariable(name: "stream", arg: 1, scope: !3826, file: !686, line: 230, type: !3696)
!3831 = !DILocalVariable(name: "command_name", arg: 2, scope: !3826, file: !686, line: 231, type: !142)
!3832 = !DILocalVariable(name: "package", arg: 3, scope: !3826, file: !686, line: 231, type: !142)
!3833 = !DILocalVariable(name: "version", arg: 4, scope: !3826, file: !686, line: 232, type: !142)
!3834 = !DILocalVariable(name: "authors", scope: !3826, file: !686, line: 234, type: !3835)
!3835 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !977, line: 52, baseType: !3836)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1934, line: 14, baseType: !3837)
!3837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3800, baseType: !3838)
!3838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3797, size: 192, elements: !52)
!3839 = !DILocation(line: 0, scope: !3826)
!3840 = !DILocation(line: 234, column: 3, scope: !3826)
!3841 = !DILocation(line: 234, column: 11, scope: !3826)
!3842 = !DILocation(line: 235, column: 3, scope: !3826)
!3843 = !DILocation(line: 236, column: 3, scope: !3826)
!3844 = !DILocation(line: 237, column: 3, scope: !3826)
!3845 = !DILocation(line: 238, column: 1, scope: !3826)
!3846 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !686, file: !686, line: 241, type: !545, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !920)
!3847 = !DILocation(line: 243, column: 3, scope: !3846)
!3848 = !DILocation(line: 248, column: 3, scope: !3846)
!3849 = !DILocation(line: 254, column: 3, scope: !3846)
!3850 = !DILocation(line: 259, column: 3, scope: !3846)
!3851 = !DILocation(line: 261, column: 1, scope: !3846)
!3852 = distinct !DISubprogram(name: "xnrealloc", scope: !3853, file: !3853, line: 147, type: !3854, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3856)
!3853 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!137, !137, !139, !139}
!3856 = !{!3857, !3858, !3859}
!3857 = !DILocalVariable(name: "p", arg: 1, scope: !3852, file: !3853, line: 147, type: !137)
!3858 = !DILocalVariable(name: "n", arg: 2, scope: !3852, file: !3853, line: 147, type: !139)
!3859 = !DILocalVariable(name: "s", arg: 3, scope: !3852, file: !3853, line: 147, type: !139)
!3860 = !DILocation(line: 0, scope: !3852)
!3861 = !DILocalVariable(name: "p", arg: 1, scope: !3862, file: !827, line: 83, type: !137)
!3862 = distinct !DISubprogram(name: "xreallocarray", scope: !827, file: !827, line: 83, type: !3854, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3863)
!3863 = !{!3861, !3864, !3865}
!3864 = !DILocalVariable(name: "n", arg: 2, scope: !3862, file: !827, line: 83, type: !139)
!3865 = !DILocalVariable(name: "s", arg: 3, scope: !3862, file: !827, line: 83, type: !139)
!3866 = !DILocation(line: 0, scope: !3862, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 149, column: 10, scope: !3852)
!3868 = !DILocation(line: 85, column: 25, scope: !3862, inlinedAt: !3867)
!3869 = !DILocalVariable(name: "p", arg: 1, scope: !3870, file: !827, line: 37, type: !137)
!3870 = distinct !DISubprogram(name: "check_nonnull", scope: !827, file: !827, line: 37, type: !3871, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!137, !137}
!3873 = !{!3869}
!3874 = !DILocation(line: 0, scope: !3870, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 85, column: 10, scope: !3862, inlinedAt: !3867)
!3876 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !3875)
!3877 = distinct !DILexicalBlock(scope: !3870, file: !827, line: 39, column: 7)
!3878 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !3875)
!3879 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !3875)
!3880 = !DILocation(line: 149, column: 3, scope: !3852)
!3881 = !DILocation(line: 0, scope: !3862)
!3882 = !DILocation(line: 85, column: 25, scope: !3862)
!3883 = !DILocation(line: 0, scope: !3870, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 85, column: 10, scope: !3862)
!3885 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !3884)
!3886 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !3884)
!3887 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !3884)
!3888 = !DILocation(line: 85, column: 3, scope: !3862)
!3889 = distinct !DISubprogram(name: "xmalloc", scope: !827, file: !827, line: 47, type: !3890, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!137, !139}
!3892 = !{!3893}
!3893 = !DILocalVariable(name: "s", arg: 1, scope: !3889, file: !827, line: 47, type: !139)
!3894 = !DILocation(line: 0, scope: !3889)
!3895 = !DILocation(line: 49, column: 25, scope: !3889)
!3896 = !DILocation(line: 0, scope: !3870, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 49, column: 10, scope: !3889)
!3898 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !3897)
!3899 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !3897)
!3900 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !3897)
!3901 = !DILocation(line: 49, column: 3, scope: !3889)
!3902 = !DISubprogram(name: "malloc", scope: !1107, file: !1107, line: 540, type: !3890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!3903 = distinct !DISubprogram(name: "ximalloc", scope: !827, file: !827, line: 53, type: !3904, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!137, !412}
!3906 = !{!3907}
!3907 = !DILocalVariable(name: "s", arg: 1, scope: !3903, file: !827, line: 53, type: !412)
!3908 = !DILocation(line: 0, scope: !3903)
!3909 = !DILocalVariable(name: "s", arg: 1, scope: !3910, file: !3911, line: 55, type: !412)
!3910 = distinct !DISubprogram(name: "imalloc", scope: !3911, file: !3911, line: 55, type: !3904, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3912)
!3911 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3912 = !{!3909}
!3913 = !DILocation(line: 0, scope: !3910, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 55, column: 25, scope: !3903)
!3915 = !DILocation(line: 57, column: 26, scope: !3910, inlinedAt: !3914)
!3916 = !DILocation(line: 0, scope: !3870, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 55, column: 10, scope: !3903)
!3918 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !3917)
!3919 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !3917)
!3920 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !3917)
!3921 = !DILocation(line: 55, column: 3, scope: !3903)
!3922 = distinct !DISubprogram(name: "xcharalloc", scope: !827, file: !827, line: 59, type: !3923, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!136, !139}
!3925 = !{!3926}
!3926 = !DILocalVariable(name: "n", arg: 1, scope: !3922, file: !827, line: 59, type: !139)
!3927 = !DILocation(line: 0, scope: !3922)
!3928 = !DILocation(line: 0, scope: !3889, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 61, column: 10, scope: !3922)
!3930 = !DILocation(line: 49, column: 25, scope: !3889, inlinedAt: !3929)
!3931 = !DILocation(line: 0, scope: !3870, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 49, column: 10, scope: !3889, inlinedAt: !3929)
!3933 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !3932)
!3934 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !3932)
!3935 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !3932)
!3936 = !DILocation(line: 61, column: 3, scope: !3922)
!3937 = distinct !DISubprogram(name: "xrealloc", scope: !827, file: !827, line: 68, type: !3938, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!137, !137, !139}
!3940 = !{!3941, !3942}
!3941 = !DILocalVariable(name: "p", arg: 1, scope: !3937, file: !827, line: 68, type: !137)
!3942 = !DILocalVariable(name: "s", arg: 2, scope: !3937, file: !827, line: 68, type: !139)
!3943 = !DILocation(line: 0, scope: !3937)
!3944 = !DILocalVariable(name: "ptr", arg: 1, scope: !3945, file: !3946, line: 2057, type: !137)
!3945 = distinct !DISubprogram(name: "rpl_realloc", scope: !3946, file: !3946, line: 2057, type: !3938, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3947)
!3946 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3947 = !{!3944, !3948}
!3948 = !DILocalVariable(name: "size", arg: 2, scope: !3945, file: !3946, line: 2057, type: !139)
!3949 = !DILocation(line: 0, scope: !3945, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 70, column: 25, scope: !3937)
!3951 = !DILocation(line: 2059, column: 24, scope: !3945, inlinedAt: !3950)
!3952 = !DILocation(line: 2059, column: 10, scope: !3945, inlinedAt: !3950)
!3953 = !DILocation(line: 0, scope: !3870, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 70, column: 10, scope: !3937)
!3955 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !3954)
!3956 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !3954)
!3957 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !3954)
!3958 = !DILocation(line: 70, column: 3, scope: !3937)
!3959 = !DISubprogram(name: "realloc", scope: !1107, file: !1107, line: 551, type: !3938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!3960 = distinct !DISubprogram(name: "xirealloc", scope: !827, file: !827, line: 74, type: !3961, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!137, !137, !412}
!3963 = !{!3964, !3965}
!3964 = !DILocalVariable(name: "p", arg: 1, scope: !3960, file: !827, line: 74, type: !137)
!3965 = !DILocalVariable(name: "s", arg: 2, scope: !3960, file: !827, line: 74, type: !412)
!3966 = !DILocation(line: 0, scope: !3960)
!3967 = !DILocalVariable(name: "p", arg: 1, scope: !3968, file: !3911, line: 66, type: !137)
!3968 = distinct !DISubprogram(name: "irealloc", scope: !3911, file: !3911, line: 66, type: !3961, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3969)
!3969 = !{!3967, !3970}
!3970 = !DILocalVariable(name: "s", arg: 2, scope: !3968, file: !3911, line: 66, type: !412)
!3971 = !DILocation(line: 0, scope: !3968, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 76, column: 25, scope: !3960)
!3973 = !DILocation(line: 0, scope: !3945, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 68, column: 26, scope: !3968, inlinedAt: !3972)
!3975 = !DILocation(line: 2059, column: 24, scope: !3945, inlinedAt: !3974)
!3976 = !DILocation(line: 2059, column: 10, scope: !3945, inlinedAt: !3974)
!3977 = !DILocation(line: 0, scope: !3870, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 76, column: 10, scope: !3960)
!3979 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !3978)
!3980 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !3978)
!3981 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !3978)
!3982 = !DILocation(line: 76, column: 3, scope: !3960)
!3983 = distinct !DISubprogram(name: "xireallocarray", scope: !827, file: !827, line: 89, type: !3984, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!137, !137, !412, !412}
!3986 = !{!3987, !3988, !3989}
!3987 = !DILocalVariable(name: "p", arg: 1, scope: !3983, file: !827, line: 89, type: !137)
!3988 = !DILocalVariable(name: "n", arg: 2, scope: !3983, file: !827, line: 89, type: !412)
!3989 = !DILocalVariable(name: "s", arg: 3, scope: !3983, file: !827, line: 89, type: !412)
!3990 = !DILocation(line: 0, scope: !3983)
!3991 = !DILocalVariable(name: "p", arg: 1, scope: !3992, file: !3911, line: 98, type: !137)
!3992 = distinct !DISubprogram(name: "ireallocarray", scope: !3911, file: !3911, line: 98, type: !3984, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3993)
!3993 = !{!3991, !3994, !3995}
!3994 = !DILocalVariable(name: "n", arg: 2, scope: !3992, file: !3911, line: 98, type: !412)
!3995 = !DILocalVariable(name: "s", arg: 3, scope: !3992, file: !3911, line: 98, type: !412)
!3996 = !DILocation(line: 0, scope: !3992, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 91, column: 25, scope: !3983)
!3998 = !DILocation(line: 101, column: 13, scope: !3992, inlinedAt: !3997)
!3999 = !DILocation(line: 0, scope: !3870, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 91, column: 10, scope: !3983)
!4001 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4000)
!4002 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4000)
!4003 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4000)
!4004 = !DILocation(line: 91, column: 3, scope: !3983)
!4005 = distinct !DISubprogram(name: "xnmalloc", scope: !827, file: !827, line: 98, type: !4006, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!137, !139, !139}
!4008 = !{!4009, !4010}
!4009 = !DILocalVariable(name: "n", arg: 1, scope: !4005, file: !827, line: 98, type: !139)
!4010 = !DILocalVariable(name: "s", arg: 2, scope: !4005, file: !827, line: 98, type: !139)
!4011 = !DILocation(line: 0, scope: !4005)
!4012 = !DILocation(line: 0, scope: !3862, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 100, column: 10, scope: !4005)
!4014 = !DILocation(line: 85, column: 25, scope: !3862, inlinedAt: !4013)
!4015 = !DILocation(line: 0, scope: !3870, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 85, column: 10, scope: !3862, inlinedAt: !4013)
!4017 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4016)
!4018 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4016)
!4019 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4016)
!4020 = !DILocation(line: 100, column: 3, scope: !4005)
!4021 = distinct !DISubprogram(name: "xinmalloc", scope: !827, file: !827, line: 104, type: !4022, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!137, !412, !412}
!4024 = !{!4025, !4026}
!4025 = !DILocalVariable(name: "n", arg: 1, scope: !4021, file: !827, line: 104, type: !412)
!4026 = !DILocalVariable(name: "s", arg: 2, scope: !4021, file: !827, line: 104, type: !412)
!4027 = !DILocation(line: 0, scope: !4021)
!4028 = !DILocation(line: 0, scope: !3983, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 106, column: 10, scope: !4021)
!4030 = !DILocation(line: 0, scope: !3992, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 91, column: 25, scope: !3983, inlinedAt: !4029)
!4032 = !DILocation(line: 101, column: 13, scope: !3992, inlinedAt: !4031)
!4033 = !DILocation(line: 0, scope: !3870, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 91, column: 10, scope: !3983, inlinedAt: !4029)
!4035 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4034)
!4036 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4034)
!4037 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4034)
!4038 = !DILocation(line: 106, column: 3, scope: !4021)
!4039 = distinct !DISubprogram(name: "x2realloc", scope: !827, file: !827, line: 116, type: !4040, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!137, !137, !833}
!4042 = !{!4043, !4044}
!4043 = !DILocalVariable(name: "p", arg: 1, scope: !4039, file: !827, line: 116, type: !137)
!4044 = !DILocalVariable(name: "ps", arg: 2, scope: !4039, file: !827, line: 116, type: !833)
!4045 = !DILocation(line: 0, scope: !4039)
!4046 = !DILocation(line: 0, scope: !830, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 118, column: 10, scope: !4039)
!4048 = !DILocation(line: 178, column: 14, scope: !830, inlinedAt: !4047)
!4049 = !DILocation(line: 180, column: 9, scope: !4050, inlinedAt: !4047)
!4050 = distinct !DILexicalBlock(scope: !830, file: !827, line: 180, column: 7)
!4051 = !DILocation(line: 180, column: 7, scope: !830, inlinedAt: !4047)
!4052 = !DILocation(line: 182, column: 13, scope: !4053, inlinedAt: !4047)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !827, line: 182, column: 11)
!4054 = distinct !DILexicalBlock(scope: !4050, file: !827, line: 181, column: 5)
!4055 = !DILocation(line: 182, column: 11, scope: !4054, inlinedAt: !4047)
!4056 = !DILocation(line: 197, column: 11, scope: !4057, inlinedAt: !4047)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !827, line: 197, column: 11)
!4058 = distinct !DILexicalBlock(scope: !4050, file: !827, line: 195, column: 5)
!4059 = !DILocation(line: 197, column: 11, scope: !4058, inlinedAt: !4047)
!4060 = !DILocation(line: 198, column: 9, scope: !4057, inlinedAt: !4047)
!4061 = !DILocation(line: 0, scope: !3862, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 201, column: 7, scope: !830, inlinedAt: !4047)
!4063 = !DILocation(line: 85, column: 25, scope: !3862, inlinedAt: !4062)
!4064 = !DILocation(line: 0, scope: !3870, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 85, column: 10, scope: !3862, inlinedAt: !4062)
!4066 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4065)
!4067 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4065)
!4068 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4065)
!4069 = !DILocation(line: 202, column: 7, scope: !830, inlinedAt: !4047)
!4070 = !DILocation(line: 118, column: 3, scope: !4039)
!4071 = !DILocation(line: 0, scope: !830)
!4072 = !DILocation(line: 178, column: 14, scope: !830)
!4073 = !DILocation(line: 180, column: 9, scope: !4050)
!4074 = !DILocation(line: 180, column: 7, scope: !830)
!4075 = !DILocation(line: 182, column: 13, scope: !4053)
!4076 = !DILocation(line: 182, column: 11, scope: !4054)
!4077 = !DILocation(line: 190, column: 30, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4053, file: !827, line: 183, column: 9)
!4079 = !DILocation(line: 191, column: 16, scope: !4078)
!4080 = !DILocation(line: 191, column: 13, scope: !4078)
!4081 = !DILocation(line: 192, column: 9, scope: !4078)
!4082 = !DILocation(line: 197, column: 11, scope: !4057)
!4083 = !DILocation(line: 197, column: 11, scope: !4058)
!4084 = !DILocation(line: 198, column: 9, scope: !4057)
!4085 = !DILocation(line: 0, scope: !3862, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 201, column: 7, scope: !830)
!4087 = !DILocation(line: 85, column: 25, scope: !3862, inlinedAt: !4086)
!4088 = !DILocation(line: 0, scope: !3870, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 85, column: 10, scope: !3862, inlinedAt: !4086)
!4090 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4089)
!4091 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4089)
!4092 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4089)
!4093 = !DILocation(line: 202, column: 7, scope: !830)
!4094 = !DILocation(line: 203, column: 3, scope: !830)
!4095 = !DILocation(line: 0, scope: !842)
!4096 = !DILocation(line: 230, column: 14, scope: !842)
!4097 = !DILocation(line: 238, column: 7, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !842, file: !827, line: 238, column: 7)
!4099 = !DILocation(line: 238, column: 7, scope: !842)
!4100 = !DILocation(line: 240, column: 9, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !842, file: !827, line: 240, column: 7)
!4102 = !DILocation(line: 240, column: 18, scope: !4101)
!4103 = !DILocation(line: 253, column: 8, scope: !842)
!4104 = !DILocation(line: 258, column: 27, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !827, line: 257, column: 5)
!4106 = distinct !DILexicalBlock(scope: !842, file: !827, line: 256, column: 7)
!4107 = !DILocation(line: 259, column: 50, scope: !4105)
!4108 = !DILocation(line: 259, column: 32, scope: !4105)
!4109 = !DILocation(line: 260, column: 5, scope: !4105)
!4110 = !DILocation(line: 262, column: 9, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !842, file: !827, line: 262, column: 7)
!4112 = !DILocation(line: 262, column: 7, scope: !842)
!4113 = !DILocation(line: 263, column: 9, scope: !4111)
!4114 = !DILocation(line: 263, column: 5, scope: !4111)
!4115 = !DILocation(line: 264, column: 9, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !842, file: !827, line: 264, column: 7)
!4117 = !DILocation(line: 264, column: 14, scope: !4116)
!4118 = !DILocation(line: 265, column: 7, scope: !4116)
!4119 = !DILocation(line: 265, column: 11, scope: !4116)
!4120 = !DILocation(line: 266, column: 11, scope: !4116)
!4121 = !DILocation(line: 267, column: 14, scope: !4116)
!4122 = !DILocation(line: 264, column: 7, scope: !842)
!4123 = !DILocation(line: 268, column: 5, scope: !4116)
!4124 = !DILocation(line: 0, scope: !3937, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 269, column: 8, scope: !842)
!4126 = !DILocation(line: 0, scope: !3945, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 70, column: 25, scope: !3937, inlinedAt: !4125)
!4128 = !DILocation(line: 2059, column: 24, scope: !3945, inlinedAt: !4127)
!4129 = !DILocation(line: 2059, column: 10, scope: !3945, inlinedAt: !4127)
!4130 = !DILocation(line: 0, scope: !3870, inlinedAt: !4131)
!4131 = distinct !DILocation(line: 70, column: 10, scope: !3937, inlinedAt: !4125)
!4132 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4131)
!4133 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4131)
!4134 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4131)
!4135 = !DILocation(line: 270, column: 7, scope: !842)
!4136 = !DILocation(line: 271, column: 3, scope: !842)
!4137 = distinct !DISubprogram(name: "xzalloc", scope: !827, file: !827, line: 279, type: !3890, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4138)
!4138 = !{!4139}
!4139 = !DILocalVariable(name: "s", arg: 1, scope: !4137, file: !827, line: 279, type: !139)
!4140 = !DILocation(line: 0, scope: !4137)
!4141 = !DILocalVariable(name: "n", arg: 1, scope: !4142, file: !827, line: 294, type: !139)
!4142 = distinct !DISubprogram(name: "xcalloc", scope: !827, file: !827, line: 294, type: !4006, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4143)
!4143 = !{!4141, !4144}
!4144 = !DILocalVariable(name: "s", arg: 2, scope: !4142, file: !827, line: 294, type: !139)
!4145 = !DILocation(line: 0, scope: !4142, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 281, column: 10, scope: !4137)
!4147 = !DILocation(line: 296, column: 25, scope: !4142, inlinedAt: !4146)
!4148 = !DILocation(line: 0, scope: !3870, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 296, column: 10, scope: !4142, inlinedAt: !4146)
!4150 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4149)
!4151 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4149)
!4152 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4149)
!4153 = !DILocation(line: 281, column: 3, scope: !4137)
!4154 = !DISubprogram(name: "calloc", scope: !1107, file: !1107, line: 543, type: !4006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!4155 = !DILocation(line: 0, scope: !4142)
!4156 = !DILocation(line: 296, column: 25, scope: !4142)
!4157 = !DILocation(line: 0, scope: !3870, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 296, column: 10, scope: !4142)
!4159 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4158)
!4160 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4158)
!4161 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4158)
!4162 = !DILocation(line: 296, column: 3, scope: !4142)
!4163 = distinct !DISubprogram(name: "xizalloc", scope: !827, file: !827, line: 285, type: !3904, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4164)
!4164 = !{!4165}
!4165 = !DILocalVariable(name: "s", arg: 1, scope: !4163, file: !827, line: 285, type: !412)
!4166 = !DILocation(line: 0, scope: !4163)
!4167 = !DILocalVariable(name: "n", arg: 1, scope: !4168, file: !827, line: 300, type: !412)
!4168 = distinct !DISubprogram(name: "xicalloc", scope: !827, file: !827, line: 300, type: !4022, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4169)
!4169 = !{!4167, !4170}
!4170 = !DILocalVariable(name: "s", arg: 2, scope: !4168, file: !827, line: 300, type: !412)
!4171 = !DILocation(line: 0, scope: !4168, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 287, column: 10, scope: !4163)
!4173 = !DILocalVariable(name: "n", arg: 1, scope: !4174, file: !3911, line: 77, type: !412)
!4174 = distinct !DISubprogram(name: "icalloc", scope: !3911, file: !3911, line: 77, type: !4022, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4175)
!4175 = !{!4173, !4176}
!4176 = !DILocalVariable(name: "s", arg: 2, scope: !4174, file: !3911, line: 77, type: !412)
!4177 = !DILocation(line: 0, scope: !4174, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 302, column: 25, scope: !4168, inlinedAt: !4172)
!4179 = !DILocation(line: 91, column: 10, scope: !4174, inlinedAt: !4178)
!4180 = !DILocation(line: 0, scope: !3870, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 302, column: 10, scope: !4168, inlinedAt: !4172)
!4182 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4181)
!4183 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4181)
!4184 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4181)
!4185 = !DILocation(line: 287, column: 3, scope: !4163)
!4186 = !DILocation(line: 0, scope: !4168)
!4187 = !DILocation(line: 0, scope: !4174, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 302, column: 25, scope: !4168)
!4189 = !DILocation(line: 91, column: 10, scope: !4174, inlinedAt: !4188)
!4190 = !DILocation(line: 0, scope: !3870, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 302, column: 10, scope: !4168)
!4192 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4191)
!4193 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4191)
!4194 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4191)
!4195 = !DILocation(line: 302, column: 3, scope: !4168)
!4196 = distinct !DISubprogram(name: "xmemdup", scope: !827, file: !827, line: 310, type: !4197, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!137, !1131, !139}
!4199 = !{!4200, !4201}
!4200 = !DILocalVariable(name: "p", arg: 1, scope: !4196, file: !827, line: 310, type: !1131)
!4201 = !DILocalVariable(name: "s", arg: 2, scope: !4196, file: !827, line: 310, type: !139)
!4202 = !DILocation(line: 0, scope: !4196)
!4203 = !DILocation(line: 0, scope: !3889, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 312, column: 18, scope: !4196)
!4205 = !DILocation(line: 49, column: 25, scope: !3889, inlinedAt: !4204)
!4206 = !DILocation(line: 0, scope: !3870, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 49, column: 10, scope: !3889, inlinedAt: !4204)
!4208 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4207)
!4209 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4207)
!4210 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4207)
!4211 = !DILocalVariable(name: "__dest", arg: 1, scope: !4212, file: !1284, line: 26, type: !1598)
!4212 = distinct !DISubprogram(name: "memcpy", scope: !1284, file: !1284, line: 26, type: !1596, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4213)
!4213 = !{!4211, !4214, !4215}
!4214 = !DILocalVariable(name: "__src", arg: 2, scope: !4212, file: !1284, line: 26, type: !1130)
!4215 = !DILocalVariable(name: "__len", arg: 3, scope: !4212, file: !1284, line: 26, type: !139)
!4216 = !DILocation(line: 0, scope: !4212, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 312, column: 10, scope: !4196)
!4218 = !DILocation(line: 29, column: 10, scope: !4212, inlinedAt: !4217)
!4219 = !DILocation(line: 312, column: 3, scope: !4196)
!4220 = distinct !DISubprogram(name: "ximemdup", scope: !827, file: !827, line: 316, type: !4221, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4223)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!137, !1131, !412}
!4223 = !{!4224, !4225}
!4224 = !DILocalVariable(name: "p", arg: 1, scope: !4220, file: !827, line: 316, type: !1131)
!4225 = !DILocalVariable(name: "s", arg: 2, scope: !4220, file: !827, line: 316, type: !412)
!4226 = !DILocation(line: 0, scope: !4220)
!4227 = !DILocation(line: 0, scope: !3903, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 318, column: 18, scope: !4220)
!4229 = !DILocation(line: 0, scope: !3910, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 55, column: 25, scope: !3903, inlinedAt: !4228)
!4231 = !DILocation(line: 57, column: 26, scope: !3910, inlinedAt: !4230)
!4232 = !DILocation(line: 0, scope: !3870, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 55, column: 10, scope: !3903, inlinedAt: !4228)
!4234 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4233)
!4235 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4233)
!4236 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4233)
!4237 = !DILocation(line: 0, scope: !4212, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 318, column: 10, scope: !4220)
!4239 = !DILocation(line: 29, column: 10, scope: !4212, inlinedAt: !4238)
!4240 = !DILocation(line: 318, column: 3, scope: !4220)
!4241 = distinct !DISubprogram(name: "ximemdup0", scope: !827, file: !827, line: 325, type: !4242, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!136, !1131, !412}
!4244 = !{!4245, !4246, !4247}
!4245 = !DILocalVariable(name: "p", arg: 1, scope: !4241, file: !827, line: 325, type: !1131)
!4246 = !DILocalVariable(name: "s", arg: 2, scope: !4241, file: !827, line: 325, type: !412)
!4247 = !DILocalVariable(name: "result", scope: !4241, file: !827, line: 327, type: !136)
!4248 = !DILocation(line: 0, scope: !4241)
!4249 = !DILocation(line: 327, column: 30, scope: !4241)
!4250 = !DILocation(line: 0, scope: !3903, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 327, column: 18, scope: !4241)
!4252 = !DILocation(line: 0, scope: !3910, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 55, column: 25, scope: !3903, inlinedAt: !4251)
!4254 = !DILocation(line: 57, column: 26, scope: !3910, inlinedAt: !4253)
!4255 = !DILocation(line: 0, scope: !3870, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 55, column: 10, scope: !3903, inlinedAt: !4251)
!4257 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4256)
!4258 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4256)
!4259 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4256)
!4260 = !DILocation(line: 328, column: 3, scope: !4241)
!4261 = !DILocation(line: 328, column: 13, scope: !4241)
!4262 = !DILocation(line: 0, scope: !4212, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 329, column: 10, scope: !4241)
!4264 = !DILocation(line: 29, column: 10, scope: !4212, inlinedAt: !4263)
!4265 = !DILocation(line: 329, column: 3, scope: !4241)
!4266 = distinct !DISubprogram(name: "xstrdup", scope: !827, file: !827, line: 335, type: !1109, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4267)
!4267 = !{!4268}
!4268 = !DILocalVariable(name: "string", arg: 1, scope: !4266, file: !827, line: 335, type: !142)
!4269 = !DILocation(line: 0, scope: !4266)
!4270 = !DILocation(line: 337, column: 27, scope: !4266)
!4271 = !DILocation(line: 337, column: 43, scope: !4266)
!4272 = !DILocation(line: 0, scope: !4196, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 337, column: 10, scope: !4266)
!4274 = !DILocation(line: 0, scope: !3889, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 312, column: 18, scope: !4196, inlinedAt: !4273)
!4276 = !DILocation(line: 49, column: 25, scope: !3889, inlinedAt: !4275)
!4277 = !DILocation(line: 0, scope: !3870, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 49, column: 10, scope: !3889, inlinedAt: !4275)
!4279 = !DILocation(line: 39, column: 8, scope: !3877, inlinedAt: !4278)
!4280 = !DILocation(line: 39, column: 7, scope: !3870, inlinedAt: !4278)
!4281 = !DILocation(line: 40, column: 5, scope: !3877, inlinedAt: !4278)
!4282 = !DILocation(line: 0, scope: !4212, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 312, column: 10, scope: !4196, inlinedAt: !4273)
!4284 = !DILocation(line: 29, column: 10, scope: !4212, inlinedAt: !4283)
!4285 = !DILocation(line: 337, column: 3, scope: !4266)
!4286 = distinct !DISubprogram(name: "xalloc_die", scope: !777, file: !777, line: 32, type: !545, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4287)
!4287 = !{!4288}
!4288 = !DILocalVariable(name: "__errstatus", scope: !4289, file: !777, line: 34, type: !4290)
!4289 = distinct !DILexicalBlock(scope: !4286, file: !777, line: 34, column: 3)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!4291 = !DILocation(line: 34, column: 3, scope: !4289)
!4292 = !DILocation(line: 0, scope: !4289)
!4293 = !DILocation(line: 40, column: 3, scope: !4286)
!4294 = distinct !DISubprogram(name: "xnumtoumax", scope: !784, file: !784, line: 42, type: !4295, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!875, !142, !83, !875, !875, !142, !142, !83, !83}
!4297 = !{!4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4310, !4311, !4312}
!4298 = !DILocalVariable(name: "n_str", arg: 1, scope: !4294, file: !784, line: 42, type: !142)
!4299 = !DILocalVariable(name: "base", arg: 2, scope: !4294, file: !784, line: 42, type: !83)
!4300 = !DILocalVariable(name: "min", arg: 3, scope: !4294, file: !784, line: 42, type: !875)
!4301 = !DILocalVariable(name: "max", arg: 4, scope: !4294, file: !784, line: 42, type: !875)
!4302 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4294, file: !784, line: 43, type: !142)
!4303 = !DILocalVariable(name: "err", arg: 6, scope: !4294, file: !784, line: 43, type: !142)
!4304 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4294, file: !784, line: 43, type: !83)
!4305 = !DILocalVariable(name: "flags", arg: 8, scope: !4294, file: !784, line: 44, type: !83)
!4306 = !DILocalVariable(name: "tnum", scope: !4294, file: !784, line: 46, type: !875)
!4307 = !DILocalVariable(name: "r", scope: !4294, file: !784, line: 46, type: !875)
!4308 = !DILocalVariable(name: "s_err", scope: !4294, file: !784, line: 47, type: !4309)
!4309 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !863, line: 43, baseType: !862)
!4310 = !DILocalVariable(name: "overflow_errno", scope: !4294, file: !784, line: 50, type: !83)
!4311 = !DILocalVariable(name: "e", scope: !4294, file: !784, line: 75, type: !83)
!4312 = !DILocalVariable(name: "__errstatus", scope: !4313, file: !784, line: 80, type: !4290)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !784, line: 80, column: 5)
!4314 = distinct !DILexicalBlock(scope: !4294, file: !784, line: 77, column: 7)
!4315 = !DILocation(line: 0, scope: !4294)
!4316 = !DILocation(line: 46, column: 3, scope: !4294)
!4317 = !DILocation(line: 47, column: 24, scope: !4294)
!4318 = !DILocation(line: 52, column: 13, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4294, file: !784, line: 52, column: 7)
!4320 = !DILocation(line: 52, column: 7, scope: !4294)
!4321 = !DILocation(line: 54, column: 11, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !784, line: 54, column: 11)
!4323 = distinct !DILexicalBlock(scope: !4319, file: !784, line: 53, column: 5)
!4324 = !DILocation(line: 54, column: 16, scope: !4322)
!4325 = !DILocation(line: 54, column: 11, scope: !4323)
!4326 = !DILocation(line: 57, column: 34, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4322, file: !784, line: 55, column: 9)
!4328 = !DILocation(line: 57, column: 28, scope: !4327)
!4329 = !DILocation(line: 58, column: 21, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4327, file: !784, line: 58, column: 15)
!4331 = !DILocation(line: 0, scope: !4327)
!4332 = !DILocation(line: 61, column: 20, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4322, file: !784, line: 61, column: 16)
!4334 = !DILocation(line: 61, column: 16, scope: !4322)
!4335 = !DILocation(line: 64, column: 34, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4333, file: !784, line: 62, column: 9)
!4337 = !DILocation(line: 64, column: 28, scope: !4336)
!4338 = !DILocation(line: 65, column: 21, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4336, file: !784, line: 65, column: 15)
!4340 = !DILocation(line: 0, scope: !4336)
!4341 = !DILocation(line: 75, column: 17, scope: !4294)
!4342 = !DILocation(line: 75, column: 11, scope: !4294)
!4343 = !DILocation(line: 77, column: 16, scope: !4314)
!4344 = !DILocation(line: 78, column: 10, scope: !4314)
!4345 = !DILocation(line: 79, column: 14, scope: !4314)
!4346 = !DILocation(line: 80, column: 5, scope: !4314)
!4347 = !DILocation(line: 82, column: 3, scope: !4294)
!4348 = !DILocation(line: 82, column: 9, scope: !4294)
!4349 = !DILocation(line: 84, column: 1, scope: !4294)
!4350 = !DILocation(line: 83, column: 3, scope: !4294)
!4351 = distinct !DISubprogram(name: "xdectoumax", scope: !784, file: !784, line: 92, type: !4352, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !4354)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!875, !142, !875, !875, !142, !142, !83}
!4354 = !{!4355, !4356, !4357, !4358, !4359, !4360}
!4355 = !DILocalVariable(name: "n_str", arg: 1, scope: !4351, file: !784, line: 92, type: !142)
!4356 = !DILocalVariable(name: "min", arg: 2, scope: !4351, file: !784, line: 92, type: !875)
!4357 = !DILocalVariable(name: "max", arg: 3, scope: !4351, file: !784, line: 92, type: !875)
!4358 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4351, file: !784, line: 93, type: !142)
!4359 = !DILocalVariable(name: "err", arg: 5, scope: !4351, file: !784, line: 93, type: !142)
!4360 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4351, file: !784, line: 93, type: !83)
!4361 = !DILocation(line: 0, scope: !4351)
!4362 = !DILocation(line: 0, scope: !4294, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 95, column: 10, scope: !4351)
!4364 = !DILocation(line: 46, column: 3, scope: !4294, inlinedAt: !4363)
!4365 = !DILocation(line: 47, column: 24, scope: !4294, inlinedAt: !4363)
!4366 = !DILocation(line: 52, column: 13, scope: !4319, inlinedAt: !4363)
!4367 = !DILocation(line: 52, column: 7, scope: !4294, inlinedAt: !4363)
!4368 = !DILocation(line: 54, column: 11, scope: !4322, inlinedAt: !4363)
!4369 = !DILocation(line: 54, column: 16, scope: !4322, inlinedAt: !4363)
!4370 = !DILocation(line: 54, column: 11, scope: !4323, inlinedAt: !4363)
!4371 = !DILocation(line: 58, column: 21, scope: !4330, inlinedAt: !4363)
!4372 = !DILocation(line: 0, scope: !4327, inlinedAt: !4363)
!4373 = !DILocation(line: 61, column: 20, scope: !4333, inlinedAt: !4363)
!4374 = !DILocation(line: 61, column: 16, scope: !4322, inlinedAt: !4363)
!4375 = !DILocation(line: 65, column: 21, scope: !4339, inlinedAt: !4363)
!4376 = !DILocation(line: 0, scope: !4336, inlinedAt: !4363)
!4377 = !DILocation(line: 75, column: 17, scope: !4294, inlinedAt: !4363)
!4378 = !DILocation(line: 75, column: 11, scope: !4294, inlinedAt: !4363)
!4379 = !DILocation(line: 77, column: 16, scope: !4314, inlinedAt: !4363)
!4380 = !DILocation(line: 78, column: 10, scope: !4314, inlinedAt: !4363)
!4381 = !DILocation(line: 80, column: 5, scope: !4314, inlinedAt: !4363)
!4382 = !DILocation(line: 82, column: 3, scope: !4294, inlinedAt: !4363)
!4383 = !DILocation(line: 82, column: 9, scope: !4294, inlinedAt: !4363)
!4384 = !DILocation(line: 84, column: 1, scope: !4294, inlinedAt: !4363)
!4385 = !DILocation(line: 95, column: 3, scope: !4351)
!4386 = distinct !DISubprogram(name: "xstrtoumax", scope: !4387, file: !4387, line: 71, type: !4388, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4391)
!4387 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!4309, !142, !1136, !83, !4390, !142}
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4402, !4403, !4404, !4405, !4408, !4409}
!4392 = !DILocalVariable(name: "nptr", arg: 1, scope: !4386, file: !4387, line: 71, type: !142)
!4393 = !DILocalVariable(name: "endptr", arg: 2, scope: !4386, file: !4387, line: 71, type: !1136)
!4394 = !DILocalVariable(name: "base", arg: 3, scope: !4386, file: !4387, line: 71, type: !83)
!4395 = !DILocalVariable(name: "val", arg: 4, scope: !4386, file: !4387, line: 72, type: !4390)
!4396 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4386, file: !4387, line: 72, type: !142)
!4397 = !DILocalVariable(name: "t_ptr", scope: !4386, file: !4387, line: 74, type: !136)
!4398 = !DILocalVariable(name: "p", scope: !4386, file: !4387, line: 75, type: !1136)
!4399 = !DILocalVariable(name: "q", scope: !4400, file: !4387, line: 79, type: !142)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !4387, line: 78, column: 5)
!4401 = distinct !DILexicalBlock(scope: !4386, file: !4387, line: 77, column: 7)
!4402 = !DILocalVariable(name: "ch", scope: !4400, file: !4387, line: 80, type: !144)
!4403 = !DILocalVariable(name: "tmp", scope: !4386, file: !4387, line: 91, type: !875)
!4404 = !DILocalVariable(name: "err", scope: !4386, file: !4387, line: 92, type: !4309)
!4405 = !DILocalVariable(name: "xbase", scope: !4406, file: !4387, line: 126, type: !83)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !4387, line: 119, column: 5)
!4407 = distinct !DILexicalBlock(scope: !4386, file: !4387, line: 118, column: 7)
!4408 = !DILocalVariable(name: "suffixes", scope: !4406, file: !4387, line: 127, type: !83)
!4409 = !DILocalVariable(name: "overflow", scope: !4406, file: !4387, line: 156, type: !4309)
!4410 = !DILocation(line: 0, scope: !4386)
!4411 = !DILocation(line: 74, column: 3, scope: !4386)
!4412 = !DILocation(line: 75, column: 14, scope: !4386)
!4413 = !DILocation(line: 0, scope: !4400)
!4414 = !DILocation(line: 81, column: 7, scope: !4400)
!4415 = !DILocation(line: 81, column: 14, scope: !4400)
!4416 = !DILocation(line: 82, column: 15, scope: !4400)
!4417 = distinct !{!4417, !4414, !4418, !1029}
!4418 = !DILocation(line: 82, column: 17, scope: !4400)
!4419 = !DILocation(line: 83, column: 14, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4400, file: !4387, line: 83, column: 11)
!4421 = !DILocation(line: 83, column: 11, scope: !4400)
!4422 = !DILocation(line: 85, column: 14, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4420, file: !4387, line: 84, column: 9)
!4424 = !DILocation(line: 90, column: 3, scope: !4386)
!4425 = !DILocation(line: 90, column: 9, scope: !4386)
!4426 = !DILocation(line: 91, column: 20, scope: !4386)
!4427 = !DILocation(line: 94, column: 7, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4386, file: !4387, line: 94, column: 7)
!4429 = !DILocation(line: 94, column: 10, scope: !4428)
!4430 = !DILocation(line: 94, column: 7, scope: !4386)
!4431 = !DILocation(line: 98, column: 14, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !4387, line: 98, column: 11)
!4433 = distinct !DILexicalBlock(scope: !4428, file: !4387, line: 95, column: 5)
!4434 = !DILocation(line: 98, column: 29, scope: !4432)
!4435 = !DILocation(line: 98, column: 32, scope: !4432)
!4436 = !DILocation(line: 98, column: 38, scope: !4432)
!4437 = !DILocation(line: 98, column: 41, scope: !4432)
!4438 = !DILocation(line: 98, column: 11, scope: !4433)
!4439 = !DILocation(line: 102, column: 12, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4428, file: !4387, line: 102, column: 12)
!4441 = !DILocation(line: 102, column: 12, scope: !4428)
!4442 = !DILocation(line: 107, column: 5, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4440, file: !4387, line: 103, column: 5)
!4444 = !DILocation(line: 112, column: 8, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4386, file: !4387, line: 112, column: 7)
!4446 = !DILocation(line: 112, column: 7, scope: !4386)
!4447 = !DILocation(line: 114, column: 12, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4445, file: !4387, line: 113, column: 5)
!4449 = !DILocation(line: 115, column: 7, scope: !4448)
!4450 = !DILocation(line: 118, column: 7, scope: !4407)
!4451 = !DILocation(line: 118, column: 11, scope: !4407)
!4452 = !DILocation(line: 118, column: 7, scope: !4386)
!4453 = !DILocation(line: 120, column: 12, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4406, file: !4387, line: 120, column: 11)
!4455 = !DILocation(line: 120, column: 11, scope: !4406)
!4456 = !DILocation(line: 122, column: 16, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4454, file: !4387, line: 121, column: 9)
!4458 = !DILocation(line: 123, column: 22, scope: !4457)
!4459 = !DILocation(line: 123, column: 11, scope: !4457)
!4460 = !DILocation(line: 0, scope: !4406)
!4461 = !DILocation(line: 128, column: 7, scope: !4406)
!4462 = !DILocation(line: 140, column: 15, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !4387, line: 140, column: 15)
!4464 = distinct !DILexicalBlock(scope: !4406, file: !4387, line: 129, column: 9)
!4465 = !DILocation(line: 140, column: 15, scope: !4464)
!4466 = !DILocation(line: 141, column: 21, scope: !4463)
!4467 = !DILocation(line: 141, column: 13, scope: !4463)
!4468 = !DILocation(line: 144, column: 21, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !4387, line: 144, column: 21)
!4470 = distinct !DILexicalBlock(scope: !4463, file: !4387, line: 142, column: 15)
!4471 = !DILocation(line: 144, column: 29, scope: !4469)
!4472 = !DILocation(line: 144, column: 21, scope: !4470)
!4473 = !DILocation(line: 152, column: 17, scope: !4470)
!4474 = !DILocation(line: 157, column: 7, scope: !4406)
!4475 = !DILocalVariable(name: "err", scope: !4476, file: !4387, line: 64, type: !4309)
!4476 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4387, file: !4387, line: 62, type: !4477, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!4309, !4390, !83, !83}
!4479 = !{!4480, !4481, !4482, !4475}
!4480 = !DILocalVariable(name: "x", arg: 1, scope: !4476, file: !4387, line: 62, type: !4390)
!4481 = !DILocalVariable(name: "base", arg: 2, scope: !4476, file: !4387, line: 62, type: !83)
!4482 = !DILocalVariable(name: "power", arg: 3, scope: !4476, file: !4387, line: 62, type: !83)
!4483 = !DILocation(line: 0, scope: !4476, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 219, column: 22, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4406, file: !4387, line: 158, column: 9)
!4486 = !DILocalVariable(name: "x", arg: 1, scope: !4487, file: !4387, line: 47, type: !4390)
!4487 = distinct !DISubprogram(name: "bkm_scale", scope: !4387, file: !4387, line: 47, type: !4488, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4490)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!4309, !4390, !83}
!4490 = !{!4486, !4491, !4492}
!4491 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4487, file: !4387, line: 47, type: !83)
!4492 = !DILocalVariable(name: "scaled", scope: !4487, file: !4387, line: 49, type: !875)
!4493 = !DILocation(line: 0, scope: !4487, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4484)
!4495 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4494)
!4496 = distinct !DILexicalBlock(scope: !4487, file: !4387, line: 50, column: 7)
!4497 = !DILocation(line: 66, column: 9, scope: !4476, inlinedAt: !4484)
!4498 = !DILocation(line: 227, column: 11, scope: !4406)
!4499 = !DILocation(line: 0, scope: !4476, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 215, column: 22, scope: !4485)
!4501 = !DILocation(line: 0, scope: !4487, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4500)
!4503 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4502)
!4504 = !DILocation(line: 66, column: 9, scope: !4476, inlinedAt: !4500)
!4505 = !DILocation(line: 0, scope: !4476, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 202, column: 22, scope: !4485)
!4507 = !DILocation(line: 0, scope: !4487, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4506)
!4509 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4508)
!4510 = !DILocation(line: 66, column: 9, scope: !4476, inlinedAt: !4506)
!4511 = !DILocation(line: 0, scope: !4476, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 198, column: 22, scope: !4485)
!4513 = !DILocation(line: 0, scope: !4487, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4512)
!4515 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4514)
!4516 = !DILocation(line: 66, column: 9, scope: !4476, inlinedAt: !4512)
!4517 = !DILocation(line: 0, scope: !4476, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 194, column: 22, scope: !4485)
!4519 = !DILocation(line: 0, scope: !4487, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4518)
!4521 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4520)
!4522 = !DILocation(line: 66, column: 9, scope: !4476, inlinedAt: !4518)
!4523 = !DILocation(line: 0, scope: !4476, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 175, column: 22, scope: !4485)
!4525 = !DILocation(line: 0, scope: !4487, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4524)
!4527 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4526)
!4528 = !DILocation(line: 66, column: 9, scope: !4476, inlinedAt: !4524)
!4529 = !DILocation(line: 0, scope: !4487, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 160, column: 22, scope: !4485)
!4531 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4530)
!4532 = !DILocation(line: 161, column: 11, scope: !4485)
!4533 = !DILocation(line: 0, scope: !4487, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 167, column: 22, scope: !4485)
!4535 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4534)
!4536 = !DILocation(line: 168, column: 11, scope: !4485)
!4537 = !DILocation(line: 0, scope: !4476, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 180, column: 22, scope: !4485)
!4539 = !DILocation(line: 0, scope: !4487, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4538)
!4541 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4540)
!4542 = !DILocation(line: 66, column: 9, scope: !4476, inlinedAt: !4538)
!4543 = !DILocation(line: 0, scope: !4476, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 185, column: 22, scope: !4485)
!4545 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4544)
!4547 = !DILocation(line: 0, scope: !4487, inlinedAt: !4546)
!4548 = !DILocation(line: 0, scope: !4476, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 190, column: 22, scope: !4485)
!4550 = !DILocation(line: 0, scope: !4487, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4549)
!4552 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4551)
!4553 = !DILocation(line: 66, column: 9, scope: !4476, inlinedAt: !4549)
!4554 = !DILocation(line: 0, scope: !4476, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 207, column: 22, scope: !4485)
!4556 = !DILocation(line: 0, scope: !4487, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 66, column: 12, scope: !4476, inlinedAt: !4555)
!4558 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4557)
!4559 = !DILocation(line: 66, column: 9, scope: !4476, inlinedAt: !4555)
!4560 = !DILocation(line: 0, scope: !4487, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 211, column: 22, scope: !4485)
!4562 = !DILocation(line: 50, column: 7, scope: !4496, inlinedAt: !4561)
!4563 = !DILocation(line: 212, column: 11, scope: !4485)
!4564 = !DILocation(line: 0, scope: !4485)
!4565 = !DILocation(line: 228, column: 10, scope: !4406)
!4566 = !DILocation(line: 229, column: 11, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4406, file: !4387, line: 229, column: 11)
!4568 = !DILocation(line: 229, column: 11, scope: !4406)
!4569 = !DILocation(line: 223, column: 16, scope: !4485)
!4570 = !DILocation(line: 224, column: 22, scope: !4485)
!4571 = !DILocation(line: 100, column: 11, scope: !4433)
!4572 = !DILocation(line: 92, column: 16, scope: !4386)
!4573 = !DILocation(line: 233, column: 8, scope: !4386)
!4574 = !DILocation(line: 234, column: 3, scope: !4386)
!4575 = !DILocation(line: 235, column: 1, scope: !4386)
!4576 = !DISubprogram(name: "strtoumax", scope: !4577, file: !4577, line: 301, type: !4578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!4577 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!875, !972, !4580, !83}
!4580 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1136)
!4581 = distinct !DISubprogram(name: "rpl_fopen", scope: !879, file: !879, line: 46, type: !4582, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4618)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!4584, !142, !142}
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !4586)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !4587)
!4587 = !{!4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4586, file: !206, line: 51, baseType: !83, size: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4586, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4586, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4586, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4586, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4586, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4586, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4586, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4586, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4586, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4586, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4586, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4586, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4586, file: !206, line: 70, baseType: !4602, size: 64, offset: 832)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4586, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4586, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4586, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4586, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4586, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4586, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4586, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4586, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4586, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4586, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4586, file: !206, line: 93, baseType: !4602, size: 64, offset: 1344)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4586, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4586, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4586, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4586, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624, !4628, !4630, !4631, !4636, !4639, !4640}
!4619 = !DILocalVariable(name: "filename", arg: 1, scope: !4581, file: !879, line: 46, type: !142)
!4620 = !DILocalVariable(name: "mode", arg: 2, scope: !4581, file: !879, line: 46, type: !142)
!4621 = !DILocalVariable(name: "open_direction", scope: !4581, file: !879, line: 54, type: !83)
!4622 = !DILocalVariable(name: "open_flags", scope: !4581, file: !879, line: 55, type: !83)
!4623 = !DILocalVariable(name: "open_flags_gnu", scope: !4581, file: !879, line: 57, type: !168)
!4624 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4581, file: !879, line: 59, type: !4625)
!4625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4626)
!4626 = !{!4627}
!4627 = !DISubrange(count: 81)
!4628 = !DILocalVariable(name: "p", scope: !4629, file: !879, line: 62, type: !142)
!4629 = distinct !DILexicalBlock(scope: !4581, file: !879, line: 61, column: 3)
!4630 = !DILocalVariable(name: "q", scope: !4629, file: !879, line: 64, type: !136)
!4631 = !DILocalVariable(name: "len", scope: !4632, file: !879, line: 128, type: !139)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !879, line: 127, column: 9)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !879, line: 68, column: 7)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !879, line: 67, column: 5)
!4635 = distinct !DILexicalBlock(scope: !4629, file: !879, line: 67, column: 5)
!4636 = !DILocalVariable(name: "fd", scope: !4637, file: !879, line: 199, type: !83)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !879, line: 198, column: 5)
!4638 = distinct !DILexicalBlock(scope: !4581, file: !879, line: 197, column: 7)
!4639 = !DILocalVariable(name: "fp", scope: !4637, file: !879, line: 204, type: !4584)
!4640 = !DILocalVariable(name: "saved_errno", scope: !4641, file: !879, line: 207, type: !83)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !879, line: 206, column: 9)
!4642 = distinct !DILexicalBlock(scope: !4637, file: !879, line: 205, column: 11)
!4643 = !DILocation(line: 0, scope: !4581)
!4644 = !DILocation(line: 59, column: 3, scope: !4581)
!4645 = !DILocation(line: 59, column: 8, scope: !4581)
!4646 = !DILocation(line: 0, scope: !4629)
!4647 = !DILocation(line: 67, column: 12, scope: !4634)
!4648 = !DILocation(line: 67, column: 15, scope: !4634)
!4649 = !DILocation(line: 67, column: 5, scope: !4635)
!4650 = !DILocation(line: 138, column: 8, scope: !4629)
!4651 = !DILocation(line: 197, column: 7, scope: !4581)
!4652 = !DILocation(line: 69, column: 9, scope: !4633)
!4653 = !DILocation(line: 74, column: 19, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4655, file: !879, line: 74, column: 17)
!4655 = distinct !DILexicalBlock(scope: !4633, file: !879, line: 70, column: 11)
!4656 = !DILocation(line: 74, column: 17, scope: !4655)
!4657 = !DILocation(line: 75, column: 17, scope: !4654)
!4658 = !DILocation(line: 75, column: 20, scope: !4654)
!4659 = !DILocation(line: 75, column: 15, scope: !4654)
!4660 = !DILocation(line: 80, column: 24, scope: !4655)
!4661 = !DILocation(line: 82, column: 19, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4655, file: !879, line: 82, column: 17)
!4663 = !DILocation(line: 82, column: 17, scope: !4655)
!4664 = !DILocation(line: 83, column: 17, scope: !4662)
!4665 = !DILocation(line: 83, column: 20, scope: !4662)
!4666 = !DILocation(line: 83, column: 15, scope: !4662)
!4667 = !DILocation(line: 88, column: 24, scope: !4655)
!4668 = !DILocation(line: 90, column: 19, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4655, file: !879, line: 90, column: 17)
!4670 = !DILocation(line: 90, column: 17, scope: !4655)
!4671 = !DILocation(line: 91, column: 17, scope: !4669)
!4672 = !DILocation(line: 91, column: 20, scope: !4669)
!4673 = !DILocation(line: 91, column: 15, scope: !4669)
!4674 = !DILocation(line: 100, column: 19, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4655, file: !879, line: 100, column: 17)
!4676 = !DILocation(line: 100, column: 17, scope: !4655)
!4677 = !DILocation(line: 101, column: 17, scope: !4675)
!4678 = !DILocation(line: 101, column: 20, scope: !4675)
!4679 = !DILocation(line: 101, column: 15, scope: !4675)
!4680 = !DILocation(line: 107, column: 19, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4655, file: !879, line: 107, column: 17)
!4682 = !DILocation(line: 107, column: 17, scope: !4655)
!4683 = !DILocation(line: 108, column: 17, scope: !4681)
!4684 = !DILocation(line: 108, column: 20, scope: !4681)
!4685 = !DILocation(line: 108, column: 15, scope: !4681)
!4686 = !DILocation(line: 113, column: 24, scope: !4655)
!4687 = !DILocation(line: 115, column: 13, scope: !4655)
!4688 = !DILocation(line: 117, column: 24, scope: !4655)
!4689 = !DILocation(line: 119, column: 13, scope: !4655)
!4690 = !DILocation(line: 128, column: 24, scope: !4632)
!4691 = !DILocation(line: 0, scope: !4632)
!4692 = !DILocation(line: 129, column: 48, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4632, file: !879, line: 129, column: 15)
!4694 = !DILocation(line: 129, column: 15, scope: !4632)
!4695 = !DILocalVariable(name: "__dest", arg: 1, scope: !4696, file: !1284, line: 26, type: !1598)
!4696 = distinct !DISubprogram(name: "memcpy", scope: !1284, file: !1284, line: 26, type: !1596, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4697)
!4697 = !{!4695, !4698, !4699}
!4698 = !DILocalVariable(name: "__src", arg: 2, scope: !4696, file: !1284, line: 26, type: !1130)
!4699 = !DILocalVariable(name: "__len", arg: 3, scope: !4696, file: !1284, line: 26, type: !139)
!4700 = !DILocation(line: 0, scope: !4696, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 131, column: 11, scope: !4632)
!4702 = !DILocation(line: 29, column: 10, scope: !4696, inlinedAt: !4701)
!4703 = !DILocation(line: 132, column: 13, scope: !4632)
!4704 = !DILocation(line: 135, column: 9, scope: !4633)
!4705 = !DILocation(line: 67, column: 25, scope: !4634)
!4706 = distinct !{!4706, !4649, !4707, !1029}
!4707 = !DILocation(line: 136, column: 7, scope: !4635)
!4708 = !DILocation(line: 197, column: 7, scope: !4638)
!4709 = !DILocation(line: 199, column: 47, scope: !4637)
!4710 = !DILocation(line: 199, column: 16, scope: !4637)
!4711 = !DILocation(line: 0, scope: !4637)
!4712 = !DILocation(line: 201, column: 14, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4637, file: !879, line: 201, column: 11)
!4714 = !DILocation(line: 201, column: 11, scope: !4637)
!4715 = !DILocation(line: 204, column: 18, scope: !4637)
!4716 = !DILocation(line: 205, column: 14, scope: !4642)
!4717 = !DILocation(line: 205, column: 11, scope: !4637)
!4718 = !DILocation(line: 207, column: 29, scope: !4641)
!4719 = !DILocation(line: 0, scope: !4641)
!4720 = !DILocation(line: 208, column: 11, scope: !4641)
!4721 = !DILocation(line: 209, column: 17, scope: !4641)
!4722 = !DILocation(line: 210, column: 9, scope: !4641)
!4723 = !DILocalVariable(name: "filename", arg: 1, scope: !4724, file: !879, line: 30, type: !142)
!4724 = distinct !DISubprogram(name: "orig_fopen", scope: !879, file: !879, line: 30, type: !4582, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4725)
!4725 = !{!4723, !4726}
!4726 = !DILocalVariable(name: "mode", arg: 2, scope: !4724, file: !879, line: 30, type: !142)
!4727 = !DILocation(line: 0, scope: !4724, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 219, column: 10, scope: !4581)
!4729 = !DILocation(line: 32, column: 10, scope: !4724, inlinedAt: !4728)
!4730 = !DILocation(line: 219, column: 3, scope: !4581)
!4731 = !DILocation(line: 220, column: 1, scope: !4581)
!4732 = !DISubprogram(name: "open", scope: !1921, file: !1921, line: 181, type: !4733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!83, !142, !83, null}
!4735 = !DISubprogram(name: "fdopen", scope: !977, file: !977, line: 293, type: !4736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!4584, !83, !142}
!4738 = !DISubprogram(name: "close", scope: !1786, file: !1786, line: 358, type: !1698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!4739 = !DISubprogram(name: "fopen", scope: !977, file: !977, line: 258, type: !4740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!4584, !972, !972}
!4742 = distinct !DISubprogram(name: "close_stream", scope: !881, file: !881, line: 55, type: !4743, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4779)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!83, !4745}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !204, line: 7, baseType: !4747)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !206, line: 49, size: 1728, elements: !4748)
!4748 = !{!4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4747, file: !206, line: 51, baseType: !83, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4747, file: !206, line: 54, baseType: !136, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4747, file: !206, line: 55, baseType: !136, size: 64, offset: 128)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4747, file: !206, line: 56, baseType: !136, size: 64, offset: 192)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4747, file: !206, line: 57, baseType: !136, size: 64, offset: 256)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4747, file: !206, line: 58, baseType: !136, size: 64, offset: 320)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4747, file: !206, line: 59, baseType: !136, size: 64, offset: 384)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4747, file: !206, line: 60, baseType: !136, size: 64, offset: 448)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4747, file: !206, line: 61, baseType: !136, size: 64, offset: 512)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4747, file: !206, line: 64, baseType: !136, size: 64, offset: 576)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4747, file: !206, line: 65, baseType: !136, size: 64, offset: 640)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4747, file: !206, line: 66, baseType: !136, size: 64, offset: 704)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4747, file: !206, line: 68, baseType: !221, size: 64, offset: 768)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4747, file: !206, line: 70, baseType: !4763, size: 64, offset: 832)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4747, file: !206, line: 72, baseType: !83, size: 32, offset: 896)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4747, file: !206, line: 73, baseType: !83, size: 32, offset: 928)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4747, file: !206, line: 74, baseType: !228, size: 64, offset: 960)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4747, file: !206, line: 77, baseType: !138, size: 16, offset: 1024)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4747, file: !206, line: 78, baseType: !233, size: 8, offset: 1040)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4747, file: !206, line: 79, baseType: !51, size: 8, offset: 1048)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4747, file: !206, line: 81, baseType: !236, size: 64, offset: 1088)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4747, file: !206, line: 89, baseType: !239, size: 64, offset: 1152)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4747, file: !206, line: 91, baseType: !241, size: 64, offset: 1216)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4747, file: !206, line: 92, baseType: !244, size: 64, offset: 1280)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4747, file: !206, line: 93, baseType: !4763, size: 64, offset: 1344)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4747, file: !206, line: 94, baseType: !137, size: 64, offset: 1408)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4747, file: !206, line: 95, baseType: !139, size: 64, offset: 1472)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4747, file: !206, line: 96, baseType: !83, size: 32, offset: 1536)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4747, file: !206, line: 98, baseType: !251, size: 160, offset: 1568)
!4779 = !{!4780, !4781, !4783, !4784}
!4780 = !DILocalVariable(name: "stream", arg: 1, scope: !4742, file: !881, line: 55, type: !4745)
!4781 = !DILocalVariable(name: "some_pending", scope: !4742, file: !881, line: 57, type: !4782)
!4782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!4783 = !DILocalVariable(name: "prev_fail", scope: !4742, file: !881, line: 58, type: !4782)
!4784 = !DILocalVariable(name: "fclose_fail", scope: !4742, file: !881, line: 59, type: !4782)
!4785 = !DILocation(line: 0, scope: !4742)
!4786 = !DILocation(line: 57, column: 30, scope: !4742)
!4787 = !DILocalVariable(name: "__stream", arg: 1, scope: !4788, file: !1265, line: 135, type: !4745)
!4788 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1265, file: !1265, line: 135, type: !4743, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4789)
!4789 = !{!4787}
!4790 = !DILocation(line: 0, scope: !4788, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 58, column: 27, scope: !4742)
!4792 = !DILocation(line: 137, column: 10, scope: !4788, inlinedAt: !4791)
!4793 = !DILocation(line: 58, column: 43, scope: !4742)
!4794 = !DILocation(line: 59, column: 29, scope: !4742)
!4795 = !DILocation(line: 59, column: 45, scope: !4742)
!4796 = !DILocation(line: 69, column: 17, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4742, file: !881, line: 69, column: 7)
!4798 = !DILocation(line: 57, column: 50, scope: !4742)
!4799 = !DILocation(line: 69, column: 33, scope: !4797)
!4800 = !DILocation(line: 69, column: 53, scope: !4797)
!4801 = !DILocation(line: 69, column: 59, scope: !4797)
!4802 = !DILocation(line: 69, column: 7, scope: !4742)
!4803 = !DILocation(line: 71, column: 11, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4797, file: !881, line: 70, column: 5)
!4805 = !DILocation(line: 72, column: 9, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4804, file: !881, line: 71, column: 11)
!4807 = !DILocation(line: 72, column: 15, scope: !4806)
!4808 = !DILocation(line: 77, column: 1, scope: !4742)
!4809 = !DISubprogram(name: "__fpending", scope: !2129, file: !2129, line: 75, type: !4810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!139, !4745}
!4812 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !787, file: !787, line: 100, type: !4813, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4816)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!139, !1676, !142, !139, !4815}
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!4816 = !{!4817, !4818, !4819, !4820, !4821}
!4817 = !DILocalVariable(name: "pwc", arg: 1, scope: !4812, file: !787, line: 100, type: !1676)
!4818 = !DILocalVariable(name: "s", arg: 2, scope: !4812, file: !787, line: 100, type: !142)
!4819 = !DILocalVariable(name: "n", arg: 3, scope: !4812, file: !787, line: 100, type: !139)
!4820 = !DILocalVariable(name: "ps", arg: 4, scope: !4812, file: !787, line: 100, type: !4815)
!4821 = !DILocalVariable(name: "ret", scope: !4812, file: !787, line: 130, type: !139)
!4822 = !DILocation(line: 0, scope: !4812)
!4823 = !DILocation(line: 105, column: 9, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4812, file: !787, line: 105, column: 7)
!4825 = !DILocation(line: 105, column: 7, scope: !4812)
!4826 = !DILocation(line: 117, column: 10, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4812, file: !787, line: 117, column: 7)
!4828 = !DILocation(line: 117, column: 7, scope: !4812)
!4829 = !DILocation(line: 130, column: 16, scope: !4812)
!4830 = !DILocation(line: 135, column: 11, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4812, file: !787, line: 135, column: 7)
!4832 = !DILocation(line: 135, column: 25, scope: !4831)
!4833 = !DILocation(line: 135, column: 30, scope: !4831)
!4834 = !DILocation(line: 135, column: 7, scope: !4812)
!4835 = !DILocalVariable(name: "ps", arg: 1, scope: !4836, file: !2368, line: 1135, type: !4815)
!4836 = distinct !DISubprogram(name: "mbszero", scope: !2368, file: !2368, line: 1135, type: !4837, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4839)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{null, !4815}
!4839 = !{!4835}
!4840 = !DILocation(line: 0, scope: !4836, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 137, column: 5, scope: !4831)
!4842 = !DILocalVariable(name: "__dest", arg: 1, scope: !4843, file: !1284, line: 57, type: !137)
!4843 = distinct !DISubprogram(name: "memset", scope: !1284, file: !1284, line: 57, type: !2377, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4844)
!4844 = !{!4842, !4845, !4846}
!4845 = !DILocalVariable(name: "__ch", arg: 2, scope: !4843, file: !1284, line: 57, type: !83)
!4846 = !DILocalVariable(name: "__len", arg: 3, scope: !4843, file: !1284, line: 57, type: !139)
!4847 = !DILocation(line: 0, scope: !4843, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 1137, column: 3, scope: !4836, inlinedAt: !4841)
!4849 = !DILocation(line: 59, column: 10, scope: !4843, inlinedAt: !4848)
!4850 = !DILocation(line: 137, column: 5, scope: !4831)
!4851 = !DILocation(line: 138, column: 11, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4812, file: !787, line: 138, column: 7)
!4853 = !DILocation(line: 138, column: 7, scope: !4812)
!4854 = !DILocation(line: 139, column: 5, scope: !4852)
!4855 = !DILocation(line: 143, column: 26, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4812, file: !787, line: 143, column: 7)
!4857 = !DILocation(line: 143, column: 41, scope: !4856)
!4858 = !DILocation(line: 143, column: 7, scope: !4812)
!4859 = !DILocation(line: 145, column: 15, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !787, line: 145, column: 11)
!4861 = distinct !DILexicalBlock(scope: !4856, file: !787, line: 144, column: 5)
!4862 = !DILocation(line: 145, column: 11, scope: !4861)
!4863 = !DILocation(line: 146, column: 32, scope: !4860)
!4864 = !DILocation(line: 146, column: 16, scope: !4860)
!4865 = !DILocation(line: 146, column: 14, scope: !4860)
!4866 = !DILocation(line: 146, column: 9, scope: !4860)
!4867 = !DILocation(line: 286, column: 1, scope: !4812)
!4868 = !DISubprogram(name: "mbsinit", scope: !1722, file: !1722, line: 293, type: !4869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !920)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!83, !4871}
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!4873 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !883, file: !883, line: 27, type: !3854, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4874)
!4874 = !{!4875, !4876, !4877, !4878}
!4875 = !DILocalVariable(name: "ptr", arg: 1, scope: !4873, file: !883, line: 27, type: !137)
!4876 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4873, file: !883, line: 27, type: !139)
!4877 = !DILocalVariable(name: "size", arg: 3, scope: !4873, file: !883, line: 27, type: !139)
!4878 = !DILocalVariable(name: "nbytes", scope: !4873, file: !883, line: 29, type: !139)
!4879 = !DILocation(line: 0, scope: !4873)
!4880 = !DILocation(line: 30, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4873, file: !883, line: 30, column: 7)
!4882 = !DILocalVariable(name: "ptr", arg: 1, scope: !4883, file: !3946, line: 2057, type: !137)
!4883 = distinct !DISubprogram(name: "rpl_realloc", scope: !3946, file: !3946, line: 2057, type: !3938, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4884)
!4884 = !{!4882, !4885}
!4885 = !DILocalVariable(name: "size", arg: 2, scope: !4883, file: !3946, line: 2057, type: !139)
!4886 = !DILocation(line: 0, scope: !4883, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 37, column: 10, scope: !4873)
!4888 = !DILocation(line: 2059, column: 24, scope: !4883, inlinedAt: !4887)
!4889 = !DILocation(line: 2059, column: 10, scope: !4883, inlinedAt: !4887)
!4890 = !DILocation(line: 37, column: 3, scope: !4873)
!4891 = !DILocation(line: 32, column: 7, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4881, file: !883, line: 31, column: 5)
!4893 = !DILocation(line: 32, column: 13, scope: !4892)
!4894 = !DILocation(line: 33, column: 7, scope: !4892)
!4895 = !DILocation(line: 38, column: 1, scope: !4873)
!4896 = distinct !DISubprogram(name: "hard_locale", scope: !805, file: !805, line: 28, type: !4897, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4899)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!168, !83}
!4899 = !{!4900, !4901}
!4900 = !DILocalVariable(name: "category", arg: 1, scope: !4896, file: !805, line: 28, type: !83)
!4901 = !DILocalVariable(name: "locale", scope: !4896, file: !805, line: 30, type: !4902)
!4902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4903)
!4903 = !{!4904}
!4904 = !DISubrange(count: 257)
!4905 = !DILocation(line: 0, scope: !4896)
!4906 = !DILocation(line: 30, column: 3, scope: !4896)
!4907 = !DILocation(line: 30, column: 8, scope: !4896)
!4908 = !DILocation(line: 32, column: 7, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4896, file: !805, line: 32, column: 7)
!4910 = !DILocation(line: 32, column: 7, scope: !4896)
!4911 = !DILocalVariable(name: "__s1", arg: 1, scope: !4912, file: !995, line: 1359, type: !142)
!4912 = distinct !DISubprogram(name: "streq", scope: !995, file: !995, line: 1359, type: !996, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4913)
!4913 = !{!4911, !4914}
!4914 = !DILocalVariable(name: "__s2", arg: 2, scope: !4912, file: !995, line: 1359, type: !142)
!4915 = !DILocation(line: 0, scope: !4912, inlinedAt: !4916)
!4916 = distinct !DILocation(line: 35, column: 9, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4896, file: !805, line: 35, column: 7)
!4918 = !DILocation(line: 1361, column: 11, scope: !4912, inlinedAt: !4916)
!4919 = !DILocation(line: 35, column: 29, scope: !4917)
!4920 = !DILocation(line: 0, scope: !4912, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 35, column: 32, scope: !4917)
!4922 = !DILocation(line: 1361, column: 11, scope: !4912, inlinedAt: !4921)
!4923 = !DILocation(line: 1361, column: 10, scope: !4912, inlinedAt: !4921)
!4924 = !DILocation(line: 35, column: 7, scope: !4896)
!4925 = !DILocation(line: 46, column: 3, scope: !4896)
!4926 = !DILocation(line: 47, column: 1, scope: !4896)
!4927 = distinct !DISubprogram(name: "setlocale_null_r", scope: !890, file: !890, line: 154, type: !4928, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !889, retainedNodes: !4930)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!83, !83, !136, !139}
!4930 = !{!4931, !4932, !4933}
!4931 = !DILocalVariable(name: "category", arg: 1, scope: !4927, file: !890, line: 154, type: !83)
!4932 = !DILocalVariable(name: "buf", arg: 2, scope: !4927, file: !890, line: 154, type: !136)
!4933 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4927, file: !890, line: 154, type: !139)
!4934 = !DILocation(line: 0, scope: !4927)
!4935 = !DILocation(line: 159, column: 10, scope: !4927)
!4936 = !DILocation(line: 159, column: 3, scope: !4927)
!4937 = distinct !DISubprogram(name: "setlocale_null", scope: !890, file: !890, line: 186, type: !4938, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !889, retainedNodes: !4940)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!142, !83}
!4940 = !{!4941}
!4941 = !DILocalVariable(name: "category", arg: 1, scope: !4937, file: !890, line: 186, type: !83)
!4942 = !DILocation(line: 0, scope: !4937)
!4943 = !DILocation(line: 189, column: 10, scope: !4937)
!4944 = !DILocation(line: 189, column: 3, scope: !4937)
!4945 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !892, file: !892, line: 35, type: !4938, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !4946)
!4946 = !{!4947, !4948}
!4947 = !DILocalVariable(name: "category", arg: 1, scope: !4945, file: !892, line: 35, type: !83)
!4948 = !DILocalVariable(name: "result", scope: !4945, file: !892, line: 37, type: !142)
!4949 = !DILocation(line: 0, scope: !4945)
!4950 = !DILocation(line: 37, column: 24, scope: !4945)
!4951 = !DILocation(line: 62, column: 3, scope: !4945)
!4952 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !892, file: !892, line: 66, type: !4928, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !4953)
!4953 = !{!4954, !4955, !4956, !4957, !4958}
!4954 = !DILocalVariable(name: "category", arg: 1, scope: !4952, file: !892, line: 66, type: !83)
!4955 = !DILocalVariable(name: "buf", arg: 2, scope: !4952, file: !892, line: 66, type: !136)
!4956 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4952, file: !892, line: 66, type: !139)
!4957 = !DILocalVariable(name: "result", scope: !4952, file: !892, line: 111, type: !142)
!4958 = !DILocalVariable(name: "length", scope: !4959, file: !892, line: 125, type: !139)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !892, line: 124, column: 5)
!4960 = distinct !DILexicalBlock(scope: !4952, file: !892, line: 113, column: 7)
!4961 = !DILocation(line: 0, scope: !4952)
!4962 = !DILocation(line: 0, scope: !4945, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 111, column: 24, scope: !4952)
!4964 = !DILocation(line: 37, column: 24, scope: !4945, inlinedAt: !4963)
!4965 = !DILocation(line: 113, column: 14, scope: !4960)
!4966 = !DILocation(line: 113, column: 7, scope: !4952)
!4967 = !DILocation(line: 116, column: 19, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !892, line: 116, column: 11)
!4969 = distinct !DILexicalBlock(scope: !4960, file: !892, line: 114, column: 5)
!4970 = !DILocation(line: 116, column: 11, scope: !4969)
!4971 = !DILocation(line: 120, column: 16, scope: !4968)
!4972 = !DILocation(line: 120, column: 9, scope: !4968)
!4973 = !DILocation(line: 125, column: 23, scope: !4959)
!4974 = !DILocation(line: 0, scope: !4959)
!4975 = !DILocation(line: 126, column: 18, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4959, file: !892, line: 126, column: 11)
!4977 = !DILocation(line: 126, column: 11, scope: !4959)
!4978 = !DILocation(line: 128, column: 39, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4976, file: !892, line: 127, column: 9)
!4980 = !DILocalVariable(name: "__dest", arg: 1, scope: !4981, file: !1284, line: 26, type: !1598)
!4981 = distinct !DISubprogram(name: "memcpy", scope: !1284, file: !1284, line: 26, type: !1596, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !4982)
!4982 = !{!4980, !4983, !4984}
!4983 = !DILocalVariable(name: "__src", arg: 2, scope: !4981, file: !1284, line: 26, type: !1130)
!4984 = !DILocalVariable(name: "__len", arg: 3, scope: !4981, file: !1284, line: 26, type: !139)
!4985 = !DILocation(line: 0, scope: !4981, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 128, column: 11, scope: !4979)
!4987 = !DILocation(line: 29, column: 10, scope: !4981, inlinedAt: !4986)
!4988 = !DILocation(line: 129, column: 11, scope: !4979)
!4989 = !DILocation(line: 133, column: 23, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !892, line: 133, column: 15)
!4991 = distinct !DILexicalBlock(scope: !4976, file: !892, line: 132, column: 9)
!4992 = !DILocation(line: 133, column: 15, scope: !4991)
!4993 = !DILocation(line: 138, column: 44, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !892, line: 134, column: 13)
!4995 = !DILocation(line: 0, scope: !4981, inlinedAt: !4996)
!4996 = distinct !DILocation(line: 138, column: 15, scope: !4994)
!4997 = !DILocation(line: 29, column: 10, scope: !4981, inlinedAt: !4996)
!4998 = !DILocation(line: 139, column: 15, scope: !4994)
!4999 = !DILocation(line: 139, column: 32, scope: !4994)
!5000 = !DILocation(line: 140, column: 13, scope: !4994)
!5001 = !DILocation(line: 0, scope: !4960)
!5002 = !DILocation(line: 145, column: 1, scope: !4952)
