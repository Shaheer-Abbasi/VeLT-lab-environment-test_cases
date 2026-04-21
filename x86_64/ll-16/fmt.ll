; ModuleID = 'src/fmt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.Word = type { ptr, i32, i32, i8, i32, i64, ptr }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: %s [-WIDTH] [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [129 x i8] c"Reformat each paragraph in the FILE(s), writing to standard output.\0AThe option -WIDTH is an abbreviated form of --width=DIGITS.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [71 x i8] c"  -c, --crown-margin\0A         preserve indentation of first two lines\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [128 x i8] c"  -p, --prefix=STRING\0A         reformat only lines beginning with STRING,\0A         reattaching the prefix to reformatted lines\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [65 x i8] c"  -s, --split-only\0A         split long lines, but do not refill\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [83 x i8] c"  -t, --tagged-paragraph\0A         indentation of first line different from second\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [79 x i8] c"  -u, --uniform-spacing\0A         one space between words, two after sentences\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [73 x i8] c"  -w, --width=WIDTH\0A         maximum line width (default of 75 columns)\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [66 x i8] c"  -g, --goal=WIDTH\0A         goal width (default of 93% of width)\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !67
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !77
@.str.16 = private unnamed_addr constant [21 x i8] c"0123456789cstuw:p:g:\00", align 1, !dbg !82
@long_options = internal constant [10 x %struct.option] [%struct.option { ptr @.str.63, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.66, i32 0, ptr null, i32 116 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 117 }, %struct.option { ptr @.str.68, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 103 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !87
@.str.17 = private unnamed_addr constant [94 x i8] c"invalid option -- %c; -WIDTH is recognized only when it is the first\0Aoption; use -w N instead\00", align 1, !dbg !157
@crown = internal unnamed_addr global i1 false, align 1, !dbg !503
@split = internal unnamed_addr global i1 false, align 1, !dbg !504
@tagged = internal unnamed_addr global i1 false, align 1, !dbg !505
@uniform = internal unnamed_addr global i1 false, align 1, !dbg !506
@optarg = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !162
@.str.19 = private unnamed_addr constant [14 x i8] c"Ross Paterson\00", align 1, !dbg !167
@.str.20 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1, !dbg !169
@max_width = internal unnamed_addr global i32 75, align 4, !dbg !425
@goal_width = internal unnamed_addr global i32 0, align 4, !dbg !202
@optind = external local_unnamed_addr global i32, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !171
@.str.22 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !176
@.str.23 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1, !dbg !178
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !183
@.str.25 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1, !dbg !188
@.str.26 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !204
@.str.27 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !209
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !214
@.str.28 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !295
@.str.29 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !300
@.str.30 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !302
@.str.31 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !304
@.str.45 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !341
@.str.46 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !343
@.str.47 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !345
@.str.48 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !350
@.str.49 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !355
@.str.50 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !360
@.str.51 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !365
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !367
@.str.53 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !369
@.str.54 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !371
@.str.58 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !385
@.str.59 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !387
@.str.60 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !389
@.str.61 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !391
@.str.62 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !396
@.str.63 = private unnamed_addr constant [13 x i8] c"crown-margin\00", align 1, !dbg !401
@.str.64 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1, !dbg !406
@.str.65 = private unnamed_addr constant [11 x i8] c"split-only\00", align 1, !dbg !408
@.str.66 = private unnamed_addr constant [17 x i8] c"tagged-paragraph\00", align 1, !dbg !413
@.str.67 = private unnamed_addr constant [16 x i8] c"uniform-spacing\00", align 1, !dbg !415
@.str.68 = private unnamed_addr constant [6 x i8] c"width\00", align 1, !dbg !417
@.str.69 = private unnamed_addr constant [5 x i8] c"goal\00", align 1, !dbg !419
@.str.70 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !421
@.str.71 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !423
@prefix_lead_space = internal unnamed_addr global i32 0, align 4, !dbg !427
@prefix = internal unnamed_addr global ptr @.str.13, align 8, !dbg !429
@prefix_full_length = internal unnamed_addr global i32 0, align 4, !dbg !431
@prefix_length = internal unnamed_addr global i32 0, align 4, !dbg !433
@tabs = internal unnamed_addr global i1 false, align 1, !dbg !507
@other_indent = internal unnamed_addr global i32 0, align 4, !dbg !441
@next_char = internal unnamed_addr global i32 0, align 4, !dbg !447
@word_limit = internal unnamed_addr global ptr null, align 8, !dbg !491
@.str.72 = private unnamed_addr constant [11 x i8] c"read error\00", align 1, !dbg !435
@.str.73 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1, !dbg !437
@in_column = internal unnamed_addr global i32 0, align 4, !dbg !443
@next_prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !445
@last_line_length = internal unnamed_addr global i32 0, align 4, !dbg !449
@prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !453
@first_indent = internal unnamed_addr global i32 0, align 4, !dbg !455
@parabuf = internal global [5000 x i8] zeroinitializer, align 16, !dbg !457
@wptr = internal unnamed_addr global ptr null, align 8, !dbg !462
@unused_word_type = internal global [1000 x %struct.Word] zeroinitializer, align 16, !dbg !464
@out_column = internal unnamed_addr global i32 0, align 4, !dbg !451
@.str.74 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !483
@.str.75 = private unnamed_addr constant [6 x i8] c"(['`\22\00", align 1, !dbg !485
@.str.76 = private unnamed_addr constant [5 x i8] c")]'\22\00", align 1, !dbg !487
@.str.32 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !508
@Version = dso_local local_unnamed_addr global ptr @.str.32, align 8, !dbg !511
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !515
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !528
@.str.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !520
@.str.1.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !522
@.str.2.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !524
@.str.3.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !526
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !530
@stderr = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !536
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !568
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !538
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !558
@.str.1.45 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !560
@.str.2.47 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !562
@.str.3.46 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !564
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !566
@.str.4.40 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !570
@.str.5.41 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !572
@.str.6.42 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !574
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !579
@.str.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !585
@.str.1.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !587
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !589
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !620
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !623
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !625
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !627
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !629
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !631
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !633
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !635
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !637
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !639
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 16, !dbg !641
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !652
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !666
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !704
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !711
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !668
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !713
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !656
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !673
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !675
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !677
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !679
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !681
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !717
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !720
@.str.2.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !722
@.str.3.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !724
@.str.4.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !726
@.str.5.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !728
@.str.6.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !733
@.str.7.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !738
@.str.8.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !740
@.str.9.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !742
@.str.10.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !747
@.str.11.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !752
@.str.12.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !757
@.str.13.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !759
@.str.14.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !764
@.str.15.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !769
@.str.16.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !774
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !779
@.str.18.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !781
@.str.19.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !783
@.str.20.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !785
@.str.21.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !787
@.str.22.125 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !789
@.str.23.126 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !791
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !796
@exit_failure = dso_local global i32 1, align 4, !dbg !804
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !810
@.str.1.137 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !813
@.str.2.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !815
@.str.142 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !817
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !820
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !823
@.str.1.158 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !838

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !942, metadata !DIExpression()), !dbg !943
  %2 = icmp eq i32 %0, 0, !dbg !944
  br i1 %2, label %8, label %3, !dbg !946

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !947, !tbaa !949
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !947
  %6 = load ptr, ptr @program_name, align 8, !dbg !947, !tbaa !949
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !947
  br label %44, !dbg !947

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !953
  %10 = load ptr, ptr @program_name, align 8, !dbg !953, !tbaa !949
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !953
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !955
  %13 = load ptr, ptr @stdout, align 8, !dbg !955, !tbaa !949
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !955
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #38, !dbg !956
  %16 = load ptr, ptr @stdout, align 8, !dbg !956, !tbaa !949
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !956
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #38, !dbg !960
  %19 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !949
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !960
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !963
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !963
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !964
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !964
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !965
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !965
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !966
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !966
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !967
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !967
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !968
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !968
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #38, !dbg !969
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !969
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #38, !dbg !970
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !970
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #38, !dbg !971
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !971
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !972, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !984, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr poison, metadata !984, metadata !DIExpression()), !dbg !989
  tail call void @emit_bug_reporting_address() #38, !dbg !991
  %30 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !992
  call void @llvm.dbg.value(metadata ptr %30, metadata !987, metadata !DIExpression()), !dbg !989
  %31 = icmp eq ptr %30, null, !dbg !993
  br i1 %31, label %39, label %32, !dbg !995

32:                                               ; preds = %8
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #39, !dbg !996
  %34 = icmp eq i32 %33, 0, !dbg !996
  br i1 %34, label %39, label %35, !dbg !997

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !998
  %37 = load ptr, ptr @stdout, align 8, !dbg !998, !tbaa !949
  %38 = tail call i32 @fputs_unlocked(ptr noundef %36, ptr noundef %37), !dbg !998
  br label %39, !dbg !1000

39:                                               ; preds = %8, %32, %35
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !984, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !988, metadata !DIExpression()), !dbg !989
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #38, !dbg !1001
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3) #38, !dbg !1001
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #38, !dbg !1002
  %43 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #38, !dbg !1002
  br label %44

44:                                               ; preds = %39, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1003
  unreachable, !dbg !1003
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1004 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1008 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1014 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1017 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !216 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr %0, metadata !221, metadata !DIExpression()), !dbg !1021
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1022, !tbaa !1023
  %3 = icmp eq i32 %2, -1, !dbg !1025
  br i1 %3, label %4, label %16, !dbg !1026

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.28) #38, !dbg !1027
  call void @llvm.dbg.value(metadata ptr %5, metadata !222, metadata !DIExpression()), !dbg !1028
  %6 = icmp eq ptr %5, null, !dbg !1029
  br i1 %6, label %14, label %7, !dbg !1030

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1031, !tbaa !1032
  %9 = icmp eq i8 %8, 0, !dbg !1031
  br i1 %9, label %14, label %10, !dbg !1033

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1034, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !1040, metadata !DIExpression()), !dbg !1041
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.29) #39, !dbg !1043
  %12 = icmp eq i32 %11, 0, !dbg !1044
  %13 = zext i1 %12 to i32, !dbg !1033
  br label %14, !dbg !1033

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1045, !tbaa !1023
  br label %16, !dbg !1046

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1047
  %18 = icmp eq i32 %17, 0, !dbg !1047
  br i1 %18, label %22, label %19, !dbg !1049

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !949
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1050
  br label %128, !dbg !1052

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !225, metadata !DIExpression()), !dbg !1021
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.30) #39, !dbg !1053
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1054
  call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !1021
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1055
  call void @llvm.dbg.value(metadata ptr %25, metadata !227, metadata !DIExpression()), !dbg !1021
  %26 = icmp eq ptr %25, null, !dbg !1056
  br i1 %26, label %58, label %27, !dbg !1057

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1058
  br i1 %28, label %58, label %29, !dbg !1059

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !228, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()), !dbg !1060
  %30 = icmp ult ptr %24, %25, !dbg !1061
  br i1 %30, label %31, label %52, !dbg !1062

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1021
  %33 = load ptr, ptr %32, align 8, !tbaa !949
  br label %34, !dbg !1062

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !228, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 %36, metadata !232, metadata !DIExpression()), !dbg !1060
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1063
  call void @llvm.dbg.value(metadata ptr %37, metadata !228, metadata !DIExpression()), !dbg !1060
  %38 = load i8, ptr %35, align 1, !dbg !1063, !tbaa !1032
  %39 = sext i8 %38 to i64, !dbg !1063
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1063
  %41 = load i16, ptr %40, align 2, !dbg !1063, !tbaa !1064
  %42 = freeze i16 %41, !dbg !1066
  %43 = lshr i16 %42, 13, !dbg !1066
  %44 = and i16 %43, 1, !dbg !1066
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %46, metadata !232, metadata !DIExpression()), !dbg !1060
  %47 = icmp ult ptr %37, %25, !dbg !1061
  %48 = icmp ult i64 %46, 2, !dbg !1068
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1068
  br i1 %49, label %34, label %50, !dbg !1062, !llvm.loop !1069

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1071
  br i1 %51, label %52, label %54, !dbg !1073

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1073

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1073
  call void @llvm.dbg.value(metadata i8 %57, metadata !225, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr %56, metadata !227, metadata !DIExpression()), !dbg !1021
  br label %58, !dbg !1074

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1021
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1021
  call void @llvm.dbg.value(metadata i8 %60, metadata !225, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr %59, metadata !227, metadata !DIExpression()), !dbg !1021
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.31) #39, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %61, metadata !233, metadata !DIExpression()), !dbg !1021
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1076
  call void @llvm.dbg.value(metadata ptr %62, metadata !234, metadata !DIExpression()), !dbg !1021
  br label %63, !dbg !1077

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1021
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1021
  call void @llvm.dbg.value(metadata i8 %65, metadata !225, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr %64, metadata !234, metadata !DIExpression()), !dbg !1021
  %66 = load i8, ptr %64, align 1, !dbg !1078, !tbaa !1032
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1079

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1080
  %69 = load i8, ptr %68, align 1, !dbg !1083, !tbaa !1032
  %70 = icmp eq i8 %69, 45, !dbg !1084
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1085
  br label %72, !dbg !1085

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1021
  call void @llvm.dbg.value(metadata i8 %73, metadata !225, metadata !DIExpression()), !dbg !1021
  %74 = tail call ptr @__ctype_b_loc() #41, !dbg !1086
  %75 = load ptr, ptr %74, align 8, !dbg !1086, !tbaa !949
  %76 = sext i8 %66 to i64, !dbg !1086
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1086
  %78 = load i16, ptr %77, align 2, !dbg !1086, !tbaa !1064
  %79 = and i16 %78, 8192, !dbg !1086
  %80 = icmp eq i16 %79, 0, !dbg !1086
  br i1 %80, label %96, label %81, !dbg !1088

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1089
  br i1 %82, label %98, label %83, !dbg !1092

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1093
  %85 = load i8, ptr %84, align 1, !dbg !1093, !tbaa !1032
  %86 = sext i8 %85 to i64, !dbg !1093
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1093
  %88 = load i16, ptr %87, align 2, !dbg !1093, !tbaa !1064
  %89 = and i16 %88, 8192, !dbg !1093
  %90 = icmp eq i16 %89, 0, !dbg !1093
  br i1 %90, label %91, label %98, !dbg !1094

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1095
  %93 = icmp ne i8 %92, 0, !dbg !1095
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1097
  br i1 %95, label %96, label %98, !dbg !1097

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %97, metadata !234, metadata !DIExpression()), !dbg !1021
  br label %63, !dbg !1077, !llvm.loop !1099

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1101
  %100 = load ptr, ptr @stdout, align 8, !dbg !1101, !tbaa !949
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1101
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1034, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !290, metadata !DIExpression()), !dbg !1021
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.45, i64 noundef 6) #39, !dbg !1122
  %103 = icmp eq i32 %102, 0, !dbg !1122
  br i1 %103, label %107, label %104, !dbg !1124

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.46, i64 noundef 9) #39, !dbg !1125
  %106 = icmp eq i32 %105, 0, !dbg !1125
  br i1 %106, label %107, label %110, !dbg !1126

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1127
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #38, !dbg !1127
  br label %113, !dbg !1129

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1130
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #38, !dbg !1130
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !949
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %114), !dbg !1132
  %116 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !949
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %116), !dbg !1133
  %118 = ptrtoint ptr %64 to i64, !dbg !1134
  %119 = sub i64 %118, %99, !dbg !1134
  %120 = load ptr, ptr @stdout, align 8, !dbg !1134, !tbaa !949
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1134
  %122 = load ptr, ptr @stdout, align 8, !dbg !1135, !tbaa !949
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %122), !dbg !1135
  %124 = load ptr, ptr @stdout, align 8, !dbg !1136, !tbaa !949
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %124), !dbg !1136
  %126 = load ptr, ptr @stdout, align 8, !dbg !1137, !tbaa !949
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1137
  br label %128, !dbg !1138

128:                                              ; preds = %113, %19
  ret void, !dbg !1138
}

; Function Attrs: nounwind
declare !dbg !1139 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1143 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1147 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1149 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1152 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1155 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1158 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1161 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1167 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1168 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1179, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %1, metadata !1180, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr null, metadata !1183, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr null, metadata !1184, metadata !DIExpression()), !dbg !1195
  %3 = load ptr, ptr %1, align 8, !dbg !1196, !tbaa !949
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1197
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.13) #38, !dbg !1198
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #38, !dbg !1199
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.14) #38, !dbg !1200
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1201
  %8 = icmp sgt i32 %0, 1, !dbg !1202
  br i1 %8, label %9, label %23, !dbg !1204

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1205
  %11 = load ptr, ptr %10, align 8, !dbg !1205, !tbaa !949
  %12 = load i8, ptr %11, align 1, !dbg !1205, !tbaa !1032
  %13 = icmp eq i8 %12, 45, !dbg !1206
  br i1 %13, label %14, label %23, !dbg !1207

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1208
  %16 = load i8, ptr %15, align 1, !dbg !1208, !tbaa !1032
  %17 = sext i8 %16 to i32, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %17, metadata !1209, metadata !DIExpression()), !dbg !1215
  %18 = add nsw i32 %17, -48, !dbg !1217
  %19 = icmp ult i32 %18, 10, !dbg !1217
  br i1 %19, label %20, label %23, !dbg !1218

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata ptr %15, metadata !1183, metadata !DIExpression()), !dbg !1195
  %21 = load ptr, ptr %1, align 8, !dbg !1219, !tbaa !949
  store ptr %21, ptr %10, align 8, !dbg !1221, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %10, metadata !1180, metadata !DIExpression()), !dbg !1195
  %22 = add nsw i32 %0, -1, !dbg !1222
  call void @llvm.dbg.value(metadata i32 %22, metadata !1179, metadata !DIExpression()), !dbg !1195
  br label %23, !dbg !1223

23:                                               ; preds = %20, %14, %9, %2
  %24 = phi ptr [ %15, %20 ], [ null, %14 ], [ null, %9 ], [ null, %2 ], !dbg !1195
  %25 = phi ptr [ %10, %20 ], [ %1, %14 ], [ %1, %9 ], [ %1, %2 ]
  %26 = phi i32 [ %22, %20 ], [ %0, %14 ], [ %0, %9 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !1179, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %25, metadata !1180, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %24, metadata !1183, metadata !DIExpression()), !dbg !1195
  br label %27, !dbg !1224

27:                                               ; preds = %44, %23
  %28 = phi ptr [ %45, %44 ], [ %24, %23 ]
  %29 = phi ptr [ %31, %44 ], [ null, %23 ]
  br label %30, !dbg !1224

30:                                               ; preds = %27, %46
  %31 = phi ptr [ %29, %27 ], [ %47, %46 ]
  br label %32, !dbg !1224

32:                                               ; preds = %79, %30
  call void @llvm.dbg.value(metadata ptr %31, metadata !1184, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %28, metadata !1183, metadata !DIExpression()), !dbg !1195
  %33 = tail call i32 @getopt_long(i32 noundef %26, ptr noundef nonnull %25, ptr noundef nonnull @.str.16, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1225
  call void @llvm.dbg.value(metadata i32 %33, metadata !1181, metadata !DIExpression()), !dbg !1195
  switch i32 %33, label %34 [
    i32 -1, label %85
    i32 99, label %40
    i32 115, label %41
    i32 116, label %42
    i32 117, label %43
    i32 119, label %44
    i32 103, label %46
    i32 112, label %48
    i32 -130, label %80
    i32 -131, label %81
  ], !dbg !1224

34:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %33, metadata !1209, metadata !DIExpression()), !dbg !1226
  %35 = add i32 %33, -48, !dbg !1230
  %36 = icmp ult i32 %35, 10, !dbg !1230
  br i1 %36, label %37, label %39, !dbg !1231

37:                                               ; preds = %34
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1232
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %38, i32 noundef %33) #38, !dbg !1232
  br label %39, !dbg !1232

39:                                               ; preds = %37, %34
  tail call void @usage(i32 noundef 1) #42, !dbg !1233
  unreachable, !dbg !1233

40:                                               ; preds = %32
  store i1 true, ptr @crown, align 1, !dbg !1234
  br label %79, !dbg !1235

41:                                               ; preds = %32
  store i1 true, ptr @split, align 1, !dbg !1236
  br label %79, !dbg !1237

42:                                               ; preds = %32
  store i1 true, ptr @tagged, align 1, !dbg !1238
  br label %79, !dbg !1239

43:                                               ; preds = %32
  store i1 true, ptr @uniform, align 1, !dbg !1240
  br label %79, !dbg !1241

44:                                               ; preds = %32
  %45 = load ptr, ptr @optarg, align 8, !dbg !1242, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %45, metadata !1183, metadata !DIExpression()), !dbg !1195
  br label %27, !dbg !1243, !llvm.loop !1244

46:                                               ; preds = %32
  %47 = load ptr, ptr @optarg, align 8, !dbg !1246, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %47, metadata !1184, metadata !DIExpression()), !dbg !1195
  br label %30, !dbg !1247, !llvm.loop !1244

48:                                               ; preds = %32
  %49 = load ptr, ptr @optarg, align 8, !dbg !1248, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %49, metadata !1249, metadata !DIExpression()), !dbg !1255
  store i32 0, ptr @prefix_lead_space, align 4, !dbg !1257, !tbaa !1023
  call void @llvm.dbg.value(metadata ptr %49, metadata !1249, metadata !DIExpression()), !dbg !1255
  %50 = load i8, ptr %49, align 1, !dbg !1258, !tbaa !1032
  %51 = icmp eq i8 %50, 32, !dbg !1259
  br i1 %51, label %52, label %60, !dbg !1260

52:                                               ; preds = %48, %52
  %53 = phi ptr [ %56, %52 ], [ %49, %48 ]
  %54 = phi i32 [ %55, %52 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata ptr %53, metadata !1249, metadata !DIExpression()), !dbg !1255
  %55 = add nuw nsw i32 %54, 1, !dbg !1261
  %56 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1263
  call void @llvm.dbg.value(metadata ptr %56, metadata !1249, metadata !DIExpression()), !dbg !1255
  %57 = load i8, ptr %56, align 1, !dbg !1258, !tbaa !1032
  %58 = icmp eq i8 %57, 32, !dbg !1259
  br i1 %58, label %52, label %59, !dbg !1260, !llvm.loop !1264

59:                                               ; preds = %52
  store i32 %55, ptr @prefix_lead_space, align 4, !dbg !1261, !tbaa !1023
  br label %60, !dbg !1260

60:                                               ; preds = %59, %48
  %61 = phi ptr [ %56, %59 ], [ %49, %48 ]
  store ptr %61, ptr @prefix, align 8, !dbg !1266, !tbaa !949
  %62 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #39, !dbg !1267
  %63 = trunc i64 %62 to i32, !dbg !1267
  store i32 %63, ptr @prefix_full_length, align 4, !dbg !1268, !tbaa !1023
  %64 = shl i64 %62, 32, !dbg !1269
  %65 = ashr exact i64 %64, 32, !dbg !1269
  %66 = getelementptr inbounds i8, ptr %61, i64 %65, !dbg !1269
  call void @llvm.dbg.value(metadata ptr %66, metadata !1254, metadata !DIExpression()), !dbg !1255
  br label %67, !dbg !1270

67:                                               ; preds = %70, %60
  %68 = phi ptr [ %66, %60 ], [ %71, %70 ], !dbg !1255
  call void @llvm.dbg.value(metadata ptr %68, metadata !1254, metadata !DIExpression()), !dbg !1255
  %69 = icmp ugt ptr %68, %61, !dbg !1271
  br i1 %69, label %70, label %74, !dbg !1272

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, ptr %68, i64 -1, !dbg !1273
  %72 = load i8, ptr %71, align 1, !dbg !1273, !tbaa !1032
  %73 = icmp eq i8 %72, 32, !dbg !1274
  br i1 %73, label %67, label %74, !dbg !1270, !llvm.loop !1275

74:                                               ; preds = %67, %70
  store i8 0, ptr %68, align 1, !dbg !1277, !tbaa !1032
  %75 = ptrtoint ptr %68 to i64, !dbg !1278
  %76 = ptrtoint ptr %61 to i64, !dbg !1278
  %77 = sub i64 %75, %76, !dbg !1278
  %78 = trunc i64 %77 to i32, !dbg !1279
  store i32 %78, ptr @prefix_length, align 4, !dbg !1280, !tbaa !1023
  br label %79, !dbg !1281

79:                                               ; preds = %74, %43, %42, %41, %40
  br label %32, !dbg !1195, !llvm.loop !1244

80:                                               ; preds = %32
  tail call void @usage(i32 noundef 0) #42, !dbg !1282
  unreachable, !dbg !1282

81:                                               ; preds = %32
  %82 = load ptr, ptr @stdout, align 8, !dbg !1283, !tbaa !949
  %83 = load ptr, ptr @Version, align 8, !dbg !1283, !tbaa !949
  %84 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #38, !dbg !1283
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %82, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef %83, ptr noundef %84, ptr noundef null) #38, !dbg !1283
  tail call void @exit(i32 noundef 0) #40, !dbg !1283
  unreachable, !dbg !1283

85:                                               ; preds = %32
  %86 = icmp eq ptr %28, null, !dbg !1284
  br i1 %86, label %91, label %87, !dbg !1286

87:                                               ; preds = %85
  %88 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !1287
  %89 = tail call i64 @xnumtoumax(ptr noundef nonnull %28, i32 noundef 10, i64 noundef 0, i64 noundef 2500, ptr noundef nonnull @.str.13, ptr noundef %88, i32 noundef 0, i32 noundef 8) #38, !dbg !1289
  %90 = trunc i64 %89 to i32, !dbg !1289
  store i32 %90, ptr @max_width, align 4, !dbg !1290, !tbaa !1023
  br label %91, !dbg !1291

91:                                               ; preds = %87, %85
  %92 = icmp eq ptr %31, null, !dbg !1292
  %93 = load i32, ptr @max_width, align 4, !dbg !1294, !tbaa !1023
  br i1 %92, label %101, label %94, !dbg !1295

94:                                               ; preds = %91
  %95 = sext i32 %93 to i64, !dbg !1296
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !1298
  %97 = tail call i64 @xdectoumax(ptr noundef nonnull %31, i64 noundef 0, i64 noundef %95, ptr noundef nonnull @.str.13, ptr noundef %96, i32 noundef 0) #38, !dbg !1299
  %98 = trunc i64 %97 to i32, !dbg !1299
  store i32 %98, ptr @goal_width, align 4, !dbg !1300, !tbaa !1023
  br i1 %86, label %99, label %104, !dbg !1301

99:                                               ; preds = %94
  %100 = add nsw i32 %98, 10, !dbg !1302
  store i32 %100, ptr @max_width, align 4, !dbg !1304, !tbaa !1023
  br label %104, !dbg !1305

101:                                              ; preds = %91
  %102 = mul nsw i32 %93, 187, !dbg !1306
  %103 = sdiv i32 %102, 200, !dbg !1308
  store i32 %103, ptr @goal_width, align 4, !dbg !1309, !tbaa !1023
  br label %104

104:                                              ; preds = %94, %99, %101
  call void @llvm.dbg.value(metadata i8 0, metadata !1185, metadata !DIExpression()), !dbg !1195
  %105 = load i32, ptr @optind, align 4, !dbg !1310, !tbaa !1023
  %106 = icmp eq i32 %105, %26, !dbg !1311
  br i1 %106, label %109, label %107, !dbg !1312

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 0, metadata !1185, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1195
  %108 = icmp slt i32 %105, %26, !dbg !1313
  br i1 %108, label %113, label %158, !dbg !1314

109:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 1, metadata !1185, metadata !DIExpression()), !dbg !1195
  %110 = load ptr, ptr @stdin, align 8, !dbg !1315, !tbaa !949
  %111 = tail call fastcc zeroext i1 @fmt(ptr noundef %110, ptr noundef nonnull @.str.21), !dbg !1317
  %112 = zext i1 %111 to i8, !dbg !1318
  call void @llvm.dbg.value(metadata i8 %112, metadata !1182, metadata !DIExpression()), !dbg !1195
  br label %149, !dbg !1319

113:                                              ; preds = %107, %139
  %114 = phi i32 [ %144, %139 ], [ %105, %107 ]
  %115 = phi i8 [ %141, %139 ], [ 0, %107 ]
  %116 = phi i8 [ %142, %139 ], [ 1, %107 ]
  call void @llvm.dbg.value(metadata i8 %115, metadata !1185, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %116, metadata !1182, metadata !DIExpression()), !dbg !1195
  %117 = sext i32 %114 to i64, !dbg !1321
  %118 = getelementptr inbounds ptr, ptr %25, i64 %117, !dbg !1321
  %119 = load ptr, ptr %118, align 8, !dbg !1321, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %119, metadata !1186, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata ptr %119, metadata !1034, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !1040, metadata !DIExpression()), !dbg !1323
  %120 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %119, ptr noundef nonnull dereferenceable(2) @.str.21) #39, !dbg !1325
  %121 = icmp eq i32 %120, 0, !dbg !1326
  br i1 %121, label %122, label %127, !dbg !1327

122:                                              ; preds = %113
  %123 = load ptr, ptr @stdin, align 8, !dbg !1328, !tbaa !949
  %124 = tail call fastcc zeroext i1 @fmt(ptr noundef %123, ptr noundef %119), !dbg !1330
  %125 = icmp ne i8 %116, 0, !dbg !1331
  %126 = and i1 %125, %124, !dbg !1331
  call void @llvm.dbg.value(metadata i1 %126, metadata !1182, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1195
  call void @llvm.dbg.value(metadata i8 1, metadata !1185, metadata !DIExpression()), !dbg !1195
  br label %139, !dbg !1332

127:                                              ; preds = %113
  %128 = tail call noalias ptr @rpl_fopen(ptr noundef %119, ptr noundef nonnull @.str.22) #38, !dbg !1333
  call void @llvm.dbg.value(metadata ptr %128, metadata !1192, metadata !DIExpression()), !dbg !1334
  %129 = icmp eq ptr %128, null, !dbg !1335
  br i1 %129, label %134, label %130, !dbg !1337

130:                                              ; preds = %127
  %131 = tail call fastcc zeroext i1 @fmt(ptr noundef nonnull %128, ptr noundef %119), !dbg !1338
  %132 = icmp ne i8 %116, 0, !dbg !1339
  %133 = and i1 %132, %131, !dbg !1339
  call void @llvm.dbg.value(metadata i1 %133, metadata !1182, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1195
  br label %139, !dbg !1340

134:                                              ; preds = %127
  %135 = tail call ptr @__errno_location() #41, !dbg !1341
  %136 = load i32, ptr %135, align 4, !dbg !1341, !tbaa !1023
  %137 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #38, !dbg !1341
  %138 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %119) #38, !dbg !1341
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %136, ptr noundef %137, ptr noundef %138) #38, !dbg !1341
  call void @llvm.dbg.value(metadata i8 0, metadata !1182, metadata !DIExpression()), !dbg !1195
  br label %139

139:                                              ; preds = %130, %134, %122
  %140 = phi i1 [ %126, %122 ], [ %133, %130 ], [ false, %134 ]
  %141 = phi i8 [ 1, %122 ], [ %115, %130 ], [ %115, %134 ], !dbg !1195
  %142 = zext i1 %140 to i8, !dbg !1343
  call void @llvm.dbg.value(metadata i8 %141, metadata !1185, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %142, metadata !1182, metadata !DIExpression()), !dbg !1195
  %143 = load i32, ptr @optind, align 4, !dbg !1344, !tbaa !1023
  %144 = add nsw i32 %143, 1, !dbg !1344
  store i32 %144, ptr @optind, align 4, !dbg !1344, !tbaa !1023
  %145 = icmp slt i32 %144, %26, !dbg !1313
  br i1 %145, label %113, label %146, !dbg !1314, !llvm.loop !1345

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i8 %141, metadata !1185, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %142, metadata !1182, metadata !DIExpression()), !dbg !1195
  %147 = and i8 %141, 1, !dbg !1347
  %148 = icmp eq i8 %147, 0, !dbg !1347
  br i1 %148, label %158, label %149, !dbg !1319

149:                                              ; preds = %109, %146
  %150 = phi i8 [ %112, %109 ], [ %142, %146 ]
  %151 = load ptr, ptr @stdin, align 8, !dbg !1348, !tbaa !949
  %152 = tail call i32 @rpl_fclose(ptr noundef %151) #38, !dbg !1349
  %153 = icmp eq i32 %152, 0, !dbg !1350
  br i1 %153, label %158, label %154, !dbg !1351

154:                                              ; preds = %149
  %155 = tail call ptr @__errno_location() #41, !dbg !1352
  %156 = load i32, ptr %155, align 4, !dbg !1352, !tbaa !1023
  %157 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #38, !dbg !1352
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %156, ptr noundef nonnull @.str.24, ptr noundef %157) #38, !dbg !1352
  unreachable, !dbg !1352

158:                                              ; preds = %107, %149, %146
  %159 = phi i8 [ %150, %149 ], [ %142, %146 ], [ 1, %107 ]
  %160 = icmp eq i8 %159, 0, !dbg !1353
  %161 = zext i1 %160 to i32, !dbg !1353
  ret i32 %161, !dbg !1354
}

; Function Attrs: nounwind
declare !dbg !1355 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1358 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1359 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1362 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1368 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @fmt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !1371 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1375, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata ptr %1, metadata !1376, metadata !DIExpression()), !dbg !1378
  tail call void @fadvise(ptr noundef %0, i32 noundef 2) #38, !dbg !1379
  store i1 false, ptr @tabs, align 1, !dbg !1380
  store i32 0, ptr @other_indent, align 4, !dbg !1381, !tbaa !1023
  %3 = tail call fastcc i32 @get_prefix(ptr noundef %0), !dbg !1382
  store i32 %3, ptr @next_char, align 4, !dbg !1383, !tbaa !1023
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  br label %6, !dbg !1384

6:                                                ; preds = %251, %2
  %7 = phi i32 [ %252, %251 ], [ %3, %2 ], !dbg !1385
  call void @llvm.dbg.value(metadata ptr %0, metadata !1390, metadata !DIExpression()), !dbg !1393
  store i32 0, ptr @last_line_length, align 4, !dbg !1394, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %7, metadata !1391, metadata !DIExpression()), !dbg !1393
  br label %8, !dbg !1395

8:                                                ; preds = %116, %6
  %9 = phi i32 [ %7, %6 ], [ %117, %116 ], !dbg !1393
  call void @llvm.dbg.value(metadata i32 %9, metadata !1391, metadata !DIExpression()), !dbg !1393
  switch i32 %9, label %10 [
    i32 -1, label %19
    i32 10, label %19
  ], !dbg !1396

10:                                               ; preds = %8
  %11 = load i32, ptr @next_prefix_indent, align 4, !dbg !1397, !tbaa !1023
  %12 = load i32, ptr @prefix_lead_space, align 4, !dbg !1398, !tbaa !1023
  %13 = icmp slt i32 %11, %12, !dbg !1399
  br i1 %13, label %19, label %14, !dbg !1400

14:                                               ; preds = %10
  %15 = load i32, ptr @in_column, align 4, !dbg !1401, !tbaa !1023
  %16 = load i32, ptr @prefix_full_length, align 4, !dbg !1402, !tbaa !1023
  %17 = add nsw i32 %16, %11, !dbg !1403
  %18 = icmp slt i32 %15, %17, !dbg !1404
  br i1 %18, label %19, label %118, !dbg !1395

19:                                               ; preds = %14, %10, %8, %8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1405, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %9, metadata !1410, metadata !DIExpression()), !dbg !1415
  store i32 0, ptr @out_column, align 4, !dbg !1418, !tbaa !1023
  %20 = load i32, ptr @in_column, align 4, !dbg !1419, !tbaa !1023
  %21 = load i32, ptr @next_prefix_indent, align 4, !dbg !1420, !tbaa !1023
  %22 = icmp sgt i32 %20, %21, !dbg !1421
  br i1 %22, label %24, label %23, !dbg !1422

23:                                               ; preds = %19
  switch i32 %9, label %24 [
    i32 -1, label %77
    i32 10, label %77
  ], !dbg !1423

24:                                               ; preds = %23, %19
  tail call fastcc void @put_space(i32 noundef %21), !dbg !1424
  call void @llvm.dbg.value(metadata ptr poison, metadata !1411, metadata !DIExpression()), !dbg !1425
  %25 = load i32, ptr @out_column, align 4, !dbg !1426, !tbaa !1023
  %26 = load i32, ptr @in_column, align 4, !dbg !1428, !tbaa !1023
  %27 = icmp eq i32 %26, %25, !dbg !1429
  br i1 %27, label %36, label %28, !dbg !1430

28:                                               ; preds = %24
  %29 = load ptr, ptr @prefix, align 8, !dbg !1431, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %29, metadata !1411, metadata !DIExpression()), !dbg !1425
  br label %30, !dbg !1432

30:                                               ; preds = %54, %28
  %31 = phi i32 [ %55, %54 ], [ %26, %28 ]
  %32 = phi i32 [ %57, %54 ], [ %25, %28 ]
  %33 = phi ptr [ %40, %54 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata ptr %33, metadata !1411, metadata !DIExpression()), !dbg !1425
  %34 = load i8, ptr %33, align 1, !dbg !1433, !tbaa !1032
  %35 = icmp eq i8 %34, 0, !dbg !1430
  br i1 %35, label %36, label %39, !dbg !1432

36:                                               ; preds = %54, %30, %24
  %37 = phi i32 [ %25, %24 ], [ %55, %54 ], [ %32, %30 ], !dbg !1426
  %38 = phi i32 [ %25, %24 ], [ %55, %54 ], [ %31, %30 ], !dbg !1428
  switch i32 %9, label %59 [
    i32 -1, label %61
    i32 10, label %77
  ], !dbg !1434

39:                                               ; preds = %30
  %40 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1436
  call void @llvm.dbg.value(metadata ptr %40, metadata !1411, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i8 %34, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1443
  %41 = load ptr, ptr @stdout, align 8, !dbg !1445, !tbaa !949
  %42 = getelementptr inbounds %struct._IO_FILE, ptr %41, i64 0, i32 5, !dbg !1445
  %43 = load ptr, ptr %42, align 8, !dbg !1445, !tbaa !1446
  %44 = getelementptr inbounds %struct._IO_FILE, ptr %41, i64 0, i32 6, !dbg !1445
  %45 = load ptr, ptr %44, align 8, !dbg !1445, !tbaa !1449
  %46 = icmp ult ptr %43, %45, !dbg !1445
  br i1 %46, label %52, label %47, !dbg !1445, !prof !1450

47:                                               ; preds = %39
  %48 = zext i8 %34 to i32, !dbg !1433
  call void @llvm.dbg.value(metadata i8 %34, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1443
  %49 = tail call i32 @__overflow(ptr noundef nonnull %41, i32 noundef %48) #38, !dbg !1445
  %50 = load i32, ptr @out_column, align 4, !dbg !1451, !tbaa !1023
  %51 = load i32, ptr @in_column, align 4, !dbg !1428, !tbaa !1023
  br label %54, !dbg !1445

52:                                               ; preds = %39
  %53 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !1445
  store ptr %53, ptr %42, align 8, !dbg !1445, !tbaa !1446
  store i8 %34, ptr %43, align 1, !dbg !1445, !tbaa !1032
  br label %54, !dbg !1445

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %51, %47 ], [ %31, %52 ], !dbg !1428
  %56 = phi i32 [ %50, %47 ], [ %32, %52 ], !dbg !1451
  %57 = add nsw i32 %56, 1, !dbg !1451
  store i32 %57, ptr @out_column, align 4, !dbg !1451, !tbaa !1023
  call void @llvm.dbg.value(metadata ptr %40, metadata !1411, metadata !DIExpression()), !dbg !1425
  %58 = icmp eq i32 %55, %57, !dbg !1429
  br i1 %58, label %36, label %30, !dbg !1430, !llvm.loop !1452

59:                                               ; preds = %36
  %60 = sub nsw i32 %38, %37, !dbg !1454
  tail call fastcc void @put_space(i32 noundef %60), !dbg !1455
  br label %77, !dbg !1456

61:                                               ; preds = %36
  %62 = load i32, ptr @next_prefix_indent, align 4, !dbg !1458, !tbaa !1023
  %63 = load i32, ptr @prefix_length, align 4, !dbg !1459, !tbaa !1023
  %64 = add nsw i32 %63, %62, !dbg !1460
  %65 = icmp slt i32 %38, %64, !dbg !1461
  br i1 %65, label %77, label %66, !dbg !1462

66:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 10, metadata !1437, metadata !DIExpression()), !dbg !1463
  %67 = load ptr, ptr @stdout, align 8, !dbg !1465, !tbaa !949
  %68 = getelementptr inbounds %struct._IO_FILE, ptr %67, i64 0, i32 5, !dbg !1465
  %69 = load ptr, ptr %68, align 8, !dbg !1465, !tbaa !1446
  %70 = getelementptr inbounds %struct._IO_FILE, ptr %67, i64 0, i32 6, !dbg !1465
  %71 = load ptr, ptr %70, align 8, !dbg !1465, !tbaa !1449
  %72 = icmp ult ptr %69, %71, !dbg !1465
  br i1 %72, label %75, label %73, !dbg !1465, !prof !1450

73:                                               ; preds = %66
  %74 = tail call i32 @__overflow(ptr noundef nonnull %67, i32 noundef 10) #38, !dbg !1465
  br label %77, !dbg !1465

75:                                               ; preds = %66
  %76 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1465
  store ptr %76, ptr %68, align 8, !dbg !1465, !tbaa !1446
  store i8 10, ptr %69, align 1, !dbg !1465, !tbaa !1032
  br label %77, !dbg !1465

77:                                               ; preds = %75, %73, %61, %59, %36, %23, %23
  br label %78, !dbg !1466

78:                                               ; preds = %103, %77
  %79 = phi i32 [ %9, %77 ], [ %104, %103 ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !1410, metadata !DIExpression()), !dbg !1415
  switch i32 %79, label %80 [
    i32 -1, label %253
    i32 10, label %105
  ], !dbg !1466

80:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i32 %79, metadata !1437, metadata !DIExpression()), !dbg !1467
  %81 = load ptr, ptr @stdout, align 8, !dbg !1470, !tbaa !949
  %82 = getelementptr inbounds %struct._IO_FILE, ptr %81, i64 0, i32 5, !dbg !1470
  %83 = load ptr, ptr %82, align 8, !dbg !1470, !tbaa !1446
  %84 = getelementptr inbounds %struct._IO_FILE, ptr %81, i64 0, i32 6, !dbg !1470
  %85 = load ptr, ptr %84, align 8, !dbg !1470, !tbaa !1449
  %86 = icmp ult ptr %83, %85, !dbg !1470
  br i1 %86, label %90, label %87, !dbg !1470, !prof !1450

87:                                               ; preds = %80
  %88 = and i32 %79, 255, !dbg !1470
  %89 = tail call i32 @__overflow(ptr noundef nonnull %81, i32 noundef %88) #38, !dbg !1470
  br label %93, !dbg !1470

90:                                               ; preds = %80
  %91 = trunc i32 %79 to i8, !dbg !1470
  %92 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1470
  store ptr %92, ptr %82, align 8, !dbg !1470, !tbaa !1446
  store i8 %91, ptr %83, align 1, !dbg !1470, !tbaa !1032
  br label %93, !dbg !1470

93:                                               ; preds = %90, %87
  call void @llvm.dbg.value(metadata ptr %0, metadata !1471, metadata !DIExpression()), !dbg !1476
  %94 = load ptr, ptr %4, align 8, !dbg !1478, !tbaa !1479
  %95 = load ptr, ptr %5, align 8, !dbg !1478, !tbaa !1480
  %96 = icmp ult ptr %94, %95, !dbg !1478
  br i1 %96, label %99, label %97, !dbg !1478, !prof !1450

97:                                               ; preds = %93
  %98 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1478
  br label %103, !dbg !1478

99:                                               ; preds = %93
  %100 = getelementptr inbounds i8, ptr %94, i64 1, !dbg !1478
  store ptr %100, ptr %4, align 8, !dbg !1478, !tbaa !1479
  %101 = load i8, ptr %94, align 1, !dbg !1478, !tbaa !1032
  %102 = zext i8 %101 to i32, !dbg !1478
  br label %103, !dbg !1478

103:                                              ; preds = %99, %97
  %104 = phi i32 [ %98, %97 ], [ %102, %99 ]
  br label %78, !dbg !1415, !llvm.loop !1481

105:                                              ; preds = %78
  call void @llvm.dbg.value(metadata i32 10, metadata !1437, metadata !DIExpression()), !dbg !1483
  %106 = load ptr, ptr @stdout, align 8, !dbg !1485, !tbaa !949
  %107 = getelementptr inbounds %struct._IO_FILE, ptr %106, i64 0, i32 5, !dbg !1485
  %108 = load ptr, ptr %107, align 8, !dbg !1485, !tbaa !1446
  %109 = getelementptr inbounds %struct._IO_FILE, ptr %106, i64 0, i32 6, !dbg !1485
  %110 = load ptr, ptr %109, align 8, !dbg !1485, !tbaa !1449
  %111 = icmp ult ptr %108, %110, !dbg !1485
  br i1 %111, label %114, label %112, !dbg !1485, !prof !1450

112:                                              ; preds = %105
  %113 = tail call i32 @__overflow(ptr noundef nonnull %106, i32 noundef 10) #38, !dbg !1485
  br label %116, !dbg !1485

114:                                              ; preds = %105
  %115 = getelementptr inbounds i8, ptr %108, i64 1, !dbg !1485
  store ptr %115, ptr %107, align 8, !dbg !1485, !tbaa !1446
  store i8 10, ptr %108, align 1, !dbg !1485, !tbaa !1032
  br label %116, !dbg !1485

116:                                              ; preds = %114, %112
  %117 = tail call fastcc i32 @get_prefix(ptr noundef %0), !dbg !1486
  call void @llvm.dbg.value(metadata i32 %117, metadata !1391, metadata !DIExpression()), !dbg !1393
  br label %8, !dbg !1395, !llvm.loop !1487

118:                                              ; preds = %14
  store i32 %11, ptr @prefix_indent, align 4, !dbg !1489, !tbaa !1023
  store i32 %15, ptr @first_indent, align 4, !dbg !1490, !tbaa !1023
  store ptr @parabuf, ptr @wptr, align 8, !dbg !1491, !tbaa !949
  store ptr @unused_word_type, ptr @word_limit, align 8, !dbg !1492, !tbaa !949
  %119 = tail call fastcc i32 @get_line(ptr noundef %0, i32 noundef %9), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %119, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %119, metadata !1494, metadata !DIExpression()), !dbg !1497
  %120 = load i32, ptr @next_prefix_indent, align 4, !dbg !1499, !tbaa !1023
  %121 = load i32, ptr @prefix_indent, align 4, !dbg !1500, !tbaa !1023
  %122 = icmp eq i32 %120, %121, !dbg !1501
  br i1 %122, label %123, label %132, !dbg !1502

123:                                              ; preds = %118
  %124 = load i32, ptr @in_column, align 4, !dbg !1503, !tbaa !1023
  %125 = load i32, ptr @prefix_full_length, align 4, !dbg !1504, !tbaa !1023
  %126 = add nsw i32 %125, %120, !dbg !1505
  %127 = icmp sge i32 %124, %126, !dbg !1506
  %128 = icmp ne i32 %119, 10
  %129 = and i1 %128, %127, !dbg !1507
  %130 = icmp ne i32 %119, -1
  %131 = and i1 %130, %129, !dbg !1507
  br label %132, !dbg !1507

132:                                              ; preds = %123, %118
  %133 = phi i1 [ false, %118 ], [ %131, %123 ], !dbg !1497
  call void @llvm.dbg.value(metadata i1 %133, metadata !1508, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1513
  %134 = load i1, ptr @split, align 1, !dbg !1515
  br i1 %134, label %153, label %135, !dbg !1517

135:                                              ; preds = %132
  %136 = load i1, ptr @crown, align 1, !dbg !1518
  br i1 %136, label %155, label %137, !dbg !1520

137:                                              ; preds = %135
  %138 = load i1, ptr @tagged, align 1, !dbg !1521
  br i1 %138, label %139, label %186, !dbg !1523

139:                                              ; preds = %137
  br i1 %133, label %142, label %140, !dbg !1524

140:                                              ; preds = %139
  %141 = load i32, ptr @first_indent, align 4, !dbg !1527, !tbaa !1023
  br label %146, !dbg !1524

142:                                              ; preds = %139
  %143 = load i32, ptr @in_column, align 4, !dbg !1529, !tbaa !1023
  %144 = load i32, ptr @first_indent, align 4, !dbg !1530, !tbaa !1023
  %145 = icmp eq i32 %143, %144, !dbg !1531
  br i1 %145, label %146, label %183, !dbg !1532

146:                                              ; preds = %142, %140
  %147 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %148 = load i32, ptr @other_indent, align 4, !dbg !1533, !tbaa !1023
  %149 = icmp eq i32 %148, %147, !dbg !1534
  br i1 %149, label %150, label %188, !dbg !1535

150:                                              ; preds = %146
  %151 = icmp eq i32 %147, 0, !dbg !1536
  %152 = select i1 %151, i32 3, i32 0, !dbg !1537
  br label %183, !dbg !1538

153:                                              ; preds = %132
  %154 = load i32, ptr @first_indent, align 4, !dbg !1539, !tbaa !1023
  store i32 %154, ptr @other_indent, align 4, !dbg !1540, !tbaa !1023
  br label %236

155:                                              ; preds = %135
  %156 = load i32, ptr @in_column, align 4, !dbg !1541
  %157 = load i32, ptr @first_indent, align 4, !dbg !1541
  %158 = select i1 %133, i32 %156, i32 %157, !dbg !1541
  store i32 %158, ptr @other_indent, align 4, !dbg !1540, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %119, metadata !1494, metadata !DIExpression()), !dbg !1543
  br i1 %122, label %159, label %236, !dbg !1549

159:                                              ; preds = %155
  %160 = load i32, ptr @prefix_full_length, align 4, !dbg !1550, !tbaa !1023
  %161 = add nsw i32 %160, %120, !dbg !1551
  %162 = icmp sge i32 %156, %161, !dbg !1552
  %163 = freeze i1 %162, !dbg !1553
  br i1 %163, label %164, label %236, !dbg !1553

164:                                              ; preds = %159
  switch i32 %119, label %165 [
    i32 -1, label %236
    i32 10, label %236
  ], !dbg !1553

165:                                              ; preds = %164, %171
  %166 = phi i32 [ %167, %171 ], [ %119, %164 ], !dbg !1393
  call void @llvm.dbg.value(metadata i32 %166, metadata !1391, metadata !DIExpression()), !dbg !1393
  %167 = tail call fastcc i32 @get_line(ptr noundef %0, i32 noundef %166), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %167, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %167, metadata !1494, metadata !DIExpression()), !dbg !1557
  %168 = load i32, ptr @next_prefix_indent, align 4, !dbg !1559, !tbaa !1023
  %169 = load i32, ptr @prefix_indent, align 4, !dbg !1560, !tbaa !1023
  %170 = icmp eq i32 %168, %169, !dbg !1561
  br i1 %170, label %171, label %236, !dbg !1562

171:                                              ; preds = %165
  %172 = load i32, ptr @in_column, align 4, !dbg !1563
  %173 = load i32, ptr @prefix_full_length, align 4, !dbg !1564, !tbaa !1023
  %174 = add nsw i32 %173, %168, !dbg !1565
  %175 = icmp sge i32 %172, %174, !dbg !1566
  %176 = icmp ne i32 %167, 10
  %177 = and i1 %176, %175, !dbg !1567
  %178 = icmp ne i32 %167, -1
  %179 = and i1 %178, %177, !dbg !1567
  %180 = load i32, ptr @other_indent, align 4, !dbg !1568
  %181 = icmp eq i32 %172, %180, !dbg !1568
  %182 = select i1 %179, i1 %181, i1 false, !dbg !1568
  br i1 %182, label %165, label %236, !dbg !1569, !llvm.loop !1570

183:                                              ; preds = %142, %150
  %184 = phi i32 [ %144, %142 ], [ %147, %150 ]
  %185 = phi i32 [ %143, %142 ], [ %152, %150 ]
  store i32 %185, ptr @other_indent, align 4, !dbg !1540, !tbaa !1023
  br label %188, !dbg !1573

186:                                              ; preds = %137
  %187 = load i32, ptr @first_indent, align 4, !dbg !1574, !tbaa !1023
  store i32 %187, ptr @other_indent, align 4, !dbg !1540, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %119, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %119, metadata !1494, metadata !DIExpression()), !dbg !1576
  br i1 %122, label %217, label %236, !dbg !1580

188:                                              ; preds = %146, %183
  %189 = phi i32 [ %184, %183 ], [ %147, %146 ]
  call void @llvm.dbg.value(metadata i32 %119, metadata !1494, metadata !DIExpression()), !dbg !1581
  br i1 %122, label %190, label %236, !dbg !1585

190:                                              ; preds = %188
  %191 = load i32, ptr @in_column, align 4, !dbg !1586, !tbaa !1023
  %192 = load i32, ptr @prefix_full_length, align 4, !dbg !1587, !tbaa !1023
  %193 = add nsw i32 %192, %120, !dbg !1588
  %194 = icmp sge i32 %191, %193, !dbg !1589
  %195 = freeze i1 %194, !dbg !1590
  br i1 %195, label %196, label %236, !dbg !1590

196:                                              ; preds = %190
  switch i32 %119, label %197 [
    i32 -1, label %236
    i32 10, label %236
  ], !dbg !1590

197:                                              ; preds = %196
  %198 = icmp eq i32 %191, %189, !dbg !1591
  br i1 %198, label %236, label %199, !dbg !1592

199:                                              ; preds = %197, %205
  %200 = phi i32 [ %201, %205 ], [ %119, %197 ], !dbg !1393
  call void @llvm.dbg.value(metadata i32 %200, metadata !1391, metadata !DIExpression()), !dbg !1393
  %201 = tail call fastcc i32 @get_line(ptr noundef %0, i32 noundef %200), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %201, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %201, metadata !1494, metadata !DIExpression()), !dbg !1596
  %202 = load i32, ptr @next_prefix_indent, align 4, !dbg !1598, !tbaa !1023
  %203 = load i32, ptr @prefix_indent, align 4, !dbg !1599, !tbaa !1023
  %204 = icmp eq i32 %202, %203, !dbg !1600
  br i1 %204, label %205, label %236, !dbg !1601

205:                                              ; preds = %199
  %206 = load i32, ptr @in_column, align 4, !dbg !1602
  %207 = load i32, ptr @prefix_full_length, align 4, !dbg !1603, !tbaa !1023
  %208 = add nsw i32 %207, %202, !dbg !1604
  %209 = icmp sge i32 %206, %208, !dbg !1605
  %210 = icmp ne i32 %201, 10
  %211 = and i1 %210, %209, !dbg !1606
  %212 = icmp ne i32 %201, -1
  %213 = and i1 %212, %211, !dbg !1606
  %214 = load i32, ptr @other_indent, align 4, !dbg !1607
  %215 = icmp eq i32 %206, %214, !dbg !1607
  %216 = select i1 %213, i1 %215, i1 false, !dbg !1607
  br i1 %216, label %199, label %236, !dbg !1608, !llvm.loop !1609

217:                                              ; preds = %186, %231
  %218 = phi i32 [ %233, %231 ], [ %120, %186 ]
  %219 = phi i32 [ %232, %231 ], [ %119, %186 ]
  call void @llvm.dbg.value(metadata i32 %219, metadata !1391, metadata !DIExpression()), !dbg !1393
  %220 = load i32, ptr @in_column, align 4, !dbg !1612
  %221 = load i32, ptr @prefix_full_length, align 4, !dbg !1613, !tbaa !1023
  %222 = add nsw i32 %221, %218, !dbg !1614
  %223 = icmp sge i32 %220, %222, !dbg !1615
  %224 = icmp ne i32 %219, 10
  %225 = and i1 %224, %223, !dbg !1616
  %226 = icmp ne i32 %219, -1
  %227 = and i1 %226, %225, !dbg !1616
  %228 = load i32, ptr @other_indent, align 4, !dbg !1617
  %229 = icmp eq i32 %220, %228, !dbg !1617
  %230 = select i1 %227, i1 %229, i1 false, !dbg !1617
  br i1 %230, label %231, label %236, !dbg !1618

231:                                              ; preds = %217
  %232 = tail call fastcc i32 @get_line(ptr noundef %0, i32 noundef %219), !dbg !1619
  call void @llvm.dbg.value(metadata i32 %232, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %232, metadata !1494, metadata !DIExpression()), !dbg !1576
  %233 = load i32, ptr @next_prefix_indent, align 4, !dbg !1620, !tbaa !1023
  %234 = load i32, ptr @prefix_indent, align 4, !dbg !1621, !tbaa !1023
  %235 = icmp eq i32 %233, %234, !dbg !1622
  br i1 %235, label %217, label %236, !dbg !1580, !llvm.loop !1623

236:                                              ; preds = %217, %231, %199, %205, %165, %171, %153, %155, %159, %164, %164, %186, %188, %190, %196, %196, %197
  %237 = phi i32 [ %119, %153 ], [ %119, %164 ], [ %119, %197 ], [ %119, %196 ], [ %119, %155 ], [ %119, %188 ], [ %119, %159 ], [ %119, %164 ], [ %119, %190 ], [ %119, %196 ], [ %119, %186 ], [ %167, %171 ], [ %167, %165 ], [ %201, %205 ], [ %201, %199 ], [ %232, %231 ], [ %219, %217 ], !dbg !1393
  call void @llvm.dbg.value(metadata i32 %237, metadata !1391, metadata !DIExpression()), !dbg !1393
  %238 = load ptr, ptr @word_limit, align 8, !dbg !1625, !tbaa !949
  %239 = getelementptr %struct.Word, ptr %238, i64 -1, i32 3, !dbg !1626
  %240 = load i8, ptr %239, align 8, !dbg !1627
  %241 = or i8 %240, 10, !dbg !1628
  store i8 %241, ptr %239, align 8, !dbg !1628
  store i32 %237, ptr @next_char, align 4, !dbg !1393, !tbaa !1023
  tail call fastcc void @fmt_paragraph(), !dbg !1629
  call void @llvm.dbg.value(metadata ptr %238, metadata !1631, metadata !DIExpression()), !dbg !1638
  %242 = load i32, ptr @first_indent, align 4, !dbg !1640, !tbaa !1023
  tail call fastcc void @put_line(ptr noundef nonnull @unused_word_type, i32 noundef %242), !dbg !1641
  call void @llvm.dbg.value(metadata ptr poison, metadata !1636, metadata !DIExpression()), !dbg !1642
  %243 = load ptr, ptr getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !1643, !tbaa !1644
  call void @llvm.dbg.value(metadata ptr %243, metadata !1636, metadata !DIExpression()), !dbg !1642
  %244 = icmp eq ptr %243, %238, !dbg !1646
  br i1 %244, label %251, label %245, !dbg !1648

245:                                              ; preds = %236, %245
  %246 = phi ptr [ %249, %245 ], [ %243, %236 ]
  %247 = load i32, ptr @other_indent, align 4, !dbg !1649, !tbaa !1023
  tail call fastcc void @put_line(ptr noundef %246, i32 noundef %247), !dbg !1650
  %248 = getelementptr inbounds %struct.Word, ptr %246, i64 0, i32 6, !dbg !1651
  call void @llvm.dbg.value(metadata ptr poison, metadata !1636, metadata !DIExpression()), !dbg !1642
  %249 = load ptr, ptr %248, align 8, !dbg !1643, !tbaa !1644
  call void @llvm.dbg.value(metadata ptr %249, metadata !1636, metadata !DIExpression()), !dbg !1642
  %250 = icmp eq ptr %249, %238, !dbg !1646
  br i1 %250, label %251, label %245, !dbg !1648, !llvm.loop !1652

251:                                              ; preds = %245, %236
  %252 = load i32, ptr @next_char, align 4, !dbg !1385, !tbaa !1023
  br label %6, !dbg !1384, !llvm.loop !1654

253:                                              ; preds = %78
  store i32 -1, ptr @next_char, align 4, !dbg !1393, !tbaa !1023
  call void @llvm.dbg.value(metadata ptr %0, metadata !1656, metadata !DIExpression()), !dbg !1659
  %254 = load i32, ptr %0, align 8, !dbg !1661, !tbaa !1662
  %255 = and i32 %254, 32, !dbg !1663
  %256 = icmp eq i32 %255, 0, !dbg !1663
  %257 = sext i1 %256 to i32, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %257, metadata !1377, metadata !DIExpression()), !dbg !1378
  %258 = load ptr, ptr @stdin, align 8, !dbg !1664, !tbaa !949
  %259 = icmp eq ptr %258, %0, !dbg !1666
  br i1 %259, label %260, label %261, !dbg !1667

260:                                              ; preds = %253
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #38, !dbg !1668
  br label %268, !dbg !1668

261:                                              ; preds = %253
  %262 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !1669
  %263 = icmp ne i32 %262, 0, !dbg !1671
  %264 = select i1 %263, i1 %256, i1 false, !dbg !1672
  br i1 %264, label %265, label %268, !dbg !1672

265:                                              ; preds = %261
  %266 = tail call ptr @__errno_location() #41, !dbg !1673
  %267 = load i32, ptr %266, align 4, !dbg !1673, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %267, metadata !1377, metadata !DIExpression()), !dbg !1378
  br label %268, !dbg !1674

268:                                              ; preds = %261, %265, %260
  %269 = phi i32 [ %257, %260 ], [ %267, %265 ], [ %257, %261 ], !dbg !1378
  call void @llvm.dbg.value(metadata i32 %269, metadata !1377, metadata !DIExpression()), !dbg !1378
  %270 = icmp sgt i32 %269, -1, !dbg !1675
  br i1 %270, label %271, label %281, !dbg !1677

271:                                              ; preds = %268
  %272 = load ptr, ptr @stdin, align 8, !dbg !1678, !tbaa !949
  %273 = icmp eq ptr %272, %0, !dbg !1681
  %274 = tail call ptr @__errno_location() #41, !dbg !1682
  %275 = load i32, ptr %274, align 4, !dbg !1682, !tbaa !1023
  br i1 %273, label %276, label %278, !dbg !1683

276:                                              ; preds = %271
  %277 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #38, !dbg !1684
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %275, ptr noundef %277) #38, !dbg !1684
  br label %281, !dbg !1684

278:                                              ; preds = %271
  %279 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #38, !dbg !1685
  %280 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %1) #38, !dbg !1685
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %275, ptr noundef %279, ptr noundef %280) #38, !dbg !1685
  br label %281

281:                                              ; preds = %276, %278, %268
  %282 = icmp slt i32 %269, 0, !dbg !1686
  ret i1 %282, !dbg !1687
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1688 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_prefix(ptr noundef %0) unnamed_addr #10 !dbg !1692 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1694, metadata !DIExpression()), !dbg !1703
  store i32 0, ptr @in_column, align 4, !dbg !1704, !tbaa !1023
  call void @llvm.dbg.value(metadata ptr %0, metadata !1471, metadata !DIExpression()), !dbg !1705
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !1707
  %3 = load ptr, ptr %2, align 8, !dbg !1707, !tbaa !1479
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !1707
  %5 = load ptr, ptr %4, align 8, !dbg !1707, !tbaa !1480
  %6 = icmp ult ptr %3, %5, !dbg !1707
  br i1 %6, label %9, label %7, !dbg !1707, !prof !1450

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1707
  br label %13, !dbg !1707

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1707
  store ptr %10, ptr %2, align 8, !dbg !1707, !tbaa !1479
  %11 = load i8, ptr %3, align 1, !dbg !1707, !tbaa !1032
  %12 = zext i8 %11 to i32, !dbg !1707
  br label %13, !dbg !1707

13:                                               ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ %8, %7 ]
  br label %15, !dbg !1708

15:                                               ; preds = %36, %13
  %16 = phi i32 [ %14, %13 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !1712, metadata !DIExpression()), !dbg !1714
  switch i32 %16, label %38 [
    i32 32, label %17
    i32 9, label %20
  ], !dbg !1715

17:                                               ; preds = %15
  %18 = load i32, ptr @in_column, align 4, !dbg !1717, !tbaa !1023
  %19 = add nsw i32 %18, 1, !dbg !1717
  br label %25, !dbg !1719

20:                                               ; preds = %15
  store i1 true, ptr @tabs, align 1, !dbg !1720
  %21 = load i32, ptr @in_column, align 4, !dbg !1723, !tbaa !1023
  %22 = sdiv i32 %21, 8, !dbg !1724
  %23 = shl nsw i32 %22, 3, !dbg !1725
  %24 = add i32 %23, 8, !dbg !1725
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %24, %20 ], [ %19, %17 ], !dbg !1726
  store i32 %26, ptr @in_column, align 4, !dbg !1726, !tbaa !1023
  call void @llvm.dbg.value(metadata ptr %0, metadata !1471, metadata !DIExpression()), !dbg !1727
  %27 = load ptr, ptr %2, align 8, !dbg !1729, !tbaa !1479
  %28 = load ptr, ptr %4, align 8, !dbg !1729, !tbaa !1480
  %29 = icmp ult ptr %27, %28, !dbg !1729
  br i1 %29, label %32, label %30, !dbg !1729, !prof !1450

30:                                               ; preds = %25
  %31 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1729
  br label %36, !dbg !1729

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1729
  store ptr %33, ptr %2, align 8, !dbg !1729, !tbaa !1479
  %34 = load i8, ptr %27, align 1, !dbg !1729, !tbaa !1032
  %35 = zext i8 %34 to i32, !dbg !1729
  br label %36, !dbg !1729

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  br label %15, !dbg !1714, !llvm.loop !1730

38:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1695, metadata !DIExpression()), !dbg !1703
  %39 = load i32, ptr @prefix_length, align 4, !dbg !1732, !tbaa !1023
  %40 = icmp eq i32 %39, 0, !dbg !1733
  br i1 %40, label %41, label %45, !dbg !1734

41:                                               ; preds = %38
  %42 = load i32, ptr @prefix_lead_space, align 4, !dbg !1735, !tbaa !1023
  %43 = load i32, ptr @in_column, align 4, !dbg !1736, !tbaa !1023
  %44 = tail call i32 @llvm.smin.i32(i32 %42, i32 %43), !dbg !1735
  store i32 %44, ptr @next_prefix_indent, align 4, !dbg !1737, !tbaa !1023
  br label %98, !dbg !1738

45:                                               ; preds = %38
  %46 = load i32, ptr @in_column, align 4, !dbg !1739, !tbaa !1023
  store i32 %46, ptr @next_prefix_indent, align 4, !dbg !1740, !tbaa !1023
  %47 = load ptr, ptr @prefix, align 8, !dbg !1741, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %47, metadata !1696, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32 %16, metadata !1695, metadata !DIExpression()), !dbg !1703
  %48 = load i8, ptr %47, align 1, !dbg !1743, !tbaa !1032
  %49 = icmp eq i8 %48, 0, !dbg !1744
  br i1 %49, label %73, label %50, !dbg !1745

50:                                               ; preds = %45, %68
  %51 = phi i8 [ %71, %68 ], [ %48, %45 ]
  %52 = phi ptr [ %70, %68 ], [ %47, %45 ]
  %53 = phi i32 [ %69, %68 ], [ %16, %45 ]
  call void @llvm.dbg.value(metadata ptr %52, metadata !1696, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32 %53, metadata !1695, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 %51, metadata !1700, metadata !DIExpression()), !dbg !1746
  %54 = zext i8 %51 to i32, !dbg !1747
  %55 = icmp eq i32 %53, %54, !dbg !1749
  br i1 %55, label %56, label %98, !dbg !1750

56:                                               ; preds = %50
  %57 = load i32, ptr @in_column, align 4, !dbg !1751, !tbaa !1023
  %58 = add nsw i32 %57, 1, !dbg !1751
  store i32 %58, ptr @in_column, align 4, !dbg !1751, !tbaa !1023
  call void @llvm.dbg.value(metadata ptr %0, metadata !1471, metadata !DIExpression()), !dbg !1752
  %59 = load ptr, ptr %2, align 8, !dbg !1754, !tbaa !1479
  %60 = load ptr, ptr %4, align 8, !dbg !1754, !tbaa !1480
  %61 = icmp ult ptr %59, %60, !dbg !1754
  br i1 %61, label %64, label %62, !dbg !1754, !prof !1450

62:                                               ; preds = %56
  %63 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1754
  br label %68, !dbg !1754

64:                                               ; preds = %56
  %65 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1754
  store ptr %65, ptr %2, align 8, !dbg !1754, !tbaa !1479
  %66 = load i8, ptr %59, align 1, !dbg !1754, !tbaa !1032
  %67 = zext i8 %66 to i32, !dbg !1754
  br label %68, !dbg !1754

68:                                               ; preds = %64, %62
  %69 = phi i32 [ %67, %64 ], [ %63, %62 ]
  call void @llvm.dbg.value(metadata i32 %69, metadata !1695, metadata !DIExpression()), !dbg !1703
  %70 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1755
  call void @llvm.dbg.value(metadata ptr %70, metadata !1696, metadata !DIExpression()), !dbg !1742
  %71 = load i8, ptr %70, align 1, !dbg !1743, !tbaa !1032
  %72 = icmp eq i8 %71, 0, !dbg !1744
  br i1 %72, label %73, label %50, !dbg !1745, !llvm.loop !1756

73:                                               ; preds = %68, %45
  %74 = phi i32 [ %16, %45 ], [ %69, %68 ]
  br label %75, !dbg !1758

75:                                               ; preds = %96, %73
  %76 = phi i32 [ %74, %73 ], [ %97, %96 ]
  call void @llvm.dbg.value(metadata i32 %76, metadata !1712, metadata !DIExpression()), !dbg !1760
  switch i32 %76, label %98 [
    i32 32, label %77
    i32 9, label %80
  ], !dbg !1761

77:                                               ; preds = %75
  %78 = load i32, ptr @in_column, align 4, !dbg !1762, !tbaa !1023
  %79 = add nsw i32 %78, 1, !dbg !1762
  br label %85, !dbg !1763

80:                                               ; preds = %75
  store i1 true, ptr @tabs, align 1, !dbg !1764
  %81 = load i32, ptr @in_column, align 4, !dbg !1765, !tbaa !1023
  %82 = sdiv i32 %81, 8, !dbg !1766
  %83 = shl nsw i32 %82, 3, !dbg !1767
  %84 = add i32 %83, 8, !dbg !1767
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i32 [ %84, %80 ], [ %79, %77 ], !dbg !1768
  store i32 %86, ptr @in_column, align 4, !dbg !1768, !tbaa !1023
  call void @llvm.dbg.value(metadata ptr %0, metadata !1471, metadata !DIExpression()), !dbg !1769
  %87 = load ptr, ptr %2, align 8, !dbg !1771, !tbaa !1479
  %88 = load ptr, ptr %4, align 8, !dbg !1771, !tbaa !1480
  %89 = icmp ult ptr %87, %88, !dbg !1771
  br i1 %89, label %92, label %90, !dbg !1771, !prof !1450

90:                                               ; preds = %85
  %91 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1771
  br label %96, !dbg !1771

92:                                               ; preds = %85
  %93 = getelementptr inbounds i8, ptr %87, i64 1, !dbg !1771
  store ptr %93, ptr %2, align 8, !dbg !1771, !tbaa !1479
  %94 = load i8, ptr %87, align 1, !dbg !1771, !tbaa !1032
  %95 = zext i8 %94 to i32, !dbg !1771
  br label %96, !dbg !1771

96:                                               ; preds = %92, %90
  %97 = phi i32 [ %91, %90 ], [ %95, %92 ]
  br label %75, !dbg !1760, !llvm.loop !1772

98:                                               ; preds = %50, %75, %41
  %99 = phi i32 [ %16, %41 ], [ %76, %75 ], [ %53, %50 ], !dbg !1703
  ret i32 %99, !dbg !1774
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_space(i32 noundef %0) unnamed_addr #10 !dbg !1775 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1777, metadata !DIExpression()), !dbg !1780
  %2 = load i32, ptr @out_column, align 4, !dbg !1781, !tbaa !1023
  %3 = add nsw i32 %2, %0, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %3, metadata !1778, metadata !DIExpression()), !dbg !1780
  %4 = load i1, ptr @tabs, align 1, !dbg !1783
  br i1 %4, label %5, label %29, !dbg !1785

5:                                                ; preds = %1
  %6 = sdiv i32 %3, 8, !dbg !1786
  %7 = shl nsw i32 %6, 3, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %7, metadata !1779, metadata !DIExpression()), !dbg !1780
  %8 = add nsw i32 %2, 1, !dbg !1789
  %9 = icmp slt i32 %8, %7, !dbg !1791
  br i1 %9, label %10, label %29, !dbg !1792

10:                                               ; preds = %5, %23
  %11 = phi i32 [ %27, %23 ], [ %2, %5 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1437, metadata !DIExpression()), !dbg !1793
  %12 = load ptr, ptr @stdout, align 8, !dbg !1796, !tbaa !949
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %12, i64 0, i32 5, !dbg !1796
  %14 = load ptr, ptr %13, align 8, !dbg !1796, !tbaa !1446
  %15 = getelementptr inbounds %struct._IO_FILE, ptr %12, i64 0, i32 6, !dbg !1796
  %16 = load ptr, ptr %15, align 8, !dbg !1796, !tbaa !1449
  %17 = icmp ult ptr %14, %16, !dbg !1796
  br i1 %17, label %21, label %18, !dbg !1796, !prof !1450

18:                                               ; preds = %10
  %19 = tail call i32 @__overflow(ptr noundef nonnull %12, i32 noundef 9) #38, !dbg !1796
  %20 = load i32, ptr @out_column, align 4, !dbg !1797, !tbaa !1023
  br label %23, !dbg !1796

21:                                               ; preds = %10
  %22 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !1796
  store ptr %22, ptr %13, align 8, !dbg !1796, !tbaa !1446
  store i8 9, ptr %14, align 1, !dbg !1796, !tbaa !1032
  br label %23, !dbg !1796

23:                                               ; preds = %18, %21
  %24 = phi i32 [ %20, %18 ], [ %11, %21 ], !dbg !1797
  %25 = sdiv i32 %24, 8, !dbg !1798
  %26 = shl nsw i32 %25, 3, !dbg !1799
  %27 = add i32 %26, 8, !dbg !1799
  store i32 %27, ptr @out_column, align 4, !dbg !1800, !tbaa !1023
  %28 = icmp slt i32 %27, %7, !dbg !1801
  br i1 %28, label %10, label %29, !dbg !1802

29:                                               ; preds = %23, %5, %1
  %30 = phi i32 [ %2, %5 ], [ %2, %1 ], [ %27, %23 ], !dbg !1803
  %31 = icmp slt i32 %30, %3, !dbg !1804
  br i1 %31, label %32, label %49, !dbg !1805

32:                                               ; preds = %29, %45
  %33 = phi i32 [ %47, %45 ], [ %30, %29 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1437, metadata !DIExpression()), !dbg !1806
  %34 = load ptr, ptr @stdout, align 8, !dbg !1809, !tbaa !949
  %35 = getelementptr inbounds %struct._IO_FILE, ptr %34, i64 0, i32 5, !dbg !1809
  %36 = load ptr, ptr %35, align 8, !dbg !1809, !tbaa !1446
  %37 = getelementptr inbounds %struct._IO_FILE, ptr %34, i64 0, i32 6, !dbg !1809
  %38 = load ptr, ptr %37, align 8, !dbg !1809, !tbaa !1449
  %39 = icmp ult ptr %36, %38, !dbg !1809
  br i1 %39, label %43, label %40, !dbg !1809, !prof !1450

40:                                               ; preds = %32
  %41 = tail call i32 @__overflow(ptr noundef nonnull %34, i32 noundef 32) #38, !dbg !1809
  %42 = load i32, ptr @out_column, align 4, !dbg !1810, !tbaa !1023
  br label %45, !dbg !1809

43:                                               ; preds = %32
  %44 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !1809
  store ptr %44, ptr %35, align 8, !dbg !1809, !tbaa !1446
  store i8 32, ptr %36, align 1, !dbg !1809, !tbaa !1032
  br label %45, !dbg !1809

45:                                               ; preds = %40, %43
  %46 = phi i32 [ %42, %40 ], [ %33, %43 ], !dbg !1810
  %47 = add nsw i32 %46, 1, !dbg !1810
  store i32 %47, ptr @out_column, align 4, !dbg !1810, !tbaa !1023
  %48 = icmp slt i32 %47, %3, !dbg !1804
  br i1 %48, label %32, label %49, !dbg !1805, !llvm.loop !1811

49:                                               ; preds = %45, %29
  ret void, !dbg !1813
}

declare !dbg !1814 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1815 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_line(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !1816 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1818, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 %1, metadata !1819, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([5000 x i8], ptr @parabuf, i64 1, i64 0), metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 998), metadata !1822, metadata !DIExpression()), !dbg !1823
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr @word_limit, align 8, !dbg !1824, !tbaa !949
  br label %6, !dbg !1826

6:                                                ; preds = %190, %2
  %7 = phi ptr [ %5, %2 ], [ %192, %190 ], !dbg !1824
  %8 = phi i32 [ %1, %2 ], [ %116, %190 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !1819, metadata !DIExpression()), !dbg !1823
  %9 = load ptr, ptr @wptr, align 8, !dbg !1827, !tbaa !949
  store ptr %9, ptr %7, align 8, !dbg !1828, !tbaa !1829
  br label %12, !dbg !1830

10:                                               ; preds = %56
  %11 = load ptr, ptr @wptr, align 8, !dbg !1831, !tbaa !949
  br label %12, !dbg !1831

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %9, %6 ], !dbg !1831
  %14 = phi i32 [ %57, %10 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !1819, metadata !DIExpression()), !dbg !1823
  %15 = icmp eq ptr %13, getelementptr inbounds ([5000 x i8], ptr @parabuf, i64 1, i64 0), !dbg !1834
  br i1 %15, label %16, label %42, !dbg !1835

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i1 true, metadata !1508, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1836
  %17 = load i1, ptr @split, align 1, !dbg !1839
  br i1 %17, label %18, label %20, !dbg !1840

18:                                               ; preds = %16
  %19 = load i32, ptr @first_indent, align 4, !dbg !1841, !tbaa !1023
  br label %38, !dbg !1842

20:                                               ; preds = %16
  %21 = load i1, ptr @crown, align 1, !dbg !1843
  br i1 %21, label %22, label %24, !dbg !1844

22:                                               ; preds = %20
  %23 = load i32, ptr @in_column, align 4, !dbg !1845
  br label %38, !dbg !1846

24:                                               ; preds = %20
  %25 = load i1, ptr @tagged, align 1, !dbg !1847
  br i1 %25, label %26, label %36, !dbg !1848

26:                                               ; preds = %24
  %27 = load i32, ptr @in_column, align 4, !dbg !1849, !tbaa !1023
  %28 = load i32, ptr @first_indent, align 4, !dbg !1850, !tbaa !1023
  %29 = icmp eq i32 %27, %28, !dbg !1851
  br i1 %29, label %30, label %38, !dbg !1852

30:                                               ; preds = %26
  %31 = load i32, ptr @other_indent, align 4, !dbg !1853, !tbaa !1023
  %32 = icmp eq i32 %31, %27, !dbg !1854
  br i1 %32, label %33, label %40, !dbg !1855

33:                                               ; preds = %30
  %34 = icmp eq i32 %27, 0, !dbg !1856
  %35 = select i1 %34, i32 3, i32 0, !dbg !1857
  br label %38, !dbg !1858

36:                                               ; preds = %24
  %37 = load i32, ptr @first_indent, align 4, !dbg !1859, !tbaa !1023
  br label %38

38:                                               ; preds = %36, %33, %26, %22, %18
  %39 = phi i32 [ %23, %22 ], [ %35, %33 ], [ %37, %36 ], [ %19, %18 ], [ %27, %26 ]
  store i32 %39, ptr @other_indent, align 4, !dbg !1860, !tbaa !1023
  br label %40, !dbg !1861

40:                                               ; preds = %30, %38
  tail call fastcc void @flush_paragraph(), !dbg !1862
  %41 = load ptr, ptr @wptr, align 8, !dbg !1863, !tbaa !949
  br label %42, !dbg !1864

42:                                               ; preds = %40, %12
  %43 = phi ptr [ %41, %40 ], [ %13, %12 ], !dbg !1863
  %44 = trunc i32 %14 to i8, !dbg !1865
  %45 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !1863
  store ptr %45, ptr @wptr, align 8, !dbg !1863, !tbaa !949
  store i8 %44, ptr %43, align 1, !dbg !1866, !tbaa !1032
  call void @llvm.dbg.value(metadata ptr %0, metadata !1471, metadata !DIExpression()), !dbg !1867
  %46 = load ptr, ptr %3, align 8, !dbg !1869, !tbaa !1479
  %47 = load ptr, ptr %4, align 8, !dbg !1869, !tbaa !1480
  %48 = icmp ult ptr %46, %47, !dbg !1869
  br i1 %48, label %49, label %53, !dbg !1869, !prof !1450

49:                                               ; preds = %42
  %50 = getelementptr inbounds i8, ptr %46, i64 1, !dbg !1869
  store ptr %50, ptr %3, align 8, !dbg !1869, !tbaa !1479
  %51 = load i8, ptr %46, align 1, !dbg !1869, !tbaa !1032
  %52 = zext i8 %51 to i32, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %52, metadata !1819, metadata !DIExpression()), !dbg !1823
  br label %56, !dbg !1870

53:                                               ; preds = %42
  %54 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %54, metadata !1819, metadata !DIExpression()), !dbg !1823
  %55 = icmp eq i32 %54, -1, !dbg !1871
  br i1 %55, label %58, label %56, !dbg !1870

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %52, %49 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i32 %54, metadata !1872, metadata !DIExpression()), !dbg !1875
  switch i32 %57, label %10 [
    i32 32, label %58
    i32 9, label %58
    i32 10, label %58
    i32 11, label %58
    i32 12, label %58
    i32 13, label %58
  ], !dbg !1877

58:                                               ; preds = %56, %56, %56, %56, %56, %56, %53
  %59 = phi i32 [ -1, %53 ], [ %57, %56 ], [ %57, %56 ], [ %57, %56 ], [ %57, %56 ], [ %57, %56 ], [ %57, %56 ]
  %60 = load ptr, ptr @wptr, align 8, !dbg !1878, !tbaa !949
  %61 = load ptr, ptr @word_limit, align 8, !dbg !1879, !tbaa !949
  %62 = load ptr, ptr %61, align 8, !dbg !1880, !tbaa !1829
  %63 = ptrtoint ptr %60 to i64, !dbg !1881
  %64 = ptrtoint ptr %62 to i64, !dbg !1881
  %65 = sub i64 %63, %64, !dbg !1881
  %66 = trunc i64 %65 to i32, !dbg !1878
  %67 = getelementptr inbounds %struct.Word, ptr %61, i64 0, i32 1, !dbg !1882
  store i32 %66, ptr %67, align 8, !dbg !1883, !tbaa !1884
  %68 = load i32, ptr @in_column, align 4, !dbg !1885, !tbaa !1023
  %69 = add nsw i32 %68, %66, !dbg !1885
  store i32 %69, ptr @in_column, align 4, !dbg !1885, !tbaa !1023
  call void @llvm.dbg.value(metadata ptr %61, metadata !1886, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata ptr %62, metadata !1889, metadata !DIExpression()), !dbg !1892
  %70 = shl i64 %65, 32, !dbg !1894
  %71 = add i64 %70, -4294967296, !dbg !1894
  %72 = ashr exact i64 %71, 32, !dbg !1894
  %73 = getelementptr inbounds i8, ptr %62, i64 %72, !dbg !1894
  call void @llvm.dbg.value(metadata ptr %73, metadata !1890, metadata !DIExpression()), !dbg !1892
  %74 = load i8, ptr %73, align 1, !dbg !1895, !tbaa !1032
  call void @llvm.dbg.value(metadata i8 %74, metadata !1891, metadata !DIExpression()), !dbg !1892
  %75 = load i8, ptr %62, align 1, !dbg !1896, !tbaa !1032
  %76 = sext i8 %75 to i32, !dbg !1896
  %77 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.75, i32 %76, i64 6), !dbg !1896
  %78 = icmp ne ptr %77, null, !dbg !1896
  %79 = getelementptr inbounds %struct.Word, ptr %61, i64 0, i32 3, !dbg !1897
  %80 = zext i1 %78 to i8, !dbg !1898
  %81 = load i8, ptr %79, align 8, !dbg !1898
  %82 = and i8 %81, -2, !dbg !1898
  %83 = or i8 %82, %80, !dbg !1898
  store i8 %83, ptr %79, align 8, !dbg !1898
  %84 = tail call ptr @__ctype_b_loc() #41, !dbg !1899
  %85 = load ptr, ptr %84, align 8, !dbg !1899, !tbaa !949
  %86 = zext i8 %74 to i64
  %87 = getelementptr inbounds i16, ptr %85, i64 %86, !dbg !1899
  %88 = load i16, ptr %87, align 2, !dbg !1899, !tbaa !1064
  %89 = trunc i16 %88 to i8, !dbg !1900
  %90 = and i8 %89, 4, !dbg !1900
  %91 = and i8 %83, -5, !dbg !1900
  %92 = or i8 %90, %91, !dbg !1900
  store i8 %92, ptr %79, align 8, !dbg !1900
  %93 = icmp sgt i32 %66, 1, !dbg !1901
  br i1 %93, label %94, label %103, !dbg !1902

94:                                               ; preds = %58, %100
  %95 = phi ptr [ %101, %100 ], [ %73, %58 ]
  call void @llvm.dbg.value(metadata ptr %95, metadata !1890, metadata !DIExpression()), !dbg !1892
  %96 = load i8, ptr %95, align 1, !dbg !1903, !tbaa !1032
  %97 = sext i8 %96 to i32, !dbg !1903
  %98 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.76, i32 %97, i64 5), !dbg !1903
  %99 = icmp eq ptr %98, null, !dbg !1903
  br i1 %99, label %103, label %100, !dbg !1904

100:                                              ; preds = %94
  %101 = getelementptr inbounds i8, ptr %95, i64 -1, !dbg !1905
  call void @llvm.dbg.value(metadata ptr %101, metadata !1890, metadata !DIExpression()), !dbg !1892
  %102 = icmp ult ptr %62, %101, !dbg !1901
  br i1 %102, label %94, label %103, !dbg !1902, !llvm.loop !1906

103:                                              ; preds = %94, %100, %58
  %104 = phi ptr [ %73, %58 ], [ %95, %94 ], [ %101, %100 ], !dbg !1892
  %105 = load i8, ptr %104, align 1, !dbg !1907, !tbaa !1032
  %106 = zext i8 %105 to i64, !dbg !1907
  %107 = icmp ult i8 %105, 64, !dbg !1907
  %108 = shl nuw i64 1, %106, !dbg !1907
  %109 = and i64 %108, -9223301659520663551, !dbg !1907
  %110 = icmp ne i64 %109, 0, !dbg !1907
  %111 = select i1 %107, i1 %110, i1 false, !dbg !1907
  %112 = select i1 %111, i8 2, i8 0, !dbg !1908
  %113 = and i8 %92, -3, !dbg !1908
  %114 = or i8 %112, %113, !dbg !1908
  store i8 %114, ptr %79, align 8, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %69, metadata !1820, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %0, metadata !1711, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 %54, metadata !1712, metadata !DIExpression()), !dbg !1909
  br label %115, !dbg !1911

115:                                              ; preds = %136, %103
  %116 = phi i32 [ %59, %103 ], [ %137, %136 ]
  call void @llvm.dbg.value(metadata i32 %116, metadata !1712, metadata !DIExpression()), !dbg !1909
  switch i32 %116, label %138 [
    i32 32, label %117
    i32 9, label %120
  ], !dbg !1912

117:                                              ; preds = %115
  %118 = load i32, ptr @in_column, align 4, !dbg !1913, !tbaa !1023
  %119 = add nsw i32 %118, 1, !dbg !1913
  br label %125, !dbg !1914

120:                                              ; preds = %115
  store i1 true, ptr @tabs, align 1, !dbg !1915
  %121 = load i32, ptr @in_column, align 4, !dbg !1916, !tbaa !1023
  %122 = sdiv i32 %121, 8, !dbg !1917
  %123 = shl nsw i32 %122, 3, !dbg !1918
  %124 = add i32 %123, 8, !dbg !1918
  br label %125

125:                                              ; preds = %120, %117
  %126 = phi i32 [ %124, %120 ], [ %119, %117 ], !dbg !1919
  store i32 %126, ptr @in_column, align 4, !dbg !1919, !tbaa !1023
  call void @llvm.dbg.value(metadata ptr %0, metadata !1471, metadata !DIExpression()), !dbg !1920
  %127 = load ptr, ptr %3, align 8, !dbg !1922, !tbaa !1479
  %128 = load ptr, ptr %4, align 8, !dbg !1922, !tbaa !1480
  %129 = icmp ult ptr %127, %128, !dbg !1922
  br i1 %129, label %132, label %130, !dbg !1922, !prof !1450

130:                                              ; preds = %125
  %131 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1922
  br label %136, !dbg !1922

132:                                              ; preds = %125
  %133 = getelementptr inbounds i8, ptr %127, i64 1, !dbg !1922
  store ptr %133, ptr %3, align 8, !dbg !1922, !tbaa !1479
  %134 = load i8, ptr %127, align 1, !dbg !1922, !tbaa !1032
  %135 = zext i8 %134 to i32, !dbg !1922
  br label %136, !dbg !1922

136:                                              ; preds = %132, %130
  %137 = phi i32 [ %131, %130 ], [ %135, %132 ]
  br label %115, !dbg !1909, !llvm.loop !1923

138:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %116, metadata !1819, metadata !DIExpression()), !dbg !1823
  %139 = load i32, ptr @in_column, align 4, !dbg !1925, !tbaa !1023
  %140 = sub nsw i32 %139, %69, !dbg !1926
  %141 = freeze i32 %140, !dbg !1927
  %142 = load ptr, ptr @word_limit, align 8, !dbg !1928, !tbaa !949
  %143 = getelementptr inbounds %struct.Word, ptr %142, i64 0, i32 2, !dbg !1929
  store i32 %141, ptr %143, align 4, !dbg !1930, !tbaa !1931
  %144 = icmp eq i32 %116, -1, !dbg !1932
  %145 = getelementptr inbounds %struct.Word, ptr %142, i64 0, i32 3
  %146 = load i8, ptr %145, align 8, !dbg !1933
  br i1 %144, label %152, label %147, !dbg !1934

147:                                              ; preds = %138
  %148 = and i8 %146, 2, !dbg !1935
  %149 = icmp eq i8 %148, 0, !dbg !1935
  br i1 %149, label %158, label %150, !dbg !1936

150:                                              ; preds = %147
  %151 = icmp eq i32 %116, 10, !dbg !1937
  br i1 %151, label %152, label %154, !dbg !1938

152:                                              ; preds = %138, %150
  %153 = getelementptr inbounds %struct.Word, ptr %142, i64 0, i32 3, !dbg !1939
  br label %156, !dbg !1940

154:                                              ; preds = %150
  %155 = icmp sgt i32 %141, 1, !dbg !1927
  br i1 %155, label %156, label %158, !dbg !1940

156:                                              ; preds = %152, %154
  %157 = phi ptr [ %153, %152 ], [ %145, %154 ]
  br label %158, !dbg !1940

158:                                              ; preds = %147, %154, %156
  %159 = phi ptr [ %157, %156 ], [ %145, %154 ], [ %145, %147 ]
  %160 = phi i32 [ 2, %156 ], [ 1, %154 ], [ 1, %147 ]
  %161 = phi i8 [ 8, %156 ], [ 0, %154 ], [ 0, %147 ]
  %162 = and i8 %146, -9, !dbg !1940
  %163 = or i8 %161, %162, !dbg !1940
  store i8 %163, ptr %159, align 8, !dbg !1940
  switch i32 %116, label %164 [
    i32 -1, label %166
    i32 10, label %166
  ], !dbg !1941

164:                                              ; preds = %158
  %165 = load i1, ptr @uniform, align 1, !dbg !1943
  br i1 %165, label %166, label %167, !dbg !1944

166:                                              ; preds = %158, %158, %164
  store i32 %160, ptr %143, align 4, !dbg !1945, !tbaa !1931
  br label %167, !dbg !1946

167:                                              ; preds = %166, %164
  %168 = icmp eq ptr %142, getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 998), !dbg !1947
  br i1 %168, label %169, label %190, !dbg !1949

169:                                              ; preds = %167
  call void @llvm.dbg.value(metadata i1 true, metadata !1508, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1950
  %170 = load i1, ptr @split, align 1, !dbg !1953
  br i1 %170, label %171, label %173, !dbg !1954

171:                                              ; preds = %169
  %172 = load i32, ptr @first_indent, align 4, !dbg !1955, !tbaa !1023
  br label %186, !dbg !1956

173:                                              ; preds = %169
  %174 = load i1, ptr @crown, align 1, !dbg !1957
  br i1 %174, label %186, label %175, !dbg !1958

175:                                              ; preds = %173
  %176 = load i1, ptr @tagged, align 1, !dbg !1959
  %177 = load i32, ptr @first_indent, align 4, !dbg !1960, !tbaa !1023
  br i1 %176, label %178, label %186, !dbg !1961

178:                                              ; preds = %175
  %179 = icmp eq i32 %139, %177, !dbg !1962
  br i1 %179, label %180, label %186, !dbg !1963

180:                                              ; preds = %178
  %181 = load i32, ptr @other_indent, align 4, !dbg !1964, !tbaa !1023
  %182 = icmp eq i32 %181, %139, !dbg !1965
  br i1 %182, label %183, label %188, !dbg !1966

183:                                              ; preds = %180
  %184 = icmp eq i32 %139, 0, !dbg !1967
  %185 = select i1 %184, i32 3, i32 0, !dbg !1968
  br label %186, !dbg !1969

186:                                              ; preds = %175, %173, %183, %178, %171
  %187 = phi i32 [ %185, %183 ], [ %172, %171 ], [ %139, %178 ], [ %139, %173 ], [ %177, %175 ]
  store i32 %187, ptr @other_indent, align 4, !dbg !1970, !tbaa !1023
  br label %188, !dbg !1971

188:                                              ; preds = %180, %186
  tail call fastcc void @flush_paragraph(), !dbg !1972
  %189 = load ptr, ptr @word_limit, align 8, !dbg !1973, !tbaa !949
  br label %190, !dbg !1974

190:                                              ; preds = %188, %167
  %191 = phi ptr [ %189, %188 ], [ %142, %167 ], !dbg !1973
  %192 = getelementptr inbounds %struct.Word, ptr %191, i64 1, !dbg !1973
  store ptr %192, ptr @word_limit, align 8, !dbg !1973, !tbaa !949
  switch i32 %116, label %6 [
    i32 -1, label %193
    i32 10, label %193
  ], !dbg !1975

193:                                              ; preds = %190, %190
  %194 = tail call fastcc i32 @get_prefix(ptr noundef %0), !dbg !1976
  ret i32 %194, !dbg !1977
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fmt_paragraph() unnamed_addr #11 !dbg !1978 {
  %1 = load ptr, ptr @word_limit, align 8, !dbg !1987, !tbaa !949
  %2 = getelementptr inbounds %struct.Word, ptr %1, i64 0, i32 5, !dbg !1988
  store i64 0, ptr %2, align 8, !dbg !1989, !tbaa !1990
  %3 = getelementptr inbounds %struct.Word, ptr %1, i64 0, i32 1, !dbg !1991
  %4 = load i32, ptr %3, align 8, !dbg !1991, !tbaa !1884
  call void @llvm.dbg.value(metadata i32 %4, metadata !1984, metadata !DIExpression()), !dbg !1992
  %5 = load i32, ptr @max_width, align 4, !dbg !1993, !tbaa !1023
  store i32 %5, ptr %3, align 8, !dbg !1994, !tbaa !1884
  call void @llvm.dbg.value(metadata ptr %1, metadata !1985, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1995
  %6 = getelementptr inbounds %struct.Word, ptr %1, i64 -1, !dbg !1996
  call void @llvm.dbg.value(metadata ptr %6, metadata !1985, metadata !DIExpression()), !dbg !1995
  %7 = icmp ult ptr %6, @unused_word_type, !dbg !1997
  br i1 %7, label %14, label %8, !dbg !1999

8:                                                ; preds = %0
  %9 = load i32, ptr @first_indent, align 4
  %10 = load i32, ptr @other_indent, align 4
  %11 = load i32, ptr @last_line_length, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = load i32, ptr @goal_width, align 4
  br label %15, !dbg !1999

14:                                               ; preds = %119, %0
  store i32 %4, ptr %3, align 8, !dbg !2000, !tbaa !1884
  ret void, !dbg !2001

15:                                               ; preds = %8, %119
  %16 = phi ptr [ %6, %8 ], [ %123, %119 ]
  %17 = phi ptr [ %1, %8 ], [ %16, %119 ]
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1983, metadata !DIExpression()), !dbg !1992
  %18 = icmp eq ptr %16, @unused_word_type, !dbg !2002
  %19 = select i1 %18, i32 %9, i32 %10, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %19, metadata !1981, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata ptr %16, metadata !1980, metadata !DIExpression()), !dbg !1992
  %20 = getelementptr %struct.Word, ptr %17, i64 -1, i32 1, !dbg !2005
  %21 = load i32, ptr %20, align 8, !dbg !2005, !tbaa !1884
  %22 = add nsw i32 %19, %21, !dbg !2006
  call void @llvm.dbg.value(metadata i32 %22, metadata !1981, metadata !DIExpression()), !dbg !1992
  %23 = select i1 %18, i1 %12, i1 false
  %24 = getelementptr %struct.Word, ptr %17, i64 -1, i32 6
  %25 = getelementptr %struct.Word, ptr %17, i64 -1, i32 4
  br label %26, !dbg !2007

26:                                               ; preds = %67, %15
  %27 = phi i32 [ %22, %15 ], [ %73, %67 ], !dbg !2008
  %28 = phi i64 [ 9223372036854775807, %15 ], [ %66, %67 ], !dbg !2008
  %29 = phi ptr [ %16, %15 ], [ %30, %67 ], !dbg !2008
  call void @llvm.dbg.value(metadata ptr %29, metadata !1980, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %28, metadata !1983, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i32 %27, metadata !1981, metadata !DIExpression()), !dbg !1992
  %30 = getelementptr inbounds %struct.Word, ptr %29, i64 1, !dbg !2009
  call void @llvm.dbg.value(metadata ptr %30, metadata !1980, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata ptr %30, metadata !2011, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %27, metadata !2016, metadata !DIExpression()), !dbg !2019
  %31 = icmp eq ptr %1, %30, !dbg !2021
  br i1 %31, label %49, label %32, !dbg !2023

32:                                               ; preds = %26
  %33 = sub nsw i32 %13, %27, !dbg !2024
  call void @llvm.dbg.value(metadata i32 %33, metadata !2017, metadata !DIExpression()), !dbg !2019
  %34 = mul nsw i32 %33, 10, !dbg !2025
  %35 = sext i32 %34 to i64, !dbg !2025
  %36 = mul nsw i64 %35, %35, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %36, metadata !2018, metadata !DIExpression()), !dbg !2019
  %37 = getelementptr inbounds %struct.Word, ptr %29, i64 1, i32 6, !dbg !2026
  %38 = load ptr, ptr %37, align 8, !dbg !2026, !tbaa !1644
  %39 = icmp eq ptr %38, %1, !dbg !2028
  br i1 %39, label %49, label %40, !dbg !2029

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.Word, ptr %29, i64 1, i32 4, !dbg !2030
  %42 = load i32, ptr %41, align 4, !dbg !2030, !tbaa !2032
  %43 = sub nsw i32 %27, %42, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %43, metadata !2017, metadata !DIExpression()), !dbg !2019
  %44 = mul nsw i32 %43, 10, !dbg !2034
  %45 = sext i32 %44 to i64, !dbg !2034
  %46 = mul nsw i64 %45, %45, !dbg !2034
  %47 = lshr exact i64 %46, 1, !dbg !2034
  %48 = add nuw nsw i64 %47, %36, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %48, metadata !2018, metadata !DIExpression()), !dbg !2019
  br label %49, !dbg !2036

49:                                               ; preds = %26, %32, %40
  %50 = phi i64 [ 0, %26 ], [ %48, %40 ], [ %36, %32 ], !dbg !2019
  %51 = getelementptr inbounds %struct.Word, ptr %29, i64 1, i32 5, !dbg !2037
  %52 = load i64, ptr %51, align 8, !dbg !2037, !tbaa !1990
  %53 = add nsw i64 %52, %50, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %53, metadata !1982, metadata !DIExpression()), !dbg !1992
  br i1 %23, label %54, label %61, !dbg !2039

54:                                               ; preds = %49
  %55 = sub nsw i32 %27, %11, !dbg !2041
  %56 = mul nsw i32 %55, 10, !dbg !2041
  %57 = sext i32 %56 to i64, !dbg !2041
  %58 = mul nsw i64 %57, %57, !dbg !2041
  %59 = lshr exact i64 %58, 1, !dbg !2041
  %60 = add nsw i64 %59, %53, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %60, metadata !1982, metadata !DIExpression()), !dbg !1992
  br label %61, !dbg !2043

61:                                               ; preds = %54, %49
  %62 = phi i64 [ %60, %54 ], [ %53, %49 ], !dbg !2044
  call void @llvm.dbg.value(metadata i64 %62, metadata !1982, metadata !DIExpression()), !dbg !1992
  %63 = icmp slt i64 %62, %28, !dbg !2045
  br i1 %63, label %64, label %65, !dbg !2047

64:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 %62, metadata !1983, metadata !DIExpression()), !dbg !1992
  store ptr %30, ptr %24, align 8, !dbg !2048, !tbaa !1644
  store i32 %27, ptr %25, align 4, !dbg !2050, !tbaa !2032
  br label %65, !dbg !2051

65:                                               ; preds = %64, %61
  %66 = phi i64 [ %62, %64 ], [ %28, %61 ], !dbg !2008
  call void @llvm.dbg.value(metadata i64 %66, metadata !1983, metadata !DIExpression()), !dbg !1992
  br i1 %31, label %75, label %67, !dbg !2052

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.Word, ptr %29, i64 0, i32 2, !dbg !2053
  %69 = load i32, ptr %68, align 4, !dbg !2053, !tbaa !1931
  %70 = getelementptr inbounds %struct.Word, ptr %29, i64 1, i32 1, !dbg !2054
  %71 = load i32, ptr %70, align 8, !dbg !2054, !tbaa !1884
  %72 = add i32 %69, %27, !dbg !2055
  %73 = add i32 %72, %71, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %73, metadata !1981, metadata !DIExpression()), !dbg !1992
  %74 = icmp sgt i32 %73, %5, !dbg !2057
  br i1 %74, label %75, label %26, !dbg !2058, !llvm.loop !2059

75:                                               ; preds = %65, %67
  call void @llvm.dbg.value(metadata ptr %16, metadata !2061, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 4900, metadata !2066, metadata !DIExpression()), !dbg !2067
  %76 = icmp ugt ptr %16, @unused_word_type, !dbg !2069
  br i1 %76, label %77, label %103, !dbg !2071

77:                                               ; preds = %75
  %78 = getelementptr %struct.Word, ptr %17, i64 -2, i32 3, !dbg !2072
  %79 = load i8, ptr %78, align 8, !dbg !2072
  %80 = and i8 %79, 2, !dbg !2075
  %81 = icmp eq i8 %80, 0, !dbg !2075
  br i1 %81, label %86, label %82, !dbg !2076

82:                                               ; preds = %77
  %83 = and i8 %79, 8, !dbg !2077
  %84 = icmp eq i8 %83, 0, !dbg !2077
  %85 = select i1 %84, i64 364900, i64 2400
  br label %103

86:                                               ; preds = %77
  %87 = and i8 %79, 4, !dbg !2080
  %88 = icmp eq i8 %87, 0, !dbg !2080
  br i1 %88, label %89, label %103, !dbg !2082

89:                                               ; preds = %86
  %90 = icmp ugt ptr %16, getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 1), !dbg !2083
  br i1 %90, label %91, label %103, !dbg !2085

91:                                               ; preds = %89
  %92 = getelementptr %struct.Word, ptr %17, i64 -3, i32 3, !dbg !2086
  %93 = load i8, ptr %92, align 8, !dbg !2086
  %94 = and i8 %93, 8, !dbg !2087
  %95 = icmp eq i8 %94, 0, !dbg !2087
  br i1 %95, label %103, label %96, !dbg !2088

96:                                               ; preds = %91
  %97 = getelementptr %struct.Word, ptr %17, i64 -2, i32 1, !dbg !2089
  %98 = load i32, ptr %97, align 8, !dbg !2089, !tbaa !1884
  %99 = add nsw i32 %98, 2, !dbg !2089
  %100 = sdiv i32 40000, %99, !dbg !2089
  %101 = add nsw i32 %100, 4900, !dbg !2090
  %102 = sext i32 %101 to i64, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %102, metadata !2066, metadata !DIExpression()), !dbg !2067
  br label %103, !dbg !2091

103:                                              ; preds = %96, %91, %89, %86, %82, %75
  %104 = phi i64 [ %102, %96 ], [ 4900, %91 ], [ 4900, %89 ], [ 4900, %75 ], [ %85, %82 ], [ 3300, %86 ], !dbg !2067
  call void @llvm.dbg.value(metadata i64 %104, metadata !2066, metadata !DIExpression()), !dbg !2067
  %105 = getelementptr %struct.Word, ptr %17, i64 -1, i32 3, !dbg !2092
  %106 = load i8, ptr %105, align 8, !dbg !2092
  %107 = and i8 %106, 1, !dbg !2092
  %108 = icmp eq i8 %107, 0, !dbg !2094
  br i1 %108, label %111, label %109, !dbg !2095

109:                                              ; preds = %103
  %110 = add nsw i64 %104, -1600, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %110, metadata !2066, metadata !DIExpression()), !dbg !2067
  br label %119, !dbg !2097

111:                                              ; preds = %103
  %112 = and i8 %106, 8, !dbg !2098
  %113 = icmp eq i8 %112, 0, !dbg !2098
  br i1 %113, label %119, label %114, !dbg !2100

114:                                              ; preds = %111
  %115 = add nsw i32 %21, 2, !dbg !2101
  %116 = sdiv i32 22500, %115, !dbg !2101
  %117 = sext i32 %116 to i64, !dbg !2101
  %118 = add nsw i64 %104, %117, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %118, metadata !2066, metadata !DIExpression()), !dbg !2067
  br label %119, !dbg !2103

119:                                              ; preds = %109, %111, %114
  %120 = phi i64 [ %110, %109 ], [ %118, %114 ], [ %104, %111 ], !dbg !2067
  call void @llvm.dbg.value(metadata i64 %120, metadata !2066, metadata !DIExpression()), !dbg !2067
  %121 = add nsw i64 %120, %66, !dbg !2104
  %122 = getelementptr %struct.Word, ptr %17, i64 -1, i32 5, !dbg !2105
  store i64 %121, ptr %122, align 8, !dbg !2106, !tbaa !1990
  call void @llvm.dbg.value(metadata ptr %16, metadata !1985, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1995
  %123 = getelementptr inbounds %struct.Word, ptr %16, i64 -1, !dbg !1996
  call void @llvm.dbg.value(metadata ptr %123, metadata !1985, metadata !DIExpression()), !dbg !1995
  %124 = icmp ult ptr %123, @unused_word_type, !dbg !1997
  br i1 %124, label %14, label %15, !dbg !1999, !llvm.loop !2107
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_line(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 !dbg !2109 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2113, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i32 %1, metadata !2114, metadata !DIExpression()), !dbg !2116
  store i32 0, ptr @out_column, align 4, !dbg !2117, !tbaa !1023
  %3 = load i32, ptr @prefix_indent, align 4, !dbg !2118, !tbaa !1023
  tail call fastcc void @put_space(i32 noundef %3), !dbg !2119
  %4 = load ptr, ptr @prefix, align 8, !dbg !2120, !tbaa !949
  %5 = load ptr, ptr @stdout, align 8, !dbg !2120, !tbaa !949
  %6 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef %5), !dbg !2120
  %7 = load i32, ptr @prefix_length, align 4, !dbg !2121, !tbaa !1023
  %8 = load i32, ptr @out_column, align 4, !dbg !2122, !tbaa !1023
  %9 = add nsw i32 %8, %7, !dbg !2122
  store i32 %9, ptr @out_column, align 4, !dbg !2122, !tbaa !1023
  %10 = sub nsw i32 %1, %9, !dbg !2123
  tail call fastcc void @put_space(i32 noundef %10), !dbg !2124
  %11 = getelementptr inbounds %struct.Word, ptr %0, i64 0, i32 6, !dbg !2125
  %12 = load ptr, ptr %11, align 8, !dbg !2125, !tbaa !1644
  %13 = getelementptr inbounds %struct.Word, ptr %12, i64 -1, !dbg !2126
  call void @llvm.dbg.value(metadata ptr %13, metadata !2115, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %0, metadata !2113, metadata !DIExpression()), !dbg !2116
  %14 = icmp eq ptr %13, %0, !dbg !2127
  br i1 %14, label %51, label %15, !dbg !2130

15:                                               ; preds = %2, %43
  %16 = phi ptr [ %49, %43 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !2113, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %16, metadata !2131, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata ptr poison, metadata !2134, metadata !DIExpression()), !dbg !2137
  %17 = getelementptr inbounds %struct.Word, ptr %16, i64 0, i32 1, !dbg !2140
  %18 = load i32, ptr %17, align 8, !dbg !2140, !tbaa !1884
  call void @llvm.dbg.value(metadata i32 %18, metadata !2135, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr poison, metadata !2134, metadata !DIExpression()), !dbg !2137
  %19 = icmp eq i32 %18, 0, !dbg !2142
  br i1 %19, label %43, label %20, !dbg !2144

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !dbg !2145, !tbaa !1829
  call void @llvm.dbg.value(metadata ptr %21, metadata !2134, metadata !DIExpression()), !dbg !2137
  br label %24, !dbg !2144

22:                                               ; preds = %40
  %23 = load i32, ptr %17, align 8, !dbg !2146, !tbaa !1884
  br label %43, !dbg !2146

24:                                               ; preds = %40, %20
  %25 = phi i32 [ %41, %40 ], [ %18, %20 ]
  %26 = phi ptr [ %27, %40 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !2135, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %26, metadata !2134, metadata !DIExpression()), !dbg !2137
  %27 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %27, metadata !2134, metadata !DIExpression()), !dbg !2137
  %28 = load i8, ptr %26, align 1, !dbg !2147, !tbaa !1032
  call void @llvm.dbg.value(metadata i8 %28, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2148
  %29 = load ptr, ptr @stdout, align 8, !dbg !2150, !tbaa !949
  %30 = getelementptr inbounds %struct._IO_FILE, ptr %29, i64 0, i32 5, !dbg !2150
  %31 = load ptr, ptr %30, align 8, !dbg !2150, !tbaa !1446
  %32 = getelementptr inbounds %struct._IO_FILE, ptr %29, i64 0, i32 6, !dbg !2150
  %33 = load ptr, ptr %32, align 8, !dbg !2150, !tbaa !1449
  %34 = icmp ult ptr %31, %33, !dbg !2150
  br i1 %34, label %38, label %35, !dbg !2150, !prof !1450

35:                                               ; preds = %24
  %36 = zext i8 %28 to i32, !dbg !2147
  call void @llvm.dbg.value(metadata i8 %28, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2148
  %37 = tail call i32 @__overflow(ptr noundef nonnull %29, i32 noundef %36) #38, !dbg !2150
  br label %40, !dbg !2150

38:                                               ; preds = %24
  %39 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !2150
  store ptr %39, ptr %30, align 8, !dbg !2150, !tbaa !1446
  store i8 %28, ptr %31, align 1, !dbg !2150, !tbaa !1032
  br label %40, !dbg !2150

40:                                               ; preds = %38, %35
  %41 = add nsw i32 %25, -1, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %41, metadata !2135, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %27, metadata !2134, metadata !DIExpression()), !dbg !2137
  %42 = icmp eq i32 %41, 0, !dbg !2142
  br i1 %42, label %22, label %24, !dbg !2144, !llvm.loop !2152

43:                                               ; preds = %15, %22
  %44 = phi i32 [ %23, %22 ], [ 0, %15 ], !dbg !2146
  %45 = load i32, ptr @out_column, align 4, !dbg !2154, !tbaa !1023
  %46 = add nsw i32 %45, %44, !dbg !2154
  store i32 %46, ptr @out_column, align 4, !dbg !2154, !tbaa !1023
  %47 = getelementptr inbounds %struct.Word, ptr %16, i64 0, i32 2, !dbg !2155
  %48 = load i32, ptr %47, align 4, !dbg !2155, !tbaa !1931
  tail call fastcc void @put_space(i32 noundef %48), !dbg !2156
  %49 = getelementptr inbounds %struct.Word, ptr %16, i64 1, !dbg !2157
  call void @llvm.dbg.value(metadata ptr %49, metadata !2113, metadata !DIExpression()), !dbg !2116
  %50 = icmp eq ptr %49, %13, !dbg !2127
  br i1 %50, label %51, label %15, !dbg !2130, !llvm.loop !2158

51:                                               ; preds = %43, %2
  %52 = phi ptr [ %0, %2 ], [ %13, %43 ]
  call void @llvm.dbg.value(metadata ptr %52, metadata !2131, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata ptr poison, metadata !2134, metadata !DIExpression()), !dbg !2160
  %53 = getelementptr inbounds %struct.Word, ptr %52, i64 0, i32 1, !dbg !2162
  %54 = load i32, ptr %53, align 8, !dbg !2162, !tbaa !1884
  call void @llvm.dbg.value(metadata i32 %54, metadata !2135, metadata !DIExpression()), !dbg !2163
  %55 = icmp eq i32 %54, 0, !dbg !2164
  br i1 %55, label %79, label %56, !dbg !2165

56:                                               ; preds = %51
  %57 = load ptr, ptr %52, align 8, !dbg !2166, !tbaa !1829
  call void @llvm.dbg.value(metadata ptr %57, metadata !2134, metadata !DIExpression()), !dbg !2160
  br label %60, !dbg !2165

58:                                               ; preds = %76
  %59 = load i32, ptr %53, align 8, !dbg !2167, !tbaa !1884
  br label %79, !dbg !2167

60:                                               ; preds = %76, %56
  %61 = phi i32 [ %77, %76 ], [ %54, %56 ]
  %62 = phi ptr [ %63, %76 ], [ %57, %56 ]
  call void @llvm.dbg.value(metadata i32 %61, metadata !2135, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata ptr %62, metadata !2134, metadata !DIExpression()), !dbg !2160
  %63 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2168
  call void @llvm.dbg.value(metadata ptr %63, metadata !2134, metadata !DIExpression()), !dbg !2160
  %64 = load i8, ptr %62, align 1, !dbg !2168, !tbaa !1032
  call void @llvm.dbg.value(metadata i8 %64, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2169
  %65 = load ptr, ptr @stdout, align 8, !dbg !2171, !tbaa !949
  %66 = getelementptr inbounds %struct._IO_FILE, ptr %65, i64 0, i32 5, !dbg !2171
  %67 = load ptr, ptr %66, align 8, !dbg !2171, !tbaa !1446
  %68 = getelementptr inbounds %struct._IO_FILE, ptr %65, i64 0, i32 6, !dbg !2171
  %69 = load ptr, ptr %68, align 8, !dbg !2171, !tbaa !1449
  %70 = icmp ult ptr %67, %69, !dbg !2171
  br i1 %70, label %74, label %71, !dbg !2171, !prof !1450

71:                                               ; preds = %60
  %72 = zext i8 %64 to i32, !dbg !2168
  call void @llvm.dbg.value(metadata i8 %64, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2169
  %73 = tail call i32 @__overflow(ptr noundef nonnull %65, i32 noundef %72) #38, !dbg !2171
  br label %76, !dbg !2171

74:                                               ; preds = %60
  %75 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !2171
  store ptr %75, ptr %66, align 8, !dbg !2171, !tbaa !1446
  store i8 %64, ptr %67, align 1, !dbg !2171, !tbaa !1032
  br label %76, !dbg !2171

76:                                               ; preds = %74, %71
  %77 = add nsw i32 %61, -1, !dbg !2172
  call void @llvm.dbg.value(metadata i32 %77, metadata !2135, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata ptr %63, metadata !2134, metadata !DIExpression()), !dbg !2160
  %78 = icmp eq i32 %77, 0, !dbg !2164
  br i1 %78, label %58, label %60, !dbg !2165, !llvm.loop !2173

79:                                               ; preds = %51, %58
  %80 = phi i32 [ %59, %58 ], [ 0, %51 ], !dbg !2167
  %81 = load i32, ptr @out_column, align 4, !dbg !2175, !tbaa !1023
  %82 = add nsw i32 %81, %80, !dbg !2175
  store i32 %82, ptr @out_column, align 4, !dbg !2175, !tbaa !1023
  store i32 %82, ptr @last_line_length, align 4, !dbg !2176, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 10, metadata !1437, metadata !DIExpression()), !dbg !2177
  %83 = load ptr, ptr @stdout, align 8, !dbg !2179, !tbaa !949
  %84 = getelementptr inbounds %struct._IO_FILE, ptr %83, i64 0, i32 5, !dbg !2179
  %85 = load ptr, ptr %84, align 8, !dbg !2179, !tbaa !1446
  %86 = getelementptr inbounds %struct._IO_FILE, ptr %83, i64 0, i32 6, !dbg !2179
  %87 = load ptr, ptr %86, align 8, !dbg !2179, !tbaa !1449
  %88 = icmp ult ptr %85, %87, !dbg !2179
  br i1 %88, label %91, label %89, !dbg !2179, !prof !1450

89:                                               ; preds = %79
  %90 = tail call i32 @__overflow(ptr noundef nonnull %83, i32 noundef 10) #38, !dbg !2179
  br label %93, !dbg !2179

91:                                               ; preds = %79
  %92 = getelementptr inbounds i8, ptr %85, i64 1, !dbg !2179
  store ptr %92, ptr %84, align 8, !dbg !2179, !tbaa !1446
  store i8 10, ptr %85, align 1, !dbg !2179, !tbaa !1032
  br label %93, !dbg !2179

93:                                               ; preds = %89, %91
  %94 = load ptr, ptr @stdout, align 8, !dbg !2180, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %94, metadata !1656, metadata !DIExpression()), !dbg !2182
  %95 = load i32, ptr %94, align 8, !dbg !2184, !tbaa !1662
  %96 = and i32 %95, 32, !dbg !2180
  %97 = icmp eq i32 %96, 0, !dbg !2180
  br i1 %97, label %106, label %98, !dbg !2185

98:                                               ; preds = %93
  %99 = tail call ptr @__errno_location() #41, !dbg !2186
  %100 = load i32, ptr %99, align 4, !dbg !2186, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %100, metadata !2189, metadata !DIExpression()), !dbg !2191
  %101 = tail call i32 @fflush_unlocked(ptr noundef nonnull %94) #38, !dbg !2192
  %102 = load ptr, ptr @stdout, align 8, !dbg !2193, !tbaa !949
  %103 = tail call i32 @fpurge(ptr noundef %102) #38, !dbg !2194
  %104 = load ptr, ptr @stdout, align 8, !dbg !2195, !tbaa !949
  tail call void @clearerr_unlocked(ptr noundef %104) #38, !dbg !2195
  %105 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #38, !dbg !2196
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %100, ptr noundef %105) #38, !dbg !2196
  unreachable, !dbg !2196

106:                                              ; preds = %93
  ret void, !dbg !2197
}

; Function Attrs: nounwind
declare !dbg !2198 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !2201 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_paragraph() unnamed_addr #10 !dbg !2202 {
  %1 = load ptr, ptr @word_limit, align 8, !dbg !2216, !tbaa !949
  %2 = icmp eq ptr %1, @unused_word_type, !dbg !2217
  br i1 %2, label %3, label %20, !dbg !2218

3:                                                ; preds = %0
  %4 = load ptr, ptr @wptr, align 8, !dbg !2219, !tbaa !949
  %5 = ptrtoint ptr %4 to i64, !dbg !2220
  %6 = sub i64 %5, ptrtoint (ptr @parabuf to i64), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %6, metadata !2208, metadata !DIExpression()), !dbg !2221
  %7 = load ptr, ptr @stdout, align 8, !dbg !2222, !tbaa !949
  %8 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @parabuf, i64 noundef 1, i64 noundef %6, ptr noundef %7), !dbg !2222
  %9 = icmp eq i64 %8, %6, !dbg !2223
  br i1 %9, label %19, label %10, !dbg !2224

10:                                               ; preds = %3
  %11 = tail call ptr @__errno_location() #41, !dbg !2225
  %12 = load i32, ptr %11, align 4, !dbg !2225, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %12, metadata !2189, metadata !DIExpression()), !dbg !2227
  %13 = load ptr, ptr @stdout, align 8, !dbg !2228, !tbaa !949
  %14 = tail call i32 @fflush_unlocked(ptr noundef %13) #38, !dbg !2228
  %15 = load ptr, ptr @stdout, align 8, !dbg !2229, !tbaa !949
  %16 = tail call i32 @fpurge(ptr noundef %15) #38, !dbg !2230
  %17 = load ptr, ptr @stdout, align 8, !dbg !2231, !tbaa !949
  tail call void @clearerr_unlocked(ptr noundef %17) #38, !dbg !2231
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #38, !dbg !2232
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %12, ptr noundef %18) #38, !dbg !2232
  unreachable, !dbg !2232

19:                                               ; preds = %3
  store ptr @parabuf, ptr @wptr, align 8, !dbg !2233, !tbaa !949
  br label %87

20:                                               ; preds = %0
  tail call fastcc void @fmt_paragraph(), !dbg !2234
  call void @llvm.dbg.value(metadata ptr %1, metadata !2204, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !2207, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata ptr poison, metadata !2205, metadata !DIExpression()), !dbg !2235
  %21 = load ptr, ptr getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !2236, !tbaa !1644
  call void @llvm.dbg.value(metadata ptr %21, metadata !2205, metadata !DIExpression()), !dbg !2235
  %22 = icmp eq ptr %21, %1, !dbg !2238
  br i1 %22, label %43, label %23, !dbg !2240

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Word, ptr %21, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !dbg !2241, !tbaa !1990
  br label %26, !dbg !2240

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %34, %26 ], [ %25, %23 ], !dbg !2241
  %28 = phi ptr [ %32, %26 ], [ %21, %23 ]
  %29 = phi ptr [ %38, %26 ], [ %1, %23 ]
  %30 = phi i64 [ %41, %26 ], [ 9223372036854775807, %23 ]
  call void @llvm.dbg.value(metadata ptr %29, metadata !2204, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 %30, metadata !2207, metadata !DIExpression()), !dbg !2235
  %31 = getelementptr inbounds %struct.Word, ptr %28, i64 0, i32 6, !dbg !2244
  %32 = load ptr, ptr %31, align 8, !dbg !2244, !tbaa !1644
  %33 = getelementptr inbounds %struct.Word, ptr %32, i64 0, i32 5, !dbg !2245
  %34 = load i64, ptr %33, align 8, !dbg !2245, !tbaa !1990
  %35 = sub nsw i64 %27, %34, !dbg !2246
  %36 = icmp slt i64 %35, %30, !dbg !2247
  %37 = tail call i64 @llvm.smin.i64(i64 %35, i64 %30), !dbg !2248
  %38 = select i1 %36, ptr %28, ptr %29, !dbg !2248
  call void @llvm.dbg.value(metadata ptr %38, metadata !2204, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 %37, metadata !2207, metadata !DIExpression()), !dbg !2235
  %39 = icmp slt i64 %37, 9223372036854775799, !dbg !2249
  %40 = add nsw i64 %37, 9, !dbg !2251
  %41 = select i1 %39, i64 %40, i64 %37, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %41, metadata !2207, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata ptr %32, metadata !2205, metadata !DIExpression()), !dbg !2235
  %42 = icmp eq ptr %32, %1, !dbg !2238
  br i1 %42, label %43, label %26, !dbg !2240, !llvm.loop !2252

43:                                               ; preds = %26, %20
  %44 = phi ptr [ %1, %20 ], [ %38, %26 ], !dbg !2235
  call void @llvm.dbg.value(metadata ptr %44, metadata !1631, metadata !DIExpression()), !dbg !2254
  %45 = load i32, ptr @first_indent, align 4, !dbg !2256, !tbaa !1023
  tail call fastcc void @put_line(ptr noundef nonnull @unused_word_type, i32 noundef %45), !dbg !2257
  call void @llvm.dbg.value(metadata ptr poison, metadata !1636, metadata !DIExpression()), !dbg !2258
  %46 = load ptr, ptr getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !2259, !tbaa !1644
  call void @llvm.dbg.value(metadata ptr %46, metadata !1636, metadata !DIExpression()), !dbg !2258
  %47 = icmp eq ptr %46, %44, !dbg !2260
  br i1 %47, label %54, label %48, !dbg !2261

48:                                               ; preds = %43, %48
  %49 = phi ptr [ %52, %48 ], [ %46, %43 ]
  %50 = load i32, ptr @other_indent, align 4, !dbg !2262, !tbaa !1023
  tail call fastcc void @put_line(ptr noundef %49, i32 noundef %50), !dbg !2263
  %51 = getelementptr inbounds %struct.Word, ptr %49, i64 0, i32 6, !dbg !2264
  call void @llvm.dbg.value(metadata ptr poison, metadata !1636, metadata !DIExpression()), !dbg !2258
  %52 = load ptr, ptr %51, align 8, !dbg !2259, !tbaa !1644
  call void @llvm.dbg.value(metadata ptr %52, metadata !1636, metadata !DIExpression()), !dbg !2258
  %53 = icmp eq ptr %52, %44, !dbg !2260
  br i1 %53, label %54, label %48, !dbg !2261, !llvm.loop !2265

54:                                               ; preds = %48, %43
  %55 = load ptr, ptr %44, align 8, !dbg !2267, !tbaa !1829
  %56 = load ptr, ptr @wptr, align 8, !dbg !2268, !tbaa !949
  %57 = ptrtoint ptr %56 to i64, !dbg !2269
  %58 = ptrtoint ptr %55 to i64, !dbg !2269
  %59 = sub i64 %57, %58, !dbg !2269
  call void @llvm.dbg.value(metadata ptr @parabuf, metadata !2270, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata ptr %55, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %59, metadata !2277, metadata !DIExpression()), !dbg !2278
  %60 = tail call ptr @__memmove_chk(ptr noundef nonnull @parabuf, ptr noundef nonnull %55, i64 noundef %59, i64 noundef 5000) #38, !dbg !2280
  %61 = load ptr, ptr %44, align 8, !dbg !2281, !tbaa !1829
  %62 = ptrtoint ptr %61 to i64, !dbg !2282
  %63 = sub i64 %62, sext (i32 ptrtoint (ptr @parabuf to i32) to i64), !dbg !2283
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i32 ptrtoint (ptr @parabuf to i32)), metadata !2206, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2235
  %64 = load ptr, ptr @wptr, align 8, !dbg !2284, !tbaa !949
  %65 = shl i64 %63, 32, !dbg !2284
  %66 = ashr exact i64 %65, 32, !dbg !2284
  %67 = sub nsw i64 0, %66, !dbg !2284
  %68 = getelementptr inbounds i8, ptr %64, i64 %67, !dbg !2284
  store ptr %68, ptr @wptr, align 8, !dbg !2284, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %44, metadata !2205, metadata !DIExpression()), !dbg !2235
  %69 = load ptr, ptr @word_limit, align 8, !tbaa !949
  %70 = icmp ugt ptr %44, %69, !dbg !2285
  br i1 %70, label %77, label %71, !dbg !2288

71:                                               ; preds = %54, %71
  %72 = phi ptr [ %75, %71 ], [ %44, %54 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2205, metadata !DIExpression()), !dbg !2235
  %73 = load ptr, ptr %72, align 8, !dbg !2289, !tbaa !1829
  %74 = getelementptr inbounds i8, ptr %73, i64 %67, !dbg !2289
  store ptr %74, ptr %72, align 8, !dbg !2289, !tbaa !1829
  %75 = getelementptr inbounds %struct.Word, ptr %72, i64 1, !dbg !2290
  call void @llvm.dbg.value(metadata ptr %75, metadata !2205, metadata !DIExpression()), !dbg !2235
  %76 = icmp ugt ptr %75, %69, !dbg !2285
  br i1 %76, label %77, label %71, !dbg !2288, !llvm.loop !2291

77:                                               ; preds = %71, %54
  %78 = ptrtoint ptr %69 to i64, !dbg !2293
  %79 = ptrtoint ptr %44 to i64, !dbg !2293
  %80 = sub i64 40, %79, !dbg !2293
  %81 = add i64 %80, %78, !dbg !2294
  call void @llvm.dbg.value(metadata ptr @unused_word_type, metadata !2270, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata ptr %44, metadata !2276, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %81, metadata !2277, metadata !DIExpression()), !dbg !2295
  %82 = tail call ptr @__memmove_chk(ptr noundef nonnull @unused_word_type, ptr noundef nonnull %44, i64 noundef %81, i64 noundef 40000) #38, !dbg !2297
  %83 = sub i64 %79, ptrtoint (ptr @unused_word_type to i64), !dbg !2298
  %84 = sdiv exact i64 %83, -40, !dbg !2298
  %85 = load ptr, ptr @word_limit, align 8, !dbg !2299, !tbaa !949
  %86 = getelementptr inbounds %struct.Word, ptr %85, i64 %84, !dbg !2299
  store ptr %86, ptr @word_limit, align 8, !dbg !2299, !tbaa !949
  br label %87, !dbg !2300

87:                                               ; preds = %77, %19
  ret void, !dbg !2300
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare !dbg !2301 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !2305 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2307, metadata !DIExpression()), !dbg !2308
  store ptr %0, ptr @file_name, align 8, !dbg !2309, !tbaa !949
  ret void, !dbg !2310
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !2311 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2313, metadata !DIExpression()), !dbg !2314
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2315, !tbaa !2316
  ret void, !dbg !2318
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2319 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2324, !tbaa !949
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !2325
  %3 = icmp eq i32 %2, 0, !dbg !2326
  br i1 %3, label %22, label %4, !dbg !2327

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2328, !tbaa !2316, !range !2329, !noundef !958
  %6 = icmp eq i8 %5, 0, !dbg !2328
  br i1 %6, label %11, label %7, !dbg !2330

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !2331
  %9 = load i32, ptr %8, align 4, !dbg !2331, !tbaa !1023
  %10 = icmp eq i32 %9, 32, !dbg !2332
  br i1 %10, label %22, label %11, !dbg !2333

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1.36, i32 noundef 5) #38, !dbg !2334
  call void @llvm.dbg.value(metadata ptr %12, metadata !2321, metadata !DIExpression()), !dbg !2335
  %13 = load ptr, ptr @file_name, align 8, !dbg !2336, !tbaa !949
  %14 = icmp eq ptr %13, null, !dbg !2336
  %15 = tail call ptr @__errno_location() #41, !dbg !2338
  %16 = load i32, ptr %15, align 4, !dbg !2338, !tbaa !1023
  br i1 %14, label %19, label %17, !dbg !2339

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !2340
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.37, ptr noundef %18, ptr noundef %12) #38, !dbg !2340
  br label %20, !dbg !2340

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.38, ptr noundef %12) #38, !dbg !2341
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2342, !tbaa !1023
  tail call void @_exit(i32 noundef %21) #40, !dbg !2343
  unreachable, !dbg !2343

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2344, !tbaa !949
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !2346
  %25 = icmp eq i32 %24, 0, !dbg !2347
  br i1 %25, label %28, label %26, !dbg !2348

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2349, !tbaa !1023
  tail call void @_exit(i32 noundef %27) #40, !dbg !2350
  unreachable, !dbg !2350

28:                                               ; preds = %22
  ret void, !dbg !2351
}

; Function Attrs: noreturn
declare !dbg !2352 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !2354 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 %1, metadata !2359, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata ptr %2, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata ptr %3, metadata !2361, metadata !DIExpression()), !dbg !2362
  tail call fastcc void @flush_stdout(), !dbg !2363
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2364, !tbaa !949
  %6 = icmp eq ptr %5, null, !dbg !2364
  br i1 %6, label %8, label %7, !dbg !2366

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !2367
  br label %12, !dbg !2367

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2368, !tbaa !949
  %10 = tail call ptr @getprogname() #39, !dbg !2368
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef %10) #38, !dbg !2368
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2370
  ret void, !dbg !2371
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2372 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 1, metadata !2376, metadata !DIExpression()), !dbg !2379
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !2382
  %2 = icmp slt i32 %1, 0, !dbg !2383
  br i1 %2, label %6, label %3, !dbg !2384

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2385, !tbaa !949
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2385
  br label %6, !dbg !2385

6:                                                ; preds = %3, %0
  ret void, !dbg !2386
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2387 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2389, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata ptr %2, metadata !2391, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata ptr %3, metadata !2392, metadata !DIExpression()), !dbg !2393
  %6 = load ptr, ptr @stderr, align 8, !dbg !2394, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %6, metadata !2395, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata ptr %2, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata ptr %3, metadata !2436, metadata !DIExpression()), !dbg !2437
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !2439
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2440, !tbaa !1023
  %9 = add i32 %8, 1, !dbg !2440
  store i32 %9, ptr @error_message_count, align 4, !dbg !2440, !tbaa !1023
  %10 = icmp eq i32 %1, 0, !dbg !2441
  br i1 %10, label %20, label %11, !dbg !2443

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2444, metadata !DIExpression()), !dbg !2452
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2454
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2448, metadata !DIExpression()), !dbg !2455
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2456
  call void @llvm.dbg.value(metadata ptr %12, metadata !2447, metadata !DIExpression()), !dbg !2452
  %13 = icmp eq ptr %12, null, !dbg !2457
  br i1 %13, label %14, label %16, !dbg !2459

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.40, ptr noundef nonnull @.str.5.41, i32 noundef 5) #38, !dbg !2460
  call void @llvm.dbg.value(metadata ptr %15, metadata !2447, metadata !DIExpression()), !dbg !2452
  br label %16, !dbg !2461

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2452
  call void @llvm.dbg.value(metadata ptr %17, metadata !2447, metadata !DIExpression()), !dbg !2452
  %18 = load ptr, ptr @stderr, align 8, !dbg !2462, !tbaa !949
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.42, ptr noundef %17) #38, !dbg !2462
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2463
  br label %20, !dbg !2464

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2465, !tbaa !949
  call void @llvm.dbg.value(metadata i32 10, metadata !2466, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %21, metadata !2471, metadata !DIExpression()), !dbg !2472
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2474
  %23 = load ptr, ptr %22, align 8, !dbg !2474, !tbaa !1446
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2474
  %25 = load ptr, ptr %24, align 8, !dbg !2474, !tbaa !1449
  %26 = icmp ult ptr %23, %25, !dbg !2474
  br i1 %26, label %29, label %27, !dbg !2474, !prof !1450

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !2474
  br label %31, !dbg !2474

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2474
  store ptr %30, ptr %22, align 8, !dbg !2474, !tbaa !1446
  store i8 10, ptr %23, align 1, !dbg !2474, !tbaa !1032
  br label %31, !dbg !2474

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2475, !tbaa !949
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !2475
  %34 = icmp eq i32 %0, 0, !dbg !2476
  br i1 %34, label %36, label %35, !dbg !2478

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !2479
  unreachable, !dbg !2479

36:                                               ; preds = %31
  ret void, !dbg !2480
}

declare !dbg !2481 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !2484 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

declare !dbg !2487 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2491 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2495, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i32 %1, metadata !2496, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata ptr %2, metadata !2497, metadata !DIExpression()), !dbg !2504
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !2505
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2498, metadata !DIExpression()), !dbg !2506
  call void @llvm.va_start(ptr nonnull %4), !dbg !2507
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !2508
  call void @llvm.va_end(ptr nonnull %4), !dbg !2509
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !2510
  ret void, !dbg !2510
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !540 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !552, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %1, metadata !553, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata ptr %2, metadata !554, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %3, metadata !555, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata ptr %4, metadata !556, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata ptr %5, metadata !557, metadata !DIExpression()), !dbg !2511
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2512, !tbaa !1023
  %8 = icmp eq i32 %7, 0, !dbg !2512
  br i1 %8, label %23, label %9, !dbg !2514

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2515, !tbaa !1023
  %11 = icmp eq i32 %10, %3, !dbg !2518
  br i1 %11, label %12, label %22, !dbg !2519

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2520, !tbaa !949
  %14 = icmp eq ptr %13, %2, !dbg !2521
  br i1 %14, label %36, label %15, !dbg !2522

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2523
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2524
  br i1 %18, label %19, label %22, !dbg !2524

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2525
  %21 = icmp eq i32 %20, 0, !dbg !2526
  br i1 %21, label %36, label %22, !dbg !2527

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2528, !tbaa !949
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2529, !tbaa !1023
  br label %23, !dbg !2530

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2531
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2532, !tbaa !949
  %25 = icmp eq ptr %24, null, !dbg !2532
  br i1 %25, label %27, label %26, !dbg !2534

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !2535
  br label %31, !dbg !2535

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2536, !tbaa !949
  %29 = tail call ptr @getprogname() #39, !dbg !2536
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.45, ptr noundef %29) #38, !dbg !2536
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2538, !tbaa !949
  %33 = icmp eq ptr %2, null, !dbg !2538
  %34 = select i1 %33, ptr @.str.3.46, ptr @.str.2.47, !dbg !2538
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !2538
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2539
  br label %36, !dbg !2540

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2540
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2541 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %1, metadata !2546, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %2, metadata !2547, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %3, metadata !2548, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %4, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !2552
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2550, metadata !DIExpression()), !dbg !2553
  call void @llvm.va_start(ptr nonnull %6), !dbg !2554
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !2555
  call void @llvm.va_end(ptr nonnull %6), !dbg !2556
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !2557
  ret void, !dbg !2557
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2558 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2564, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %1, metadata !2565, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %2, metadata !2566, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 %3, metadata !2567, metadata !DIExpression()), !dbg !2568
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2569
  ret void, !dbg !2570
}

; Function Attrs: nounwind
declare !dbg !2571 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2574 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2612, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %1, metadata !2613, metadata !DIExpression()), !dbg !2614
  %3 = icmp eq ptr %0, null, !dbg !2615
  br i1 %3, label %7, label %4, !dbg !2617

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2618
  call void @llvm.dbg.value(metadata i32 %5, metadata !2564, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i64 0, metadata !2565, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i64 0, metadata !2566, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 %1, metadata !2567, metadata !DIExpression()), !dbg !2619
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2621
  br label %7, !dbg !2622

7:                                                ; preds = %4, %2
  ret void, !dbg !2623
}

; Function Attrs: nofree nounwind
declare !dbg !2624 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2627 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2665, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 0, metadata !2666, metadata !DIExpression()), !dbg !2669
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %2, metadata !2667, metadata !DIExpression()), !dbg !2669
  %3 = icmp slt i32 %2, 0, !dbg !2671
  br i1 %3, label %4, label %6, !dbg !2673

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2674
  br label %24, !dbg !2675

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2676
  %8 = icmp eq i32 %7, 0, !dbg !2676
  br i1 %8, label %13, label %9, !dbg !2678

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2679
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2680
  %12 = icmp eq i64 %11, -1, !dbg !2681
  br i1 %12, label %16, label %13, !dbg !2682

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2683
  %15 = icmp eq i32 %14, 0, !dbg !2683
  br i1 %15, label %16, label %18, !dbg !2684

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2666, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 0, metadata !2668, metadata !DIExpression()), !dbg !2669
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2685
  call void @llvm.dbg.value(metadata i32 %17, metadata !2668, metadata !DIExpression()), !dbg !2669
  br label %24, !dbg !2686

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2687
  %20 = load i32, ptr %19, align 4, !dbg !2687, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %20, metadata !2666, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 0, metadata !2668, metadata !DIExpression()), !dbg !2669
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2685
  call void @llvm.dbg.value(metadata i32 %21, metadata !2668, metadata !DIExpression()), !dbg !2669
  %22 = icmp eq i32 %20, 0, !dbg !2688
  br i1 %22, label %24, label %23, !dbg !2686

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2690, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 -1, metadata !2668, metadata !DIExpression()), !dbg !2669
  br label %24, !dbg !2692

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2669
  ret i32 %25, !dbg !2693
}

; Function Attrs: nofree nounwind
declare !dbg !2694 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2695 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2697 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2700 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2738, metadata !DIExpression()), !dbg !2739
  %2 = icmp eq ptr %0, null, !dbg !2740
  br i1 %2, label %6, label %3, !dbg !2742

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2743
  %5 = icmp eq i32 %4, 0, !dbg !2743
  br i1 %5, label %6, label %8, !dbg !2744

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2745
  br label %16, !dbg !2746

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2747, metadata !DIExpression()), !dbg !2752
  %9 = load i32, ptr %0, align 8, !dbg !2754, !tbaa !1662
  %10 = and i32 %9, 256, !dbg !2756
  %11 = icmp eq i32 %10, 0, !dbg !2756
  br i1 %11, label %14, label %12, !dbg !2757

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2758
  br label %14, !dbg !2758

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2759
  br label %16, !dbg !2760

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2739
  ret i32 %17, !dbg !2761
}

; Function Attrs: nofree nounwind
declare !dbg !2762 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2763 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2801, metadata !DIExpression()), !dbg !2802
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2803
  ret i32 0, !dbg !2804
}

; Function Attrs: nounwind
declare !dbg !2805 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2808 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2846, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %1, metadata !2847, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 %2, metadata !2848, metadata !DIExpression()), !dbg !2852
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2853
  %5 = load ptr, ptr %4, align 8, !dbg !2853, !tbaa !1480
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2854
  %7 = load ptr, ptr %6, align 8, !dbg !2854, !tbaa !1479
  %8 = icmp eq ptr %5, %7, !dbg !2855
  br i1 %8, label %9, label %27, !dbg !2856

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2857
  %11 = load ptr, ptr %10, align 8, !dbg !2857, !tbaa !1446
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2858
  %13 = load ptr, ptr %12, align 8, !dbg !2858, !tbaa !2859
  %14 = icmp eq ptr %11, %13, !dbg !2860
  br i1 %14, label %15, label %27, !dbg !2861

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2862
  %17 = load ptr, ptr %16, align 8, !dbg !2862, !tbaa !2863
  %18 = icmp eq ptr %17, null, !dbg !2864
  br i1 %18, label %19, label %27, !dbg !2865

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2866
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2867
  call void @llvm.dbg.value(metadata i64 %21, metadata !2849, metadata !DIExpression()), !dbg !2868
  %22 = icmp eq i64 %21, -1, !dbg !2869
  br i1 %22, label %29, label %23, !dbg !2871

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2872, !tbaa !1662
  %25 = and i32 %24, -17, !dbg !2872
  store i32 %25, ptr %0, align 8, !dbg !2872, !tbaa !1662
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2873
  store i64 %21, ptr %26, align 8, !dbg !2874, !tbaa !2875
  br label %29, !dbg !2876

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2877
  br label %29, !dbg !2878

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2852
  ret i32 %30, !dbg !2879
}

; Function Attrs: nofree nounwind
declare !dbg !2880 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2883 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2886, !tbaa !949
  ret ptr %1, !dbg !2887
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2888 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2890, metadata !DIExpression()), !dbg !2893
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2894
  call void @llvm.dbg.value(metadata ptr %2, metadata !2891, metadata !DIExpression()), !dbg !2893
  %3 = icmp eq ptr %2, null, !dbg !2895
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2895
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2895
  call void @llvm.dbg.value(metadata ptr %5, metadata !2892, metadata !DIExpression()), !dbg !2893
  %6 = ptrtoint ptr %5 to i64, !dbg !2896
  %7 = ptrtoint ptr %0 to i64, !dbg !2896
  %8 = sub i64 %6, %7, !dbg !2896
  %9 = icmp sgt i64 %8, 6, !dbg !2898
  br i1 %9, label %10, label %19, !dbg !2899

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2900
  call void @llvm.dbg.value(metadata ptr %11, metadata !2901, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata ptr @.str.77, metadata !2906, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 7, metadata !2907, metadata !DIExpression()), !dbg !2908
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.77, i64 7), !dbg !2910
  %13 = icmp eq i32 %12, 0, !dbg !2911
  br i1 %13, label %14, label %19, !dbg !2912

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2890, metadata !DIExpression()), !dbg !2893
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.78, i64 noundef 3) #39, !dbg !2913
  %16 = icmp eq i32 %15, 0, !dbg !2916
  %17 = select i1 %16, i64 3, i64 0, !dbg !2917
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2917
  br label %19, !dbg !2917

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2893
  call void @llvm.dbg.value(metadata ptr %21, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %20, metadata !2890, metadata !DIExpression()), !dbg !2893
  store ptr %20, ptr @program_name, align 8, !dbg !2918, !tbaa !949
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2919, !tbaa !949
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2920, !tbaa !949
  ret void, !dbg !2921
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2922 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !591 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !598, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %1, metadata !599, metadata !DIExpression()), !dbg !2923
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2924
  call void @llvm.dbg.value(metadata ptr %5, metadata !600, metadata !DIExpression()), !dbg !2923
  %6 = icmp eq ptr %5, %0, !dbg !2925
  br i1 %6, label %7, label %14, !dbg !2927

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2928
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2929
  call void @llvm.dbg.declare(metadata ptr %4, metadata !606, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %4, metadata !2931, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata ptr %4, metadata !2940, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 0, metadata !2945, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 8, metadata !2946, metadata !DIExpression()), !dbg !2947
  store i64 0, ptr %4, align 8, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %3, metadata !601, metadata !DIExpression(DW_OP_deref)), !dbg !2923
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2950
  %9 = icmp eq i64 %8, 2, !dbg !2952
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !601, metadata !DIExpression()), !dbg !2923
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2953
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2923
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2954
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2954
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2923
  ret ptr %15, !dbg !2954
}

; Function Attrs: nounwind
declare !dbg !2955 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2961 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2966, metadata !DIExpression()), !dbg !2969
  %2 = tail call ptr @__errno_location() #41, !dbg !2970
  %3 = load i32, ptr %2, align 4, !dbg !2970, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %3, metadata !2967, metadata !DIExpression()), !dbg !2969
  %4 = icmp eq ptr %0, null, !dbg !2971
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2971
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2972
  call void @llvm.dbg.value(metadata ptr %6, metadata !2968, metadata !DIExpression()), !dbg !2969
  store i32 %3, ptr %2, align 4, !dbg !2973, !tbaa !1023
  ret ptr %6, !dbg !2974
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !2975 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2981, metadata !DIExpression()), !dbg !2982
  %2 = icmp eq ptr %0, null, !dbg !2983
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2983
  %4 = load i32, ptr %3, align 8, !dbg !2984, !tbaa !2985
  ret i32 %4, !dbg !2987
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !2988 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2992, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i32 %1, metadata !2993, metadata !DIExpression()), !dbg !2994
  %3 = icmp eq ptr %0, null, !dbg !2995
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2995
  store i32 %1, ptr %4, align 8, !dbg !2996, !tbaa !2985
  ret void, !dbg !2997
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2998 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3002, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 %1, metadata !3003, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %2, metadata !3004, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 %1, metadata !3005, metadata !DIExpression()), !dbg !3010
  %4 = icmp eq ptr %0, null, !dbg !3011
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3011
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3012
  %7 = lshr i8 %1, 5, !dbg !3013
  %8 = zext i8 %7 to i64, !dbg !3013
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3014
  call void @llvm.dbg.value(metadata ptr %9, metadata !3006, metadata !DIExpression()), !dbg !3010
  %10 = and i8 %1, 31, !dbg !3015
  %11 = zext i8 %10 to i32, !dbg !3015
  call void @llvm.dbg.value(metadata i32 %11, metadata !3008, metadata !DIExpression()), !dbg !3010
  %12 = load i32, ptr %9, align 4, !dbg !3016, !tbaa !1023
  %13 = lshr i32 %12, %11, !dbg !3017
  %14 = and i32 %13, 1, !dbg !3018
  call void @llvm.dbg.value(metadata i32 %14, metadata !3009, metadata !DIExpression()), !dbg !3010
  %15 = xor i32 %13, %2, !dbg !3019
  %16 = and i32 %15, 1, !dbg !3019
  %17 = shl nuw i32 %16, %11, !dbg !3020
  %18 = xor i32 %17, %12, !dbg !3021
  store i32 %18, ptr %9, align 4, !dbg !3021, !tbaa !1023
  ret i32 %14, !dbg !3022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !3023 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i32 %1, metadata !3028, metadata !DIExpression()), !dbg !3030
  %3 = icmp eq ptr %0, null, !dbg !3031
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3033
  call void @llvm.dbg.value(metadata ptr %4, metadata !3027, metadata !DIExpression()), !dbg !3030
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3034
  %6 = load i32, ptr %5, align 4, !dbg !3034, !tbaa !3035
  call void @llvm.dbg.value(metadata i32 %6, metadata !3029, metadata !DIExpression()), !dbg !3030
  store i32 %1, ptr %5, align 4, !dbg !3036, !tbaa !3035
  ret i32 %6, !dbg !3037
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3038 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %1, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !3045
  %4 = icmp eq ptr %0, null, !dbg !3046
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %5, metadata !3042, metadata !DIExpression()), !dbg !3045
  store i32 10, ptr %5, align 8, !dbg !3049, !tbaa !2985
  %6 = icmp ne ptr %1, null, !dbg !3050
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3052
  br i1 %8, label %10, label %9, !dbg !3052

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3053
  unreachable, !dbg !3053

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3054
  store ptr %1, ptr %11, align 8, !dbg !3055, !tbaa !3056
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3057
  store ptr %2, ptr %12, align 8, !dbg !3058, !tbaa !3059
  ret void, !dbg !3060
}

; Function Attrs: noreturn nounwind
declare !dbg !3061 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3062 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3066, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3067, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %2, metadata !3068, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %3, metadata !3069, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %4, metadata !3070, metadata !DIExpression()), !dbg !3074
  %6 = icmp eq ptr %4, null, !dbg !3075
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3075
  call void @llvm.dbg.value(metadata ptr %7, metadata !3071, metadata !DIExpression()), !dbg !3074
  %8 = tail call ptr @__errno_location() #41, !dbg !3076
  %9 = load i32, ptr %8, align 4, !dbg !3076, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %9, metadata !3072, metadata !DIExpression()), !dbg !3074
  %10 = load i32, ptr %7, align 8, !dbg !3077, !tbaa !2985
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3078
  %12 = load i32, ptr %11, align 4, !dbg !3078, !tbaa !3035
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3079
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3080
  %15 = load ptr, ptr %14, align 8, !dbg !3080, !tbaa !3056
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3081
  %17 = load ptr, ptr %16, align 8, !dbg !3081, !tbaa !3059
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %18, metadata !3073, metadata !DIExpression()), !dbg !3074
  store i32 %9, ptr %8, align 4, !dbg !3083, !tbaa !1023
  ret i64 %18, !dbg !3084
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3085 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %2, metadata !3093, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %3, metadata !3094, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %4, metadata !3095, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %5, metadata !3096, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %6, metadata !3097, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %7, metadata !3098, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %8, metadata !3099, metadata !DIExpression()), !dbg !3153
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !3154
  %17 = icmp eq i64 %16, 1, !dbg !3155
  call void @llvm.dbg.value(metadata i1 %17, metadata !3100, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3153
  call void @llvm.dbg.value(metadata i64 0, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 0, metadata !3102, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr null, metadata !3103, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 0, metadata !3104, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 0, metadata !3105, metadata !DIExpression()), !dbg !3153
  %18 = trunc i32 %5 to i8, !dbg !3156
  %19 = lshr i8 %18, 1, !dbg !3156
  %20 = and i8 %19, 1, !dbg !3156
  call void @llvm.dbg.value(metadata i8 %20, metadata !3106, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 0, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 1, metadata !3108, metadata !DIExpression()), !dbg !3153
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3157

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !3158
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !3159
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !3160
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !3161
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !3153
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !3162
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !3163
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %39, metadata !3108, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %38, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %37, metadata !3106, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %36, metadata !3105, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %35, metadata !3104, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %34, metadata !3103, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %33, metadata !3102, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 0, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %32, metadata !3094, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %31, metadata !3099, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %30, metadata !3098, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %29, metadata !3095, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.label(metadata !3146), !dbg !3164
  call void @llvm.dbg.value(metadata i8 0, metadata !3109, metadata !DIExpression()), !dbg !3153
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
  ], !dbg !3165

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3106, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 5, metadata !3095, metadata !DIExpression()), !dbg !3153
  br label %115, !dbg !3166

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !3106, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 5, metadata !3095, metadata !DIExpression()), !dbg !3153
  %43 = and i8 %37, 1, !dbg !3167
  %44 = icmp eq i8 %43, 0, !dbg !3167
  br i1 %44, label %45, label %115, !dbg !3166

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3169
  br i1 %46, label %115, label %47, !dbg !3172

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3169, !tbaa !1032
  br label %115, !dbg !3169

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !687, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %29, metadata !688, metadata !DIExpression()), !dbg !3173
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #38, !dbg !3177
  call void @llvm.dbg.value(metadata ptr %49, metadata !689, metadata !DIExpression()), !dbg !3173
  %50 = icmp eq ptr %49, @.str.11.91, !dbg !3178
  br i1 %50, label %51, label %60, !dbg !3180

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !3181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !3182
  call void @llvm.dbg.declare(metadata ptr %13, metadata !691, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %13, metadata !3184, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata ptr %13, metadata !3192, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i32 0, metadata !3195, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 8, metadata !3196, metadata !DIExpression()), !dbg !3197
  store i64 0, ptr %13, align 8, !dbg !3199
  call void @llvm.dbg.value(metadata ptr %12, metadata !690, metadata !DIExpression(DW_OP_deref)), !dbg !3173
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !3200
  %53 = icmp eq i64 %52, 3, !dbg !3202
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !690, metadata !DIExpression()), !dbg !3173
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3203
  %57 = icmp eq i32 %29, 9, !dbg !3203
  %58 = select i1 %57, ptr @.str.10.93, ptr @.str.12.94, !dbg !3203
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3203
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !3204
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !3204
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3173
  call void @llvm.dbg.value(metadata ptr %61, metadata !3098, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !687, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %29, metadata !688, metadata !DIExpression()), !dbg !3205
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #38, !dbg !3207
  call void @llvm.dbg.value(metadata ptr %62, metadata !689, metadata !DIExpression()), !dbg !3205
  %63 = icmp eq ptr %62, @.str.12.94, !dbg !3208
  br i1 %63, label %64, label %73, !dbg !3209

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !3210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !3211
  call void @llvm.dbg.declare(metadata ptr %11, metadata !691, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata ptr %11, metadata !3184, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %11, metadata !3192, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 0, metadata !3195, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 8, metadata !3196, metadata !DIExpression()), !dbg !3215
  store i64 0, ptr %11, align 8, !dbg !3217
  call void @llvm.dbg.value(metadata ptr %10, metadata !690, metadata !DIExpression(DW_OP_deref)), !dbg !3205
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !3218
  %66 = icmp eq i64 %65, 3, !dbg !3219
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !690, metadata !DIExpression()), !dbg !3205
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3220
  %70 = icmp eq i32 %29, 9, !dbg !3220
  %71 = select i1 %70, ptr @.str.10.93, ptr @.str.12.94, !dbg !3220
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3220
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !3221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !3221
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !3099, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %74, metadata !3098, metadata !DIExpression()), !dbg !3153
  %76 = and i8 %37, 1, !dbg !3222
  %77 = icmp eq i8 %76, 0, !dbg !3222
  br i1 %77, label %78, label %93, !dbg !3223

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !3110, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 0, metadata !3101, metadata !DIExpression()), !dbg !3153
  %79 = load i8, ptr %74, align 1, !dbg !3225, !tbaa !1032
  %80 = icmp eq i8 %79, 0, !dbg !3227
  br i1 %80, label %93, label %81, !dbg !3227

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !3110, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %84, metadata !3101, metadata !DIExpression()), !dbg !3153
  %85 = icmp ult i64 %84, %40, !dbg !3228
  br i1 %85, label %86, label %88, !dbg !3231

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3228
  store i8 %82, ptr %87, align 1, !dbg !3228, !tbaa !1032
  br label %88, !dbg !3228

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %89, metadata !3101, metadata !DIExpression()), !dbg !3153
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3232
  call void @llvm.dbg.value(metadata ptr %90, metadata !3110, metadata !DIExpression()), !dbg !3224
  %91 = load i8, ptr %90, align 1, !dbg !3225, !tbaa !1032
  %92 = icmp eq i8 %91, 0, !dbg !3227
  br i1 %92, label %93, label %81, !dbg !3227, !llvm.loop !3233

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3235
  call void @llvm.dbg.value(metadata i64 %94, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 1, metadata !3105, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %75, metadata !3103, metadata !DIExpression()), !dbg !3153
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %95, metadata !3104, metadata !DIExpression()), !dbg !3153
  br label %115, !dbg !3237

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3105, metadata !DIExpression()), !dbg !3153
  br label %97, !dbg !3238

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8 %98, metadata !3105, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 1, metadata !3106, metadata !DIExpression()), !dbg !3153
  br label %99, !dbg !3239

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !3161
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8 %101, metadata !3106, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %100, metadata !3105, metadata !DIExpression()), !dbg !3153
  %102 = and i8 %101, 1, !dbg !3240
  %103 = icmp eq i8 %102, 0, !dbg !3240
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3242
  br label %105, !dbg !3242

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !3153
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !3156
  call void @llvm.dbg.value(metadata i8 %107, metadata !3106, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %106, metadata !3105, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 2, metadata !3095, metadata !DIExpression()), !dbg !3153
  %108 = and i8 %107, 1, !dbg !3243
  %109 = icmp eq i8 %108, 0, !dbg !3243
  br i1 %109, label %110, label %115, !dbg !3245

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3246
  br i1 %111, label %115, label %112, !dbg !3249

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3246, !tbaa !1032
  br label %115, !dbg !3246

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !3106, metadata !DIExpression()), !dbg !3153
  br label %115, !dbg !3250

114:                                              ; preds = %28
  call void @abort() #40, !dbg !3251
  unreachable, !dbg !3251

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3235
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.93, %45 ], [ @.str.10.93, %47 ], [ @.str.10.93, %42 ], [ %34, %28 ], [ @.str.12.94, %110 ], [ @.str.12.94, %112 ], [ @.str.12.94, %105 ], [ @.str.10.93, %41 ], !dbg !3153
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !3153
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !3153
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8 %123, metadata !3106, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %122, metadata !3105, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %121, metadata !3104, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %120, metadata !3103, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %119, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %118, metadata !3099, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %117, metadata !3098, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %116, metadata !3095, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 0, metadata !3115, metadata !DIExpression()), !dbg !3252
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
  br label %138, !dbg !3253

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3235
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !3158
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !3162
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !3163
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3254
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3255
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %145, metadata !3115, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 %144, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %143, metadata !3108, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %142, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %141, metadata !3102, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %140, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %139, metadata !3094, metadata !DIExpression()), !dbg !3153
  %147 = icmp eq i64 %139, -1, !dbg !3256
  br i1 %147, label %148, label %152, !dbg !3257

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3258
  %150 = load i8, ptr %149, align 1, !dbg !3258, !tbaa !1032
  %151 = icmp eq i8 %150, 0, !dbg !3259
  br i1 %151, label %627, label %154, !dbg !3260

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3261
  br i1 %153, label %627, label %154, !dbg !3260

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !3117, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 0, metadata !3120, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 0, metadata !3121, metadata !DIExpression()), !dbg !3262
  br i1 %129, label %155, label %170, !dbg !3263

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3265
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3266
  br i1 %157, label %158, label %160, !dbg !3266

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %159, metadata !3094, metadata !DIExpression()), !dbg !3153
  br label %160, !dbg !3268

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3268
  call void @llvm.dbg.value(metadata i64 %161, metadata !3094, metadata !DIExpression()), !dbg !3153
  %162 = icmp ugt i64 %156, %161, !dbg !3269
  br i1 %162, label %170, label %163, !dbg !3270

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3271
  call void @llvm.dbg.value(metadata ptr %164, metadata !3272, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata ptr %120, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %121, metadata !3276, metadata !DIExpression()), !dbg !3277
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3279
  %166 = icmp ne i32 %165, 0, !dbg !3280
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3281
  %168 = xor i1 %166, true, !dbg !3281
  %169 = zext i1 %168 to i8, !dbg !3281
  br i1 %167, label %170, label %688, !dbg !3281

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3262
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3262
  call void @llvm.dbg.value(metadata i8 %173, metadata !3117, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %171, metadata !3094, metadata !DIExpression()), !dbg !3153
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3282
  %175 = load i8, ptr %174, align 1, !dbg !3282, !tbaa !1032
  call void @llvm.dbg.value(metadata i8 %175, metadata !3122, metadata !DIExpression()), !dbg !3262
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
  ], !dbg !3283

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3284

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3285

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !3120, metadata !DIExpression()), !dbg !3262
  %179 = and i8 %144, 1, !dbg !3289
  %180 = icmp eq i8 %179, 0, !dbg !3289
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3289
  br i1 %181, label %182, label %198, !dbg !3289

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3291
  br i1 %183, label %184, label %186, !dbg !3295

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3291
  store i8 39, ptr %185, align 1, !dbg !3291, !tbaa !1032
  br label %186, !dbg !3291

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %187, metadata !3101, metadata !DIExpression()), !dbg !3153
  %188 = icmp ult i64 %187, %146, !dbg !3296
  br i1 %188, label %189, label %191, !dbg !3299

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3296
  store i8 36, ptr %190, align 1, !dbg !3296, !tbaa !1032
  br label %191, !dbg !3296

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3299
  call void @llvm.dbg.value(metadata i64 %192, metadata !3101, metadata !DIExpression()), !dbg !3153
  %193 = icmp ult i64 %192, %146, !dbg !3300
  br i1 %193, label %194, label %196, !dbg !3303

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3300
  store i8 39, ptr %195, align 1, !dbg !3300, !tbaa !1032
  br label %196, !dbg !3300

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %197, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 1, metadata !3109, metadata !DIExpression()), !dbg !3153
  br label %198, !dbg !3304

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3153
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8 %200, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %199, metadata !3101, metadata !DIExpression()), !dbg !3153
  %201 = icmp ult i64 %199, %146, !dbg !3305
  br i1 %201, label %202, label %204, !dbg !3308

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3305
  store i8 92, ptr %203, align 1, !dbg !3305, !tbaa !1032
  br label %204, !dbg !3305

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %205, metadata !3101, metadata !DIExpression()), !dbg !3153
  br i1 %126, label %206, label %491, !dbg !3309

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3311
  %208 = icmp ult i64 %207, %171, !dbg !3312
  br i1 %208, label %209, label %480, !dbg !3313

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3314
  %211 = load i8, ptr %210, align 1, !dbg !3314, !tbaa !1032
  %212 = add i8 %211, -48, !dbg !3315
  %213 = icmp ult i8 %212, 10, !dbg !3315
  br i1 %213, label %214, label %480, !dbg !3315

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3316
  br i1 %215, label %216, label %218, !dbg !3320

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3316
  store i8 48, ptr %217, align 1, !dbg !3316, !tbaa !1032
  br label %218, !dbg !3316

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %219, metadata !3101, metadata !DIExpression()), !dbg !3153
  %220 = icmp ult i64 %219, %146, !dbg !3321
  br i1 %220, label %221, label %223, !dbg !3324

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3321
  store i8 48, ptr %222, align 1, !dbg !3321, !tbaa !1032
  br label %223, !dbg !3321

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %224, metadata !3101, metadata !DIExpression()), !dbg !3153
  br label %480, !dbg !3325

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3326

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3327

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3328

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3330

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3332
  %231 = icmp ult i64 %230, %171, !dbg !3333
  br i1 %231, label %232, label %480, !dbg !3334

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3335
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3336
  %235 = load i8, ptr %234, align 1, !dbg !3336, !tbaa !1032
  %236 = icmp eq i8 %235, 63, !dbg !3337
  br i1 %236, label %237, label %480, !dbg !3338

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3339
  %239 = load i8, ptr %238, align 1, !dbg !3339, !tbaa !1032
  %240 = sext i8 %239 to i32, !dbg !3339
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
  ], !dbg !3340

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3341

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !3122, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %230, metadata !3115, metadata !DIExpression()), !dbg !3252
  %243 = icmp ult i64 %140, %146, !dbg !3343
  br i1 %243, label %244, label %246, !dbg !3346

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3343
  store i8 63, ptr %245, align 1, !dbg !3343, !tbaa !1032
  br label %246, !dbg !3343

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %247, metadata !3101, metadata !DIExpression()), !dbg !3153
  %248 = icmp ult i64 %247, %146, !dbg !3347
  br i1 %248, label %249, label %251, !dbg !3350

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3347
  store i8 34, ptr %250, align 1, !dbg !3347, !tbaa !1032
  br label %251, !dbg !3347

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3350
  call void @llvm.dbg.value(metadata i64 %252, metadata !3101, metadata !DIExpression()), !dbg !3153
  %253 = icmp ult i64 %252, %146, !dbg !3351
  br i1 %253, label %254, label %256, !dbg !3354

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3351
  store i8 34, ptr %255, align 1, !dbg !3351, !tbaa !1032
  br label %256, !dbg !3351

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %257, metadata !3101, metadata !DIExpression()), !dbg !3153
  %258 = icmp ult i64 %257, %146, !dbg !3355
  br i1 %258, label %259, label %261, !dbg !3358

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3355
  store i8 63, ptr %260, align 1, !dbg !3355, !tbaa !1032
  br label %261, !dbg !3355

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3358
  call void @llvm.dbg.value(metadata i64 %262, metadata !3101, metadata !DIExpression()), !dbg !3153
  br label %480, !dbg !3359

263:                                              ; preds = %170
  br label %274, !dbg !3360

264:                                              ; preds = %170
  br label %274, !dbg !3361

265:                                              ; preds = %170
  br label %272, !dbg !3362

266:                                              ; preds = %170
  br label %272, !dbg !3363

267:                                              ; preds = %170
  br label %274, !dbg !3364

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3365

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3366

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3369

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3371

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3372
  call void @llvm.dbg.label(metadata !3147), !dbg !3373
  br i1 %134, label %274, label %670, !dbg !3374

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3372
  call void @llvm.dbg.label(metadata !3149), !dbg !3376
  br i1 %125, label %535, label %491, !dbg !3377

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3378

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3379, !tbaa !1032
  %279 = icmp eq i8 %278, 0, !dbg !3381
  br i1 %279, label %280, label %480, !dbg !3382

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3383
  br i1 %281, label %282, label %480, !dbg !3385

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3121, metadata !DIExpression()), !dbg !3262
  br label %283, !dbg !3386

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3262
  call void @llvm.dbg.value(metadata i8 %284, metadata !3121, metadata !DIExpression()), !dbg !3262
  br i1 %134, label %480, label %670, !dbg !3387

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 1, metadata !3121, metadata !DIExpression()), !dbg !3262
  br i1 %133, label %286, label %480, !dbg !3389

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3390

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3393
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3395
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3395
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %292, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %291, metadata !3102, metadata !DIExpression()), !dbg !3153
  %293 = icmp ult i64 %140, %292, !dbg !3396
  br i1 %293, label %294, label %296, !dbg !3399

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3396
  store i8 39, ptr %295, align 1, !dbg !3396, !tbaa !1032
  br label %296, !dbg !3396

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3399
  call void @llvm.dbg.value(metadata i64 %297, metadata !3101, metadata !DIExpression()), !dbg !3153
  %298 = icmp ult i64 %297, %292, !dbg !3400
  br i1 %298, label %299, label %301, !dbg !3403

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3400
  store i8 92, ptr %300, align 1, !dbg !3400, !tbaa !1032
  br label %301, !dbg !3400

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %302, metadata !3101, metadata !DIExpression()), !dbg !3153
  %303 = icmp ult i64 %302, %292, !dbg !3404
  br i1 %303, label %304, label %306, !dbg !3407

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3404
  store i8 39, ptr %305, align 1, !dbg !3404, !tbaa !1032
  br label %306, !dbg !3404

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %307, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 0, metadata !3109, metadata !DIExpression()), !dbg !3153
  br label %480, !dbg !3408

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3409

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !3123, metadata !DIExpression()), !dbg !3410
  %310 = tail call ptr @__ctype_b_loc() #41, !dbg !3411
  %311 = load ptr, ptr %310, align 8, !dbg !3411, !tbaa !949
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3411
  %314 = load i16, ptr %313, align 2, !dbg !3411, !tbaa !1064
  %315 = lshr i16 %314, 14, !dbg !3413
  %316 = trunc i16 %315 to i8, !dbg !3413
  %317 = and i8 %316, 1, !dbg !3413
  call void @llvm.dbg.value(metadata i8 %317, metadata !3126, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %171, metadata !3094, metadata !DIExpression()), !dbg !3153
  %318 = icmp eq i8 %317, 0, !dbg !3414
  call void @llvm.dbg.value(metadata i1 %318, metadata !3121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  br label %368, !dbg !3415

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !3416
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3127, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata ptr %14, metadata !3184, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata ptr %14, metadata !3192, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 0, metadata !3195, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 8, metadata !3196, metadata !DIExpression()), !dbg !3420
  store i64 0, ptr %14, align 8, !dbg !3422
  call void @llvm.dbg.value(metadata i64 0, metadata !3123, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i8 1, metadata !3126, metadata !DIExpression()), !dbg !3410
  %320 = icmp eq i64 %171, -1, !dbg !3423
  br i1 %320, label %321, label %323, !dbg !3425

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3426
  call void @llvm.dbg.value(metadata i64 %322, metadata !3094, metadata !DIExpression()), !dbg !3153
  br label %323, !dbg !3427

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3262
  call void @llvm.dbg.value(metadata i64 %324, metadata !3094, metadata !DIExpression()), !dbg !3153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !3428
  %325 = sub i64 %324, %145, !dbg !3429
  call void @llvm.dbg.value(metadata ptr %15, metadata !3130, metadata !DIExpression(DW_OP_deref)), !dbg !3430
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #38, !dbg !3431
  call void @llvm.dbg.value(metadata i64 %326, metadata !3134, metadata !DIExpression()), !dbg !3430
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3432

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !3123, metadata !DIExpression()), !dbg !3410
  %328 = icmp ugt i64 %324, %145, !dbg !3433
  br i1 %328, label %331, label %329, !dbg !3435

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !3126, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 0, metadata !3123, metadata !DIExpression()), !dbg !3410
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3436
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %324, metadata !3094, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i1 true, metadata !3121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  br label %368, !dbg !3415

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !3126, metadata !DIExpression()), !dbg !3410
  br label %360, !dbg !3438

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !3123, metadata !DIExpression()), !dbg !3410
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3440
  %335 = load i8, ptr %334, align 1, !dbg !3440, !tbaa !1032
  %336 = icmp eq i8 %335, 0, !dbg !3435
  br i1 %336, label %363, label %337, !dbg !3441

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %338, metadata !3123, metadata !DIExpression()), !dbg !3410
  %339 = add i64 %338, %145, !dbg !3443
  %340 = icmp eq i64 %338, %325, !dbg !3433
  br i1 %340, label %363, label %331, !dbg !3435, !llvm.loop !3444

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3445
  %344 = and i1 %343, %133, !dbg !3445
  call void @llvm.dbg.value(metadata i64 1, metadata !3135, metadata !DIExpression()), !dbg !3446
  br i1 %344, label %345, label %354, !dbg !3445

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !3135, metadata !DIExpression()), !dbg !3446
  %347 = add i64 %346, %145, !dbg !3447
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3449
  %349 = load i8, ptr %348, align 1, !dbg !3449, !tbaa !1032
  %350 = sext i8 %349 to i32, !dbg !3449
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3450

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %352, metadata !3135, metadata !DIExpression()), !dbg !3446
  %353 = icmp eq i64 %352, %326, !dbg !3452
  br i1 %353, label %354, label %345, !dbg !3453, !llvm.loop !3454

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3456, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %355, metadata !3130, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i32 %355, metadata !3458, metadata !DIExpression()), !dbg !3466
  %356 = call i32 @iswprint(i32 noundef %355) #38, !dbg !3468
  %357 = icmp ne i32 %356, 0, !dbg !3469
  %358 = zext i1 %357 to i8, !dbg !3470
  call void @llvm.dbg.value(metadata i8 %358, metadata !3126, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %326, metadata !3123, metadata !DIExpression()), !dbg !3410
  br label %363, !dbg !3471

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !3126, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 0, metadata !3123, metadata !DIExpression()), !dbg !3410
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3436
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3437
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !3126, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 0, metadata !3123, metadata !DIExpression()), !dbg !3410
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3436
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %324, metadata !3094, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i1 %361, metadata !3121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  br label %368, !dbg !3415

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !3126, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %364, metadata !3123, metadata !DIExpression()), !dbg !3410
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3436
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %324, metadata !3094, metadata !DIExpression()), !dbg !3153
  %366 = icmp eq i8 %365, 0, !dbg !3414
  call void @llvm.dbg.value(metadata i1 %366, metadata !3121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  %367 = icmp ugt i64 %364, 1, !dbg !3472
  br i1 %367, label %374, label %368, !dbg !3415

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3473
  br i1 %373, label %374, label %480, !dbg !3473

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3474
  call void @llvm.dbg.value(metadata i64 %379, metadata !3143, metadata !DIExpression()), !dbg !3475
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3476

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !3153
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3254
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3252
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3262
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3477
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3262
  call void @llvm.dbg.value(metadata i8 %387, metadata !3122, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %386, metadata !3120, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %385, metadata !3117, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %384, metadata !3115, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 %383, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %382, metadata !3101, metadata !DIExpression()), !dbg !3153
  br i1 %380, label %388, label %434, !dbg !3478

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3483

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !3120, metadata !DIExpression()), !dbg !3262
  %390 = and i8 %383, 1, !dbg !3486
  %391 = icmp eq i8 %390, 0, !dbg !3486
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3486
  br i1 %392, label %393, label %409, !dbg !3486

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3488
  br i1 %394, label %395, label %397, !dbg !3492

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3488
  store i8 39, ptr %396, align 1, !dbg !3488, !tbaa !1032
  br label %397, !dbg !3488

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3492
  call void @llvm.dbg.value(metadata i64 %398, metadata !3101, metadata !DIExpression()), !dbg !3153
  %399 = icmp ult i64 %398, %146, !dbg !3493
  br i1 %399, label %400, label %402, !dbg !3496

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3493
  store i8 36, ptr %401, align 1, !dbg !3493, !tbaa !1032
  br label %402, !dbg !3493

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %403, metadata !3101, metadata !DIExpression()), !dbg !3153
  %404 = icmp ult i64 %403, %146, !dbg !3497
  br i1 %404, label %405, label %407, !dbg !3500

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3497
  store i8 39, ptr %406, align 1, !dbg !3497, !tbaa !1032
  br label %407, !dbg !3497

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3500
  call void @llvm.dbg.value(metadata i64 %408, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 1, metadata !3109, metadata !DIExpression()), !dbg !3153
  br label %409, !dbg !3501

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !3153
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8 %411, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %410, metadata !3101, metadata !DIExpression()), !dbg !3153
  %412 = icmp ult i64 %410, %146, !dbg !3502
  br i1 %412, label %413, label %415, !dbg !3505

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3502
  store i8 92, ptr %414, align 1, !dbg !3502, !tbaa !1032
  br label %415, !dbg !3502

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3505
  call void @llvm.dbg.value(metadata i64 %416, metadata !3101, metadata !DIExpression()), !dbg !3153
  %417 = icmp ult i64 %416, %146, !dbg !3506
  br i1 %417, label %418, label %422, !dbg !3509

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3506
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3506
  store i8 %420, ptr %421, align 1, !dbg !3506, !tbaa !1032
  br label %422, !dbg !3506

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3509
  call void @llvm.dbg.value(metadata i64 %423, metadata !3101, metadata !DIExpression()), !dbg !3153
  %424 = icmp ult i64 %423, %146, !dbg !3510
  br i1 %424, label %425, label %430, !dbg !3513

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3510
  %428 = or i8 %427, 48, !dbg !3510
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3510
  store i8 %428, ptr %429, align 1, !dbg !3510, !tbaa !1032
  br label %430, !dbg !3510

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %431, metadata !3101, metadata !DIExpression()), !dbg !3153
  %432 = and i8 %387, 7, !dbg !3514
  %433 = or i8 %432, 48, !dbg !3515
  call void @llvm.dbg.value(metadata i8 %433, metadata !3122, metadata !DIExpression()), !dbg !3262
  br label %443, !dbg !3516

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3517
  %436 = icmp eq i8 %435, 0, !dbg !3517
  br i1 %436, label %443, label %437, !dbg !3519

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3520
  br i1 %438, label %439, label %441, !dbg !3524

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3520
  store i8 92, ptr %440, align 1, !dbg !3520, !tbaa !1032
  br label %441, !dbg !3520

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %442, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 0, metadata !3117, metadata !DIExpression()), !dbg !3262
  br label %443, !dbg !3525

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !3153
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3254
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3262
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3262
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3262
  call void @llvm.dbg.value(metadata i8 %448, metadata !3122, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %447, metadata !3120, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %446, metadata !3117, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %445, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %444, metadata !3101, metadata !DIExpression()), !dbg !3153
  %449 = add i64 %384, 1, !dbg !3526
  %450 = icmp ugt i64 %379, %449, !dbg !3528
  br i1 %450, label %451, label %478, !dbg !3529

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3530
  %453 = icmp ne i8 %452, 0, !dbg !3530
  %454 = and i8 %447, 1, !dbg !3530
  %455 = icmp eq i8 %454, 0, !dbg !3530
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3530
  br i1 %456, label %457, label %468, !dbg !3530

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3533
  br i1 %458, label %459, label %461, !dbg !3537

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3533
  store i8 39, ptr %460, align 1, !dbg !3533, !tbaa !1032
  br label %461, !dbg !3533

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3537
  call void @llvm.dbg.value(metadata i64 %462, metadata !3101, metadata !DIExpression()), !dbg !3153
  %463 = icmp ult i64 %462, %146, !dbg !3538
  br i1 %463, label %464, label %466, !dbg !3541

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3538
  store i8 39, ptr %465, align 1, !dbg !3538, !tbaa !1032
  br label %466, !dbg !3538

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %467, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 0, metadata !3109, metadata !DIExpression()), !dbg !3153
  br label %468, !dbg !3542

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3543
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8 %470, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %469, metadata !3101, metadata !DIExpression()), !dbg !3153
  %471 = icmp ult i64 %469, %146, !dbg !3544
  br i1 %471, label %472, label %474, !dbg !3547

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3544
  store i8 %448, ptr %473, align 1, !dbg !3544, !tbaa !1032
  br label %474, !dbg !3544

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %475, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %449, metadata !3115, metadata !DIExpression()), !dbg !3252
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3548
  %477 = load i8, ptr %476, align 1, !dbg !3548, !tbaa !1032
  call void @llvm.dbg.value(metadata i8 %477, metadata !3122, metadata !DIExpression()), !dbg !3262
  br label %381, !dbg !3549, !llvm.loop !3550

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3262
  call void @llvm.dbg.value(metadata i8 %448, metadata !3122, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %479, metadata !3121, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %447, metadata !3120, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %446, metadata !3117, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %384, metadata !3115, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 %445, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %444, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %378, metadata !3094, metadata !DIExpression()), !dbg !3153
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3553
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !3153
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !3158
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !3153
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !3153
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3252
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3262
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3262
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3262
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %489, metadata !3122, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %488, metadata !3121, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %487, metadata !3120, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %173, metadata !3117, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %486, metadata !3115, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 %485, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %484, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %483, metadata !3102, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %482, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %481, metadata !3094, metadata !DIExpression()), !dbg !3153
  br i1 %127, label %502, label %491, !dbg !3554

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
  br i1 %137, label %503, label %524, !dbg !3556

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3557

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
  %514 = lshr i8 %505, 5, !dbg !3558
  %515 = zext i8 %514 to i64, !dbg !3558
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3559
  %517 = load i32, ptr %516, align 4, !dbg !3559, !tbaa !1023
  %518 = and i8 %505, 31, !dbg !3560
  %519 = zext i8 %518 to i32, !dbg !3560
  %520 = shl nuw i32 1, %519, !dbg !3561
  %521 = and i32 %517, %520, !dbg !3561
  %522 = icmp eq i32 %521, 0, !dbg !3561
  %523 = and i1 %172, %522, !dbg !3562
  br i1 %523, label %573, label %535, !dbg !3562

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
  br i1 %172, label %573, label %535, !dbg !3563

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3553
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !3153
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !3158
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !3162
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3254
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3564
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3262
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3262
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %543, metadata !3122, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %542, metadata !3121, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %541, metadata !3115, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 %540, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %539, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %538, metadata !3102, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %537, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %536, metadata !3094, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.label(metadata !3150), !dbg !3565
  br i1 %132, label %545, label %674, !dbg !3566

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !3120, metadata !DIExpression()), !dbg !3262
  %546 = and i8 %540, 1, !dbg !3568
  %547 = icmp eq i8 %546, 0, !dbg !3568
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3568
  br i1 %548, label %549, label %565, !dbg !3568

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3570
  br i1 %550, label %551, label %553, !dbg !3574

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3570
  store i8 39, ptr %552, align 1, !dbg !3570, !tbaa !1032
  br label %553, !dbg !3570

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %554, metadata !3101, metadata !DIExpression()), !dbg !3153
  %555 = icmp ult i64 %554, %544, !dbg !3575
  br i1 %555, label %556, label %558, !dbg !3578

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3575
  store i8 36, ptr %557, align 1, !dbg !3575, !tbaa !1032
  br label %558, !dbg !3575

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3578
  call void @llvm.dbg.value(metadata i64 %559, metadata !3101, metadata !DIExpression()), !dbg !3153
  %560 = icmp ult i64 %559, %544, !dbg !3579
  br i1 %560, label %561, label %563, !dbg !3582

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3579
  store i8 39, ptr %562, align 1, !dbg !3579, !tbaa !1032
  br label %563, !dbg !3579

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %564, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 1, metadata !3109, metadata !DIExpression()), !dbg !3153
  br label %565, !dbg !3583

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3262
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8 %567, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %566, metadata !3101, metadata !DIExpression()), !dbg !3153
  %568 = icmp ult i64 %566, %544, !dbg !3584
  br i1 %568, label %569, label %571, !dbg !3587

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3584
  store i8 92, ptr %570, align 1, !dbg !3584, !tbaa !1032
  br label %571, !dbg !3584

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %544, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %543, metadata !3122, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %542, metadata !3121, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 1, metadata !3120, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %541, metadata !3115, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 %567, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %539, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %538, metadata !3102, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %572, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %536, metadata !3094, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.label(metadata !3151), !dbg !3588
  br label %600, !dbg !3589

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3553
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !3153
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !3158
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !3162
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3254
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3564
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3262
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3262
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3592
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %582, metadata !3122, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %581, metadata !3121, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 %580, metadata !3120, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %579, metadata !3115, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 %578, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %577, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %576, metadata !3102, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %575, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %574, metadata !3094, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.label(metadata !3151), !dbg !3588
  %584 = and i8 %578, 1, !dbg !3589
  %585 = icmp ne i8 %584, 0, !dbg !3589
  %586 = and i8 %580, 1, !dbg !3589
  %587 = icmp eq i8 %586, 0, !dbg !3589
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3589
  br i1 %588, label %589, label %600, !dbg !3589

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3593
  br i1 %590, label %591, label %593, !dbg !3597

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3593
  store i8 39, ptr %592, align 1, !dbg !3593, !tbaa !1032
  br label %593, !dbg !3593

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %594, metadata !3101, metadata !DIExpression()), !dbg !3153
  %595 = icmp ult i64 %594, %583, !dbg !3598
  br i1 %595, label %596, label %598, !dbg !3601

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3598
  store i8 39, ptr %597, align 1, !dbg !3598, !tbaa !1032
  br label %598, !dbg !3598

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %599, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 0, metadata !3109, metadata !DIExpression()), !dbg !3153
  br label %600, !dbg !3602

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3262
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8 %609, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %608, metadata !3101, metadata !DIExpression()), !dbg !3153
  %610 = icmp ult i64 %608, %601, !dbg !3603
  br i1 %610, label %611, label %613, !dbg !3606

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3603
  store i8 %602, ptr %612, align 1, !dbg !3603, !tbaa !1032
  br label %613, !dbg !3603

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %614, metadata !3101, metadata !DIExpression()), !dbg !3153
  %615 = icmp eq i8 %603, 0, !dbg !3607
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3609
  call void @llvm.dbg.value(metadata i8 %616, metadata !3108, metadata !DIExpression()), !dbg !3153
  br label %617, !dbg !3610

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3553
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !3153
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !3158
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !3162
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !3163
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3254
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3564
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %624, metadata !3115, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 %623, metadata !3109, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %622, metadata !3108, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %621, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %620, metadata !3102, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %619, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %618, metadata !3094, metadata !DIExpression()), !dbg !3153
  %626 = add i64 %624, 1, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %626, metadata !3115, metadata !DIExpression()), !dbg !3252
  br label %138, !dbg !3612, !llvm.loop !3613

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !3092, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %143, metadata !3108, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 %142, metadata !3107, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %141, metadata !3102, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %140, metadata !3101, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %139, metadata !3094, metadata !DIExpression()), !dbg !3153
  %628 = icmp eq i64 %140, 0, !dbg !3615
  %629 = and i1 %133, %628, !dbg !3617
  %630 = xor i1 %629, true, !dbg !3617
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3617
  br i1 %631, label %632, label %670, !dbg !3617

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3618
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3618
  br i1 %636, label %637, label %646, !dbg !3618

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3620
  %639 = icmp eq i8 %638, 0, !dbg !3620
  br i1 %639, label %642, label %640, !dbg !3623

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3624
  br label %694, !dbg !3625

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3626
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3628
  br i1 %645, label %28, label %646, !dbg !3628

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3629
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3631
  br i1 %649, label %650, label %665, !dbg !3631

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !3103, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %140, metadata !3101, metadata !DIExpression()), !dbg !3153
  %651 = load i8, ptr %120, align 1, !dbg !3632, !tbaa !1032
  %652 = icmp eq i8 %651, 0, !dbg !3635
  br i1 %652, label %665, label %653, !dbg !3635

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !3103, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %656, metadata !3101, metadata !DIExpression()), !dbg !3153
  %657 = icmp ult i64 %656, %146, !dbg !3636
  br i1 %657, label %658, label %660, !dbg !3639

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3636
  store i8 %654, ptr %659, align 1, !dbg !3636, !tbaa !1032
  br label %660, !dbg !3636

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %661, metadata !3101, metadata !DIExpression()), !dbg !3153
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3640
  call void @llvm.dbg.value(metadata ptr %662, metadata !3103, metadata !DIExpression()), !dbg !3153
  %663 = load i8, ptr %662, align 1, !dbg !3632, !tbaa !1032
  %664 = icmp eq i8 %663, 0, !dbg !3635
  br i1 %664, label %665, label %653, !dbg !3635, !llvm.loop !3641

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3235
  call void @llvm.dbg.value(metadata i64 %666, metadata !3101, metadata !DIExpression()), !dbg !3153
  %667 = icmp ult i64 %666, %146, !dbg !3643
  br i1 %667, label %668, label %694, !dbg !3645

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3646
  store i8 0, ptr %669, align 1, !dbg !3647, !tbaa !1032
  br label %694, !dbg !3646

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !3152), !dbg !3648
  %672 = icmp eq i8 %124, 0, !dbg !3649
  %673 = select i1 %672, i32 2, i32 4, !dbg !3649
  br label %684, !dbg !3649

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3649
  %678 = select i1 %677, i32 2, i32 4, !dbg !3649
  br label %679, !dbg !3651

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !3152), !dbg !3648
  %683 = icmp eq i32 %116, 2, !dbg !3651
  br i1 %683, label %684, label %688, !dbg !3649

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3649

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !3095, metadata !DIExpression()), !dbg !3153
  %692 = and i32 %5, -3, !dbg !3652
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3653
  br label %694, !dbg !3654

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3655
}

; Function Attrs: nounwind
declare !dbg !3656 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3659 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3661 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3665, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %1, metadata !3666, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %2, metadata !3667, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %0, metadata !3669, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %1, metadata !3674, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr null, metadata !3675, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %2, metadata !3676, metadata !DIExpression()), !dbg !3682
  %4 = icmp eq ptr %2, null, !dbg !3684
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3684
  call void @llvm.dbg.value(metadata ptr %5, metadata !3677, metadata !DIExpression()), !dbg !3682
  %6 = tail call ptr @__errno_location() #41, !dbg !3685
  %7 = load i32, ptr %6, align 4, !dbg !3685, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %7, metadata !3678, metadata !DIExpression()), !dbg !3682
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3686
  %9 = load i32, ptr %8, align 4, !dbg !3686, !tbaa !3035
  %10 = or i32 %9, 1, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %10, metadata !3679, metadata !DIExpression()), !dbg !3682
  %11 = load i32, ptr %5, align 8, !dbg !3688, !tbaa !2985
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3689
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3690
  %14 = load ptr, ptr %13, align 8, !dbg !3690, !tbaa !3056
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3691
  %16 = load ptr, ptr %15, align 8, !dbg !3691, !tbaa !3059
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3692
  %18 = add i64 %17, 1, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %18, metadata !3680, metadata !DIExpression()), !dbg !3682
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3694
  call void @llvm.dbg.value(metadata ptr %19, metadata !3681, metadata !DIExpression()), !dbg !3682
  %20 = load i32, ptr %5, align 8, !dbg !3695, !tbaa !2985
  %21 = load ptr, ptr %13, align 8, !dbg !3696, !tbaa !3056
  %22 = load ptr, ptr %15, align 8, !dbg !3697, !tbaa !3059
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3698
  store i32 %7, ptr %6, align 4, !dbg !3699, !tbaa !1023
  ret ptr %19, !dbg !3700
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3670 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3669, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %1, metadata !3674, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %2, metadata !3675, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %3, metadata !3676, metadata !DIExpression()), !dbg !3701
  %5 = icmp eq ptr %3, null, !dbg !3702
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3702
  call void @llvm.dbg.value(metadata ptr %6, metadata !3677, metadata !DIExpression()), !dbg !3701
  %7 = tail call ptr @__errno_location() #41, !dbg !3703
  %8 = load i32, ptr %7, align 4, !dbg !3703, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %8, metadata !3678, metadata !DIExpression()), !dbg !3701
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3704
  %10 = load i32, ptr %9, align 4, !dbg !3704, !tbaa !3035
  %11 = icmp eq ptr %2, null, !dbg !3705
  %12 = zext i1 %11 to i32, !dbg !3705
  %13 = or i32 %10, %12, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %13, metadata !3679, metadata !DIExpression()), !dbg !3701
  %14 = load i32, ptr %6, align 8, !dbg !3707, !tbaa !2985
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3708
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3709
  %17 = load ptr, ptr %16, align 8, !dbg !3709, !tbaa !3056
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3710
  %19 = load ptr, ptr %18, align 8, !dbg !3710, !tbaa !3059
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3711
  %21 = add i64 %20, 1, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %21, metadata !3680, metadata !DIExpression()), !dbg !3701
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3713
  call void @llvm.dbg.value(metadata ptr %22, metadata !3681, metadata !DIExpression()), !dbg !3701
  %23 = load i32, ptr %6, align 8, !dbg !3714, !tbaa !2985
  %24 = load ptr, ptr %16, align 8, !dbg !3715, !tbaa !3056
  %25 = load ptr, ptr %18, align 8, !dbg !3716, !tbaa !3059
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3717
  store i32 %8, ptr %7, align 4, !dbg !3718, !tbaa !1023
  br i1 %11, label %28, label %27, !dbg !3719

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3720, !tbaa !3722
  br label %28, !dbg !3723

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3724
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3725 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3730, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %1, metadata !3727, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i32 1, metadata !3728, metadata !DIExpression()), !dbg !3732
  %2 = load i32, ptr @nslots, align 4, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 1, metadata !3728, metadata !DIExpression()), !dbg !3732
  %3 = icmp sgt i32 %2, 1, !dbg !3733
  br i1 %3, label %4, label %6, !dbg !3735

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3733
  br label %10, !dbg !3735

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3736
  %8 = load ptr, ptr %7, align 8, !dbg !3736, !tbaa !3738
  %9 = icmp eq ptr %8, @slot0, !dbg !3740
  br i1 %9, label %17, label %16, !dbg !3741

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3728, metadata !DIExpression()), !dbg !3732
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3742
  %13 = load ptr, ptr %12, align 8, !dbg !3742, !tbaa !3738
  tail call void @free(ptr noundef %13) #38, !dbg !3743
  %14 = add nuw nsw i64 %11, 1, !dbg !3744
  call void @llvm.dbg.value(metadata i64 %14, metadata !3728, metadata !DIExpression()), !dbg !3732
  %15 = icmp eq i64 %14, %5, !dbg !3733
  br i1 %15, label %6, label %10, !dbg !3735, !llvm.loop !3745

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3747
  store i64 256, ptr @slotvec0, align 8, !dbg !3749, !tbaa !3750
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3751, !tbaa !3738
  br label %17, !dbg !3752

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3753
  br i1 %18, label %20, label %19, !dbg !3755

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3756
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3758, !tbaa !949
  br label %20, !dbg !3759

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3760, !tbaa !1023
  ret void, !dbg !3761
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3762 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3765 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3767, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata ptr %1, metadata !3768, metadata !DIExpression()), !dbg !3769
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3770
  ret ptr %3, !dbg !3771
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3772 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3776, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %1, metadata !3777, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i64 %2, metadata !3778, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %3, metadata !3779, metadata !DIExpression()), !dbg !3792
  %6 = tail call ptr @__errno_location() #41, !dbg !3793
  %7 = load i32, ptr %6, align 4, !dbg !3793, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %7, metadata !3780, metadata !DIExpression()), !dbg !3792
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3794, !tbaa !949
  call void @llvm.dbg.value(metadata ptr %8, metadata !3781, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3782, metadata !DIExpression()), !dbg !3792
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3795
  br i1 %9, label %10, label %11, !dbg !3795

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3797
  unreachable, !dbg !3797

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3798, !tbaa !1023
  %13 = icmp sgt i32 %12, %0, !dbg !3799
  br i1 %13, label %32, label %14, !dbg !3800

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3801
  call void @llvm.dbg.value(metadata i1 %15, metadata !3783, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3802
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3803
  %16 = sext i32 %12 to i64, !dbg !3804
  call void @llvm.dbg.value(metadata i64 %16, metadata !3786, metadata !DIExpression()), !dbg !3802
  store i64 %16, ptr %5, align 8, !dbg !3805, !tbaa !3722
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3806
  %18 = add nuw nsw i32 %0, 1, !dbg !3807
  %19 = sub i32 %18, %12, !dbg !3808
  %20 = sext i32 %19 to i64, !dbg !3809
  call void @llvm.dbg.value(metadata ptr %5, metadata !3786, metadata !DIExpression(DW_OP_deref)), !dbg !3802
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3810
  call void @llvm.dbg.value(metadata ptr %21, metadata !3781, metadata !DIExpression()), !dbg !3792
  store ptr %21, ptr @slotvec, align 8, !dbg !3811, !tbaa !949
  br i1 %15, label %22, label %23, !dbg !3812

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3813, !tbaa.struct !3815
  br label %23, !dbg !3816

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3817, !tbaa !1023
  %25 = sext i32 %24 to i64, !dbg !3818
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3818
  %27 = load i64, ptr %5, align 8, !dbg !3819, !tbaa !3722
  call void @llvm.dbg.value(metadata i64 %27, metadata !3786, metadata !DIExpression()), !dbg !3802
  %28 = sub nsw i64 %27, %25, !dbg !3820
  %29 = shl i64 %28, 4, !dbg !3821
  call void @llvm.dbg.value(metadata ptr %26, metadata !3192, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 0, metadata !3195, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %29, metadata !3196, metadata !DIExpression()), !dbg !3822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3824
  %30 = load i64, ptr %5, align 8, !dbg !3825, !tbaa !3722
  call void @llvm.dbg.value(metadata i64 %30, metadata !3786, metadata !DIExpression()), !dbg !3802
  %31 = trunc i64 %30 to i32, !dbg !3825
  store i32 %31, ptr @nslots, align 4, !dbg !3826, !tbaa !1023
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3827
  br label %32, !dbg !3828

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3792
  call void @llvm.dbg.value(metadata ptr %33, metadata !3781, metadata !DIExpression()), !dbg !3792
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3829
  %36 = load i64, ptr %35, align 8, !dbg !3830, !tbaa !3750
  call void @llvm.dbg.value(metadata i64 %36, metadata !3787, metadata !DIExpression()), !dbg !3831
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3832
  %38 = load ptr, ptr %37, align 8, !dbg !3832, !tbaa !3738
  call void @llvm.dbg.value(metadata ptr %38, metadata !3789, metadata !DIExpression()), !dbg !3831
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3833
  %40 = load i32, ptr %39, align 4, !dbg !3833, !tbaa !3035
  %41 = or i32 %40, 1, !dbg !3834
  call void @llvm.dbg.value(metadata i32 %41, metadata !3790, metadata !DIExpression()), !dbg !3831
  %42 = load i32, ptr %3, align 8, !dbg !3835, !tbaa !2985
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3836
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3837
  %45 = load ptr, ptr %44, align 8, !dbg !3837, !tbaa !3056
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3838
  %47 = load ptr, ptr %46, align 8, !dbg !3838, !tbaa !3059
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %48, metadata !3791, metadata !DIExpression()), !dbg !3831
  %49 = icmp ugt i64 %36, %48, !dbg !3840
  br i1 %49, label %60, label %50, !dbg !3842

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3843
  call void @llvm.dbg.value(metadata i64 %51, metadata !3787, metadata !DIExpression()), !dbg !3831
  store i64 %51, ptr %35, align 8, !dbg !3845, !tbaa !3750
  %52 = icmp eq ptr %38, @slot0, !dbg !3846
  br i1 %52, label %54, label %53, !dbg !3848

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3849
  br label %54, !dbg !3849

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3850
  call void @llvm.dbg.value(metadata ptr %55, metadata !3789, metadata !DIExpression()), !dbg !3831
  store ptr %55, ptr %37, align 8, !dbg !3851, !tbaa !3738
  %56 = load i32, ptr %3, align 8, !dbg !3852, !tbaa !2985
  %57 = load ptr, ptr %44, align 8, !dbg !3853, !tbaa !3056
  %58 = load ptr, ptr %46, align 8, !dbg !3854, !tbaa !3059
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3855
  br label %60, !dbg !3856

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3831
  call void @llvm.dbg.value(metadata ptr %61, metadata !3789, metadata !DIExpression()), !dbg !3831
  store i32 %7, ptr %6, align 4, !dbg !3857, !tbaa !1023
  ret ptr %61, !dbg !3858
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3859 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3863, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata ptr %1, metadata !3864, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %2, metadata !3865, metadata !DIExpression()), !dbg !3866
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3867
  ret ptr %4, !dbg !3868
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3869 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3871, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 0, metadata !3767, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata ptr %0, metadata !3768, metadata !DIExpression()), !dbg !3873
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3875
  ret ptr %2, !dbg !3876
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3877 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3881, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i64 %1, metadata !3882, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 0, metadata !3863, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata ptr %0, metadata !3864, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %1, metadata !3865, metadata !DIExpression()), !dbg !3884
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3886
  ret ptr %3, !dbg !3887
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3888 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3892, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 %1, metadata !3893, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata ptr %2, metadata !3894, metadata !DIExpression()), !dbg !3896
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3897
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3895, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3899), !dbg !3902
  call void @llvm.dbg.value(metadata i32 %1, metadata !3903, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3908, metadata !DIExpression()), !dbg !3911
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3911, !alias.scope !3899
  %5 = icmp eq i32 %1, 10, !dbg !3912
  br i1 %5, label %6, label %7, !dbg !3914

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3915, !noalias !3899
  unreachable, !dbg !3915

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3916, !tbaa !2985, !alias.scope !3899
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3917
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3918
  ret ptr %8, !dbg !3919
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3920 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3924, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i32 %1, metadata !3925, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata ptr %2, metadata !3926, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %3, metadata !3927, metadata !DIExpression()), !dbg !3929
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3930
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3928, metadata !DIExpression()), !dbg !3931
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3932), !dbg !3935
  call void @llvm.dbg.value(metadata i32 %1, metadata !3903, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3908, metadata !DIExpression()), !dbg !3938
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3938, !alias.scope !3932
  %6 = icmp eq i32 %1, 10, !dbg !3939
  br i1 %6, label %7, label %8, !dbg !3940

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3941, !noalias !3932
  unreachable, !dbg !3941

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3942, !tbaa !2985, !alias.scope !3932
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3943
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3944
  ret ptr %9, !dbg !3945
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3946 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3950, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata ptr %1, metadata !3951, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 0, metadata !3892, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i32 %0, metadata !3893, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata ptr %1, metadata !3894, metadata !DIExpression()), !dbg !3953
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3955
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3895, metadata !DIExpression()), !dbg !3956
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3957), !dbg !3960
  call void @llvm.dbg.value(metadata i32 %0, metadata !3903, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3908, metadata !DIExpression()), !dbg !3963
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3963, !alias.scope !3957
  %4 = icmp eq i32 %0, 10, !dbg !3964
  br i1 %4, label %5, label %6, !dbg !3965

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3966, !noalias !3957
  unreachable, !dbg !3966

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3967, !tbaa !2985, !alias.scope !3957
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3968
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3969
  ret ptr %7, !dbg !3970
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3971 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3975, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata ptr %1, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %2, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i32 0, metadata !3924, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i32 %0, metadata !3925, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata ptr %1, metadata !3926, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %2, metadata !3927, metadata !DIExpression()), !dbg !3979
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3981
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3928, metadata !DIExpression()), !dbg !3982
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3983), !dbg !3986
  call void @llvm.dbg.value(metadata i32 %0, metadata !3903, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3908, metadata !DIExpression()), !dbg !3989
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3989, !alias.scope !3983
  %5 = icmp eq i32 %0, 10, !dbg !3990
  br i1 %5, label %6, label %7, !dbg !3991

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3992, !noalias !3983
  unreachable, !dbg !3992

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3993, !tbaa !2985, !alias.scope !3983
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3994
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3995
  ret ptr %8, !dbg !3996
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3997 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4001, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %1, metadata !4002, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i8 %2, metadata !4003, metadata !DIExpression()), !dbg !4005
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4006
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4004, metadata !DIExpression()), !dbg !4007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4008, !tbaa.struct !4009
  call void @llvm.dbg.value(metadata ptr %4, metadata !3002, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8 %2, metadata !3003, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8 %2, metadata !3005, metadata !DIExpression()), !dbg !4010
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4012
  %6 = lshr i8 %2, 5, !dbg !4013
  %7 = zext i8 %6 to i64, !dbg !4013
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4014
  call void @llvm.dbg.value(metadata ptr %8, metadata !3006, metadata !DIExpression()), !dbg !4010
  %9 = and i8 %2, 31, !dbg !4015
  %10 = zext i8 %9 to i32, !dbg !4015
  call void @llvm.dbg.value(metadata i32 %10, metadata !3008, metadata !DIExpression()), !dbg !4010
  %11 = load i32, ptr %8, align 4, !dbg !4016, !tbaa !1023
  %12 = lshr i32 %11, %10, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %12, metadata !3009, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4010
  %13 = and i32 %12, 1, !dbg !4018
  %14 = xor i32 %13, 1, !dbg !4018
  %15 = shl nuw i32 %14, %10, !dbg !4019
  %16 = xor i32 %15, %11, !dbg !4020
  store i32 %16, ptr %8, align 4, !dbg !4020, !tbaa !1023
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4021
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4022
  ret ptr %17, !dbg !4023
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4024 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4028, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8 %1, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr %0, metadata !4001, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 -1, metadata !4002, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i8 %1, metadata !4003, metadata !DIExpression()), !dbg !4031
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4033
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4004, metadata !DIExpression()), !dbg !4034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4035, !tbaa.struct !4009
  call void @llvm.dbg.value(metadata ptr %3, metadata !3002, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i8 %1, metadata !3003, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i8 %1, metadata !3005, metadata !DIExpression()), !dbg !4036
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4038
  %5 = lshr i8 %1, 5, !dbg !4039
  %6 = zext i8 %5 to i64, !dbg !4039
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4040
  call void @llvm.dbg.value(metadata ptr %7, metadata !3006, metadata !DIExpression()), !dbg !4036
  %8 = and i8 %1, 31, !dbg !4041
  %9 = zext i8 %8 to i32, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %9, metadata !3008, metadata !DIExpression()), !dbg !4036
  %10 = load i32, ptr %7, align 4, !dbg !4042, !tbaa !1023
  %11 = lshr i32 %10, %9, !dbg !4043
  call void @llvm.dbg.value(metadata i32 %11, metadata !3009, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4036
  %12 = and i32 %11, 1, !dbg !4044
  %13 = xor i32 %12, 1, !dbg !4044
  %14 = shl nuw i32 %13, %9, !dbg !4045
  %15 = xor i32 %14, %10, !dbg !4046
  store i32 %15, ptr %7, align 4, !dbg !4046, !tbaa !1023
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4047
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4048
  ret ptr %16, !dbg !4049
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4050 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4052, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata ptr %0, metadata !4028, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i8 58, metadata !4029, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %0, metadata !4001, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 -1, metadata !4002, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8 58, metadata !4003, metadata !DIExpression()), !dbg !4056
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !4058
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4004, metadata !DIExpression()), !dbg !4059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4060, !tbaa.struct !4009
  call void @llvm.dbg.value(metadata ptr %2, metadata !3002, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8 58, metadata !3003, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8 58, metadata !3005, metadata !DIExpression()), !dbg !4061
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4063
  call void @llvm.dbg.value(metadata ptr %3, metadata !3006, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 26, metadata !3008, metadata !DIExpression()), !dbg !4061
  %4 = load i32, ptr %3, align 4, !dbg !4064, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %4, metadata !3009, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4061
  %5 = or i32 %4, 67108864, !dbg !4065
  store i32 %5, ptr %3, align 4, !dbg !4065, !tbaa !1023
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4066
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !4067
  ret ptr %6, !dbg !4068
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4069 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %1, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %0, metadata !4001, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i64 %1, metadata !4002, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i8 58, metadata !4003, metadata !DIExpression()), !dbg !4074
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4076
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4004, metadata !DIExpression()), !dbg !4077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4078, !tbaa.struct !4009
  call void @llvm.dbg.value(metadata ptr %3, metadata !3002, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i8 58, metadata !3003, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i8 58, metadata !3005, metadata !DIExpression()), !dbg !4079
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4081
  call void @llvm.dbg.value(metadata ptr %4, metadata !3006, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i32 26, metadata !3008, metadata !DIExpression()), !dbg !4079
  %5 = load i32, ptr %4, align 4, !dbg !4082, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %5, metadata !3009, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4079
  %6 = or i32 %5, 67108864, !dbg !4083
  store i32 %6, ptr %4, align 4, !dbg !4083, !tbaa !1023
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4084
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4085
  ret ptr %7, !dbg !4086
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4087 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3908, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4093
  call void @llvm.dbg.value(metadata i32 %0, metadata !4089, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %1, metadata !4090, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %2, metadata !4091, metadata !DIExpression()), !dbg !4095
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4096
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4092, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i32 %1, metadata !3903, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4098
  %5 = icmp eq i32 %1, 10, !dbg !4099
  br i1 %5, label %6, label %7, !dbg !4100

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4101, !noalias !4102
  unreachable, !dbg !4101

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3908, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4098
  store i32 %1, ptr %4, align 8, !dbg !4105, !tbaa.struct !4009
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4105
  call void @llvm.dbg.value(metadata ptr %4, metadata !3002, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8 58, metadata !3003, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 1, metadata !3004, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8 58, metadata !3005, metadata !DIExpression()), !dbg !4106
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4108
  call void @llvm.dbg.value(metadata ptr %9, metadata !3006, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 26, metadata !3008, metadata !DIExpression()), !dbg !4106
  %10 = load i32, ptr %9, align 4, !dbg !4109, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %10, metadata !3009, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4106
  %11 = or i32 %10, 67108864, !dbg !4110
  store i32 %11, ptr %9, align 4, !dbg !4110, !tbaa !1023
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4111
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4112
  ret ptr %12, !dbg !4113
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4114 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4118, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata ptr %1, metadata !4119, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata ptr %2, metadata !4120, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata ptr %3, metadata !4121, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 %0, metadata !4123, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %1, metadata !4128, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %3, metadata !4130, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 -1, metadata !4131, metadata !DIExpression()), !dbg !4133
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4135
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4132, metadata !DIExpression()), !dbg !4136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4137, !tbaa.struct !4009
  call void @llvm.dbg.value(metadata ptr %5, metadata !3042, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %1, metadata !3043, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %5, metadata !3042, metadata !DIExpression()), !dbg !4138
  store i32 10, ptr %5, align 8, !dbg !4140, !tbaa !2985
  %6 = icmp ne ptr %1, null, !dbg !4141
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4142
  br i1 %8, label %10, label %9, !dbg !4142

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4143
  unreachable, !dbg !4143

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4144
  store ptr %1, ptr %11, align 8, !dbg !4145, !tbaa !3056
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4146
  store ptr %2, ptr %12, align 8, !dbg !4147, !tbaa !3059
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4148
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4149
  ret ptr %13, !dbg !4150
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4124 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4123, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata ptr %1, metadata !4128, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata ptr %3, metadata !4130, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i64 %4, metadata !4131, metadata !DIExpression()), !dbg !4151
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !4152
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4132, metadata !DIExpression()), !dbg !4153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4154, !tbaa.struct !4009
  call void @llvm.dbg.value(metadata ptr %6, metadata !3042, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata ptr %1, metadata !3043, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata ptr %6, metadata !3042, metadata !DIExpression()), !dbg !4155
  store i32 10, ptr %6, align 8, !dbg !4157, !tbaa !2985
  %7 = icmp ne ptr %1, null, !dbg !4158
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4159
  br i1 %9, label %11, label %10, !dbg !4159

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !4160
  unreachable, !dbg !4160

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4161
  store ptr %1, ptr %12, align 8, !dbg !4162, !tbaa !3056
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4163
  store ptr %2, ptr %13, align 8, !dbg !4164, !tbaa !3059
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4165
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !4166
  ret ptr %14, !dbg !4167
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4168 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4172, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata ptr %1, metadata !4173, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata ptr %2, metadata !4174, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i32 0, metadata !4118, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %0, metadata !4119, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %1, metadata !4120, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %2, metadata !4121, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i32 0, metadata !4123, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata ptr %0, metadata !4128, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata ptr %1, metadata !4129, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata ptr %2, metadata !4130, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i64 -1, metadata !4131, metadata !DIExpression()), !dbg !4178
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4180
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4132, metadata !DIExpression()), !dbg !4181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4182, !tbaa.struct !4009
  call void @llvm.dbg.value(metadata ptr %4, metadata !3042, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %1, metadata !3044, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata ptr %4, metadata !3042, metadata !DIExpression()), !dbg !4183
  store i32 10, ptr %4, align 8, !dbg !4185, !tbaa !2985
  %5 = icmp ne ptr %0, null, !dbg !4186
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4187
  br i1 %7, label %9, label %8, !dbg !4187

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4188
  unreachable, !dbg !4188

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4189
  store ptr %0, ptr %10, align 8, !dbg !4190, !tbaa !3056
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4191
  store ptr %1, ptr %11, align 8, !dbg !4192, !tbaa !3059
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4193
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4194
  ret ptr %12, !dbg !4195
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4196 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4200, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata ptr %1, metadata !4201, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata ptr %2, metadata !4202, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i64 %3, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 0, metadata !4123, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata ptr %0, metadata !4128, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata ptr %1, metadata !4129, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata ptr %2, metadata !4130, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %3, metadata !4131, metadata !DIExpression()), !dbg !4205
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4207
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4132, metadata !DIExpression()), !dbg !4208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4209, !tbaa.struct !4009
  call void @llvm.dbg.value(metadata ptr %5, metadata !3042, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %1, metadata !3044, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %5, metadata !3042, metadata !DIExpression()), !dbg !4210
  store i32 10, ptr %5, align 8, !dbg !4212, !tbaa !2985
  %6 = icmp ne ptr %0, null, !dbg !4213
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4214
  br i1 %8, label %10, label %9, !dbg !4214

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4215
  unreachable, !dbg !4215

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4216
  store ptr %0, ptr %11, align 8, !dbg !4217, !tbaa !3056
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4218
  store ptr %1, ptr %12, align 8, !dbg !4219, !tbaa !3059
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4220
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4221
  ret ptr %13, !dbg !4222
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4227, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %1, metadata !4228, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 %2, metadata !4229, metadata !DIExpression()), !dbg !4230
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4231
  ret ptr %4, !dbg !4232
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4233 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4237, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i32 0, metadata !4227, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata ptr %0, metadata !4228, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %1, metadata !4229, metadata !DIExpression()), !dbg !4240
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4242
  ret ptr %3, !dbg !4243
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4244 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4248, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %1, metadata !4249, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i32 %0, metadata !4227, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %1, metadata !4228, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 -1, metadata !4229, metadata !DIExpression()), !dbg !4251
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4253
  ret ptr %3, !dbg !4254
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4259, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata i32 0, metadata !4248, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata ptr %0, metadata !4249, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i32 0, metadata !4227, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata ptr %0, metadata !4228, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i64 -1, metadata !4229, metadata !DIExpression()), !dbg !4263
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4265
  ret ptr %2, !dbg !4266
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4267 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4306, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr %1, metadata !4307, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr %2, metadata !4308, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr %3, metadata !4309, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr %4, metadata !4310, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %5, metadata !4311, metadata !DIExpression()), !dbg !4312
  %7 = icmp eq ptr %1, null, !dbg !4313
  br i1 %7, label %10, label %8, !dbg !4315

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.99, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !4316
  br label %12, !dbg !4316

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.100, ptr noundef %2, ptr noundef %3) #38, !dbg !4317
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.3.102, i32 noundef 5) #38, !dbg !4318
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !4318
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !4319
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.5.104, i32 noundef 5) #38, !dbg !4320
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.105) #38, !dbg !4320
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !4321
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
  ], !dbg !4322

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.7.106, i32 noundef 5) #38, !dbg !4323
  %21 = load ptr, ptr %4, align 8, !dbg !4323, !tbaa !949
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !4323
  br label %147, !dbg !4325

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.8.107, i32 noundef 5) #38, !dbg !4326
  %25 = load ptr, ptr %4, align 8, !dbg !4326, !tbaa !949
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4326
  %27 = load ptr, ptr %26, align 8, !dbg !4326, !tbaa !949
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !4326
  br label %147, !dbg !4327

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.9.108, i32 noundef 5) #38, !dbg !4328
  %31 = load ptr, ptr %4, align 8, !dbg !4328, !tbaa !949
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4328
  %33 = load ptr, ptr %32, align 8, !dbg !4328, !tbaa !949
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4328
  %35 = load ptr, ptr %34, align 8, !dbg !4328, !tbaa !949
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !4328
  br label %147, !dbg !4329

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.10.109, i32 noundef 5) #38, !dbg !4330
  %39 = load ptr, ptr %4, align 8, !dbg !4330, !tbaa !949
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4330
  %41 = load ptr, ptr %40, align 8, !dbg !4330, !tbaa !949
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4330
  %43 = load ptr, ptr %42, align 8, !dbg !4330, !tbaa !949
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4330
  %45 = load ptr, ptr %44, align 8, !dbg !4330, !tbaa !949
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !4330
  br label %147, !dbg !4331

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.11.110, i32 noundef 5) #38, !dbg !4332
  %49 = load ptr, ptr %4, align 8, !dbg !4332, !tbaa !949
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4332
  %51 = load ptr, ptr %50, align 8, !dbg !4332, !tbaa !949
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4332
  %53 = load ptr, ptr %52, align 8, !dbg !4332, !tbaa !949
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4332
  %55 = load ptr, ptr %54, align 8, !dbg !4332, !tbaa !949
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4332
  %57 = load ptr, ptr %56, align 8, !dbg !4332, !tbaa !949
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !4332
  br label %147, !dbg !4333

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.12.111, i32 noundef 5) #38, !dbg !4334
  %61 = load ptr, ptr %4, align 8, !dbg !4334, !tbaa !949
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4334
  %63 = load ptr, ptr %62, align 8, !dbg !4334, !tbaa !949
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4334
  %65 = load ptr, ptr %64, align 8, !dbg !4334, !tbaa !949
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4334
  %67 = load ptr, ptr %66, align 8, !dbg !4334, !tbaa !949
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4334
  %69 = load ptr, ptr %68, align 8, !dbg !4334, !tbaa !949
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4334
  %71 = load ptr, ptr %70, align 8, !dbg !4334, !tbaa !949
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !4334
  br label %147, !dbg !4335

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.13.112, i32 noundef 5) #38, !dbg !4336
  %75 = load ptr, ptr %4, align 8, !dbg !4336, !tbaa !949
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4336
  %77 = load ptr, ptr %76, align 8, !dbg !4336, !tbaa !949
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4336
  %79 = load ptr, ptr %78, align 8, !dbg !4336, !tbaa !949
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4336
  %81 = load ptr, ptr %80, align 8, !dbg !4336, !tbaa !949
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4336
  %83 = load ptr, ptr %82, align 8, !dbg !4336, !tbaa !949
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4336
  %85 = load ptr, ptr %84, align 8, !dbg !4336, !tbaa !949
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4336
  %87 = load ptr, ptr %86, align 8, !dbg !4336, !tbaa !949
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !4336
  br label %147, !dbg !4337

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.14.113, i32 noundef 5) #38, !dbg !4338
  %91 = load ptr, ptr %4, align 8, !dbg !4338, !tbaa !949
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4338
  %93 = load ptr, ptr %92, align 8, !dbg !4338, !tbaa !949
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4338
  %95 = load ptr, ptr %94, align 8, !dbg !4338, !tbaa !949
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4338
  %97 = load ptr, ptr %96, align 8, !dbg !4338, !tbaa !949
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4338
  %99 = load ptr, ptr %98, align 8, !dbg !4338, !tbaa !949
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4338
  %101 = load ptr, ptr %100, align 8, !dbg !4338, !tbaa !949
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4338
  %103 = load ptr, ptr %102, align 8, !dbg !4338, !tbaa !949
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4338
  %105 = load ptr, ptr %104, align 8, !dbg !4338, !tbaa !949
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !4338
  br label %147, !dbg !4339

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.15.114, i32 noundef 5) #38, !dbg !4340
  %109 = load ptr, ptr %4, align 8, !dbg !4340, !tbaa !949
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4340
  %111 = load ptr, ptr %110, align 8, !dbg !4340, !tbaa !949
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4340
  %113 = load ptr, ptr %112, align 8, !dbg !4340, !tbaa !949
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4340
  %115 = load ptr, ptr %114, align 8, !dbg !4340, !tbaa !949
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4340
  %117 = load ptr, ptr %116, align 8, !dbg !4340, !tbaa !949
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4340
  %119 = load ptr, ptr %118, align 8, !dbg !4340, !tbaa !949
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4340
  %121 = load ptr, ptr %120, align 8, !dbg !4340, !tbaa !949
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4340
  %123 = load ptr, ptr %122, align 8, !dbg !4340, !tbaa !949
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4340
  %125 = load ptr, ptr %124, align 8, !dbg !4340, !tbaa !949
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !4340
  br label %147, !dbg !4341

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.16.115, i32 noundef 5) #38, !dbg !4342
  %129 = load ptr, ptr %4, align 8, !dbg !4342, !tbaa !949
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4342
  %131 = load ptr, ptr %130, align 8, !dbg !4342, !tbaa !949
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4342
  %133 = load ptr, ptr %132, align 8, !dbg !4342, !tbaa !949
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4342
  %135 = load ptr, ptr %134, align 8, !dbg !4342, !tbaa !949
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4342
  %137 = load ptr, ptr %136, align 8, !dbg !4342, !tbaa !949
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4342
  %139 = load ptr, ptr %138, align 8, !dbg !4342, !tbaa !949
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4342
  %141 = load ptr, ptr %140, align 8, !dbg !4342, !tbaa !949
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4342
  %143 = load ptr, ptr %142, align 8, !dbg !4342, !tbaa !949
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4342
  %145 = load ptr, ptr %144, align 8, !dbg !4342, !tbaa !949
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !4342
  br label %147, !dbg !4343

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4344
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4345 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4349, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata ptr %1, metadata !4350, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata ptr %2, metadata !4351, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata ptr %3, metadata !4352, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata ptr %4, metadata !4353, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 0, metadata !4354, metadata !DIExpression()), !dbg !4355
  br label %6, !dbg !4356

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4358
  call void @llvm.dbg.value(metadata i64 %7, metadata !4354, metadata !DIExpression()), !dbg !4355
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4359
  %9 = load ptr, ptr %8, align 8, !dbg !4359, !tbaa !949
  %10 = icmp eq ptr %9, null, !dbg !4361
  %11 = add i64 %7, 1, !dbg !4362
  call void @llvm.dbg.value(metadata i64 %11, metadata !4354, metadata !DIExpression()), !dbg !4355
  br i1 %10, label %12, label %6, !dbg !4361, !llvm.loop !4363

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4365
  ret void, !dbg !4366
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4367 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4379, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata ptr %1, metadata !4380, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata ptr %2, metadata !4381, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata ptr %3, metadata !4382, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata ptr %4, metadata !4383, metadata !DIExpression()), !dbg !4387
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4388
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4385, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i64 0, metadata !4384, metadata !DIExpression()), !dbg !4387
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4384, metadata !DIExpression()), !dbg !4387
  %10 = icmp ult i32 %9, 41, !dbg !4390
  br i1 %10, label %11, label %16, !dbg !4390

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4390
  %13 = zext i32 %9 to i64, !dbg !4390
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4390
  %15 = add nuw nsw i32 %9, 8, !dbg !4390
  store i32 %15, ptr %4, align 8, !dbg !4390
  br label %19, !dbg !4390

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4390
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4390
  store ptr %18, ptr %7, align 8, !dbg !4390
  br label %19, !dbg !4390

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4390
  %22 = load ptr, ptr %21, align 8, !dbg !4390
  store ptr %22, ptr %6, align 16, !dbg !4393, !tbaa !949
  %23 = icmp eq ptr %22, null, !dbg !4394
  br i1 %23, label %128, label %24, !dbg !4395

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4384, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i64 1, metadata !4384, metadata !DIExpression()), !dbg !4387
  %25 = icmp ult i32 %20, 41, !dbg !4390
  br i1 %25, label %29, label %26, !dbg !4390

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4390
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4390
  store ptr %28, ptr %7, align 8, !dbg !4390
  br label %34, !dbg !4390

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4390
  %31 = zext i32 %20 to i64, !dbg !4390
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4390
  %33 = add nuw nsw i32 %20, 8, !dbg !4390
  store i32 %33, ptr %4, align 8, !dbg !4390
  br label %34, !dbg !4390

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4390
  %37 = load ptr, ptr %36, align 8, !dbg !4390
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4396
  store ptr %37, ptr %38, align 8, !dbg !4393, !tbaa !949
  %39 = icmp eq ptr %37, null, !dbg !4394
  br i1 %39, label %128, label %40, !dbg !4395

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4384, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i64 2, metadata !4384, metadata !DIExpression()), !dbg !4387
  %41 = icmp ult i32 %35, 41, !dbg !4390
  br i1 %41, label %45, label %42, !dbg !4390

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4390
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4390
  store ptr %44, ptr %7, align 8, !dbg !4390
  br label %50, !dbg !4390

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4390
  %47 = zext i32 %35 to i64, !dbg !4390
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4390
  %49 = add nuw nsw i32 %35, 8, !dbg !4390
  store i32 %49, ptr %4, align 8, !dbg !4390
  br label %50, !dbg !4390

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4390
  %53 = load ptr, ptr %52, align 8, !dbg !4390
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4396
  store ptr %53, ptr %54, align 16, !dbg !4393, !tbaa !949
  %55 = icmp eq ptr %53, null, !dbg !4394
  br i1 %55, label %128, label %56, !dbg !4395

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4384, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i64 3, metadata !4384, metadata !DIExpression()), !dbg !4387
  %57 = icmp ult i32 %51, 41, !dbg !4390
  br i1 %57, label %61, label %58, !dbg !4390

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4390
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4390
  store ptr %60, ptr %7, align 8, !dbg !4390
  br label %66, !dbg !4390

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4390
  %63 = zext i32 %51 to i64, !dbg !4390
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4390
  %65 = add nuw nsw i32 %51, 8, !dbg !4390
  store i32 %65, ptr %4, align 8, !dbg !4390
  br label %66, !dbg !4390

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4390
  %69 = load ptr, ptr %68, align 8, !dbg !4390
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4396
  store ptr %69, ptr %70, align 8, !dbg !4393, !tbaa !949
  %71 = icmp eq ptr %69, null, !dbg !4394
  br i1 %71, label %128, label %72, !dbg !4395

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4384, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i64 4, metadata !4384, metadata !DIExpression()), !dbg !4387
  %73 = icmp ult i32 %67, 41, !dbg !4390
  br i1 %73, label %77, label %74, !dbg !4390

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4390
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4390
  store ptr %76, ptr %7, align 8, !dbg !4390
  br label %82, !dbg !4390

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4390
  %79 = zext i32 %67 to i64, !dbg !4390
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4390
  %81 = add nuw nsw i32 %67, 8, !dbg !4390
  store i32 %81, ptr %4, align 8, !dbg !4390
  br label %82, !dbg !4390

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4390
  %85 = load ptr, ptr %84, align 8, !dbg !4390
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4396
  store ptr %85, ptr %86, align 16, !dbg !4393, !tbaa !949
  %87 = icmp eq ptr %85, null, !dbg !4394
  br i1 %87, label %128, label %88, !dbg !4395

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4384, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i64 5, metadata !4384, metadata !DIExpression()), !dbg !4387
  %89 = icmp ult i32 %83, 41, !dbg !4390
  br i1 %89, label %93, label %90, !dbg !4390

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4390
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4390
  store ptr %92, ptr %7, align 8, !dbg !4390
  br label %98, !dbg !4390

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4390
  %95 = zext i32 %83 to i64, !dbg !4390
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4390
  %97 = add nuw nsw i32 %83, 8, !dbg !4390
  store i32 %97, ptr %4, align 8, !dbg !4390
  br label %98, !dbg !4390

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4390
  %100 = load ptr, ptr %99, align 8, !dbg !4390
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4396
  store ptr %100, ptr %101, align 8, !dbg !4393, !tbaa !949
  %102 = icmp eq ptr %100, null, !dbg !4394
  br i1 %102, label %128, label %103, !dbg !4395

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4384, metadata !DIExpression()), !dbg !4387
  %104 = load ptr, ptr %7, align 8, !dbg !4390
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4390
  store ptr %105, ptr %7, align 8, !dbg !4390
  %106 = load ptr, ptr %104, align 8, !dbg !4390
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4396
  store ptr %106, ptr %107, align 16, !dbg !4393, !tbaa !949
  %108 = icmp eq ptr %106, null, !dbg !4394
  br i1 %108, label %128, label %109, !dbg !4395

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4384, metadata !DIExpression()), !dbg !4387
  %110 = load ptr, ptr %7, align 8, !dbg !4390
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4390
  store ptr %111, ptr %7, align 8, !dbg !4390
  %112 = load ptr, ptr %110, align 8, !dbg !4390
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4396
  store ptr %112, ptr %113, align 8, !dbg !4393, !tbaa !949
  %114 = icmp eq ptr %112, null, !dbg !4394
  br i1 %114, label %128, label %115, !dbg !4395

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4384, metadata !DIExpression()), !dbg !4387
  %116 = load ptr, ptr %7, align 8, !dbg !4390
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4390
  store ptr %117, ptr %7, align 8, !dbg !4390
  %118 = load ptr, ptr %116, align 8, !dbg !4390
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4396
  store ptr %118, ptr %119, align 16, !dbg !4393, !tbaa !949
  %120 = icmp eq ptr %118, null, !dbg !4394
  br i1 %120, label %128, label %121, !dbg !4395

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4384, metadata !DIExpression()), !dbg !4387
  %122 = load ptr, ptr %7, align 8, !dbg !4390
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4390
  store ptr %123, ptr %7, align 8, !dbg !4390
  %124 = load ptr, ptr %122, align 8, !dbg !4390
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4396
  store ptr %124, ptr %125, align 8, !dbg !4393, !tbaa !949
  %126 = icmp eq ptr %124, null, !dbg !4394
  %127 = select i1 %126, i64 9, i64 10, !dbg !4395
  br label %128, !dbg !4395

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4397
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4398
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4399
  ret void, !dbg !4399
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4400 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4404, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %1, metadata !4405, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %2, metadata !4406, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %3, metadata !4407, metadata !DIExpression()), !dbg !4413
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4408, metadata !DIExpression()), !dbg !4415
  call void @llvm.va_start(ptr nonnull %5), !dbg !4416
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4417
  call void @llvm.va_end(ptr nonnull %5), !dbg !4418
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !4419
  ret void, !dbg !4419
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4420 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4421, !tbaa !949
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %1), !dbg !4421
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.17.120, i32 noundef 5) #38, !dbg !4422
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.121) #38, !dbg !4422
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.19.122, i32 noundef 5) #38, !dbg !4423
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.123, ptr noundef nonnull @.str.21.124) #38, !dbg !4423
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.22.125, i32 noundef 5) #38, !dbg !4424
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.126) #38, !dbg !4424
  ret void, !dbg !4425
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4426 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4431, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i64 %1, metadata !4432, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i64 %2, metadata !4433, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata ptr %0, metadata !4435, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %1, metadata !4438, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %2, metadata !4439, metadata !DIExpression()), !dbg !4440
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4442
  call void @llvm.dbg.value(metadata ptr %4, metadata !4443, metadata !DIExpression()), !dbg !4448
  %5 = icmp eq ptr %4, null, !dbg !4450
  br i1 %5, label %6, label %7, !dbg !4452

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4453
  unreachable, !dbg !4453

7:                                                ; preds = %3
  ret ptr %4, !dbg !4454
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4436 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4435, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %1, metadata !4438, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %2, metadata !4439, metadata !DIExpression()), !dbg !4455
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4456
  call void @llvm.dbg.value(metadata ptr %4, metadata !4443, metadata !DIExpression()), !dbg !4457
  %5 = icmp eq ptr %4, null, !dbg !4459
  br i1 %5, label %6, label %7, !dbg !4460

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4461
  unreachable, !dbg !4461

7:                                                ; preds = %3
  ret ptr %4, !dbg !4462
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4463 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4467, metadata !DIExpression()), !dbg !4468
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4469
  call void @llvm.dbg.value(metadata ptr %2, metadata !4443, metadata !DIExpression()), !dbg !4470
  %3 = icmp eq ptr %2, null, !dbg !4472
  br i1 %3, label %4, label %5, !dbg !4473

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4474
  unreachable, !dbg !4474

5:                                                ; preds = %1
  ret ptr %2, !dbg !4475
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4476 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4477 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 %0, metadata !4483, metadata !DIExpression()), !dbg !4487
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4489
  call void @llvm.dbg.value(metadata ptr %2, metadata !4443, metadata !DIExpression()), !dbg !4490
  %3 = icmp eq ptr %2, null, !dbg !4492
  br i1 %3, label %4, label %5, !dbg !4493

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4494
  unreachable, !dbg !4494

5:                                                ; preds = %1
  ret ptr %2, !dbg !4495
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4496 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4500, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %0, metadata !4467, metadata !DIExpression()), !dbg !4502
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4504
  call void @llvm.dbg.value(metadata ptr %2, metadata !4443, metadata !DIExpression()), !dbg !4505
  %3 = icmp eq ptr %2, null, !dbg !4507
  br i1 %3, label %4, label %5, !dbg !4508

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4509
  unreachable, !dbg !4509

5:                                                ; preds = %1
  ret ptr %2, !dbg !4510
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4511 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4515, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %1, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata ptr %0, metadata !4518, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 %1, metadata !4522, metadata !DIExpression()), !dbg !4523
  %3 = icmp eq i64 %1, 0, !dbg !4525
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4525
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4526
  call void @llvm.dbg.value(metadata ptr %5, metadata !4443, metadata !DIExpression()), !dbg !4527
  %6 = icmp eq ptr %5, null, !dbg !4529
  br i1 %6, label %7, label %8, !dbg !4530

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4531
  unreachable, !dbg !4531

8:                                                ; preds = %2
  ret ptr %5, !dbg !4532
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4533 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4534 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4538, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i64 %1, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata ptr %0, metadata !4541, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i64 %1, metadata !4544, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata ptr %0, metadata !4518, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 %1, metadata !4522, metadata !DIExpression()), !dbg !4547
  %3 = icmp eq i64 %1, 0, !dbg !4549
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4549
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4550
  call void @llvm.dbg.value(metadata ptr %5, metadata !4443, metadata !DIExpression()), !dbg !4551
  %6 = icmp eq ptr %5, null, !dbg !4553
  br i1 %6, label %7, label %8, !dbg !4554

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4555
  unreachable, !dbg !4555

8:                                                ; preds = %2
  ret ptr %5, !dbg !4556
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4557 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4561, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %1, metadata !4562, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %2, metadata !4563, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr %0, metadata !4565, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %1, metadata !4568, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %2, metadata !4569, metadata !DIExpression()), !dbg !4570
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4572
  call void @llvm.dbg.value(metadata ptr %4, metadata !4443, metadata !DIExpression()), !dbg !4573
  %5 = icmp eq ptr %4, null, !dbg !4575
  br i1 %5, label %6, label %7, !dbg !4576

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4577
  unreachable, !dbg !4577

7:                                                ; preds = %3
  ret ptr %4, !dbg !4578
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4579 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4583, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i64 %1, metadata !4584, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata ptr null, metadata !4435, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %0, metadata !4438, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %1, metadata !4439, metadata !DIExpression()), !dbg !4586
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4588
  call void @llvm.dbg.value(metadata ptr %3, metadata !4443, metadata !DIExpression()), !dbg !4589
  %4 = icmp eq ptr %3, null, !dbg !4591
  br i1 %4, label %5, label %6, !dbg !4592

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4593
  unreachable, !dbg !4593

6:                                                ; preds = %2
  ret ptr %3, !dbg !4594
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4595 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4599, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %1, metadata !4600, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata ptr null, metadata !4561, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i64 %0, metadata !4562, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i64 %1, metadata !4563, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata ptr null, metadata !4565, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %0, metadata !4568, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %1, metadata !4569, metadata !DIExpression()), !dbg !4604
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4606
  call void @llvm.dbg.value(metadata ptr %3, metadata !4443, metadata !DIExpression()), !dbg !4607
  %4 = icmp eq ptr %3, null, !dbg !4609
  br i1 %4, label %5, label %6, !dbg !4610

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4611
  unreachable, !dbg !4611

6:                                                ; preds = %2
  ret ptr %3, !dbg !4612
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4613 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4617, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata ptr %1, metadata !4618, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata ptr %0, metadata !870, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata ptr %1, metadata !871, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i64 1, metadata !872, metadata !DIExpression()), !dbg !4620
  %3 = load i64, ptr %1, align 8, !dbg !4622, !tbaa !3722
  call void @llvm.dbg.value(metadata i64 %3, metadata !873, metadata !DIExpression()), !dbg !4620
  %4 = icmp eq ptr %0, null, !dbg !4623
  br i1 %4, label %5, label %8, !dbg !4625

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4626
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4629
  br label %15, !dbg !4629

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4630
  %10 = add nuw i64 %9, 1, !dbg !4630
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4630
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4630
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4630
  call void @llvm.dbg.value(metadata i64 %13, metadata !873, metadata !DIExpression()), !dbg !4620
  br i1 %12, label %14, label %15, !dbg !4633

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4634
  unreachable, !dbg !4634

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4620
  call void @llvm.dbg.value(metadata i64 %16, metadata !873, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata ptr %0, metadata !4435, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i64 %16, metadata !4438, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i64 1, metadata !4439, metadata !DIExpression()), !dbg !4635
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4637
  call void @llvm.dbg.value(metadata ptr %17, metadata !4443, metadata !DIExpression()), !dbg !4638
  %18 = icmp eq ptr %17, null, !dbg !4640
  br i1 %18, label %19, label %20, !dbg !4641

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4642
  unreachable, !dbg !4642

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !870, metadata !DIExpression()), !dbg !4620
  store i64 %16, ptr %1, align 8, !dbg !4643, !tbaa !3722
  ret ptr %17, !dbg !4644
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !865 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !870, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata ptr %1, metadata !871, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i64 %2, metadata !872, metadata !DIExpression()), !dbg !4645
  %4 = load i64, ptr %1, align 8, !dbg !4646, !tbaa !3722
  call void @llvm.dbg.value(metadata i64 %4, metadata !873, metadata !DIExpression()), !dbg !4645
  %5 = icmp eq ptr %0, null, !dbg !4647
  br i1 %5, label %6, label %13, !dbg !4648

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4649
  br i1 %7, label %8, label %20, !dbg !4650

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %9, metadata !873, metadata !DIExpression()), !dbg !4645
  %10 = icmp ugt i64 %2, 128, !dbg !4653
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4654
  call void @llvm.dbg.value(metadata i64 %12, metadata !873, metadata !DIExpression()), !dbg !4645
  br label %20, !dbg !4655

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4656
  %15 = add nuw i64 %14, 1, !dbg !4656
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4656
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4656
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4656
  call void @llvm.dbg.value(metadata i64 %18, metadata !873, metadata !DIExpression()), !dbg !4645
  br i1 %17, label %19, label %20, !dbg !4657

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4658
  unreachable, !dbg !4658

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4645
  call void @llvm.dbg.value(metadata i64 %21, metadata !873, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata ptr %0, metadata !4435, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %21, metadata !4438, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %2, metadata !4439, metadata !DIExpression()), !dbg !4659
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4661
  call void @llvm.dbg.value(metadata ptr %22, metadata !4443, metadata !DIExpression()), !dbg !4662
  %23 = icmp eq ptr %22, null, !dbg !4664
  br i1 %23, label %24, label %25, !dbg !4665

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4666
  unreachable, !dbg !4666

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !870, metadata !DIExpression()), !dbg !4645
  store i64 %21, ptr %1, align 8, !dbg !4667, !tbaa !3722
  ret ptr %22, !dbg !4668
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !877 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !885, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata ptr %1, metadata !886, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i64 %2, metadata !887, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i64 %3, metadata !888, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i64 %4, metadata !889, metadata !DIExpression()), !dbg !4669
  %6 = load i64, ptr %1, align 8, !dbg !4670, !tbaa !3722
  call void @llvm.dbg.value(metadata i64 %6, metadata !890, metadata !DIExpression()), !dbg !4669
  %7 = ashr i64 %6, 1, !dbg !4671
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4671
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4671
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4671
  call void @llvm.dbg.value(metadata i64 %10, metadata !891, metadata !DIExpression()), !dbg !4669
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4673
  call void @llvm.dbg.value(metadata i64 %11, metadata !891, metadata !DIExpression()), !dbg !4669
  %12 = icmp sgt i64 %3, -1, !dbg !4674
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4676
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4676
  call void @llvm.dbg.value(metadata i64 %15, metadata !891, metadata !DIExpression()), !dbg !4669
  %16 = icmp slt i64 %4, 0, !dbg !4677
  br i1 %16, label %17, label %30, !dbg !4677

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4677
  br i1 %18, label %19, label %24, !dbg !4677

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4677
  %21 = udiv i64 9223372036854775807, %20, !dbg !4677
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4677
  br i1 %23, label %46, label %43, !dbg !4677

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4677
  br i1 %25, label %43, label %26, !dbg !4677

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4677
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4677
  %29 = icmp ult i64 %28, %15, !dbg !4677
  br i1 %29, label %46, label %43, !dbg !4677

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4677
  br i1 %31, label %43, label %32, !dbg !4677

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4677
  br i1 %33, label %34, label %40, !dbg !4677

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4677
  br i1 %35, label %43, label %36, !dbg !4677

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4677
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4677
  %39 = icmp ult i64 %38, %4, !dbg !4677
  br i1 %39, label %46, label %43, !dbg !4677

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4677
  br i1 %42, label %46, label %43, !dbg !4677

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !892, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4669
  %44 = mul i64 %15, %4, !dbg !4677
  call void @llvm.dbg.value(metadata i64 %44, metadata !892, metadata !DIExpression()), !dbg !4669
  %45 = icmp slt i64 %44, 128, !dbg !4677
  br i1 %45, label %46, label %51, !dbg !4677

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !893, metadata !DIExpression()), !dbg !4669
  %48 = sdiv i64 %47, %4, !dbg !4678
  call void @llvm.dbg.value(metadata i64 %48, metadata !891, metadata !DIExpression()), !dbg !4669
  %49 = srem i64 %47, %4, !dbg !4681
  %50 = sub nsw i64 %47, %49, !dbg !4682
  call void @llvm.dbg.value(metadata i64 %50, metadata !892, metadata !DIExpression()), !dbg !4669
  br label %51, !dbg !4683

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4669
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4669
  call void @llvm.dbg.value(metadata i64 %53, metadata !892, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i64 %52, metadata !891, metadata !DIExpression()), !dbg !4669
  %54 = icmp eq ptr %0, null, !dbg !4684
  br i1 %54, label %55, label %56, !dbg !4686

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4687, !tbaa !3722
  br label %56, !dbg !4688

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4689
  %58 = icmp slt i64 %57, %2, !dbg !4691
  br i1 %58, label %59, label %96, !dbg !4692

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4693
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4693
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4693
  call void @llvm.dbg.value(metadata i64 %62, metadata !891, metadata !DIExpression()), !dbg !4669
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4694
  br i1 %65, label %95, label %66, !dbg !4694

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4695

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4695
  br i1 %68, label %69, label %74, !dbg !4695

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4695
  %71 = udiv i64 9223372036854775807, %70, !dbg !4695
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4695
  br i1 %73, label %95, label %93, !dbg !4695

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4695
  br i1 %75, label %93, label %76, !dbg !4695

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4695
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4695
  %79 = icmp ult i64 %78, %62, !dbg !4695
  br i1 %79, label %95, label %93, !dbg !4695

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4695
  br i1 %81, label %93, label %82, !dbg !4695

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4695
  br i1 %83, label %84, label %90, !dbg !4695

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4695
  br i1 %85, label %93, label %86, !dbg !4695

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4695
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4695
  %89 = icmp ult i64 %88, %4, !dbg !4695
  br i1 %89, label %95, label %93, !dbg !4695

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4695
  br i1 %92, label %95, label %93, !dbg !4695

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !892, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4669
  %94 = mul i64 %62, %4, !dbg !4695
  call void @llvm.dbg.value(metadata i64 %94, metadata !892, metadata !DIExpression()), !dbg !4669
  br label %96, !dbg !4696

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #40, !dbg !4697
  unreachable, !dbg !4697

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4669
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4669
  call void @llvm.dbg.value(metadata i64 %98, metadata !892, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i64 %97, metadata !891, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata ptr %0, metadata !4515, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.value(metadata i64 %98, metadata !4516, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.value(metadata ptr %0, metadata !4518, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i64 %98, metadata !4522, metadata !DIExpression()), !dbg !4700
  %99 = icmp eq i64 %98, 0, !dbg !4702
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4702
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !4703
  call void @llvm.dbg.value(metadata ptr %101, metadata !4443, metadata !DIExpression()), !dbg !4704
  %102 = icmp eq ptr %101, null, !dbg !4706
  br i1 %102, label %103, label %104, !dbg !4707

103:                                              ; preds = %96
  tail call void @xalloc_die() #40, !dbg !4708
  unreachable, !dbg !4708

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !885, metadata !DIExpression()), !dbg !4669
  store i64 %97, ptr %1, align 8, !dbg !4709, !tbaa !3722
  ret ptr %101, !dbg !4710
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4711 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4713, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i64 %0, metadata !4715, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i64 1, metadata !4718, metadata !DIExpression()), !dbg !4719
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4721
  call void @llvm.dbg.value(metadata ptr %2, metadata !4443, metadata !DIExpression()), !dbg !4722
  %3 = icmp eq ptr %2, null, !dbg !4724
  br i1 %3, label %4, label %5, !dbg !4725

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4726
  unreachable, !dbg !4726

5:                                                ; preds = %1
  ret ptr %2, !dbg !4727
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4728 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4716 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4715, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %1, metadata !4718, metadata !DIExpression()), !dbg !4729
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4730
  call void @llvm.dbg.value(metadata ptr %3, metadata !4443, metadata !DIExpression()), !dbg !4731
  %4 = icmp eq ptr %3, null, !dbg !4733
  br i1 %4, label %5, label %6, !dbg !4734

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4735
  unreachable, !dbg !4735

6:                                                ; preds = %2
  ret ptr %3, !dbg !4736
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4737 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4739, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata i64 %0, metadata !4741, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 1, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 %0, metadata !4747, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 1, metadata !4750, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 %0, metadata !4747, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 1, metadata !4750, metadata !DIExpression()), !dbg !4751
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4753
  call void @llvm.dbg.value(metadata ptr %2, metadata !4443, metadata !DIExpression()), !dbg !4754
  %3 = icmp eq ptr %2, null, !dbg !4756
  br i1 %3, label %4, label %5, !dbg !4757

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4758
  unreachable, !dbg !4758

5:                                                ; preds = %1
  ret ptr %2, !dbg !4759
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4742 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4741, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %1, metadata !4744, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %0, metadata !4747, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 %1, metadata !4750, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 %0, metadata !4747, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 %1, metadata !4750, metadata !DIExpression()), !dbg !4761
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4763
  call void @llvm.dbg.value(metadata ptr %3, metadata !4443, metadata !DIExpression()), !dbg !4764
  %4 = icmp eq ptr %3, null, !dbg !4766
  br i1 %4, label %5, label %6, !dbg !4767

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4768
  unreachable, !dbg !4768

6:                                                ; preds = %2
  ret ptr %3, !dbg !4769
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4770 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4774, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.value(metadata i64 %1, metadata !4775, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.value(metadata i64 %1, metadata !4467, metadata !DIExpression()), !dbg !4777
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4779
  call void @llvm.dbg.value(metadata ptr %3, metadata !4443, metadata !DIExpression()), !dbg !4780
  %4 = icmp eq ptr %3, null, !dbg !4782
  br i1 %4, label %5, label %6, !dbg !4783

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4784
  unreachable, !dbg !4784

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4785, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata ptr %0, metadata !4791, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata i64 %1, metadata !4792, metadata !DIExpression()), !dbg !4793
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4795
  ret ptr %3, !dbg !4796
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4797 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4801, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i64 %1, metadata !4802, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i64 %1, metadata !4481, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %1, metadata !4483, metadata !DIExpression()), !dbg !4806
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4808
  call void @llvm.dbg.value(metadata ptr %3, metadata !4443, metadata !DIExpression()), !dbg !4809
  %4 = icmp eq ptr %3, null, !dbg !4811
  br i1 %4, label %5, label %6, !dbg !4812

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4813
  unreachable, !dbg !4813

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4785, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %0, metadata !4791, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %1, metadata !4792, metadata !DIExpression()), !dbg !4814
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4816
  ret ptr %3, !dbg !4817
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4818 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4822, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %1, metadata !4823, metadata !DIExpression()), !dbg !4825
  %3 = add nsw i64 %1, 1, !dbg !4826
  call void @llvm.dbg.value(metadata i64 %3, metadata !4481, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i64 %3, metadata !4483, metadata !DIExpression()), !dbg !4829
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4831
  call void @llvm.dbg.value(metadata ptr %4, metadata !4443, metadata !DIExpression()), !dbg !4832
  %5 = icmp eq ptr %4, null, !dbg !4834
  br i1 %5, label %6, label %7, !dbg !4835

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4836
  unreachable, !dbg !4836

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4824, metadata !DIExpression()), !dbg !4825
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4837
  store i8 0, ptr %8, align 1, !dbg !4838, !tbaa !1032
  call void @llvm.dbg.value(metadata ptr %4, metadata !4785, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata ptr %0, metadata !4791, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %1, metadata !4792, metadata !DIExpression()), !dbg !4839
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4841
  ret ptr %4, !dbg !4842
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4843 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4845, metadata !DIExpression()), !dbg !4846
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4847
  %3 = add i64 %2, 1, !dbg !4848
  call void @llvm.dbg.value(metadata ptr %0, metadata !4774, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %3, metadata !4775, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %3, metadata !4467, metadata !DIExpression()), !dbg !4851
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4853
  call void @llvm.dbg.value(metadata ptr %4, metadata !4443, metadata !DIExpression()), !dbg !4854
  %5 = icmp eq ptr %4, null, !dbg !4856
  br i1 %5, label %6, label %7, !dbg !4857

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4858
  unreachable, !dbg !4858

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4785, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata ptr %0, metadata !4791, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %3, metadata !4792, metadata !DIExpression()), !dbg !4859
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4861
  ret ptr %4, !dbg !4862
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4863 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4868, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %1, metadata !4865, metadata !DIExpression()), !dbg !4869
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.137, ptr noundef nonnull @.str.2.138, i32 noundef 5) #38, !dbg !4868
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.139, ptr noundef %2) #38, !dbg !4868
  %3 = icmp eq i32 %1, 0, !dbg !4868
  tail call void @llvm.assume(i1 %3), !dbg !4868
  tail call void @abort() #40, !dbg !4870
  unreachable, !dbg !4870
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4871 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4875, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i32 %1, metadata !4876, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i64 %2, metadata !4877, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i64 %3, metadata !4878, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata ptr %4, metadata !4879, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata ptr %5, metadata !4880, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i32 %6, metadata !4881, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i32 %7, metadata !4882, metadata !DIExpression()), !dbg !4892
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #38, !dbg !4893
  call void @llvm.dbg.value(metadata ptr %9, metadata !4883, metadata !DIExpression(DW_OP_deref)), !dbg !4892
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #38, !dbg !4894
  call void @llvm.dbg.value(metadata i32 %10, metadata !4885, metadata !DIExpression()), !dbg !4892
  %11 = icmp eq i32 %10, 4, !dbg !4895
  br i1 %11, label %40, label %12, !dbg !4897

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4898, !tbaa !3722
  call void @llvm.dbg.value(metadata i64 %13, metadata !4883, metadata !DIExpression()), !dbg !4892
  %14 = icmp ult i64 %13, %2, !dbg !4901
  br i1 %14, label %15, label %20, !dbg !4902

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !4884, metadata !DIExpression()), !dbg !4892
  %16 = and i32 %7, 4, !dbg !4903
  %17 = icmp eq i32 %16, 0, !dbg !4905
  %18 = select i1 %17, i32 75, i32 34, !dbg !4905
  call void @llvm.dbg.value(metadata i32 %18, metadata !4887, metadata !DIExpression()), !dbg !4892
  %19 = icmp eq i32 %10, 0, !dbg !4906
  call void @llvm.dbg.value(metadata i32 undef, metadata !4885, metadata !DIExpression()), !dbg !4892
  br i1 %19, label %33, label %27, !dbg !4908

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4909
  br i1 %21, label %22, label %27, !dbg !4911

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !4884, metadata !DIExpression()), !dbg !4892
  %23 = and i32 %7, 8, !dbg !4912
  %24 = icmp eq i32 %23, 0, !dbg !4914
  %25 = select i1 %24, i32 75, i32 34, !dbg !4914
  call void @llvm.dbg.value(metadata i32 %25, metadata !4887, metadata !DIExpression()), !dbg !4892
  %26 = icmp eq i32 %10, 0, !dbg !4915
  call void @llvm.dbg.value(metadata i32 undef, metadata !4885, metadata !DIExpression()), !dbg !4892
  br i1 %26, label %33, label %27, !dbg !4917

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !4884, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i32 %10, metadata !4885, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i32 %28, metadata !4887, metadata !DIExpression()), !dbg !4892
  %30 = icmp eq i32 %10, 1, !dbg !4918
  %31 = select i1 %30, i32 %28, i32 0, !dbg !4919
  call void @llvm.dbg.value(metadata i32 %31, metadata !4888, metadata !DIExpression()), !dbg !4892
  %32 = icmp eq i32 %10, 0, !dbg !4920
  br i1 %32, label %45, label %33, !dbg !4921

33:                                               ; preds = %22, %15, %27
  %34 = phi i32 [ %31, %27 ], [ %18, %15 ], [ %25, %22 ]
  %35 = phi i1 [ %30, %27 ], [ true, %15 ], [ true, %22 ]
  %36 = phi i64 [ %29, %27 ], [ %2, %15 ], [ %3, %22 ]
  %37 = and i32 %7, 2
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %38, %35, !dbg !4892
  call void @llvm.dbg.value(metadata i64 poison, metadata !4883, metadata !DIExpression()), !dbg !4892
  br i1 %39, label %45, label %40, !dbg !4922

40:                                               ; preds = %8, %33
  %41 = phi i32 [ %34, %33 ], [ 0, %8 ]
  %42 = icmp eq i32 %6, 0, !dbg !4923
  %43 = select i1 %42, i32 1, i32 %6, !dbg !4923
  %44 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !4923
  call void (i32, i32, ptr, ...) @error(i32 noundef %43, i32 noundef %41, ptr noundef nonnull @.str.142, ptr noundef nonnull %5, ptr noundef %44) #38, !dbg !4923
  unreachable, !dbg !4923

45:                                               ; preds = %33, %27
  %46 = phi i32 [ %34, %33 ], [ %31, %27 ]
  %47 = phi i64 [ %36, %33 ], [ %29, %27 ]
  %48 = tail call ptr @__errno_location() #41, !dbg !4924
  store i32 %46, ptr %48, align 4, !dbg !4925, !tbaa !1023
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #38, !dbg !4926
  ret i64 %47, !dbg !4927
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4928 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4932, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata i64 %1, metadata !4933, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata i64 %2, metadata !4934, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata ptr %3, metadata !4935, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata ptr %4, metadata !4936, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata i32 %5, metadata !4937, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.value(metadata ptr %0, metadata !4875, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 10, metadata !4876, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i64 %1, metadata !4877, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i64 %2, metadata !4878, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr %3, metadata !4879, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata ptr %4, metadata !4880, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 %5, metadata !4881, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 0, metadata !4882, metadata !DIExpression()), !dbg !4939
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #38, !dbg !4941
  call void @llvm.dbg.value(metadata ptr %7, metadata !4883, metadata !DIExpression(DW_OP_deref)), !dbg !4939
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #38, !dbg !4942
  call void @llvm.dbg.value(metadata i32 %8, metadata !4885, metadata !DIExpression()), !dbg !4939
  %9 = icmp eq i32 %8, 4, !dbg !4943
  br i1 %9, label %24, label %10, !dbg !4944

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !4945, !tbaa !3722
  call void @llvm.dbg.value(metadata i64 %11, metadata !4883, metadata !DIExpression()), !dbg !4939
  %12 = icmp ult i64 %11, %1, !dbg !4946
  br i1 %12, label %13, label %15, !dbg !4947

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !4884, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 75, metadata !4887, metadata !DIExpression()), !dbg !4939
  %14 = icmp eq i32 %8, 0, !dbg !4948
  call void @llvm.dbg.value(metadata i32 undef, metadata !4885, metadata !DIExpression()), !dbg !4939
  br i1 %14, label %24, label %19, !dbg !4949

15:                                               ; preds = %10
  %16 = icmp ugt i64 %11, %2, !dbg !4950
  br i1 %16, label %17, label %19, !dbg !4951

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !4884, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 75, metadata !4887, metadata !DIExpression()), !dbg !4939
  %18 = icmp eq i32 %8, 0, !dbg !4952
  call void @llvm.dbg.value(metadata i32 undef, metadata !4885, metadata !DIExpression()), !dbg !4939
  br i1 %18, label %24, label %19, !dbg !4953

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !4884, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 %8, metadata !4885, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 75, metadata !4887, metadata !DIExpression()), !dbg !4939
  %21 = icmp eq i32 %8, 1, !dbg !4954
  %22 = select i1 %21, i32 75, i32 0, !dbg !4955
  call void @llvm.dbg.value(metadata i32 %22, metadata !4888, metadata !DIExpression()), !dbg !4939
  %23 = icmp eq i32 %8, 0, !dbg !4956
  br i1 %23, label %29, label %24, !dbg !4957

24:                                               ; preds = %13, %17, %19, %6
  %25 = phi i32 [ 0, %6 ], [ %22, %19 ], [ 75, %13 ], [ 75, %17 ]
  %26 = icmp eq i32 %5, 0, !dbg !4958
  %27 = select i1 %26, i32 1, i32 %5, !dbg !4958
  %28 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !4958
  call void (i32, i32, ptr, ...) @error(i32 noundef %27, i32 noundef %25, ptr noundef nonnull @.str.142, ptr noundef nonnull %4, ptr noundef %28) #38, !dbg !4958
  unreachable, !dbg !4958

29:                                               ; preds = %19
  %30 = tail call ptr @__errno_location() #41, !dbg !4959
  store i32 %22, ptr %30, align 4, !dbg !4960, !tbaa !1023
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #38, !dbg !4961
  ret i64 %20, !dbg !4962
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4963 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4969, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata ptr %1, metadata !4970, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i32 %2, metadata !4971, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata ptr %3, metadata !4972, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata ptr %4, metadata !4973, metadata !DIExpression()), !dbg !4987
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #38, !dbg !4988
  %7 = icmp eq ptr %1, null, !dbg !4989
  call void @llvm.dbg.value(metadata ptr %20, metadata !4975, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata ptr %0, metadata !4976, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i8 poison, metadata !4979, metadata !DIExpression()), !dbg !4990
  %8 = tail call ptr @__ctype_b_loc() #41, !dbg !4987
  %9 = load ptr, ptr %8, align 8, !tbaa !949
  br label %10, !dbg !4991

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4990
  %12 = load i8, ptr %11, align 1, !dbg !4990, !tbaa !1032
  call void @llvm.dbg.value(metadata i8 %12, metadata !4979, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata ptr %11, metadata !4976, metadata !DIExpression()), !dbg !4990
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4992
  %15 = load i16, ptr %14, align 2, !dbg !4992, !tbaa !1064
  %16 = and i16 %15, 8192, !dbg !4992
  %17 = icmp eq i16 %16, 0, !dbg !4991
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4993
  call void @llvm.dbg.value(metadata ptr %18, metadata !4976, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i8 poison, metadata !4979, metadata !DIExpression()), !dbg !4990
  br i1 %17, label %19, label %10, !dbg !4991, !llvm.loop !4994

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4989
  %21 = icmp eq i8 %12, 45, !dbg !4996
  br i1 %21, label %22, label %23, !dbg !4998

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4999, !tbaa !949
  br label %387

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #41, !dbg !5001
  store i32 0, ptr %24, align 4, !dbg !5002, !tbaa !1023
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef %20, i32 noundef %2) #38, !dbg !5003
  call void @llvm.dbg.value(metadata i64 %25, metadata !4980, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i32 0, metadata !4981, metadata !DIExpression()), !dbg !4987
  %26 = load ptr, ptr %20, align 8, !dbg !5004, !tbaa !949
  %27 = icmp eq ptr %26, %0, !dbg !5006
  br i1 %27, label %28, label %37, !dbg !5007

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !5008
  br i1 %29, label %387, label %30, !dbg !5011

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !5012, !tbaa !1032
  %32 = icmp eq i8 %31, 0, !dbg !5012
  br i1 %32, label %387, label %33, !dbg !5013

33:                                               ; preds = %30
  %34 = sext i8 %31 to i32, !dbg !5012
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #39, !dbg !5014
  %36 = icmp eq ptr %35, null, !dbg !5014
  br i1 %36, label %387, label %44, !dbg !5015

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !5016, !tbaa !1023
  switch i32 %38, label %387 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !5018

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !4981, metadata !DIExpression()), !dbg !4987
  br label %40, !dbg !5019

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4987
  call void @llvm.dbg.value(metadata i32 %41, metadata !4981, metadata !DIExpression()), !dbg !4987
  %42 = icmp eq ptr %4, null, !dbg !5021
  br i1 %42, label %43, label %44, !dbg !5023

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !4980, metadata !DIExpression()), !dbg !4987
  store i64 %25, ptr %3, align 8, !dbg !5024, !tbaa !3722
  br label %387, !dbg !5026

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !5027, !tbaa !1032
  %48 = sext i8 %47 to i32, !dbg !5027
  %49 = icmp eq i8 %47, 0, !dbg !5028
  br i1 %49, label %384, label %50, !dbg !5029

50:                                               ; preds = %44
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %48) #39, !dbg !5030
  %52 = icmp eq ptr %51, null, !dbg !5030
  br i1 %52, label %53, label %55, !dbg !5032

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %25, metadata !4980, metadata !DIExpression()), !dbg !4987
  store i64 %46, ptr %3, align 8, !dbg !5033, !tbaa !3722
  %54 = or i32 %45, 2, !dbg !5035
  br label %387, !dbg !5036

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !4982, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i32 1, metadata !4985, metadata !DIExpression()), !dbg !5037
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
  ], !dbg !5038

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #39, !dbg !5039
  %58 = icmp eq ptr %57, null, !dbg !5039
  br i1 %58, label %69, label %59, !dbg !5042

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !5043
  %61 = load i8, ptr %60, align 1, !dbg !5043, !tbaa !1032
  %62 = sext i8 %61 to i32, !dbg !5043
  switch i32 %62, label %69 [
    i32 105, label %63
    i32 66, label %68
    i32 68, label %68
  ], !dbg !5044

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !5045
  %65 = load i8, ptr %64, align 1, !dbg !5045, !tbaa !1032
  %66 = icmp eq i8 %65, 66, !dbg !5048
  %67 = select i1 %66, i64 3, i64 1, !dbg !5049
  br label %69, !dbg !5049

68:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !4982, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i32 2, metadata !4985, metadata !DIExpression()), !dbg !5037
  br label %69, !dbg !5050

69:                                               ; preds = %63, %56, %59, %68, %55
  %70 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %68 ], [ 1024, %56 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %68 ], [ 1, %56 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4985, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i32 poison, metadata !4982, metadata !DIExpression()), !dbg !5037
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
  ], !dbg !5051

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5070
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5072
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !5072
  %75 = mul i64 %46, %70, !dbg !5072
  call void @llvm.dbg.value(metadata i64 %75, metadata !5069, metadata !DIExpression()), !dbg !5070
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !5070
  call void @llvm.dbg.value(metadata i1 %74, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i1 %74, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5070
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76), !dbg !5072
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !5072
  %79 = mul i64 %76, %70, !dbg !5072
  call void @llvm.dbg.value(metadata i64 %79, metadata !5069, metadata !DIExpression()), !dbg !5070
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !5070
  %81 = or i1 %74, %78, !dbg !5074
  call void @llvm.dbg.value(metadata i1 %81, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i1 %81, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5070
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80), !dbg !5072
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !5072
  %84 = mul i64 %80, %70, !dbg !5072
  call void @llvm.dbg.value(metadata i64 %84, metadata !5069, metadata !DIExpression()), !dbg !5070
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !5070
  %86 = or i1 %81, %83, !dbg !5074
  call void @llvm.dbg.value(metadata i1 %86, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i1 %86, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5070
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85), !dbg !5072
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !5072
  %89 = mul i64 %85, %70, !dbg !5072
  call void @llvm.dbg.value(metadata i64 %89, metadata !5069, metadata !DIExpression()), !dbg !5070
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !5070
  %91 = or i1 %86, %88, !dbg !5074
  call void @llvm.dbg.value(metadata i1 %91, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i1 %91, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5070
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90), !dbg !5072
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !5072
  %94 = mul i64 %90, %70, !dbg !5072
  call void @llvm.dbg.value(metadata i64 %94, metadata !5069, metadata !DIExpression()), !dbg !5070
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !5070
  %96 = or i1 %91, %93, !dbg !5074
  call void @llvm.dbg.value(metadata i1 %96, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i1 %96, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5070
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95), !dbg !5072
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !5072
  %99 = mul i64 %95, %70, !dbg !5072
  call void @llvm.dbg.value(metadata i64 %99, metadata !5069, metadata !DIExpression()), !dbg !5070
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !5070
  %101 = or i1 %96, %98, !dbg !5074
  call void @llvm.dbg.value(metadata i1 %101, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i1 %101, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5070
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100), !dbg !5072
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !5072
  %104 = mul i64 %100, %70, !dbg !5072
  call void @llvm.dbg.value(metadata i64 %104, metadata !5069, metadata !DIExpression()), !dbg !5070
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !5070
  %106 = or i1 %101, %103, !dbg !5074
  %107 = zext i1 %106 to i32, !dbg !5074
  call void @llvm.dbg.value(metadata i32 %107, metadata !5052, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5060
  br label %373, !dbg !5075

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 8, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5078
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5080
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !5080
  %111 = mul i64 %46, %70, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %111, metadata !5069, metadata !DIExpression()), !dbg !5078
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !5078
  call void @llvm.dbg.value(metadata i1 %110, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i1 %110, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5078
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112), !dbg !5080
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !5080
  %115 = mul i64 %112, %70, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %115, metadata !5069, metadata !DIExpression()), !dbg !5078
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !5078
  %117 = or i1 %110, %114, !dbg !5081
  call void @llvm.dbg.value(metadata i1 %117, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i1 %117, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5078
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116), !dbg !5080
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !5080
  %120 = mul i64 %116, %70, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %120, metadata !5069, metadata !DIExpression()), !dbg !5078
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !5078
  %122 = or i1 %117, %119, !dbg !5081
  call void @llvm.dbg.value(metadata i1 %122, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i1 %122, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5078
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121), !dbg !5080
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !5080
  %125 = mul i64 %121, %70, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %125, metadata !5069, metadata !DIExpression()), !dbg !5078
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !5078
  %127 = or i1 %122, %124, !dbg !5081
  call void @llvm.dbg.value(metadata i1 %127, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i1 %127, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5078
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126), !dbg !5080
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !5080
  %130 = mul i64 %126, %70, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %130, metadata !5069, metadata !DIExpression()), !dbg !5078
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !5078
  %132 = or i1 %127, %129, !dbg !5081
  call void @llvm.dbg.value(metadata i1 %132, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i1 %132, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5078
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131), !dbg !5080
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !5080
  %135 = mul i64 %131, %70, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %135, metadata !5069, metadata !DIExpression()), !dbg !5078
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !5078
  %137 = or i1 %132, %134, !dbg !5081
  call void @llvm.dbg.value(metadata i1 %137, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i1 %137, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5078
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136), !dbg !5080
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !5080
  %140 = mul i64 %136, %70, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %140, metadata !5069, metadata !DIExpression()), !dbg !5078
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !5078
  %142 = or i1 %137, %139, !dbg !5081
  call void @llvm.dbg.value(metadata i1 %142, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i1 %142, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5076
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5078
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141), !dbg !5080
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !5080
  %145 = mul i64 %141, %70, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %145, metadata !5069, metadata !DIExpression()), !dbg !5078
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !5078
  %147 = or i1 %142, %144, !dbg !5081
  %148 = zext i1 %147 to i32, !dbg !5081
  call void @llvm.dbg.value(metadata i32 %148, metadata !5052, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5076
  br label %373, !dbg !5075

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 9, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 8, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5084
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5086
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !5086
  %152 = mul i64 %46, %70, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %152, metadata !5069, metadata !DIExpression()), !dbg !5084
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !5084
  call void @llvm.dbg.value(metadata i1 %151, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 8, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i1 %151, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 8, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5084
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153), !dbg !5086
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !5086
  %156 = mul i64 %153, %70, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %156, metadata !5069, metadata !DIExpression()), !dbg !5084
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !5084
  %158 = or i1 %151, %155, !dbg !5087
  call void @llvm.dbg.value(metadata i1 %158, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i1 %158, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5084
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157), !dbg !5086
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !5086
  %161 = mul i64 %157, %70, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %161, metadata !5069, metadata !DIExpression()), !dbg !5084
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !5084
  %163 = or i1 %158, %160, !dbg !5087
  call void @llvm.dbg.value(metadata i1 %163, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i1 %163, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5084
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162), !dbg !5086
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !5086
  %166 = mul i64 %162, %70, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %166, metadata !5069, metadata !DIExpression()), !dbg !5084
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !5084
  %168 = or i1 %163, %165, !dbg !5087
  call void @llvm.dbg.value(metadata i1 %168, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i1 %168, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5084
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167), !dbg !5086
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !5086
  %171 = mul i64 %167, %70, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %171, metadata !5069, metadata !DIExpression()), !dbg !5084
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !5084
  %173 = or i1 %168, %170, !dbg !5087
  call void @llvm.dbg.value(metadata i1 %173, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i1 %173, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5084
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172), !dbg !5086
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !5086
  %176 = mul i64 %172, %70, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %176, metadata !5069, metadata !DIExpression()), !dbg !5084
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !5084
  %178 = or i1 %173, %175, !dbg !5087
  call void @llvm.dbg.value(metadata i1 %178, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i1 %178, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5084
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177), !dbg !5086
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !5086
  %181 = mul i64 %177, %70, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %181, metadata !5069, metadata !DIExpression()), !dbg !5084
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !5084
  %183 = or i1 %178, %180, !dbg !5087
  call void @llvm.dbg.value(metadata i1 %183, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i1 %183, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5084
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182), !dbg !5086
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !5086
  %186 = mul i64 %182, %70, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %186, metadata !5069, metadata !DIExpression()), !dbg !5084
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !5084
  %188 = or i1 %183, %185, !dbg !5087
  call void @llvm.dbg.value(metadata i1 %188, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i1 %188, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5082
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5084
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187), !dbg !5086
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !5086
  %191 = mul i64 %187, %70, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %191, metadata !5069, metadata !DIExpression()), !dbg !5084
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !5084
  %193 = or i1 %188, %190, !dbg !5087
  %194 = zext i1 %193 to i32, !dbg !5087
  call void @llvm.dbg.value(metadata i32 %194, metadata !5052, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5082
  br label %373, !dbg !5075

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 10, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 9, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5092
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !5092
  %198 = mul i64 %46, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %198, metadata !5069, metadata !DIExpression()), !dbg !5090
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !5090
  call void @llvm.dbg.value(metadata i1 %197, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 9, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i1 %197, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 9, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 8, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199), !dbg !5092
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !5092
  %202 = mul i64 %199, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %202, metadata !5069, metadata !DIExpression()), !dbg !5090
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !5090
  %204 = or i1 %197, %201, !dbg !5093
  call void @llvm.dbg.value(metadata i1 %204, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 8, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i1 %204, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 8, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203), !dbg !5092
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !5092
  %207 = mul i64 %203, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %207, metadata !5069, metadata !DIExpression()), !dbg !5090
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !5090
  %209 = or i1 %204, %206, !dbg !5093
  call void @llvm.dbg.value(metadata i1 %209, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i1 %209, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 7, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208), !dbg !5092
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !5092
  %212 = mul i64 %208, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %212, metadata !5069, metadata !DIExpression()), !dbg !5090
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !5090
  %214 = or i1 %209, %211, !dbg !5093
  call void @llvm.dbg.value(metadata i1 %214, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i1 %214, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213), !dbg !5092
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !5092
  %217 = mul i64 %213, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %217, metadata !5069, metadata !DIExpression()), !dbg !5090
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !5090
  %219 = or i1 %214, %216, !dbg !5093
  call void @llvm.dbg.value(metadata i1 %219, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i1 %219, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218), !dbg !5092
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !5092
  %222 = mul i64 %218, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %222, metadata !5069, metadata !DIExpression()), !dbg !5090
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !5090
  %224 = or i1 %219, %221, !dbg !5093
  call void @llvm.dbg.value(metadata i1 %224, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i1 %224, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223), !dbg !5092
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !5092
  %227 = mul i64 %223, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %227, metadata !5069, metadata !DIExpression()), !dbg !5090
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !5090
  %229 = or i1 %224, %226, !dbg !5093
  call void @llvm.dbg.value(metadata i1 %229, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i1 %229, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228), !dbg !5092
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !5092
  %232 = mul i64 %228, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %232, metadata !5069, metadata !DIExpression()), !dbg !5090
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !5090
  %234 = or i1 %229, %231, !dbg !5093
  call void @llvm.dbg.value(metadata i1 %234, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i1 %234, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233), !dbg !5092
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !5092
  %237 = mul i64 %233, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %237, metadata !5069, metadata !DIExpression()), !dbg !5090
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !5090
  %239 = or i1 %234, %236, !dbg !5093
  call void @llvm.dbg.value(metadata i1 %239, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i1 %239, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5088
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5090
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238), !dbg !5092
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !5092
  %242 = mul i64 %238, %70, !dbg !5092
  call void @llvm.dbg.value(metadata i64 %242, metadata !5069, metadata !DIExpression()), !dbg !5090
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !5090
  %244 = or i1 %239, %241, !dbg !5093
  %245 = zext i1 %244 to i32, !dbg !5093
  call void @llvm.dbg.value(metadata i32 %245, metadata !5052, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5088
  br label %373, !dbg !5075

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5096
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5098
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !5098
  %249 = mul i64 %46, %70, !dbg !5098
  call void @llvm.dbg.value(metadata i64 %249, metadata !5069, metadata !DIExpression()), !dbg !5096
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !5096
  call void @llvm.dbg.value(metadata i1 %248, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i1 %248, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5096
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250), !dbg !5098
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !5098
  %253 = mul i64 %250, %70, !dbg !5098
  call void @llvm.dbg.value(metadata i64 %253, metadata !5069, metadata !DIExpression()), !dbg !5096
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !5096
  %255 = or i1 %248, %252, !dbg !5099
  call void @llvm.dbg.value(metadata i1 %255, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i1 %255, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5096
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254), !dbg !5098
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !5098
  %258 = mul i64 %254, %70, !dbg !5098
  call void @llvm.dbg.value(metadata i64 %258, metadata !5069, metadata !DIExpression()), !dbg !5096
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !5096
  %260 = or i1 %255, %257, !dbg !5099
  call void @llvm.dbg.value(metadata i1 %260, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i1 %260, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5096
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259), !dbg !5098
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !5098
  %263 = mul i64 %259, %70, !dbg !5098
  call void @llvm.dbg.value(metadata i64 %263, metadata !5069, metadata !DIExpression()), !dbg !5096
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !5096
  %265 = or i1 %260, %262, !dbg !5099
  call void @llvm.dbg.value(metadata i1 %265, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i1 %265, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5094
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5096
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264), !dbg !5098
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !5098
  %268 = mul i64 %264, %70, !dbg !5098
  call void @llvm.dbg.value(metadata i64 %268, metadata !5069, metadata !DIExpression()), !dbg !5096
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !5096
  %270 = or i1 %265, %267, !dbg !5099
  %271 = zext i1 %270 to i32, !dbg !5099
  call void @llvm.dbg.value(metadata i32 %271, metadata !5052, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5094
  br label %373, !dbg !5075

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 6, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5102
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5104
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !5104
  %275 = mul i64 %46, %70, !dbg !5104
  call void @llvm.dbg.value(metadata i64 %275, metadata !5069, metadata !DIExpression()), !dbg !5102
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !5102
  call void @llvm.dbg.value(metadata i1 %274, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i1 %274, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 5, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5102
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276), !dbg !5104
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !5104
  %279 = mul i64 %276, %70, !dbg !5104
  call void @llvm.dbg.value(metadata i64 %279, metadata !5069, metadata !DIExpression()), !dbg !5102
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !5102
  %281 = or i1 %274, %278, !dbg !5105
  call void @llvm.dbg.value(metadata i1 %281, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i1 %281, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5102
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280), !dbg !5104
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !5104
  %284 = mul i64 %280, %70, !dbg !5104
  call void @llvm.dbg.value(metadata i64 %284, metadata !5069, metadata !DIExpression()), !dbg !5102
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !5102
  %286 = or i1 %281, %283, !dbg !5105
  call void @llvm.dbg.value(metadata i1 %286, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i1 %286, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5102
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285), !dbg !5104
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !5104
  %289 = mul i64 %285, %70, !dbg !5104
  call void @llvm.dbg.value(metadata i64 %289, metadata !5069, metadata !DIExpression()), !dbg !5102
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !5102
  %291 = or i1 %286, %288, !dbg !5105
  call void @llvm.dbg.value(metadata i1 %291, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i1 %291, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5102
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290), !dbg !5104
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !5104
  %294 = mul i64 %290, %70, !dbg !5104
  call void @llvm.dbg.value(metadata i64 %294, metadata !5069, metadata !DIExpression()), !dbg !5102
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !5102
  %296 = or i1 %291, %293, !dbg !5105
  call void @llvm.dbg.value(metadata i1 %296, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i1 %296, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5102
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295), !dbg !5104
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !5104
  %299 = mul i64 %295, %70, !dbg !5104
  call void @llvm.dbg.value(metadata i64 %299, metadata !5069, metadata !DIExpression()), !dbg !5102
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !5102
  %301 = or i1 %296, %298, !dbg !5105
  %302 = zext i1 %301 to i32, !dbg !5105
  call void @llvm.dbg.value(metadata i32 %302, metadata !5052, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5100
  br label %373, !dbg !5075

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.value(metadata i32 512, metadata !5068, metadata !DIExpression()), !dbg !5106
  %304 = icmp ugt i64 %46, 36028797018963967, !dbg !5108
  %305 = shl i64 %46, 9, !dbg !5108
  call void @llvm.dbg.value(metadata i64 %305, metadata !5069, metadata !DIExpression()), !dbg !5106
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !5106
  %307 = zext i1 %304 to i32, !dbg !5106
  call void @llvm.dbg.value(metadata i32 %307, metadata !4986, metadata !DIExpression()), !dbg !5037
  br label %373, !dbg !5109

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.value(metadata i32 1024, metadata !5068, metadata !DIExpression()), !dbg !5110
  %309 = icmp ugt i64 %46, 18014398509481983, !dbg !5112
  %310 = shl i64 %46, 10, !dbg !5112
  call void @llvm.dbg.value(metadata i64 %310, metadata !5069, metadata !DIExpression()), !dbg !5110
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !5110
  %312 = zext i1 %309 to i32, !dbg !5110
  call void @llvm.dbg.value(metadata i32 %312, metadata !4986, metadata !DIExpression()), !dbg !5037
  br label %373, !dbg !5113

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !5057, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 poison, metadata !5058, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5116
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5118
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !5118
  %316 = mul i64 %46, %70, !dbg !5118
  call void @llvm.dbg.value(metadata i64 %316, metadata !5069, metadata !DIExpression()), !dbg !5116
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !5116
  call void @llvm.dbg.value(metadata i1 %315, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i1 %315, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5116
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317), !dbg !5118
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !5118
  %320 = mul i64 %317, %70, !dbg !5118
  call void @llvm.dbg.value(metadata i64 %320, metadata !5069, metadata !DIExpression()), !dbg !5116
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !5116
  %322 = or i1 %315, %319, !dbg !5119
  call void @llvm.dbg.value(metadata i1 %322, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i1 %322, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5116
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321), !dbg !5118
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !5118
  %325 = mul i64 %321, %70, !dbg !5118
  call void @llvm.dbg.value(metadata i64 %325, metadata !5069, metadata !DIExpression()), !dbg !5116
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !5116
  %327 = or i1 %322, %324, !dbg !5119
  %328 = zext i1 %327 to i32, !dbg !5119
  call void @llvm.dbg.value(metadata i32 %328, metadata !5052, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5114
  br label %373, !dbg !5075

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !5057, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 poison, metadata !5058, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5120
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5122
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !5122
  %332 = mul i64 %46, %70, !dbg !5122
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !5124
  %334 = zext i1 %331 to i32, !dbg !5124
  call void @llvm.dbg.value(metadata i32 poison, metadata !5052, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 poison, metadata !5059, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata ptr poison, metadata !5063, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.value(metadata i64 poison, metadata !5069, metadata !DIExpression()), !dbg !5124
  br label %373, !dbg !5075

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !5057, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i32 poison, metadata !5058, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5125
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5127
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5129
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !5129
  %338 = mul i64 %46, %70, !dbg !5129
  call void @llvm.dbg.value(metadata i64 %338, metadata !5069, metadata !DIExpression()), !dbg !5127
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !5127
  call void @llvm.dbg.value(metadata i1 %337, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5125
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5125
  call void @llvm.dbg.value(metadata i1 %337, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5125
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5127
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339), !dbg !5129
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !5129
  %342 = mul i64 %339, %70, !dbg !5129
  call void @llvm.dbg.value(metadata i64 %342, metadata !5069, metadata !DIExpression()), !dbg !5127
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !5127
  %344 = or i1 %337, %341, !dbg !5130
  %345 = zext i1 %344 to i32, !dbg !5130
  call void @llvm.dbg.value(metadata i32 %345, metadata !5052, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5125
  br label %373, !dbg !5075

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !5057, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 poison, metadata !5058, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i32 0, metadata !5052, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 4, metadata !5059, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5133
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !5135
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !5135
  %349 = mul i64 %46, %70, !dbg !5135
  call void @llvm.dbg.value(metadata i64 %349, metadata !5069, metadata !DIExpression()), !dbg !5133
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !5133
  call void @llvm.dbg.value(metadata i1 %348, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i1 %348, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i32 3, metadata !5059, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5133
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350), !dbg !5135
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !5135
  %353 = mul i64 %350, %70, !dbg !5135
  call void @llvm.dbg.value(metadata i64 %353, metadata !5069, metadata !DIExpression()), !dbg !5133
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !5133
  %355 = or i1 %348, %352, !dbg !5136
  call void @llvm.dbg.value(metadata i1 %355, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i1 %355, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i32 2, metadata !5059, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5133
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354), !dbg !5135
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !5135
  %358 = mul i64 %354, %70, !dbg !5135
  call void @llvm.dbg.value(metadata i64 %358, metadata !5069, metadata !DIExpression()), !dbg !5133
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !5133
  %360 = or i1 %355, %357, !dbg !5136
  call void @llvm.dbg.value(metadata i1 %360, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i1 %360, metadata !5052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata i32 1, metadata !5059, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata i32 poison, metadata !5068, metadata !DIExpression()), !dbg !5133
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359), !dbg !5135
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !5135
  %363 = mul i64 %359, %70, !dbg !5135
  call void @llvm.dbg.value(metadata i64 %363, metadata !5069, metadata !DIExpression()), !dbg !5133
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !5133
  %365 = or i1 %360, %362, !dbg !5136
  %366 = zext i1 %365 to i32, !dbg !5136
  call void @llvm.dbg.value(metadata i32 %366, metadata !5052, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5131
  br label %373, !dbg !5075

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !5063, metadata !DIExpression()), !dbg !5137
  call void @llvm.dbg.value(metadata i32 2, metadata !5068, metadata !DIExpression()), !dbg !5137
  %368 = shl i64 %46, 1, !dbg !5139
  call void @llvm.dbg.value(metadata i64 %368, metadata !5069, metadata !DIExpression()), !dbg !5137
  %369 = icmp sgt i64 %46, -1, !dbg !5137
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !5137
  %371 = lshr i64 %46, 63, !dbg !5137
  %372 = trunc i64 %371 to i32, !dbg !5137
  call void @llvm.dbg.value(metadata i32 %372, metadata !4986, metadata !DIExpression()), !dbg !5037
  br label %373, !dbg !5140

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %46, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !4987
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !5141
  call void @llvm.dbg.value(metadata i32 %375, metadata !4986, metadata !DIExpression()), !dbg !5037
  %376 = or i32 %375, %45, !dbg !5075
  call void @llvm.dbg.value(metadata i32 %376, metadata !4981, metadata !DIExpression()), !dbg !4987
  %377 = getelementptr inbounds i8, ptr %26, i64 %71, !dbg !5142
  store ptr %377, ptr %20, align 8, !dbg !5142, !tbaa !949
  %378 = load i8, ptr %377, align 1, !dbg !5143, !tbaa !1032
  %379 = icmp eq i8 %378, 0, !dbg !5143
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !5145
  call void @llvm.dbg.value(metadata i32 %381, metadata !4981, metadata !DIExpression()), !dbg !4987
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %25, metadata !4980, metadata !DIExpression()), !dbg !4987
  store i64 %46, ptr %3, align 8, !dbg !5146, !tbaa !3722
  %383 = or i32 %45, 2, !dbg !5147
  call void @llvm.dbg.value(metadata i32 %45, metadata !4981, metadata !DIExpression()), !dbg !4987
  br label %387

384:                                              ; preds = %373, %44
  %385 = phi i64 [ %46, %44 ], [ %374, %373 ], !dbg !5148
  %386 = phi i32 [ %45, %44 ], [ %381, %373 ], !dbg !5149
  call void @llvm.dbg.value(metadata i32 %386, metadata !4981, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i64 %385, metadata !4980, metadata !DIExpression()), !dbg !4987
  store i64 %385, ptr %3, align 8, !dbg !5150, !tbaa !3722
  br label %387, !dbg !5151

387:                                              ; preds = %43, %53, %384, %33, %30, %28, %37, %382, %22
  %388 = phi i32 [ 4, %22 ], [ %386, %384 ], [ %383, %382 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4987
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #38, !dbg !5152
  ret i32 %388, !dbg !5152
}

; Function Attrs: nounwind
declare !dbg !5153 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !5158 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !5196, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata ptr %1, metadata !5197, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i32 0, metadata !5198, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i32 0, metadata !5199, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i8 0, metadata !5200, metadata !DIExpression()), !dbg !5220
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5201, metadata !DIExpression()), !dbg !5222
  call void @llvm.dbg.value(metadata ptr %1, metadata !5205, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.value(metadata ptr %3, metadata !5207, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.value(metadata i32 0, metadata !5198, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i32 0, metadata !5199, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i8 0, metadata !5200, metadata !DIExpression()), !dbg !5220
  %4 = load i8, ptr %1, align 1, !dbg !5224, !tbaa !1032
  %5 = icmp eq i8 %4, 0, !dbg !5225
  br i1 %5, label %6, label %7, !dbg !5226

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !5207, metadata !DIExpression()), !dbg !5223
  store i8 0, ptr %3, align 16, !dbg !5227, !tbaa !1032
  br label %74, !dbg !5228

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !5198, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i32 %11, metadata !5199, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata ptr %13, metadata !5205, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.value(metadata i8 %14, metadata !5200, metadata !DIExpression()), !dbg !5220
  %15 = sext i8 %8 to i32, !dbg !5224
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !5229

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !5198, metadata !DIExpression()), !dbg !5220
  %17 = icmp slt i64 %12, 80, !dbg !5230
  br i1 %17, label %18, label %47, !dbg !5233

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !5234
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !5207, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5223
  store i8 %8, ptr %9, align 1, !dbg !5235, !tbaa !1032
  br label %47, !dbg !5236

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !5198, metadata !DIExpression()), !dbg !5220
  %21 = or i32 %11, 576, !dbg !5237
  call void @llvm.dbg.value(metadata i32 %21, metadata !5199, metadata !DIExpression()), !dbg !5220
  %22 = icmp slt i64 %12, 80, !dbg !5238
  br i1 %22, label %23, label %47, !dbg !5240

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !5241
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !5207, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5223
  store i8 %8, ptr %9, align 1, !dbg !5242, !tbaa !1032
  br label %47, !dbg !5243

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !5198, metadata !DIExpression()), !dbg !5220
  %26 = or i32 %11, 1088, !dbg !5244
  call void @llvm.dbg.value(metadata i32 %26, metadata !5199, metadata !DIExpression()), !dbg !5220
  %27 = icmp slt i64 %12, 80, !dbg !5245
  br i1 %27, label %28, label %47, !dbg !5247

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !5248
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5207, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5223
  store i8 %8, ptr %9, align 1, !dbg !5249, !tbaa !1032
  br label %47, !dbg !5250

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !5199, metadata !DIExpression()), !dbg !5220
  %31 = icmp slt i64 %12, 80, !dbg !5251
  br i1 %31, label %32, label %47, !dbg !5253

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !5254
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5207, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5223
  store i8 %8, ptr %9, align 1, !dbg !5255, !tbaa !1032
  br label %47, !dbg !5256

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !5198, metadata !DIExpression()), !dbg !5220
  %35 = icmp slt i64 %12, 80, !dbg !5257
  br i1 %35, label %36, label %47, !dbg !5259

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !5260
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !5207, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5223
  store i8 %8, ptr %9, align 1, !dbg !5261, !tbaa !1032
  br label %47, !dbg !5262

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !5263
  call void @llvm.dbg.value(metadata i32 %39, metadata !5199, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i8 1, metadata !5200, metadata !DIExpression()), !dbg !5220
  br label %47, !dbg !5264

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !5265
  call void @llvm.dbg.value(metadata i32 %41, metadata !5199, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i8 1, metadata !5200, metadata !DIExpression()), !dbg !5220
  br label %47, !dbg !5266

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #39, !dbg !5267
  call void @llvm.dbg.value(metadata i64 %43, metadata !5208, metadata !DIExpression()), !dbg !5268
  %44 = sub nsw i64 80, %12, !dbg !5269
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !5271
  call void @llvm.dbg.value(metadata i64 %45, metadata !5208, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.value(metadata ptr %9, metadata !5272, metadata !DIExpression()), !dbg !5277
  call void @llvm.dbg.value(metadata ptr %13, metadata !5275, metadata !DIExpression()), !dbg !5277
  call void @llvm.dbg.value(metadata i64 %45, metadata !5276, metadata !DIExpression()), !dbg !5277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #38, !dbg !5279
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !5280
  call void @llvm.dbg.value(metadata ptr %46, metadata !5207, metadata !DIExpression()), !dbg !5223
  br label %56, !dbg !5281

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !5220
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !5220
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !5220
  call void @llvm.dbg.value(metadata i32 %51, metadata !5198, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i32 %50, metadata !5199, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !5207, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5223
  call void @llvm.dbg.value(metadata i8 %48, metadata !5200, metadata !DIExpression()), !dbg !5220
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !5282
  call void @llvm.dbg.value(metadata ptr %52, metadata !5205, metadata !DIExpression()), !dbg !5223
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !5220
  call void @llvm.dbg.value(metadata ptr %53, metadata !5207, metadata !DIExpression()), !dbg !5223
  %54 = load i8, ptr %52, align 1, !dbg !5224, !tbaa !1032
  %55 = icmp eq i8 %54, 0, !dbg !5225
  br i1 %55, label %56, label %7, !dbg !5226, !llvm.loop !5283

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !5223
  call void @llvm.dbg.value(metadata ptr %60, metadata !5207, metadata !DIExpression()), !dbg !5223
  store i8 0, ptr %60, align 1, !dbg !5227, !tbaa !1032
  %61 = and i8 %57, 1, !dbg !5285
  %62 = icmp eq i8 %61, 0, !dbg !5285
  br i1 %62, label %74, label %63, !dbg !5228

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !5286
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #38, !dbg !5287
  call void @llvm.dbg.value(metadata i32 %65, metadata !5213, metadata !DIExpression()), !dbg !5288
  %66 = icmp slt i32 %65, 0, !dbg !5289
  br i1 %66, label %76, label %67, !dbg !5291

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #38, !dbg !5292
  call void @llvm.dbg.value(metadata ptr %68, metadata !5216, metadata !DIExpression()), !dbg !5288
  %69 = icmp eq ptr %68, null, !dbg !5293
  br i1 %69, label %70, label %76, !dbg !5294

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #41, !dbg !5295
  %72 = load i32, ptr %71, align 4, !dbg !5295, !tbaa !1023
  call void @llvm.dbg.value(metadata i32 %72, metadata !5217, metadata !DIExpression()), !dbg !5296
  %73 = tail call i32 @close(i32 noundef %65) #38, !dbg !5297
  store i32 %72, ptr %71, align 4, !dbg !5298, !tbaa !1023
  br label %76, !dbg !5299

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !5300, metadata !DIExpression()), !dbg !5304
  call void @llvm.dbg.value(metadata ptr %1, metadata !5303, metadata !DIExpression()), !dbg !5304
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5306
  br label %76, !dbg !5307

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !5220
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !5308
  ret ptr %77, !dbg !5308
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5309 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !5312 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5315 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5316 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5319 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5357, metadata !DIExpression()), !dbg !5362
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !5363
  call void @llvm.dbg.value(metadata i1 poison, metadata !5358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5362
  call void @llvm.dbg.value(metadata ptr %0, metadata !5364, metadata !DIExpression()), !dbg !5367
  %3 = load i32, ptr %0, align 8, !dbg !5369, !tbaa !1662
  %4 = and i32 %3, 32, !dbg !5370
  %5 = icmp eq i32 %4, 0, !dbg !5370
  call void @llvm.dbg.value(metadata i1 %5, metadata !5360, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5362
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !5371
  %7 = icmp eq i32 %6, 0, !dbg !5372
  call void @llvm.dbg.value(metadata i1 %7, metadata !5361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5362
  br i1 %5, label %8, label %18, !dbg !5373

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5375
  call void @llvm.dbg.value(metadata i1 %9, metadata !5358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5362
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5376
  %11 = xor i1 %7, true, !dbg !5376
  %12 = sext i1 %11 to i32, !dbg !5376
  br i1 %10, label %21, label %13, !dbg !5376

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !5377
  %15 = load i32, ptr %14, align 4, !dbg !5377, !tbaa !1023
  %16 = icmp ne i32 %15, 9, !dbg !5378
  %17 = sext i1 %16 to i32, !dbg !5379
  br label %21, !dbg !5379

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5380

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !5382
  store i32 0, ptr %20, align 4, !dbg !5384, !tbaa !1023
  br label %21, !dbg !5382

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5362
  ret i32 %22, !dbg !5385
}

; Function Attrs: nounwind
declare !dbg !5386 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5389 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5394, metadata !DIExpression()), !dbg !5399
  call void @llvm.dbg.value(metadata ptr %1, metadata !5395, metadata !DIExpression()), !dbg !5399
  call void @llvm.dbg.value(metadata i64 %2, metadata !5396, metadata !DIExpression()), !dbg !5399
  call void @llvm.dbg.value(metadata ptr %3, metadata !5397, metadata !DIExpression()), !dbg !5399
  %5 = icmp eq ptr %1, null, !dbg !5400
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5402
  %7 = select i1 %5, ptr @.str.153, ptr %1, !dbg !5402
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5402
  call void @llvm.dbg.value(metadata i64 %8, metadata !5396, metadata !DIExpression()), !dbg !5399
  call void @llvm.dbg.value(metadata ptr %7, metadata !5395, metadata !DIExpression()), !dbg !5399
  call void @llvm.dbg.value(metadata ptr %6, metadata !5394, metadata !DIExpression()), !dbg !5399
  %9 = icmp eq ptr %3, null, !dbg !5403
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5405
  call void @llvm.dbg.value(metadata ptr %10, metadata !5397, metadata !DIExpression()), !dbg !5399
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !5406
  call void @llvm.dbg.value(metadata i64 %11, metadata !5398, metadata !DIExpression()), !dbg !5399
  %12 = icmp ult i64 %11, -3, !dbg !5407
  br i1 %12, label %13, label %17, !dbg !5409

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !5410
  %15 = icmp eq i32 %14, 0, !dbg !5410
  br i1 %15, label %16, label %29, !dbg !5411

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5412, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.value(metadata ptr %10, metadata !5419, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.value(metadata i32 0, metadata !5422, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.value(metadata i64 8, metadata !5423, metadata !DIExpression()), !dbg !5424
  store i64 0, ptr %10, align 1, !dbg !5426
  br label %29, !dbg !5427

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5428
  br i1 %18, label %19, label %20, !dbg !5430

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !5431
  unreachable, !dbg !5431

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5432

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !5434
  br i1 %23, label %29, label %24, !dbg !5435

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5436
  br i1 %25, label %29, label %26, !dbg !5439

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5440, !tbaa !1032
  %28 = zext i8 %27 to i32, !dbg !5441
  store i32 %28, ptr %6, align 4, !dbg !5442, !tbaa !1023
  br label %29, !dbg !5443

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5399
  ret i64 %30, !dbg !5444
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5445 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !5451 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5453, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.value(metadata i64 %1, metadata !5454, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.value(metadata i64 %2, metadata !5455, metadata !DIExpression()), !dbg !5457
  %4 = icmp eq i64 %2, 0, !dbg !5458
  br i1 %4, label %8, label %5, !dbg !5458

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5458
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5458
  br i1 %7, label %13, label %8, !dbg !5458

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5457
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5457
  %9 = mul i64 %2, %1, !dbg !5458
  call void @llvm.dbg.value(metadata i64 %9, metadata !5456, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.value(metadata ptr %0, metadata !5460, metadata !DIExpression()), !dbg !5464
  call void @llvm.dbg.value(metadata i64 %9, metadata !5463, metadata !DIExpression()), !dbg !5464
  %10 = icmp eq i64 %9, 0, !dbg !5466
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5466
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !5467
  br label %15, !dbg !5468

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5457
  %14 = tail call ptr @__errno_location() #41, !dbg !5469
  store i32 12, ptr %14, align 4, !dbg !5471, !tbaa !1023
  br label %15, !dbg !5472

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5457
  ret ptr %16, !dbg !5473
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5474 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5476, metadata !DIExpression()), !dbg !5481
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !5482
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5477, metadata !DIExpression()), !dbg !5483
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !5484
  %4 = icmp eq i32 %3, 0, !dbg !5484
  br i1 %4, label %5, label %12, !dbg !5486

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5487, metadata !DIExpression()), !dbg !5491
  %6 = load i16, ptr %2, align 16, !dbg !5494
  %7 = icmp eq i16 %6, 67, !dbg !5494
  br i1 %7, label %11, label %8, !dbg !5495

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5487, metadata !DIExpression()), !dbg !5496
  call void @llvm.dbg.value(metadata ptr @.str.1.158, metadata !5490, metadata !DIExpression()), !dbg !5496
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.158, i64 6), !dbg !5498
  %10 = icmp eq i32 %9, 0, !dbg !5499
  br i1 %10, label %11, label %12, !dbg !5500

11:                                               ; preds = %8, %5
  br label %12, !dbg !5501

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5481
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !5502
  ret i1 %13, !dbg !5502
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5507, metadata !DIExpression()), !dbg !5510
  call void @llvm.dbg.value(metadata ptr %1, metadata !5508, metadata !DIExpression()), !dbg !5510
  call void @llvm.dbg.value(metadata i64 %2, metadata !5509, metadata !DIExpression()), !dbg !5510
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !5511
  ret i32 %4, !dbg !5512
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5513 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5517, metadata !DIExpression()), !dbg !5518
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !5519
  ret ptr %2, !dbg !5520
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5521 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5523, metadata !DIExpression()), !dbg !5525
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5526
  call void @llvm.dbg.value(metadata ptr %2, metadata !5524, metadata !DIExpression()), !dbg !5525
  ret ptr %2, !dbg !5527
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5528 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5530, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.value(metadata ptr %1, metadata !5531, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.value(metadata i64 %2, metadata !5532, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.value(metadata i32 %0, metadata !5523, metadata !DIExpression()), !dbg !5538
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5540
  call void @llvm.dbg.value(metadata ptr %4, metadata !5524, metadata !DIExpression()), !dbg !5538
  call void @llvm.dbg.value(metadata ptr %4, metadata !5533, metadata !DIExpression()), !dbg !5537
  %5 = icmp eq ptr %4, null, !dbg !5541
  br i1 %5, label %6, label %9, !dbg !5542

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5543
  br i1 %7, label %19, label %8, !dbg !5546

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5547, !tbaa !1032
  br label %19, !dbg !5548

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5549
  call void @llvm.dbg.value(metadata i64 %10, metadata !5534, metadata !DIExpression()), !dbg !5550
  %11 = icmp ult i64 %10, %2, !dbg !5551
  br i1 %11, label %12, label %14, !dbg !5553

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5554
  call void @llvm.dbg.value(metadata ptr %1, metadata !5556, metadata !DIExpression()), !dbg !5561
  call void @llvm.dbg.value(metadata ptr %4, metadata !5559, metadata !DIExpression()), !dbg !5561
  call void @llvm.dbg.value(metadata i64 %13, metadata !5560, metadata !DIExpression()), !dbg !5561
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !5563
  br label %19, !dbg !5564

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5565
  br i1 %15, label %19, label %16, !dbg !5568

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5569
  call void @llvm.dbg.value(metadata ptr %1, metadata !5556, metadata !DIExpression()), !dbg !5571
  call void @llvm.dbg.value(metadata ptr %4, metadata !5559, metadata !DIExpression()), !dbg !5571
  call void @llvm.dbg.value(metadata i64 %17, metadata !5560, metadata !DIExpression()), !dbg !5571
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5573
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5574
  store i8 0, ptr %18, align 1, !dbg !5575, !tbaa !1032
  br label %19, !dbg !5576

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5577
  ret i32 %20, !dbg !5578
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
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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

!llvm.dbg.cu = !{!89, !513, !517, !532, !806, !841, !844, !846, !849, !851, !853, !581, !595, !643, !855, !798, !861, !895, !897, !909, !916, !918, !825, !920, !923, !927, !929}
!llvm.ident = !{!931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931, !931}
!llvm.module.flags = !{!932, !933, !934, !935, !936, !937}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/fmt.c", directory: "/src", checksumkind: CSK_MD5, checksum: "eb1a2f812a56a354a71cb409e5b398fe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 42)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 129)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 71)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 128)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 65)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 83)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 79)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 73)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 66)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 50)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 62)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 341, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 342, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 10)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 342, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 24)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 21)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "long_options", scope: !89, file: !2, line: 317, type: !493, isLocal: true, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !143, globals: !156, splitDebugInlining: false, nameTableKind: None)
!90 = !{!91, !97, !105, !119, !134}
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 337, baseType: !93, size: 32, elements: !94)
!92 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!96 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !98, line: 24, baseType: !99, size: 32, elements: !100)
!98 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!102 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!103 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!104 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !106, line: 42, baseType: !99, size: 32, elements: !107)
!106 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!108 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!109 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!110 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!111 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!112 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!113 = !DIEnumerator(name: "c_quoting_style", value: 5)
!114 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!115 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!116 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!117 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!118 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !120, line: 46, baseType: !99, size: 32, elements: !121)
!120 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!122 = !DIEnumerator(name: "_ISupper", value: 256)
!123 = !DIEnumerator(name: "_ISlower", value: 512)
!124 = !DIEnumerator(name: "_ISalpha", value: 1024)
!125 = !DIEnumerator(name: "_ISdigit", value: 2048)
!126 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!127 = !DIEnumerator(name: "_ISspace", value: 8192)
!128 = !DIEnumerator(name: "_ISprint", value: 16384)
!129 = !DIEnumerator(name: "_ISgraph", value: 32768)
!130 = !DIEnumerator(name: "_ISblank", value: 1)
!131 = !DIEnumerator(name: "_IScntrl", value: 2)
!132 = !DIEnumerator(name: "_ISpunct", value: 4)
!133 = !DIEnumerator(name: "_ISalnum", value: 8)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 44, baseType: !99, size: 32, elements: !136)
!135 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!136 = !{!137, !138, !139, !140, !141, !142}
!137 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!138 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!139 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!140 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!141 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!142 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!143 = !{!144, !145, !93, !146, !147, !150, !152, !153, !154}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 46, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!149 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!152 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "COST", file: !2, line: 63, baseType: !155)
!155 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!156 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !77, !82, !157, !162, !167, !169, !171, !176, !178, !183, !188, !193, !196, !198, !200, !202, !204, !209, !214, !295, !300, !302, !304, !309, !311, !313, !315, !317, !319, !321, !323, !328, !333, !335, !337, !339, !341, !343, !345, !350, !355, !360, !365, !367, !369, !371, !373, !378, !383, !385, !387, !389, !391, !396, !401, !406, !408, !413, !415, !417, !419, !421, !423, !87, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !462, !464, !483, !485, !487, !489, !491}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 365, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 752, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 94)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 400, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 14)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 400, type: !164, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !164, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 430, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 2)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !173, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 27)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 3)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 23)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "crown", scope: !89, file: !2, line: 173, type: !195, isLocal: true, isDefinition: true)
!195 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "tagged", scope: !89, file: !2, line: 176, type: !195, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "split", scope: !89, file: !2, line: 179, type: !195, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "uniform", scope: !89, file: !2, line: 182, type: !195, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "goal_width", scope: !89, file: !2, line: 203, type: !93, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !92, line: 729, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 56)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !92, line: 736, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 75)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !216, file: !92, line: 575, type: !93, isLocal: true, isDefinition: true)
!216 = distinct !DISubprogram(name: "oputs_", scope: !92, file: !92, line: 573, type: !217, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !219)
!217 = !DISubroutineType(cc: DW_CC_nocall, types: !218)
!218 = !{null, !150, !150}
!219 = !{!220, !221, !222, !225, !226, !227, !228, !232, !233, !234, !235, !237, !289, !290, !291, !293, !294}
!220 = !DILocalVariable(name: "program", arg: 1, scope: !216, file: !92, line: 573, type: !150)
!221 = !DILocalVariable(name: "option", arg: 2, scope: !216, file: !92, line: 573, type: !150)
!222 = !DILocalVariable(name: "term", scope: !223, file: !92, line: 585, type: !150)
!223 = distinct !DILexicalBlock(scope: !224, file: !92, line: 582, column: 5)
!224 = distinct !DILexicalBlock(scope: !216, file: !92, line: 581, column: 7)
!225 = !DILocalVariable(name: "double_space", scope: !216, file: !92, line: 594, type: !195)
!226 = !DILocalVariable(name: "first_word", scope: !216, file: !92, line: 595, type: !150)
!227 = !DILocalVariable(name: "option_text", scope: !216, file: !92, line: 596, type: !150)
!228 = !DILocalVariable(name: "s", scope: !229, file: !92, line: 608, type: !150)
!229 = distinct !DILexicalBlock(scope: !230, file: !92, line: 605, column: 5)
!230 = distinct !DILexicalBlock(scope: !231, file: !92, line: 604, column: 12)
!231 = distinct !DILexicalBlock(scope: !216, file: !92, line: 597, column: 7)
!232 = !DILocalVariable(name: "spaces", scope: !229, file: !92, line: 609, type: !147)
!233 = !DILocalVariable(name: "anchor_len", scope: !216, file: !92, line: 620, type: !147)
!234 = !DILocalVariable(name: "desc_text", scope: !216, file: !92, line: 625, type: !150)
!235 = !DILocalVariable(name: "__ptr", scope: !236, file: !92, line: 644, type: !150)
!236 = distinct !DILexicalBlock(scope: !216, file: !92, line: 644, column: 3)
!237 = !DILocalVariable(name: "__stream", scope: !236, file: !92, line: 644, type: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !243)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !259, !261, !262, !263, !266, !267, !269, !270, !273, !275, !278, !281, !282, !283, !284, !285}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !241, file: !242, line: 51, baseType: !93, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !241, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !241, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !241, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !241, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !241, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !241, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !241, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !241, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !241, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !241, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !241, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !241, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !242, line: 36, flags: DIFlagFwdDecl)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !241, file: !242, line: 70, baseType: !260, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !241, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !241, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !241, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !265, line: 152, baseType: !155)
!265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !241, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !241, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!268 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !241, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !241, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !242, line: 43, baseType: null)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !241, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !265, line: 153, baseType: !155)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !241, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !242, line: 37, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !241, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !242, line: 38, flags: DIFlagFwdDecl)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !241, file: !242, line: 93, baseType: !260, size: 64, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !241, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !241, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !241, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !241, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 20)
!289 = !DILocalVariable(name: "__cnt", scope: !236, file: !92, line: 644, type: !147)
!290 = !DILocalVariable(name: "url_program", scope: !216, file: !92, line: 648, type: !150)
!291 = !DILocalVariable(name: "__ptr", scope: !292, file: !92, line: 686, type: !150)
!292 = distinct !DILexicalBlock(scope: !216, file: !92, line: 686, column: 3)
!293 = !DILocalVariable(name: "__stream", scope: !292, file: !92, line: 686, type: !238)
!294 = !DILocalVariable(name: "__cnt", scope: !292, file: !92, line: 686, type: !147)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !92, line: 585, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 5)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !92, line: 586, type: !297, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !92, line: 595, type: !19, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !92, line: 620, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 6)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !92, line: 648, type: !173, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !92, line: 648, type: !297, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !92, line: 649, type: !19, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !92, line: 649, type: !185, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !92, line: 650, type: !297, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !92, line: 651, type: !306, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !92, line: 651, type: !306, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !92, line: 652, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 7)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !92, line: 653, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 8)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !92, line: 654, type: !74, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !92, line: 655, type: !74, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !92, line: 656, type: !74, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !92, line: 657, type: !74, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !92, line: 663, type: !325, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !92, line: 664, type: !74, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !92, line: 669, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 17)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !92, line: 669, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 40)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !92, line: 676, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 15)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !92, line: 676, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 61)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !92, line: 679, type: !185, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !92, line: 683, type: !297, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !92, line: 688, type: !297, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !92, line: 691, type: !330, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !92, line: 839, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 16)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !92, line: 840, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 22)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !92, line: 841, type: !357, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !92, line: 862, type: !19, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !92, line: 868, type: !24, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !92, line: 875, type: !180, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !92, line: 877, type: !393, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 51)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !92, line: 877, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 12)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 13)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !2, line: 320, type: !325, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !2, line: 321, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 11)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !347, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !2, line: 323, type: !375, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !306, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !297, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !297, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !2, line: 327, type: !330, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "max_width", scope: !89, file: !2, line: 189, type: !93, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "prefix_lead_space", scope: !89, file: !2, line: 197, type: !93, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "prefix", scope: !89, file: !2, line: 185, type: !150, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "prefix_full_length", scope: !89, file: !2, line: 194, type: !93, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "prefix_length", scope: !89, file: !2, line: 200, type: !93, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !410, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !347, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "tabs", scope: !89, file: !2, line: 231, type: !195, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "other_indent", scope: !89, file: !2, line: 240, type: !93, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "in_column", scope: !89, file: !2, line: 208, type: !93, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "next_prefix_indent", scope: !89, file: !2, line: 254, type: !93, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "next_char", scope: !89, file: !2, line: 250, type: !93, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "last_line_length", scope: !89, file: !2, line: 259, type: !93, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "out_column", scope: !89, file: !2, line: 211, type: !93, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "prefix_indent", scope: !89, file: !2, line: 234, type: !93, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "first_indent", scope: !89, file: !2, line: 237, type: !93, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "parabuf", scope: !89, file: !2, line: 215, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40000, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 5000)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "wptr", scope: !89, file: !2, line: 218, type: !144, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "unused_word_type", scope: !89, file: !2, line: 222, type: !466, isLocal: true, isDefinition: true)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 320000, elements: !481)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "WORD", file: !2, line: 128, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Word", file: !2, line: 130, size: 320, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !468, file: !2, line: 135, baseType: !150, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !468, file: !2, line: 136, baseType: !93, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !468, file: !2, line: 137, baseType: !93, size: 32, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "paren", scope: !468, file: !2, line: 138, baseType: !99, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !468, file: !2, line: 139, baseType: !99, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !468, file: !2, line: 140, baseType: !99, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !468, file: !2, line: 141, baseType: !99, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !468, file: !2, line: 145, baseType: !93, size: 32, offset: 160)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "best_cost", scope: !468, file: !2, line: 146, baseType: !154, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_break", scope: !468, file: !2, line: 147, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!481 = !{!482}
!482 = !DISubrange(count: 1000)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !92, line: 952, type: !398, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !2, line: 798, type: !306, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 800, type: !297, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 802, type: !19, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "word_limit", scope: !89, file: !2, line: 227, type: !480, isLocal: true, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 2560, elements: !75)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !496, line: 50, size: 256, elements: !497)
!496 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!497 = !{!498, !499, !500, !502}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !495, file: !496, line: 52, baseType: !150, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !495, file: !496, line: 55, baseType: !93, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !495, file: !496, line: 56, baseType: !501, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !495, file: !496, line: 57, baseType: !93, size: 32, offset: 192)
!503 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!504 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!505 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!506 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!507 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !510, line: 3, type: !357, isLocal: true, isDefinition: true)
!510 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "Version", scope: !513, file: !510, line: 3, type: !150, isLocal: false, isDefinition: true)
!513 = distinct !DICompileUnit(language: DW_LANG_C11, file: !510, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !514, splitDebugInlining: false, nameTableKind: None)
!514 = !{!508, !511}
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "file_name", scope: !517, file: !518, line: 45, type: !150, isLocal: true, isDefinition: true)
!517 = distinct !DICompileUnit(language: DW_LANG_C11, file: !518, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !519, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!519 = !{!520, !522, !524, !526, !515, !528}
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !518, line: 121, type: !325, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !518, line: 121, type: !398, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !518, line: 123, type: !325, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !518, line: 126, type: !185, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !517, file: !518, line: 55, type: !195, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !532, file: !533, line: 66, type: !576, isLocal: false, isDefinition: true)
!532 = distinct !DICompileUnit(language: DW_LANG_C11, file: !533, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !534, globals: !535, splitDebugInlining: false, nameTableKind: None)
!533 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!534 = !{!145, !152}
!535 = !{!536, !538, !558, !560, !562, !564, !530, !566, !568, !570, !572, !574}
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !533, line: 272, type: !297, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "old_file_name", scope: !540, file: !533, line: 304, type: !150, isLocal: true, isDefinition: true)
!540 = distinct !DISubprogram(name: "verror_at_line", scope: !533, file: !533, line: 298, type: !541, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !551)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !93, !93, !150, !99, !150, !543}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !545)
!545 = !{!546, !548, !549, !550}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !544, file: !547, baseType: !99, size: 32)
!547 = !DIFile(filename: "lib/error.c", directory: "/src")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !544, file: !547, baseType: !99, size: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !544, file: !547, baseType: !145, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !544, file: !547, baseType: !145, size: 64, offset: 128)
!551 = !{!552, !553, !554, !555, !556, !557}
!552 = !DILocalVariable(name: "status", arg: 1, scope: !540, file: !533, line: 298, type: !93)
!553 = !DILocalVariable(name: "errnum", arg: 2, scope: !540, file: !533, line: 298, type: !93)
!554 = !DILocalVariable(name: "file_name", arg: 3, scope: !540, file: !533, line: 298, type: !150)
!555 = !DILocalVariable(name: "line_number", arg: 4, scope: !540, file: !533, line: 298, type: !99)
!556 = !DILocalVariable(name: "message", arg: 5, scope: !540, file: !533, line: 298, type: !150)
!557 = !DILocalVariable(name: "args", arg: 6, scope: !540, file: !533, line: 298, type: !543)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "old_line_number", scope: !540, file: !533, line: 305, type: !99, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !533, line: 338, type: !19, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !533, line: 346, type: !330, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !533, line: 346, type: !173, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "error_message_count", scope: !532, file: !533, line: 69, type: !99, isLocal: false, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !532, file: !533, line: 295, type: !93, isLocal: false, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !533, line: 208, type: !325, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !533, line: 208, type: !84, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !533, line: 214, type: !297, isLocal: true, isDefinition: true)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null}
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "program_name", scope: !581, file: !582, line: 31, type: !150, isLocal: false, isDefinition: true)
!581 = distinct !DICompileUnit(language: DW_LANG_C11, file: !582, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !583, globals: !584, splitDebugInlining: false, nameTableKind: None)
!582 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!583 = !{!144}
!584 = !{!579, !585, !587}
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !582, line: 46, type: !330, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !582, line: 49, type: !19, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "utf07FF", scope: !591, file: !592, line: 46, type: !619, isLocal: true, isDefinition: true)
!591 = distinct !DISubprogram(name: "proper_name_lite", scope: !592, file: !592, line: 38, type: !593, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !597)
!592 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!593 = !DISubroutineType(types: !594)
!594 = !{!150, !150, !150}
!595 = distinct !DICompileUnit(language: DW_LANG_C11, file: !592, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !596, splitDebugInlining: false, nameTableKind: None)
!596 = !{!589}
!597 = !{!598, !599, !600, !601, !606}
!598 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !591, file: !592, line: 38, type: !150)
!599 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !591, file: !592, line: 38, type: !150)
!600 = !DILocalVariable(name: "translation", scope: !591, file: !592, line: 40, type: !150)
!601 = !DILocalVariable(name: "w", scope: !591, file: !592, line: 47, type: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !603, line: 37, baseType: !604)
!603 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !265, line: 57, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !265, line: 42, baseType: !99)
!606 = !DILocalVariable(name: "mbs", scope: !591, file: !592, line: 48, type: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !608, line: 6, baseType: !609)
!608 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !610, line: 21, baseType: !611)
!610 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 13, size: 64, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !611, file: !610, line: 15, baseType: !93, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !611, file: !610, line: 20, baseType: !615, size: 32, offset: 32)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !610, line: 16, size: 32, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !615, file: !610, line: 18, baseType: !99, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !615, file: !610, line: 19, baseType: !19, size: 32)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 16, elements: !174)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !622, line: 78, type: !330, isLocal: true, isDefinition: true)
!622 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !622, line: 79, type: !306, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !622, line: 80, type: !403, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !622, line: 81, type: !403, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !622, line: 82, type: !286, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !622, line: 83, type: !173, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !622, line: 84, type: !330, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !622, line: 85, type: !325, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !622, line: 86, type: !325, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !622, line: 87, type: !330, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !643, file: !622, line: 76, type: !715, isLocal: false, isDefinition: true)
!643 = distinct !DICompileUnit(language: DW_LANG_C11, file: !622, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !644, retainedTypes: !650, globals: !651, splitDebugInlining: false, nameTableKind: None)
!644 = !{!105, !645, !119}
!645 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !106, line: 254, baseType: !99, size: 32, elements: !646)
!646 = !{!647, !648, !649}
!647 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!648 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!649 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!650 = !{!93, !146, !147}
!651 = !{!620, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !652, !656, !666, !668, !673, !675, !677, !679, !681, !704, !711, !713}
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !643, file: !622, line: 92, type: !654, isLocal: false, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 320, elements: !75)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !643, file: !622, line: 1040, type: !658, isLocal: false, isDefinition: true)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !622, line: 56, size: 448, elements: !659)
!659 = !{!660, !661, !662, !664, !665}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !658, file: !622, line: 59, baseType: !105, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !622, line: 62, baseType: !93, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !658, file: !622, line: 66, baseType: !663, size: 256, offset: 64)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !331)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !658, file: !622, line: 69, baseType: !150, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !658, file: !622, line: 72, baseType: !150, size: 64, offset: 384)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !643, file: !622, line: 107, type: !658, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(name: "slot0", scope: !643, file: !622, line: 831, type: !670, isLocal: true, isDefinition: true)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 256)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !622, line: 321, type: !173, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !622, line: 357, type: !173, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !622, line: 358, type: !173, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !622, line: 199, type: !325, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "quote", scope: !683, file: !622, line: 228, type: !702, isLocal: true, isDefinition: true)
!683 = distinct !DISubprogram(name: "gettext_quote", scope: !622, file: !622, line: 197, type: !684, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!150, !150, !105}
!686 = !{!687, !688, !689, !690, !691}
!687 = !DILocalVariable(name: "msgid", arg: 1, scope: !683, file: !622, line: 197, type: !150)
!688 = !DILocalVariable(name: "s", arg: 2, scope: !683, file: !622, line: 197, type: !105)
!689 = !DILocalVariable(name: "translation", scope: !683, file: !622, line: 199, type: !150)
!690 = !DILocalVariable(name: "w", scope: !683, file: !622, line: 229, type: !602)
!691 = !DILocalVariable(name: "mbs", scope: !683, file: !622, line: 230, type: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !608, line: 6, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !610, line: 21, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 13, size: 64, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !694, file: !610, line: 15, baseType: !93, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !694, file: !610, line: 20, baseType: !698, size: 32, offset: 32)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !610, line: 16, size: 32, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !698, file: !610, line: 18, baseType: !99, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !698, file: !610, line: 19, baseType: !19, size: 32)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !703)
!703 = !{!175, !21}
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(name: "slotvec", scope: !643, file: !622, line: 834, type: !706, isLocal: true, isDefinition: true)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !622, line: 823, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !707, file: !622, line: 825, baseType: !147, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !707, file: !622, line: 826, baseType: !144, size: 64, offset: 64)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "nslots", scope: !643, file: !622, line: 832, type: !93, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "slotvec0", scope: !643, file: !622, line: 833, type: !707, isLocal: true, isDefinition: true)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 704, elements: !411)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !719, line: 67, type: !398, isLocal: true, isDefinition: true)
!719 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !719, line: 69, type: !325, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !719, line: 83, type: !325, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !719, line: 83, type: !19, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !719, line: 85, type: !173, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !719, line: 88, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 171)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !719, line: 88, type: !735, isLocal: true, isDefinition: true)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 34)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !719, line: 105, type: !375, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !719, line: 109, type: !190, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !719, line: 113, type: !744, isLocal: true, isDefinition: true)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 28)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !719, line: 120, type: !749, isLocal: true, isDefinition: true)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 32)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !719, line: 127, type: !754, isLocal: true, isDefinition: true)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 36)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !719, line: 134, type: !352, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !719, line: 142, type: !761, isLocal: true, isDefinition: true)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 44)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !719, line: 150, type: !766, isLocal: true, isDefinition: true)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 48)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !719, line: 159, type: !771, isLocal: true, isDefinition: true)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 52)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !719, line: 170, type: !776, isLocal: true, isDefinition: true)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 60)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !719, line: 248, type: !286, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !719, line: 248, type: !380, isLocal: true, isDefinition: true)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !719, line: 254, type: !286, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !719, line: 254, type: !164, isLocal: true, isDefinition: true)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !719, line: 254, type: !352, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !719, line: 259, type: !3, isLocal: true, isDefinition: true)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !719, line: 259, type: !793, isLocal: true, isDefinition: true)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 29)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !798, file: !799, line: 26, type: !801, isLocal: false, isDefinition: true)
!798 = distinct !DICompileUnit(language: DW_LANG_C11, file: !799, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !800, splitDebugInlining: false, nameTableKind: None)
!799 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!800 = !{!796}
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 376, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 47)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "exit_failure", scope: !806, file: !807, line: 24, type: !809, isLocal: false, isDefinition: true)
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !808, splitDebugInlining: false, nameTableKind: None)
!807 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!808 = !{!804}
!809 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !93)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !812, line: 34, type: !185, isLocal: true, isDefinition: true)
!812 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !812, line: 34, type: !325, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !812, line: 34, type: !347, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !819, line: 80, type: !325, isLocal: true, isDefinition: true)
!819 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !822, line: 108, type: !69, isLocal: true, isDefinition: true)
!822 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(name: "internal_state", scope: !825, file: !822, line: 97, type: !828, isLocal: true, isDefinition: true)
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !826, globals: !827, splitDebugInlining: false, nameTableKind: None)
!826 = !{!145, !147, !152}
!827 = !{!820, !823}
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !608, line: 6, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !610, line: 21, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 13, size: 64, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !830, file: !610, line: 15, baseType: !93, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !830, file: !610, line: 20, baseType: !834, size: 32, offset: 32)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !610, line: 16, size: 32, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !834, file: !610, line: 18, baseType: !99, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !834, file: !610, line: 19, baseType: !19, size: 32)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !840, line: 35, type: !306, isLocal: true, isDefinition: true)
!840 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!841 = distinct !DICompileUnit(language: DW_LANG_C11, file: !842, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !843, splitDebugInlining: false, nameTableKind: None)
!842 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!843 = !{!134}
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !845, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!845 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !848, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!848 = !{!145}
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !850, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!850 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!851 = distinct !DICompileUnit(language: DW_LANG_C11, file: !852, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !848, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!853 = distinct !DICompileUnit(language: DW_LANG_C11, file: !854, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!854 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!855 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !856, retainedTypes: !848, globals: !860, splitDebugInlining: false, nameTableKind: None)
!856 = !{!857}
!857 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !719, line: 40, baseType: !99, size: 32, elements: !858)
!858 = !{!859}
!859 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!860 = !{!717, !720, !722, !724, !726, !728, !733, !738, !740, !742, !747, !752, !757, !759, !764, !769, !774, !779, !781, !783, !785, !787, !789, !791}
!861 = distinct !DICompileUnit(language: DW_LANG_C11, file: !862, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !863, retainedTypes: !894, splitDebugInlining: false, nameTableKind: None)
!862 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!863 = !{!864, !876}
!864 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !865, file: !862, line: 188, baseType: !99, size: 32, elements: !874)
!865 = distinct !DISubprogram(name: "x2nrealloc", scope: !862, file: !862, line: 176, type: !866, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !869)
!866 = !DISubroutineType(types: !867)
!867 = !{!145, !145, !868, !147}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!869 = !{!870, !871, !872, !873}
!870 = !DILocalVariable(name: "p", arg: 1, scope: !865, file: !862, line: 176, type: !145)
!871 = !DILocalVariable(name: "pn", arg: 2, scope: !865, file: !862, line: 176, type: !868)
!872 = !DILocalVariable(name: "s", arg: 3, scope: !865, file: !862, line: 176, type: !147)
!873 = !DILocalVariable(name: "n", scope: !865, file: !862, line: 178, type: !147)
!874 = !{!875}
!875 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!876 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !877, file: !862, line: 228, baseType: !99, size: 32, elements: !874)
!877 = distinct !DISubprogram(name: "xpalloc", scope: !862, file: !862, line: 223, type: !878, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !884)
!878 = !DISubroutineType(types: !879)
!879 = !{!145, !145, !880, !881, !883, !881}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !882, line: 130, baseType: !883)
!882 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !148, line: 35, baseType: !155)
!884 = !{!885, !886, !887, !888, !889, !890, !891, !892, !893}
!885 = !DILocalVariable(name: "pa", arg: 1, scope: !877, file: !862, line: 223, type: !145)
!886 = !DILocalVariable(name: "pn", arg: 2, scope: !877, file: !862, line: 223, type: !880)
!887 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !877, file: !862, line: 223, type: !881)
!888 = !DILocalVariable(name: "n_max", arg: 4, scope: !877, file: !862, line: 223, type: !883)
!889 = !DILocalVariable(name: "s", arg: 5, scope: !877, file: !862, line: 223, type: !881)
!890 = !DILocalVariable(name: "n0", scope: !877, file: !862, line: 230, type: !881)
!891 = !DILocalVariable(name: "n", scope: !877, file: !862, line: 237, type: !881)
!892 = !DILocalVariable(name: "nbytes", scope: !877, file: !862, line: 248, type: !881)
!893 = !DILocalVariable(name: "adjusted_nbytes", scope: !877, file: !862, line: 252, type: !881)
!894 = !{!144, !145, !195, !155, !149}
!895 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !896, splitDebugInlining: false, nameTableKind: None)
!896 = !{!810, !813, !815}
!897 = distinct !DICompileUnit(language: DW_LANG_C11, file: !898, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !899, globals: !908, splitDebugInlining: false, nameTableKind: None)
!898 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!899 = !{!900, !97}
!900 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !901, line: 30, baseType: !99, size: 32, elements: !902)
!901 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!902 = !{!903, !904, !905, !906, !907}
!903 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!904 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!905 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!906 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!907 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!908 = !{!817}
!909 = distinct !DICompileUnit(language: DW_LANG_C11, file: !910, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !911, retainedTypes: !912, splitDebugInlining: false, nameTableKind: None)
!910 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!911 = !{!900, !119}
!912 = !{!93, !146, !144, !195, !149, !913}
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !914, line: 102, baseType: !915)
!914 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !265, line: 73, baseType: !149)
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !917, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !848, splitDebugInlining: false, nameTableKind: None)
!917 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!922 = !{!195, !149, !145}
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !840, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !924, splitDebugInlining: false, nameTableKind: None)
!924 = !{!925, !838}
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(scope: null, file: !840, line: 35, type: !173, isLocal: true, isDefinition: true)
!927 = distinct !DICompileUnit(language: DW_LANG_C11, file: !928, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!929 = distinct !DICompileUnit(language: DW_LANG_C11, file: !930, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !848, splitDebugInlining: false, nameTableKind: None)
!930 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!931 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!932 = !{i32 7, !"Dwarf Version", i32 5}
!933 = !{i32 2, !"Debug Info Version", i32 3}
!934 = !{i32 1, !"wchar_size", i32 4}
!935 = !{i32 8, !"PIC Level", i32 2}
!936 = !{i32 7, !"PIE Level", i32 2}
!937 = !{i32 7, !"uwtable", i32 2}
!938 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 262, type: !939, scopeLine: 263, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !93}
!941 = !{!942}
!942 = !DILocalVariable(name: "status", arg: 1, scope: !938, file: !2, line: 262, type: !93)
!943 = !DILocation(line: 0, scope: !938)
!944 = !DILocation(line: 264, column: 14, scope: !945)
!945 = distinct !DILexicalBlock(scope: !938, file: !2, line: 264, column: 7)
!946 = !DILocation(line: 264, column: 7, scope: !938)
!947 = !DILocation(line: 265, column: 5, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !2, line: 265, column: 5)
!949 = !{!950, !950, i64 0}
!950 = !{!"any pointer", !951, i64 0}
!951 = !{!"omnipotent char", !952, i64 0}
!952 = !{!"Simple C/C++ TBAA"}
!953 = !DILocation(line: 268, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !945, file: !2, line: 267, column: 5)
!955 = !DILocation(line: 269, column: 7, scope: !954)
!956 = !DILocation(line: 729, column: 3, scope: !957, inlinedAt: !959)
!957 = distinct !DISubprogram(name: "emit_stdin_note", scope: !92, file: !92, line: 727, type: !577, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !958)
!958 = !{}
!959 = distinct !DILocation(line: 274, column: 7, scope: !954)
!960 = !DILocation(line: 736, column: 3, scope: !961, inlinedAt: !962)
!961 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !92, file: !92, line: 734, type: !577, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !958)
!962 = distinct !DILocation(line: 275, column: 7, scope: !954)
!963 = !DILocation(line: 277, column: 7, scope: !954)
!964 = !DILocation(line: 281, column: 7, scope: !954)
!965 = !DILocation(line: 286, column: 7, scope: !954)
!966 = !DILocation(line: 290, column: 7, scope: !954)
!967 = !DILocation(line: 294, column: 7, scope: !954)
!968 = !DILocation(line: 298, column: 7, scope: !954)
!969 = !DILocation(line: 304, column: 7, scope: !954)
!970 = !DILocation(line: 308, column: 7, scope: !954)
!971 = !DILocation(line: 309, column: 7, scope: !954)
!972 = !DILocalVariable(name: "program", arg: 1, scope: !973, file: !92, line: 836, type: !150)
!973 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !92, file: !92, line: 836, type: !974, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !150}
!976 = !{!972, !977, !984, !985, !987, !988}
!977 = !DILocalVariable(name: "infomap", scope: !973, file: !92, line: 838, type: !978)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 896, elements: !326)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !973, file: !92, line: 838, size: 128, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !980, file: !92, line: 838, baseType: !150, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !980, file: !92, line: 838, baseType: !150, size: 64, offset: 64)
!984 = !DILocalVariable(name: "node", scope: !973, file: !92, line: 848, type: !150)
!985 = !DILocalVariable(name: "map_prog", scope: !973, file: !92, line: 849, type: !986)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!987 = !DILocalVariable(name: "lc_messages", scope: !973, file: !92, line: 861, type: !150)
!988 = !DILocalVariable(name: "url_program", scope: !973, file: !92, line: 874, type: !150)
!989 = !DILocation(line: 0, scope: !973, inlinedAt: !990)
!990 = distinct !DILocation(line: 310, column: 7, scope: !954)
!991 = !DILocation(line: 857, column: 3, scope: !973, inlinedAt: !990)
!992 = !DILocation(line: 861, column: 29, scope: !973, inlinedAt: !990)
!993 = !DILocation(line: 862, column: 7, scope: !994, inlinedAt: !990)
!994 = distinct !DILexicalBlock(scope: !973, file: !92, line: 862, column: 7)
!995 = !DILocation(line: 862, column: 19, scope: !994, inlinedAt: !990)
!996 = !DILocation(line: 862, column: 22, scope: !994, inlinedAt: !990)
!997 = !DILocation(line: 862, column: 7, scope: !973, inlinedAt: !990)
!998 = !DILocation(line: 868, column: 7, scope: !999, inlinedAt: !990)
!999 = distinct !DILexicalBlock(scope: !994, file: !92, line: 863, column: 5)
!1000 = !DILocation(line: 870, column: 5, scope: !999, inlinedAt: !990)
!1001 = !DILocation(line: 875, column: 3, scope: !973, inlinedAt: !990)
!1002 = !DILocation(line: 877, column: 3, scope: !973, inlinedAt: !990)
!1003 = !DILocation(line: 312, column: 3, scope: !938)
!1004 = !DISubprogram(name: "dcgettext", scope: !1005, file: !1005, line: 51, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1005 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!144, !150, !150, !93}
!1008 = !DISubprogram(name: "__fprintf_chk", scope: !1009, file: !1009, line: 93, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1009 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!93, !1012, !93, !1013, null}
!1012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!1013 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!1014 = !DISubprogram(name: "__printf_chk", scope: !1009, file: !1009, line: 95, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!93, !93, !1013, null}
!1017 = !DISubprogram(name: "fputs_unlocked", scope: !1018, file: !1018, line: 691, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1018 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!93, !1013, !1012}
!1021 = !DILocation(line: 0, scope: !216)
!1022 = !DILocation(line: 581, column: 7, scope: !224)
!1023 = !{!1024, !1024, i64 0}
!1024 = !{!"int", !951, i64 0}
!1025 = !DILocation(line: 581, column: 19, scope: !224)
!1026 = !DILocation(line: 581, column: 7, scope: !216)
!1027 = !DILocation(line: 585, column: 26, scope: !223)
!1028 = !DILocation(line: 0, scope: !223)
!1029 = !DILocation(line: 586, column: 23, scope: !223)
!1030 = !DILocation(line: 586, column: 28, scope: !223)
!1031 = !DILocation(line: 586, column: 32, scope: !223)
!1032 = !{!951, !951, i64 0}
!1033 = !DILocation(line: 586, column: 38, scope: !223)
!1034 = !DILocalVariable(name: "__s1", arg: 1, scope: !1035, file: !1036, line: 1359, type: !150)
!1035 = distinct !DISubprogram(name: "streq", scope: !1036, file: !1036, line: 1359, type: !1037, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1039)
!1036 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!195, !150, !150}
!1039 = !{!1034, !1040}
!1040 = !DILocalVariable(name: "__s2", arg: 2, scope: !1035, file: !1036, line: 1359, type: !150)
!1041 = !DILocation(line: 0, scope: !1035, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 586, column: 41, scope: !223)
!1043 = !DILocation(line: 1361, column: 11, scope: !1035, inlinedAt: !1042)
!1044 = !DILocation(line: 1361, column: 10, scope: !1035, inlinedAt: !1042)
!1045 = !DILocation(line: 586, column: 19, scope: !223)
!1046 = !DILocation(line: 587, column: 5, scope: !223)
!1047 = !DILocation(line: 588, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !216, file: !92, line: 588, column: 7)
!1049 = !DILocation(line: 588, column: 7, scope: !216)
!1050 = !DILocation(line: 590, column: 7, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !92, line: 589, column: 5)
!1052 = !DILocation(line: 591, column: 7, scope: !1051)
!1053 = !DILocation(line: 595, column: 37, scope: !216)
!1054 = !DILocation(line: 595, column: 35, scope: !216)
!1055 = !DILocation(line: 596, column: 29, scope: !216)
!1056 = !DILocation(line: 597, column: 8, scope: !231)
!1057 = !DILocation(line: 597, column: 7, scope: !216)
!1058 = !DILocation(line: 604, column: 24, scope: !230)
!1059 = !DILocation(line: 604, column: 12, scope: !231)
!1060 = !DILocation(line: 0, scope: !229)
!1061 = !DILocation(line: 610, column: 16, scope: !229)
!1062 = !DILocation(line: 610, column: 7, scope: !229)
!1063 = !DILocation(line: 611, column: 21, scope: !229)
!1064 = !{!1065, !1065, i64 0}
!1065 = !{!"short", !951, i64 0}
!1066 = !DILocation(line: 611, column: 19, scope: !229)
!1067 = !DILocation(line: 611, column: 16, scope: !229)
!1068 = !DILocation(line: 610, column: 30, scope: !229)
!1069 = distinct !{!1069, !1062, !1063, !1070}
!1070 = !{!"llvm.loop.mustprogress"}
!1071 = !DILocation(line: 612, column: 18, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !229, file: !92, line: 612, column: 11)
!1073 = !DILocation(line: 612, column: 11, scope: !229)
!1074 = !DILocation(line: 618, column: 5, scope: !229)
!1075 = !DILocation(line: 620, column: 23, scope: !216)
!1076 = !DILocation(line: 625, column: 39, scope: !216)
!1077 = !DILocation(line: 626, column: 3, scope: !216)
!1078 = !DILocation(line: 626, column: 10, scope: !216)
!1079 = !DILocation(line: 626, column: 21, scope: !216)
!1080 = !DILocation(line: 628, column: 44, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !92, line: 628, column: 11)
!1082 = distinct !DILexicalBlock(scope: !216, file: !92, line: 627, column: 5)
!1083 = !DILocation(line: 628, column: 32, scope: !1081)
!1084 = !DILocation(line: 628, column: 49, scope: !1081)
!1085 = !DILocation(line: 628, column: 11, scope: !1082)
!1086 = !DILocation(line: 630, column: 11, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !92, line: 630, column: 11)
!1088 = !DILocation(line: 630, column: 11, scope: !1082)
!1089 = !DILocation(line: 632, column: 26, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !92, line: 632, column: 15)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !92, line: 631, column: 9)
!1092 = !DILocation(line: 632, column: 34, scope: !1090)
!1093 = !DILocation(line: 632, column: 37, scope: !1090)
!1094 = !DILocation(line: 632, column: 15, scope: !1091)
!1095 = !DILocation(line: 636, column: 16, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !92, line: 636, column: 15)
!1097 = !DILocation(line: 636, column: 29, scope: !1096)
!1098 = !DILocation(line: 640, column: 16, scope: !1082)
!1099 = distinct !{!1099, !1077, !1100, !1070}
!1100 = !DILocation(line: 641, column: 5, scope: !216)
!1101 = !DILocation(line: 644, column: 3, scope: !216)
!1102 = !DILocation(line: 0, scope: !1035, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 648, column: 31, scope: !216)
!1104 = !DILocation(line: 0, scope: !1035, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 649, column: 31, scope: !216)
!1106 = !DILocation(line: 0, scope: !1035, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 650, column: 31, scope: !216)
!1108 = !DILocation(line: 0, scope: !1035, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 651, column: 31, scope: !216)
!1110 = !DILocation(line: 0, scope: !1035, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 652, column: 31, scope: !216)
!1112 = !DILocation(line: 0, scope: !1035, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 653, column: 31, scope: !216)
!1114 = !DILocation(line: 0, scope: !1035, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 654, column: 31, scope: !216)
!1116 = !DILocation(line: 0, scope: !1035, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 655, column: 31, scope: !216)
!1118 = !DILocation(line: 0, scope: !1035, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 656, column: 31, scope: !216)
!1120 = !DILocation(line: 0, scope: !1035, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 657, column: 31, scope: !216)
!1122 = !DILocation(line: 663, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !216, file: !92, line: 663, column: 7)
!1124 = !DILocation(line: 664, column: 7, scope: !1123)
!1125 = !DILocation(line: 664, column: 10, scope: !1123)
!1126 = !DILocation(line: 663, column: 7, scope: !216)
!1127 = !DILocation(line: 669, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !92, line: 665, column: 5)
!1129 = !DILocation(line: 671, column: 5, scope: !1128)
!1130 = !DILocation(line: 676, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !92, line: 673, column: 5)
!1132 = !DILocation(line: 679, column: 3, scope: !216)
!1133 = !DILocation(line: 683, column: 3, scope: !216)
!1134 = !DILocation(line: 686, column: 3, scope: !216)
!1135 = !DILocation(line: 688, column: 3, scope: !216)
!1136 = !DILocation(line: 691, column: 3, scope: !216)
!1137 = !DILocation(line: 695, column: 3, scope: !216)
!1138 = !DILocation(line: 696, column: 1, scope: !216)
!1139 = !DISubprogram(name: "setlocale", scope: !1140, file: !1140, line: 122, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1140 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!144, !93, !150}
!1143 = !DISubprogram(name: "strncmp", scope: !1144, file: !1144, line: 159, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1144 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!93, !150, !150, !147}
!1147 = !DISubprogram(name: "exit", scope: !1148, file: !1148, line: 624, type: !939, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1148 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1149 = !DISubprogram(name: "getenv", scope: !1148, file: !1148, line: 641, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!144, !150}
!1152 = !DISubprogram(name: "strcmp", scope: !1144, file: !1144, line: 156, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!93, !150, !150}
!1155 = !DISubprogram(name: "strspn", scope: !1144, file: !1144, line: 297, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!149, !150, !150}
!1158 = !DISubprogram(name: "strchr", scope: !1144, file: !1144, line: 246, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!144, !150, !93}
!1161 = !DISubprogram(name: "__ctype_b_loc", scope: !120, file: !120, line: 79, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1167 = !DISubprogram(name: "strcspn", scope: !1144, file: !1144, line: 293, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1168 = !DISubprogram(name: "fwrite_unlocked", scope: !1018, file: !1018, line: 704, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!147, !1171, !147, !147, !1012}
!1171 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1174 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 332, type: !1175, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1178)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!93, !93, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1192}
!1179 = !DILocalVariable(name: "argc", arg: 1, scope: !1174, file: !2, line: 332, type: !93)
!1180 = !DILocalVariable(name: "argv", arg: 2, scope: !1174, file: !2, line: 332, type: !1177)
!1181 = !DILocalVariable(name: "optchar", scope: !1174, file: !2, line: 334, type: !93)
!1182 = !DILocalVariable(name: "ok", scope: !1174, file: !2, line: 335, type: !195)
!1183 = !DILocalVariable(name: "max_width_option", scope: !1174, file: !2, line: 336, type: !150)
!1184 = !DILocalVariable(name: "goal_width_option", scope: !1174, file: !2, line: 337, type: !150)
!1185 = !DILocalVariable(name: "have_read_stdin", scope: !1174, file: !2, line: 425, type: !195)
!1186 = !DILocalVariable(name: "file", scope: !1187, file: !2, line: 436, type: !144)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 435, column: 9)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 434, column: 7)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 434, column: 7)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 433, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 427, column: 7)
!1192 = !DILocalVariable(name: "in_stream", scope: !1193, file: !2, line: 444, type: !238)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 443, column: 13)
!1194 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 437, column: 15)
!1195 = !DILocation(line: 0, scope: !1174)
!1196 = !DILocation(line: 340, column: 21, scope: !1174)
!1197 = !DILocation(line: 340, column: 3, scope: !1174)
!1198 = !DILocation(line: 341, column: 3, scope: !1174)
!1199 = !DILocation(line: 342, column: 3, scope: !1174)
!1200 = !DILocation(line: 343, column: 3, scope: !1174)
!1201 = !DILocation(line: 345, column: 3, scope: !1174)
!1202 = !DILocation(line: 347, column: 12, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 347, column: 7)
!1204 = !DILocation(line: 347, column: 16, scope: !1203)
!1205 = !DILocation(line: 347, column: 19, scope: !1203)
!1206 = !DILocation(line: 347, column: 30, scope: !1203)
!1207 = !DILocation(line: 347, column: 37, scope: !1203)
!1208 = !DILocation(line: 347, column: 51, scope: !1203)
!1209 = !DILocalVariable(name: "c", arg: 1, scope: !1210, file: !1211, line: 233, type: !93)
!1210 = distinct !DISubprogram(name: "c_isdigit", scope: !1211, file: !1211, line: 233, type: !1212, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1214)
!1211 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!195, !93}
!1214 = !{!1209}
!1215 = !DILocation(line: 0, scope: !1210, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 347, column: 40, scope: !1203)
!1217 = !DILocation(line: 235, column: 3, scope: !1210, inlinedAt: !1216)
!1218 = !DILocation(line: 347, column: 7, scope: !1174)
!1219 = !DILocation(line: 353, column: 17, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 348, column: 5)
!1221 = !DILocation(line: 353, column: 15, scope: !1220)
!1222 = !DILocation(line: 355, column: 11, scope: !1220)
!1223 = !DILocation(line: 356, column: 5, scope: !1220)
!1224 = !DILocation(line: 358, column: 3, scope: !1174)
!1225 = !DILocation(line: 358, column: 21, scope: !1174)
!1226 = !DILocation(line: 0, scope: !1210, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 364, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 364, column: 13)
!1229 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 362, column: 7)
!1230 = !DILocation(line: 235, column: 3, scope: !1210, inlinedAt: !1227)
!1231 = !DILocation(line: 364, column: 13, scope: !1229)
!1232 = !DILocation(line: 365, column: 11, scope: !1228)
!1233 = !DILocation(line: 368, column: 9, scope: !1229)
!1234 = !DILocation(line: 371, column: 15, scope: !1229)
!1235 = !DILocation(line: 372, column: 9, scope: !1229)
!1236 = !DILocation(line: 375, column: 15, scope: !1229)
!1237 = !DILocation(line: 376, column: 9, scope: !1229)
!1238 = !DILocation(line: 379, column: 16, scope: !1229)
!1239 = !DILocation(line: 380, column: 9, scope: !1229)
!1240 = !DILocation(line: 383, column: 17, scope: !1229)
!1241 = !DILocation(line: 384, column: 9, scope: !1229)
!1242 = !DILocation(line: 387, column: 28, scope: !1229)
!1243 = !DILocation(line: 388, column: 9, scope: !1229)
!1244 = distinct !{!1244, !1224, !1245, !1070}
!1245 = !DILocation(line: 402, column: 7, scope: !1174)
!1246 = !DILocation(line: 391, column: 29, scope: !1229)
!1247 = !DILocation(line: 392, column: 9, scope: !1229)
!1248 = !DILocation(line: 395, column: 21, scope: !1229)
!1249 = !DILocalVariable(name: "p", arg: 1, scope: !1250, file: !2, line: 468, type: !144)
!1250 = distinct !DISubprogram(name: "set_prefix", scope: !2, file: !2, line: 468, type: !1251, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1253)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !144}
!1253 = !{!1249, !1254}
!1254 = !DILocalVariable(name: "s", scope: !1250, file: !2, line: 470, type: !144)
!1255 = !DILocation(line: 0, scope: !1250, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 395, column: 9, scope: !1229)
!1257 = !DILocation(line: 472, column: 21, scope: !1250, inlinedAt: !1256)
!1258 = !DILocation(line: 473, column: 10, scope: !1250, inlinedAt: !1256)
!1259 = !DILocation(line: 473, column: 13, scope: !1250, inlinedAt: !1256)
!1260 = !DILocation(line: 473, column: 3, scope: !1250, inlinedAt: !1256)
!1261 = !DILocation(line: 475, column: 24, scope: !1262, inlinedAt: !1256)
!1262 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 474, column: 5)
!1263 = !DILocation(line: 476, column: 8, scope: !1262, inlinedAt: !1256)
!1264 = distinct !{!1264, !1260, !1265, !1070}
!1265 = !DILocation(line: 477, column: 5, scope: !1250, inlinedAt: !1256)
!1266 = !DILocation(line: 478, column: 10, scope: !1250, inlinedAt: !1256)
!1267 = !DILocation(line: 479, column: 24, scope: !1250, inlinedAt: !1256)
!1268 = !DILocation(line: 479, column: 22, scope: !1250, inlinedAt: !1256)
!1269 = !DILocation(line: 480, column: 9, scope: !1250, inlinedAt: !1256)
!1270 = !DILocation(line: 481, column: 3, scope: !1250, inlinedAt: !1256)
!1271 = !DILocation(line: 481, column: 12, scope: !1250, inlinedAt: !1256)
!1272 = !DILocation(line: 481, column: 16, scope: !1250, inlinedAt: !1256)
!1273 = !DILocation(line: 481, column: 19, scope: !1250, inlinedAt: !1256)
!1274 = !DILocation(line: 481, column: 25, scope: !1250, inlinedAt: !1256)
!1275 = distinct !{!1275, !1270, !1276, !1070}
!1276 = !DILocation(line: 482, column: 6, scope: !1250, inlinedAt: !1256)
!1277 = !DILocation(line: 483, column: 6, scope: !1250, inlinedAt: !1256)
!1278 = !DILocation(line: 484, column: 21, scope: !1250, inlinedAt: !1256)
!1279 = !DILocation(line: 484, column: 19, scope: !1250, inlinedAt: !1256)
!1280 = !DILocation(line: 484, column: 17, scope: !1250, inlinedAt: !1256)
!1281 = !DILocation(line: 396, column: 9, scope: !1229)
!1282 = !DILocation(line: 398, column: 7, scope: !1229)
!1283 = !DILocation(line: 400, column: 7, scope: !1229)
!1284 = !DILocation(line: 404, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 404, column: 7)
!1286 = !DILocation(line: 404, column: 7, scope: !1174)
!1287 = !DILocation(line: 409, column: 31, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 405, column: 5)
!1289 = !DILocation(line: 408, column: 19, scope: !1288)
!1290 = !DILocation(line: 408, column: 17, scope: !1288)
!1291 = !DILocation(line: 410, column: 5, scope: !1288)
!1292 = !DILocation(line: 412, column: 7, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 412, column: 7)
!1294 = !DILocation(line: 0, scope: !1293)
!1295 = !DILocation(line: 412, column: 7, scope: !1174)
!1296 = !DILocation(line: 415, column: 54, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 413, column: 5)
!1298 = !DILocation(line: 416, column: 32, scope: !1297)
!1299 = !DILocation(line: 415, column: 20, scope: !1297)
!1300 = !DILocation(line: 415, column: 18, scope: !1297)
!1301 = !DILocation(line: 417, column: 11, scope: !1297)
!1302 = !DILocation(line: 418, column: 32, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 417, column: 11)
!1304 = !DILocation(line: 418, column: 19, scope: !1303)
!1305 = !DILocation(line: 418, column: 9, scope: !1303)
!1306 = !DILocation(line: 422, column: 30, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 421, column: 5)
!1308 = !DILocation(line: 422, column: 57, scope: !1307)
!1309 = !DILocation(line: 422, column: 18, scope: !1307)
!1310 = !DILocation(line: 427, column: 7, scope: !1191)
!1311 = !DILocation(line: 427, column: 14, scope: !1191)
!1312 = !DILocation(line: 427, column: 7, scope: !1174)
!1313 = !DILocation(line: 434, column: 21, scope: !1188)
!1314 = !DILocation(line: 434, column: 7, scope: !1189)
!1315 = !DILocation(line: 430, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 428, column: 5)
!1317 = !DILocation(line: 430, column: 12, scope: !1316)
!1318 = !DILocation(line: 430, column: 10, scope: !1316)
!1319 = !DILocation(line: 458, column: 23, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 458, column: 7)
!1321 = !DILocation(line: 436, column: 24, scope: !1187)
!1322 = !DILocation(line: 0, scope: !1187)
!1323 = !DILocation(line: 0, scope: !1035, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 437, column: 15, scope: !1194)
!1325 = !DILocation(line: 1361, column: 11, scope: !1035, inlinedAt: !1324)
!1326 = !DILocation(line: 1361, column: 10, scope: !1035, inlinedAt: !1324)
!1327 = !DILocation(line: 437, column: 15, scope: !1187)
!1328 = !DILocation(line: 439, column: 26, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 438, column: 13)
!1330 = !DILocation(line: 439, column: 21, scope: !1329)
!1331 = !DILocation(line: 439, column: 18, scope: !1329)
!1332 = !DILocation(line: 441, column: 13, scope: !1329)
!1333 = !DILocation(line: 445, column: 27, scope: !1193)
!1334 = !DILocation(line: 0, scope: !1193)
!1335 = !DILocation(line: 446, column: 29, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 446, column: 19)
!1337 = !DILocation(line: 446, column: 19, scope: !1193)
!1338 = !DILocation(line: 447, column: 23, scope: !1336)
!1339 = !DILocation(line: 447, column: 20, scope: !1336)
!1340 = !DILocation(line: 447, column: 17, scope: !1336)
!1341 = !DILocation(line: 450, column: 19, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 449, column: 17)
!1343 = !DILocation(line: 0, scope: !1194)
!1344 = !DILocation(line: 434, column: 35, scope: !1188)
!1345 = distinct !{!1345, !1314, !1346, !1070}
!1346 = !DILocation(line: 455, column: 9, scope: !1189)
!1347 = !DILocation(line: 458, column: 7, scope: !1320)
!1348 = !DILocation(line: 458, column: 34, scope: !1320)
!1349 = !DILocation(line: 458, column: 26, scope: !1320)
!1350 = !DILocation(line: 458, column: 41, scope: !1320)
!1351 = !DILocation(line: 458, column: 7, scope: !1174)
!1352 = !DILocation(line: 459, column: 5, scope: !1320)
!1353 = !DILocation(line: 461, column: 10, scope: !1174)
!1354 = !DILocation(line: 461, column: 3, scope: !1174)
!1355 = !DISubprogram(name: "bindtextdomain", scope: !1005, file: !1005, line: 86, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!144, !150, !150}
!1358 = !DISubprogram(name: "textdomain", scope: !1005, file: !1005, line: 82, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1359 = !DISubprogram(name: "atexit", scope: !1148, file: !1148, line: 602, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!93, !576}
!1362 = !DISubprogram(name: "getopt_long", scope: !496, file: !496, line: 66, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!93, !93, !1365, !150, !1367, !501}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1368 = !DISubprogram(name: "strlen", scope: !1144, file: !1144, line: 407, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!149, !150}
!1371 = distinct !DISubprogram(name: "fmt", scope: !2, file: !2, line: 493, type: !1372, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!195, !238, !150}
!1374 = !{!1375, !1376, !1377}
!1375 = !DILocalVariable(name: "f", arg: 1, scope: !1371, file: !2, line: 493, type: !238)
!1376 = !DILocalVariable(name: "file", arg: 2, scope: !1371, file: !2, line: 493, type: !150)
!1377 = !DILocalVariable(name: "err", scope: !1371, file: !2, line: 505, type: !93)
!1378 = !DILocation(line: 0, scope: !1371)
!1379 = !DILocation(line: 495, column: 3, scope: !1371)
!1380 = !DILocation(line: 496, column: 8, scope: !1371)
!1381 = !DILocation(line: 497, column: 16, scope: !1371)
!1382 = !DILocation(line: 498, column: 15, scope: !1371)
!1383 = !DILocation(line: 498, column: 13, scope: !1371)
!1384 = !DILocation(line: 499, column: 3, scope: !1371)
!1385 = !DILocation(line: 575, column: 7, scope: !1386, inlinedAt: !1392)
!1386 = distinct !DISubprogram(name: "get_paragraph", scope: !2, file: !2, line: 570, type: !1387, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!195, !238}
!1389 = !{!1390, !1391}
!1390 = !DILocalVariable(name: "f", arg: 1, scope: !1386, file: !2, line: 570, type: !238)
!1391 = !DILocalVariable(name: "c", scope: !1386, file: !2, line: 572, type: !93)
!1392 = distinct !DILocation(line: 499, column: 10, scope: !1371)
!1393 = !DILocation(line: 0, scope: !1386, inlinedAt: !1392)
!1394 = !DILocation(line: 574, column: 20, scope: !1386, inlinedAt: !1392)
!1395 = !DILocation(line: 579, column: 3, scope: !1386, inlinedAt: !1392)
!1396 = !DILocation(line: 579, column: 20, scope: !1386, inlinedAt: !1392)
!1397 = !DILocation(line: 580, column: 13, scope: !1386, inlinedAt: !1392)
!1398 = !DILocation(line: 580, column: 34, scope: !1386, inlinedAt: !1392)
!1399 = !DILocation(line: 580, column: 32, scope: !1386, inlinedAt: !1392)
!1400 = !DILocation(line: 581, column: 10, scope: !1386, inlinedAt: !1392)
!1401 = !DILocation(line: 581, column: 13, scope: !1386, inlinedAt: !1392)
!1402 = !DILocation(line: 581, column: 46, scope: !1386, inlinedAt: !1392)
!1403 = !DILocation(line: 581, column: 44, scope: !1386, inlinedAt: !1392)
!1404 = !DILocation(line: 581, column: 23, scope: !1386, inlinedAt: !1392)
!1405 = !DILocalVariable(name: "f", arg: 1, scope: !1406, file: !2, line: 647, type: !238)
!1406 = distinct !DISubprogram(name: "copy_rest", scope: !2, file: !2, line: 647, type: !1407, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!93, !238, !93}
!1409 = !{!1405, !1410, !1411}
!1410 = !DILocalVariable(name: "c", arg: 2, scope: !1406, file: !2, line: 647, type: !93)
!1411 = !DILocalVariable(name: "s", scope: !1412, file: !2, line: 653, type: !150)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 653, column: 7)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 651, column: 5)
!1414 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 650, column: 7)
!1415 = !DILocation(line: 0, scope: !1406, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 583, column: 11, scope: !1417, inlinedAt: !1392)
!1417 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 582, column: 5)
!1418 = !DILocation(line: 649, column: 14, scope: !1406, inlinedAt: !1416)
!1419 = !DILocation(line: 650, column: 7, scope: !1414, inlinedAt: !1416)
!1420 = !DILocation(line: 650, column: 19, scope: !1414, inlinedAt: !1416)
!1421 = !DILocation(line: 650, column: 17, scope: !1414, inlinedAt: !1416)
!1422 = !DILocation(line: 650, column: 38, scope: !1414, inlinedAt: !1416)
!1423 = !DILocation(line: 650, column: 52, scope: !1414, inlinedAt: !1416)
!1424 = !DILocation(line: 652, column: 7, scope: !1413, inlinedAt: !1416)
!1425 = !DILocation(line: 0, scope: !1412, inlinedAt: !1416)
!1426 = !DILocation(line: 653, column: 36, scope: !1427, inlinedAt: !1416)
!1427 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 653, column: 7)
!1428 = !DILocation(line: 653, column: 50, scope: !1427, inlinedAt: !1416)
!1429 = !DILocation(line: 653, column: 47, scope: !1427, inlinedAt: !1416)
!1430 = !DILocation(line: 653, column: 60, scope: !1427, inlinedAt: !1416)
!1431 = !DILocation(line: 653, column: 28, scope: !1412, inlinedAt: !1416)
!1432 = !DILocation(line: 653, column: 7, scope: !1412, inlinedAt: !1416)
!1433 = !DILocation(line: 653, column: 63, scope: !1427, inlinedAt: !1416)
!1434 = !DILocation(line: 655, column: 20, scope: !1435, inlinedAt: !1416)
!1435 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 655, column: 11)
!1436 = !DILocation(line: 654, column: 9, scope: !1427, inlinedAt: !1416)
!1437 = !DILocalVariable(name: "__c", arg: 1, scope: !1438, file: !1439, line: 108, type: !93)
!1438 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1439, file: !1439, line: 108, type: !1440, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1442)
!1439 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!93, !93}
!1442 = !{!1437}
!1443 = !DILocation(line: 0, scope: !1438, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 654, column: 9, scope: !1427, inlinedAt: !1416)
!1445 = !DILocation(line: 110, column: 10, scope: !1438, inlinedAt: !1444)
!1446 = !{!1447, !950, i64 40}
!1447 = !{!"_IO_FILE", !1024, i64 0, !950, i64 8, !950, i64 16, !950, i64 24, !950, i64 32, !950, i64 40, !950, i64 48, !950, i64 56, !950, i64 64, !950, i64 72, !950, i64 80, !950, i64 88, !950, i64 96, !950, i64 104, !1024, i64 112, !1024, i64 116, !1448, i64 120, !1065, i64 128, !951, i64 130, !951, i64 131, !950, i64 136, !1448, i64 144, !950, i64 152, !950, i64 160, !950, i64 168, !950, i64 176, !1448, i64 184, !1024, i64 192, !951, i64 196}
!1448 = !{!"long", !951, i64 0}
!1449 = !{!1447, !950, i64 48}
!1450 = !{!"branch_weights", i32 2000, i32 1}
!1451 = !DILocation(line: 653, column: 77, scope: !1427, inlinedAt: !1416)
!1452 = distinct !{!1452, !1432, !1453, !1070}
!1453 = !DILocation(line: 654, column: 9, scope: !1412, inlinedAt: !1416)
!1454 = !DILocation(line: 656, column: 30, scope: !1435, inlinedAt: !1416)
!1455 = !DILocation(line: 656, column: 9, scope: !1435, inlinedAt: !1416)
!1456 = !DILocation(line: 657, column: 20, scope: !1457, inlinedAt: !1416)
!1457 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 657, column: 11)
!1458 = !DILocation(line: 657, column: 36, scope: !1457, inlinedAt: !1416)
!1459 = !DILocation(line: 657, column: 57, scope: !1457, inlinedAt: !1416)
!1460 = !DILocation(line: 657, column: 55, scope: !1457, inlinedAt: !1416)
!1461 = !DILocation(line: 657, column: 33, scope: !1457, inlinedAt: !1416)
!1462 = !DILocation(line: 657, column: 11, scope: !1413, inlinedAt: !1416)
!1463 = !DILocation(line: 0, scope: !1438, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 658, column: 9, scope: !1457, inlinedAt: !1416)
!1465 = !DILocation(line: 110, column: 10, scope: !1438, inlinedAt: !1464)
!1466 = !DILocation(line: 660, column: 3, scope: !1406, inlinedAt: !1416)
!1467 = !DILocation(line: 0, scope: !1438, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 662, column: 7, scope: !1469, inlinedAt: !1416)
!1469 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 661, column: 5)
!1470 = !DILocation(line: 110, column: 10, scope: !1438, inlinedAt: !1468)
!1471 = !DILocalVariable(name: "__fp", arg: 1, scope: !1472, file: !1439, line: 66, type: !238)
!1472 = distinct !DISubprogram(name: "getc_unlocked", scope: !1439, file: !1439, line: 66, type: !1473, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!93, !238}
!1475 = !{!1471}
!1476 = !DILocation(line: 0, scope: !1472, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 663, column: 11, scope: !1469, inlinedAt: !1416)
!1478 = !DILocation(line: 68, column: 10, scope: !1472, inlinedAt: !1477)
!1479 = !{!1447, !950, i64 8}
!1480 = !{!1447, !950, i64 16}
!1481 = distinct !{!1481, !1466, !1482, !1070}
!1482 = !DILocation(line: 664, column: 5, scope: !1406, inlinedAt: !1416)
!1483 = !DILocation(line: 0, scope: !1438, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 589, column: 7, scope: !1417, inlinedAt: !1392)
!1485 = !DILocation(line: 110, column: 10, scope: !1438, inlinedAt: !1484)
!1486 = !DILocation(line: 590, column: 11, scope: !1417, inlinedAt: !1392)
!1487 = distinct !{!1487, !1395, !1488, !1070}
!1488 = !DILocation(line: 591, column: 5, scope: !1386, inlinedAt: !1392)
!1489 = !DILocation(line: 595, column: 17, scope: !1386, inlinedAt: !1392)
!1490 = !DILocation(line: 596, column: 16, scope: !1386, inlinedAt: !1392)
!1491 = !DILocation(line: 597, column: 8, scope: !1386, inlinedAt: !1392)
!1492 = !DILocation(line: 598, column: 14, scope: !1386, inlinedAt: !1392)
!1493 = !DILocation(line: 599, column: 7, scope: !1386, inlinedAt: !1392)
!1494 = !DILocalVariable(name: "c", arg: 1, scope: !1495, file: !2, line: 673, type: !93)
!1495 = distinct !DISubprogram(name: "same_para", scope: !2, file: !2, line: 673, type: !1212, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1496)
!1496 = !{!1494}
!1497 = !DILocation(line: 0, scope: !1495, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 600, column: 21, scope: !1386, inlinedAt: !1392)
!1499 = !DILocation(line: 675, column: 11, scope: !1495, inlinedAt: !1498)
!1500 = !DILocation(line: 675, column: 33, scope: !1495, inlinedAt: !1498)
!1501 = !DILocation(line: 675, column: 30, scope: !1495, inlinedAt: !1498)
!1502 = !DILocation(line: 676, column: 11, scope: !1495, inlinedAt: !1498)
!1503 = !DILocation(line: 676, column: 14, scope: !1495, inlinedAt: !1498)
!1504 = !DILocation(line: 676, column: 48, scope: !1495, inlinedAt: !1498)
!1505 = !DILocation(line: 676, column: 46, scope: !1495, inlinedAt: !1498)
!1506 = !DILocation(line: 676, column: 24, scope: !1495, inlinedAt: !1498)
!1507 = !DILocation(line: 677, column: 11, scope: !1495, inlinedAt: !1498)
!1508 = !DILocalVariable(name: "same_paragraph", arg: 1, scope: !1509, file: !2, line: 525, type: !195)
!1509 = distinct !DISubprogram(name: "set_other_indent", scope: !2, file: !2, line: 525, type: !1510, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !195}
!1512 = !{!1508}
!1513 = !DILocation(line: 0, scope: !1509, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 600, column: 3, scope: !1386, inlinedAt: !1392)
!1515 = !DILocation(line: 527, column: 7, scope: !1516, inlinedAt: !1514)
!1516 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 527, column: 7)
!1517 = !DILocation(line: 527, column: 7, scope: !1509, inlinedAt: !1514)
!1518 = !DILocation(line: 529, column: 12, scope: !1519, inlinedAt: !1514)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 529, column: 12)
!1520 = !DILocation(line: 529, column: 12, scope: !1516, inlinedAt: !1514)
!1521 = !DILocation(line: 533, column: 12, scope: !1522, inlinedAt: !1514)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 533, column: 12)
!1523 = !DILocation(line: 533, column: 12, scope: !1519, inlinedAt: !1514)
!1524 = !DILocation(line: 535, column: 26, scope: !1525, inlinedAt: !1514)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 535, column: 11)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 534, column: 5)
!1527 = !DILocation(line: 545, column: 32, scope: !1528, inlinedAt: !1514)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 545, column: 16)
!1529 = !DILocation(line: 535, column: 29, scope: !1525, inlinedAt: !1514)
!1530 = !DILocation(line: 535, column: 42, scope: !1525, inlinedAt: !1514)
!1531 = !DILocation(line: 535, column: 39, scope: !1525, inlinedAt: !1514)
!1532 = !DILocation(line: 535, column: 11, scope: !1526, inlinedAt: !1514)
!1533 = !DILocation(line: 545, column: 16, scope: !1528, inlinedAt: !1514)
!1534 = !DILocation(line: 545, column: 29, scope: !1528, inlinedAt: !1514)
!1535 = !DILocation(line: 545, column: 16, scope: !1525, inlinedAt: !1514)
!1536 = !DILocation(line: 546, column: 37, scope: !1528, inlinedAt: !1514)
!1537 = !DILocation(line: 546, column: 24, scope: !1528, inlinedAt: !1514)
!1538 = !DILocation(line: 546, column: 9, scope: !1528, inlinedAt: !1514)
!1539 = !DILocation(line: 528, column: 20, scope: !1516, inlinedAt: !1514)
!1540 = !DILocation(line: 0, scope: !1516, inlinedAt: !1514)
!1541 = !DILocation(line: 531, column: 23, scope: !1542, inlinedAt: !1514)
!1542 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 530, column: 5)
!1543 = !DILocation(line: 0, scope: !1495, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 610, column: 11, scope: !1545, inlinedAt: !1392)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 610, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 609, column: 5)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 608, column: 12)
!1548 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 604, column: 7)
!1549 = !DILocation(line: 676, column: 11, scope: !1495, inlinedAt: !1544)
!1550 = !DILocation(line: 676, column: 48, scope: !1495, inlinedAt: !1544)
!1551 = !DILocation(line: 676, column: 46, scope: !1495, inlinedAt: !1544)
!1552 = !DILocation(line: 676, column: 24, scope: !1495, inlinedAt: !1544)
!1553 = !DILocation(line: 610, column: 11, scope: !1546, inlinedAt: !1392)
!1554 = !DILocation(line: 614, column: 19, scope: !1555, inlinedAt: !1392)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 613, column: 13)
!1556 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 611, column: 9)
!1557 = !DILocation(line: 0, scope: !1495, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 616, column: 18, scope: !1556, inlinedAt: !1392)
!1559 = !DILocation(line: 675, column: 11, scope: !1495, inlinedAt: !1558)
!1560 = !DILocation(line: 675, column: 33, scope: !1495, inlinedAt: !1558)
!1561 = !DILocation(line: 675, column: 30, scope: !1495, inlinedAt: !1558)
!1562 = !DILocation(line: 676, column: 11, scope: !1495, inlinedAt: !1558)
!1563 = !DILocation(line: 676, column: 14, scope: !1495, inlinedAt: !1558)
!1564 = !DILocation(line: 676, column: 48, scope: !1495, inlinedAt: !1558)
!1565 = !DILocation(line: 676, column: 46, scope: !1495, inlinedAt: !1558)
!1566 = !DILocation(line: 676, column: 24, scope: !1495, inlinedAt: !1558)
!1567 = !DILocation(line: 677, column: 11, scope: !1495, inlinedAt: !1558)
!1568 = !DILocation(line: 616, column: 32, scope: !1556, inlinedAt: !1392)
!1569 = !DILocation(line: 615, column: 13, scope: !1555, inlinedAt: !1392)
!1570 = distinct !{!1570, !1571, !1572, !1070}
!1571 = !DILocation(line: 612, column: 11, scope: !1556, inlinedAt: !1392)
!1572 = !DILocation(line: 616, column: 60, scope: !1556, inlinedAt: !1392)
!1573 = !DILocation(line: 619, column: 12, scope: !1547, inlinedAt: !1392)
!1574 = !DILocation(line: 550, column: 22, scope: !1575, inlinedAt: !1514)
!1575 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 549, column: 5)
!1576 = !DILocation(line: 0, scope: !1495, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 632, column: 14, scope: !1578, inlinedAt: !1392)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 631, column: 5)
!1579 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 619, column: 12)
!1580 = !DILocation(line: 676, column: 11, scope: !1495, inlinedAt: !1577)
!1581 = !DILocation(line: 0, scope: !1495, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 621, column: 11, scope: !1583, inlinedAt: !1392)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 621, column: 11)
!1584 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 620, column: 5)
!1585 = !DILocation(line: 676, column: 11, scope: !1495, inlinedAt: !1582)
!1586 = !DILocation(line: 676, column: 14, scope: !1495, inlinedAt: !1582)
!1587 = !DILocation(line: 676, column: 48, scope: !1495, inlinedAt: !1582)
!1588 = !DILocation(line: 676, column: 46, scope: !1495, inlinedAt: !1582)
!1589 = !DILocation(line: 676, column: 24, scope: !1495, inlinedAt: !1582)
!1590 = !DILocation(line: 621, column: 25, scope: !1583, inlinedAt: !1392)
!1591 = !DILocation(line: 621, column: 38, scope: !1583, inlinedAt: !1392)
!1592 = !DILocation(line: 621, column: 11, scope: !1584, inlinedAt: !1392)
!1593 = !DILocation(line: 625, column: 19, scope: !1594, inlinedAt: !1392)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 624, column: 13)
!1595 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 622, column: 9)
!1596 = !DILocation(line: 0, scope: !1495, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 627, column: 18, scope: !1595, inlinedAt: !1392)
!1598 = !DILocation(line: 675, column: 11, scope: !1495, inlinedAt: !1597)
!1599 = !DILocation(line: 675, column: 33, scope: !1495, inlinedAt: !1597)
!1600 = !DILocation(line: 675, column: 30, scope: !1495, inlinedAt: !1597)
!1601 = !DILocation(line: 676, column: 11, scope: !1495, inlinedAt: !1597)
!1602 = !DILocation(line: 676, column: 14, scope: !1495, inlinedAt: !1597)
!1603 = !DILocation(line: 676, column: 48, scope: !1495, inlinedAt: !1597)
!1604 = !DILocation(line: 676, column: 46, scope: !1495, inlinedAt: !1597)
!1605 = !DILocation(line: 676, column: 24, scope: !1495, inlinedAt: !1597)
!1606 = !DILocation(line: 677, column: 11, scope: !1495, inlinedAt: !1597)
!1607 = !DILocation(line: 627, column: 32, scope: !1595, inlinedAt: !1392)
!1608 = !DILocation(line: 626, column: 13, scope: !1594, inlinedAt: !1392)
!1609 = distinct !{!1609, !1610, !1611, !1070}
!1610 = !DILocation(line: 623, column: 11, scope: !1595, inlinedAt: !1392)
!1611 = !DILocation(line: 627, column: 60, scope: !1595, inlinedAt: !1392)
!1612 = !DILocation(line: 676, column: 14, scope: !1495, inlinedAt: !1577)
!1613 = !DILocation(line: 676, column: 48, scope: !1495, inlinedAt: !1577)
!1614 = !DILocation(line: 676, column: 46, scope: !1495, inlinedAt: !1577)
!1615 = !DILocation(line: 676, column: 24, scope: !1495, inlinedAt: !1577)
!1616 = !DILocation(line: 677, column: 11, scope: !1495, inlinedAt: !1577)
!1617 = !DILocation(line: 632, column: 28, scope: !1578, inlinedAt: !1392)
!1618 = !DILocation(line: 632, column: 7, scope: !1578, inlinedAt: !1392)
!1619 = !DILocation(line: 633, column: 13, scope: !1578, inlinedAt: !1392)
!1620 = !DILocation(line: 675, column: 11, scope: !1495, inlinedAt: !1577)
!1621 = !DILocation(line: 675, column: 33, scope: !1495, inlinedAt: !1577)
!1622 = !DILocation(line: 675, column: 30, scope: !1495, inlinedAt: !1577)
!1623 = distinct !{!1623, !1618, !1624, !1070}
!1624 = !DILocation(line: 633, column: 27, scope: !1578, inlinedAt: !1392)
!1625 = !DILocation(line: 636, column: 31, scope: !1386, inlinedAt: !1392)
!1626 = !DILocation(line: 636, column: 48, scope: !1386, inlinedAt: !1392)
!1627 = !DILocation(line: 636, column: 54, scope: !1386, inlinedAt: !1392)
!1628 = !DILocation(line: 636, column: 28, scope: !1386, inlinedAt: !1392)
!1629 = !DILocation(line: 501, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 500, column: 5)
!1631 = !DILocalVariable(name: "finish", arg: 1, scope: !1632, file: !2, line: 991, type: !480)
!1632 = distinct !DISubprogram(name: "put_paragraph", scope: !2, file: !2, line: 991, type: !1633, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !480}
!1635 = !{!1631, !1636}
!1636 = !DILocalVariable(name: "w", scope: !1637, file: !2, line: 994, type: !480)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 994, column: 3)
!1638 = !DILocation(line: 0, scope: !1632, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 502, column: 7, scope: !1630)
!1640 = !DILocation(line: 993, column: 19, scope: !1632, inlinedAt: !1639)
!1641 = !DILocation(line: 993, column: 3, scope: !1632, inlinedAt: !1639)
!1642 = !DILocation(line: 0, scope: !1637, inlinedAt: !1639)
!1643 = !DILocation(line: 994, scope: !1637, inlinedAt: !1639)
!1644 = !{!1645, !950, i64 32}
!1645 = !{!"Word", !950, i64 0, !1024, i64 8, !1024, i64 12, !1024, i64 16, !1024, i64 16, !1024, i64 16, !1024, i64 16, !1024, i64 20, !1448, i64 24, !950, i64 32}
!1646 = !DILocation(line: 994, column: 38, scope: !1647, inlinedAt: !1639)
!1647 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 994, column: 3)
!1648 = !DILocation(line: 994, column: 3, scope: !1637, inlinedAt: !1639)
!1649 = !DILocation(line: 995, column: 18, scope: !1647, inlinedAt: !1639)
!1650 = !DILocation(line: 995, column: 5, scope: !1647, inlinedAt: !1639)
!1651 = !DILocation(line: 994, column: 56, scope: !1647, inlinedAt: !1639)
!1652 = distinct !{!1652, !1648, !1653, !1070}
!1653 = !DILocation(line: 995, column: 30, scope: !1637, inlinedAt: !1639)
!1654 = distinct !{!1654, !1384, !1655, !1070}
!1655 = !DILocation(line: 503, column: 5, scope: !1371)
!1656 = !DILocalVariable(name: "__stream", arg: 1, scope: !1657, file: !1439, line: 135, type: !238)
!1657 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1439, file: !1439, line: 135, type: !1473, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1658)
!1658 = !{!1656}
!1659 = !DILocation(line: 0, scope: !1657, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 505, column: 13, scope: !1371)
!1661 = !DILocation(line: 137, column: 10, scope: !1657, inlinedAt: !1660)
!1662 = !{!1447, !1024, i64 0}
!1663 = !DILocation(line: 505, column: 13, scope: !1371)
!1664 = !DILocation(line: 507, column: 12, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 507, column: 7)
!1666 = !DILocation(line: 507, column: 9, scope: !1665)
!1667 = !DILocation(line: 507, column: 7, scope: !1371)
!1668 = !DILocation(line: 508, column: 5, scope: !1665)
!1669 = !DILocation(line: 509, column: 12, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 509, column: 12)
!1671 = !DILocation(line: 509, column: 23, scope: !1670)
!1672 = !DILocation(line: 509, column: 28, scope: !1670)
!1673 = !DILocation(line: 510, column: 11, scope: !1670)
!1674 = !DILocation(line: 510, column: 5, scope: !1670)
!1675 = !DILocation(line: 511, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 511, column: 7)
!1677 = !DILocation(line: 511, column: 7, scope: !1371)
!1678 = !DILocation(line: 513, column: 16, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 513, column: 11)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 512, column: 5)
!1681 = !DILocation(line: 513, column: 13, scope: !1679)
!1682 = !DILocation(line: 0, scope: !1679)
!1683 = !DILocation(line: 513, column: 11, scope: !1680)
!1684 = !DILocation(line: 514, column: 9, scope: !1679)
!1685 = !DILocation(line: 516, column: 9, scope: !1679)
!1686 = !DILocation(line: 518, column: 14, scope: !1371)
!1687 = !DILocation(line: 518, column: 3, scope: !1371)
!1688 = !DISubprogram(name: "__errno_location", scope: !1689, file: !1689, line: 37, type: !1690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1689 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!501}
!1692 = distinct !DISubprogram(name: "get_prefix", scope: !2, file: !2, line: 743, type: !1473, scopeLine: 744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1693)
!1693 = !{!1694, !1695, !1696, !1700}
!1694 = !DILocalVariable(name: "f", arg: 1, scope: !1692, file: !2, line: 743, type: !238)
!1695 = !DILocalVariable(name: "c", scope: !1692, file: !2, line: 745, type: !93)
!1696 = !DILocalVariable(name: "p", scope: !1697, file: !2, line: 755, type: !150)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 755, column: 7)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 753, column: 5)
!1699 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 749, column: 7)
!1700 = !DILocalVariable(name: "pc", scope: !1701, file: !2, line: 757, type: !152)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !2, line: 756, column: 9)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 755, column: 7)
!1703 = !DILocation(line: 0, scope: !1692)
!1704 = !DILocation(line: 747, column: 13, scope: !1692)
!1705 = !DILocation(line: 0, scope: !1472, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 748, column: 21, scope: !1692)
!1707 = !DILocation(line: 68, column: 10, scope: !1472, inlinedAt: !1706)
!1708 = !DILocation(line: 774, column: 3, scope: !1709, inlinedAt: !1713)
!1709 = distinct !DISubprogram(name: "get_space", scope: !2, file: !2, line: 772, type: !1407, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1710)
!1710 = !{!1711, !1712}
!1711 = !DILocalVariable(name: "f", arg: 1, scope: !1709, file: !2, line: 772, type: !238)
!1712 = !DILocalVariable(name: "c", arg: 2, scope: !1709, file: !2, line: 772, type: !93)
!1713 = distinct !DILocation(line: 748, column: 7, scope: !1692)
!1714 = !DILocation(line: 0, scope: !1709, inlinedAt: !1713)
!1715 = !DILocation(line: 776, column: 11, scope: !1716, inlinedAt: !1713)
!1716 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 775, column: 5)
!1717 = !DILocation(line: 777, column: 18, scope: !1718, inlinedAt: !1713)
!1718 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 776, column: 11)
!1719 = !DILocation(line: 777, column: 9, scope: !1718, inlinedAt: !1713)
!1720 = !DILocation(line: 780, column: 16, scope: !1721, inlinedAt: !1713)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 779, column: 9)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 778, column: 16)
!1723 = !DILocation(line: 781, column: 24, scope: !1721, inlinedAt: !1713)
!1724 = !DILocation(line: 781, column: 34, scope: !1721, inlinedAt: !1713)
!1725 = !DILocation(line: 781, column: 50, scope: !1721, inlinedAt: !1713)
!1726 = !DILocation(line: 0, scope: !1718, inlinedAt: !1713)
!1727 = !DILocation(line: 0, scope: !1472, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 785, column: 11, scope: !1716, inlinedAt: !1713)
!1729 = !DILocation(line: 68, column: 10, scope: !1472, inlinedAt: !1728)
!1730 = distinct !{!1730, !1708, !1731}
!1731 = !DILocation(line: 786, column: 5, scope: !1709, inlinedAt: !1713)
!1732 = !DILocation(line: 749, column: 7, scope: !1699)
!1733 = !DILocation(line: 749, column: 21, scope: !1699)
!1734 = !DILocation(line: 749, column: 7, scope: !1692)
!1735 = !DILocation(line: 750, column: 26, scope: !1699)
!1736 = !DILocation(line: 750, column: 46, scope: !1699)
!1737 = !DILocation(line: 750, column: 24, scope: !1699)
!1738 = !DILocation(line: 750, column: 5, scope: !1699)
!1739 = !DILocation(line: 754, column: 28, scope: !1698)
!1740 = !DILocation(line: 754, column: 26, scope: !1698)
!1741 = !DILocation(line: 755, column: 28, scope: !1697)
!1742 = !DILocation(line: 0, scope: !1697)
!1743 = !DILocation(line: 755, column: 36, scope: !1702)
!1744 = !DILocation(line: 755, column: 39, scope: !1702)
!1745 = !DILocation(line: 755, column: 7, scope: !1697)
!1746 = !DILocation(line: 0, scope: !1701)
!1747 = !DILocation(line: 758, column: 20, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 758, column: 15)
!1749 = !DILocation(line: 758, column: 17, scope: !1748)
!1750 = !DILocation(line: 758, column: 15, scope: !1701)
!1751 = !DILocation(line: 760, column: 20, scope: !1701)
!1752 = !DILocation(line: 0, scope: !1472, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 761, column: 15, scope: !1701)
!1754 = !DILocation(line: 68, column: 10, scope: !1472, inlinedAt: !1753)
!1755 = !DILocation(line: 755, column: 49, scope: !1702)
!1756 = distinct !{!1756, !1745, !1757, !1070}
!1757 = !DILocation(line: 762, column: 9, scope: !1697)
!1758 = !DILocation(line: 774, column: 3, scope: !1709, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 763, column: 11, scope: !1698)
!1760 = !DILocation(line: 0, scope: !1709, inlinedAt: !1759)
!1761 = !DILocation(line: 776, column: 11, scope: !1716, inlinedAt: !1759)
!1762 = !DILocation(line: 777, column: 18, scope: !1718, inlinedAt: !1759)
!1763 = !DILocation(line: 777, column: 9, scope: !1718, inlinedAt: !1759)
!1764 = !DILocation(line: 780, column: 16, scope: !1721, inlinedAt: !1759)
!1765 = !DILocation(line: 781, column: 24, scope: !1721, inlinedAt: !1759)
!1766 = !DILocation(line: 781, column: 34, scope: !1721, inlinedAt: !1759)
!1767 = !DILocation(line: 781, column: 50, scope: !1721, inlinedAt: !1759)
!1768 = !DILocation(line: 0, scope: !1718, inlinedAt: !1759)
!1769 = !DILocation(line: 0, scope: !1472, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 785, column: 11, scope: !1716, inlinedAt: !1759)
!1771 = !DILocation(line: 68, column: 10, scope: !1472, inlinedAt: !1770)
!1772 = distinct !{!1772, !1758, !1773}
!1773 = !DILocation(line: 786, column: 5, scope: !1709, inlinedAt: !1759)
!1774 = !DILocation(line: 766, column: 1, scope: !1692)
!1775 = distinct !DISubprogram(name: "put_space", scope: !2, file: !2, line: 1040, type: !939, scopeLine: 1041, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1776)
!1776 = !{!1777, !1778, !1779}
!1777 = !DILocalVariable(name: "space", arg: 1, scope: !1775, file: !2, line: 1040, type: !93)
!1778 = !DILocalVariable(name: "space_target", scope: !1775, file: !2, line: 1042, type: !93)
!1779 = !DILocalVariable(name: "tab_target", scope: !1775, file: !2, line: 1042, type: !93)
!1780 = !DILocation(line: 0, scope: !1775)
!1781 = !DILocation(line: 1044, column: 18, scope: !1775)
!1782 = !DILocation(line: 1044, column: 29, scope: !1775)
!1783 = !DILocation(line: 1045, column: 7, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 1045, column: 7)
!1785 = !DILocation(line: 1045, column: 7, scope: !1775)
!1786 = !DILocation(line: 1047, column: 33, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 1046, column: 5)
!1788 = !DILocation(line: 1047, column: 44, scope: !1787)
!1789 = !DILocation(line: 1048, column: 22, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 1048, column: 11)
!1791 = !DILocation(line: 1048, column: 26, scope: !1790)
!1792 = !DILocation(line: 1048, column: 11, scope: !1787)
!1793 = !DILocation(line: 0, scope: !1438, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 1051, column: 13, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 1050, column: 11)
!1796 = !DILocation(line: 110, column: 10, scope: !1438, inlinedAt: !1794)
!1797 = !DILocation(line: 1052, column: 27, scope: !1795)
!1798 = !DILocation(line: 1052, column: 38, scope: !1795)
!1799 = !DILocation(line: 1052, column: 54, scope: !1795)
!1800 = !DILocation(line: 1052, column: 24, scope: !1795)
!1801 = !DILocation(line: 1049, column: 27, scope: !1790)
!1802 = !DILocation(line: 1049, column: 9, scope: !1790)
!1803 = !DILocation(line: 1055, column: 10, scope: !1775)
!1804 = !DILocation(line: 1055, column: 21, scope: !1775)
!1805 = !DILocation(line: 1055, column: 3, scope: !1775)
!1806 = !DILocation(line: 0, scope: !1438, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 1057, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 1056, column: 5)
!1809 = !DILocation(line: 110, column: 10, scope: !1438, inlinedAt: !1807)
!1810 = !DILocation(line: 1058, column: 17, scope: !1808)
!1811 = distinct !{!1811, !1805, !1812, !1070}
!1812 = !DILocation(line: 1059, column: 5, scope: !1775)
!1813 = !DILocation(line: 1060, column: 1, scope: !1775)
!1814 = !DISubprogram(name: "__overflow", scope: !1018, file: !1018, line: 886, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1815 = !DISubprogram(name: "__uflow", scope: !1018, file: !1018, line: 885, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!1816 = distinct !DISubprogram(name: "get_line", scope: !2, file: !2, line: 689, type: !1407, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822}
!1818 = !DILocalVariable(name: "f", arg: 1, scope: !1816, file: !2, line: 689, type: !238)
!1819 = !DILocalVariable(name: "c", arg: 2, scope: !1816, file: !2, line: 689, type: !93)
!1820 = !DILocalVariable(name: "start", scope: !1816, file: !2, line: 691, type: !93)
!1821 = !DILocalVariable(name: "end_of_parabuf", scope: !1816, file: !2, line: 692, type: !144)
!1822 = !DILocalVariable(name: "end_of_word", scope: !1816, file: !2, line: 693, type: !480)
!1823 = !DILocation(line: 0, scope: !1816)
!1824 = !DILocation(line: 703, column: 7, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 699, column: 5)
!1826 = !DILocation(line: 698, column: 3, scope: !1816)
!1827 = !DILocation(line: 703, column: 26, scope: !1825)
!1828 = !DILocation(line: 703, column: 24, scope: !1825)
!1829 = !{!1645, !950, i64 0}
!1830 = !DILocation(line: 704, column: 7, scope: !1825)
!1831 = !DILocation(line: 706, column: 15, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 706, column: 15)
!1833 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 705, column: 9)
!1834 = !DILocation(line: 706, column: 20, scope: !1832)
!1835 = !DILocation(line: 706, column: 15, scope: !1833)
!1836 = !DILocation(line: 0, scope: !1509, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 708, column: 15, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 707, column: 13)
!1839 = !DILocation(line: 527, column: 7, scope: !1516, inlinedAt: !1837)
!1840 = !DILocation(line: 527, column: 7, scope: !1509, inlinedAt: !1837)
!1841 = !DILocation(line: 528, column: 20, scope: !1516, inlinedAt: !1837)
!1842 = !DILocation(line: 528, column: 5, scope: !1516, inlinedAt: !1837)
!1843 = !DILocation(line: 529, column: 12, scope: !1519, inlinedAt: !1837)
!1844 = !DILocation(line: 529, column: 12, scope: !1516, inlinedAt: !1837)
!1845 = !DILocation(line: 531, column: 23, scope: !1542, inlinedAt: !1837)
!1846 = !DILocation(line: 532, column: 5, scope: !1542, inlinedAt: !1837)
!1847 = !DILocation(line: 533, column: 12, scope: !1522, inlinedAt: !1837)
!1848 = !DILocation(line: 533, column: 12, scope: !1519, inlinedAt: !1837)
!1849 = !DILocation(line: 535, column: 29, scope: !1525, inlinedAt: !1837)
!1850 = !DILocation(line: 535, column: 42, scope: !1525, inlinedAt: !1837)
!1851 = !DILocation(line: 535, column: 39, scope: !1525, inlinedAt: !1837)
!1852 = !DILocation(line: 535, column: 11, scope: !1526, inlinedAt: !1837)
!1853 = !DILocation(line: 545, column: 16, scope: !1528, inlinedAt: !1837)
!1854 = !DILocation(line: 545, column: 29, scope: !1528, inlinedAt: !1837)
!1855 = !DILocation(line: 545, column: 16, scope: !1525, inlinedAt: !1837)
!1856 = !DILocation(line: 546, column: 37, scope: !1528, inlinedAt: !1837)
!1857 = !DILocation(line: 546, column: 24, scope: !1528, inlinedAt: !1837)
!1858 = !DILocation(line: 546, column: 9, scope: !1528, inlinedAt: !1837)
!1859 = !DILocation(line: 550, column: 22, scope: !1575, inlinedAt: !1837)
!1860 = !DILocation(line: 0, scope: !1516, inlinedAt: !1837)
!1861 = !DILocation(line: 552, column: 1, scope: !1509, inlinedAt: !1837)
!1862 = !DILocation(line: 709, column: 15, scope: !1838)
!1863 = !DILocation(line: 711, column: 16, scope: !1833)
!1864 = !DILocation(line: 710, column: 13, scope: !1838)
!1865 = !DILocation(line: 711, column: 21, scope: !1833)
!1866 = !DILocation(line: 711, column: 19, scope: !1833)
!1867 = !DILocation(line: 0, scope: !1472, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 712, column: 15, scope: !1833)
!1869 = !DILocation(line: 68, column: 10, scope: !1472, inlinedAt: !1868)
!1870 = !DILocation(line: 714, column: 23, scope: !1825)
!1871 = !DILocation(line: 714, column: 16, scope: !1825)
!1872 = !DILocalVariable(name: "c", arg: 1, scope: !1873, file: !1211, line: 300, type: !93)
!1873 = distinct !DISubprogram(name: "c_isspace", scope: !1211, file: !1211, line: 300, type: !1212, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1874)
!1874 = !{!1872}
!1875 = !DILocation(line: 0, scope: !1873, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 714, column: 27, scope: !1825)
!1877 = !DILocation(line: 302, column: 3, scope: !1873, inlinedAt: !1876)
!1878 = !DILocation(line: 715, column: 41, scope: !1825)
!1879 = !DILocation(line: 715, column: 48, scope: !1825)
!1880 = !DILocation(line: 715, column: 60, scope: !1825)
!1881 = !DILocation(line: 715, column: 46, scope: !1825)
!1882 = !DILocation(line: 715, column: 32, scope: !1825)
!1883 = !DILocation(line: 715, column: 39, scope: !1825)
!1884 = !{!1645, !1024, i64 8}
!1885 = !DILocation(line: 715, column: 17, scope: !1825)
!1886 = !DILocalVariable(name: "w", arg: 1, scope: !1887, file: !2, line: 792, type: !480)
!1887 = distinct !DISubprogram(name: "check_punctuation", scope: !2, file: !2, line: 792, type: !1633, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1888)
!1888 = !{!1886, !1889, !1890, !1891}
!1889 = !DILocalVariable(name: "start", scope: !1887, file: !2, line: 794, type: !150)
!1890 = !DILocalVariable(name: "finish", scope: !1887, file: !2, line: 795, type: !150)
!1891 = !DILocalVariable(name: "fin", scope: !1887, file: !2, line: 796, type: !152)
!1892 = !DILocation(line: 0, scope: !1887, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 716, column: 7, scope: !1825)
!1894 = !DILocation(line: 795, column: 30, scope: !1887, inlinedAt: !1893)
!1895 = !DILocation(line: 796, column: 23, scope: !1887, inlinedAt: !1893)
!1896 = !DILocation(line: 798, column: 14, scope: !1887, inlinedAt: !1893)
!1897 = !DILocation(line: 798, column: 6, scope: !1887, inlinedAt: !1893)
!1898 = !DILocation(line: 798, column: 12, scope: !1887, inlinedAt: !1893)
!1899 = !DILocation(line: 799, column: 17, scope: !1887, inlinedAt: !1893)
!1900 = !DILocation(line: 799, column: 12, scope: !1887, inlinedAt: !1893)
!1901 = !DILocation(line: 800, column: 16, scope: !1887, inlinedAt: !1893)
!1902 = !DILocation(line: 800, column: 25, scope: !1887, inlinedAt: !1893)
!1903 = !DILocation(line: 800, column: 28, scope: !1887, inlinedAt: !1893)
!1904 = !DILocation(line: 800, column: 3, scope: !1887, inlinedAt: !1893)
!1905 = !DILocation(line: 801, column: 11, scope: !1887, inlinedAt: !1893)
!1906 = distinct !{!1906, !1904, !1905, !1070}
!1907 = !DILocation(line: 802, column: 15, scope: !1887, inlinedAt: !1893)
!1908 = !DILocation(line: 802, column: 13, scope: !1887, inlinedAt: !1893)
!1909 = !DILocation(line: 0, scope: !1709, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 721, column: 11, scope: !1825)
!1911 = !DILocation(line: 774, column: 3, scope: !1709, inlinedAt: !1910)
!1912 = !DILocation(line: 776, column: 11, scope: !1716, inlinedAt: !1910)
!1913 = !DILocation(line: 777, column: 18, scope: !1718, inlinedAt: !1910)
!1914 = !DILocation(line: 777, column: 9, scope: !1718, inlinedAt: !1910)
!1915 = !DILocation(line: 780, column: 16, scope: !1721, inlinedAt: !1910)
!1916 = !DILocation(line: 781, column: 24, scope: !1721, inlinedAt: !1910)
!1917 = !DILocation(line: 781, column: 34, scope: !1721, inlinedAt: !1910)
!1918 = !DILocation(line: 781, column: 50, scope: !1721, inlinedAt: !1910)
!1919 = !DILocation(line: 0, scope: !1718, inlinedAt: !1910)
!1920 = !DILocation(line: 0, scope: !1472, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 785, column: 11, scope: !1716, inlinedAt: !1910)
!1922 = !DILocation(line: 68, column: 10, scope: !1472, inlinedAt: !1921)
!1923 = distinct !{!1923, !1911, !1924}
!1924 = !DILocation(line: 786, column: 5, scope: !1709, inlinedAt: !1910)
!1925 = !DILocation(line: 722, column: 27, scope: !1825)
!1926 = !DILocation(line: 722, column: 37, scope: !1825)
!1927 = !DILocation(line: 725, column: 67, scope: !1825)
!1928 = !DILocation(line: 722, column: 7, scope: !1825)
!1929 = !DILocation(line: 722, column: 19, scope: !1825)
!1930 = !DILocation(line: 722, column: 25, scope: !1825)
!1931 = !{!1645, !1024, i64 12}
!1932 = !DILocation(line: 723, column: 30, scope: !1825)
!1933 = !DILocation(line: 0, scope: !1825)
!1934 = !DILocation(line: 724, column: 28, scope: !1825)
!1935 = !DILocation(line: 724, column: 32, scope: !1825)
!1936 = !DILocation(line: 725, column: 32, scope: !1825)
!1937 = !DILocation(line: 725, column: 38, scope: !1825)
!1938 = !DILocation(line: 725, column: 46, scope: !1825)
!1939 = !DILocation(line: 723, column: 19, scope: !1825)
!1940 = !DILocation(line: 723, column: 25, scope: !1825)
!1941 = !DILocation(line: 726, column: 21, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 726, column: 11)
!1943 = !DILocation(line: 726, column: 36, scope: !1942)
!1944 = !DILocation(line: 726, column: 11, scope: !1825)
!1945 = !DILocation(line: 727, column: 27, scope: !1942)
!1946 = !DILocation(line: 727, column: 9, scope: !1942)
!1947 = !DILocation(line: 728, column: 22, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 728, column: 11)
!1949 = !DILocation(line: 728, column: 11, scope: !1825)
!1950 = !DILocation(line: 0, scope: !1509, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 730, column: 11, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 729, column: 9)
!1953 = !DILocation(line: 527, column: 7, scope: !1516, inlinedAt: !1951)
!1954 = !DILocation(line: 527, column: 7, scope: !1509, inlinedAt: !1951)
!1955 = !DILocation(line: 528, column: 20, scope: !1516, inlinedAt: !1951)
!1956 = !DILocation(line: 528, column: 5, scope: !1516, inlinedAt: !1951)
!1957 = !DILocation(line: 529, column: 12, scope: !1519, inlinedAt: !1951)
!1958 = !DILocation(line: 529, column: 12, scope: !1516, inlinedAt: !1951)
!1959 = !DILocation(line: 533, column: 12, scope: !1522, inlinedAt: !1951)
!1960 = !DILocation(line: 0, scope: !1522, inlinedAt: !1951)
!1961 = !DILocation(line: 533, column: 12, scope: !1519, inlinedAt: !1951)
!1962 = !DILocation(line: 535, column: 39, scope: !1525, inlinedAt: !1951)
!1963 = !DILocation(line: 535, column: 11, scope: !1526, inlinedAt: !1951)
!1964 = !DILocation(line: 545, column: 16, scope: !1528, inlinedAt: !1951)
!1965 = !DILocation(line: 545, column: 29, scope: !1528, inlinedAt: !1951)
!1966 = !DILocation(line: 545, column: 16, scope: !1525, inlinedAt: !1951)
!1967 = !DILocation(line: 546, column: 37, scope: !1528, inlinedAt: !1951)
!1968 = !DILocation(line: 546, column: 24, scope: !1528, inlinedAt: !1951)
!1969 = !DILocation(line: 546, column: 9, scope: !1528, inlinedAt: !1951)
!1970 = !DILocation(line: 0, scope: !1516, inlinedAt: !1951)
!1971 = !DILocation(line: 552, column: 1, scope: !1509, inlinedAt: !1951)
!1972 = !DILocation(line: 731, column: 11, scope: !1952)
!1973 = !DILocation(line: 733, column: 17, scope: !1825)
!1974 = !DILocation(line: 732, column: 9, scope: !1952)
!1975 = !DILocation(line: 734, column: 5, scope: !1825)
!1976 = !DILocation(line: 736, column: 10, scope: !1816)
!1977 = !DILocation(line: 736, column: 3, scope: !1816)
!1978 = distinct !DISubprogram(name: "fmt_paragraph", scope: !2, file: !2, line: 876, type: !577, scopeLine: 877, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1979)
!1979 = !{!1980, !1981, !1982, !1983, !1984, !1985}
!1980 = !DILocalVariable(name: "w", scope: !1978, file: !2, line: 878, type: !480)
!1981 = !DILocalVariable(name: "len", scope: !1978, file: !2, line: 879, type: !93)
!1982 = !DILocalVariable(name: "wcost", scope: !1978, file: !2, line: 880, type: !154)
!1983 = !DILocalVariable(name: "best", scope: !1978, file: !2, line: 880, type: !154)
!1984 = !DILocalVariable(name: "saved_length", scope: !1978, file: !2, line: 881, type: !93)
!1985 = !DILocalVariable(name: "start", scope: !1986, file: !2, line: 887, type: !480)
!1986 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 887, column: 3)
!1987 = !DILocation(line: 883, column: 3, scope: !1978)
!1988 = !DILocation(line: 883, column: 15, scope: !1978)
!1989 = !DILocation(line: 883, column: 25, scope: !1978)
!1990 = !{!1645, !1448, i64 24}
!1991 = !DILocation(line: 884, column: 30, scope: !1978)
!1992 = !DILocation(line: 0, scope: !1978)
!1993 = !DILocation(line: 885, column: 24, scope: !1978)
!1994 = !DILocation(line: 885, column: 22, scope: !1978)
!1995 = !DILocation(line: 0, scope: !1986)
!1996 = !DILocation(line: 887, scope: !1986)
!1997 = !DILocation(line: 887, column: 44, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 887, column: 3)
!1999 = !DILocation(line: 887, column: 3, scope: !1986)
!2000 = !DILocation(line: 925, column: 22, scope: !1978)
!2001 = !DILocation(line: 926, column: 1, scope: !1978)
!2002 = !DILocation(line: 890, column: 19, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 888, column: 5)
!2004 = !DILocation(line: 890, column: 13, scope: !2003)
!2005 = !DILocation(line: 895, column: 17, scope: !2003)
!2006 = !DILocation(line: 895, column: 11, scope: !2003)
!2007 = !DILocation(line: 896, column: 7, scope: !2003)
!2008 = !DILocation(line: 0, scope: !2003)
!2009 = !DILocation(line: 898, column: 12, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2003, file: !2, line: 897, column: 9)
!2011 = !DILocalVariable(name: "next", arg: 1, scope: !2012, file: !2, line: 970, type: !480)
!2012 = distinct !DISubprogram(name: "line_cost", scope: !2, file: !2, line: 970, type: !2013, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!154, !480, !93}
!2015 = !{!2011, !2016, !2017, !2018}
!2016 = !DILocalVariable(name: "len", arg: 2, scope: !2012, file: !2, line: 970, type: !93)
!2017 = !DILocalVariable(name: "n", scope: !2012, file: !2, line: 972, type: !93)
!2018 = !DILocalVariable(name: "cost", scope: !2012, file: !2, line: 973, type: !154)
!2019 = !DILocation(line: 0, scope: !2012, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 902, column: 19, scope: !2010)
!2021 = !DILocation(line: 975, column: 12, scope: !2022, inlinedAt: !2020)
!2022 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 975, column: 7)
!2023 = !DILocation(line: 975, column: 7, scope: !2012, inlinedAt: !2020)
!2024 = !DILocation(line: 977, column: 18, scope: !2012, inlinedAt: !2020)
!2025 = !DILocation(line: 978, column: 10, scope: !2012, inlinedAt: !2020)
!2026 = !DILocation(line: 979, column: 13, scope: !2027, inlinedAt: !2020)
!2027 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 979, column: 7)
!2028 = !DILocation(line: 979, column: 24, scope: !2027, inlinedAt: !2020)
!2029 = !DILocation(line: 979, column: 7, scope: !2012, inlinedAt: !2020)
!2030 = !DILocation(line: 981, column: 23, scope: !2031, inlinedAt: !2020)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !2, line: 980, column: 5)
!2032 = !{!1645, !1024, i64 20}
!2033 = !DILocation(line: 981, column: 15, scope: !2031, inlinedAt: !2020)
!2034 = !DILocation(line: 982, column: 15, scope: !2031, inlinedAt: !2020)
!2035 = !DILocation(line: 982, column: 12, scope: !2031, inlinedAt: !2020)
!2036 = !DILocation(line: 983, column: 5, scope: !2031, inlinedAt: !2020)
!2037 = !DILocation(line: 902, column: 43, scope: !2010)
!2038 = !DILocation(line: 902, column: 38, scope: !2010)
!2039 = !DILocation(line: 903, column: 29, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 903, column: 15)
!2041 = !DILocation(line: 904, column: 22, scope: !2040)
!2042 = !DILocation(line: 904, column: 19, scope: !2040)
!2043 = !DILocation(line: 904, column: 13, scope: !2040)
!2044 = !DILocation(line: 0, scope: !2010)
!2045 = !DILocation(line: 905, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 905, column: 15)
!2047 = !DILocation(line: 905, column: 15, scope: !2010)
!2048 = !DILocation(line: 908, column: 33, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 906, column: 13)
!2050 = !DILocation(line: 909, column: 34, scope: !2049)
!2051 = !DILocation(line: 910, column: 13, scope: !2049)
!2052 = !DILocation(line: 916, column: 15, scope: !2010)
!2053 = !DILocation(line: 919, column: 27, scope: !2010)
!2054 = !DILocation(line: 919, column: 38, scope: !2010)
!2055 = !DILocation(line: 919, column: 33, scope: !2010)
!2056 = !DILocation(line: 919, column: 15, scope: !2010)
!2057 = !DILocation(line: 921, column: 18, scope: !2003)
!2058 = !DILocation(line: 920, column: 9, scope: !2010)
!2059 = distinct !{!2059, !2007, !2060, !1070}
!2060 = !DILocation(line: 921, column: 30, scope: !2003)
!2061 = !DILocalVariable(name: "this", arg: 1, scope: !2062, file: !2, line: 937, type: !480)
!2062 = distinct !DISubprogram(name: "base_cost", scope: !2, file: !2, line: 937, type: !2063, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2065)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!154, !480}
!2065 = !{!2061, !2066}
!2066 = !DILocalVariable(name: "cost", scope: !2062, file: !2, line: 939, type: !154)
!2067 = !DILocation(line: 0, scope: !2062, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 922, column: 33, scope: !2003)
!2069 = !DILocation(line: 943, column: 12, scope: !2070, inlinedAt: !2068)
!2070 = distinct !DILexicalBlock(scope: !2062, file: !2, line: 943, column: 7)
!2071 = !DILocation(line: 943, column: 7, scope: !2062, inlinedAt: !2068)
!2072 = !DILocation(line: 945, column: 23, scope: !2073, inlinedAt: !2068)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 945, column: 11)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !2, line: 944, column: 5)
!2075 = !DILocation(line: 945, column: 11, scope: !2073, inlinedAt: !2068)
!2076 = !DILocation(line: 945, column: 11, scope: !2074, inlinedAt: !2068)
!2077 = !DILocation(line: 947, column: 15, scope: !2078, inlinedAt: !2068)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 947, column: 15)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 946, column: 9)
!2080 = !DILocation(line: 952, column: 16, scope: !2081, inlinedAt: !2068)
!2081 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 952, column: 16)
!2082 = !DILocation(line: 952, column: 16, scope: !2073, inlinedAt: !2068)
!2083 = !DILocation(line: 954, column: 21, scope: !2084, inlinedAt: !2068)
!2084 = distinct !DILexicalBlock(scope: !2081, file: !2, line: 954, column: 16)
!2085 = !DILocation(line: 954, column: 32, scope: !2084, inlinedAt: !2068)
!2086 = !DILocation(line: 954, column: 47, scope: !2084, inlinedAt: !2068)
!2087 = !DILocation(line: 954, column: 35, scope: !2084, inlinedAt: !2068)
!2088 = !DILocation(line: 954, column: 16, scope: !2081, inlinedAt: !2068)
!2089 = !DILocation(line: 955, column: 17, scope: !2084, inlinedAt: !2068)
!2090 = !DILocation(line: 955, column: 14, scope: !2084, inlinedAt: !2068)
!2091 = !DILocation(line: 955, column: 9, scope: !2084, inlinedAt: !2068)
!2092 = !DILocation(line: 958, column: 13, scope: !2093, inlinedAt: !2068)
!2093 = distinct !DILexicalBlock(scope: !2062, file: !2, line: 958, column: 7)
!2094 = !DILocation(line: 958, column: 7, scope: !2093, inlinedAt: !2068)
!2095 = !DILocation(line: 958, column: 7, scope: !2062, inlinedAt: !2068)
!2096 = !DILocation(line: 959, column: 10, scope: !2093, inlinedAt: !2068)
!2097 = !DILocation(line: 959, column: 5, scope: !2093, inlinedAt: !2068)
!2098 = !DILocation(line: 960, column: 12, scope: !2099, inlinedAt: !2068)
!2099 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 960, column: 12)
!2100 = !DILocation(line: 960, column: 12, scope: !2093, inlinedAt: !2068)
!2101 = !DILocation(line: 961, column: 13, scope: !2099, inlinedAt: !2068)
!2102 = !DILocation(line: 961, column: 10, scope: !2099, inlinedAt: !2068)
!2103 = !DILocation(line: 961, column: 5, scope: !2099, inlinedAt: !2068)
!2104 = !DILocation(line: 922, column: 31, scope: !2003)
!2105 = !DILocation(line: 922, column: 14, scope: !2003)
!2106 = !DILocation(line: 922, column: 24, scope: !2003)
!2107 = distinct !{!2107, !1999, !2108, !1070}
!2108 = !DILocation(line: 923, column: 5, scope: !1986)
!2109 = distinct !DISubprogram(name: "put_line", scope: !2, file: !2, line: 1002, type: !2110, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !480, !93}
!2112 = !{!2113, !2114, !2115}
!2113 = !DILocalVariable(name: "w", arg: 1, scope: !2109, file: !2, line: 1002, type: !480)
!2114 = !DILocalVariable(name: "indent", arg: 2, scope: !2109, file: !2, line: 1002, type: !93)
!2115 = !DILocalVariable(name: "endline", scope: !2109, file: !2, line: 1004, type: !480)
!2116 = !DILocation(line: 0, scope: !2109)
!2117 = !DILocation(line: 1006, column: 14, scope: !2109)
!2118 = !DILocation(line: 1007, column: 14, scope: !2109)
!2119 = !DILocation(line: 1007, column: 3, scope: !2109)
!2120 = !DILocation(line: 1008, column: 3, scope: !2109)
!2121 = !DILocation(line: 1009, column: 17, scope: !2109)
!2122 = !DILocation(line: 1009, column: 14, scope: !2109)
!2123 = !DILocation(line: 1010, column: 21, scope: !2109)
!2124 = !DILocation(line: 1010, column: 3, scope: !2109)
!2125 = !DILocation(line: 1012, column: 16, scope: !2109)
!2126 = !DILocation(line: 1012, column: 27, scope: !2109)
!2127 = !DILocation(line: 1013, column: 12, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !2, line: 1013, column: 3)
!2129 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 1013, column: 3)
!2130 = !DILocation(line: 1013, column: 3, scope: !2129)
!2131 = !DILocalVariable(name: "w", arg: 1, scope: !2132, file: !2, line: 1029, type: !480)
!2132 = distinct !DISubprogram(name: "put_word", scope: !2, file: !2, line: 1029, type: !1633, scopeLine: 1030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2133)
!2133 = !{!2131, !2134, !2135}
!2134 = !DILocalVariable(name: "s", scope: !2132, file: !2, line: 1031, type: !150)
!2135 = !DILocalVariable(name: "n", scope: !2136, file: !2, line: 1032, type: !93)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 1032, column: 3)
!2137 = !DILocation(line: 0, scope: !2132, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 1015, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 1014, column: 5)
!2140 = !DILocation(line: 1032, column: 19, scope: !2136, inlinedAt: !2138)
!2141 = !DILocation(line: 0, scope: !2136, inlinedAt: !2138)
!2142 = !DILocation(line: 1032, column: 29, scope: !2143, inlinedAt: !2138)
!2143 = distinct !DILexicalBlock(scope: !2136, file: !2, line: 1032, column: 3)
!2144 = !DILocation(line: 1032, column: 3, scope: !2136, inlinedAt: !2138)
!2145 = !DILocation(line: 1031, column: 22, scope: !2132, inlinedAt: !2138)
!2146 = !DILocation(line: 1034, column: 20, scope: !2132, inlinedAt: !2138)
!2147 = !DILocation(line: 1033, column: 5, scope: !2143, inlinedAt: !2138)
!2148 = !DILocation(line: 0, scope: !1438, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 1033, column: 5, scope: !2143, inlinedAt: !2138)
!2150 = !DILocation(line: 110, column: 10, scope: !1438, inlinedAt: !2149)
!2151 = !DILocation(line: 1032, column: 36, scope: !2143, inlinedAt: !2138)
!2152 = distinct !{!2152, !2144, !2153, !1070}
!2153 = !DILocation(line: 1033, column: 5, scope: !2136, inlinedAt: !2138)
!2154 = !DILocation(line: 1034, column: 14, scope: !2132, inlinedAt: !2138)
!2155 = !DILocation(line: 1016, column: 21, scope: !2139)
!2156 = !DILocation(line: 1016, column: 7, scope: !2139)
!2157 = !DILocation(line: 1013, column: 25, scope: !2128)
!2158 = distinct !{!2158, !2130, !2159, !1070}
!2159 = !DILocation(line: 1017, column: 5, scope: !2129)
!2160 = !DILocation(line: 0, scope: !2132, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 1018, column: 3, scope: !2109)
!2162 = !DILocation(line: 1032, column: 19, scope: !2136, inlinedAt: !2161)
!2163 = !DILocation(line: 0, scope: !2136, inlinedAt: !2161)
!2164 = !DILocation(line: 1032, column: 29, scope: !2143, inlinedAt: !2161)
!2165 = !DILocation(line: 1032, column: 3, scope: !2136, inlinedAt: !2161)
!2166 = !DILocation(line: 1031, column: 22, scope: !2132, inlinedAt: !2161)
!2167 = !DILocation(line: 1034, column: 20, scope: !2132, inlinedAt: !2161)
!2168 = !DILocation(line: 1033, column: 5, scope: !2143, inlinedAt: !2161)
!2169 = !DILocation(line: 0, scope: !1438, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 1033, column: 5, scope: !2143, inlinedAt: !2161)
!2171 = !DILocation(line: 110, column: 10, scope: !1438, inlinedAt: !2170)
!2172 = !DILocation(line: 1032, column: 36, scope: !2143, inlinedAt: !2161)
!2173 = distinct !{!2173, !2165, !2174, !1070}
!2174 = !DILocation(line: 1033, column: 5, scope: !2136, inlinedAt: !2161)
!2175 = !DILocation(line: 1034, column: 14, scope: !2132, inlinedAt: !2161)
!2176 = !DILocation(line: 1019, column: 20, scope: !2109)
!2177 = !DILocation(line: 0, scope: !1438, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 1020, column: 3, scope: !2109)
!2179 = !DILocation(line: 110, column: 10, scope: !1438, inlinedAt: !2178)
!2180 = !DILocation(line: 1022, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 1022, column: 7)
!2182 = !DILocation(line: 0, scope: !1657, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 1022, column: 7, scope: !2181)
!2184 = !DILocation(line: 137, column: 10, scope: !1657, inlinedAt: !2183)
!2185 = !DILocation(line: 1022, column: 7, scope: !2109)
!2186 = !DILocation(line: 948, column: 21, scope: !2187, inlinedAt: !2190)
!2187 = distinct !DISubprogram(name: "write_error", scope: !92, file: !92, line: 946, type: !577, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2188)
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "saved_errno", scope: !2187, file: !92, line: 948, type: !93)
!2190 = distinct !DILocation(line: 1023, column: 5, scope: !2181)
!2191 = !DILocation(line: 0, scope: !2187, inlinedAt: !2190)
!2192 = !DILocation(line: 949, column: 3, scope: !2187, inlinedAt: !2190)
!2193 = !DILocation(line: 950, column: 11, scope: !2187, inlinedAt: !2190)
!2194 = !DILocation(line: 950, column: 3, scope: !2187, inlinedAt: !2190)
!2195 = !DILocation(line: 951, column: 3, scope: !2187, inlinedAt: !2190)
!2196 = !DILocation(line: 952, column: 3, scope: !2187, inlinedAt: !2190)
!2197 = !DILocation(line: 1024, column: 1, scope: !2109)
!2198 = !DISubprogram(name: "clearerr_unlocked", scope: !1018, file: !1018, line: 794, type: !2199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !238}
!2201 = !DISubprogram(name: "fflush_unlocked", scope: !1018, file: !1018, line: 239, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2202 = distinct !DISubprogram(name: "flush_paragraph", scope: !2, file: !2, line: 809, type: !577, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2203)
!2203 = !{!2204, !2205, !2206, !2207, !2208, !2211, !2214, !2215}
!2204 = !DILocalVariable(name: "split_point", scope: !2202, file: !2, line: 811, type: !480)
!2205 = !DILocalVariable(name: "w", scope: !2202, file: !2, line: 812, type: !480)
!2206 = !DILocalVariable(name: "shift", scope: !2202, file: !2, line: 813, type: !93)
!2207 = !DILocalVariable(name: "best_break", scope: !2202, file: !2, line: 814, type: !154)
!2208 = !DILocalVariable(name: "to_write", scope: !2209, file: !2, line: 820, type: !147)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !2, line: 819, column: 5)
!2210 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 818, column: 7)
!2211 = !DILocalVariable(name: "__ptr", scope: !2212, file: !2, line: 821, type: !150)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !2, line: 821, column: 11)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 821, column: 11)
!2214 = !DILocalVariable(name: "__stream", scope: !2212, file: !2, line: 821, type: !238)
!2215 = !DILocalVariable(name: "__cnt", scope: !2212, file: !2, line: 821, type: !147)
!2216 = !DILocation(line: 818, column: 7, scope: !2210)
!2217 = !DILocation(line: 818, column: 18, scope: !2210)
!2218 = !DILocation(line: 818, column: 7, scope: !2202)
!2219 = !DILocation(line: 820, column: 25, scope: !2209)
!2220 = !DILocation(line: 820, column: 30, scope: !2209)
!2221 = !DILocation(line: 0, scope: !2209)
!2222 = !DILocation(line: 821, column: 11, scope: !2213)
!2223 = !DILocation(line: 821, column: 49, scope: !2213)
!2224 = !DILocation(line: 821, column: 11, scope: !2209)
!2225 = !DILocation(line: 948, column: 21, scope: !2187, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 822, column: 9, scope: !2213)
!2227 = !DILocation(line: 0, scope: !2187, inlinedAt: !2226)
!2228 = !DILocation(line: 949, column: 3, scope: !2187, inlinedAt: !2226)
!2229 = !DILocation(line: 950, column: 11, scope: !2187, inlinedAt: !2226)
!2230 = !DILocation(line: 950, column: 3, scope: !2187, inlinedAt: !2226)
!2231 = !DILocation(line: 951, column: 3, scope: !2187, inlinedAt: !2226)
!2232 = !DILocation(line: 952, column: 3, scope: !2187, inlinedAt: !2226)
!2233 = !DILocation(line: 824, column: 12, scope: !2209)
!2234 = !DILocation(line: 834, column: 3, scope: !2202)
!2235 = !DILocation(line: 0, scope: !2202)
!2236 = !DILocation(line: 840, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 840, column: 3)
!2238 = !DILocation(line: 840, column: 32, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 840, column: 3)
!2240 = !DILocation(line: 840, column: 3, scope: !2237)
!2241 = !DILocation(line: 842, column: 14, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 842, column: 11)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 841, column: 5)
!2244 = !DILocation(line: 842, column: 29, scope: !2242)
!2245 = !DILocation(line: 842, column: 41, scope: !2242)
!2246 = !DILocation(line: 842, column: 24, scope: !2242)
!2247 = !DILocation(line: 842, column: 51, scope: !2242)
!2248 = !DILocation(line: 842, column: 11, scope: !2243)
!2249 = !DILocation(line: 847, column: 22, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 847, column: 11)
!2251 = !DILocation(line: 847, column: 11, scope: !2243)
!2252 = distinct !{!2252, !2240, !2253, !1070}
!2253 = !DILocation(line: 849, column: 5, scope: !2237)
!2254 = !DILocation(line: 0, scope: !1632, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 850, column: 3, scope: !2202)
!2256 = !DILocation(line: 993, column: 19, scope: !1632, inlinedAt: !2255)
!2257 = !DILocation(line: 993, column: 3, scope: !1632, inlinedAt: !2255)
!2258 = !DILocation(line: 0, scope: !1637, inlinedAt: !2255)
!2259 = !DILocation(line: 994, scope: !1637, inlinedAt: !2255)
!2260 = !DILocation(line: 994, column: 38, scope: !1647, inlinedAt: !2255)
!2261 = !DILocation(line: 994, column: 3, scope: !1637, inlinedAt: !2255)
!2262 = !DILocation(line: 995, column: 18, scope: !1647, inlinedAt: !2255)
!2263 = !DILocation(line: 995, column: 5, scope: !1647, inlinedAt: !2255)
!2264 = !DILocation(line: 994, column: 56, scope: !1647, inlinedAt: !2255)
!2265 = distinct !{!2265, !2261, !2266, !1070}
!2266 = !DILocation(line: 995, column: 30, scope: !1637, inlinedAt: !2255)
!2267 = !DILocation(line: 855, column: 34, scope: !2202)
!2268 = !DILocation(line: 855, column: 40, scope: !2202)
!2269 = !DILocation(line: 855, column: 45, scope: !2202)
!2270 = !DILocalVariable(name: "__dest", arg: 1, scope: !2271, file: !2272, line: 34, type: !145)
!2271 = distinct !DISubprogram(name: "memmove", scope: !2272, file: !2272, line: 34, type: !2273, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2275)
!2272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!145, !145, !1172, !147}
!2275 = !{!2270, !2276, !2277}
!2276 = !DILocalVariable(name: "__src", arg: 2, scope: !2271, file: !2272, line: 34, type: !1172)
!2277 = !DILocalVariable(name: "__len", arg: 3, scope: !2271, file: !2272, line: 34, type: !147)
!2278 = !DILocation(line: 0, scope: !2271, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 855, column: 3, scope: !2202)
!2280 = !DILocation(line: 36, column: 10, scope: !2271, inlinedAt: !2279)
!2281 = !DILocation(line: 856, column: 24, scope: !2202)
!2282 = !DILocation(line: 856, column: 29, scope: !2202)
!2283 = !DILocation(line: 856, column: 11, scope: !2202)
!2284 = !DILocation(line: 857, column: 8, scope: !2202)
!2285 = !DILocation(line: 861, column: 27, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 861, column: 3)
!2287 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 861, column: 3)
!2288 = !DILocation(line: 861, column: 3, scope: !2287)
!2289 = !DILocation(line: 862, column: 13, scope: !2286)
!2290 = !DILocation(line: 861, column: 43, scope: !2286)
!2291 = distinct !{!2291, !2288, !2292, !1070}
!2292 = !DILocation(line: 862, column: 16, scope: !2287)
!2293 = !DILocation(line: 867, column: 43, scope: !2202)
!2294 = !DILocation(line: 867, column: 62, scope: !2202)
!2295 = !DILocation(line: 0, scope: !2271, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 867, column: 3, scope: !2202)
!2297 = !DILocation(line: 36, column: 10, scope: !2271, inlinedAt: !2296)
!2298 = !DILocation(line: 868, column: 29, scope: !2202)
!2299 = !DILocation(line: 868, column: 14, scope: !2202)
!2300 = !DILocation(line: 869, column: 1, scope: !2202)
!2301 = !DISubprogram(name: "__builtin___memmove_chk", scope: !2302, file: !2302, line: 25, type: !2303, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2302 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!145, !145, !1172, !149, !149}
!2305 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !518, file: !518, line: 50, type: !974, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2306)
!2306 = !{!2307}
!2307 = !DILocalVariable(name: "file", arg: 1, scope: !2305, file: !518, line: 50, type: !150)
!2308 = !DILocation(line: 0, scope: !2305)
!2309 = !DILocation(line: 52, column: 13, scope: !2305)
!2310 = !DILocation(line: 53, column: 1, scope: !2305)
!2311 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !518, file: !518, line: 87, type: !1510, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2312)
!2312 = !{!2313}
!2313 = !DILocalVariable(name: "ignore", arg: 1, scope: !2311, file: !518, line: 87, type: !195)
!2314 = !DILocation(line: 0, scope: !2311)
!2315 = !DILocation(line: 89, column: 16, scope: !2311)
!2316 = !{!2317, !2317, i64 0}
!2317 = !{!"_Bool", !951, i64 0}
!2318 = !DILocation(line: 90, column: 1, scope: !2311)
!2319 = distinct !DISubprogram(name: "close_stdout", scope: !518, file: !518, line: 116, type: !577, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2320)
!2320 = !{!2321}
!2321 = !DILocalVariable(name: "write_error", scope: !2322, file: !518, line: 121, type: !150)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !518, line: 120, column: 5)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !518, line: 118, column: 7)
!2324 = !DILocation(line: 118, column: 21, scope: !2323)
!2325 = !DILocation(line: 118, column: 7, scope: !2323)
!2326 = !DILocation(line: 118, column: 29, scope: !2323)
!2327 = !DILocation(line: 119, column: 7, scope: !2323)
!2328 = !DILocation(line: 119, column: 12, scope: !2323)
!2329 = !{i8 0, i8 2}
!2330 = !DILocation(line: 119, column: 25, scope: !2323)
!2331 = !DILocation(line: 119, column: 28, scope: !2323)
!2332 = !DILocation(line: 119, column: 34, scope: !2323)
!2333 = !DILocation(line: 118, column: 7, scope: !2319)
!2334 = !DILocation(line: 121, column: 33, scope: !2322)
!2335 = !DILocation(line: 0, scope: !2322)
!2336 = !DILocation(line: 122, column: 11, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2322, file: !518, line: 122, column: 11)
!2338 = !DILocation(line: 0, scope: !2337)
!2339 = !DILocation(line: 122, column: 11, scope: !2322)
!2340 = !DILocation(line: 123, column: 9, scope: !2337)
!2341 = !DILocation(line: 126, column: 9, scope: !2337)
!2342 = !DILocation(line: 128, column: 14, scope: !2322)
!2343 = !DILocation(line: 128, column: 7, scope: !2322)
!2344 = !DILocation(line: 133, column: 42, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2319, file: !518, line: 133, column: 7)
!2346 = !DILocation(line: 133, column: 28, scope: !2345)
!2347 = !DILocation(line: 133, column: 50, scope: !2345)
!2348 = !DILocation(line: 133, column: 7, scope: !2319)
!2349 = !DILocation(line: 134, column: 12, scope: !2345)
!2350 = !DILocation(line: 134, column: 5, scope: !2345)
!2351 = !DILocation(line: 135, column: 1, scope: !2319)
!2352 = !DISubprogram(name: "_exit", scope: !2353, file: !2353, line: 624, type: !939, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2353 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2354 = distinct !DISubprogram(name: "verror", scope: !533, file: !533, line: 251, type: !2355, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !93, !93, !150, !543}
!2357 = !{!2358, !2359, !2360, !2361}
!2358 = !DILocalVariable(name: "status", arg: 1, scope: !2354, file: !533, line: 251, type: !93)
!2359 = !DILocalVariable(name: "errnum", arg: 2, scope: !2354, file: !533, line: 251, type: !93)
!2360 = !DILocalVariable(name: "message", arg: 3, scope: !2354, file: !533, line: 251, type: !150)
!2361 = !DILocalVariable(name: "args", arg: 4, scope: !2354, file: !533, line: 251, type: !543)
!2362 = !DILocation(line: 0, scope: !2354)
!2363 = !DILocation(line: 261, column: 3, scope: !2354)
!2364 = !DILocation(line: 265, column: 7, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2354, file: !533, line: 265, column: 7)
!2366 = !DILocation(line: 265, column: 7, scope: !2354)
!2367 = !DILocation(line: 266, column: 5, scope: !2365)
!2368 = !DILocation(line: 272, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !533, line: 268, column: 5)
!2370 = !DILocation(line: 276, column: 3, scope: !2354)
!2371 = !DILocation(line: 282, column: 1, scope: !2354)
!2372 = distinct !DISubprogram(name: "flush_stdout", scope: !533, file: !533, line: 163, type: !577, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2373)
!2373 = !{!2374}
!2374 = !DILocalVariable(name: "stdout_fd", scope: !2372, file: !533, line: 166, type: !93)
!2375 = !DILocation(line: 0, scope: !2372)
!2376 = !DILocalVariable(name: "fd", arg: 1, scope: !2377, file: !533, line: 145, type: !93)
!2377 = distinct !DISubprogram(name: "is_open", scope: !533, file: !533, line: 145, type: !1440, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2378)
!2378 = !{!2376}
!2379 = !DILocation(line: 0, scope: !2377, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 182, column: 25, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2372, file: !533, line: 182, column: 7)
!2382 = !DILocation(line: 157, column: 15, scope: !2377, inlinedAt: !2380)
!2383 = !DILocation(line: 157, column: 12, scope: !2377, inlinedAt: !2380)
!2384 = !DILocation(line: 182, column: 7, scope: !2372)
!2385 = !DILocation(line: 184, column: 5, scope: !2381)
!2386 = !DILocation(line: 185, column: 1, scope: !2372)
!2387 = distinct !DISubprogram(name: "error_tail", scope: !533, file: !533, line: 219, type: !2355, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2388)
!2388 = !{!2389, !2390, !2391, !2392}
!2389 = !DILocalVariable(name: "status", arg: 1, scope: !2387, file: !533, line: 219, type: !93)
!2390 = !DILocalVariable(name: "errnum", arg: 2, scope: !2387, file: !533, line: 219, type: !93)
!2391 = !DILocalVariable(name: "message", arg: 3, scope: !2387, file: !533, line: 219, type: !150)
!2392 = !DILocalVariable(name: "args", arg: 4, scope: !2387, file: !533, line: 219, type: !543)
!2393 = !DILocation(line: 0, scope: !2387)
!2394 = !DILocation(line: 229, column: 13, scope: !2387)
!2395 = !DILocalVariable(name: "__stream", arg: 1, scope: !2396, file: !1009, line: 132, type: !2399)
!2396 = distinct !DISubprogram(name: "vfprintf", scope: !1009, file: !1009, line: 132, type: !2397, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2434)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!93, !2399, !1013, !543}
!2399 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2400)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2402)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2402, file: !242, line: 51, baseType: !93, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2402, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2402, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2402, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2402, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2402, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2402, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2402, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2402, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2402, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2402, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2402, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2402, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2402, file: !242, line: 70, baseType: !2418, size: 64, offset: 832)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2402, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2402, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2402, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2402, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2402, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2402, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2402, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2402, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2402, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2402, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2402, file: !242, line: 93, baseType: !2418, size: 64, offset: 1344)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2402, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2402, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2402, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2402, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2434 = !{!2395, !2435, !2436}
!2435 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2396, file: !1009, line: 133, type: !1013)
!2436 = !DILocalVariable(name: "__ap", arg: 3, scope: !2396, file: !1009, line: 133, type: !543)
!2437 = !DILocation(line: 0, scope: !2396, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 229, column: 3, scope: !2387)
!2439 = !DILocation(line: 135, column: 10, scope: !2396, inlinedAt: !2438)
!2440 = !DILocation(line: 232, column: 3, scope: !2387)
!2441 = !DILocation(line: 233, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2387, file: !533, line: 233, column: 7)
!2443 = !DILocation(line: 233, column: 7, scope: !2387)
!2444 = !DILocalVariable(name: "errnum", arg: 1, scope: !2445, file: !533, line: 188, type: !93)
!2445 = distinct !DISubprogram(name: "print_errno_message", scope: !533, file: !533, line: 188, type: !939, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2446)
!2446 = !{!2444, !2447, !2448}
!2447 = !DILocalVariable(name: "s", scope: !2445, file: !533, line: 190, type: !150)
!2448 = !DILocalVariable(name: "errbuf", scope: !2445, file: !533, line: 193, type: !2449)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2450)
!2450 = !{!2451}
!2451 = !DISubrange(count: 1024)
!2452 = !DILocation(line: 0, scope: !2445, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 234, column: 5, scope: !2442)
!2454 = !DILocation(line: 193, column: 3, scope: !2445, inlinedAt: !2453)
!2455 = !DILocation(line: 193, column: 8, scope: !2445, inlinedAt: !2453)
!2456 = !DILocation(line: 195, column: 7, scope: !2445, inlinedAt: !2453)
!2457 = !DILocation(line: 207, column: 9, scope: !2458, inlinedAt: !2453)
!2458 = distinct !DILexicalBlock(scope: !2445, file: !533, line: 207, column: 7)
!2459 = !DILocation(line: 207, column: 7, scope: !2445, inlinedAt: !2453)
!2460 = !DILocation(line: 208, column: 9, scope: !2458, inlinedAt: !2453)
!2461 = !DILocation(line: 208, column: 5, scope: !2458, inlinedAt: !2453)
!2462 = !DILocation(line: 214, column: 3, scope: !2445, inlinedAt: !2453)
!2463 = !DILocation(line: 216, column: 1, scope: !2445, inlinedAt: !2453)
!2464 = !DILocation(line: 234, column: 5, scope: !2442)
!2465 = !DILocation(line: 238, column: 3, scope: !2387)
!2466 = !DILocalVariable(name: "__c", arg: 1, scope: !2467, file: !1439, line: 101, type: !93)
!2467 = distinct !DISubprogram(name: "putc_unlocked", scope: !1439, file: !1439, line: 101, type: !2468, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!93, !93, !2400}
!2470 = !{!2466, !2471}
!2471 = !DILocalVariable(name: "__stream", arg: 2, scope: !2467, file: !1439, line: 101, type: !2400)
!2472 = !DILocation(line: 0, scope: !2467, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 238, column: 3, scope: !2387)
!2474 = !DILocation(line: 103, column: 10, scope: !2467, inlinedAt: !2473)
!2475 = !DILocation(line: 240, column: 3, scope: !2387)
!2476 = !DILocation(line: 241, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2387, file: !533, line: 241, column: 7)
!2478 = !DILocation(line: 241, column: 7, scope: !2387)
!2479 = !DILocation(line: 242, column: 5, scope: !2477)
!2480 = !DILocation(line: 243, column: 1, scope: !2387)
!2481 = !DISubprogram(name: "__vfprintf_chk", scope: !1009, file: !1009, line: 96, type: !2482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!93, !2399, !93, !1013, !543}
!2484 = !DISubprogram(name: "strerror_r", scope: !1144, file: !1144, line: 444, type: !2485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!144, !93, !144, !147}
!2487 = !DISubprogram(name: "fcntl", scope: !2488, file: !2488, line: 149, type: !2489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2488 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!93, !93, !93, null}
!2491 = distinct !DISubprogram(name: "error", scope: !533, file: !533, line: 285, type: !2492, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !93, !93, !150, null}
!2494 = !{!2495, !2496, !2497, !2498}
!2495 = !DILocalVariable(name: "status", arg: 1, scope: !2491, file: !533, line: 285, type: !93)
!2496 = !DILocalVariable(name: "errnum", arg: 2, scope: !2491, file: !533, line: 285, type: !93)
!2497 = !DILocalVariable(name: "message", arg: 3, scope: !2491, file: !533, line: 285, type: !150)
!2498 = !DILocalVariable(name: "ap", scope: !2491, file: !533, line: 287, type: !2499)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1018, line: 52, baseType: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2501, line: 14, baseType: !2502)
!2501 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !547, baseType: !2503)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 192, elements: !70)
!2504 = !DILocation(line: 0, scope: !2491)
!2505 = !DILocation(line: 287, column: 3, scope: !2491)
!2506 = !DILocation(line: 287, column: 11, scope: !2491)
!2507 = !DILocation(line: 288, column: 3, scope: !2491)
!2508 = !DILocation(line: 289, column: 3, scope: !2491)
!2509 = !DILocation(line: 290, column: 3, scope: !2491)
!2510 = !DILocation(line: 291, column: 1, scope: !2491)
!2511 = !DILocation(line: 0, scope: !540)
!2512 = !DILocation(line: 302, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !540, file: !533, line: 302, column: 7)
!2514 = !DILocation(line: 302, column: 7, scope: !540)
!2515 = !DILocation(line: 307, column: 11, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !533, line: 307, column: 11)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !533, line: 303, column: 5)
!2518 = !DILocation(line: 307, column: 27, scope: !2516)
!2519 = !DILocation(line: 308, column: 11, scope: !2516)
!2520 = !DILocation(line: 308, column: 28, scope: !2516)
!2521 = !DILocation(line: 308, column: 25, scope: !2516)
!2522 = !DILocation(line: 309, column: 15, scope: !2516)
!2523 = !DILocation(line: 309, column: 33, scope: !2516)
!2524 = !DILocation(line: 310, column: 19, scope: !2516)
!2525 = !DILocation(line: 311, column: 22, scope: !2516)
!2526 = !DILocation(line: 311, column: 56, scope: !2516)
!2527 = !DILocation(line: 307, column: 11, scope: !2517)
!2528 = !DILocation(line: 316, column: 21, scope: !2517)
!2529 = !DILocation(line: 317, column: 23, scope: !2517)
!2530 = !DILocation(line: 318, column: 5, scope: !2517)
!2531 = !DILocation(line: 327, column: 3, scope: !540)
!2532 = !DILocation(line: 331, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !540, file: !533, line: 331, column: 7)
!2534 = !DILocation(line: 331, column: 7, scope: !540)
!2535 = !DILocation(line: 332, column: 5, scope: !2533)
!2536 = !DILocation(line: 338, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !533, line: 334, column: 5)
!2538 = !DILocation(line: 346, column: 3, scope: !540)
!2539 = !DILocation(line: 350, column: 3, scope: !540)
!2540 = !DILocation(line: 356, column: 1, scope: !540)
!2541 = distinct !DISubprogram(name: "error_at_line", scope: !533, file: !533, line: 359, type: !2542, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !93, !93, !150, !99, !150, null}
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550}
!2545 = !DILocalVariable(name: "status", arg: 1, scope: !2541, file: !533, line: 359, type: !93)
!2546 = !DILocalVariable(name: "errnum", arg: 2, scope: !2541, file: !533, line: 359, type: !93)
!2547 = !DILocalVariable(name: "file_name", arg: 3, scope: !2541, file: !533, line: 359, type: !150)
!2548 = !DILocalVariable(name: "line_number", arg: 4, scope: !2541, file: !533, line: 360, type: !99)
!2549 = !DILocalVariable(name: "message", arg: 5, scope: !2541, file: !533, line: 360, type: !150)
!2550 = !DILocalVariable(name: "ap", scope: !2541, file: !533, line: 362, type: !2499)
!2551 = !DILocation(line: 0, scope: !2541)
!2552 = !DILocation(line: 362, column: 3, scope: !2541)
!2553 = !DILocation(line: 362, column: 11, scope: !2541)
!2554 = !DILocation(line: 363, column: 3, scope: !2541)
!2555 = !DILocation(line: 364, column: 3, scope: !2541)
!2556 = !DILocation(line: 366, column: 3, scope: !2541)
!2557 = !DILocation(line: 367, column: 1, scope: !2541)
!2558 = distinct !DISubprogram(name: "fdadvise", scope: !842, file: !842, line: 25, type: !2559, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !2563)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !93, !2561, !2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1018, line: 63, baseType: !264)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !135, line: 51, baseType: !134)
!2563 = !{!2564, !2565, !2566, !2567}
!2564 = !DILocalVariable(name: "fd", arg: 1, scope: !2558, file: !842, line: 25, type: !93)
!2565 = !DILocalVariable(name: "offset", arg: 2, scope: !2558, file: !842, line: 25, type: !2561)
!2566 = !DILocalVariable(name: "len", arg: 3, scope: !2558, file: !842, line: 25, type: !2561)
!2567 = !DILocalVariable(name: "advice", arg: 4, scope: !2558, file: !842, line: 25, type: !2562)
!2568 = !DILocation(line: 0, scope: !2558)
!2569 = !DILocation(line: 28, column: 3, scope: !2558)
!2570 = !DILocation(line: 30, column: 1, scope: !2558)
!2571 = !DISubprogram(name: "posix_fadvise", scope: !2488, file: !2488, line: 273, type: !2572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!93, !93, !2561, !2561, !93}
!2574 = distinct !DISubprogram(name: "fadvise", scope: !842, file: !842, line: 33, type: !2575, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !2611)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2577, !2562}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2579)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2579, file: !242, line: 51, baseType: !93, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2579, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2579, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2579, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2579, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2579, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2579, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2579, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2579, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2579, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2579, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2579, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2579, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2579, file: !242, line: 70, baseType: !2595, size: 64, offset: 832)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2579, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2579, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2579, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2579, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2579, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2579, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2579, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2579, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2579, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2579, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2579, file: !242, line: 93, baseType: !2595, size: 64, offset: 1344)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2579, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2579, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2579, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2579, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2611 = !{!2612, !2613}
!2612 = !DILocalVariable(name: "fp", arg: 1, scope: !2574, file: !842, line: 33, type: !2577)
!2613 = !DILocalVariable(name: "advice", arg: 2, scope: !2574, file: !842, line: 33, type: !2562)
!2614 = !DILocation(line: 0, scope: !2574)
!2615 = !DILocation(line: 35, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2574, file: !842, line: 35, column: 7)
!2617 = !DILocation(line: 35, column: 7, scope: !2574)
!2618 = !DILocation(line: 36, column: 15, scope: !2616)
!2619 = !DILocation(line: 0, scope: !2558, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 36, column: 5, scope: !2616)
!2621 = !DILocation(line: 28, column: 3, scope: !2558, inlinedAt: !2620)
!2622 = !DILocation(line: 36, column: 5, scope: !2616)
!2623 = !DILocation(line: 37, column: 1, scope: !2574)
!2624 = !DISubprogram(name: "fileno", scope: !1018, file: !1018, line: 809, type: !2625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!93, !2577}
!2627 = distinct !DISubprogram(name: "rpl_fclose", scope: !845, file: !845, line: 58, type: !2628, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !2664)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!93, !2630}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2632)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2632, file: !242, line: 51, baseType: !93, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2632, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2632, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2632, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2632, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2632, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2632, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2632, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2632, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2632, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2632, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2632, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2632, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2632, file: !242, line: 70, baseType: !2648, size: 64, offset: 832)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2632, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2632, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2632, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2632, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2632, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2632, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2632, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2632, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2632, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2632, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2632, file: !242, line: 93, baseType: !2648, size: 64, offset: 1344)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2632, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2632, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2632, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2632, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2664 = !{!2665, !2666, !2667, !2668}
!2665 = !DILocalVariable(name: "fp", arg: 1, scope: !2627, file: !845, line: 58, type: !2630)
!2666 = !DILocalVariable(name: "saved_errno", scope: !2627, file: !845, line: 60, type: !93)
!2667 = !DILocalVariable(name: "fd", scope: !2627, file: !845, line: 63, type: !93)
!2668 = !DILocalVariable(name: "result", scope: !2627, file: !845, line: 74, type: !93)
!2669 = !DILocation(line: 0, scope: !2627)
!2670 = !DILocation(line: 63, column: 12, scope: !2627)
!2671 = !DILocation(line: 64, column: 10, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2627, file: !845, line: 64, column: 7)
!2673 = !DILocation(line: 64, column: 7, scope: !2627)
!2674 = !DILocation(line: 65, column: 12, scope: !2672)
!2675 = !DILocation(line: 65, column: 5, scope: !2672)
!2676 = !DILocation(line: 70, column: 9, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2627, file: !845, line: 70, column: 7)
!2678 = !DILocation(line: 70, column: 23, scope: !2677)
!2679 = !DILocation(line: 70, column: 33, scope: !2677)
!2680 = !DILocation(line: 70, column: 26, scope: !2677)
!2681 = !DILocation(line: 70, column: 59, scope: !2677)
!2682 = !DILocation(line: 71, column: 7, scope: !2677)
!2683 = !DILocation(line: 71, column: 10, scope: !2677)
!2684 = !DILocation(line: 70, column: 7, scope: !2627)
!2685 = !DILocation(line: 100, column: 12, scope: !2627)
!2686 = !DILocation(line: 105, column: 7, scope: !2627)
!2687 = !DILocation(line: 72, column: 19, scope: !2677)
!2688 = !DILocation(line: 105, column: 19, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2627, file: !845, line: 105, column: 7)
!2690 = !DILocation(line: 107, column: 13, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2689, file: !845, line: 106, column: 5)
!2692 = !DILocation(line: 109, column: 5, scope: !2691)
!2693 = !DILocation(line: 112, column: 1, scope: !2627)
!2694 = !DISubprogram(name: "fclose", scope: !1018, file: !1018, line: 178, type: !2628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2695 = !DISubprogram(name: "__freading", scope: !2696, file: !2696, line: 51, type: !2628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2696 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2697 = !DISubprogram(name: "lseek", scope: !2353, file: !2353, line: 339, type: !2698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!264, !93, !264, !93}
!2700 = distinct !DISubprogram(name: "rpl_fflush", scope: !847, file: !847, line: 130, type: !2701, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !2737)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!93, !2703}
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2705)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2705, file: !242, line: 51, baseType: !93, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2705, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2705, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2705, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2705, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2705, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2705, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2705, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2705, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2705, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2705, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2705, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2705, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2705, file: !242, line: 70, baseType: !2721, size: 64, offset: 832)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2705, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2705, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2705, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2705, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2705, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2705, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2705, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2705, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2705, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2705, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2705, file: !242, line: 93, baseType: !2721, size: 64, offset: 1344)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2705, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2705, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2705, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2705, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2737 = !{!2738}
!2738 = !DILocalVariable(name: "stream", arg: 1, scope: !2700, file: !847, line: 130, type: !2703)
!2739 = !DILocation(line: 0, scope: !2700)
!2740 = !DILocation(line: 151, column: 14, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2700, file: !847, line: 151, column: 7)
!2742 = !DILocation(line: 151, column: 22, scope: !2741)
!2743 = !DILocation(line: 151, column: 27, scope: !2741)
!2744 = !DILocation(line: 151, column: 7, scope: !2700)
!2745 = !DILocation(line: 152, column: 12, scope: !2741)
!2746 = !DILocation(line: 152, column: 5, scope: !2741)
!2747 = !DILocalVariable(name: "fp", arg: 1, scope: !2748, file: !847, line: 42, type: !2703)
!2748 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !847, file: !847, line: 42, type: !2749, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !2703}
!2751 = !{!2747}
!2752 = !DILocation(line: 0, scope: !2748, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 157, column: 3, scope: !2700)
!2754 = !DILocation(line: 44, column: 12, scope: !2755, inlinedAt: !2753)
!2755 = distinct !DILexicalBlock(scope: !2748, file: !847, line: 44, column: 7)
!2756 = !DILocation(line: 44, column: 19, scope: !2755, inlinedAt: !2753)
!2757 = !DILocation(line: 44, column: 7, scope: !2748, inlinedAt: !2753)
!2758 = !DILocation(line: 46, column: 5, scope: !2755, inlinedAt: !2753)
!2759 = !DILocation(line: 159, column: 10, scope: !2700)
!2760 = !DILocation(line: 159, column: 3, scope: !2700)
!2761 = !DILocation(line: 236, column: 1, scope: !2700)
!2762 = !DISubprogram(name: "fflush", scope: !1018, file: !1018, line: 230, type: !2701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2763 = distinct !DISubprogram(name: "fpurge", scope: !850, file: !850, line: 32, type: !2764, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !2800)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!93, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2768)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2769)
!2769 = !{!2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2768, file: !242, line: 51, baseType: !93, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2768, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2768, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2768, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2768, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2768, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2768, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2768, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2768, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2768, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2768, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2768, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2768, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2768, file: !242, line: 70, baseType: !2784, size: 64, offset: 832)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2768, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2768, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2768, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2768, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2768, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2768, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2768, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2768, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2768, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2768, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2768, file: !242, line: 93, baseType: !2784, size: 64, offset: 1344)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2768, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2768, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2768, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2768, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2800 = !{!2801}
!2801 = !DILocalVariable(name: "fp", arg: 1, scope: !2763, file: !850, line: 32, type: !2766)
!2802 = !DILocation(line: 0, scope: !2763)
!2803 = !DILocation(line: 36, column: 3, scope: !2763)
!2804 = !DILocation(line: 38, column: 3, scope: !2763)
!2805 = !DISubprogram(name: "__fpurge", scope: !2696, file: !2696, line: 72, type: !2806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{null, !2766}
!2808 = distinct !DISubprogram(name: "rpl_fseeko", scope: !852, file: !852, line: 28, type: !2809, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !2845)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!93, !2811, !2561, !93}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2813)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2814)
!2814 = !{!2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2813, file: !242, line: 51, baseType: !93, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2813, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2813, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2813, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2813, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2813, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2813, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2813, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2813, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2813, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2813, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2813, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2813, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2813, file: !242, line: 70, baseType: !2829, size: 64, offset: 832)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2813, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2813, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2813, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2813, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2813, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2813, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2813, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2813, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2813, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2813, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2813, file: !242, line: 93, baseType: !2829, size: 64, offset: 1344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2813, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2813, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2813, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2813, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2845 = !{!2846, !2847, !2848, !2849}
!2846 = !DILocalVariable(name: "fp", arg: 1, scope: !2808, file: !852, line: 28, type: !2811)
!2847 = !DILocalVariable(name: "offset", arg: 2, scope: !2808, file: !852, line: 28, type: !2561)
!2848 = !DILocalVariable(name: "whence", arg: 3, scope: !2808, file: !852, line: 28, type: !93)
!2849 = !DILocalVariable(name: "pos", scope: !2850, file: !852, line: 123, type: !2561)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !852, line: 119, column: 5)
!2851 = distinct !DILexicalBlock(scope: !2808, file: !852, line: 55, column: 7)
!2852 = !DILocation(line: 0, scope: !2808)
!2853 = !DILocation(line: 55, column: 12, scope: !2851)
!2854 = !DILocation(line: 55, column: 33, scope: !2851)
!2855 = !DILocation(line: 55, column: 25, scope: !2851)
!2856 = !DILocation(line: 56, column: 7, scope: !2851)
!2857 = !DILocation(line: 56, column: 15, scope: !2851)
!2858 = !DILocation(line: 56, column: 37, scope: !2851)
!2859 = !{!1447, !950, i64 32}
!2860 = !DILocation(line: 56, column: 29, scope: !2851)
!2861 = !DILocation(line: 57, column: 7, scope: !2851)
!2862 = !DILocation(line: 57, column: 15, scope: !2851)
!2863 = !{!1447, !950, i64 72}
!2864 = !DILocation(line: 57, column: 29, scope: !2851)
!2865 = !DILocation(line: 55, column: 7, scope: !2808)
!2866 = !DILocation(line: 123, column: 26, scope: !2850)
!2867 = !DILocation(line: 123, column: 19, scope: !2850)
!2868 = !DILocation(line: 0, scope: !2850)
!2869 = !DILocation(line: 124, column: 15, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2850, file: !852, line: 124, column: 11)
!2871 = !DILocation(line: 124, column: 11, scope: !2850)
!2872 = !DILocation(line: 135, column: 19, scope: !2850)
!2873 = !DILocation(line: 136, column: 12, scope: !2850)
!2874 = !DILocation(line: 136, column: 20, scope: !2850)
!2875 = !{!1447, !1448, i64 144}
!2876 = !DILocation(line: 167, column: 7, scope: !2850)
!2877 = !DILocation(line: 169, column: 10, scope: !2808)
!2878 = !DILocation(line: 169, column: 3, scope: !2808)
!2879 = !DILocation(line: 170, column: 1, scope: !2808)
!2880 = !DISubprogram(name: "fseeko", scope: !1018, file: !1018, line: 736, type: !2881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!93, !2811, !264, !93}
!2883 = distinct !DISubprogram(name: "getprogname", scope: !854, file: !854, line: 54, type: !2884, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !958)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!150}
!2886 = !DILocation(line: 58, column: 10, scope: !2883)
!2887 = !DILocation(line: 58, column: 3, scope: !2883)
!2888 = distinct !DISubprogram(name: "set_program_name", scope: !582, file: !582, line: 37, type: !974, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DILocalVariable(name: "argv0", arg: 1, scope: !2888, file: !582, line: 37, type: !150)
!2891 = !DILocalVariable(name: "slash", scope: !2888, file: !582, line: 44, type: !150)
!2892 = !DILocalVariable(name: "base", scope: !2888, file: !582, line: 45, type: !150)
!2893 = !DILocation(line: 0, scope: !2888)
!2894 = !DILocation(line: 44, column: 23, scope: !2888)
!2895 = !DILocation(line: 45, column: 22, scope: !2888)
!2896 = !DILocation(line: 46, column: 17, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2888, file: !582, line: 46, column: 7)
!2898 = !DILocation(line: 46, column: 9, scope: !2897)
!2899 = !DILocation(line: 46, column: 25, scope: !2897)
!2900 = !DILocation(line: 46, column: 40, scope: !2897)
!2901 = !DILocalVariable(name: "__s1", arg: 1, scope: !2902, file: !1036, line: 974, type: !1172)
!2902 = distinct !DISubprogram(name: "memeq", scope: !1036, file: !1036, line: 974, type: !2903, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!195, !1172, !1172, !147}
!2905 = !{!2901, !2906, !2907}
!2906 = !DILocalVariable(name: "__s2", arg: 2, scope: !2902, file: !1036, line: 974, type: !1172)
!2907 = !DILocalVariable(name: "__n", arg: 3, scope: !2902, file: !1036, line: 974, type: !147)
!2908 = !DILocation(line: 0, scope: !2902, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 46, column: 28, scope: !2897)
!2910 = !DILocation(line: 976, column: 11, scope: !2902, inlinedAt: !2909)
!2911 = !DILocation(line: 976, column: 10, scope: !2902, inlinedAt: !2909)
!2912 = !DILocation(line: 46, column: 7, scope: !2888)
!2913 = !DILocation(line: 49, column: 11, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !582, line: 49, column: 11)
!2915 = distinct !DILexicalBlock(scope: !2897, file: !582, line: 47, column: 5)
!2916 = !DILocation(line: 49, column: 36, scope: !2914)
!2917 = !DILocation(line: 49, column: 11, scope: !2915)
!2918 = !DILocation(line: 65, column: 16, scope: !2888)
!2919 = !DILocation(line: 71, column: 27, scope: !2888)
!2920 = !DILocation(line: 74, column: 33, scope: !2888)
!2921 = !DILocation(line: 76, column: 1, scope: !2888)
!2922 = !DISubprogram(name: "strrchr", scope: !1144, file: !1144, line: 273, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2923 = !DILocation(line: 0, scope: !591)
!2924 = !DILocation(line: 40, column: 29, scope: !591)
!2925 = !DILocation(line: 41, column: 19, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !591, file: !592, line: 41, column: 7)
!2927 = !DILocation(line: 41, column: 7, scope: !591)
!2928 = !DILocation(line: 47, column: 3, scope: !591)
!2929 = !DILocation(line: 48, column: 3, scope: !591)
!2930 = !DILocation(line: 48, column: 13, scope: !591)
!2931 = !DILocalVariable(name: "ps", arg: 1, scope: !2932, file: !2933, line: 1135, type: !2936)
!2932 = distinct !DISubprogram(name: "mbszero", scope: !2933, file: !2933, line: 1135, type: !2934, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !2937)
!2933 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2934 = !DISubroutineType(types: !2935)
!2935 = !{null, !2936}
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!2937 = !{!2931}
!2938 = !DILocation(line: 0, scope: !2932, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 48, column: 18, scope: !591)
!2940 = !DILocalVariable(name: "__dest", arg: 1, scope: !2941, file: !2272, line: 57, type: !145)
!2941 = distinct !DISubprogram(name: "memset", scope: !2272, file: !2272, line: 57, type: !2942, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!145, !145, !93, !147}
!2944 = !{!2940, !2945, !2946}
!2945 = !DILocalVariable(name: "__ch", arg: 2, scope: !2941, file: !2272, line: 57, type: !93)
!2946 = !DILocalVariable(name: "__len", arg: 3, scope: !2941, file: !2272, line: 57, type: !147)
!2947 = !DILocation(line: 0, scope: !2941, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 1137, column: 3, scope: !2932, inlinedAt: !2939)
!2949 = !DILocation(line: 59, column: 10, scope: !2941, inlinedAt: !2948)
!2950 = !DILocation(line: 49, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !591, file: !592, line: 49, column: 7)
!2952 = !DILocation(line: 49, column: 39, scope: !2951)
!2953 = !DILocation(line: 49, column: 44, scope: !2951)
!2954 = !DILocation(line: 54, column: 1, scope: !591)
!2955 = !DISubprogram(name: "mbrtoc32", scope: !603, file: !603, line: 57, type: !2956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!147, !2958, !1013, !147, !2960}
!2958 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2959)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2936)
!2961 = distinct !DISubprogram(name: "clone_quoting_options", scope: !622, file: !622, line: 113, type: !2962, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !2965)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!2964, !2964}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!2965 = !{!2966, !2967, !2968}
!2966 = !DILocalVariable(name: "o", arg: 1, scope: !2961, file: !622, line: 113, type: !2964)
!2967 = !DILocalVariable(name: "saved_errno", scope: !2961, file: !622, line: 115, type: !93)
!2968 = !DILocalVariable(name: "p", scope: !2961, file: !622, line: 116, type: !2964)
!2969 = !DILocation(line: 0, scope: !2961)
!2970 = !DILocation(line: 115, column: 21, scope: !2961)
!2971 = !DILocation(line: 116, column: 40, scope: !2961)
!2972 = !DILocation(line: 116, column: 31, scope: !2961)
!2973 = !DILocation(line: 118, column: 9, scope: !2961)
!2974 = !DILocation(line: 119, column: 3, scope: !2961)
!2975 = distinct !DISubprogram(name: "get_quoting_style", scope: !622, file: !622, line: 124, type: !2976, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !2980)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!105, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!2980 = !{!2981}
!2981 = !DILocalVariable(name: "o", arg: 1, scope: !2975, file: !622, line: 124, type: !2978)
!2982 = !DILocation(line: 0, scope: !2975)
!2983 = !DILocation(line: 126, column: 11, scope: !2975)
!2984 = !DILocation(line: 126, column: 46, scope: !2975)
!2985 = !{!2986, !951, i64 0}
!2986 = !{!"quoting_options", !951, i64 0, !1024, i64 4, !951, i64 8, !950, i64 40, !950, i64 48}
!2987 = !DILocation(line: 126, column: 3, scope: !2975)
!2988 = distinct !DISubprogram(name: "set_quoting_style", scope: !622, file: !622, line: 132, type: !2989, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2964, !105}
!2991 = !{!2992, !2993}
!2992 = !DILocalVariable(name: "o", arg: 1, scope: !2988, file: !622, line: 132, type: !2964)
!2993 = !DILocalVariable(name: "s", arg: 2, scope: !2988, file: !622, line: 132, type: !105)
!2994 = !DILocation(line: 0, scope: !2988)
!2995 = !DILocation(line: 134, column: 4, scope: !2988)
!2996 = !DILocation(line: 134, column: 45, scope: !2988)
!2997 = !DILocation(line: 135, column: 1, scope: !2988)
!2998 = distinct !DISubprogram(name: "set_char_quoting", scope: !622, file: !622, line: 143, type: !2999, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!93, !2964, !4, !93}
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3008, !3009}
!3002 = !DILocalVariable(name: "o", arg: 1, scope: !2998, file: !622, line: 143, type: !2964)
!3003 = !DILocalVariable(name: "c", arg: 2, scope: !2998, file: !622, line: 143, type: !4)
!3004 = !DILocalVariable(name: "i", arg: 3, scope: !2998, file: !622, line: 143, type: !93)
!3005 = !DILocalVariable(name: "uc", scope: !2998, file: !622, line: 145, type: !152)
!3006 = !DILocalVariable(name: "p", scope: !2998, file: !622, line: 146, type: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!3008 = !DILocalVariable(name: "shift", scope: !2998, file: !622, line: 148, type: !93)
!3009 = !DILocalVariable(name: "r", scope: !2998, file: !622, line: 149, type: !99)
!3010 = !DILocation(line: 0, scope: !2998)
!3011 = !DILocation(line: 147, column: 6, scope: !2998)
!3012 = !DILocation(line: 147, column: 41, scope: !2998)
!3013 = !DILocation(line: 147, column: 62, scope: !2998)
!3014 = !DILocation(line: 147, column: 57, scope: !2998)
!3015 = !DILocation(line: 148, column: 15, scope: !2998)
!3016 = !DILocation(line: 149, column: 21, scope: !2998)
!3017 = !DILocation(line: 149, column: 24, scope: !2998)
!3018 = !DILocation(line: 149, column: 34, scope: !2998)
!3019 = !DILocation(line: 150, column: 19, scope: !2998)
!3020 = !DILocation(line: 150, column: 24, scope: !2998)
!3021 = !DILocation(line: 150, column: 6, scope: !2998)
!3022 = !DILocation(line: 151, column: 3, scope: !2998)
!3023 = distinct !DISubprogram(name: "set_quoting_flags", scope: !622, file: !622, line: 159, type: !3024, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!93, !2964, !93}
!3026 = !{!3027, !3028, !3029}
!3027 = !DILocalVariable(name: "o", arg: 1, scope: !3023, file: !622, line: 159, type: !2964)
!3028 = !DILocalVariable(name: "i", arg: 2, scope: !3023, file: !622, line: 159, type: !93)
!3029 = !DILocalVariable(name: "r", scope: !3023, file: !622, line: 163, type: !93)
!3030 = !DILocation(line: 0, scope: !3023)
!3031 = !DILocation(line: 161, column: 8, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3023, file: !622, line: 161, column: 7)
!3033 = !DILocation(line: 161, column: 7, scope: !3023)
!3034 = !DILocation(line: 163, column: 14, scope: !3023)
!3035 = !{!2986, !1024, i64 4}
!3036 = !DILocation(line: 164, column: 12, scope: !3023)
!3037 = !DILocation(line: 165, column: 3, scope: !3023)
!3038 = distinct !DISubprogram(name: "set_custom_quoting", scope: !622, file: !622, line: 169, type: !3039, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2964, !150, !150}
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "o", arg: 1, scope: !3038, file: !622, line: 169, type: !2964)
!3043 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3038, file: !622, line: 170, type: !150)
!3044 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3038, file: !622, line: 170, type: !150)
!3045 = !DILocation(line: 0, scope: !3038)
!3046 = !DILocation(line: 172, column: 8, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3038, file: !622, line: 172, column: 7)
!3048 = !DILocation(line: 172, column: 7, scope: !3038)
!3049 = !DILocation(line: 174, column: 12, scope: !3038)
!3050 = !DILocation(line: 175, column: 8, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3038, file: !622, line: 175, column: 7)
!3052 = !DILocation(line: 175, column: 19, scope: !3051)
!3053 = !DILocation(line: 176, column: 5, scope: !3051)
!3054 = !DILocation(line: 177, column: 6, scope: !3038)
!3055 = !DILocation(line: 177, column: 17, scope: !3038)
!3056 = !{!2986, !950, i64 40}
!3057 = !DILocation(line: 178, column: 6, scope: !3038)
!3058 = !DILocation(line: 178, column: 18, scope: !3038)
!3059 = !{!2986, !950, i64 48}
!3060 = !DILocation(line: 179, column: 1, scope: !3038)
!3061 = !DISubprogram(name: "abort", scope: !1148, file: !1148, line: 598, type: !577, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !958)
!3062 = distinct !DISubprogram(name: "quotearg_buffer", scope: !622, file: !622, line: 774, type: !3063, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!147, !144, !147, !150, !147, !2978}
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073}
!3066 = !DILocalVariable(name: "buffer", arg: 1, scope: !3062, file: !622, line: 774, type: !144)
!3067 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3062, file: !622, line: 774, type: !147)
!3068 = !DILocalVariable(name: "arg", arg: 3, scope: !3062, file: !622, line: 775, type: !150)
!3069 = !DILocalVariable(name: "argsize", arg: 4, scope: !3062, file: !622, line: 775, type: !147)
!3070 = !DILocalVariable(name: "o", arg: 5, scope: !3062, file: !622, line: 776, type: !2978)
!3071 = !DILocalVariable(name: "p", scope: !3062, file: !622, line: 778, type: !2978)
!3072 = !DILocalVariable(name: "saved_errno", scope: !3062, file: !622, line: 779, type: !93)
!3073 = !DILocalVariable(name: "r", scope: !3062, file: !622, line: 780, type: !147)
!3074 = !DILocation(line: 0, scope: !3062)
!3075 = !DILocation(line: 778, column: 37, scope: !3062)
!3076 = !DILocation(line: 779, column: 21, scope: !3062)
!3077 = !DILocation(line: 781, column: 43, scope: !3062)
!3078 = !DILocation(line: 781, column: 53, scope: !3062)
!3079 = !DILocation(line: 781, column: 63, scope: !3062)
!3080 = !DILocation(line: 782, column: 43, scope: !3062)
!3081 = !DILocation(line: 782, column: 58, scope: !3062)
!3082 = !DILocation(line: 780, column: 14, scope: !3062)
!3083 = !DILocation(line: 783, column: 9, scope: !3062)
!3084 = !DILocation(line: 784, column: 3, scope: !3062)
!3085 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !622, file: !622, line: 251, type: !3086, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3090)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!147, !144, !147, !150, !147, !105, !93, !3088, !150, !150}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3115, !3117, !3120, !3121, !3122, !3123, !3126, !3127, !3130, !3134, !3135, !3143, !3146, !3147, !3149, !3150, !3151, !3152}
!3091 = !DILocalVariable(name: "buffer", arg: 1, scope: !3085, file: !622, line: 251, type: !144)
!3092 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3085, file: !622, line: 251, type: !147)
!3093 = !DILocalVariable(name: "arg", arg: 3, scope: !3085, file: !622, line: 252, type: !150)
!3094 = !DILocalVariable(name: "argsize", arg: 4, scope: !3085, file: !622, line: 252, type: !147)
!3095 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3085, file: !622, line: 253, type: !105)
!3096 = !DILocalVariable(name: "flags", arg: 6, scope: !3085, file: !622, line: 253, type: !93)
!3097 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3085, file: !622, line: 254, type: !3088)
!3098 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3085, file: !622, line: 255, type: !150)
!3099 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3085, file: !622, line: 256, type: !150)
!3100 = !DILocalVariable(name: "unibyte_locale", scope: !3085, file: !622, line: 258, type: !195)
!3101 = !DILocalVariable(name: "len", scope: !3085, file: !622, line: 260, type: !147)
!3102 = !DILocalVariable(name: "orig_buffersize", scope: !3085, file: !622, line: 261, type: !147)
!3103 = !DILocalVariable(name: "quote_string", scope: !3085, file: !622, line: 262, type: !150)
!3104 = !DILocalVariable(name: "quote_string_len", scope: !3085, file: !622, line: 263, type: !147)
!3105 = !DILocalVariable(name: "backslash_escapes", scope: !3085, file: !622, line: 264, type: !195)
!3106 = !DILocalVariable(name: "elide_outer_quotes", scope: !3085, file: !622, line: 265, type: !195)
!3107 = !DILocalVariable(name: "encountered_single_quote", scope: !3085, file: !622, line: 266, type: !195)
!3108 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3085, file: !622, line: 267, type: !195)
!3109 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3085, file: !622, line: 309, type: !195)
!3110 = !DILocalVariable(name: "lq", scope: !3111, file: !622, line: 361, type: !150)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !622, line: 361, column: 11)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !622, line: 360, column: 13)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !622, line: 333, column: 7)
!3114 = distinct !DILexicalBlock(scope: !3085, file: !622, line: 312, column: 5)
!3115 = !DILocalVariable(name: "i", scope: !3116, file: !622, line: 395, type: !147)
!3116 = distinct !DILexicalBlock(scope: !3085, file: !622, line: 395, column: 3)
!3117 = !DILocalVariable(name: "is_right_quote", scope: !3118, file: !622, line: 397, type: !195)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !622, line: 396, column: 5)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !622, line: 395, column: 3)
!3120 = !DILocalVariable(name: "escaping", scope: !3118, file: !622, line: 398, type: !195)
!3121 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3118, file: !622, line: 399, type: !195)
!3122 = !DILocalVariable(name: "c", scope: !3118, file: !622, line: 417, type: !152)
!3123 = !DILocalVariable(name: "m", scope: !3124, file: !622, line: 598, type: !147)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !622, line: 596, column: 11)
!3125 = distinct !DILexicalBlock(scope: !3118, file: !622, line: 419, column: 9)
!3126 = !DILocalVariable(name: "printable", scope: !3124, file: !622, line: 600, type: !195)
!3127 = !DILocalVariable(name: "mbs", scope: !3128, file: !622, line: 609, type: !692)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !622, line: 608, column: 15)
!3129 = distinct !DILexicalBlock(scope: !3124, file: !622, line: 602, column: 17)
!3130 = !DILocalVariable(name: "w", scope: !3131, file: !622, line: 618, type: !602)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !622, line: 617, column: 19)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !622, line: 616, column: 17)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !622, line: 616, column: 17)
!3134 = !DILocalVariable(name: "bytes", scope: !3131, file: !622, line: 619, type: !147)
!3135 = !DILocalVariable(name: "j", scope: !3136, file: !622, line: 648, type: !147)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !622, line: 648, column: 29)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !622, line: 647, column: 27)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !622, line: 645, column: 29)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !622, line: 636, column: 23)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !622, line: 628, column: 30)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !622, line: 623, column: 30)
!3142 = distinct !DILexicalBlock(scope: !3131, file: !622, line: 621, column: 25)
!3143 = !DILocalVariable(name: "ilim", scope: !3144, file: !622, line: 674, type: !147)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !622, line: 671, column: 15)
!3145 = distinct !DILexicalBlock(scope: !3124, file: !622, line: 670, column: 17)
!3146 = !DILabel(scope: !3085, name: "process_input", file: !622, line: 308)
!3147 = !DILabel(scope: !3148, name: "c_and_shell_escape", file: !622, line: 502)
!3148 = distinct !DILexicalBlock(scope: !3125, file: !622, line: 478, column: 9)
!3149 = !DILabel(scope: !3148, name: "c_escape", file: !622, line: 507)
!3150 = !DILabel(scope: !3118, name: "store_escape", file: !622, line: 709)
!3151 = !DILabel(scope: !3118, name: "store_c", file: !622, line: 712)
!3152 = !DILabel(scope: !3085, name: "force_outer_quoting_style", file: !622, line: 753)
!3153 = !DILocation(line: 0, scope: !3085)
!3154 = !DILocation(line: 258, column: 25, scope: !3085)
!3155 = !DILocation(line: 258, column: 36, scope: !3085)
!3156 = !DILocation(line: 265, column: 8, scope: !3085)
!3157 = !DILocation(line: 267, column: 3, scope: !3085)
!3158 = !DILocation(line: 261, column: 10, scope: !3085)
!3159 = !DILocation(line: 262, column: 15, scope: !3085)
!3160 = !DILocation(line: 263, column: 10, scope: !3085)
!3161 = !DILocation(line: 264, column: 8, scope: !3085)
!3162 = !DILocation(line: 266, column: 8, scope: !3085)
!3163 = !DILocation(line: 267, column: 8, scope: !3085)
!3164 = !DILocation(line: 308, column: 2, scope: !3085)
!3165 = !DILocation(line: 311, column: 3, scope: !3085)
!3166 = !DILocation(line: 318, column: 11, scope: !3114)
!3167 = !DILocation(line: 318, column: 12, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3114, file: !622, line: 318, column: 11)
!3169 = !DILocation(line: 319, column: 9, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !622, line: 319, column: 9)
!3171 = distinct !DILexicalBlock(scope: !3168, file: !622, line: 319, column: 9)
!3172 = !DILocation(line: 319, column: 9, scope: !3171)
!3173 = !DILocation(line: 0, scope: !683, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 357, column: 26, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !622, line: 335, column: 11)
!3176 = distinct !DILexicalBlock(scope: !3113, file: !622, line: 334, column: 13)
!3177 = !DILocation(line: 199, column: 29, scope: !683, inlinedAt: !3174)
!3178 = !DILocation(line: 201, column: 19, scope: !3179, inlinedAt: !3174)
!3179 = distinct !DILexicalBlock(scope: !683, file: !622, line: 201, column: 7)
!3180 = !DILocation(line: 201, column: 7, scope: !683, inlinedAt: !3174)
!3181 = !DILocation(line: 229, column: 3, scope: !683, inlinedAt: !3174)
!3182 = !DILocation(line: 230, column: 3, scope: !683, inlinedAt: !3174)
!3183 = !DILocation(line: 230, column: 13, scope: !683, inlinedAt: !3174)
!3184 = !DILocalVariable(name: "ps", arg: 1, scope: !3185, file: !2933, line: 1135, type: !3188)
!3185 = distinct !DISubprogram(name: "mbszero", scope: !2933, file: !2933, line: 1135, type: !3186, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3189)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{null, !3188}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!3189 = !{!3184}
!3190 = !DILocation(line: 0, scope: !3185, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 230, column: 18, scope: !683, inlinedAt: !3174)
!3192 = !DILocalVariable(name: "__dest", arg: 1, scope: !3193, file: !2272, line: 57, type: !145)
!3193 = distinct !DISubprogram(name: "memset", scope: !2272, file: !2272, line: 57, type: !2942, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3194)
!3194 = !{!3192, !3195, !3196}
!3195 = !DILocalVariable(name: "__ch", arg: 2, scope: !3193, file: !2272, line: 57, type: !93)
!3196 = !DILocalVariable(name: "__len", arg: 3, scope: !3193, file: !2272, line: 57, type: !147)
!3197 = !DILocation(line: 0, scope: !3193, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 1137, column: 3, scope: !3185, inlinedAt: !3191)
!3199 = !DILocation(line: 59, column: 10, scope: !3193, inlinedAt: !3198)
!3200 = !DILocation(line: 231, column: 7, scope: !3201, inlinedAt: !3174)
!3201 = distinct !DILexicalBlock(scope: !683, file: !622, line: 231, column: 7)
!3202 = !DILocation(line: 231, column: 40, scope: !3201, inlinedAt: !3174)
!3203 = !DILocation(line: 231, column: 45, scope: !3201, inlinedAt: !3174)
!3204 = !DILocation(line: 235, column: 1, scope: !683, inlinedAt: !3174)
!3205 = !DILocation(line: 0, scope: !683, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 358, column: 27, scope: !3175)
!3207 = !DILocation(line: 199, column: 29, scope: !683, inlinedAt: !3206)
!3208 = !DILocation(line: 201, column: 19, scope: !3179, inlinedAt: !3206)
!3209 = !DILocation(line: 201, column: 7, scope: !683, inlinedAt: !3206)
!3210 = !DILocation(line: 229, column: 3, scope: !683, inlinedAt: !3206)
!3211 = !DILocation(line: 230, column: 3, scope: !683, inlinedAt: !3206)
!3212 = !DILocation(line: 230, column: 13, scope: !683, inlinedAt: !3206)
!3213 = !DILocation(line: 0, scope: !3185, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 230, column: 18, scope: !683, inlinedAt: !3206)
!3215 = !DILocation(line: 0, scope: !3193, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 1137, column: 3, scope: !3185, inlinedAt: !3214)
!3217 = !DILocation(line: 59, column: 10, scope: !3193, inlinedAt: !3216)
!3218 = !DILocation(line: 231, column: 7, scope: !3201, inlinedAt: !3206)
!3219 = !DILocation(line: 231, column: 40, scope: !3201, inlinedAt: !3206)
!3220 = !DILocation(line: 231, column: 45, scope: !3201, inlinedAt: !3206)
!3221 = !DILocation(line: 235, column: 1, scope: !683, inlinedAt: !3206)
!3222 = !DILocation(line: 360, column: 14, scope: !3112)
!3223 = !DILocation(line: 360, column: 13, scope: !3113)
!3224 = !DILocation(line: 0, scope: !3111)
!3225 = !DILocation(line: 361, column: 45, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3111, file: !622, line: 361, column: 11)
!3227 = !DILocation(line: 361, column: 11, scope: !3111)
!3228 = !DILocation(line: 362, column: 13, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !622, line: 362, column: 13)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !622, line: 362, column: 13)
!3231 = !DILocation(line: 362, column: 13, scope: !3230)
!3232 = !DILocation(line: 361, column: 52, scope: !3226)
!3233 = distinct !{!3233, !3227, !3234, !1070}
!3234 = !DILocation(line: 362, column: 13, scope: !3111)
!3235 = !DILocation(line: 260, column: 10, scope: !3085)
!3236 = !DILocation(line: 365, column: 28, scope: !3113)
!3237 = !DILocation(line: 367, column: 7, scope: !3114)
!3238 = !DILocation(line: 370, column: 7, scope: !3114)
!3239 = !DILocation(line: 373, column: 7, scope: !3114)
!3240 = !DILocation(line: 376, column: 12, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3114, file: !622, line: 376, column: 11)
!3242 = !DILocation(line: 376, column: 11, scope: !3114)
!3243 = !DILocation(line: 381, column: 12, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3114, file: !622, line: 381, column: 11)
!3245 = !DILocation(line: 381, column: 11, scope: !3114)
!3246 = !DILocation(line: 382, column: 9, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !622, line: 382, column: 9)
!3248 = distinct !DILexicalBlock(scope: !3244, file: !622, line: 382, column: 9)
!3249 = !DILocation(line: 382, column: 9, scope: !3248)
!3250 = !DILocation(line: 389, column: 7, scope: !3114)
!3251 = !DILocation(line: 392, column: 7, scope: !3114)
!3252 = !DILocation(line: 0, scope: !3116)
!3253 = !DILocation(line: 395, column: 8, scope: !3116)
!3254 = !DILocation(line: 309, column: 8, scope: !3085)
!3255 = !DILocation(line: 395, scope: !3116)
!3256 = !DILocation(line: 395, column: 34, scope: !3119)
!3257 = !DILocation(line: 395, column: 26, scope: !3119)
!3258 = !DILocation(line: 395, column: 48, scope: !3119)
!3259 = !DILocation(line: 395, column: 55, scope: !3119)
!3260 = !DILocation(line: 395, column: 3, scope: !3116)
!3261 = !DILocation(line: 395, column: 67, scope: !3119)
!3262 = !DILocation(line: 0, scope: !3118)
!3263 = !DILocation(line: 402, column: 11, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3118, file: !622, line: 401, column: 11)
!3265 = !DILocation(line: 404, column: 17, scope: !3264)
!3266 = !DILocation(line: 405, column: 39, scope: !3264)
!3267 = !DILocation(line: 409, column: 32, scope: !3264)
!3268 = !DILocation(line: 405, column: 19, scope: !3264)
!3269 = !DILocation(line: 405, column: 15, scope: !3264)
!3270 = !DILocation(line: 410, column: 11, scope: !3264)
!3271 = !DILocation(line: 410, column: 25, scope: !3264)
!3272 = !DILocalVariable(name: "__s1", arg: 1, scope: !3273, file: !1036, line: 974, type: !1172)
!3273 = distinct !DISubprogram(name: "memeq", scope: !1036, file: !1036, line: 974, type: !2903, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3274)
!3274 = !{!3272, !3275, !3276}
!3275 = !DILocalVariable(name: "__s2", arg: 2, scope: !3273, file: !1036, line: 974, type: !1172)
!3276 = !DILocalVariable(name: "__n", arg: 3, scope: !3273, file: !1036, line: 974, type: !147)
!3277 = !DILocation(line: 0, scope: !3273, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 410, column: 14, scope: !3264)
!3279 = !DILocation(line: 976, column: 11, scope: !3273, inlinedAt: !3278)
!3280 = !DILocation(line: 976, column: 10, scope: !3273, inlinedAt: !3278)
!3281 = !DILocation(line: 401, column: 11, scope: !3118)
!3282 = !DILocation(line: 417, column: 25, scope: !3118)
!3283 = !DILocation(line: 418, column: 7, scope: !3118)
!3284 = !DILocation(line: 421, column: 15, scope: !3125)
!3285 = !DILocation(line: 423, column: 15, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !622, line: 423, column: 15)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !622, line: 422, column: 13)
!3288 = distinct !DILexicalBlock(scope: !3125, file: !622, line: 421, column: 15)
!3289 = !DILocation(line: 423, column: 15, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !622, line: 423, column: 15)
!3291 = !DILocation(line: 423, column: 15, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !622, line: 423, column: 15)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !622, line: 423, column: 15)
!3294 = distinct !DILexicalBlock(scope: !3290, file: !622, line: 423, column: 15)
!3295 = !DILocation(line: 423, column: 15, scope: !3293)
!3296 = !DILocation(line: 423, column: 15, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !622, line: 423, column: 15)
!3298 = distinct !DILexicalBlock(scope: !3294, file: !622, line: 423, column: 15)
!3299 = !DILocation(line: 423, column: 15, scope: !3298)
!3300 = !DILocation(line: 423, column: 15, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !622, line: 423, column: 15)
!3302 = distinct !DILexicalBlock(scope: !3294, file: !622, line: 423, column: 15)
!3303 = !DILocation(line: 423, column: 15, scope: !3302)
!3304 = !DILocation(line: 423, column: 15, scope: !3294)
!3305 = !DILocation(line: 423, column: 15, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !622, line: 423, column: 15)
!3307 = distinct !DILexicalBlock(scope: !3286, file: !622, line: 423, column: 15)
!3308 = !DILocation(line: 423, column: 15, scope: !3307)
!3309 = !DILocation(line: 431, column: 19, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3287, file: !622, line: 430, column: 19)
!3311 = !DILocation(line: 431, column: 24, scope: !3310)
!3312 = !DILocation(line: 431, column: 28, scope: !3310)
!3313 = !DILocation(line: 431, column: 38, scope: !3310)
!3314 = !DILocation(line: 431, column: 48, scope: !3310)
!3315 = !DILocation(line: 431, column: 59, scope: !3310)
!3316 = !DILocation(line: 433, column: 19, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !622, line: 433, column: 19)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !622, line: 433, column: 19)
!3319 = distinct !DILexicalBlock(scope: !3310, file: !622, line: 432, column: 17)
!3320 = !DILocation(line: 433, column: 19, scope: !3318)
!3321 = !DILocation(line: 434, column: 19, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !622, line: 434, column: 19)
!3323 = distinct !DILexicalBlock(scope: !3319, file: !622, line: 434, column: 19)
!3324 = !DILocation(line: 434, column: 19, scope: !3323)
!3325 = !DILocation(line: 435, column: 17, scope: !3319)
!3326 = !DILocation(line: 442, column: 20, scope: !3288)
!3327 = !DILocation(line: 447, column: 11, scope: !3125)
!3328 = !DILocation(line: 450, column: 19, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3125, file: !622, line: 448, column: 13)
!3330 = !DILocation(line: 456, column: 19, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3329, file: !622, line: 455, column: 19)
!3332 = !DILocation(line: 456, column: 24, scope: !3331)
!3333 = !DILocation(line: 456, column: 28, scope: !3331)
!3334 = !DILocation(line: 456, column: 38, scope: !3331)
!3335 = !DILocation(line: 456, column: 47, scope: !3331)
!3336 = !DILocation(line: 456, column: 41, scope: !3331)
!3337 = !DILocation(line: 456, column: 52, scope: !3331)
!3338 = !DILocation(line: 455, column: 19, scope: !3329)
!3339 = !DILocation(line: 457, column: 25, scope: !3331)
!3340 = !DILocation(line: 457, column: 17, scope: !3331)
!3341 = !DILocation(line: 464, column: 25, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3331, file: !622, line: 458, column: 19)
!3343 = !DILocation(line: 468, column: 21, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !622, line: 468, column: 21)
!3345 = distinct !DILexicalBlock(scope: !3342, file: !622, line: 468, column: 21)
!3346 = !DILocation(line: 468, column: 21, scope: !3345)
!3347 = !DILocation(line: 469, column: 21, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !622, line: 469, column: 21)
!3349 = distinct !DILexicalBlock(scope: !3342, file: !622, line: 469, column: 21)
!3350 = !DILocation(line: 469, column: 21, scope: !3349)
!3351 = !DILocation(line: 470, column: 21, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !622, line: 470, column: 21)
!3353 = distinct !DILexicalBlock(scope: !3342, file: !622, line: 470, column: 21)
!3354 = !DILocation(line: 470, column: 21, scope: !3353)
!3355 = !DILocation(line: 471, column: 21, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !622, line: 471, column: 21)
!3357 = distinct !DILexicalBlock(scope: !3342, file: !622, line: 471, column: 21)
!3358 = !DILocation(line: 471, column: 21, scope: !3357)
!3359 = !DILocation(line: 472, column: 21, scope: !3342)
!3360 = !DILocation(line: 482, column: 33, scope: !3148)
!3361 = !DILocation(line: 483, column: 33, scope: !3148)
!3362 = !DILocation(line: 485, column: 33, scope: !3148)
!3363 = !DILocation(line: 486, column: 33, scope: !3148)
!3364 = !DILocation(line: 487, column: 33, scope: !3148)
!3365 = !DILocation(line: 490, column: 17, scope: !3148)
!3366 = !DILocation(line: 492, column: 21, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !622, line: 491, column: 15)
!3368 = distinct !DILexicalBlock(scope: !3148, file: !622, line: 490, column: 17)
!3369 = !DILocation(line: 499, column: 35, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3148, file: !622, line: 499, column: 17)
!3371 = !DILocation(line: 499, column: 57, scope: !3370)
!3372 = !DILocation(line: 0, scope: !3148)
!3373 = !DILocation(line: 502, column: 11, scope: !3148)
!3374 = !DILocation(line: 504, column: 17, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3148, file: !622, line: 503, column: 17)
!3376 = !DILocation(line: 507, column: 11, scope: !3148)
!3377 = !DILocation(line: 508, column: 17, scope: !3148)
!3378 = !DILocation(line: 517, column: 15, scope: !3125)
!3379 = !DILocation(line: 517, column: 40, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3125, file: !622, line: 517, column: 15)
!3381 = !DILocation(line: 517, column: 47, scope: !3380)
!3382 = !DILocation(line: 517, column: 18, scope: !3380)
!3383 = !DILocation(line: 521, column: 17, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3125, file: !622, line: 521, column: 15)
!3385 = !DILocation(line: 521, column: 15, scope: !3125)
!3386 = !DILocation(line: 525, column: 11, scope: !3125)
!3387 = !DILocation(line: 537, column: 15, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3125, file: !622, line: 536, column: 15)
!3389 = !DILocation(line: 544, column: 15, scope: !3125)
!3390 = !DILocation(line: 546, column: 19, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !622, line: 545, column: 13)
!3392 = distinct !DILexicalBlock(scope: !3125, file: !622, line: 544, column: 15)
!3393 = !DILocation(line: 549, column: 19, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3391, file: !622, line: 549, column: 19)
!3395 = !DILocation(line: 549, column: 30, scope: !3394)
!3396 = !DILocation(line: 558, column: 15, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !622, line: 558, column: 15)
!3398 = distinct !DILexicalBlock(scope: !3391, file: !622, line: 558, column: 15)
!3399 = !DILocation(line: 558, column: 15, scope: !3398)
!3400 = !DILocation(line: 559, column: 15, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !622, line: 559, column: 15)
!3402 = distinct !DILexicalBlock(scope: !3391, file: !622, line: 559, column: 15)
!3403 = !DILocation(line: 559, column: 15, scope: !3402)
!3404 = !DILocation(line: 560, column: 15, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !622, line: 560, column: 15)
!3406 = distinct !DILexicalBlock(scope: !3391, file: !622, line: 560, column: 15)
!3407 = !DILocation(line: 560, column: 15, scope: !3406)
!3408 = !DILocation(line: 562, column: 13, scope: !3391)
!3409 = !DILocation(line: 602, column: 17, scope: !3124)
!3410 = !DILocation(line: 0, scope: !3124)
!3411 = !DILocation(line: 605, column: 29, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3129, file: !622, line: 603, column: 15)
!3413 = !DILocation(line: 605, column: 27, scope: !3412)
!3414 = !DILocation(line: 668, column: 40, scope: !3124)
!3415 = !DILocation(line: 670, column: 23, scope: !3145)
!3416 = !DILocation(line: 609, column: 17, scope: !3128)
!3417 = !DILocation(line: 609, column: 27, scope: !3128)
!3418 = !DILocation(line: 0, scope: !3185, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 609, column: 32, scope: !3128)
!3420 = !DILocation(line: 0, scope: !3193, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 1137, column: 3, scope: !3185, inlinedAt: !3419)
!3422 = !DILocation(line: 59, column: 10, scope: !3193, inlinedAt: !3421)
!3423 = !DILocation(line: 613, column: 29, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3128, file: !622, line: 613, column: 21)
!3425 = !DILocation(line: 613, column: 21, scope: !3128)
!3426 = !DILocation(line: 614, column: 29, scope: !3424)
!3427 = !DILocation(line: 614, column: 19, scope: !3424)
!3428 = !DILocation(line: 618, column: 21, scope: !3131)
!3429 = !DILocation(line: 620, column: 54, scope: !3131)
!3430 = !DILocation(line: 0, scope: !3131)
!3431 = !DILocation(line: 619, column: 36, scope: !3131)
!3432 = !DILocation(line: 621, column: 25, scope: !3131)
!3433 = !DILocation(line: 631, column: 38, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3140, file: !622, line: 629, column: 23)
!3435 = !DILocation(line: 631, column: 48, scope: !3434)
!3436 = !DILocation(line: 665, column: 19, scope: !3132)
!3437 = !DILocation(line: 666, column: 15, scope: !3129)
!3438 = !DILocation(line: 626, column: 25, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3141, file: !622, line: 624, column: 23)
!3440 = !DILocation(line: 631, column: 51, scope: !3434)
!3441 = !DILocation(line: 631, column: 25, scope: !3434)
!3442 = !DILocation(line: 632, column: 28, scope: !3434)
!3443 = !DILocation(line: 631, column: 34, scope: !3434)
!3444 = distinct !{!3444, !3441, !3442, !1070}
!3445 = !DILocation(line: 646, column: 29, scope: !3138)
!3446 = !DILocation(line: 0, scope: !3136)
!3447 = !DILocation(line: 649, column: 49, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3136, file: !622, line: 648, column: 29)
!3449 = !DILocation(line: 649, column: 39, scope: !3448)
!3450 = !DILocation(line: 649, column: 31, scope: !3448)
!3451 = !DILocation(line: 648, column: 60, scope: !3448)
!3452 = !DILocation(line: 648, column: 50, scope: !3448)
!3453 = !DILocation(line: 648, column: 29, scope: !3136)
!3454 = distinct !{!3454, !3453, !3455, !1070}
!3455 = !DILocation(line: 654, column: 33, scope: !3136)
!3456 = !DILocation(line: 657, column: 43, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3139, file: !622, line: 657, column: 29)
!3458 = !DILocalVariable(name: "wc", arg: 1, scope: !3459, file: !3460, line: 865, type: !3463)
!3459 = distinct !DISubprogram(name: "c32isprint", scope: !3460, file: !3460, line: 865, type: !3461, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3465)
!3460 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!93, !3463}
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3464, line: 20, baseType: !99)
!3464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3465 = !{!3458}
!3466 = !DILocation(line: 0, scope: !3459, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 657, column: 31, scope: !3457)
!3468 = !DILocation(line: 871, column: 10, scope: !3459, inlinedAt: !3467)
!3469 = !DILocation(line: 657, column: 31, scope: !3457)
!3470 = !DILocation(line: 657, column: 29, scope: !3139)
!3471 = !DILocation(line: 664, column: 23, scope: !3131)
!3472 = !DILocation(line: 670, column: 19, scope: !3145)
!3473 = !DILocation(line: 670, column: 45, scope: !3145)
!3474 = !DILocation(line: 674, column: 33, scope: !3144)
!3475 = !DILocation(line: 0, scope: !3144)
!3476 = !DILocation(line: 676, column: 17, scope: !3144)
!3477 = !DILocation(line: 398, column: 12, scope: !3118)
!3478 = !DILocation(line: 678, column: 43, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !622, line: 678, column: 25)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !622, line: 677, column: 19)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !622, line: 676, column: 17)
!3482 = distinct !DILexicalBlock(scope: !3144, file: !622, line: 676, column: 17)
!3483 = !DILocation(line: 680, column: 25, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !622, line: 680, column: 25)
!3485 = distinct !DILexicalBlock(scope: !3479, file: !622, line: 679, column: 23)
!3486 = !DILocation(line: 680, column: 25, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !622, line: 680, column: 25)
!3488 = !DILocation(line: 680, column: 25, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !622, line: 680, column: 25)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !622, line: 680, column: 25)
!3491 = distinct !DILexicalBlock(scope: !3487, file: !622, line: 680, column: 25)
!3492 = !DILocation(line: 680, column: 25, scope: !3490)
!3493 = !DILocation(line: 680, column: 25, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !622, line: 680, column: 25)
!3495 = distinct !DILexicalBlock(scope: !3491, file: !622, line: 680, column: 25)
!3496 = !DILocation(line: 680, column: 25, scope: !3495)
!3497 = !DILocation(line: 680, column: 25, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !622, line: 680, column: 25)
!3499 = distinct !DILexicalBlock(scope: !3491, file: !622, line: 680, column: 25)
!3500 = !DILocation(line: 680, column: 25, scope: !3499)
!3501 = !DILocation(line: 680, column: 25, scope: !3491)
!3502 = !DILocation(line: 680, column: 25, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !622, line: 680, column: 25)
!3504 = distinct !DILexicalBlock(scope: !3484, file: !622, line: 680, column: 25)
!3505 = !DILocation(line: 680, column: 25, scope: !3504)
!3506 = !DILocation(line: 681, column: 25, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !622, line: 681, column: 25)
!3508 = distinct !DILexicalBlock(scope: !3485, file: !622, line: 681, column: 25)
!3509 = !DILocation(line: 681, column: 25, scope: !3508)
!3510 = !DILocation(line: 682, column: 25, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !622, line: 682, column: 25)
!3512 = distinct !DILexicalBlock(scope: !3485, file: !622, line: 682, column: 25)
!3513 = !DILocation(line: 682, column: 25, scope: !3512)
!3514 = !DILocation(line: 683, column: 38, scope: !3485)
!3515 = !DILocation(line: 683, column: 33, scope: !3485)
!3516 = !DILocation(line: 684, column: 23, scope: !3485)
!3517 = !DILocation(line: 685, column: 30, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3479, file: !622, line: 685, column: 30)
!3519 = !DILocation(line: 685, column: 30, scope: !3479)
!3520 = !DILocation(line: 687, column: 25, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !622, line: 687, column: 25)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !622, line: 687, column: 25)
!3523 = distinct !DILexicalBlock(scope: !3518, file: !622, line: 686, column: 23)
!3524 = !DILocation(line: 687, column: 25, scope: !3522)
!3525 = !DILocation(line: 689, column: 23, scope: !3523)
!3526 = !DILocation(line: 690, column: 35, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3480, file: !622, line: 690, column: 25)
!3528 = !DILocation(line: 690, column: 30, scope: !3527)
!3529 = !DILocation(line: 690, column: 25, scope: !3480)
!3530 = !DILocation(line: 692, column: 21, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !622, line: 692, column: 21)
!3532 = distinct !DILexicalBlock(scope: !3480, file: !622, line: 692, column: 21)
!3533 = !DILocation(line: 692, column: 21, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !622, line: 692, column: 21)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !622, line: 692, column: 21)
!3536 = distinct !DILexicalBlock(scope: !3531, file: !622, line: 692, column: 21)
!3537 = !DILocation(line: 692, column: 21, scope: !3535)
!3538 = !DILocation(line: 692, column: 21, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !622, line: 692, column: 21)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !622, line: 692, column: 21)
!3541 = !DILocation(line: 692, column: 21, scope: !3540)
!3542 = !DILocation(line: 692, column: 21, scope: !3536)
!3543 = !DILocation(line: 0, scope: !3480)
!3544 = !DILocation(line: 693, column: 21, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !622, line: 693, column: 21)
!3546 = distinct !DILexicalBlock(scope: !3480, file: !622, line: 693, column: 21)
!3547 = !DILocation(line: 693, column: 21, scope: !3546)
!3548 = !DILocation(line: 694, column: 25, scope: !3480)
!3549 = !DILocation(line: 676, column: 17, scope: !3481)
!3550 = distinct !{!3550, !3551, !3552}
!3551 = !DILocation(line: 676, column: 17, scope: !3482)
!3552 = !DILocation(line: 695, column: 19, scope: !3482)
!3553 = !DILocation(line: 409, column: 30, scope: !3264)
!3554 = !DILocation(line: 702, column: 34, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3118, file: !622, line: 702, column: 11)
!3556 = !DILocation(line: 704, column: 14, scope: !3555)
!3557 = !DILocation(line: 705, column: 14, scope: !3555)
!3558 = !DILocation(line: 705, column: 35, scope: !3555)
!3559 = !DILocation(line: 705, column: 17, scope: !3555)
!3560 = !DILocation(line: 705, column: 47, scope: !3555)
!3561 = !DILocation(line: 705, column: 65, scope: !3555)
!3562 = !DILocation(line: 706, column: 11, scope: !3555)
!3563 = !DILocation(line: 702, column: 11, scope: !3118)
!3564 = !DILocation(line: 395, column: 15, scope: !3116)
!3565 = !DILocation(line: 709, column: 5, scope: !3118)
!3566 = !DILocation(line: 710, column: 7, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3118, file: !622, line: 710, column: 7)
!3568 = !DILocation(line: 710, column: 7, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3567, file: !622, line: 710, column: 7)
!3570 = !DILocation(line: 710, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !622, line: 710, column: 7)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !622, line: 710, column: 7)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !622, line: 710, column: 7)
!3574 = !DILocation(line: 710, column: 7, scope: !3572)
!3575 = !DILocation(line: 710, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !622, line: 710, column: 7)
!3577 = distinct !DILexicalBlock(scope: !3573, file: !622, line: 710, column: 7)
!3578 = !DILocation(line: 710, column: 7, scope: !3577)
!3579 = !DILocation(line: 710, column: 7, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !622, line: 710, column: 7)
!3581 = distinct !DILexicalBlock(scope: !3573, file: !622, line: 710, column: 7)
!3582 = !DILocation(line: 710, column: 7, scope: !3581)
!3583 = !DILocation(line: 710, column: 7, scope: !3573)
!3584 = !DILocation(line: 710, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !622, line: 710, column: 7)
!3586 = distinct !DILexicalBlock(scope: !3567, file: !622, line: 710, column: 7)
!3587 = !DILocation(line: 710, column: 7, scope: !3586)
!3588 = !DILocation(line: 712, column: 5, scope: !3118)
!3589 = !DILocation(line: 713, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !622, line: 713, column: 7)
!3591 = distinct !DILexicalBlock(scope: !3118, file: !622, line: 713, column: 7)
!3592 = !DILocation(line: 417, column: 21, scope: !3118)
!3593 = !DILocation(line: 713, column: 7, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !622, line: 713, column: 7)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !622, line: 713, column: 7)
!3596 = distinct !DILexicalBlock(scope: !3590, file: !622, line: 713, column: 7)
!3597 = !DILocation(line: 713, column: 7, scope: !3595)
!3598 = !DILocation(line: 713, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !622, line: 713, column: 7)
!3600 = distinct !DILexicalBlock(scope: !3596, file: !622, line: 713, column: 7)
!3601 = !DILocation(line: 713, column: 7, scope: !3600)
!3602 = !DILocation(line: 713, column: 7, scope: !3596)
!3603 = !DILocation(line: 714, column: 7, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !622, line: 714, column: 7)
!3605 = distinct !DILexicalBlock(scope: !3118, file: !622, line: 714, column: 7)
!3606 = !DILocation(line: 714, column: 7, scope: !3605)
!3607 = !DILocation(line: 716, column: 13, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3118, file: !622, line: 716, column: 11)
!3609 = !DILocation(line: 716, column: 11, scope: !3118)
!3610 = !DILocation(line: 718, column: 5, scope: !3119)
!3611 = !DILocation(line: 395, column: 82, scope: !3119)
!3612 = !DILocation(line: 395, column: 3, scope: !3119)
!3613 = distinct !{!3613, !3260, !3614, !1070}
!3614 = !DILocation(line: 718, column: 5, scope: !3116)
!3615 = !DILocation(line: 720, column: 11, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3085, file: !622, line: 720, column: 7)
!3617 = !DILocation(line: 720, column: 16, scope: !3616)
!3618 = !DILocation(line: 728, column: 51, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3085, file: !622, line: 728, column: 7)
!3620 = !DILocation(line: 731, column: 11, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !622, line: 731, column: 11)
!3622 = distinct !DILexicalBlock(scope: !3619, file: !622, line: 730, column: 5)
!3623 = !DILocation(line: 731, column: 11, scope: !3622)
!3624 = !DILocation(line: 732, column: 16, scope: !3621)
!3625 = !DILocation(line: 732, column: 9, scope: !3621)
!3626 = !DILocation(line: 736, column: 18, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3621, file: !622, line: 736, column: 16)
!3628 = !DILocation(line: 736, column: 29, scope: !3627)
!3629 = !DILocation(line: 745, column: 7, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3085, file: !622, line: 745, column: 7)
!3631 = !DILocation(line: 745, column: 20, scope: !3630)
!3632 = !DILocation(line: 746, column: 12, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !622, line: 746, column: 5)
!3634 = distinct !DILexicalBlock(scope: !3630, file: !622, line: 746, column: 5)
!3635 = !DILocation(line: 746, column: 5, scope: !3634)
!3636 = !DILocation(line: 747, column: 7, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !622, line: 747, column: 7)
!3638 = distinct !DILexicalBlock(scope: !3633, file: !622, line: 747, column: 7)
!3639 = !DILocation(line: 747, column: 7, scope: !3638)
!3640 = !DILocation(line: 746, column: 39, scope: !3633)
!3641 = distinct !{!3641, !3635, !3642, !1070}
!3642 = !DILocation(line: 747, column: 7, scope: !3634)
!3643 = !DILocation(line: 749, column: 11, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3085, file: !622, line: 749, column: 7)
!3645 = !DILocation(line: 749, column: 7, scope: !3085)
!3646 = !DILocation(line: 750, column: 5, scope: !3644)
!3647 = !DILocation(line: 750, column: 17, scope: !3644)
!3648 = !DILocation(line: 753, column: 2, scope: !3085)
!3649 = !DILocation(line: 756, column: 51, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3085, file: !622, line: 756, column: 7)
!3651 = !DILocation(line: 756, column: 21, scope: !3650)
!3652 = !DILocation(line: 760, column: 42, scope: !3085)
!3653 = !DILocation(line: 758, column: 10, scope: !3085)
!3654 = !DILocation(line: 758, column: 3, scope: !3085)
!3655 = !DILocation(line: 762, column: 1, scope: !3085)
!3656 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1148, file: !1148, line: 98, type: !3657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!147}
!3659 = !DISubprogram(name: "iswprint", scope: !3660, file: !3660, line: 120, type: !3461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!3660 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3661 = distinct !DISubprogram(name: "quotearg_alloc", scope: !622, file: !622, line: 788, type: !3662, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!144, !150, !147, !2978}
!3664 = !{!3665, !3666, !3667}
!3665 = !DILocalVariable(name: "arg", arg: 1, scope: !3661, file: !622, line: 788, type: !150)
!3666 = !DILocalVariable(name: "argsize", arg: 2, scope: !3661, file: !622, line: 788, type: !147)
!3667 = !DILocalVariable(name: "o", arg: 3, scope: !3661, file: !622, line: 789, type: !2978)
!3668 = !DILocation(line: 0, scope: !3661)
!3669 = !DILocalVariable(name: "arg", arg: 1, scope: !3670, file: !622, line: 801, type: !150)
!3670 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !622, file: !622, line: 801, type: !3671, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!144, !150, !147, !868, !2978}
!3673 = !{!3669, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681}
!3674 = !DILocalVariable(name: "argsize", arg: 2, scope: !3670, file: !622, line: 801, type: !147)
!3675 = !DILocalVariable(name: "size", arg: 3, scope: !3670, file: !622, line: 801, type: !868)
!3676 = !DILocalVariable(name: "o", arg: 4, scope: !3670, file: !622, line: 802, type: !2978)
!3677 = !DILocalVariable(name: "p", scope: !3670, file: !622, line: 804, type: !2978)
!3678 = !DILocalVariable(name: "saved_errno", scope: !3670, file: !622, line: 805, type: !93)
!3679 = !DILocalVariable(name: "flags", scope: !3670, file: !622, line: 807, type: !93)
!3680 = !DILocalVariable(name: "bufsize", scope: !3670, file: !622, line: 808, type: !147)
!3681 = !DILocalVariable(name: "buf", scope: !3670, file: !622, line: 812, type: !144)
!3682 = !DILocation(line: 0, scope: !3670, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 791, column: 10, scope: !3661)
!3684 = !DILocation(line: 804, column: 37, scope: !3670, inlinedAt: !3683)
!3685 = !DILocation(line: 805, column: 21, scope: !3670, inlinedAt: !3683)
!3686 = !DILocation(line: 807, column: 18, scope: !3670, inlinedAt: !3683)
!3687 = !DILocation(line: 807, column: 24, scope: !3670, inlinedAt: !3683)
!3688 = !DILocation(line: 808, column: 72, scope: !3670, inlinedAt: !3683)
!3689 = !DILocation(line: 809, column: 56, scope: !3670, inlinedAt: !3683)
!3690 = !DILocation(line: 810, column: 49, scope: !3670, inlinedAt: !3683)
!3691 = !DILocation(line: 811, column: 49, scope: !3670, inlinedAt: !3683)
!3692 = !DILocation(line: 808, column: 20, scope: !3670, inlinedAt: !3683)
!3693 = !DILocation(line: 811, column: 62, scope: !3670, inlinedAt: !3683)
!3694 = !DILocation(line: 812, column: 15, scope: !3670, inlinedAt: !3683)
!3695 = !DILocation(line: 813, column: 60, scope: !3670, inlinedAt: !3683)
!3696 = !DILocation(line: 815, column: 32, scope: !3670, inlinedAt: !3683)
!3697 = !DILocation(line: 815, column: 47, scope: !3670, inlinedAt: !3683)
!3698 = !DILocation(line: 813, column: 3, scope: !3670, inlinedAt: !3683)
!3699 = !DILocation(line: 816, column: 9, scope: !3670, inlinedAt: !3683)
!3700 = !DILocation(line: 791, column: 3, scope: !3661)
!3701 = !DILocation(line: 0, scope: !3670)
!3702 = !DILocation(line: 804, column: 37, scope: !3670)
!3703 = !DILocation(line: 805, column: 21, scope: !3670)
!3704 = !DILocation(line: 807, column: 18, scope: !3670)
!3705 = !DILocation(line: 807, column: 27, scope: !3670)
!3706 = !DILocation(line: 807, column: 24, scope: !3670)
!3707 = !DILocation(line: 808, column: 72, scope: !3670)
!3708 = !DILocation(line: 809, column: 56, scope: !3670)
!3709 = !DILocation(line: 810, column: 49, scope: !3670)
!3710 = !DILocation(line: 811, column: 49, scope: !3670)
!3711 = !DILocation(line: 808, column: 20, scope: !3670)
!3712 = !DILocation(line: 811, column: 62, scope: !3670)
!3713 = !DILocation(line: 812, column: 15, scope: !3670)
!3714 = !DILocation(line: 813, column: 60, scope: !3670)
!3715 = !DILocation(line: 815, column: 32, scope: !3670)
!3716 = !DILocation(line: 815, column: 47, scope: !3670)
!3717 = !DILocation(line: 813, column: 3, scope: !3670)
!3718 = !DILocation(line: 816, column: 9, scope: !3670)
!3719 = !DILocation(line: 817, column: 7, scope: !3670)
!3720 = !DILocation(line: 818, column: 11, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3670, file: !622, line: 817, column: 7)
!3722 = !{!1448, !1448, i64 0}
!3723 = !DILocation(line: 818, column: 5, scope: !3721)
!3724 = !DILocation(line: 819, column: 3, scope: !3670)
!3725 = distinct !DISubprogram(name: "quotearg_free", scope: !622, file: !622, line: 837, type: !577, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3726)
!3726 = !{!3727, !3728}
!3727 = !DILocalVariable(name: "sv", scope: !3725, file: !622, line: 839, type: !706)
!3728 = !DILocalVariable(name: "i", scope: !3729, file: !622, line: 840, type: !93)
!3729 = distinct !DILexicalBlock(scope: !3725, file: !622, line: 840, column: 3)
!3730 = !DILocation(line: 839, column: 24, scope: !3725)
!3731 = !DILocation(line: 0, scope: !3725)
!3732 = !DILocation(line: 0, scope: !3729)
!3733 = !DILocation(line: 840, column: 21, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3729, file: !622, line: 840, column: 3)
!3735 = !DILocation(line: 840, column: 3, scope: !3729)
!3736 = !DILocation(line: 842, column: 13, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3725, file: !622, line: 842, column: 7)
!3738 = !{!3739, !950, i64 8}
!3739 = !{!"slotvec", !1448, i64 0, !950, i64 8}
!3740 = !DILocation(line: 842, column: 17, scope: !3737)
!3741 = !DILocation(line: 842, column: 7, scope: !3725)
!3742 = !DILocation(line: 841, column: 17, scope: !3734)
!3743 = !DILocation(line: 841, column: 5, scope: !3734)
!3744 = !DILocation(line: 840, column: 32, scope: !3734)
!3745 = distinct !{!3745, !3735, !3746, !1070}
!3746 = !DILocation(line: 841, column: 20, scope: !3729)
!3747 = !DILocation(line: 844, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3737, file: !622, line: 843, column: 5)
!3749 = !DILocation(line: 845, column: 21, scope: !3748)
!3750 = !{!3739, !1448, i64 0}
!3751 = !DILocation(line: 846, column: 20, scope: !3748)
!3752 = !DILocation(line: 847, column: 5, scope: !3748)
!3753 = !DILocation(line: 848, column: 10, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3725, file: !622, line: 848, column: 7)
!3755 = !DILocation(line: 848, column: 7, scope: !3725)
!3756 = !DILocation(line: 850, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3754, file: !622, line: 849, column: 5)
!3758 = !DILocation(line: 851, column: 15, scope: !3757)
!3759 = !DILocation(line: 852, column: 5, scope: !3757)
!3760 = !DILocation(line: 853, column: 10, scope: !3725)
!3761 = !DILocation(line: 854, column: 1, scope: !3725)
!3762 = !DISubprogram(name: "free", scope: !2933, file: !2933, line: 786, type: !3763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !145}
!3765 = distinct !DISubprogram(name: "quotearg_n", scope: !622, file: !622, line: 919, type: !1141, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3766)
!3766 = !{!3767, !3768}
!3767 = !DILocalVariable(name: "n", arg: 1, scope: !3765, file: !622, line: 919, type: !93)
!3768 = !DILocalVariable(name: "arg", arg: 2, scope: !3765, file: !622, line: 919, type: !150)
!3769 = !DILocation(line: 0, scope: !3765)
!3770 = !DILocation(line: 921, column: 10, scope: !3765)
!3771 = !DILocation(line: 921, column: 3, scope: !3765)
!3772 = distinct !DISubprogram(name: "quotearg_n_options", scope: !622, file: !622, line: 866, type: !3773, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!144, !93, !150, !147, !2978}
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3786, !3787, !3789, !3790, !3791}
!3776 = !DILocalVariable(name: "n", arg: 1, scope: !3772, file: !622, line: 866, type: !93)
!3777 = !DILocalVariable(name: "arg", arg: 2, scope: !3772, file: !622, line: 866, type: !150)
!3778 = !DILocalVariable(name: "argsize", arg: 3, scope: !3772, file: !622, line: 866, type: !147)
!3779 = !DILocalVariable(name: "options", arg: 4, scope: !3772, file: !622, line: 867, type: !2978)
!3780 = !DILocalVariable(name: "saved_errno", scope: !3772, file: !622, line: 869, type: !93)
!3781 = !DILocalVariable(name: "sv", scope: !3772, file: !622, line: 871, type: !706)
!3782 = !DILocalVariable(name: "nslots_max", scope: !3772, file: !622, line: 873, type: !93)
!3783 = !DILocalVariable(name: "preallocated", scope: !3784, file: !622, line: 879, type: !195)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !622, line: 878, column: 5)
!3785 = distinct !DILexicalBlock(scope: !3772, file: !622, line: 877, column: 7)
!3786 = !DILocalVariable(name: "new_nslots", scope: !3784, file: !622, line: 880, type: !881)
!3787 = !DILocalVariable(name: "size", scope: !3788, file: !622, line: 891, type: !147)
!3788 = distinct !DILexicalBlock(scope: !3772, file: !622, line: 890, column: 3)
!3789 = !DILocalVariable(name: "val", scope: !3788, file: !622, line: 892, type: !144)
!3790 = !DILocalVariable(name: "flags", scope: !3788, file: !622, line: 894, type: !93)
!3791 = !DILocalVariable(name: "qsize", scope: !3788, file: !622, line: 895, type: !147)
!3792 = !DILocation(line: 0, scope: !3772)
!3793 = !DILocation(line: 869, column: 21, scope: !3772)
!3794 = !DILocation(line: 871, column: 24, scope: !3772)
!3795 = !DILocation(line: 874, column: 17, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3772, file: !622, line: 874, column: 7)
!3797 = !DILocation(line: 875, column: 5, scope: !3796)
!3798 = !DILocation(line: 877, column: 7, scope: !3785)
!3799 = !DILocation(line: 877, column: 14, scope: !3785)
!3800 = !DILocation(line: 877, column: 7, scope: !3772)
!3801 = !DILocation(line: 879, column: 31, scope: !3784)
!3802 = !DILocation(line: 0, scope: !3784)
!3803 = !DILocation(line: 880, column: 7, scope: !3784)
!3804 = !DILocation(line: 880, column: 26, scope: !3784)
!3805 = !DILocation(line: 880, column: 13, scope: !3784)
!3806 = !DILocation(line: 882, column: 31, scope: !3784)
!3807 = !DILocation(line: 883, column: 33, scope: !3784)
!3808 = !DILocation(line: 883, column: 42, scope: !3784)
!3809 = !DILocation(line: 883, column: 31, scope: !3784)
!3810 = !DILocation(line: 882, column: 22, scope: !3784)
!3811 = !DILocation(line: 882, column: 15, scope: !3784)
!3812 = !DILocation(line: 884, column: 11, scope: !3784)
!3813 = !DILocation(line: 885, column: 15, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3784, file: !622, line: 884, column: 11)
!3815 = !{i64 0, i64 8, !3722, i64 8, i64 8, !949}
!3816 = !DILocation(line: 885, column: 9, scope: !3814)
!3817 = !DILocation(line: 886, column: 20, scope: !3784)
!3818 = !DILocation(line: 886, column: 18, scope: !3784)
!3819 = !DILocation(line: 886, column: 32, scope: !3784)
!3820 = !DILocation(line: 886, column: 43, scope: !3784)
!3821 = !DILocation(line: 886, column: 53, scope: !3784)
!3822 = !DILocation(line: 0, scope: !3193, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 886, column: 7, scope: !3784)
!3824 = !DILocation(line: 59, column: 10, scope: !3193, inlinedAt: !3823)
!3825 = !DILocation(line: 887, column: 16, scope: !3784)
!3826 = !DILocation(line: 887, column: 14, scope: !3784)
!3827 = !DILocation(line: 888, column: 5, scope: !3785)
!3828 = !DILocation(line: 888, column: 5, scope: !3784)
!3829 = !DILocation(line: 891, column: 19, scope: !3788)
!3830 = !DILocation(line: 891, column: 25, scope: !3788)
!3831 = !DILocation(line: 0, scope: !3788)
!3832 = !DILocation(line: 892, column: 23, scope: !3788)
!3833 = !DILocation(line: 894, column: 26, scope: !3788)
!3834 = !DILocation(line: 894, column: 32, scope: !3788)
!3835 = !DILocation(line: 896, column: 55, scope: !3788)
!3836 = !DILocation(line: 897, column: 55, scope: !3788)
!3837 = !DILocation(line: 898, column: 55, scope: !3788)
!3838 = !DILocation(line: 899, column: 55, scope: !3788)
!3839 = !DILocation(line: 895, column: 20, scope: !3788)
!3840 = !DILocation(line: 901, column: 14, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3788, file: !622, line: 901, column: 9)
!3842 = !DILocation(line: 901, column: 9, scope: !3788)
!3843 = !DILocation(line: 903, column: 35, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3841, file: !622, line: 902, column: 7)
!3845 = !DILocation(line: 903, column: 20, scope: !3844)
!3846 = !DILocation(line: 904, column: 17, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3844, file: !622, line: 904, column: 13)
!3848 = !DILocation(line: 904, column: 13, scope: !3844)
!3849 = !DILocation(line: 905, column: 11, scope: !3847)
!3850 = !DILocation(line: 906, column: 27, scope: !3844)
!3851 = !DILocation(line: 906, column: 19, scope: !3844)
!3852 = !DILocation(line: 907, column: 69, scope: !3844)
!3853 = !DILocation(line: 909, column: 44, scope: !3844)
!3854 = !DILocation(line: 910, column: 44, scope: !3844)
!3855 = !DILocation(line: 907, column: 9, scope: !3844)
!3856 = !DILocation(line: 911, column: 7, scope: !3844)
!3857 = !DILocation(line: 913, column: 11, scope: !3788)
!3858 = !DILocation(line: 914, column: 5, scope: !3788)
!3859 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !622, file: !622, line: 925, type: !3860, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3862)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!144, !93, !150, !147}
!3862 = !{!3863, !3864, !3865}
!3863 = !DILocalVariable(name: "n", arg: 1, scope: !3859, file: !622, line: 925, type: !93)
!3864 = !DILocalVariable(name: "arg", arg: 2, scope: !3859, file: !622, line: 925, type: !150)
!3865 = !DILocalVariable(name: "argsize", arg: 3, scope: !3859, file: !622, line: 925, type: !147)
!3866 = !DILocation(line: 0, scope: !3859)
!3867 = !DILocation(line: 927, column: 10, scope: !3859)
!3868 = !DILocation(line: 927, column: 3, scope: !3859)
!3869 = distinct !DISubprogram(name: "quotearg", scope: !622, file: !622, line: 931, type: !1150, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3870)
!3870 = !{!3871}
!3871 = !DILocalVariable(name: "arg", arg: 1, scope: !3869, file: !622, line: 931, type: !150)
!3872 = !DILocation(line: 0, scope: !3869)
!3873 = !DILocation(line: 0, scope: !3765, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 933, column: 10, scope: !3869)
!3875 = !DILocation(line: 921, column: 10, scope: !3765, inlinedAt: !3874)
!3876 = !DILocation(line: 933, column: 3, scope: !3869)
!3877 = distinct !DISubprogram(name: "quotearg_mem", scope: !622, file: !622, line: 937, type: !3878, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3880)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!144, !150, !147}
!3880 = !{!3881, !3882}
!3881 = !DILocalVariable(name: "arg", arg: 1, scope: !3877, file: !622, line: 937, type: !150)
!3882 = !DILocalVariable(name: "argsize", arg: 2, scope: !3877, file: !622, line: 937, type: !147)
!3883 = !DILocation(line: 0, scope: !3877)
!3884 = !DILocation(line: 0, scope: !3859, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 939, column: 10, scope: !3877)
!3886 = !DILocation(line: 927, column: 10, scope: !3859, inlinedAt: !3885)
!3887 = !DILocation(line: 939, column: 3, scope: !3877)
!3888 = distinct !DISubprogram(name: "quotearg_n_style", scope: !622, file: !622, line: 943, type: !3889, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3891)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!144, !93, !105, !150}
!3891 = !{!3892, !3893, !3894, !3895}
!3892 = !DILocalVariable(name: "n", arg: 1, scope: !3888, file: !622, line: 943, type: !93)
!3893 = !DILocalVariable(name: "s", arg: 2, scope: !3888, file: !622, line: 943, type: !105)
!3894 = !DILocalVariable(name: "arg", arg: 3, scope: !3888, file: !622, line: 943, type: !150)
!3895 = !DILocalVariable(name: "o", scope: !3888, file: !622, line: 945, type: !2979)
!3896 = !DILocation(line: 0, scope: !3888)
!3897 = !DILocation(line: 945, column: 3, scope: !3888)
!3898 = !DILocation(line: 945, column: 32, scope: !3888)
!3899 = !{!3900}
!3900 = distinct !{!3900, !3901, !"quoting_options_from_style: argument 0"}
!3901 = distinct !{!3901, !"quoting_options_from_style"}
!3902 = !DILocation(line: 945, column: 36, scope: !3888)
!3903 = !DILocalVariable(name: "style", arg: 1, scope: !3904, file: !622, line: 183, type: !105)
!3904 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !622, file: !622, line: 183, type: !3905, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!658, !105}
!3907 = !{!3903, !3908}
!3908 = !DILocalVariable(name: "o", scope: !3904, file: !622, line: 185, type: !658)
!3909 = !DILocation(line: 0, scope: !3904, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 945, column: 36, scope: !3888)
!3911 = !DILocation(line: 185, column: 26, scope: !3904, inlinedAt: !3910)
!3912 = !DILocation(line: 186, column: 13, scope: !3913, inlinedAt: !3910)
!3913 = distinct !DILexicalBlock(scope: !3904, file: !622, line: 186, column: 7)
!3914 = !DILocation(line: 186, column: 7, scope: !3904, inlinedAt: !3910)
!3915 = !DILocation(line: 187, column: 5, scope: !3913, inlinedAt: !3910)
!3916 = !DILocation(line: 188, column: 11, scope: !3904, inlinedAt: !3910)
!3917 = !DILocation(line: 946, column: 10, scope: !3888)
!3918 = !DILocation(line: 947, column: 1, scope: !3888)
!3919 = !DILocation(line: 946, column: 3, scope: !3888)
!3920 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !622, file: !622, line: 950, type: !3921, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3923)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!144, !93, !105, !150, !147}
!3923 = !{!3924, !3925, !3926, !3927, !3928}
!3924 = !DILocalVariable(name: "n", arg: 1, scope: !3920, file: !622, line: 950, type: !93)
!3925 = !DILocalVariable(name: "s", arg: 2, scope: !3920, file: !622, line: 950, type: !105)
!3926 = !DILocalVariable(name: "arg", arg: 3, scope: !3920, file: !622, line: 951, type: !150)
!3927 = !DILocalVariable(name: "argsize", arg: 4, scope: !3920, file: !622, line: 951, type: !147)
!3928 = !DILocalVariable(name: "o", scope: !3920, file: !622, line: 953, type: !2979)
!3929 = !DILocation(line: 0, scope: !3920)
!3930 = !DILocation(line: 953, column: 3, scope: !3920)
!3931 = !DILocation(line: 953, column: 32, scope: !3920)
!3932 = !{!3933}
!3933 = distinct !{!3933, !3934, !"quoting_options_from_style: argument 0"}
!3934 = distinct !{!3934, !"quoting_options_from_style"}
!3935 = !DILocation(line: 953, column: 36, scope: !3920)
!3936 = !DILocation(line: 0, scope: !3904, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 953, column: 36, scope: !3920)
!3938 = !DILocation(line: 185, column: 26, scope: !3904, inlinedAt: !3937)
!3939 = !DILocation(line: 186, column: 13, scope: !3913, inlinedAt: !3937)
!3940 = !DILocation(line: 186, column: 7, scope: !3904, inlinedAt: !3937)
!3941 = !DILocation(line: 187, column: 5, scope: !3913, inlinedAt: !3937)
!3942 = !DILocation(line: 188, column: 11, scope: !3904, inlinedAt: !3937)
!3943 = !DILocation(line: 954, column: 10, scope: !3920)
!3944 = !DILocation(line: 955, column: 1, scope: !3920)
!3945 = !DILocation(line: 954, column: 3, scope: !3920)
!3946 = distinct !DISubprogram(name: "quotearg_style", scope: !622, file: !622, line: 958, type: !3947, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!144, !105, !150}
!3949 = !{!3950, !3951}
!3950 = !DILocalVariable(name: "s", arg: 1, scope: !3946, file: !622, line: 958, type: !105)
!3951 = !DILocalVariable(name: "arg", arg: 2, scope: !3946, file: !622, line: 958, type: !150)
!3952 = !DILocation(line: 0, scope: !3946)
!3953 = !DILocation(line: 0, scope: !3888, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 960, column: 10, scope: !3946)
!3955 = !DILocation(line: 945, column: 3, scope: !3888, inlinedAt: !3954)
!3956 = !DILocation(line: 945, column: 32, scope: !3888, inlinedAt: !3954)
!3957 = !{!3958}
!3958 = distinct !{!3958, !3959, !"quoting_options_from_style: argument 0"}
!3959 = distinct !{!3959, !"quoting_options_from_style"}
!3960 = !DILocation(line: 945, column: 36, scope: !3888, inlinedAt: !3954)
!3961 = !DILocation(line: 0, scope: !3904, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 945, column: 36, scope: !3888, inlinedAt: !3954)
!3963 = !DILocation(line: 185, column: 26, scope: !3904, inlinedAt: !3962)
!3964 = !DILocation(line: 186, column: 13, scope: !3913, inlinedAt: !3962)
!3965 = !DILocation(line: 186, column: 7, scope: !3904, inlinedAt: !3962)
!3966 = !DILocation(line: 187, column: 5, scope: !3913, inlinedAt: !3962)
!3967 = !DILocation(line: 188, column: 11, scope: !3904, inlinedAt: !3962)
!3968 = !DILocation(line: 946, column: 10, scope: !3888, inlinedAt: !3954)
!3969 = !DILocation(line: 947, column: 1, scope: !3888, inlinedAt: !3954)
!3970 = !DILocation(line: 960, column: 3, scope: !3946)
!3971 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !622, file: !622, line: 964, type: !3972, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3974)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!144, !105, !150, !147}
!3974 = !{!3975, !3976, !3977}
!3975 = !DILocalVariable(name: "s", arg: 1, scope: !3971, file: !622, line: 964, type: !105)
!3976 = !DILocalVariable(name: "arg", arg: 2, scope: !3971, file: !622, line: 964, type: !150)
!3977 = !DILocalVariable(name: "argsize", arg: 3, scope: !3971, file: !622, line: 964, type: !147)
!3978 = !DILocation(line: 0, scope: !3971)
!3979 = !DILocation(line: 0, scope: !3920, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 966, column: 10, scope: !3971)
!3981 = !DILocation(line: 953, column: 3, scope: !3920, inlinedAt: !3980)
!3982 = !DILocation(line: 953, column: 32, scope: !3920, inlinedAt: !3980)
!3983 = !{!3984}
!3984 = distinct !{!3984, !3985, !"quoting_options_from_style: argument 0"}
!3985 = distinct !{!3985, !"quoting_options_from_style"}
!3986 = !DILocation(line: 953, column: 36, scope: !3920, inlinedAt: !3980)
!3987 = !DILocation(line: 0, scope: !3904, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 953, column: 36, scope: !3920, inlinedAt: !3980)
!3989 = !DILocation(line: 185, column: 26, scope: !3904, inlinedAt: !3988)
!3990 = !DILocation(line: 186, column: 13, scope: !3913, inlinedAt: !3988)
!3991 = !DILocation(line: 186, column: 7, scope: !3904, inlinedAt: !3988)
!3992 = !DILocation(line: 187, column: 5, scope: !3913, inlinedAt: !3988)
!3993 = !DILocation(line: 188, column: 11, scope: !3904, inlinedAt: !3988)
!3994 = !DILocation(line: 954, column: 10, scope: !3920, inlinedAt: !3980)
!3995 = !DILocation(line: 955, column: 1, scope: !3920, inlinedAt: !3980)
!3996 = !DILocation(line: 966, column: 3, scope: !3971)
!3997 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !622, file: !622, line: 970, type: !3998, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!144, !150, !147, !4}
!4000 = !{!4001, !4002, !4003, !4004}
!4001 = !DILocalVariable(name: "arg", arg: 1, scope: !3997, file: !622, line: 970, type: !150)
!4002 = !DILocalVariable(name: "argsize", arg: 2, scope: !3997, file: !622, line: 970, type: !147)
!4003 = !DILocalVariable(name: "ch", arg: 3, scope: !3997, file: !622, line: 970, type: !4)
!4004 = !DILocalVariable(name: "options", scope: !3997, file: !622, line: 972, type: !658)
!4005 = !DILocation(line: 0, scope: !3997)
!4006 = !DILocation(line: 972, column: 3, scope: !3997)
!4007 = !DILocation(line: 972, column: 26, scope: !3997)
!4008 = !DILocation(line: 973, column: 13, scope: !3997)
!4009 = !{i64 0, i64 4, !1032, i64 4, i64 4, !1023, i64 8, i64 32, !1032, i64 40, i64 8, !949, i64 48, i64 8, !949}
!4010 = !DILocation(line: 0, scope: !2998, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 974, column: 3, scope: !3997)
!4012 = !DILocation(line: 147, column: 41, scope: !2998, inlinedAt: !4011)
!4013 = !DILocation(line: 147, column: 62, scope: !2998, inlinedAt: !4011)
!4014 = !DILocation(line: 147, column: 57, scope: !2998, inlinedAt: !4011)
!4015 = !DILocation(line: 148, column: 15, scope: !2998, inlinedAt: !4011)
!4016 = !DILocation(line: 149, column: 21, scope: !2998, inlinedAt: !4011)
!4017 = !DILocation(line: 149, column: 24, scope: !2998, inlinedAt: !4011)
!4018 = !DILocation(line: 150, column: 19, scope: !2998, inlinedAt: !4011)
!4019 = !DILocation(line: 150, column: 24, scope: !2998, inlinedAt: !4011)
!4020 = !DILocation(line: 150, column: 6, scope: !2998, inlinedAt: !4011)
!4021 = !DILocation(line: 975, column: 10, scope: !3997)
!4022 = !DILocation(line: 976, column: 1, scope: !3997)
!4023 = !DILocation(line: 975, column: 3, scope: !3997)
!4024 = distinct !DISubprogram(name: "quotearg_char", scope: !622, file: !622, line: 979, type: !4025, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!144, !150, !4}
!4027 = !{!4028, !4029}
!4028 = !DILocalVariable(name: "arg", arg: 1, scope: !4024, file: !622, line: 979, type: !150)
!4029 = !DILocalVariable(name: "ch", arg: 2, scope: !4024, file: !622, line: 979, type: !4)
!4030 = !DILocation(line: 0, scope: !4024)
!4031 = !DILocation(line: 0, scope: !3997, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 981, column: 10, scope: !4024)
!4033 = !DILocation(line: 972, column: 3, scope: !3997, inlinedAt: !4032)
!4034 = !DILocation(line: 972, column: 26, scope: !3997, inlinedAt: !4032)
!4035 = !DILocation(line: 973, column: 13, scope: !3997, inlinedAt: !4032)
!4036 = !DILocation(line: 0, scope: !2998, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 974, column: 3, scope: !3997, inlinedAt: !4032)
!4038 = !DILocation(line: 147, column: 41, scope: !2998, inlinedAt: !4037)
!4039 = !DILocation(line: 147, column: 62, scope: !2998, inlinedAt: !4037)
!4040 = !DILocation(line: 147, column: 57, scope: !2998, inlinedAt: !4037)
!4041 = !DILocation(line: 148, column: 15, scope: !2998, inlinedAt: !4037)
!4042 = !DILocation(line: 149, column: 21, scope: !2998, inlinedAt: !4037)
!4043 = !DILocation(line: 149, column: 24, scope: !2998, inlinedAt: !4037)
!4044 = !DILocation(line: 150, column: 19, scope: !2998, inlinedAt: !4037)
!4045 = !DILocation(line: 150, column: 24, scope: !2998, inlinedAt: !4037)
!4046 = !DILocation(line: 150, column: 6, scope: !2998, inlinedAt: !4037)
!4047 = !DILocation(line: 975, column: 10, scope: !3997, inlinedAt: !4032)
!4048 = !DILocation(line: 976, column: 1, scope: !3997, inlinedAt: !4032)
!4049 = !DILocation(line: 981, column: 3, scope: !4024)
!4050 = distinct !DISubprogram(name: "quotearg_colon", scope: !622, file: !622, line: 985, type: !1150, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4051)
!4051 = !{!4052}
!4052 = !DILocalVariable(name: "arg", arg: 1, scope: !4050, file: !622, line: 985, type: !150)
!4053 = !DILocation(line: 0, scope: !4050)
!4054 = !DILocation(line: 0, scope: !4024, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 987, column: 10, scope: !4050)
!4056 = !DILocation(line: 0, scope: !3997, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 981, column: 10, scope: !4024, inlinedAt: !4055)
!4058 = !DILocation(line: 972, column: 3, scope: !3997, inlinedAt: !4057)
!4059 = !DILocation(line: 972, column: 26, scope: !3997, inlinedAt: !4057)
!4060 = !DILocation(line: 973, column: 13, scope: !3997, inlinedAt: !4057)
!4061 = !DILocation(line: 0, scope: !2998, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 974, column: 3, scope: !3997, inlinedAt: !4057)
!4063 = !DILocation(line: 147, column: 57, scope: !2998, inlinedAt: !4062)
!4064 = !DILocation(line: 149, column: 21, scope: !2998, inlinedAt: !4062)
!4065 = !DILocation(line: 150, column: 6, scope: !2998, inlinedAt: !4062)
!4066 = !DILocation(line: 975, column: 10, scope: !3997, inlinedAt: !4057)
!4067 = !DILocation(line: 976, column: 1, scope: !3997, inlinedAt: !4057)
!4068 = !DILocation(line: 987, column: 3, scope: !4050)
!4069 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !622, file: !622, line: 991, type: !3878, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4070)
!4070 = !{!4071, !4072}
!4071 = !DILocalVariable(name: "arg", arg: 1, scope: !4069, file: !622, line: 991, type: !150)
!4072 = !DILocalVariable(name: "argsize", arg: 2, scope: !4069, file: !622, line: 991, type: !147)
!4073 = !DILocation(line: 0, scope: !4069)
!4074 = !DILocation(line: 0, scope: !3997, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 993, column: 10, scope: !4069)
!4076 = !DILocation(line: 972, column: 3, scope: !3997, inlinedAt: !4075)
!4077 = !DILocation(line: 972, column: 26, scope: !3997, inlinedAt: !4075)
!4078 = !DILocation(line: 973, column: 13, scope: !3997, inlinedAt: !4075)
!4079 = !DILocation(line: 0, scope: !2998, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 974, column: 3, scope: !3997, inlinedAt: !4075)
!4081 = !DILocation(line: 147, column: 57, scope: !2998, inlinedAt: !4080)
!4082 = !DILocation(line: 149, column: 21, scope: !2998, inlinedAt: !4080)
!4083 = !DILocation(line: 150, column: 6, scope: !2998, inlinedAt: !4080)
!4084 = !DILocation(line: 975, column: 10, scope: !3997, inlinedAt: !4075)
!4085 = !DILocation(line: 976, column: 1, scope: !3997, inlinedAt: !4075)
!4086 = !DILocation(line: 993, column: 3, scope: !4069)
!4087 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !622, file: !622, line: 997, type: !3889, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4088)
!4088 = !{!4089, !4090, !4091, !4092}
!4089 = !DILocalVariable(name: "n", arg: 1, scope: !4087, file: !622, line: 997, type: !93)
!4090 = !DILocalVariable(name: "s", arg: 2, scope: !4087, file: !622, line: 997, type: !105)
!4091 = !DILocalVariable(name: "arg", arg: 3, scope: !4087, file: !622, line: 997, type: !150)
!4092 = !DILocalVariable(name: "options", scope: !4087, file: !622, line: 999, type: !658)
!4093 = !DILocation(line: 185, column: 26, scope: !3904, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 1000, column: 13, scope: !4087)
!4095 = !DILocation(line: 0, scope: !4087)
!4096 = !DILocation(line: 999, column: 3, scope: !4087)
!4097 = !DILocation(line: 999, column: 26, scope: !4087)
!4098 = !DILocation(line: 0, scope: !3904, inlinedAt: !4094)
!4099 = !DILocation(line: 186, column: 13, scope: !3913, inlinedAt: !4094)
!4100 = !DILocation(line: 186, column: 7, scope: !3904, inlinedAt: !4094)
!4101 = !DILocation(line: 187, column: 5, scope: !3913, inlinedAt: !4094)
!4102 = !{!4103}
!4103 = distinct !{!4103, !4104, !"quoting_options_from_style: argument 0"}
!4104 = distinct !{!4104, !"quoting_options_from_style"}
!4105 = !DILocation(line: 1000, column: 13, scope: !4087)
!4106 = !DILocation(line: 0, scope: !2998, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 1001, column: 3, scope: !4087)
!4108 = !DILocation(line: 147, column: 57, scope: !2998, inlinedAt: !4107)
!4109 = !DILocation(line: 149, column: 21, scope: !2998, inlinedAt: !4107)
!4110 = !DILocation(line: 150, column: 6, scope: !2998, inlinedAt: !4107)
!4111 = !DILocation(line: 1002, column: 10, scope: !4087)
!4112 = !DILocation(line: 1003, column: 1, scope: !4087)
!4113 = !DILocation(line: 1002, column: 3, scope: !4087)
!4114 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !622, file: !622, line: 1006, type: !4115, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!144, !93, !150, !150, !150}
!4117 = !{!4118, !4119, !4120, !4121}
!4118 = !DILocalVariable(name: "n", arg: 1, scope: !4114, file: !622, line: 1006, type: !93)
!4119 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4114, file: !622, line: 1006, type: !150)
!4120 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4114, file: !622, line: 1007, type: !150)
!4121 = !DILocalVariable(name: "arg", arg: 4, scope: !4114, file: !622, line: 1007, type: !150)
!4122 = !DILocation(line: 0, scope: !4114)
!4123 = !DILocalVariable(name: "n", arg: 1, scope: !4124, file: !622, line: 1014, type: !93)
!4124 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !622, file: !622, line: 1014, type: !4125, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!144, !93, !150, !150, !150, !147}
!4127 = !{!4123, !4128, !4129, !4130, !4131, !4132}
!4128 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4124, file: !622, line: 1014, type: !150)
!4129 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4124, file: !622, line: 1015, type: !150)
!4130 = !DILocalVariable(name: "arg", arg: 4, scope: !4124, file: !622, line: 1016, type: !150)
!4131 = !DILocalVariable(name: "argsize", arg: 5, scope: !4124, file: !622, line: 1016, type: !147)
!4132 = !DILocalVariable(name: "o", scope: !4124, file: !622, line: 1018, type: !658)
!4133 = !DILocation(line: 0, scope: !4124, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 1009, column: 10, scope: !4114)
!4135 = !DILocation(line: 1018, column: 3, scope: !4124, inlinedAt: !4134)
!4136 = !DILocation(line: 1018, column: 26, scope: !4124, inlinedAt: !4134)
!4137 = !DILocation(line: 1018, column: 30, scope: !4124, inlinedAt: !4134)
!4138 = !DILocation(line: 0, scope: !3038, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 1019, column: 3, scope: !4124, inlinedAt: !4134)
!4140 = !DILocation(line: 174, column: 12, scope: !3038, inlinedAt: !4139)
!4141 = !DILocation(line: 175, column: 8, scope: !3051, inlinedAt: !4139)
!4142 = !DILocation(line: 175, column: 19, scope: !3051, inlinedAt: !4139)
!4143 = !DILocation(line: 176, column: 5, scope: !3051, inlinedAt: !4139)
!4144 = !DILocation(line: 177, column: 6, scope: !3038, inlinedAt: !4139)
!4145 = !DILocation(line: 177, column: 17, scope: !3038, inlinedAt: !4139)
!4146 = !DILocation(line: 178, column: 6, scope: !3038, inlinedAt: !4139)
!4147 = !DILocation(line: 178, column: 18, scope: !3038, inlinedAt: !4139)
!4148 = !DILocation(line: 1020, column: 10, scope: !4124, inlinedAt: !4134)
!4149 = !DILocation(line: 1021, column: 1, scope: !4124, inlinedAt: !4134)
!4150 = !DILocation(line: 1009, column: 3, scope: !4114)
!4151 = !DILocation(line: 0, scope: !4124)
!4152 = !DILocation(line: 1018, column: 3, scope: !4124)
!4153 = !DILocation(line: 1018, column: 26, scope: !4124)
!4154 = !DILocation(line: 1018, column: 30, scope: !4124)
!4155 = !DILocation(line: 0, scope: !3038, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 1019, column: 3, scope: !4124)
!4157 = !DILocation(line: 174, column: 12, scope: !3038, inlinedAt: !4156)
!4158 = !DILocation(line: 175, column: 8, scope: !3051, inlinedAt: !4156)
!4159 = !DILocation(line: 175, column: 19, scope: !3051, inlinedAt: !4156)
!4160 = !DILocation(line: 176, column: 5, scope: !3051, inlinedAt: !4156)
!4161 = !DILocation(line: 177, column: 6, scope: !3038, inlinedAt: !4156)
!4162 = !DILocation(line: 177, column: 17, scope: !3038, inlinedAt: !4156)
!4163 = !DILocation(line: 178, column: 6, scope: !3038, inlinedAt: !4156)
!4164 = !DILocation(line: 178, column: 18, scope: !3038, inlinedAt: !4156)
!4165 = !DILocation(line: 1020, column: 10, scope: !4124)
!4166 = !DILocation(line: 1021, column: 1, scope: !4124)
!4167 = !DILocation(line: 1020, column: 3, scope: !4124)
!4168 = distinct !DISubprogram(name: "quotearg_custom", scope: !622, file: !622, line: 1024, type: !4169, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4171)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!144, !150, !150, !150}
!4171 = !{!4172, !4173, !4174}
!4172 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4168, file: !622, line: 1024, type: !150)
!4173 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4168, file: !622, line: 1024, type: !150)
!4174 = !DILocalVariable(name: "arg", arg: 3, scope: !4168, file: !622, line: 1025, type: !150)
!4175 = !DILocation(line: 0, scope: !4168)
!4176 = !DILocation(line: 0, scope: !4114, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 1027, column: 10, scope: !4168)
!4178 = !DILocation(line: 0, scope: !4124, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 1009, column: 10, scope: !4114, inlinedAt: !4177)
!4180 = !DILocation(line: 1018, column: 3, scope: !4124, inlinedAt: !4179)
!4181 = !DILocation(line: 1018, column: 26, scope: !4124, inlinedAt: !4179)
!4182 = !DILocation(line: 1018, column: 30, scope: !4124, inlinedAt: !4179)
!4183 = !DILocation(line: 0, scope: !3038, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 1019, column: 3, scope: !4124, inlinedAt: !4179)
!4185 = !DILocation(line: 174, column: 12, scope: !3038, inlinedAt: !4184)
!4186 = !DILocation(line: 175, column: 8, scope: !3051, inlinedAt: !4184)
!4187 = !DILocation(line: 175, column: 19, scope: !3051, inlinedAt: !4184)
!4188 = !DILocation(line: 176, column: 5, scope: !3051, inlinedAt: !4184)
!4189 = !DILocation(line: 177, column: 6, scope: !3038, inlinedAt: !4184)
!4190 = !DILocation(line: 177, column: 17, scope: !3038, inlinedAt: !4184)
!4191 = !DILocation(line: 178, column: 6, scope: !3038, inlinedAt: !4184)
!4192 = !DILocation(line: 178, column: 18, scope: !3038, inlinedAt: !4184)
!4193 = !DILocation(line: 1020, column: 10, scope: !4124, inlinedAt: !4179)
!4194 = !DILocation(line: 1021, column: 1, scope: !4124, inlinedAt: !4179)
!4195 = !DILocation(line: 1027, column: 3, scope: !4168)
!4196 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !622, file: !622, line: 1031, type: !4197, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!144, !150, !150, !150, !147}
!4199 = !{!4200, !4201, !4202, !4203}
!4200 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4196, file: !622, line: 1031, type: !150)
!4201 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4196, file: !622, line: 1031, type: !150)
!4202 = !DILocalVariable(name: "arg", arg: 3, scope: !4196, file: !622, line: 1032, type: !150)
!4203 = !DILocalVariable(name: "argsize", arg: 4, scope: !4196, file: !622, line: 1032, type: !147)
!4204 = !DILocation(line: 0, scope: !4196)
!4205 = !DILocation(line: 0, scope: !4124, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 1034, column: 10, scope: !4196)
!4207 = !DILocation(line: 1018, column: 3, scope: !4124, inlinedAt: !4206)
!4208 = !DILocation(line: 1018, column: 26, scope: !4124, inlinedAt: !4206)
!4209 = !DILocation(line: 1018, column: 30, scope: !4124, inlinedAt: !4206)
!4210 = !DILocation(line: 0, scope: !3038, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 1019, column: 3, scope: !4124, inlinedAt: !4206)
!4212 = !DILocation(line: 174, column: 12, scope: !3038, inlinedAt: !4211)
!4213 = !DILocation(line: 175, column: 8, scope: !3051, inlinedAt: !4211)
!4214 = !DILocation(line: 175, column: 19, scope: !3051, inlinedAt: !4211)
!4215 = !DILocation(line: 176, column: 5, scope: !3051, inlinedAt: !4211)
!4216 = !DILocation(line: 177, column: 6, scope: !3038, inlinedAt: !4211)
!4217 = !DILocation(line: 177, column: 17, scope: !3038, inlinedAt: !4211)
!4218 = !DILocation(line: 178, column: 6, scope: !3038, inlinedAt: !4211)
!4219 = !DILocation(line: 178, column: 18, scope: !3038, inlinedAt: !4211)
!4220 = !DILocation(line: 1020, column: 10, scope: !4124, inlinedAt: !4206)
!4221 = !DILocation(line: 1021, column: 1, scope: !4124, inlinedAt: !4206)
!4222 = !DILocation(line: 1034, column: 3, scope: !4196)
!4223 = distinct !DISubprogram(name: "quote_n_mem", scope: !622, file: !622, line: 1049, type: !4224, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!150, !93, !150, !147}
!4226 = !{!4227, !4228, !4229}
!4227 = !DILocalVariable(name: "n", arg: 1, scope: !4223, file: !622, line: 1049, type: !93)
!4228 = !DILocalVariable(name: "arg", arg: 2, scope: !4223, file: !622, line: 1049, type: !150)
!4229 = !DILocalVariable(name: "argsize", arg: 3, scope: !4223, file: !622, line: 1049, type: !147)
!4230 = !DILocation(line: 0, scope: !4223)
!4231 = !DILocation(line: 1051, column: 10, scope: !4223)
!4232 = !DILocation(line: 1051, column: 3, scope: !4223)
!4233 = distinct !DISubprogram(name: "quote_mem", scope: !622, file: !622, line: 1055, type: !4234, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!150, !150, !147}
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "arg", arg: 1, scope: !4233, file: !622, line: 1055, type: !150)
!4238 = !DILocalVariable(name: "argsize", arg: 2, scope: !4233, file: !622, line: 1055, type: !147)
!4239 = !DILocation(line: 0, scope: !4233)
!4240 = !DILocation(line: 0, scope: !4223, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 1057, column: 10, scope: !4233)
!4242 = !DILocation(line: 1051, column: 10, scope: !4223, inlinedAt: !4241)
!4243 = !DILocation(line: 1057, column: 3, scope: !4233)
!4244 = distinct !DISubprogram(name: "quote_n", scope: !622, file: !622, line: 1061, type: !4245, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!150, !93, !150}
!4247 = !{!4248, !4249}
!4248 = !DILocalVariable(name: "n", arg: 1, scope: !4244, file: !622, line: 1061, type: !93)
!4249 = !DILocalVariable(name: "arg", arg: 2, scope: !4244, file: !622, line: 1061, type: !150)
!4250 = !DILocation(line: 0, scope: !4244)
!4251 = !DILocation(line: 0, scope: !4223, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 1063, column: 10, scope: !4244)
!4253 = !DILocation(line: 1051, column: 10, scope: !4223, inlinedAt: !4252)
!4254 = !DILocation(line: 1063, column: 3, scope: !4244)
!4255 = distinct !DISubprogram(name: "quote", scope: !622, file: !622, line: 1067, type: !4256, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!150, !150}
!4258 = !{!4259}
!4259 = !DILocalVariable(name: "arg", arg: 1, scope: !4255, file: !622, line: 1067, type: !150)
!4260 = !DILocation(line: 0, scope: !4255)
!4261 = !DILocation(line: 0, scope: !4244, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 1069, column: 10, scope: !4255)
!4263 = !DILocation(line: 0, scope: !4223, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 1063, column: 10, scope: !4244, inlinedAt: !4262)
!4265 = !DILocation(line: 1051, column: 10, scope: !4223, inlinedAt: !4264)
!4266 = !DILocation(line: 1069, column: 3, scope: !4255)
!4267 = distinct !DISubprogram(name: "version_etc_arn", scope: !719, file: !719, line: 61, type: !4268, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !4305)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !4270, !150, !150, !150, !4304, !147}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !4272)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !4273)
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4272, file: !242, line: 51, baseType: !93, size: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4272, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4272, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4272, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4272, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4272, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4272, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4272, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4272, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4272, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4272, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4272, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4272, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4272, file: !242, line: 70, baseType: !4288, size: 64, offset: 832)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4272, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4272, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4272, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4272, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4272, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4272, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4272, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4272, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4272, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4272, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4272, file: !242, line: 93, baseType: !4288, size: 64, offset: 1344)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4272, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4272, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4272, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4272, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311}
!4306 = !DILocalVariable(name: "stream", arg: 1, scope: !4267, file: !719, line: 61, type: !4270)
!4307 = !DILocalVariable(name: "command_name", arg: 2, scope: !4267, file: !719, line: 62, type: !150)
!4308 = !DILocalVariable(name: "package", arg: 3, scope: !4267, file: !719, line: 62, type: !150)
!4309 = !DILocalVariable(name: "version", arg: 4, scope: !4267, file: !719, line: 63, type: !150)
!4310 = !DILocalVariable(name: "authors", arg: 5, scope: !4267, file: !719, line: 64, type: !4304)
!4311 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4267, file: !719, line: 64, type: !147)
!4312 = !DILocation(line: 0, scope: !4267)
!4313 = !DILocation(line: 66, column: 7, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4267, file: !719, line: 66, column: 7)
!4315 = !DILocation(line: 66, column: 7, scope: !4267)
!4316 = !DILocation(line: 67, column: 5, scope: !4314)
!4317 = !DILocation(line: 69, column: 5, scope: !4314)
!4318 = !DILocation(line: 83, column: 3, scope: !4267)
!4319 = !DILocation(line: 85, column: 3, scope: !4267)
!4320 = !DILocation(line: 88, column: 3, scope: !4267)
!4321 = !DILocation(line: 95, column: 3, scope: !4267)
!4322 = !DILocation(line: 97, column: 3, scope: !4267)
!4323 = !DILocation(line: 105, column: 7, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4267, file: !719, line: 98, column: 5)
!4325 = !DILocation(line: 106, column: 7, scope: !4324)
!4326 = !DILocation(line: 109, column: 7, scope: !4324)
!4327 = !DILocation(line: 110, column: 7, scope: !4324)
!4328 = !DILocation(line: 113, column: 7, scope: !4324)
!4329 = !DILocation(line: 115, column: 7, scope: !4324)
!4330 = !DILocation(line: 120, column: 7, scope: !4324)
!4331 = !DILocation(line: 122, column: 7, scope: !4324)
!4332 = !DILocation(line: 127, column: 7, scope: !4324)
!4333 = !DILocation(line: 129, column: 7, scope: !4324)
!4334 = !DILocation(line: 134, column: 7, scope: !4324)
!4335 = !DILocation(line: 137, column: 7, scope: !4324)
!4336 = !DILocation(line: 142, column: 7, scope: !4324)
!4337 = !DILocation(line: 145, column: 7, scope: !4324)
!4338 = !DILocation(line: 150, column: 7, scope: !4324)
!4339 = !DILocation(line: 154, column: 7, scope: !4324)
!4340 = !DILocation(line: 159, column: 7, scope: !4324)
!4341 = !DILocation(line: 163, column: 7, scope: !4324)
!4342 = !DILocation(line: 170, column: 7, scope: !4324)
!4343 = !DILocation(line: 174, column: 7, scope: !4324)
!4344 = !DILocation(line: 176, column: 1, scope: !4267)
!4345 = distinct !DISubprogram(name: "version_etc_ar", scope: !719, file: !719, line: 183, type: !4346, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !4348)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{null, !4270, !150, !150, !150, !4304}
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4354}
!4349 = !DILocalVariable(name: "stream", arg: 1, scope: !4345, file: !719, line: 183, type: !4270)
!4350 = !DILocalVariable(name: "command_name", arg: 2, scope: !4345, file: !719, line: 184, type: !150)
!4351 = !DILocalVariable(name: "package", arg: 3, scope: !4345, file: !719, line: 184, type: !150)
!4352 = !DILocalVariable(name: "version", arg: 4, scope: !4345, file: !719, line: 185, type: !150)
!4353 = !DILocalVariable(name: "authors", arg: 5, scope: !4345, file: !719, line: 185, type: !4304)
!4354 = !DILocalVariable(name: "n_authors", scope: !4345, file: !719, line: 187, type: !147)
!4355 = !DILocation(line: 0, scope: !4345)
!4356 = !DILocation(line: 189, column: 8, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4345, file: !719, line: 189, column: 3)
!4358 = !DILocation(line: 189, scope: !4357)
!4359 = !DILocation(line: 189, column: 23, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4357, file: !719, line: 189, column: 3)
!4361 = !DILocation(line: 189, column: 3, scope: !4357)
!4362 = !DILocation(line: 189, column: 52, scope: !4360)
!4363 = distinct !{!4363, !4361, !4364, !1070}
!4364 = !DILocation(line: 190, column: 5, scope: !4357)
!4365 = !DILocation(line: 191, column: 3, scope: !4345)
!4366 = !DILocation(line: 192, column: 1, scope: !4345)
!4367 = distinct !DISubprogram(name: "version_etc_va", scope: !719, file: !719, line: 199, type: !4368, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !4378)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4270, !150, !150, !150, !4370}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4372)
!4372 = !{!4373, !4375, !4376, !4377}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4371, file: !4374, line: 192, baseType: !99, size: 32)
!4374 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4371, file: !4374, line: 192, baseType: !99, size: 32, offset: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4371, file: !4374, line: 192, baseType: !145, size: 64, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4371, file: !4374, line: 192, baseType: !145, size: 64, offset: 128)
!4378 = !{!4379, !4380, !4381, !4382, !4383, !4384, !4385}
!4379 = !DILocalVariable(name: "stream", arg: 1, scope: !4367, file: !719, line: 199, type: !4270)
!4380 = !DILocalVariable(name: "command_name", arg: 2, scope: !4367, file: !719, line: 200, type: !150)
!4381 = !DILocalVariable(name: "package", arg: 3, scope: !4367, file: !719, line: 200, type: !150)
!4382 = !DILocalVariable(name: "version", arg: 4, scope: !4367, file: !719, line: 201, type: !150)
!4383 = !DILocalVariable(name: "authors", arg: 5, scope: !4367, file: !719, line: 201, type: !4370)
!4384 = !DILocalVariable(name: "n_authors", scope: !4367, file: !719, line: 203, type: !147)
!4385 = !DILocalVariable(name: "authtab", scope: !4367, file: !719, line: 204, type: !4386)
!4386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 640, elements: !75)
!4387 = !DILocation(line: 0, scope: !4367)
!4388 = !DILocation(line: 204, column: 3, scope: !4367)
!4389 = !DILocation(line: 204, column: 15, scope: !4367)
!4390 = !DILocation(line: 208, column: 35, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !719, line: 206, column: 3)
!4392 = distinct !DILexicalBlock(scope: !4367, file: !719, line: 206, column: 3)
!4393 = !DILocation(line: 208, column: 33, scope: !4391)
!4394 = !DILocation(line: 208, column: 67, scope: !4391)
!4395 = !DILocation(line: 206, column: 3, scope: !4392)
!4396 = !DILocation(line: 208, column: 14, scope: !4391)
!4397 = !DILocation(line: 0, scope: !4392)
!4398 = !DILocation(line: 211, column: 3, scope: !4367)
!4399 = !DILocation(line: 213, column: 1, scope: !4367)
!4400 = distinct !DISubprogram(name: "version_etc", scope: !719, file: !719, line: 230, type: !4401, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !4403)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{null, !4270, !150, !150, !150, null}
!4403 = !{!4404, !4405, !4406, !4407, !4408}
!4404 = !DILocalVariable(name: "stream", arg: 1, scope: !4400, file: !719, line: 230, type: !4270)
!4405 = !DILocalVariable(name: "command_name", arg: 2, scope: !4400, file: !719, line: 231, type: !150)
!4406 = !DILocalVariable(name: "package", arg: 3, scope: !4400, file: !719, line: 231, type: !150)
!4407 = !DILocalVariable(name: "version", arg: 4, scope: !4400, file: !719, line: 232, type: !150)
!4408 = !DILocalVariable(name: "authors", scope: !4400, file: !719, line: 234, type: !4409)
!4409 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1018, line: 52, baseType: !4410)
!4410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2501, line: 14, baseType: !4411)
!4411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4374, baseType: !4412)
!4412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4371, size: 192, elements: !70)
!4413 = !DILocation(line: 0, scope: !4400)
!4414 = !DILocation(line: 234, column: 3, scope: !4400)
!4415 = !DILocation(line: 234, column: 11, scope: !4400)
!4416 = !DILocation(line: 235, column: 3, scope: !4400)
!4417 = !DILocation(line: 236, column: 3, scope: !4400)
!4418 = !DILocation(line: 237, column: 3, scope: !4400)
!4419 = !DILocation(line: 238, column: 1, scope: !4400)
!4420 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !719, file: !719, line: 241, type: !577, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !958)
!4421 = !DILocation(line: 243, column: 3, scope: !4420)
!4422 = !DILocation(line: 248, column: 3, scope: !4420)
!4423 = !DILocation(line: 254, column: 3, scope: !4420)
!4424 = !DILocation(line: 259, column: 3, scope: !4420)
!4425 = !DILocation(line: 261, column: 1, scope: !4420)
!4426 = distinct !DISubprogram(name: "xnrealloc", scope: !4427, file: !4427, line: 147, type: !4428, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4430)
!4427 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!145, !145, !147, !147}
!4430 = !{!4431, !4432, !4433}
!4431 = !DILocalVariable(name: "p", arg: 1, scope: !4426, file: !4427, line: 147, type: !145)
!4432 = !DILocalVariable(name: "n", arg: 2, scope: !4426, file: !4427, line: 147, type: !147)
!4433 = !DILocalVariable(name: "s", arg: 3, scope: !4426, file: !4427, line: 147, type: !147)
!4434 = !DILocation(line: 0, scope: !4426)
!4435 = !DILocalVariable(name: "p", arg: 1, scope: !4436, file: !862, line: 83, type: !145)
!4436 = distinct !DISubprogram(name: "xreallocarray", scope: !862, file: !862, line: 83, type: !4428, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4437)
!4437 = !{!4435, !4438, !4439}
!4438 = !DILocalVariable(name: "n", arg: 2, scope: !4436, file: !862, line: 83, type: !147)
!4439 = !DILocalVariable(name: "s", arg: 3, scope: !4436, file: !862, line: 83, type: !147)
!4440 = !DILocation(line: 0, scope: !4436, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 149, column: 10, scope: !4426)
!4442 = !DILocation(line: 85, column: 25, scope: !4436, inlinedAt: !4441)
!4443 = !DILocalVariable(name: "p", arg: 1, scope: !4444, file: !862, line: 37, type: !145)
!4444 = distinct !DISubprogram(name: "check_nonnull", scope: !862, file: !862, line: 37, type: !4445, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!145, !145}
!4447 = !{!4443}
!4448 = !DILocation(line: 0, scope: !4444, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 85, column: 10, scope: !4436, inlinedAt: !4441)
!4450 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4449)
!4451 = distinct !DILexicalBlock(scope: !4444, file: !862, line: 39, column: 7)
!4452 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4449)
!4453 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4449)
!4454 = !DILocation(line: 149, column: 3, scope: !4426)
!4455 = !DILocation(line: 0, scope: !4436)
!4456 = !DILocation(line: 85, column: 25, scope: !4436)
!4457 = !DILocation(line: 0, scope: !4444, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 85, column: 10, scope: !4436)
!4459 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4458)
!4460 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4458)
!4461 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4458)
!4462 = !DILocation(line: 85, column: 3, scope: !4436)
!4463 = distinct !DISubprogram(name: "xmalloc", scope: !862, file: !862, line: 47, type: !4464, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4466)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!145, !147}
!4466 = !{!4467}
!4467 = !DILocalVariable(name: "s", arg: 1, scope: !4463, file: !862, line: 47, type: !147)
!4468 = !DILocation(line: 0, scope: !4463)
!4469 = !DILocation(line: 49, column: 25, scope: !4463)
!4470 = !DILocation(line: 0, scope: !4444, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 49, column: 10, scope: !4463)
!4472 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4471)
!4473 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4471)
!4474 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4471)
!4475 = !DILocation(line: 49, column: 3, scope: !4463)
!4476 = !DISubprogram(name: "malloc", scope: !1148, file: !1148, line: 540, type: !4464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!4477 = distinct !DISubprogram(name: "ximalloc", scope: !862, file: !862, line: 53, type: !4478, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4480)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!145, !881}
!4480 = !{!4481}
!4481 = !DILocalVariable(name: "s", arg: 1, scope: !4477, file: !862, line: 53, type: !881)
!4482 = !DILocation(line: 0, scope: !4477)
!4483 = !DILocalVariable(name: "s", arg: 1, scope: !4484, file: !4485, line: 55, type: !881)
!4484 = distinct !DISubprogram(name: "imalloc", scope: !4485, file: !4485, line: 55, type: !4478, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4486)
!4485 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4486 = !{!4483}
!4487 = !DILocation(line: 0, scope: !4484, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 55, column: 25, scope: !4477)
!4489 = !DILocation(line: 57, column: 26, scope: !4484, inlinedAt: !4488)
!4490 = !DILocation(line: 0, scope: !4444, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 55, column: 10, scope: !4477)
!4492 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4491)
!4493 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4491)
!4494 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4491)
!4495 = !DILocation(line: 55, column: 3, scope: !4477)
!4496 = distinct !DISubprogram(name: "xcharalloc", scope: !862, file: !862, line: 59, type: !4497, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4499)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!144, !147}
!4499 = !{!4500}
!4500 = !DILocalVariable(name: "n", arg: 1, scope: !4496, file: !862, line: 59, type: !147)
!4501 = !DILocation(line: 0, scope: !4496)
!4502 = !DILocation(line: 0, scope: !4463, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 61, column: 10, scope: !4496)
!4504 = !DILocation(line: 49, column: 25, scope: !4463, inlinedAt: !4503)
!4505 = !DILocation(line: 0, scope: !4444, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 49, column: 10, scope: !4463, inlinedAt: !4503)
!4507 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4506)
!4508 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4506)
!4509 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4506)
!4510 = !DILocation(line: 61, column: 3, scope: !4496)
!4511 = distinct !DISubprogram(name: "xrealloc", scope: !862, file: !862, line: 68, type: !4512, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4514)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!145, !145, !147}
!4514 = !{!4515, !4516}
!4515 = !DILocalVariable(name: "p", arg: 1, scope: !4511, file: !862, line: 68, type: !145)
!4516 = !DILocalVariable(name: "s", arg: 2, scope: !4511, file: !862, line: 68, type: !147)
!4517 = !DILocation(line: 0, scope: !4511)
!4518 = !DILocalVariable(name: "ptr", arg: 1, scope: !4519, file: !4520, line: 2057, type: !145)
!4519 = distinct !DISubprogram(name: "rpl_realloc", scope: !4520, file: !4520, line: 2057, type: !4512, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4521)
!4520 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4521 = !{!4518, !4522}
!4522 = !DILocalVariable(name: "size", arg: 2, scope: !4519, file: !4520, line: 2057, type: !147)
!4523 = !DILocation(line: 0, scope: !4519, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 70, column: 25, scope: !4511)
!4525 = !DILocation(line: 2059, column: 24, scope: !4519, inlinedAt: !4524)
!4526 = !DILocation(line: 2059, column: 10, scope: !4519, inlinedAt: !4524)
!4527 = !DILocation(line: 0, scope: !4444, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 70, column: 10, scope: !4511)
!4529 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4528)
!4530 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4528)
!4531 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4528)
!4532 = !DILocation(line: 70, column: 3, scope: !4511)
!4533 = !DISubprogram(name: "realloc", scope: !1148, file: !1148, line: 551, type: !4512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!4534 = distinct !DISubprogram(name: "xirealloc", scope: !862, file: !862, line: 74, type: !4535, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4537)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!145, !145, !881}
!4537 = !{!4538, !4539}
!4538 = !DILocalVariable(name: "p", arg: 1, scope: !4534, file: !862, line: 74, type: !145)
!4539 = !DILocalVariable(name: "s", arg: 2, scope: !4534, file: !862, line: 74, type: !881)
!4540 = !DILocation(line: 0, scope: !4534)
!4541 = !DILocalVariable(name: "p", arg: 1, scope: !4542, file: !4485, line: 66, type: !145)
!4542 = distinct !DISubprogram(name: "irealloc", scope: !4485, file: !4485, line: 66, type: !4535, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4543)
!4543 = !{!4541, !4544}
!4544 = !DILocalVariable(name: "s", arg: 2, scope: !4542, file: !4485, line: 66, type: !881)
!4545 = !DILocation(line: 0, scope: !4542, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 76, column: 25, scope: !4534)
!4547 = !DILocation(line: 0, scope: !4519, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 68, column: 26, scope: !4542, inlinedAt: !4546)
!4549 = !DILocation(line: 2059, column: 24, scope: !4519, inlinedAt: !4548)
!4550 = !DILocation(line: 2059, column: 10, scope: !4519, inlinedAt: !4548)
!4551 = !DILocation(line: 0, scope: !4444, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 76, column: 10, scope: !4534)
!4553 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4552)
!4554 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4552)
!4555 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4552)
!4556 = !DILocation(line: 76, column: 3, scope: !4534)
!4557 = distinct !DISubprogram(name: "xireallocarray", scope: !862, file: !862, line: 89, type: !4558, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4560)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!145, !145, !881, !881}
!4560 = !{!4561, !4562, !4563}
!4561 = !DILocalVariable(name: "p", arg: 1, scope: !4557, file: !862, line: 89, type: !145)
!4562 = !DILocalVariable(name: "n", arg: 2, scope: !4557, file: !862, line: 89, type: !881)
!4563 = !DILocalVariable(name: "s", arg: 3, scope: !4557, file: !862, line: 89, type: !881)
!4564 = !DILocation(line: 0, scope: !4557)
!4565 = !DILocalVariable(name: "p", arg: 1, scope: !4566, file: !4485, line: 98, type: !145)
!4566 = distinct !DISubprogram(name: "ireallocarray", scope: !4485, file: !4485, line: 98, type: !4558, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4567)
!4567 = !{!4565, !4568, !4569}
!4568 = !DILocalVariable(name: "n", arg: 2, scope: !4566, file: !4485, line: 98, type: !881)
!4569 = !DILocalVariable(name: "s", arg: 3, scope: !4566, file: !4485, line: 98, type: !881)
!4570 = !DILocation(line: 0, scope: !4566, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 91, column: 25, scope: !4557)
!4572 = !DILocation(line: 101, column: 13, scope: !4566, inlinedAt: !4571)
!4573 = !DILocation(line: 0, scope: !4444, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 91, column: 10, scope: !4557)
!4575 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4574)
!4576 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4574)
!4577 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4574)
!4578 = !DILocation(line: 91, column: 3, scope: !4557)
!4579 = distinct !DISubprogram(name: "xnmalloc", scope: !862, file: !862, line: 98, type: !4580, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4582)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!145, !147, !147}
!4582 = !{!4583, !4584}
!4583 = !DILocalVariable(name: "n", arg: 1, scope: !4579, file: !862, line: 98, type: !147)
!4584 = !DILocalVariable(name: "s", arg: 2, scope: !4579, file: !862, line: 98, type: !147)
!4585 = !DILocation(line: 0, scope: !4579)
!4586 = !DILocation(line: 0, scope: !4436, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 100, column: 10, scope: !4579)
!4588 = !DILocation(line: 85, column: 25, scope: !4436, inlinedAt: !4587)
!4589 = !DILocation(line: 0, scope: !4444, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 85, column: 10, scope: !4436, inlinedAt: !4587)
!4591 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4590)
!4592 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4590)
!4593 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4590)
!4594 = !DILocation(line: 100, column: 3, scope: !4579)
!4595 = distinct !DISubprogram(name: "xinmalloc", scope: !862, file: !862, line: 104, type: !4596, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4598)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!145, !881, !881}
!4598 = !{!4599, !4600}
!4599 = !DILocalVariable(name: "n", arg: 1, scope: !4595, file: !862, line: 104, type: !881)
!4600 = !DILocalVariable(name: "s", arg: 2, scope: !4595, file: !862, line: 104, type: !881)
!4601 = !DILocation(line: 0, scope: !4595)
!4602 = !DILocation(line: 0, scope: !4557, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 106, column: 10, scope: !4595)
!4604 = !DILocation(line: 0, scope: !4566, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 91, column: 25, scope: !4557, inlinedAt: !4603)
!4606 = !DILocation(line: 101, column: 13, scope: !4566, inlinedAt: !4605)
!4607 = !DILocation(line: 0, scope: !4444, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 91, column: 10, scope: !4557, inlinedAt: !4603)
!4609 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4608)
!4610 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4608)
!4611 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4608)
!4612 = !DILocation(line: 106, column: 3, scope: !4595)
!4613 = distinct !DISubprogram(name: "x2realloc", scope: !862, file: !862, line: 116, type: !4614, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4616)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!145, !145, !868}
!4616 = !{!4617, !4618}
!4617 = !DILocalVariable(name: "p", arg: 1, scope: !4613, file: !862, line: 116, type: !145)
!4618 = !DILocalVariable(name: "ps", arg: 2, scope: !4613, file: !862, line: 116, type: !868)
!4619 = !DILocation(line: 0, scope: !4613)
!4620 = !DILocation(line: 0, scope: !865, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 118, column: 10, scope: !4613)
!4622 = !DILocation(line: 178, column: 14, scope: !865, inlinedAt: !4621)
!4623 = !DILocation(line: 180, column: 9, scope: !4624, inlinedAt: !4621)
!4624 = distinct !DILexicalBlock(scope: !865, file: !862, line: 180, column: 7)
!4625 = !DILocation(line: 180, column: 7, scope: !865, inlinedAt: !4621)
!4626 = !DILocation(line: 182, column: 13, scope: !4627, inlinedAt: !4621)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !862, line: 182, column: 11)
!4628 = distinct !DILexicalBlock(scope: !4624, file: !862, line: 181, column: 5)
!4629 = !DILocation(line: 182, column: 11, scope: !4628, inlinedAt: !4621)
!4630 = !DILocation(line: 197, column: 11, scope: !4631, inlinedAt: !4621)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !862, line: 197, column: 11)
!4632 = distinct !DILexicalBlock(scope: !4624, file: !862, line: 195, column: 5)
!4633 = !DILocation(line: 197, column: 11, scope: !4632, inlinedAt: !4621)
!4634 = !DILocation(line: 198, column: 9, scope: !4631, inlinedAt: !4621)
!4635 = !DILocation(line: 0, scope: !4436, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 201, column: 7, scope: !865, inlinedAt: !4621)
!4637 = !DILocation(line: 85, column: 25, scope: !4436, inlinedAt: !4636)
!4638 = !DILocation(line: 0, scope: !4444, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 85, column: 10, scope: !4436, inlinedAt: !4636)
!4640 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4639)
!4641 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4639)
!4642 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4639)
!4643 = !DILocation(line: 202, column: 7, scope: !865, inlinedAt: !4621)
!4644 = !DILocation(line: 118, column: 3, scope: !4613)
!4645 = !DILocation(line: 0, scope: !865)
!4646 = !DILocation(line: 178, column: 14, scope: !865)
!4647 = !DILocation(line: 180, column: 9, scope: !4624)
!4648 = !DILocation(line: 180, column: 7, scope: !865)
!4649 = !DILocation(line: 182, column: 13, scope: !4627)
!4650 = !DILocation(line: 182, column: 11, scope: !4628)
!4651 = !DILocation(line: 190, column: 30, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4627, file: !862, line: 183, column: 9)
!4653 = !DILocation(line: 191, column: 16, scope: !4652)
!4654 = !DILocation(line: 191, column: 13, scope: !4652)
!4655 = !DILocation(line: 192, column: 9, scope: !4652)
!4656 = !DILocation(line: 197, column: 11, scope: !4631)
!4657 = !DILocation(line: 197, column: 11, scope: !4632)
!4658 = !DILocation(line: 198, column: 9, scope: !4631)
!4659 = !DILocation(line: 0, scope: !4436, inlinedAt: !4660)
!4660 = distinct !DILocation(line: 201, column: 7, scope: !865)
!4661 = !DILocation(line: 85, column: 25, scope: !4436, inlinedAt: !4660)
!4662 = !DILocation(line: 0, scope: !4444, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 85, column: 10, scope: !4436, inlinedAt: !4660)
!4664 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4663)
!4665 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4663)
!4666 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4663)
!4667 = !DILocation(line: 202, column: 7, scope: !865)
!4668 = !DILocation(line: 203, column: 3, scope: !865)
!4669 = !DILocation(line: 0, scope: !877)
!4670 = !DILocation(line: 230, column: 14, scope: !877)
!4671 = !DILocation(line: 238, column: 7, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !877, file: !862, line: 238, column: 7)
!4673 = !DILocation(line: 238, column: 7, scope: !877)
!4674 = !DILocation(line: 240, column: 9, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !877, file: !862, line: 240, column: 7)
!4676 = !DILocation(line: 240, column: 18, scope: !4675)
!4677 = !DILocation(line: 253, column: 8, scope: !877)
!4678 = !DILocation(line: 258, column: 27, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !862, line: 257, column: 5)
!4680 = distinct !DILexicalBlock(scope: !877, file: !862, line: 256, column: 7)
!4681 = !DILocation(line: 259, column: 50, scope: !4679)
!4682 = !DILocation(line: 259, column: 32, scope: !4679)
!4683 = !DILocation(line: 260, column: 5, scope: !4679)
!4684 = !DILocation(line: 262, column: 9, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !877, file: !862, line: 262, column: 7)
!4686 = !DILocation(line: 262, column: 7, scope: !877)
!4687 = !DILocation(line: 263, column: 9, scope: !4685)
!4688 = !DILocation(line: 263, column: 5, scope: !4685)
!4689 = !DILocation(line: 264, column: 9, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !877, file: !862, line: 264, column: 7)
!4691 = !DILocation(line: 264, column: 14, scope: !4690)
!4692 = !DILocation(line: 265, column: 7, scope: !4690)
!4693 = !DILocation(line: 265, column: 11, scope: !4690)
!4694 = !DILocation(line: 266, column: 11, scope: !4690)
!4695 = !DILocation(line: 267, column: 14, scope: !4690)
!4696 = !DILocation(line: 264, column: 7, scope: !877)
!4697 = !DILocation(line: 268, column: 5, scope: !4690)
!4698 = !DILocation(line: 0, scope: !4511, inlinedAt: !4699)
!4699 = distinct !DILocation(line: 269, column: 8, scope: !877)
!4700 = !DILocation(line: 0, scope: !4519, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 70, column: 25, scope: !4511, inlinedAt: !4699)
!4702 = !DILocation(line: 2059, column: 24, scope: !4519, inlinedAt: !4701)
!4703 = !DILocation(line: 2059, column: 10, scope: !4519, inlinedAt: !4701)
!4704 = !DILocation(line: 0, scope: !4444, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 70, column: 10, scope: !4511, inlinedAt: !4699)
!4706 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4705)
!4707 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4705)
!4708 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4705)
!4709 = !DILocation(line: 270, column: 7, scope: !877)
!4710 = !DILocation(line: 271, column: 3, scope: !877)
!4711 = distinct !DISubprogram(name: "xzalloc", scope: !862, file: !862, line: 279, type: !4464, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4712)
!4712 = !{!4713}
!4713 = !DILocalVariable(name: "s", arg: 1, scope: !4711, file: !862, line: 279, type: !147)
!4714 = !DILocation(line: 0, scope: !4711)
!4715 = !DILocalVariable(name: "n", arg: 1, scope: !4716, file: !862, line: 294, type: !147)
!4716 = distinct !DISubprogram(name: "xcalloc", scope: !862, file: !862, line: 294, type: !4580, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4717)
!4717 = !{!4715, !4718}
!4718 = !DILocalVariable(name: "s", arg: 2, scope: !4716, file: !862, line: 294, type: !147)
!4719 = !DILocation(line: 0, scope: !4716, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 281, column: 10, scope: !4711)
!4721 = !DILocation(line: 296, column: 25, scope: !4716, inlinedAt: !4720)
!4722 = !DILocation(line: 0, scope: !4444, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 296, column: 10, scope: !4716, inlinedAt: !4720)
!4724 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4723)
!4725 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4723)
!4726 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4723)
!4727 = !DILocation(line: 281, column: 3, scope: !4711)
!4728 = !DISubprogram(name: "calloc", scope: !1148, file: !1148, line: 543, type: !4580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!4729 = !DILocation(line: 0, scope: !4716)
!4730 = !DILocation(line: 296, column: 25, scope: !4716)
!4731 = !DILocation(line: 0, scope: !4444, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 296, column: 10, scope: !4716)
!4733 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4732)
!4734 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4732)
!4735 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4732)
!4736 = !DILocation(line: 296, column: 3, scope: !4716)
!4737 = distinct !DISubprogram(name: "xizalloc", scope: !862, file: !862, line: 285, type: !4478, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4738)
!4738 = !{!4739}
!4739 = !DILocalVariable(name: "s", arg: 1, scope: !4737, file: !862, line: 285, type: !881)
!4740 = !DILocation(line: 0, scope: !4737)
!4741 = !DILocalVariable(name: "n", arg: 1, scope: !4742, file: !862, line: 300, type: !881)
!4742 = distinct !DISubprogram(name: "xicalloc", scope: !862, file: !862, line: 300, type: !4596, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4743)
!4743 = !{!4741, !4744}
!4744 = !DILocalVariable(name: "s", arg: 2, scope: !4742, file: !862, line: 300, type: !881)
!4745 = !DILocation(line: 0, scope: !4742, inlinedAt: !4746)
!4746 = distinct !DILocation(line: 287, column: 10, scope: !4737)
!4747 = !DILocalVariable(name: "n", arg: 1, scope: !4748, file: !4485, line: 77, type: !881)
!4748 = distinct !DISubprogram(name: "icalloc", scope: !4485, file: !4485, line: 77, type: !4596, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4749)
!4749 = !{!4747, !4750}
!4750 = !DILocalVariable(name: "s", arg: 2, scope: !4748, file: !4485, line: 77, type: !881)
!4751 = !DILocation(line: 0, scope: !4748, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 302, column: 25, scope: !4742, inlinedAt: !4746)
!4753 = !DILocation(line: 91, column: 10, scope: !4748, inlinedAt: !4752)
!4754 = !DILocation(line: 0, scope: !4444, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 302, column: 10, scope: !4742, inlinedAt: !4746)
!4756 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4755)
!4757 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4755)
!4758 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4755)
!4759 = !DILocation(line: 287, column: 3, scope: !4737)
!4760 = !DILocation(line: 0, scope: !4742)
!4761 = !DILocation(line: 0, scope: !4748, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 302, column: 25, scope: !4742)
!4763 = !DILocation(line: 91, column: 10, scope: !4748, inlinedAt: !4762)
!4764 = !DILocation(line: 0, scope: !4444, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 302, column: 10, scope: !4742)
!4766 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4765)
!4767 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4765)
!4768 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4765)
!4769 = !DILocation(line: 302, column: 3, scope: !4742)
!4770 = distinct !DISubprogram(name: "xmemdup", scope: !862, file: !862, line: 310, type: !4771, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4773)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!145, !1172, !147}
!4773 = !{!4774, !4775}
!4774 = !DILocalVariable(name: "p", arg: 1, scope: !4770, file: !862, line: 310, type: !1172)
!4775 = !DILocalVariable(name: "s", arg: 2, scope: !4770, file: !862, line: 310, type: !147)
!4776 = !DILocation(line: 0, scope: !4770)
!4777 = !DILocation(line: 0, scope: !4463, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 312, column: 18, scope: !4770)
!4779 = !DILocation(line: 49, column: 25, scope: !4463, inlinedAt: !4778)
!4780 = !DILocation(line: 0, scope: !4444, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 49, column: 10, scope: !4463, inlinedAt: !4778)
!4782 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4781)
!4783 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4781)
!4784 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4781)
!4785 = !DILocalVariable(name: "__dest", arg: 1, scope: !4786, file: !2272, line: 26, type: !4789)
!4786 = distinct !DISubprogram(name: "memcpy", scope: !2272, file: !2272, line: 26, type: !4787, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4790)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!145, !4789, !1171, !147}
!4789 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!4790 = !{!4785, !4791, !4792}
!4791 = !DILocalVariable(name: "__src", arg: 2, scope: !4786, file: !2272, line: 26, type: !1171)
!4792 = !DILocalVariable(name: "__len", arg: 3, scope: !4786, file: !2272, line: 26, type: !147)
!4793 = !DILocation(line: 0, scope: !4786, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 312, column: 10, scope: !4770)
!4795 = !DILocation(line: 29, column: 10, scope: !4786, inlinedAt: !4794)
!4796 = !DILocation(line: 312, column: 3, scope: !4770)
!4797 = distinct !DISubprogram(name: "ximemdup", scope: !862, file: !862, line: 316, type: !4798, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4800)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!145, !1172, !881}
!4800 = !{!4801, !4802}
!4801 = !DILocalVariable(name: "p", arg: 1, scope: !4797, file: !862, line: 316, type: !1172)
!4802 = !DILocalVariable(name: "s", arg: 2, scope: !4797, file: !862, line: 316, type: !881)
!4803 = !DILocation(line: 0, scope: !4797)
!4804 = !DILocation(line: 0, scope: !4477, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 318, column: 18, scope: !4797)
!4806 = !DILocation(line: 0, scope: !4484, inlinedAt: !4807)
!4807 = distinct !DILocation(line: 55, column: 25, scope: !4477, inlinedAt: !4805)
!4808 = !DILocation(line: 57, column: 26, scope: !4484, inlinedAt: !4807)
!4809 = !DILocation(line: 0, scope: !4444, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 55, column: 10, scope: !4477, inlinedAt: !4805)
!4811 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4810)
!4812 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4810)
!4813 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4810)
!4814 = !DILocation(line: 0, scope: !4786, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 318, column: 10, scope: !4797)
!4816 = !DILocation(line: 29, column: 10, scope: !4786, inlinedAt: !4815)
!4817 = !DILocation(line: 318, column: 3, scope: !4797)
!4818 = distinct !DISubprogram(name: "ximemdup0", scope: !862, file: !862, line: 325, type: !4819, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4821)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!144, !1172, !881}
!4821 = !{!4822, !4823, !4824}
!4822 = !DILocalVariable(name: "p", arg: 1, scope: !4818, file: !862, line: 325, type: !1172)
!4823 = !DILocalVariable(name: "s", arg: 2, scope: !4818, file: !862, line: 325, type: !881)
!4824 = !DILocalVariable(name: "result", scope: !4818, file: !862, line: 327, type: !144)
!4825 = !DILocation(line: 0, scope: !4818)
!4826 = !DILocation(line: 327, column: 30, scope: !4818)
!4827 = !DILocation(line: 0, scope: !4477, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 327, column: 18, scope: !4818)
!4829 = !DILocation(line: 0, scope: !4484, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 55, column: 25, scope: !4477, inlinedAt: !4828)
!4831 = !DILocation(line: 57, column: 26, scope: !4484, inlinedAt: !4830)
!4832 = !DILocation(line: 0, scope: !4444, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 55, column: 10, scope: !4477, inlinedAt: !4828)
!4834 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4833)
!4835 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4833)
!4836 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4833)
!4837 = !DILocation(line: 328, column: 3, scope: !4818)
!4838 = !DILocation(line: 328, column: 13, scope: !4818)
!4839 = !DILocation(line: 0, scope: !4786, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 329, column: 10, scope: !4818)
!4841 = !DILocation(line: 29, column: 10, scope: !4786, inlinedAt: !4840)
!4842 = !DILocation(line: 329, column: 3, scope: !4818)
!4843 = distinct !DISubprogram(name: "xstrdup", scope: !862, file: !862, line: 335, type: !1150, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4844)
!4844 = !{!4845}
!4845 = !DILocalVariable(name: "string", arg: 1, scope: !4843, file: !862, line: 335, type: !150)
!4846 = !DILocation(line: 0, scope: !4843)
!4847 = !DILocation(line: 337, column: 27, scope: !4843)
!4848 = !DILocation(line: 337, column: 43, scope: !4843)
!4849 = !DILocation(line: 0, scope: !4770, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 337, column: 10, scope: !4843)
!4851 = !DILocation(line: 0, scope: !4463, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 312, column: 18, scope: !4770, inlinedAt: !4850)
!4853 = !DILocation(line: 49, column: 25, scope: !4463, inlinedAt: !4852)
!4854 = !DILocation(line: 0, scope: !4444, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 49, column: 10, scope: !4463, inlinedAt: !4852)
!4856 = !DILocation(line: 39, column: 8, scope: !4451, inlinedAt: !4855)
!4857 = !DILocation(line: 39, column: 7, scope: !4444, inlinedAt: !4855)
!4858 = !DILocation(line: 40, column: 5, scope: !4451, inlinedAt: !4855)
!4859 = !DILocation(line: 0, scope: !4786, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 312, column: 10, scope: !4770, inlinedAt: !4850)
!4861 = !DILocation(line: 29, column: 10, scope: !4786, inlinedAt: !4860)
!4862 = !DILocation(line: 337, column: 3, scope: !4843)
!4863 = distinct !DISubprogram(name: "xalloc_die", scope: !812, file: !812, line: 32, type: !577, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !895, retainedNodes: !4864)
!4864 = !{!4865}
!4865 = !DILocalVariable(name: "__errstatus", scope: !4866, file: !812, line: 34, type: !4867)
!4866 = distinct !DILexicalBlock(scope: !4863, file: !812, line: 34, column: 3)
!4867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!4868 = !DILocation(line: 34, column: 3, scope: !4866)
!4869 = !DILocation(line: 0, scope: !4866)
!4870 = !DILocation(line: 40, column: 3, scope: !4863)
!4871 = distinct !DISubprogram(name: "xnumtoumax", scope: !819, file: !819, line: 42, type: !4872, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !4874)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!913, !150, !93, !913, !913, !150, !150, !93, !93}
!4874 = !{!4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4887, !4888, !4889}
!4875 = !DILocalVariable(name: "n_str", arg: 1, scope: !4871, file: !819, line: 42, type: !150)
!4876 = !DILocalVariable(name: "base", arg: 2, scope: !4871, file: !819, line: 42, type: !93)
!4877 = !DILocalVariable(name: "min", arg: 3, scope: !4871, file: !819, line: 42, type: !913)
!4878 = !DILocalVariable(name: "max", arg: 4, scope: !4871, file: !819, line: 42, type: !913)
!4879 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4871, file: !819, line: 43, type: !150)
!4880 = !DILocalVariable(name: "err", arg: 6, scope: !4871, file: !819, line: 43, type: !150)
!4881 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4871, file: !819, line: 43, type: !93)
!4882 = !DILocalVariable(name: "flags", arg: 8, scope: !4871, file: !819, line: 44, type: !93)
!4883 = !DILocalVariable(name: "tnum", scope: !4871, file: !819, line: 46, type: !913)
!4884 = !DILocalVariable(name: "r", scope: !4871, file: !819, line: 46, type: !913)
!4885 = !DILocalVariable(name: "s_err", scope: !4871, file: !819, line: 47, type: !4886)
!4886 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !901, line: 43, baseType: !900)
!4887 = !DILocalVariable(name: "overflow_errno", scope: !4871, file: !819, line: 50, type: !93)
!4888 = !DILocalVariable(name: "e", scope: !4871, file: !819, line: 75, type: !93)
!4889 = !DILocalVariable(name: "__errstatus", scope: !4890, file: !819, line: 80, type: !4867)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !819, line: 80, column: 5)
!4891 = distinct !DILexicalBlock(scope: !4871, file: !819, line: 77, column: 7)
!4892 = !DILocation(line: 0, scope: !4871)
!4893 = !DILocation(line: 46, column: 3, scope: !4871)
!4894 = !DILocation(line: 47, column: 24, scope: !4871)
!4895 = !DILocation(line: 52, column: 13, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4871, file: !819, line: 52, column: 7)
!4897 = !DILocation(line: 52, column: 7, scope: !4871)
!4898 = !DILocation(line: 54, column: 11, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !819, line: 54, column: 11)
!4900 = distinct !DILexicalBlock(scope: !4896, file: !819, line: 53, column: 5)
!4901 = !DILocation(line: 54, column: 16, scope: !4899)
!4902 = !DILocation(line: 54, column: 11, scope: !4900)
!4903 = !DILocation(line: 57, column: 34, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4899, file: !819, line: 55, column: 9)
!4905 = !DILocation(line: 57, column: 28, scope: !4904)
!4906 = !DILocation(line: 58, column: 21, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4904, file: !819, line: 58, column: 15)
!4908 = !DILocation(line: 0, scope: !4904)
!4909 = !DILocation(line: 61, column: 20, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4899, file: !819, line: 61, column: 16)
!4911 = !DILocation(line: 61, column: 16, scope: !4899)
!4912 = !DILocation(line: 64, column: 34, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4910, file: !819, line: 62, column: 9)
!4914 = !DILocation(line: 64, column: 28, scope: !4913)
!4915 = !DILocation(line: 65, column: 21, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4913, file: !819, line: 65, column: 15)
!4917 = !DILocation(line: 0, scope: !4913)
!4918 = !DILocation(line: 75, column: 17, scope: !4871)
!4919 = !DILocation(line: 75, column: 11, scope: !4871)
!4920 = !DILocation(line: 77, column: 16, scope: !4891)
!4921 = !DILocation(line: 78, column: 10, scope: !4891)
!4922 = !DILocation(line: 79, column: 14, scope: !4891)
!4923 = !DILocation(line: 80, column: 5, scope: !4891)
!4924 = !DILocation(line: 82, column: 3, scope: !4871)
!4925 = !DILocation(line: 82, column: 9, scope: !4871)
!4926 = !DILocation(line: 84, column: 1, scope: !4871)
!4927 = !DILocation(line: 83, column: 3, scope: !4871)
!4928 = distinct !DISubprogram(name: "xdectoumax", scope: !819, file: !819, line: 92, type: !4929, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !4931)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!913, !150, !913, !913, !150, !150, !93}
!4931 = !{!4932, !4933, !4934, !4935, !4936, !4937}
!4932 = !DILocalVariable(name: "n_str", arg: 1, scope: !4928, file: !819, line: 92, type: !150)
!4933 = !DILocalVariable(name: "min", arg: 2, scope: !4928, file: !819, line: 92, type: !913)
!4934 = !DILocalVariable(name: "max", arg: 3, scope: !4928, file: !819, line: 92, type: !913)
!4935 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4928, file: !819, line: 93, type: !150)
!4936 = !DILocalVariable(name: "err", arg: 5, scope: !4928, file: !819, line: 93, type: !150)
!4937 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4928, file: !819, line: 93, type: !93)
!4938 = !DILocation(line: 0, scope: !4928)
!4939 = !DILocation(line: 0, scope: !4871, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 95, column: 10, scope: !4928)
!4941 = !DILocation(line: 46, column: 3, scope: !4871, inlinedAt: !4940)
!4942 = !DILocation(line: 47, column: 24, scope: !4871, inlinedAt: !4940)
!4943 = !DILocation(line: 52, column: 13, scope: !4896, inlinedAt: !4940)
!4944 = !DILocation(line: 52, column: 7, scope: !4871, inlinedAt: !4940)
!4945 = !DILocation(line: 54, column: 11, scope: !4899, inlinedAt: !4940)
!4946 = !DILocation(line: 54, column: 16, scope: !4899, inlinedAt: !4940)
!4947 = !DILocation(line: 54, column: 11, scope: !4900, inlinedAt: !4940)
!4948 = !DILocation(line: 58, column: 21, scope: !4907, inlinedAt: !4940)
!4949 = !DILocation(line: 0, scope: !4904, inlinedAt: !4940)
!4950 = !DILocation(line: 61, column: 20, scope: !4910, inlinedAt: !4940)
!4951 = !DILocation(line: 61, column: 16, scope: !4899, inlinedAt: !4940)
!4952 = !DILocation(line: 65, column: 21, scope: !4916, inlinedAt: !4940)
!4953 = !DILocation(line: 0, scope: !4913, inlinedAt: !4940)
!4954 = !DILocation(line: 75, column: 17, scope: !4871, inlinedAt: !4940)
!4955 = !DILocation(line: 75, column: 11, scope: !4871, inlinedAt: !4940)
!4956 = !DILocation(line: 77, column: 16, scope: !4891, inlinedAt: !4940)
!4957 = !DILocation(line: 78, column: 10, scope: !4891, inlinedAt: !4940)
!4958 = !DILocation(line: 80, column: 5, scope: !4891, inlinedAt: !4940)
!4959 = !DILocation(line: 82, column: 3, scope: !4871, inlinedAt: !4940)
!4960 = !DILocation(line: 82, column: 9, scope: !4871, inlinedAt: !4940)
!4961 = !DILocation(line: 84, column: 1, scope: !4871, inlinedAt: !4940)
!4962 = !DILocation(line: 95, column: 3, scope: !4928)
!4963 = distinct !DISubprogram(name: "xstrtoumax", scope: !4964, file: !4964, line: 71, type: !4965, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !909, retainedNodes: !4968)
!4964 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!4886, !150, !1177, !93, !4967, !150}
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!4968 = !{!4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4979, !4980, !4981, !4982, !4985, !4986}
!4969 = !DILocalVariable(name: "nptr", arg: 1, scope: !4963, file: !4964, line: 71, type: !150)
!4970 = !DILocalVariable(name: "endptr", arg: 2, scope: !4963, file: !4964, line: 71, type: !1177)
!4971 = !DILocalVariable(name: "base", arg: 3, scope: !4963, file: !4964, line: 71, type: !93)
!4972 = !DILocalVariable(name: "val", arg: 4, scope: !4963, file: !4964, line: 72, type: !4967)
!4973 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4963, file: !4964, line: 72, type: !150)
!4974 = !DILocalVariable(name: "t_ptr", scope: !4963, file: !4964, line: 74, type: !144)
!4975 = !DILocalVariable(name: "p", scope: !4963, file: !4964, line: 75, type: !1177)
!4976 = !DILocalVariable(name: "q", scope: !4977, file: !4964, line: 79, type: !150)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !4964, line: 78, column: 5)
!4978 = distinct !DILexicalBlock(scope: !4963, file: !4964, line: 77, column: 7)
!4979 = !DILocalVariable(name: "ch", scope: !4977, file: !4964, line: 80, type: !152)
!4980 = !DILocalVariable(name: "tmp", scope: !4963, file: !4964, line: 91, type: !913)
!4981 = !DILocalVariable(name: "err", scope: !4963, file: !4964, line: 92, type: !4886)
!4982 = !DILocalVariable(name: "xbase", scope: !4983, file: !4964, line: 126, type: !93)
!4983 = distinct !DILexicalBlock(scope: !4984, file: !4964, line: 119, column: 5)
!4984 = distinct !DILexicalBlock(scope: !4963, file: !4964, line: 118, column: 7)
!4985 = !DILocalVariable(name: "suffixes", scope: !4983, file: !4964, line: 127, type: !93)
!4986 = !DILocalVariable(name: "overflow", scope: !4983, file: !4964, line: 156, type: !4886)
!4987 = !DILocation(line: 0, scope: !4963)
!4988 = !DILocation(line: 74, column: 3, scope: !4963)
!4989 = !DILocation(line: 75, column: 14, scope: !4963)
!4990 = !DILocation(line: 0, scope: !4977)
!4991 = !DILocation(line: 81, column: 7, scope: !4977)
!4992 = !DILocation(line: 81, column: 14, scope: !4977)
!4993 = !DILocation(line: 82, column: 15, scope: !4977)
!4994 = distinct !{!4994, !4991, !4995, !1070}
!4995 = !DILocation(line: 82, column: 17, scope: !4977)
!4996 = !DILocation(line: 83, column: 14, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4977, file: !4964, line: 83, column: 11)
!4998 = !DILocation(line: 83, column: 11, scope: !4977)
!4999 = !DILocation(line: 85, column: 14, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4997, file: !4964, line: 84, column: 9)
!5001 = !DILocation(line: 90, column: 3, scope: !4963)
!5002 = !DILocation(line: 90, column: 9, scope: !4963)
!5003 = !DILocation(line: 91, column: 20, scope: !4963)
!5004 = !DILocation(line: 94, column: 7, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4963, file: !4964, line: 94, column: 7)
!5006 = !DILocation(line: 94, column: 10, scope: !5005)
!5007 = !DILocation(line: 94, column: 7, scope: !4963)
!5008 = !DILocation(line: 98, column: 14, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5010, file: !4964, line: 98, column: 11)
!5010 = distinct !DILexicalBlock(scope: !5005, file: !4964, line: 95, column: 5)
!5011 = !DILocation(line: 98, column: 29, scope: !5009)
!5012 = !DILocation(line: 98, column: 32, scope: !5009)
!5013 = !DILocation(line: 98, column: 38, scope: !5009)
!5014 = !DILocation(line: 98, column: 41, scope: !5009)
!5015 = !DILocation(line: 98, column: 11, scope: !5010)
!5016 = !DILocation(line: 102, column: 12, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5005, file: !4964, line: 102, column: 12)
!5018 = !DILocation(line: 102, column: 12, scope: !5005)
!5019 = !DILocation(line: 107, column: 5, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5017, file: !4964, line: 103, column: 5)
!5021 = !DILocation(line: 112, column: 8, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4963, file: !4964, line: 112, column: 7)
!5023 = !DILocation(line: 112, column: 7, scope: !4963)
!5024 = !DILocation(line: 114, column: 12, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5022, file: !4964, line: 113, column: 5)
!5026 = !DILocation(line: 115, column: 7, scope: !5025)
!5027 = !DILocation(line: 118, column: 7, scope: !4984)
!5028 = !DILocation(line: 118, column: 11, scope: !4984)
!5029 = !DILocation(line: 118, column: 7, scope: !4963)
!5030 = !DILocation(line: 120, column: 12, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4983, file: !4964, line: 120, column: 11)
!5032 = !DILocation(line: 120, column: 11, scope: !4983)
!5033 = !DILocation(line: 122, column: 16, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5031, file: !4964, line: 121, column: 9)
!5035 = !DILocation(line: 123, column: 22, scope: !5034)
!5036 = !DILocation(line: 123, column: 11, scope: !5034)
!5037 = !DILocation(line: 0, scope: !4983)
!5038 = !DILocation(line: 128, column: 7, scope: !4983)
!5039 = !DILocation(line: 140, column: 15, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !4964, line: 140, column: 15)
!5041 = distinct !DILexicalBlock(scope: !4983, file: !4964, line: 129, column: 9)
!5042 = !DILocation(line: 140, column: 15, scope: !5041)
!5043 = !DILocation(line: 141, column: 21, scope: !5040)
!5044 = !DILocation(line: 141, column: 13, scope: !5040)
!5045 = !DILocation(line: 144, column: 21, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5047, file: !4964, line: 144, column: 21)
!5047 = distinct !DILexicalBlock(scope: !5040, file: !4964, line: 142, column: 15)
!5048 = !DILocation(line: 144, column: 29, scope: !5046)
!5049 = !DILocation(line: 144, column: 21, scope: !5047)
!5050 = !DILocation(line: 152, column: 17, scope: !5047)
!5051 = !DILocation(line: 157, column: 7, scope: !4983)
!5052 = !DILocalVariable(name: "err", scope: !5053, file: !4964, line: 64, type: !4886)
!5053 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4964, file: !4964, line: 62, type: !5054, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !909, retainedNodes: !5056)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!4886, !4967, !93, !93}
!5056 = !{!5057, !5058, !5059, !5052}
!5057 = !DILocalVariable(name: "x", arg: 1, scope: !5053, file: !4964, line: 62, type: !4967)
!5058 = !DILocalVariable(name: "base", arg: 2, scope: !5053, file: !4964, line: 62, type: !93)
!5059 = !DILocalVariable(name: "power", arg: 3, scope: !5053, file: !4964, line: 62, type: !93)
!5060 = !DILocation(line: 0, scope: !5053, inlinedAt: !5061)
!5061 = distinct !DILocation(line: 219, column: 22, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !4983, file: !4964, line: 158, column: 9)
!5063 = !DILocalVariable(name: "x", arg: 1, scope: !5064, file: !4964, line: 47, type: !4967)
!5064 = distinct !DISubprogram(name: "bkm_scale", scope: !4964, file: !4964, line: 47, type: !5065, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !909, retainedNodes: !5067)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!4886, !4967, !93}
!5067 = !{!5063, !5068, !5069}
!5068 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !5064, file: !4964, line: 47, type: !93)
!5069 = !DILocalVariable(name: "scaled", scope: !5064, file: !4964, line: 49, type: !913)
!5070 = !DILocation(line: 0, scope: !5064, inlinedAt: !5071)
!5071 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5061)
!5072 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5071)
!5073 = distinct !DILexicalBlock(scope: !5064, file: !4964, line: 50, column: 7)
!5074 = !DILocation(line: 66, column: 9, scope: !5053, inlinedAt: !5061)
!5075 = !DILocation(line: 227, column: 11, scope: !4983)
!5076 = !DILocation(line: 0, scope: !5053, inlinedAt: !5077)
!5077 = distinct !DILocation(line: 215, column: 22, scope: !5062)
!5078 = !DILocation(line: 0, scope: !5064, inlinedAt: !5079)
!5079 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5077)
!5080 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5079)
!5081 = !DILocation(line: 66, column: 9, scope: !5053, inlinedAt: !5077)
!5082 = !DILocation(line: 0, scope: !5053, inlinedAt: !5083)
!5083 = distinct !DILocation(line: 202, column: 22, scope: !5062)
!5084 = !DILocation(line: 0, scope: !5064, inlinedAt: !5085)
!5085 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5083)
!5086 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5085)
!5087 = !DILocation(line: 66, column: 9, scope: !5053, inlinedAt: !5083)
!5088 = !DILocation(line: 0, scope: !5053, inlinedAt: !5089)
!5089 = distinct !DILocation(line: 198, column: 22, scope: !5062)
!5090 = !DILocation(line: 0, scope: !5064, inlinedAt: !5091)
!5091 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5089)
!5092 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5091)
!5093 = !DILocation(line: 66, column: 9, scope: !5053, inlinedAt: !5089)
!5094 = !DILocation(line: 0, scope: !5053, inlinedAt: !5095)
!5095 = distinct !DILocation(line: 194, column: 22, scope: !5062)
!5096 = !DILocation(line: 0, scope: !5064, inlinedAt: !5097)
!5097 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5095)
!5098 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5097)
!5099 = !DILocation(line: 66, column: 9, scope: !5053, inlinedAt: !5095)
!5100 = !DILocation(line: 0, scope: !5053, inlinedAt: !5101)
!5101 = distinct !DILocation(line: 175, column: 22, scope: !5062)
!5102 = !DILocation(line: 0, scope: !5064, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5101)
!5104 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5103)
!5105 = !DILocation(line: 66, column: 9, scope: !5053, inlinedAt: !5101)
!5106 = !DILocation(line: 0, scope: !5064, inlinedAt: !5107)
!5107 = distinct !DILocation(line: 160, column: 22, scope: !5062)
!5108 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5107)
!5109 = !DILocation(line: 161, column: 11, scope: !5062)
!5110 = !DILocation(line: 0, scope: !5064, inlinedAt: !5111)
!5111 = distinct !DILocation(line: 167, column: 22, scope: !5062)
!5112 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5111)
!5113 = !DILocation(line: 168, column: 11, scope: !5062)
!5114 = !DILocation(line: 0, scope: !5053, inlinedAt: !5115)
!5115 = distinct !DILocation(line: 180, column: 22, scope: !5062)
!5116 = !DILocation(line: 0, scope: !5064, inlinedAt: !5117)
!5117 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5115)
!5118 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5117)
!5119 = !DILocation(line: 66, column: 9, scope: !5053, inlinedAt: !5115)
!5120 = !DILocation(line: 0, scope: !5053, inlinedAt: !5121)
!5121 = distinct !DILocation(line: 185, column: 22, scope: !5062)
!5122 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5123)
!5123 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5121)
!5124 = !DILocation(line: 0, scope: !5064, inlinedAt: !5123)
!5125 = !DILocation(line: 0, scope: !5053, inlinedAt: !5126)
!5126 = distinct !DILocation(line: 190, column: 22, scope: !5062)
!5127 = !DILocation(line: 0, scope: !5064, inlinedAt: !5128)
!5128 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5126)
!5129 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5128)
!5130 = !DILocation(line: 66, column: 9, scope: !5053, inlinedAt: !5126)
!5131 = !DILocation(line: 0, scope: !5053, inlinedAt: !5132)
!5132 = distinct !DILocation(line: 207, column: 22, scope: !5062)
!5133 = !DILocation(line: 0, scope: !5064, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 66, column: 12, scope: !5053, inlinedAt: !5132)
!5135 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5134)
!5136 = !DILocation(line: 66, column: 9, scope: !5053, inlinedAt: !5132)
!5137 = !DILocation(line: 0, scope: !5064, inlinedAt: !5138)
!5138 = distinct !DILocation(line: 211, column: 22, scope: !5062)
!5139 = !DILocation(line: 50, column: 7, scope: !5073, inlinedAt: !5138)
!5140 = !DILocation(line: 212, column: 11, scope: !5062)
!5141 = !DILocation(line: 0, scope: !5062)
!5142 = !DILocation(line: 228, column: 10, scope: !4983)
!5143 = !DILocation(line: 229, column: 11, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !4983, file: !4964, line: 229, column: 11)
!5145 = !DILocation(line: 229, column: 11, scope: !4983)
!5146 = !DILocation(line: 223, column: 16, scope: !5062)
!5147 = !DILocation(line: 224, column: 22, scope: !5062)
!5148 = !DILocation(line: 100, column: 11, scope: !5010)
!5149 = !DILocation(line: 92, column: 16, scope: !4963)
!5150 = !DILocation(line: 233, column: 8, scope: !4963)
!5151 = !DILocation(line: 234, column: 3, scope: !4963)
!5152 = !DILocation(line: 235, column: 1, scope: !4963)
!5153 = !DISubprogram(name: "strtoumax", scope: !5154, file: !5154, line: 301, type: !5155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!5154 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!913, !1013, !5157, !93}
!5157 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1177)
!5158 = distinct !DISubprogram(name: "rpl_fopen", scope: !917, file: !917, line: 46, type: !5159, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !5195)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!5161, !150, !150}
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !5163)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !5164)
!5164 = !{!5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5163, file: !242, line: 51, baseType: !93, size: 32)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5163, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5163, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5163, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5163, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5163, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5163, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5163, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5163, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5163, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5163, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5163, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5163, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5163, file: !242, line: 70, baseType: !5179, size: 64, offset: 832)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5163, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5163, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5163, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5163, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5163, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5163, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5163, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5163, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5163, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5163, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5163, file: !242, line: 93, baseType: !5179, size: 64, offset: 1344)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5163, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5163, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5163, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5163, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!5195 = !{!5196, !5197, !5198, !5199, !5200, !5201, !5205, !5207, !5208, !5213, !5216, !5217}
!5196 = !DILocalVariable(name: "filename", arg: 1, scope: !5158, file: !917, line: 46, type: !150)
!5197 = !DILocalVariable(name: "mode", arg: 2, scope: !5158, file: !917, line: 46, type: !150)
!5198 = !DILocalVariable(name: "open_direction", scope: !5158, file: !917, line: 54, type: !93)
!5199 = !DILocalVariable(name: "open_flags", scope: !5158, file: !917, line: 55, type: !93)
!5200 = !DILocalVariable(name: "open_flags_gnu", scope: !5158, file: !917, line: 57, type: !195)
!5201 = !DILocalVariable(name: "fdopen_mode_buf", scope: !5158, file: !917, line: 59, type: !5202)
!5202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5203)
!5203 = !{!5204}
!5204 = !DISubrange(count: 81)
!5205 = !DILocalVariable(name: "p", scope: !5206, file: !917, line: 62, type: !150)
!5206 = distinct !DILexicalBlock(scope: !5158, file: !917, line: 61, column: 3)
!5207 = !DILocalVariable(name: "q", scope: !5206, file: !917, line: 64, type: !144)
!5208 = !DILocalVariable(name: "len", scope: !5209, file: !917, line: 128, type: !147)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !917, line: 127, column: 9)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !917, line: 68, column: 7)
!5211 = distinct !DILexicalBlock(scope: !5212, file: !917, line: 67, column: 5)
!5212 = distinct !DILexicalBlock(scope: !5206, file: !917, line: 67, column: 5)
!5213 = !DILocalVariable(name: "fd", scope: !5214, file: !917, line: 199, type: !93)
!5214 = distinct !DILexicalBlock(scope: !5215, file: !917, line: 198, column: 5)
!5215 = distinct !DILexicalBlock(scope: !5158, file: !917, line: 197, column: 7)
!5216 = !DILocalVariable(name: "fp", scope: !5214, file: !917, line: 204, type: !5161)
!5217 = !DILocalVariable(name: "saved_errno", scope: !5218, file: !917, line: 207, type: !93)
!5218 = distinct !DILexicalBlock(scope: !5219, file: !917, line: 206, column: 9)
!5219 = distinct !DILexicalBlock(scope: !5214, file: !917, line: 205, column: 11)
!5220 = !DILocation(line: 0, scope: !5158)
!5221 = !DILocation(line: 59, column: 3, scope: !5158)
!5222 = !DILocation(line: 59, column: 8, scope: !5158)
!5223 = !DILocation(line: 0, scope: !5206)
!5224 = !DILocation(line: 67, column: 12, scope: !5211)
!5225 = !DILocation(line: 67, column: 15, scope: !5211)
!5226 = !DILocation(line: 67, column: 5, scope: !5212)
!5227 = !DILocation(line: 138, column: 8, scope: !5206)
!5228 = !DILocation(line: 197, column: 7, scope: !5158)
!5229 = !DILocation(line: 69, column: 9, scope: !5210)
!5230 = !DILocation(line: 74, column: 19, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5232, file: !917, line: 74, column: 17)
!5232 = distinct !DILexicalBlock(scope: !5210, file: !917, line: 70, column: 11)
!5233 = !DILocation(line: 74, column: 17, scope: !5232)
!5234 = !DILocation(line: 75, column: 17, scope: !5231)
!5235 = !DILocation(line: 75, column: 20, scope: !5231)
!5236 = !DILocation(line: 75, column: 15, scope: !5231)
!5237 = !DILocation(line: 80, column: 24, scope: !5232)
!5238 = !DILocation(line: 82, column: 19, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5232, file: !917, line: 82, column: 17)
!5240 = !DILocation(line: 82, column: 17, scope: !5232)
!5241 = !DILocation(line: 83, column: 17, scope: !5239)
!5242 = !DILocation(line: 83, column: 20, scope: !5239)
!5243 = !DILocation(line: 83, column: 15, scope: !5239)
!5244 = !DILocation(line: 88, column: 24, scope: !5232)
!5245 = !DILocation(line: 90, column: 19, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5232, file: !917, line: 90, column: 17)
!5247 = !DILocation(line: 90, column: 17, scope: !5232)
!5248 = !DILocation(line: 91, column: 17, scope: !5246)
!5249 = !DILocation(line: 91, column: 20, scope: !5246)
!5250 = !DILocation(line: 91, column: 15, scope: !5246)
!5251 = !DILocation(line: 100, column: 19, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5232, file: !917, line: 100, column: 17)
!5253 = !DILocation(line: 100, column: 17, scope: !5232)
!5254 = !DILocation(line: 101, column: 17, scope: !5252)
!5255 = !DILocation(line: 101, column: 20, scope: !5252)
!5256 = !DILocation(line: 101, column: 15, scope: !5252)
!5257 = !DILocation(line: 107, column: 19, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5232, file: !917, line: 107, column: 17)
!5259 = !DILocation(line: 107, column: 17, scope: !5232)
!5260 = !DILocation(line: 108, column: 17, scope: !5258)
!5261 = !DILocation(line: 108, column: 20, scope: !5258)
!5262 = !DILocation(line: 108, column: 15, scope: !5258)
!5263 = !DILocation(line: 113, column: 24, scope: !5232)
!5264 = !DILocation(line: 115, column: 13, scope: !5232)
!5265 = !DILocation(line: 117, column: 24, scope: !5232)
!5266 = !DILocation(line: 119, column: 13, scope: !5232)
!5267 = !DILocation(line: 128, column: 24, scope: !5209)
!5268 = !DILocation(line: 0, scope: !5209)
!5269 = !DILocation(line: 129, column: 48, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5209, file: !917, line: 129, column: 15)
!5271 = !DILocation(line: 129, column: 15, scope: !5209)
!5272 = !DILocalVariable(name: "__dest", arg: 1, scope: !5273, file: !2272, line: 26, type: !4789)
!5273 = distinct !DISubprogram(name: "memcpy", scope: !2272, file: !2272, line: 26, type: !4787, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !5274)
!5274 = !{!5272, !5275, !5276}
!5275 = !DILocalVariable(name: "__src", arg: 2, scope: !5273, file: !2272, line: 26, type: !1171)
!5276 = !DILocalVariable(name: "__len", arg: 3, scope: !5273, file: !2272, line: 26, type: !147)
!5277 = !DILocation(line: 0, scope: !5273, inlinedAt: !5278)
!5278 = distinct !DILocation(line: 131, column: 11, scope: !5209)
!5279 = !DILocation(line: 29, column: 10, scope: !5273, inlinedAt: !5278)
!5280 = !DILocation(line: 132, column: 13, scope: !5209)
!5281 = !DILocation(line: 135, column: 9, scope: !5210)
!5282 = !DILocation(line: 67, column: 25, scope: !5211)
!5283 = distinct !{!5283, !5226, !5284, !1070}
!5284 = !DILocation(line: 136, column: 7, scope: !5212)
!5285 = !DILocation(line: 197, column: 7, scope: !5215)
!5286 = !DILocation(line: 199, column: 47, scope: !5214)
!5287 = !DILocation(line: 199, column: 16, scope: !5214)
!5288 = !DILocation(line: 0, scope: !5214)
!5289 = !DILocation(line: 201, column: 14, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5214, file: !917, line: 201, column: 11)
!5291 = !DILocation(line: 201, column: 11, scope: !5214)
!5292 = !DILocation(line: 204, column: 18, scope: !5214)
!5293 = !DILocation(line: 205, column: 14, scope: !5219)
!5294 = !DILocation(line: 205, column: 11, scope: !5214)
!5295 = !DILocation(line: 207, column: 29, scope: !5218)
!5296 = !DILocation(line: 0, scope: !5218)
!5297 = !DILocation(line: 208, column: 11, scope: !5218)
!5298 = !DILocation(line: 209, column: 17, scope: !5218)
!5299 = !DILocation(line: 210, column: 9, scope: !5218)
!5300 = !DILocalVariable(name: "filename", arg: 1, scope: !5301, file: !917, line: 30, type: !150)
!5301 = distinct !DISubprogram(name: "orig_fopen", scope: !917, file: !917, line: 30, type: !5159, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !5302)
!5302 = !{!5300, !5303}
!5303 = !DILocalVariable(name: "mode", arg: 2, scope: !5301, file: !917, line: 30, type: !150)
!5304 = !DILocation(line: 0, scope: !5301, inlinedAt: !5305)
!5305 = distinct !DILocation(line: 219, column: 10, scope: !5158)
!5306 = !DILocation(line: 32, column: 10, scope: !5301, inlinedAt: !5305)
!5307 = !DILocation(line: 219, column: 3, scope: !5158)
!5308 = !DILocation(line: 220, column: 1, scope: !5158)
!5309 = !DISubprogram(name: "open", scope: !2488, file: !2488, line: 181, type: !5310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!93, !150, !93, null}
!5312 = !DISubprogram(name: "fdopen", scope: !1018, file: !1018, line: 293, type: !5313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!5161, !93, !150}
!5315 = !DISubprogram(name: "close", scope: !2353, file: !2353, line: 358, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!5316 = !DISubprogram(name: "fopen", scope: !1018, file: !1018, line: 258, type: !5317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!5161, !1013, !1013}
!5319 = distinct !DISubprogram(name: "close_stream", scope: !919, file: !919, line: 55, type: !5320, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5356)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!93, !5322}
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !5324)
!5324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !5325)
!5325 = !{!5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5324, file: !242, line: 51, baseType: !93, size: 32)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5324, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5324, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5324, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5324, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5324, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5324, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5324, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5324, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5324, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5324, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5324, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5324, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5324, file: !242, line: 70, baseType: !5340, size: 64, offset: 832)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5324, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5324, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5324, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5324, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5324, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5324, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5324, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5324, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5324, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5324, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5324, file: !242, line: 93, baseType: !5340, size: 64, offset: 1344)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5324, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5324, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5324, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5324, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!5356 = !{!5357, !5358, !5360, !5361}
!5357 = !DILocalVariable(name: "stream", arg: 1, scope: !5319, file: !919, line: 55, type: !5322)
!5358 = !DILocalVariable(name: "some_pending", scope: !5319, file: !919, line: 57, type: !5359)
!5359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!5360 = !DILocalVariable(name: "prev_fail", scope: !5319, file: !919, line: 58, type: !5359)
!5361 = !DILocalVariable(name: "fclose_fail", scope: !5319, file: !919, line: 59, type: !5359)
!5362 = !DILocation(line: 0, scope: !5319)
!5363 = !DILocation(line: 57, column: 30, scope: !5319)
!5364 = !DILocalVariable(name: "__stream", arg: 1, scope: !5365, file: !1439, line: 135, type: !5322)
!5365 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1439, file: !1439, line: 135, type: !5320, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5366)
!5366 = !{!5364}
!5367 = !DILocation(line: 0, scope: !5365, inlinedAt: !5368)
!5368 = distinct !DILocation(line: 58, column: 27, scope: !5319)
!5369 = !DILocation(line: 137, column: 10, scope: !5365, inlinedAt: !5368)
!5370 = !DILocation(line: 58, column: 43, scope: !5319)
!5371 = !DILocation(line: 59, column: 29, scope: !5319)
!5372 = !DILocation(line: 59, column: 45, scope: !5319)
!5373 = !DILocation(line: 69, column: 17, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5319, file: !919, line: 69, column: 7)
!5375 = !DILocation(line: 57, column: 50, scope: !5319)
!5376 = !DILocation(line: 69, column: 33, scope: !5374)
!5377 = !DILocation(line: 69, column: 53, scope: !5374)
!5378 = !DILocation(line: 69, column: 59, scope: !5374)
!5379 = !DILocation(line: 69, column: 7, scope: !5319)
!5380 = !DILocation(line: 71, column: 11, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5374, file: !919, line: 70, column: 5)
!5382 = !DILocation(line: 72, column: 9, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5381, file: !919, line: 71, column: 11)
!5384 = !DILocation(line: 72, column: 15, scope: !5383)
!5385 = !DILocation(line: 77, column: 1, scope: !5319)
!5386 = !DISubprogram(name: "__fpending", scope: !2696, file: !2696, line: 75, type: !5387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!147, !5322}
!5389 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !822, file: !822, line: 100, type: !5390, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !5393)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!147, !2959, !150, !147, !5392}
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!5393 = !{!5394, !5395, !5396, !5397, !5398}
!5394 = !DILocalVariable(name: "pwc", arg: 1, scope: !5389, file: !822, line: 100, type: !2959)
!5395 = !DILocalVariable(name: "s", arg: 2, scope: !5389, file: !822, line: 100, type: !150)
!5396 = !DILocalVariable(name: "n", arg: 3, scope: !5389, file: !822, line: 100, type: !147)
!5397 = !DILocalVariable(name: "ps", arg: 4, scope: !5389, file: !822, line: 100, type: !5392)
!5398 = !DILocalVariable(name: "ret", scope: !5389, file: !822, line: 130, type: !147)
!5399 = !DILocation(line: 0, scope: !5389)
!5400 = !DILocation(line: 105, column: 9, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5389, file: !822, line: 105, column: 7)
!5402 = !DILocation(line: 105, column: 7, scope: !5389)
!5403 = !DILocation(line: 117, column: 10, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5389, file: !822, line: 117, column: 7)
!5405 = !DILocation(line: 117, column: 7, scope: !5389)
!5406 = !DILocation(line: 130, column: 16, scope: !5389)
!5407 = !DILocation(line: 135, column: 11, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5389, file: !822, line: 135, column: 7)
!5409 = !DILocation(line: 135, column: 25, scope: !5408)
!5410 = !DILocation(line: 135, column: 30, scope: !5408)
!5411 = !DILocation(line: 135, column: 7, scope: !5389)
!5412 = !DILocalVariable(name: "ps", arg: 1, scope: !5413, file: !2933, line: 1135, type: !5392)
!5413 = distinct !DISubprogram(name: "mbszero", scope: !2933, file: !2933, line: 1135, type: !5414, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !5416)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{null, !5392}
!5416 = !{!5412}
!5417 = !DILocation(line: 0, scope: !5413, inlinedAt: !5418)
!5418 = distinct !DILocation(line: 137, column: 5, scope: !5408)
!5419 = !DILocalVariable(name: "__dest", arg: 1, scope: !5420, file: !2272, line: 57, type: !145)
!5420 = distinct !DISubprogram(name: "memset", scope: !2272, file: !2272, line: 57, type: !2942, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !5421)
!5421 = !{!5419, !5422, !5423}
!5422 = !DILocalVariable(name: "__ch", arg: 2, scope: !5420, file: !2272, line: 57, type: !93)
!5423 = !DILocalVariable(name: "__len", arg: 3, scope: !5420, file: !2272, line: 57, type: !147)
!5424 = !DILocation(line: 0, scope: !5420, inlinedAt: !5425)
!5425 = distinct !DILocation(line: 1137, column: 3, scope: !5413, inlinedAt: !5418)
!5426 = !DILocation(line: 59, column: 10, scope: !5420, inlinedAt: !5425)
!5427 = !DILocation(line: 137, column: 5, scope: !5408)
!5428 = !DILocation(line: 138, column: 11, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5389, file: !822, line: 138, column: 7)
!5430 = !DILocation(line: 138, column: 7, scope: !5389)
!5431 = !DILocation(line: 139, column: 5, scope: !5429)
!5432 = !DILocation(line: 143, column: 26, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5389, file: !822, line: 143, column: 7)
!5434 = !DILocation(line: 143, column: 41, scope: !5433)
!5435 = !DILocation(line: 143, column: 7, scope: !5389)
!5436 = !DILocation(line: 145, column: 15, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !822, line: 145, column: 11)
!5438 = distinct !DILexicalBlock(scope: !5433, file: !822, line: 144, column: 5)
!5439 = !DILocation(line: 145, column: 11, scope: !5438)
!5440 = !DILocation(line: 146, column: 32, scope: !5437)
!5441 = !DILocation(line: 146, column: 16, scope: !5437)
!5442 = !DILocation(line: 146, column: 14, scope: !5437)
!5443 = !DILocation(line: 146, column: 9, scope: !5437)
!5444 = !DILocation(line: 286, column: 1, scope: !5389)
!5445 = !DISubprogram(name: "mbsinit", scope: !5446, file: !5446, line: 293, type: !5447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !958)
!5446 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!93, !5449}
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!5451 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !921, file: !921, line: 27, type: !4428, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !5452)
!5452 = !{!5453, !5454, !5455, !5456}
!5453 = !DILocalVariable(name: "ptr", arg: 1, scope: !5451, file: !921, line: 27, type: !145)
!5454 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5451, file: !921, line: 27, type: !147)
!5455 = !DILocalVariable(name: "size", arg: 3, scope: !5451, file: !921, line: 27, type: !147)
!5456 = !DILocalVariable(name: "nbytes", scope: !5451, file: !921, line: 29, type: !147)
!5457 = !DILocation(line: 0, scope: !5451)
!5458 = !DILocation(line: 30, column: 7, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5451, file: !921, line: 30, column: 7)
!5460 = !DILocalVariable(name: "ptr", arg: 1, scope: !5461, file: !4520, line: 2057, type: !145)
!5461 = distinct !DISubprogram(name: "rpl_realloc", scope: !4520, file: !4520, line: 2057, type: !4512, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !5462)
!5462 = !{!5460, !5463}
!5463 = !DILocalVariable(name: "size", arg: 2, scope: !5461, file: !4520, line: 2057, type: !147)
!5464 = !DILocation(line: 0, scope: !5461, inlinedAt: !5465)
!5465 = distinct !DILocation(line: 37, column: 10, scope: !5451)
!5466 = !DILocation(line: 2059, column: 24, scope: !5461, inlinedAt: !5465)
!5467 = !DILocation(line: 2059, column: 10, scope: !5461, inlinedAt: !5465)
!5468 = !DILocation(line: 37, column: 3, scope: !5451)
!5469 = !DILocation(line: 32, column: 7, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5459, file: !921, line: 31, column: 5)
!5471 = !DILocation(line: 32, column: 13, scope: !5470)
!5472 = !DILocation(line: 33, column: 7, scope: !5470)
!5473 = !DILocation(line: 38, column: 1, scope: !5451)
!5474 = distinct !DISubprogram(name: "hard_locale", scope: !840, file: !840, line: 28, type: !1212, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !5475)
!5475 = !{!5476, !5477}
!5476 = !DILocalVariable(name: "category", arg: 1, scope: !5474, file: !840, line: 28, type: !93)
!5477 = !DILocalVariable(name: "locale", scope: !5474, file: !840, line: 30, type: !5478)
!5478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5479)
!5479 = !{!5480}
!5480 = !DISubrange(count: 257)
!5481 = !DILocation(line: 0, scope: !5474)
!5482 = !DILocation(line: 30, column: 3, scope: !5474)
!5483 = !DILocation(line: 30, column: 8, scope: !5474)
!5484 = !DILocation(line: 32, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5474, file: !840, line: 32, column: 7)
!5486 = !DILocation(line: 32, column: 7, scope: !5474)
!5487 = !DILocalVariable(name: "__s1", arg: 1, scope: !5488, file: !1036, line: 1359, type: !150)
!5488 = distinct !DISubprogram(name: "streq", scope: !1036, file: !1036, line: 1359, type: !1037, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !5489)
!5489 = !{!5487, !5490}
!5490 = !DILocalVariable(name: "__s2", arg: 2, scope: !5488, file: !1036, line: 1359, type: !150)
!5491 = !DILocation(line: 0, scope: !5488, inlinedAt: !5492)
!5492 = distinct !DILocation(line: 35, column: 9, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5474, file: !840, line: 35, column: 7)
!5494 = !DILocation(line: 1361, column: 11, scope: !5488, inlinedAt: !5492)
!5495 = !DILocation(line: 35, column: 29, scope: !5493)
!5496 = !DILocation(line: 0, scope: !5488, inlinedAt: !5497)
!5497 = distinct !DILocation(line: 35, column: 32, scope: !5493)
!5498 = !DILocation(line: 1361, column: 11, scope: !5488, inlinedAt: !5497)
!5499 = !DILocation(line: 1361, column: 10, scope: !5488, inlinedAt: !5497)
!5500 = !DILocation(line: 35, column: 7, scope: !5474)
!5501 = !DILocation(line: 46, column: 3, scope: !5474)
!5502 = !DILocation(line: 47, column: 1, scope: !5474)
!5503 = distinct !DISubprogram(name: "setlocale_null_r", scope: !928, file: !928, line: 154, type: !5504, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !5506)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{!93, !93, !144, !147}
!5506 = !{!5507, !5508, !5509}
!5507 = !DILocalVariable(name: "category", arg: 1, scope: !5503, file: !928, line: 154, type: !93)
!5508 = !DILocalVariable(name: "buf", arg: 2, scope: !5503, file: !928, line: 154, type: !144)
!5509 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5503, file: !928, line: 154, type: !147)
!5510 = !DILocation(line: 0, scope: !5503)
!5511 = !DILocation(line: 159, column: 10, scope: !5503)
!5512 = !DILocation(line: 159, column: 3, scope: !5503)
!5513 = distinct !DISubprogram(name: "setlocale_null", scope: !928, file: !928, line: 186, type: !5514, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !5516)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!150, !93}
!5516 = !{!5517}
!5517 = !DILocalVariable(name: "category", arg: 1, scope: !5513, file: !928, line: 186, type: !93)
!5518 = !DILocation(line: 0, scope: !5513)
!5519 = !DILocation(line: 189, column: 10, scope: !5513)
!5520 = !DILocation(line: 189, column: 3, scope: !5513)
!5521 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !930, file: !930, line: 35, type: !5514, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5522)
!5522 = !{!5523, !5524}
!5523 = !DILocalVariable(name: "category", arg: 1, scope: !5521, file: !930, line: 35, type: !93)
!5524 = !DILocalVariable(name: "result", scope: !5521, file: !930, line: 37, type: !150)
!5525 = !DILocation(line: 0, scope: !5521)
!5526 = !DILocation(line: 37, column: 24, scope: !5521)
!5527 = !DILocation(line: 62, column: 3, scope: !5521)
!5528 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !930, file: !930, line: 66, type: !5504, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5529)
!5529 = !{!5530, !5531, !5532, !5533, !5534}
!5530 = !DILocalVariable(name: "category", arg: 1, scope: !5528, file: !930, line: 66, type: !93)
!5531 = !DILocalVariable(name: "buf", arg: 2, scope: !5528, file: !930, line: 66, type: !144)
!5532 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5528, file: !930, line: 66, type: !147)
!5533 = !DILocalVariable(name: "result", scope: !5528, file: !930, line: 111, type: !150)
!5534 = !DILocalVariable(name: "length", scope: !5535, file: !930, line: 125, type: !147)
!5535 = distinct !DILexicalBlock(scope: !5536, file: !930, line: 124, column: 5)
!5536 = distinct !DILexicalBlock(scope: !5528, file: !930, line: 113, column: 7)
!5537 = !DILocation(line: 0, scope: !5528)
!5538 = !DILocation(line: 0, scope: !5521, inlinedAt: !5539)
!5539 = distinct !DILocation(line: 111, column: 24, scope: !5528)
!5540 = !DILocation(line: 37, column: 24, scope: !5521, inlinedAt: !5539)
!5541 = !DILocation(line: 113, column: 14, scope: !5536)
!5542 = !DILocation(line: 113, column: 7, scope: !5528)
!5543 = !DILocation(line: 116, column: 19, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5545, file: !930, line: 116, column: 11)
!5545 = distinct !DILexicalBlock(scope: !5536, file: !930, line: 114, column: 5)
!5546 = !DILocation(line: 116, column: 11, scope: !5545)
!5547 = !DILocation(line: 120, column: 16, scope: !5544)
!5548 = !DILocation(line: 120, column: 9, scope: !5544)
!5549 = !DILocation(line: 125, column: 23, scope: !5535)
!5550 = !DILocation(line: 0, scope: !5535)
!5551 = !DILocation(line: 126, column: 18, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5535, file: !930, line: 126, column: 11)
!5553 = !DILocation(line: 126, column: 11, scope: !5535)
!5554 = !DILocation(line: 128, column: 39, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5552, file: !930, line: 127, column: 9)
!5556 = !DILocalVariable(name: "__dest", arg: 1, scope: !5557, file: !2272, line: 26, type: !4789)
!5557 = distinct !DISubprogram(name: "memcpy", scope: !2272, file: !2272, line: 26, type: !4787, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5558)
!5558 = !{!5556, !5559, !5560}
!5559 = !DILocalVariable(name: "__src", arg: 2, scope: !5557, file: !2272, line: 26, type: !1171)
!5560 = !DILocalVariable(name: "__len", arg: 3, scope: !5557, file: !2272, line: 26, type: !147)
!5561 = !DILocation(line: 0, scope: !5557, inlinedAt: !5562)
!5562 = distinct !DILocation(line: 128, column: 11, scope: !5555)
!5563 = !DILocation(line: 29, column: 10, scope: !5557, inlinedAt: !5562)
!5564 = !DILocation(line: 129, column: 11, scope: !5555)
!5565 = !DILocation(line: 133, column: 23, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !930, line: 133, column: 15)
!5567 = distinct !DILexicalBlock(scope: !5552, file: !930, line: 132, column: 9)
!5568 = !DILocation(line: 133, column: 15, scope: !5567)
!5569 = !DILocation(line: 138, column: 44, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5566, file: !930, line: 134, column: 13)
!5571 = !DILocation(line: 0, scope: !5557, inlinedAt: !5572)
!5572 = distinct !DILocation(line: 138, column: 15, scope: !5570)
!5573 = !DILocation(line: 29, column: 10, scope: !5557, inlinedAt: !5572)
!5574 = !DILocation(line: 139, column: 15, scope: !5570)
!5575 = !DILocation(line: 139, column: 32, scope: !5570)
!5576 = !DILocation(line: 140, column: 13, scope: !5570)
!5577 = !DILocation(line: 0, scope: !5536)
!5578 = !DILocation(line: 145, column: 1, scope: !5528)
