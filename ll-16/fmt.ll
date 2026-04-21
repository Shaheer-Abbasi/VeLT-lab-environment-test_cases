; ModuleID = 'src/fmt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.Word = type { ptr, i32, i32, i8, i32, i64, ptr }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

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
@long_options = internal constant [10 x %struct.option] [%struct.option { ptr @.str.63, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.66, i32 0, ptr null, i32 116 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 117 }, %struct.option { ptr @.str.68, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 103 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !87
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
@parabuf = internal global [5000 x i8] zeroinitializer, align 1, !dbg !457
@wptr = internal unnamed_addr global ptr null, align 8, !dbg !462
@unused_word_type = internal global [1000 x %struct.Word] zeroinitializer, align 8, !dbg !464
@out_column = internal unnamed_addr global i32 0, align 4, !dbg !451
@.str.74 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !483
@.str.75 = private unnamed_addr constant [6 x i8] c"(['`\22\00", align 1, !dbg !485
@.str.76 = private unnamed_addr constant [5 x i8] c")]'\22\00", align 1, !dbg !487
@.str.32 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !508
@Version = dso_local local_unnamed_addr global ptr @.str.32, align 8, !dbg !511
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !515
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !528
@.str.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !520
@.str.1.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !522
@.str.2.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !524
@.str.3.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !526
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !530
@stderr = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !536
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !573
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !538
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !563
@.str.1.45 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !565
@.str.2.47 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !567
@.str.3.46 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !569
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !571
@.str.4.40 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !575
@.str.5.41 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !577
@.str.6.42 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !579
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !584
@.str.77 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !590
@.str.1.78 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !592
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !594
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !625
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !628
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !630
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !632
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !634
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !636
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !638
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !640
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !642
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !644
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 8, !dbg !646
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !657
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !671
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !709
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !716
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !673
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !718
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !661
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !678
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !680
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !682
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !684
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !686
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !722
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !725
@.str.2.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !727
@.str.3.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !729
@.str.4.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !731
@.str.5.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !733
@.str.6.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !738
@.str.7.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !743
@.str.8.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !745
@.str.9.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !747
@.str.10.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !752
@.str.11.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !757
@.str.12.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !762
@.str.13.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !764
@.str.14.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !769
@.str.15.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !774
@.str.16.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !779
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !784
@.str.18.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !786
@.str.19.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !788
@.str.20.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !790
@.str.21.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !792
@.str.22.125 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !794
@.str.23.126 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !796
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !801
@exit_failure = dso_local global i32 1, align 4, !dbg !809
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !815
@.str.1.137 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !818
@.str.2.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !820
@.str.142 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !822
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !825
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !828
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !843
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !846

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !944 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !948, metadata !DIExpression()), !dbg !949
  %2 = icmp eq i32 %0, 0, !dbg !950
  br i1 %2, label %8, label %3, !dbg !952

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !953, !tbaa !955
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !953
  %6 = load ptr, ptr @program_name, align 8, !dbg !953, !tbaa !955
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !953
  br label %44, !dbg !953

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !959
  %10 = load ptr, ptr @program_name, align 8, !dbg !959, !tbaa !955
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !959
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !961
  %13 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !955
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !961
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #38, !dbg !962
  %16 = load ptr, ptr @stdout, align 8, !dbg !962, !tbaa !955
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !962
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #38, !dbg !966
  %19 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !955
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !966
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !969
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !969
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !970
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !970
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !971
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !971
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !972
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !972
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !973
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !973
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !974
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !974
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #38, !dbg !975
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !975
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #38, !dbg !976
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !976
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #38, !dbg !977
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !977
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !978, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !990, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr poison, metadata !990, metadata !DIExpression()), !dbg !995
  tail call void @emit_bug_reporting_address() #38, !dbg !997
  %30 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !998
  call void @llvm.dbg.value(metadata ptr %30, metadata !993, metadata !DIExpression()), !dbg !995
  %31 = icmp eq ptr %30, null, !dbg !999
  br i1 %31, label %39, label %32, !dbg !1001

32:                                               ; preds = %8
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #39, !dbg !1002
  %34 = icmp eq i32 %33, 0, !dbg !1002
  br i1 %34, label %39, label %35, !dbg !1003

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1004
  %37 = load ptr, ptr @stdout, align 8, !dbg !1004, !tbaa !955
  %38 = tail call i32 @fputs_unlocked(ptr noundef %36, ptr noundef %37), !dbg !1004
  br label %39, !dbg !1006

39:                                               ; preds = %8, %32, %35
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !990, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !994, metadata !DIExpression()), !dbg !995
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #38, !dbg !1007
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3) #38, !dbg !1007
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #38, !dbg !1008
  %43 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #38, !dbg !1008
  br label %44

44:                                               ; preds = %39, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1009
  unreachable, !dbg !1009
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1010 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1014 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1020 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1023 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !216 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr %0, metadata !221, metadata !DIExpression()), !dbg !1026
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1027, !tbaa !1028
  %3 = icmp eq i32 %2, -1, !dbg !1030
  br i1 %3, label %4, label %16, !dbg !1031

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.28) #38, !dbg !1032
  call void @llvm.dbg.value(metadata ptr %5, metadata !222, metadata !DIExpression()), !dbg !1033
  %6 = icmp eq ptr %5, null, !dbg !1034
  br i1 %6, label %14, label %7, !dbg !1035

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1036, !tbaa !1037
  %9 = icmp eq i8 %8, 0, !dbg !1036
  br i1 %9, label %14, label %10, !dbg !1038

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1039, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !1045, metadata !DIExpression()), !dbg !1046
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.29) #39, !dbg !1048
  %12 = icmp eq i32 %11, 0, !dbg !1049
  %13 = zext i1 %12 to i32, !dbg !1038
  br label %14, !dbg !1038

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1050, !tbaa !1028
  br label %16, !dbg !1051

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1052
  %18 = icmp eq i32 %17, 0, !dbg !1052
  br i1 %18, label %22, label %19, !dbg !1054

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1055, !tbaa !955
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1055
  br label %122, !dbg !1057

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !225, metadata !DIExpression()), !dbg !1026
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.30) #39, !dbg !1058
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !1026
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1060
  call void @llvm.dbg.value(metadata ptr %25, metadata !227, metadata !DIExpression()), !dbg !1026
  %26 = icmp eq ptr %25, null, !dbg !1061
  br i1 %26, label %54, label %27, !dbg !1062

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1063
  br i1 %28, label %54, label %29, !dbg !1064

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !228, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()), !dbg !1065
  %30 = icmp ult ptr %24, %25, !dbg !1066
  br i1 %30, label %31, label %52, !dbg !1067

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1026
  %33 = load ptr, ptr %32, align 8, !tbaa !955
  br label %34, !dbg !1067

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !228, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 %36, metadata !232, metadata !DIExpression()), !dbg !1065
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1068
  call void @llvm.dbg.value(metadata ptr %37, metadata !228, metadata !DIExpression()), !dbg !1065
  %38 = load i8, ptr %35, align 1, !dbg !1068, !tbaa !1037
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1068
  %41 = load i16, ptr %40, align 2, !dbg !1068, !tbaa !1069
  %42 = freeze i16 %41, !dbg !1071
  %43 = lshr i16 %42, 13, !dbg !1071
  %44 = and i16 %43, 1, !dbg !1071
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %46, metadata !232, metadata !DIExpression()), !dbg !1065
  %47 = icmp ult ptr %37, %25, !dbg !1066
  %48 = icmp ult i64 %46, 2, !dbg !1073
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1073
  br i1 %49, label %34, label %50, !dbg !1067, !llvm.loop !1074

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1076
  br i1 %51, label %52, label %54, !dbg !1078

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1078

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1026
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !225, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr %55, metadata !227, metadata !DIExpression()), !dbg !1026
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.31) #39, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %57, metadata !233, metadata !DIExpression()), !dbg !1026
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1080
  call void @llvm.dbg.value(metadata ptr %58, metadata !234, metadata !DIExpression()), !dbg !1026
  br label %59, !dbg !1081

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1026
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !225, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr %60, metadata !234, metadata !DIExpression()), !dbg !1026
  %62 = load i8, ptr %60, align 1, !dbg !1082, !tbaa !1037
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1083

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1084
  %65 = load i8, ptr %64, align 1, !dbg !1087, !tbaa !1037
  %66 = icmp ne i8 %65, 45, !dbg !1088
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1089
  br label %68, !dbg !1089

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !225, metadata !DIExpression()), !dbg !1026
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !1090
  %71 = load ptr, ptr %70, align 8, !dbg !1090, !tbaa !955
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1090
  %74 = load i16, ptr %73, align 2, !dbg !1090, !tbaa !1069
  %75 = and i16 %74, 8192, !dbg !1090
  %76 = icmp eq i16 %75, 0, !dbg !1090
  br i1 %76, label %90, label %77, !dbg !1092

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1093
  br i1 %78, label %92, label %79, !dbg !1096

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1097
  %81 = load i8, ptr %80, align 1, !dbg !1097, !tbaa !1037
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1097
  %84 = load i16, ptr %83, align 2, !dbg !1097, !tbaa !1069
  %85 = and i16 %84, 8192, !dbg !1097
  %86 = icmp eq i16 %85, 0, !dbg !1097
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1098
  br i1 %89, label %90, label %92, !dbg !1098

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1099
  call void @llvm.dbg.value(metadata ptr %91, metadata !234, metadata !DIExpression()), !dbg !1026
  br label %59, !dbg !1081, !llvm.loop !1100

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1102
  %94 = load ptr, ptr @stdout, align 8, !dbg !1102, !tbaa !955
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1102
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1039, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !290, metadata !DIExpression()), !dbg !1026
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.45, i64 noundef 6) #39, !dbg !1123
  %97 = icmp eq i32 %96, 0, !dbg !1123
  br i1 %97, label %101, label %98, !dbg !1125

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.46, i64 noundef 9) #39, !dbg !1126
  %100 = icmp eq i32 %99, 0, !dbg !1126
  br i1 %100, label %101, label %104, !dbg !1127

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1128
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #38, !dbg !1128
  br label %107, !dbg !1130

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1131
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #38, !dbg !1131
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !955
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %108), !dbg !1133
  %110 = load ptr, ptr @stdout, align 8, !dbg !1134, !tbaa !955
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %110), !dbg !1134
  %112 = ptrtoint ptr %60 to i64, !dbg !1135
  %113 = sub i64 %112, %93, !dbg !1135
  %114 = load ptr, ptr @stdout, align 8, !dbg !1135, !tbaa !955
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1135
  %116 = load ptr, ptr @stdout, align 8, !dbg !1136, !tbaa !955
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %116), !dbg !1136
  %118 = load ptr, ptr @stdout, align 8, !dbg !1137, !tbaa !955
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %118), !dbg !1137
  %120 = load ptr, ptr @stdout, align 8, !dbg !1138, !tbaa !955
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1138
  br label %122, !dbg !1139

122:                                              ; preds = %107, %19
  ret void, !dbg !1139
}

; Function Attrs: nounwind
declare !dbg !1140 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1144 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1148 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1150 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1153 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1156 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1159 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1162 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1168 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1169 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1175 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1180, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr %1, metadata !1181, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 1, metadata !1183, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr null, metadata !1184, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr null, metadata !1185, metadata !DIExpression()), !dbg !1196
  %3 = load ptr, ptr %1, align 8, !dbg !1197, !tbaa !955
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1198
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.13) #38, !dbg !1199
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #38, !dbg !1200
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.14) #38, !dbg !1201
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1202
  %8 = icmp sgt i32 %0, 1, !dbg !1203
  br i1 %8, label %9, label %23, !dbg !1205

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1206
  %11 = load ptr, ptr %10, align 8, !dbg !1206, !tbaa !955
  %12 = load i8, ptr %11, align 1, !dbg !1206, !tbaa !1037
  %13 = icmp eq i8 %12, 45, !dbg !1207
  br i1 %13, label %14, label %23, !dbg !1208

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1209
  %16 = load i8, ptr %15, align 1, !dbg !1209, !tbaa !1037
  %17 = zext i8 %16 to i32, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %17, metadata !1210, metadata !DIExpression()), !dbg !1216
  %18 = add nsw i32 %17, -48, !dbg !1218
  %19 = icmp ult i32 %18, 10, !dbg !1218
  br i1 %19, label %20, label %23, !dbg !1219

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata ptr %15, metadata !1184, metadata !DIExpression()), !dbg !1196
  %21 = load ptr, ptr %1, align 8, !dbg !1220, !tbaa !955
  store ptr %21, ptr %10, align 8, !dbg !1222, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %10, metadata !1181, metadata !DIExpression()), !dbg !1196
  %22 = add nsw i32 %0, -1, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %22, metadata !1180, metadata !DIExpression()), !dbg !1196
  br label %23, !dbg !1224

23:                                               ; preds = %20, %14, %9, %2
  %24 = phi ptr [ %15, %20 ], [ null, %14 ], [ null, %9 ], [ null, %2 ], !dbg !1196
  %25 = phi ptr [ %10, %20 ], [ %1, %14 ], [ %1, %9 ], [ %1, %2 ]
  %26 = phi i32 [ %22, %20 ], [ %0, %14 ], [ %0, %9 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !1180, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr %25, metadata !1181, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr %24, metadata !1184, metadata !DIExpression()), !dbg !1196
  br label %27, !dbg !1225

27:                                               ; preds = %44, %23
  %28 = phi ptr [ %45, %44 ], [ %24, %23 ]
  %29 = phi ptr [ %31, %44 ], [ null, %23 ]
  br label %30, !dbg !1225

30:                                               ; preds = %27, %46
  %31 = phi ptr [ %29, %27 ], [ %47, %46 ]
  br label %32, !dbg !1225

32:                                               ; preds = %79, %30
  call void @llvm.dbg.value(metadata ptr %31, metadata !1185, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr %28, metadata !1184, metadata !DIExpression()), !dbg !1196
  %33 = tail call i32 @getopt_long(i32 noundef %26, ptr noundef nonnull %25, ptr noundef nonnull @.str.16, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1226
  call void @llvm.dbg.value(metadata i32 %33, metadata !1182, metadata !DIExpression()), !dbg !1196
  switch i32 %33, label %34 [
    i32 -1, label %85
    i32 99, label %40
    i32 115, label %41
    i32 116, label %42
    i32 117, label %43
    i32 119, label %44
    i32 103, label %46
    i32 112, label %48
    i32 -2, label %80
    i32 -3, label %81
  ], !dbg !1225

34:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %33, metadata !1210, metadata !DIExpression()), !dbg !1227
  %35 = add i32 %33, -48, !dbg !1231
  %36 = icmp ult i32 %35, 10, !dbg !1231
  br i1 %36, label %37, label %39, !dbg !1232

37:                                               ; preds = %34
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1233
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %38, i32 noundef %33) #38, !dbg !1233
  br label %39, !dbg !1233

39:                                               ; preds = %37, %34
  tail call void @usage(i32 noundef 1) #42, !dbg !1234
  unreachable, !dbg !1234

40:                                               ; preds = %32
  store i1 true, ptr @crown, align 1, !dbg !1235
  br label %79, !dbg !1236

41:                                               ; preds = %32
  store i1 true, ptr @split, align 1, !dbg !1237
  br label %79, !dbg !1238

42:                                               ; preds = %32
  store i1 true, ptr @tagged, align 1, !dbg !1239
  br label %79, !dbg !1240

43:                                               ; preds = %32
  store i1 true, ptr @uniform, align 1, !dbg !1241
  br label %79, !dbg !1242

44:                                               ; preds = %32
  %45 = load ptr, ptr @optarg, align 8, !dbg !1243, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %45, metadata !1184, metadata !DIExpression()), !dbg !1196
  br label %27, !dbg !1244, !llvm.loop !1245

46:                                               ; preds = %32
  %47 = load ptr, ptr @optarg, align 8, !dbg !1247, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %47, metadata !1185, metadata !DIExpression()), !dbg !1196
  br label %30, !dbg !1248, !llvm.loop !1245

48:                                               ; preds = %32
  %49 = load ptr, ptr @optarg, align 8, !dbg !1249, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %49, metadata !1250, metadata !DIExpression()), !dbg !1256
  store i32 0, ptr @prefix_lead_space, align 4, !dbg !1258, !tbaa !1028
  call void @llvm.dbg.value(metadata ptr %49, metadata !1250, metadata !DIExpression()), !dbg !1256
  %50 = load i8, ptr %49, align 1, !dbg !1259, !tbaa !1037
  %51 = icmp eq i8 %50, 32, !dbg !1260
  br i1 %51, label %52, label %60, !dbg !1261

52:                                               ; preds = %48, %52
  %53 = phi ptr [ %56, %52 ], [ %49, %48 ]
  %54 = phi i32 [ %55, %52 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata ptr %53, metadata !1250, metadata !DIExpression()), !dbg !1256
  %55 = add nuw nsw i32 %54, 1, !dbg !1262
  %56 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1264
  call void @llvm.dbg.value(metadata ptr %56, metadata !1250, metadata !DIExpression()), !dbg !1256
  %57 = load i8, ptr %56, align 1, !dbg !1259, !tbaa !1037
  %58 = icmp eq i8 %57, 32, !dbg !1260
  br i1 %58, label %52, label %59, !dbg !1261, !llvm.loop !1265

59:                                               ; preds = %52
  store i32 %55, ptr @prefix_lead_space, align 4, !dbg !1262, !tbaa !1028
  br label %60, !dbg !1261

60:                                               ; preds = %59, %48
  %61 = phi ptr [ %56, %59 ], [ %49, %48 ]
  store ptr %61, ptr @prefix, align 8, !dbg !1267, !tbaa !955
  %62 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #39, !dbg !1268
  %63 = trunc i64 %62 to i32, !dbg !1268
  store i32 %63, ptr @prefix_full_length, align 4, !dbg !1269, !tbaa !1028
  %64 = shl i64 %62, 32, !dbg !1270
  %65 = ashr exact i64 %64, 32, !dbg !1270
  %66 = getelementptr inbounds i8, ptr %61, i64 %65, !dbg !1270
  call void @llvm.dbg.value(metadata ptr %66, metadata !1255, metadata !DIExpression()), !dbg !1256
  br label %67, !dbg !1271

67:                                               ; preds = %70, %60
  %68 = phi ptr [ %66, %60 ], [ %71, %70 ], !dbg !1256
  call void @llvm.dbg.value(metadata ptr %68, metadata !1255, metadata !DIExpression()), !dbg !1256
  %69 = icmp ugt ptr %68, %61, !dbg !1272
  br i1 %69, label %70, label %74, !dbg !1273

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, ptr %68, i64 -1, !dbg !1274
  %72 = load i8, ptr %71, align 1, !dbg !1274, !tbaa !1037
  %73 = icmp eq i8 %72, 32, !dbg !1275
  br i1 %73, label %67, label %74, !dbg !1271, !llvm.loop !1276

74:                                               ; preds = %67, %70
  store i8 0, ptr %68, align 1, !dbg !1278, !tbaa !1037
  %75 = ptrtoint ptr %68 to i64, !dbg !1279
  %76 = ptrtoint ptr %61 to i64, !dbg !1279
  %77 = sub i64 %75, %76, !dbg !1279
  %78 = trunc i64 %77 to i32, !dbg !1280
  store i32 %78, ptr @prefix_length, align 4, !dbg !1281, !tbaa !1028
  br label %79, !dbg !1282

79:                                               ; preds = %74, %43, %42, %41, %40
  br label %32, !dbg !1196, !llvm.loop !1245

80:                                               ; preds = %32
  tail call void @usage(i32 noundef 0) #42, !dbg !1283
  unreachable, !dbg !1283

81:                                               ; preds = %32
  %82 = load ptr, ptr @stdout, align 8, !dbg !1284, !tbaa !955
  %83 = load ptr, ptr @Version, align 8, !dbg !1284, !tbaa !955
  %84 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #38, !dbg !1284
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %82, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef %83, ptr noundef %84, ptr noundef null) #38, !dbg !1284
  tail call void @exit(i32 noundef 0) #40, !dbg !1284
  unreachable, !dbg !1284

85:                                               ; preds = %32
  %86 = icmp eq ptr %28, null, !dbg !1285
  br i1 %86, label %91, label %87, !dbg !1287

87:                                               ; preds = %85
  %88 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !1288
  %89 = tail call i64 @xnumtoumax(ptr noundef nonnull %28, i32 noundef 10, i64 noundef 0, i64 noundef 2500, ptr noundef nonnull @.str.13, ptr noundef %88, i32 noundef 0, i32 noundef 8) #38, !dbg !1290
  %90 = trunc i64 %89 to i32, !dbg !1290
  store i32 %90, ptr @max_width, align 4, !dbg !1291, !tbaa !1028
  br label %91, !dbg !1292

91:                                               ; preds = %87, %85
  %92 = icmp eq ptr %31, null, !dbg !1293
  %93 = load i32, ptr @max_width, align 4, !dbg !1295, !tbaa !1028
  br i1 %92, label %101, label %94, !dbg !1296

94:                                               ; preds = %91
  %95 = sext i32 %93 to i64, !dbg !1297
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !1299
  %97 = tail call i64 @xdectoumax(ptr noundef nonnull %31, i64 noundef 0, i64 noundef %95, ptr noundef nonnull @.str.13, ptr noundef %96, i32 noundef 0) #38, !dbg !1300
  %98 = trunc i64 %97 to i32, !dbg !1300
  store i32 %98, ptr @goal_width, align 4, !dbg !1301, !tbaa !1028
  br i1 %86, label %99, label %104, !dbg !1302

99:                                               ; preds = %94
  %100 = add nsw i32 %98, 10, !dbg !1303
  store i32 %100, ptr @max_width, align 4, !dbg !1305, !tbaa !1028
  br label %104, !dbg !1306

101:                                              ; preds = %91
  %102 = mul nsw i32 %93, 187, !dbg !1307
  %103 = sdiv i32 %102, 200, !dbg !1309
  store i32 %103, ptr @goal_width, align 4, !dbg !1310, !tbaa !1028
  br label %104

104:                                              ; preds = %94, %99, %101
  call void @llvm.dbg.value(metadata i8 0, metadata !1186, metadata !DIExpression()), !dbg !1196
  %105 = load i32, ptr @optind, align 4, !dbg !1311, !tbaa !1028
  %106 = icmp eq i32 %105, %26, !dbg !1312
  br i1 %106, label %109, label %107, !dbg !1313

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 poison, metadata !1186, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 poison, metadata !1183, metadata !DIExpression()), !dbg !1196
  %108 = icmp slt i32 %105, %26, !dbg !1314
  br i1 %108, label %112, label %152, !dbg !1315

109:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 1, metadata !1186, metadata !DIExpression()), !dbg !1196
  %110 = load ptr, ptr @stdin, align 8, !dbg !1316, !tbaa !955
  %111 = tail call fastcc i1 @fmt(ptr noundef %110, ptr noundef nonnull @.str.21), !dbg !1318
  call void @llvm.dbg.value(metadata i8 poison, metadata !1186, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 poison, metadata !1183, metadata !DIExpression()), !dbg !1196
  br label %143, !dbg !1319

112:                                              ; preds = %107, %136
  %113 = phi i32 [ %140, %136 ], [ %105, %107 ]
  %114 = phi i1 [ %138, %136 ], [ false, %107 ]
  %115 = phi i1 [ %137, %136 ], [ true, %107 ]
  %116 = sext i32 %113 to i64, !dbg !1321
  %117 = getelementptr inbounds ptr, ptr %25, i64 %116, !dbg !1321
  %118 = load ptr, ptr %117, align 8, !dbg !1321, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %118, metadata !1187, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata ptr %118, metadata !1039, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !1045, metadata !DIExpression()), !dbg !1323
  %119 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(2) @.str.21) #39, !dbg !1325
  %120 = icmp eq i32 %119, 0, !dbg !1326
  br i1 %120, label %121, label %125, !dbg !1327

121:                                              ; preds = %112
  %122 = load ptr, ptr @stdin, align 8, !dbg !1328, !tbaa !955
  %123 = tail call fastcc i1 @fmt(ptr noundef %122, ptr noundef %118), !dbg !1330
  %124 = and i1 %115, %123, !dbg !1331
  call void @llvm.dbg.value(metadata i1 %124, metadata !1183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1196
  call void @llvm.dbg.value(metadata i8 1, metadata !1186, metadata !DIExpression()), !dbg !1196
  br label %136, !dbg !1332

125:                                              ; preds = %112
  %126 = tail call noalias ptr @rpl_fopen(ptr noundef %118, ptr noundef nonnull @.str.22) #38, !dbg !1333
  call void @llvm.dbg.value(metadata ptr %126, metadata !1193, metadata !DIExpression()), !dbg !1334
  %127 = icmp eq ptr %126, null, !dbg !1335
  br i1 %127, label %131, label %128, !dbg !1337

128:                                              ; preds = %125
  %129 = tail call fastcc i1 @fmt(ptr noundef nonnull %126, ptr noundef %118), !dbg !1338
  %130 = and i1 %115, %129, !dbg !1339
  call void @llvm.dbg.value(metadata i1 %130, metadata !1183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1196
  br label %136, !dbg !1340

131:                                              ; preds = %125
  %132 = tail call ptr @__errno_location() #41, !dbg !1341
  %133 = load i32, ptr %132, align 4, !dbg !1341, !tbaa !1028
  %134 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #38, !dbg !1341
  %135 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %118) #38, !dbg !1341
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %133, ptr noundef %134, ptr noundef %135) #38, !dbg !1341
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1196
  br label %136

136:                                              ; preds = %128, %131, %121
  %137 = phi i1 [ %124, %121 ], [ %130, %128 ], [ false, %131 ], !dbg !1343
  %138 = phi i1 [ true, %121 ], [ %114, %128 ], [ %114, %131 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1186, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 poison, metadata !1183, metadata !DIExpression()), !dbg !1196
  %139 = load i32, ptr @optind, align 4, !dbg !1344, !tbaa !1028
  %140 = add nsw i32 %139, 1, !dbg !1344
  store i32 %140, ptr @optind, align 4, !dbg !1344, !tbaa !1028
  %141 = icmp slt i32 %140, %26, !dbg !1314
  br i1 %141, label %112, label %142, !dbg !1315, !llvm.loop !1345

142:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i8 poison, metadata !1186, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 poison, metadata !1183, metadata !DIExpression()), !dbg !1196
  br i1 %138, label %143, label %152, !dbg !1319

143:                                              ; preds = %109, %142
  %144 = phi i1 [ %111, %109 ], [ %137, %142 ]
  %145 = load ptr, ptr @stdin, align 8, !dbg !1347, !tbaa !955
  %146 = tail call i32 @rpl_fclose(ptr noundef %145) #38, !dbg !1348
  %147 = icmp eq i32 %146, 0, !dbg !1349
  br i1 %147, label %152, label %148, !dbg !1350

148:                                              ; preds = %143
  %149 = tail call ptr @__errno_location() #41, !dbg !1351
  %150 = load i32, ptr %149, align 4, !dbg !1351, !tbaa !1028
  %151 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #38, !dbg !1351
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %150, ptr noundef nonnull @.str.24, ptr noundef %151) #38, !dbg !1351
  unreachable, !dbg !1351

152:                                              ; preds = %107, %143, %142
  %153 = phi i1 [ %144, %143 ], [ %137, %142 ], [ true, %107 ]
  %154 = xor i1 %153, true, !dbg !1352
  %155 = zext i1 %154 to i32, !dbg !1352
  ret i32 %155, !dbg !1353
}

; Function Attrs: nounwind
declare !dbg !1354 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1357 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1358 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1361 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1367 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i1 @fmt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !1370 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1374, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %1, metadata !1375, metadata !DIExpression()), !dbg !1377
  tail call void @fadvise(ptr noundef %0, i32 noundef 2) #38, !dbg !1378
  store i1 false, ptr @tabs, align 1, !dbg !1379
  store i32 0, ptr @other_indent, align 4, !dbg !1380, !tbaa !1028
  %3 = tail call fastcc i32 @get_prefix(ptr noundef %0), !dbg !1381
  store i32 %3, ptr @next_char, align 4, !dbg !1382, !tbaa !1028
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  br label %6, !dbg !1383

6:                                                ; preds = %251, %2
  %7 = phi i32 [ %252, %251 ], [ %3, %2 ], !dbg !1384
  call void @llvm.dbg.value(metadata ptr %0, metadata !1389, metadata !DIExpression()), !dbg !1392
  store i32 0, ptr @last_line_length, align 4, !dbg !1393, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %7, metadata !1390, metadata !DIExpression()), !dbg !1392
  br label %8, !dbg !1394

8:                                                ; preds = %116, %6
  %9 = phi i32 [ %7, %6 ], [ %117, %116 ], !dbg !1392
  call void @llvm.dbg.value(metadata i32 %9, metadata !1390, metadata !DIExpression()), !dbg !1392
  switch i32 %9, label %10 [
    i32 -1, label %19
    i32 10, label %19
  ], !dbg !1395

10:                                               ; preds = %8
  %11 = load i32, ptr @next_prefix_indent, align 4, !dbg !1396, !tbaa !1028
  %12 = load i32, ptr @prefix_lead_space, align 4, !dbg !1397, !tbaa !1028
  %13 = icmp slt i32 %11, %12, !dbg !1398
  br i1 %13, label %19, label %14, !dbg !1399

14:                                               ; preds = %10
  %15 = load i32, ptr @in_column, align 4, !dbg !1400, !tbaa !1028
  %16 = load i32, ptr @prefix_full_length, align 4, !dbg !1401, !tbaa !1028
  %17 = add nsw i32 %16, %11, !dbg !1402
  %18 = icmp slt i32 %15, %17, !dbg !1403
  br i1 %18, label %19, label %118, !dbg !1394

19:                                               ; preds = %14, %10, %8, %8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1404, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 %9, metadata !1409, metadata !DIExpression()), !dbg !1414
  store i32 0, ptr @out_column, align 4, !dbg !1417, !tbaa !1028
  %20 = load i32, ptr @in_column, align 4, !dbg !1418, !tbaa !1028
  %21 = load i32, ptr @next_prefix_indent, align 4, !dbg !1419, !tbaa !1028
  %22 = icmp sgt i32 %20, %21, !dbg !1420
  br i1 %22, label %24, label %23, !dbg !1421

23:                                               ; preds = %19
  switch i32 %9, label %24 [
    i32 -1, label %77
    i32 10, label %77
  ], !dbg !1422

24:                                               ; preds = %23, %19
  tail call fastcc void @put_space(i32 noundef %21), !dbg !1423
  call void @llvm.dbg.value(metadata ptr poison, metadata !1410, metadata !DIExpression()), !dbg !1424
  %25 = load i32, ptr @out_column, align 4, !dbg !1425, !tbaa !1028
  %26 = load i32, ptr @in_column, align 4, !dbg !1427, !tbaa !1028
  %27 = icmp eq i32 %26, %25, !dbg !1428
  br i1 %27, label %36, label %28, !dbg !1429

28:                                               ; preds = %24
  %29 = load ptr, ptr @prefix, align 8, !dbg !1430, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %29, metadata !1410, metadata !DIExpression()), !dbg !1424
  br label %30, !dbg !1431

30:                                               ; preds = %54, %28
  %31 = phi i32 [ %55, %54 ], [ %26, %28 ]
  %32 = phi i32 [ %57, %54 ], [ %25, %28 ]
  %33 = phi ptr [ %40, %54 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata ptr %33, metadata !1410, metadata !DIExpression()), !dbg !1424
  %34 = load i8, ptr %33, align 1, !dbg !1432, !tbaa !1037
  %35 = icmp eq i8 %34, 0, !dbg !1429
  br i1 %35, label %36, label %39, !dbg !1431

36:                                               ; preds = %54, %30, %24
  %37 = phi i32 [ %25, %24 ], [ %55, %54 ], [ %32, %30 ], !dbg !1425
  %38 = phi i32 [ %25, %24 ], [ %55, %54 ], [ %31, %30 ], !dbg !1427
  switch i32 %9, label %59 [
    i32 -1, label %61
    i32 10, label %77
  ], !dbg !1433

39:                                               ; preds = %30
  %40 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1435
  call void @llvm.dbg.value(metadata ptr %40, metadata !1410, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8 %34, metadata !1436, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1442
  %41 = load ptr, ptr @stdout, align 8, !dbg !1444, !tbaa !955
  %42 = getelementptr inbounds %struct._IO_FILE, ptr %41, i64 0, i32 5, !dbg !1444
  %43 = load ptr, ptr %42, align 8, !dbg !1444, !tbaa !1445
  %44 = getelementptr inbounds %struct._IO_FILE, ptr %41, i64 0, i32 6, !dbg !1444
  %45 = load ptr, ptr %44, align 8, !dbg !1444, !tbaa !1448
  %46 = icmp ult ptr %43, %45, !dbg !1444
  br i1 %46, label %52, label %47, !dbg !1444, !prof !1449

47:                                               ; preds = %39
  %48 = zext i8 %34 to i32, !dbg !1432
  call void @llvm.dbg.value(metadata i32 %48, metadata !1436, metadata !DIExpression()), !dbg !1442
  %49 = tail call i32 @__overflow(ptr noundef nonnull %41, i32 noundef %48) #38, !dbg !1444
  %50 = load i32, ptr @out_column, align 4, !dbg !1450, !tbaa !1028
  %51 = load i32, ptr @in_column, align 4, !dbg !1427, !tbaa !1028
  br label %54, !dbg !1444

52:                                               ; preds = %39
  %53 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !1444
  store ptr %53, ptr %42, align 8, !dbg !1444, !tbaa !1445
  store i8 %34, ptr %43, align 1, !dbg !1444, !tbaa !1037
  br label %54, !dbg !1444

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %51, %47 ], [ %31, %52 ], !dbg !1427
  %56 = phi i32 [ %50, %47 ], [ %32, %52 ], !dbg !1450
  %57 = add nsw i32 %56, 1, !dbg !1450
  store i32 %57, ptr @out_column, align 4, !dbg !1450, !tbaa !1028
  call void @llvm.dbg.value(metadata ptr %40, metadata !1410, metadata !DIExpression()), !dbg !1424
  %58 = icmp eq i32 %55, %57, !dbg !1428
  br i1 %58, label %36, label %30, !dbg !1429, !llvm.loop !1451

59:                                               ; preds = %36
  %60 = sub nsw i32 %38, %37, !dbg !1453
  tail call fastcc void @put_space(i32 noundef %60), !dbg !1454
  br label %77, !dbg !1455

61:                                               ; preds = %36
  %62 = load i32, ptr @next_prefix_indent, align 4, !dbg !1457, !tbaa !1028
  %63 = load i32, ptr @prefix_length, align 4, !dbg !1458, !tbaa !1028
  %64 = add nsw i32 %63, %62, !dbg !1459
  %65 = icmp slt i32 %38, %64, !dbg !1460
  br i1 %65, label %77, label %66, !dbg !1461

66:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 10, metadata !1436, metadata !DIExpression()), !dbg !1462
  %67 = load ptr, ptr @stdout, align 8, !dbg !1464, !tbaa !955
  %68 = getelementptr inbounds %struct._IO_FILE, ptr %67, i64 0, i32 5, !dbg !1464
  %69 = load ptr, ptr %68, align 8, !dbg !1464, !tbaa !1445
  %70 = getelementptr inbounds %struct._IO_FILE, ptr %67, i64 0, i32 6, !dbg !1464
  %71 = load ptr, ptr %70, align 8, !dbg !1464, !tbaa !1448
  %72 = icmp ult ptr %69, %71, !dbg !1464
  br i1 %72, label %75, label %73, !dbg !1464, !prof !1449

73:                                               ; preds = %66
  %74 = tail call i32 @__overflow(ptr noundef nonnull %67, i32 noundef 10) #38, !dbg !1464
  br label %77, !dbg !1464

75:                                               ; preds = %66
  %76 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1464
  store ptr %76, ptr %68, align 8, !dbg !1464, !tbaa !1445
  store i8 10, ptr %69, align 1, !dbg !1464, !tbaa !1037
  br label %77, !dbg !1464

77:                                               ; preds = %75, %73, %61, %59, %36, %23, %23
  br label %78, !dbg !1465

78:                                               ; preds = %103, %77
  %79 = phi i32 [ %9, %77 ], [ %104, %103 ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !1409, metadata !DIExpression()), !dbg !1414
  switch i32 %79, label %80 [
    i32 -1, label %253
    i32 10, label %105
  ], !dbg !1465

80:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i32 %79, metadata !1436, metadata !DIExpression()), !dbg !1466
  %81 = load ptr, ptr @stdout, align 8, !dbg !1469, !tbaa !955
  %82 = getelementptr inbounds %struct._IO_FILE, ptr %81, i64 0, i32 5, !dbg !1469
  %83 = load ptr, ptr %82, align 8, !dbg !1469, !tbaa !1445
  %84 = getelementptr inbounds %struct._IO_FILE, ptr %81, i64 0, i32 6, !dbg !1469
  %85 = load ptr, ptr %84, align 8, !dbg !1469, !tbaa !1448
  %86 = icmp ult ptr %83, %85, !dbg !1469
  br i1 %86, label %90, label %87, !dbg !1469, !prof !1449

87:                                               ; preds = %80
  %88 = and i32 %79, 255, !dbg !1469
  %89 = tail call i32 @__overflow(ptr noundef nonnull %81, i32 noundef %88) #38, !dbg !1469
  br label %93, !dbg !1469

90:                                               ; preds = %80
  %91 = trunc i32 %79 to i8, !dbg !1469
  %92 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1469
  store ptr %92, ptr %82, align 8, !dbg !1469, !tbaa !1445
  store i8 %91, ptr %83, align 1, !dbg !1469, !tbaa !1037
  br label %93, !dbg !1469

93:                                               ; preds = %90, %87
  call void @llvm.dbg.value(metadata ptr %0, metadata !1470, metadata !DIExpression()), !dbg !1475
  %94 = load ptr, ptr %4, align 8, !dbg !1477, !tbaa !1478
  %95 = load ptr, ptr %5, align 8, !dbg !1477, !tbaa !1479
  %96 = icmp ult ptr %94, %95, !dbg !1477
  br i1 %96, label %99, label %97, !dbg !1477, !prof !1449

97:                                               ; preds = %93
  %98 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1477
  br label %103, !dbg !1477

99:                                               ; preds = %93
  %100 = getelementptr inbounds i8, ptr %94, i64 1, !dbg !1477
  store ptr %100, ptr %4, align 8, !dbg !1477, !tbaa !1478
  %101 = load i8, ptr %94, align 1, !dbg !1477, !tbaa !1037
  %102 = zext i8 %101 to i32, !dbg !1477
  br label %103, !dbg !1477

103:                                              ; preds = %99, %97
  %104 = phi i32 [ %98, %97 ], [ %102, %99 ]
  br label %78, !dbg !1414, !llvm.loop !1480

105:                                              ; preds = %78
  call void @llvm.dbg.value(metadata i32 10, metadata !1436, metadata !DIExpression()), !dbg !1482
  %106 = load ptr, ptr @stdout, align 8, !dbg !1484, !tbaa !955
  %107 = getelementptr inbounds %struct._IO_FILE, ptr %106, i64 0, i32 5, !dbg !1484
  %108 = load ptr, ptr %107, align 8, !dbg !1484, !tbaa !1445
  %109 = getelementptr inbounds %struct._IO_FILE, ptr %106, i64 0, i32 6, !dbg !1484
  %110 = load ptr, ptr %109, align 8, !dbg !1484, !tbaa !1448
  %111 = icmp ult ptr %108, %110, !dbg !1484
  br i1 %111, label %114, label %112, !dbg !1484, !prof !1449

112:                                              ; preds = %105
  %113 = tail call i32 @__overflow(ptr noundef nonnull %106, i32 noundef 10) #38, !dbg !1484
  br label %116, !dbg !1484

114:                                              ; preds = %105
  %115 = getelementptr inbounds i8, ptr %108, i64 1, !dbg !1484
  store ptr %115, ptr %107, align 8, !dbg !1484, !tbaa !1445
  store i8 10, ptr %108, align 1, !dbg !1484, !tbaa !1037
  br label %116, !dbg !1484

116:                                              ; preds = %114, %112
  %117 = tail call fastcc i32 @get_prefix(ptr noundef %0), !dbg !1485
  call void @llvm.dbg.value(metadata i32 %117, metadata !1390, metadata !DIExpression()), !dbg !1392
  br label %8, !dbg !1394, !llvm.loop !1486

118:                                              ; preds = %14
  store i32 %11, ptr @prefix_indent, align 4, !dbg !1488, !tbaa !1028
  store i32 %15, ptr @first_indent, align 4, !dbg !1489, !tbaa !1028
  store ptr @parabuf, ptr @wptr, align 8, !dbg !1490, !tbaa !955
  store ptr @unused_word_type, ptr @word_limit, align 8, !dbg !1491, !tbaa !955
  %119 = tail call fastcc i32 @get_line(ptr noundef %0, i32 noundef %9), !dbg !1492
  call void @llvm.dbg.value(metadata i32 %119, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %119, metadata !1493, metadata !DIExpression()), !dbg !1496
  %120 = load i32, ptr @next_prefix_indent, align 4, !dbg !1498, !tbaa !1028
  %121 = load i32, ptr @prefix_indent, align 4, !dbg !1499, !tbaa !1028
  %122 = icmp eq i32 %120, %121, !dbg !1500
  br i1 %122, label %123, label %132, !dbg !1501

123:                                              ; preds = %118
  %124 = load i32, ptr @in_column, align 4, !dbg !1502, !tbaa !1028
  %125 = load i32, ptr @prefix_full_length, align 4, !dbg !1503, !tbaa !1028
  %126 = add nsw i32 %125, %120, !dbg !1504
  %127 = icmp sge i32 %124, %126, !dbg !1505
  %128 = icmp ne i32 %119, 10
  %129 = and i1 %128, %127, !dbg !1506
  %130 = icmp ne i32 %119, -1
  %131 = and i1 %130, %129, !dbg !1506
  br label %132, !dbg !1506

132:                                              ; preds = %123, %118
  %133 = phi i1 [ false, %118 ], [ %131, %123 ], !dbg !1496
  call void @llvm.dbg.value(metadata i1 %133, metadata !1507, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1512
  %134 = load i1, ptr @split, align 1, !dbg !1514
  br i1 %134, label %153, label %135, !dbg !1516

135:                                              ; preds = %132
  %136 = load i1, ptr @crown, align 1, !dbg !1517
  br i1 %136, label %155, label %137, !dbg !1519

137:                                              ; preds = %135
  %138 = load i1, ptr @tagged, align 1, !dbg !1520
  br i1 %138, label %139, label %186, !dbg !1522

139:                                              ; preds = %137
  br i1 %133, label %142, label %140, !dbg !1523

140:                                              ; preds = %139
  %141 = load i32, ptr @first_indent, align 4, !dbg !1526, !tbaa !1028
  br label %146, !dbg !1523

142:                                              ; preds = %139
  %143 = load i32, ptr @in_column, align 4, !dbg !1528, !tbaa !1028
  %144 = load i32, ptr @first_indent, align 4, !dbg !1529, !tbaa !1028
  %145 = icmp eq i32 %143, %144, !dbg !1530
  br i1 %145, label %146, label %183, !dbg !1531

146:                                              ; preds = %142, %140
  %147 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %148 = load i32, ptr @other_indent, align 4, !dbg !1532, !tbaa !1028
  %149 = icmp eq i32 %148, %147, !dbg !1533
  br i1 %149, label %150, label %188, !dbg !1534

150:                                              ; preds = %146
  %151 = icmp eq i32 %147, 0, !dbg !1535
  %152 = select i1 %151, i32 3, i32 0, !dbg !1536
  br label %183, !dbg !1537

153:                                              ; preds = %132
  %154 = load i32, ptr @first_indent, align 4, !dbg !1538, !tbaa !1028
  store i32 %154, ptr @other_indent, align 4, !dbg !1539, !tbaa !1028
  br label %236

155:                                              ; preds = %135
  %156 = load i32, ptr @in_column, align 4, !dbg !1540
  %157 = load i32, ptr @first_indent, align 4, !dbg !1540
  %158 = select i1 %133, i32 %156, i32 %157, !dbg !1540
  store i32 %158, ptr @other_indent, align 4, !dbg !1539, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %119, metadata !1493, metadata !DIExpression()), !dbg !1542
  br i1 %122, label %159, label %236, !dbg !1548

159:                                              ; preds = %155
  %160 = load i32, ptr @prefix_full_length, align 4, !dbg !1549, !tbaa !1028
  %161 = add nsw i32 %160, %120, !dbg !1550
  %162 = icmp sge i32 %156, %161, !dbg !1551
  %163 = freeze i1 %162, !dbg !1552
  br i1 %163, label %164, label %236, !dbg !1552

164:                                              ; preds = %159
  switch i32 %119, label %165 [
    i32 -1, label %236
    i32 10, label %236
  ], !dbg !1552

165:                                              ; preds = %164, %171
  %166 = phi i32 [ %167, %171 ], [ %119, %164 ], !dbg !1392
  call void @llvm.dbg.value(metadata i32 %166, metadata !1390, metadata !DIExpression()), !dbg !1392
  %167 = tail call fastcc i32 @get_line(ptr noundef %0, i32 noundef %166), !dbg !1553
  call void @llvm.dbg.value(metadata i32 %167, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %167, metadata !1493, metadata !DIExpression()), !dbg !1556
  %168 = load i32, ptr @next_prefix_indent, align 4, !dbg !1558, !tbaa !1028
  %169 = load i32, ptr @prefix_indent, align 4, !dbg !1559, !tbaa !1028
  %170 = icmp eq i32 %168, %169, !dbg !1560
  br i1 %170, label %171, label %236, !dbg !1561

171:                                              ; preds = %165
  %172 = load i32, ptr @in_column, align 4, !dbg !1562
  %173 = load i32, ptr @prefix_full_length, align 4, !dbg !1563, !tbaa !1028
  %174 = add nsw i32 %173, %168, !dbg !1564
  %175 = icmp sge i32 %172, %174, !dbg !1565
  %176 = icmp ne i32 %167, 10
  %177 = and i1 %176, %175, !dbg !1566
  %178 = icmp ne i32 %167, -1
  %179 = and i1 %178, %177, !dbg !1566
  %180 = load i32, ptr @other_indent, align 4, !dbg !1567
  %181 = icmp eq i32 %172, %180, !dbg !1567
  %182 = select i1 %179, i1 %181, i1 false, !dbg !1567
  br i1 %182, label %165, label %236, !dbg !1568, !llvm.loop !1569

183:                                              ; preds = %142, %150
  %184 = phi i32 [ %144, %142 ], [ %147, %150 ]
  %185 = phi i32 [ %143, %142 ], [ %152, %150 ]
  store i32 %185, ptr @other_indent, align 4, !dbg !1539, !tbaa !1028
  br label %188, !dbg !1572

186:                                              ; preds = %137
  %187 = load i32, ptr @first_indent, align 4, !dbg !1573, !tbaa !1028
  store i32 %187, ptr @other_indent, align 4, !dbg !1539, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %119, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %119, metadata !1493, metadata !DIExpression()), !dbg !1575
  br i1 %122, label %217, label %236, !dbg !1579

188:                                              ; preds = %146, %183
  %189 = phi i32 [ %184, %183 ], [ %147, %146 ]
  call void @llvm.dbg.value(metadata i32 %119, metadata !1493, metadata !DIExpression()), !dbg !1580
  br i1 %122, label %190, label %236, !dbg !1584

190:                                              ; preds = %188
  %191 = load i32, ptr @in_column, align 4, !dbg !1585, !tbaa !1028
  %192 = load i32, ptr @prefix_full_length, align 4, !dbg !1586, !tbaa !1028
  %193 = add nsw i32 %192, %120, !dbg !1587
  %194 = icmp sge i32 %191, %193, !dbg !1588
  %195 = freeze i1 %194, !dbg !1589
  br i1 %195, label %196, label %236, !dbg !1589

196:                                              ; preds = %190
  switch i32 %119, label %197 [
    i32 -1, label %236
    i32 10, label %236
  ], !dbg !1589

197:                                              ; preds = %196
  %198 = icmp eq i32 %191, %189, !dbg !1590
  br i1 %198, label %236, label %199, !dbg !1591

199:                                              ; preds = %197, %205
  %200 = phi i32 [ %201, %205 ], [ %119, %197 ], !dbg !1392
  call void @llvm.dbg.value(metadata i32 %200, metadata !1390, metadata !DIExpression()), !dbg !1392
  %201 = tail call fastcc i32 @get_line(ptr noundef %0, i32 noundef %200), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %201, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %201, metadata !1493, metadata !DIExpression()), !dbg !1595
  %202 = load i32, ptr @next_prefix_indent, align 4, !dbg !1597, !tbaa !1028
  %203 = load i32, ptr @prefix_indent, align 4, !dbg !1598, !tbaa !1028
  %204 = icmp eq i32 %202, %203, !dbg !1599
  br i1 %204, label %205, label %236, !dbg !1600

205:                                              ; preds = %199
  %206 = load i32, ptr @in_column, align 4, !dbg !1601
  %207 = load i32, ptr @prefix_full_length, align 4, !dbg !1602, !tbaa !1028
  %208 = add nsw i32 %207, %202, !dbg !1603
  %209 = icmp sge i32 %206, %208, !dbg !1604
  %210 = icmp ne i32 %201, 10
  %211 = and i1 %210, %209, !dbg !1605
  %212 = icmp ne i32 %201, -1
  %213 = and i1 %212, %211, !dbg !1605
  %214 = load i32, ptr @other_indent, align 4, !dbg !1606
  %215 = icmp eq i32 %206, %214, !dbg !1606
  %216 = select i1 %213, i1 %215, i1 false, !dbg !1606
  br i1 %216, label %199, label %236, !dbg !1607, !llvm.loop !1608

217:                                              ; preds = %186, %231
  %218 = phi i32 [ %233, %231 ], [ %120, %186 ]
  %219 = phi i32 [ %232, %231 ], [ %119, %186 ]
  call void @llvm.dbg.value(metadata i32 %219, metadata !1390, metadata !DIExpression()), !dbg !1392
  %220 = load i32, ptr @in_column, align 4, !dbg !1611
  %221 = load i32, ptr @prefix_full_length, align 4, !dbg !1612, !tbaa !1028
  %222 = add nsw i32 %221, %218, !dbg !1613
  %223 = icmp sge i32 %220, %222, !dbg !1614
  %224 = icmp ne i32 %219, 10
  %225 = and i1 %224, %223, !dbg !1615
  %226 = icmp ne i32 %219, -1
  %227 = and i1 %226, %225, !dbg !1615
  %228 = load i32, ptr @other_indent, align 4, !dbg !1616
  %229 = icmp eq i32 %220, %228, !dbg !1616
  %230 = select i1 %227, i1 %229, i1 false, !dbg !1616
  br i1 %230, label %231, label %236, !dbg !1617

231:                                              ; preds = %217
  %232 = tail call fastcc i32 @get_line(ptr noundef %0, i32 noundef %219), !dbg !1618
  call void @llvm.dbg.value(metadata i32 %232, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %232, metadata !1493, metadata !DIExpression()), !dbg !1575
  %233 = load i32, ptr @next_prefix_indent, align 4, !dbg !1619, !tbaa !1028
  %234 = load i32, ptr @prefix_indent, align 4, !dbg !1620, !tbaa !1028
  %235 = icmp eq i32 %233, %234, !dbg !1621
  br i1 %235, label %217, label %236, !dbg !1579, !llvm.loop !1622

236:                                              ; preds = %217, %231, %199, %205, %165, %171, %153, %155, %159, %164, %164, %186, %188, %190, %196, %196, %197
  %237 = phi i32 [ %119, %153 ], [ %119, %164 ], [ %119, %197 ], [ %119, %196 ], [ %119, %155 ], [ %119, %188 ], [ %119, %159 ], [ %119, %164 ], [ %119, %190 ], [ %119, %196 ], [ %119, %186 ], [ %167, %171 ], [ %167, %165 ], [ %201, %205 ], [ %201, %199 ], [ %232, %231 ], [ %219, %217 ], !dbg !1392
  call void @llvm.dbg.value(metadata i32 %237, metadata !1390, metadata !DIExpression()), !dbg !1392
  %238 = load ptr, ptr @word_limit, align 8, !dbg !1624, !tbaa !955
  %239 = getelementptr %struct.Word, ptr %238, i64 -1, i32 3, !dbg !1625
  %240 = load i8, ptr %239, align 8, !dbg !1626
  %241 = or i8 %240, 10, !dbg !1627
  store i8 %241, ptr %239, align 8, !dbg !1627
  store i32 %237, ptr @next_char, align 4, !dbg !1392, !tbaa !1028
  tail call fastcc void @fmt_paragraph(), !dbg !1628
  call void @llvm.dbg.value(metadata ptr %238, metadata !1630, metadata !DIExpression()), !dbg !1637
  %242 = load i32, ptr @first_indent, align 4, !dbg !1639, !tbaa !1028
  tail call fastcc void @put_line(ptr noundef nonnull @unused_word_type, i32 noundef %242), !dbg !1640
  call void @llvm.dbg.value(metadata ptr poison, metadata !1635, metadata !DIExpression()), !dbg !1641
  %243 = load ptr, ptr getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 0, i32 6), align 8, !dbg !1642, !tbaa !1643
  call void @llvm.dbg.value(metadata ptr %243, metadata !1635, metadata !DIExpression()), !dbg !1641
  %244 = icmp eq ptr %243, %238, !dbg !1645
  br i1 %244, label %251, label %245, !dbg !1647

245:                                              ; preds = %236, %245
  %246 = phi ptr [ %249, %245 ], [ %243, %236 ]
  %247 = load i32, ptr @other_indent, align 4, !dbg !1648, !tbaa !1028
  tail call fastcc void @put_line(ptr noundef %246, i32 noundef %247), !dbg !1649
  %248 = getelementptr inbounds %struct.Word, ptr %246, i64 0, i32 6, !dbg !1650
  call void @llvm.dbg.value(metadata ptr poison, metadata !1635, metadata !DIExpression()), !dbg !1641
  %249 = load ptr, ptr %248, align 8, !dbg !1642, !tbaa !1643
  call void @llvm.dbg.value(metadata ptr %249, metadata !1635, metadata !DIExpression()), !dbg !1641
  %250 = icmp eq ptr %249, %238, !dbg !1645
  br i1 %250, label %251, label %245, !dbg !1647, !llvm.loop !1651

251:                                              ; preds = %245, %236
  %252 = load i32, ptr @next_char, align 4, !dbg !1384, !tbaa !1028
  br label %6, !dbg !1383, !llvm.loop !1653

253:                                              ; preds = %78
  store i32 -1, ptr @next_char, align 4, !dbg !1392, !tbaa !1028
  call void @llvm.dbg.value(metadata ptr %0, metadata !1655, metadata !DIExpression()), !dbg !1658
  %254 = load i32, ptr %0, align 8, !dbg !1660, !tbaa !1661
  %255 = and i32 %254, 32, !dbg !1662
  %256 = icmp eq i32 %255, 0, !dbg !1662
  %257 = sext i1 %256 to i32, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %257, metadata !1376, metadata !DIExpression()), !dbg !1377
  %258 = load ptr, ptr @stdin, align 8, !dbg !1663, !tbaa !955
  %259 = icmp eq ptr %258, %0, !dbg !1665
  br i1 %259, label %260, label %261, !dbg !1666

260:                                              ; preds = %253
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #38, !dbg !1667
  br label %268, !dbg !1667

261:                                              ; preds = %253
  %262 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !1668
  %263 = icmp ne i32 %262, 0, !dbg !1670
  %264 = select i1 %263, i1 %256, i1 false, !dbg !1671
  br i1 %264, label %265, label %268, !dbg !1671

265:                                              ; preds = %261
  %266 = tail call ptr @__errno_location() #41, !dbg !1672
  %267 = load i32, ptr %266, align 4, !dbg !1672, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %267, metadata !1376, metadata !DIExpression()), !dbg !1377
  br label %268, !dbg !1673

268:                                              ; preds = %261, %265, %260
  %269 = phi i32 [ %257, %260 ], [ %267, %265 ], [ %257, %261 ], !dbg !1377
  call void @llvm.dbg.value(metadata i32 %269, metadata !1376, metadata !DIExpression()), !dbg !1377
  %270 = icmp sgt i32 %269, -1, !dbg !1674
  br i1 %270, label %271, label %281, !dbg !1676

271:                                              ; preds = %268
  %272 = load ptr, ptr @stdin, align 8, !dbg !1677, !tbaa !955
  %273 = icmp eq ptr %272, %0, !dbg !1680
  %274 = tail call ptr @__errno_location() #41, !dbg !1681
  %275 = load i32, ptr %274, align 4, !dbg !1681, !tbaa !1028
  br i1 %273, label %276, label %278, !dbg !1682

276:                                              ; preds = %271
  %277 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #38, !dbg !1683
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %275, ptr noundef %277) #38, !dbg !1683
  br label %281, !dbg !1683

278:                                              ; preds = %271
  %279 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #38, !dbg !1684
  %280 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %1) #38, !dbg !1684
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %275, ptr noundef %279, ptr noundef %280) #38, !dbg !1684
  br label %281

281:                                              ; preds = %276, %278, %268
  %282 = icmp slt i32 %269, 0, !dbg !1685
  ret i1 %282, !dbg !1686
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1687 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_prefix(ptr noundef %0) unnamed_addr #10 !dbg !1691 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1693, metadata !DIExpression()), !dbg !1702
  store i32 0, ptr @in_column, align 4, !dbg !1703, !tbaa !1028
  call void @llvm.dbg.value(metadata ptr %0, metadata !1470, metadata !DIExpression()), !dbg !1704
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !1706
  %3 = load ptr, ptr %2, align 8, !dbg !1706, !tbaa !1478
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !1706
  %5 = load ptr, ptr %4, align 8, !dbg !1706, !tbaa !1479
  %6 = icmp ult ptr %3, %5, !dbg !1706
  br i1 %6, label %9, label %7, !dbg !1706, !prof !1449

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1706
  br label %13, !dbg !1706

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1706
  store ptr %10, ptr %2, align 8, !dbg !1706, !tbaa !1478
  %11 = load i8, ptr %3, align 1, !dbg !1706, !tbaa !1037
  %12 = zext i8 %11 to i32, !dbg !1706
  br label %13, !dbg !1706

13:                                               ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ %8, %7 ]
  br label %15, !dbg !1707

15:                                               ; preds = %36, %13
  %16 = phi i32 [ %14, %13 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !1711, metadata !DIExpression()), !dbg !1713
  switch i32 %16, label %38 [
    i32 32, label %17
    i32 9, label %20
  ], !dbg !1714

17:                                               ; preds = %15
  %18 = load i32, ptr @in_column, align 4, !dbg !1716, !tbaa !1028
  %19 = add nsw i32 %18, 1, !dbg !1716
  br label %25, !dbg !1718

20:                                               ; preds = %15
  store i1 true, ptr @tabs, align 1, !dbg !1719
  %21 = load i32, ptr @in_column, align 4, !dbg !1722, !tbaa !1028
  %22 = sdiv i32 %21, 8, !dbg !1723
  %23 = shl nsw i32 %22, 3, !dbg !1724
  %24 = add i32 %23, 8, !dbg !1724
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %24, %20 ], [ %19, %17 ], !dbg !1725
  store i32 %26, ptr @in_column, align 4, !dbg !1725, !tbaa !1028
  call void @llvm.dbg.value(metadata ptr %0, metadata !1470, metadata !DIExpression()), !dbg !1726
  %27 = load ptr, ptr %2, align 8, !dbg !1728, !tbaa !1478
  %28 = load ptr, ptr %4, align 8, !dbg !1728, !tbaa !1479
  %29 = icmp ult ptr %27, %28, !dbg !1728
  br i1 %29, label %32, label %30, !dbg !1728, !prof !1449

30:                                               ; preds = %25
  %31 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1728
  br label %36, !dbg !1728

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1728
  store ptr %33, ptr %2, align 8, !dbg !1728, !tbaa !1478
  %34 = load i8, ptr %27, align 1, !dbg !1728, !tbaa !1037
  %35 = zext i8 %34 to i32, !dbg !1728
  br label %36, !dbg !1728

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  br label %15, !dbg !1713, !llvm.loop !1729

38:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1694, metadata !DIExpression()), !dbg !1702
  %39 = load i32, ptr @prefix_length, align 4, !dbg !1731, !tbaa !1028
  %40 = icmp eq i32 %39, 0, !dbg !1732
  br i1 %40, label %41, label %45, !dbg !1733

41:                                               ; preds = %38
  %42 = load i32, ptr @prefix_lead_space, align 4, !dbg !1734, !tbaa !1028
  %43 = load i32, ptr @in_column, align 4, !dbg !1735, !tbaa !1028
  %44 = tail call i32 @llvm.smin.i32(i32 %42, i32 %43), !dbg !1734
  store i32 %44, ptr @next_prefix_indent, align 4, !dbg !1736, !tbaa !1028
  br label %98, !dbg !1737

45:                                               ; preds = %38
  %46 = load i32, ptr @in_column, align 4, !dbg !1738, !tbaa !1028
  store i32 %46, ptr @next_prefix_indent, align 4, !dbg !1739, !tbaa !1028
  %47 = load ptr, ptr @prefix, align 8, !dbg !1740, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %47, metadata !1695, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %16, metadata !1694, metadata !DIExpression()), !dbg !1702
  %48 = load i8, ptr %47, align 1, !dbg !1742, !tbaa !1037
  %49 = icmp eq i8 %48, 0, !dbg !1743
  br i1 %49, label %73, label %50, !dbg !1744

50:                                               ; preds = %45, %68
  %51 = phi i8 [ %71, %68 ], [ %48, %45 ]
  %52 = phi ptr [ %70, %68 ], [ %47, %45 ]
  %53 = phi i32 [ %69, %68 ], [ %16, %45 ]
  call void @llvm.dbg.value(metadata ptr %52, metadata !1695, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %53, metadata !1694, metadata !DIExpression()), !dbg !1702
  %54 = zext i8 %51 to i32, !dbg !1742
  call void @llvm.dbg.value(metadata i8 %51, metadata !1699, metadata !DIExpression()), !dbg !1745
  %55 = icmp eq i32 %53, %54, !dbg !1746
  br i1 %55, label %56, label %98, !dbg !1748

56:                                               ; preds = %50
  %57 = load i32, ptr @in_column, align 4, !dbg !1749, !tbaa !1028
  %58 = add nsw i32 %57, 1, !dbg !1749
  store i32 %58, ptr @in_column, align 4, !dbg !1749, !tbaa !1028
  call void @llvm.dbg.value(metadata ptr %0, metadata !1470, metadata !DIExpression()), !dbg !1750
  %59 = load ptr, ptr %2, align 8, !dbg !1752, !tbaa !1478
  %60 = load ptr, ptr %4, align 8, !dbg !1752, !tbaa !1479
  %61 = icmp ult ptr %59, %60, !dbg !1752
  br i1 %61, label %64, label %62, !dbg !1752, !prof !1449

62:                                               ; preds = %56
  %63 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1752
  br label %68, !dbg !1752

64:                                               ; preds = %56
  %65 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1752
  store ptr %65, ptr %2, align 8, !dbg !1752, !tbaa !1478
  %66 = load i8, ptr %59, align 1, !dbg !1752, !tbaa !1037
  %67 = zext i8 %66 to i32, !dbg !1752
  br label %68, !dbg !1752

68:                                               ; preds = %64, %62
  %69 = phi i32 [ %67, %64 ], [ %63, %62 ]
  call void @llvm.dbg.value(metadata i32 %69, metadata !1694, metadata !DIExpression()), !dbg !1702
  %70 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1753
  call void @llvm.dbg.value(metadata ptr %70, metadata !1695, metadata !DIExpression()), !dbg !1741
  %71 = load i8, ptr %70, align 1, !dbg !1742, !tbaa !1037
  %72 = icmp eq i8 %71, 0, !dbg !1743
  br i1 %72, label %73, label %50, !dbg !1744, !llvm.loop !1754

73:                                               ; preds = %68, %45
  %74 = phi i32 [ %16, %45 ], [ %69, %68 ]
  br label %75, !dbg !1756

75:                                               ; preds = %96, %73
  %76 = phi i32 [ %74, %73 ], [ %97, %96 ]
  call void @llvm.dbg.value(metadata i32 %76, metadata !1711, metadata !DIExpression()), !dbg !1758
  switch i32 %76, label %98 [
    i32 32, label %77
    i32 9, label %80
  ], !dbg !1759

77:                                               ; preds = %75
  %78 = load i32, ptr @in_column, align 4, !dbg !1760, !tbaa !1028
  %79 = add nsw i32 %78, 1, !dbg !1760
  br label %85, !dbg !1761

80:                                               ; preds = %75
  store i1 true, ptr @tabs, align 1, !dbg !1762
  %81 = load i32, ptr @in_column, align 4, !dbg !1763, !tbaa !1028
  %82 = sdiv i32 %81, 8, !dbg !1764
  %83 = shl nsw i32 %82, 3, !dbg !1765
  %84 = add i32 %83, 8, !dbg !1765
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i32 [ %84, %80 ], [ %79, %77 ], !dbg !1766
  store i32 %86, ptr @in_column, align 4, !dbg !1766, !tbaa !1028
  call void @llvm.dbg.value(metadata ptr %0, metadata !1470, metadata !DIExpression()), !dbg !1767
  %87 = load ptr, ptr %2, align 8, !dbg !1769, !tbaa !1478
  %88 = load ptr, ptr %4, align 8, !dbg !1769, !tbaa !1479
  %89 = icmp ult ptr %87, %88, !dbg !1769
  br i1 %89, label %92, label %90, !dbg !1769, !prof !1449

90:                                               ; preds = %85
  %91 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1769
  br label %96, !dbg !1769

92:                                               ; preds = %85
  %93 = getelementptr inbounds i8, ptr %87, i64 1, !dbg !1769
  store ptr %93, ptr %2, align 8, !dbg !1769, !tbaa !1478
  %94 = load i8, ptr %87, align 1, !dbg !1769, !tbaa !1037
  %95 = zext i8 %94 to i32, !dbg !1769
  br label %96, !dbg !1769

96:                                               ; preds = %92, %90
  %97 = phi i32 [ %91, %90 ], [ %95, %92 ]
  br label %75, !dbg !1758, !llvm.loop !1770

98:                                               ; preds = %50, %75, %41
  %99 = phi i32 [ %16, %41 ], [ %76, %75 ], [ %53, %50 ], !dbg !1702
  ret i32 %99, !dbg !1772
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_space(i32 noundef %0) unnamed_addr #10 !dbg !1773 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1775, metadata !DIExpression()), !dbg !1778
  %2 = load i32, ptr @out_column, align 4, !dbg !1779, !tbaa !1028
  %3 = add nsw i32 %2, %0, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %3, metadata !1776, metadata !DIExpression()), !dbg !1778
  %4 = load i1, ptr @tabs, align 1, !dbg !1781
  br i1 %4, label %5, label %29, !dbg !1783

5:                                                ; preds = %1
  %6 = sdiv i32 %3, 8, !dbg !1784
  %7 = shl nsw i32 %6, 3, !dbg !1786
  call void @llvm.dbg.value(metadata i32 %7, metadata !1777, metadata !DIExpression()), !dbg !1778
  %8 = add nsw i32 %2, 1, !dbg !1787
  %9 = icmp slt i32 %8, %7, !dbg !1789
  br i1 %9, label %10, label %29, !dbg !1790

10:                                               ; preds = %5, %23
  %11 = phi i32 [ %27, %23 ], [ %2, %5 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1436, metadata !DIExpression()), !dbg !1791
  %12 = load ptr, ptr @stdout, align 8, !dbg !1794, !tbaa !955
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %12, i64 0, i32 5, !dbg !1794
  %14 = load ptr, ptr %13, align 8, !dbg !1794, !tbaa !1445
  %15 = getelementptr inbounds %struct._IO_FILE, ptr %12, i64 0, i32 6, !dbg !1794
  %16 = load ptr, ptr %15, align 8, !dbg !1794, !tbaa !1448
  %17 = icmp ult ptr %14, %16, !dbg !1794
  br i1 %17, label %21, label %18, !dbg !1794, !prof !1449

18:                                               ; preds = %10
  %19 = tail call i32 @__overflow(ptr noundef nonnull %12, i32 noundef 9) #38, !dbg !1794
  %20 = load i32, ptr @out_column, align 4, !dbg !1795, !tbaa !1028
  br label %23, !dbg !1794

21:                                               ; preds = %10
  %22 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !1794
  store ptr %22, ptr %13, align 8, !dbg !1794, !tbaa !1445
  store i8 9, ptr %14, align 1, !dbg !1794, !tbaa !1037
  br label %23, !dbg !1794

23:                                               ; preds = %18, %21
  %24 = phi i32 [ %20, %18 ], [ %11, %21 ], !dbg !1795
  %25 = sdiv i32 %24, 8, !dbg !1796
  %26 = shl nsw i32 %25, 3, !dbg !1797
  %27 = add i32 %26, 8, !dbg !1797
  store i32 %27, ptr @out_column, align 4, !dbg !1798, !tbaa !1028
  %28 = icmp slt i32 %27, %7, !dbg !1799
  br i1 %28, label %10, label %29, !dbg !1800

29:                                               ; preds = %23, %5, %1
  %30 = phi i32 [ %2, %5 ], [ %2, %1 ], [ %27, %23 ], !dbg !1801
  %31 = icmp slt i32 %30, %3, !dbg !1802
  br i1 %31, label %32, label %49, !dbg !1803

32:                                               ; preds = %29, %45
  %33 = phi i32 [ %47, %45 ], [ %30, %29 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1436, metadata !DIExpression()), !dbg !1804
  %34 = load ptr, ptr @stdout, align 8, !dbg !1807, !tbaa !955
  %35 = getelementptr inbounds %struct._IO_FILE, ptr %34, i64 0, i32 5, !dbg !1807
  %36 = load ptr, ptr %35, align 8, !dbg !1807, !tbaa !1445
  %37 = getelementptr inbounds %struct._IO_FILE, ptr %34, i64 0, i32 6, !dbg !1807
  %38 = load ptr, ptr %37, align 8, !dbg !1807, !tbaa !1448
  %39 = icmp ult ptr %36, %38, !dbg !1807
  br i1 %39, label %43, label %40, !dbg !1807, !prof !1449

40:                                               ; preds = %32
  %41 = tail call i32 @__overflow(ptr noundef nonnull %34, i32 noundef 32) #38, !dbg !1807
  %42 = load i32, ptr @out_column, align 4, !dbg !1808, !tbaa !1028
  br label %45, !dbg !1807

43:                                               ; preds = %32
  %44 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !1807
  store ptr %44, ptr %35, align 8, !dbg !1807, !tbaa !1445
  store i8 32, ptr %36, align 1, !dbg !1807, !tbaa !1037
  br label %45, !dbg !1807

45:                                               ; preds = %40, %43
  %46 = phi i32 [ %42, %40 ], [ %33, %43 ], !dbg !1808
  %47 = add nsw i32 %46, 1, !dbg !1808
  store i32 %47, ptr @out_column, align 4, !dbg !1808, !tbaa !1028
  %48 = icmp slt i32 %47, %3, !dbg !1802
  br i1 %48, label %32, label %49, !dbg !1803, !llvm.loop !1809

49:                                               ; preds = %45, %29
  ret void, !dbg !1811
}

declare !dbg !1812 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1813 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_line(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !1814 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i32 %1, metadata !1817, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([5000 x i8], ptr @parabuf, i64 1, i64 0), metadata !1819, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 998), metadata !1820, metadata !DIExpression()), !dbg !1821
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr @word_limit, align 8, !dbg !1822, !tbaa !955
  br label %6, !dbg !1824

6:                                                ; preds = %190, %2
  %7 = phi ptr [ %5, %2 ], [ %192, %190 ], !dbg !1822
  %8 = phi i32 [ %1, %2 ], [ %116, %190 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !1817, metadata !DIExpression()), !dbg !1821
  %9 = load ptr, ptr @wptr, align 8, !dbg !1825, !tbaa !955
  store ptr %9, ptr %7, align 8, !dbg !1826, !tbaa !1827
  br label %12, !dbg !1828

10:                                               ; preds = %56
  %11 = load ptr, ptr @wptr, align 8, !dbg !1829, !tbaa !955
  br label %12, !dbg !1829

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %9, %6 ], !dbg !1829
  %14 = phi i32 [ %57, %10 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !1817, metadata !DIExpression()), !dbg !1821
  %15 = icmp eq ptr %13, getelementptr inbounds ([5000 x i8], ptr @parabuf, i64 1, i64 0), !dbg !1832
  br i1 %15, label %16, label %42, !dbg !1833

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i1 true, metadata !1507, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1834
  %17 = load i1, ptr @split, align 1, !dbg !1837
  br i1 %17, label %18, label %20, !dbg !1838

18:                                               ; preds = %16
  %19 = load i32, ptr @first_indent, align 4, !dbg !1839, !tbaa !1028
  br label %38, !dbg !1840

20:                                               ; preds = %16
  %21 = load i1, ptr @crown, align 1, !dbg !1841
  br i1 %21, label %22, label %24, !dbg !1842

22:                                               ; preds = %20
  %23 = load i32, ptr @in_column, align 4, !dbg !1843
  br label %38, !dbg !1844

24:                                               ; preds = %20
  %25 = load i1, ptr @tagged, align 1, !dbg !1845
  br i1 %25, label %26, label %36, !dbg !1846

26:                                               ; preds = %24
  %27 = load i32, ptr @in_column, align 4, !dbg !1847, !tbaa !1028
  %28 = load i32, ptr @first_indent, align 4, !dbg !1848, !tbaa !1028
  %29 = icmp eq i32 %27, %28, !dbg !1849
  br i1 %29, label %30, label %38, !dbg !1850

30:                                               ; preds = %26
  %31 = load i32, ptr @other_indent, align 4, !dbg !1851, !tbaa !1028
  %32 = icmp eq i32 %31, %27, !dbg !1852
  br i1 %32, label %33, label %40, !dbg !1853

33:                                               ; preds = %30
  %34 = icmp eq i32 %27, 0, !dbg !1854
  %35 = select i1 %34, i32 3, i32 0, !dbg !1855
  br label %38, !dbg !1856

36:                                               ; preds = %24
  %37 = load i32, ptr @first_indent, align 4, !dbg !1857, !tbaa !1028
  br label %38

38:                                               ; preds = %36, %33, %26, %22, %18
  %39 = phi i32 [ %23, %22 ], [ %35, %33 ], [ %37, %36 ], [ %19, %18 ], [ %27, %26 ]
  store i32 %39, ptr @other_indent, align 4, !dbg !1858, !tbaa !1028
  br label %40, !dbg !1859

40:                                               ; preds = %30, %38
  tail call fastcc void @flush_paragraph(), !dbg !1860
  %41 = load ptr, ptr @wptr, align 8, !dbg !1861, !tbaa !955
  br label %42, !dbg !1862

42:                                               ; preds = %40, %12
  %43 = phi ptr [ %41, %40 ], [ %13, %12 ], !dbg !1861
  %44 = trunc i32 %14 to i8, !dbg !1863
  %45 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !1861
  store ptr %45, ptr @wptr, align 8, !dbg !1861, !tbaa !955
  store i8 %44, ptr %43, align 1, !dbg !1864, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %0, metadata !1470, metadata !DIExpression()), !dbg !1865
  %46 = load ptr, ptr %3, align 8, !dbg !1867, !tbaa !1478
  %47 = load ptr, ptr %4, align 8, !dbg !1867, !tbaa !1479
  %48 = icmp ult ptr %46, %47, !dbg !1867
  br i1 %48, label %49, label %53, !dbg !1867, !prof !1449

49:                                               ; preds = %42
  %50 = getelementptr inbounds i8, ptr %46, i64 1, !dbg !1867
  store ptr %50, ptr %3, align 8, !dbg !1867, !tbaa !1478
  %51 = load i8, ptr %46, align 1, !dbg !1867, !tbaa !1037
  %52 = zext i8 %51 to i32, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %52, metadata !1817, metadata !DIExpression()), !dbg !1821
  br label %56, !dbg !1868

53:                                               ; preds = %42
  %54 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %54, metadata !1817, metadata !DIExpression()), !dbg !1821
  %55 = icmp eq i32 %54, -1, !dbg !1869
  br i1 %55, label %58, label %56, !dbg !1868

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %52, %49 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i32 %54, metadata !1870, metadata !DIExpression()), !dbg !1873
  switch i32 %57, label %10 [
    i32 32, label %58
    i32 9, label %58
    i32 10, label %58
    i32 11, label %58
    i32 12, label %58
    i32 13, label %58
  ], !dbg !1875

58:                                               ; preds = %56, %56, %56, %56, %56, %56, %53
  %59 = phi i32 [ -1, %53 ], [ %57, %56 ], [ %57, %56 ], [ %57, %56 ], [ %57, %56 ], [ %57, %56 ], [ %57, %56 ]
  %60 = load ptr, ptr @wptr, align 8, !dbg !1876, !tbaa !955
  %61 = load ptr, ptr @word_limit, align 8, !dbg !1877, !tbaa !955
  %62 = load ptr, ptr %61, align 8, !dbg !1878, !tbaa !1827
  %63 = ptrtoint ptr %60 to i64, !dbg !1879
  %64 = ptrtoint ptr %62 to i64, !dbg !1879
  %65 = sub i64 %63, %64, !dbg !1879
  %66 = trunc i64 %65 to i32, !dbg !1876
  %67 = getelementptr inbounds %struct.Word, ptr %61, i64 0, i32 1, !dbg !1880
  store i32 %66, ptr %67, align 8, !dbg !1881, !tbaa !1882
  %68 = load i32, ptr @in_column, align 4, !dbg !1883, !tbaa !1028
  %69 = add nsw i32 %68, %66, !dbg !1883
  store i32 %69, ptr @in_column, align 4, !dbg !1883, !tbaa !1028
  call void @llvm.dbg.value(metadata ptr %61, metadata !1884, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata ptr %62, metadata !1887, metadata !DIExpression()), !dbg !1890
  %70 = shl i64 %65, 32, !dbg !1892
  %71 = add i64 %70, -4294967296, !dbg !1892
  %72 = ashr exact i64 %71, 32, !dbg !1892
  %73 = getelementptr inbounds i8, ptr %62, i64 %72, !dbg !1892
  call void @llvm.dbg.value(metadata ptr %73, metadata !1888, metadata !DIExpression()), !dbg !1890
  %74 = load i8, ptr %73, align 1, !dbg !1893, !tbaa !1037
  call void @llvm.dbg.value(metadata i8 %74, metadata !1889, metadata !DIExpression()), !dbg !1890
  %75 = load i8, ptr %62, align 1, !dbg !1894, !tbaa !1037
  %76 = zext i8 %75 to i32, !dbg !1894
  %77 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.75, i32 %76, i64 6), !dbg !1894
  %78 = icmp ne ptr %77, null, !dbg !1894
  %79 = getelementptr inbounds %struct.Word, ptr %61, i64 0, i32 3, !dbg !1895
  %80 = zext i1 %78 to i8, !dbg !1896
  %81 = load i8, ptr %79, align 8, !dbg !1896
  %82 = and i8 %81, -2, !dbg !1896
  %83 = or i8 %82, %80, !dbg !1896
  store i8 %83, ptr %79, align 8, !dbg !1896
  %84 = tail call ptr @__ctype_b_loc() #41, !dbg !1897
  %85 = load ptr, ptr %84, align 8, !dbg !1897, !tbaa !955
  %86 = zext i8 %74 to i64
  %87 = getelementptr inbounds i16, ptr %85, i64 %86, !dbg !1897
  %88 = load i16, ptr %87, align 2, !dbg !1897, !tbaa !1069
  %89 = trunc i16 %88 to i8, !dbg !1898
  %90 = and i8 %89, 4, !dbg !1898
  %91 = and i8 %83, -5, !dbg !1898
  %92 = or i8 %90, %91, !dbg !1898
  store i8 %92, ptr %79, align 8, !dbg !1898
  %93 = icmp sgt i32 %66, 1, !dbg !1899
  br i1 %93, label %94, label %103, !dbg !1900

94:                                               ; preds = %58, %100
  %95 = phi ptr [ %101, %100 ], [ %73, %58 ]
  call void @llvm.dbg.value(metadata ptr %95, metadata !1888, metadata !DIExpression()), !dbg !1890
  %96 = load i8, ptr %95, align 1, !dbg !1901, !tbaa !1037
  %97 = zext i8 %96 to i32, !dbg !1901
  %98 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.76, i32 %97, i64 5), !dbg !1901
  %99 = icmp eq ptr %98, null, !dbg !1901
  br i1 %99, label %103, label %100, !dbg !1902

100:                                              ; preds = %94
  %101 = getelementptr inbounds i8, ptr %95, i64 -1, !dbg !1903
  call void @llvm.dbg.value(metadata ptr %101, metadata !1888, metadata !DIExpression()), !dbg !1890
  %102 = icmp ult ptr %62, %101, !dbg !1899
  br i1 %102, label %94, label %103, !dbg !1900, !llvm.loop !1904

103:                                              ; preds = %94, %100, %58
  %104 = phi ptr [ %73, %58 ], [ %95, %94 ], [ %101, %100 ], !dbg !1890
  %105 = load i8, ptr %104, align 1, !dbg !1905, !tbaa !1037
  %106 = zext i8 %105 to i64, !dbg !1905
  %107 = icmp ult i8 %105, 64, !dbg !1905
  %108 = shl nuw i64 1, %106, !dbg !1905
  %109 = and i64 %108, -9223301659520663551, !dbg !1905
  %110 = icmp ne i64 %109, 0, !dbg !1905
  %111 = select i1 %107, i1 %110, i1 false, !dbg !1905
  %112 = select i1 %111, i8 2, i8 0, !dbg !1906
  %113 = and i8 %92, -3, !dbg !1906
  %114 = or i8 %112, %113, !dbg !1906
  store i8 %114, ptr %79, align 8, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %69, metadata !1818, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata ptr %0, metadata !1710, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i32 %54, metadata !1711, metadata !DIExpression()), !dbg !1907
  br label %115, !dbg !1909

115:                                              ; preds = %136, %103
  %116 = phi i32 [ %59, %103 ], [ %137, %136 ]
  call void @llvm.dbg.value(metadata i32 %116, metadata !1711, metadata !DIExpression()), !dbg !1907
  switch i32 %116, label %138 [
    i32 32, label %117
    i32 9, label %120
  ], !dbg !1910

117:                                              ; preds = %115
  %118 = load i32, ptr @in_column, align 4, !dbg !1911, !tbaa !1028
  %119 = add nsw i32 %118, 1, !dbg !1911
  br label %125, !dbg !1912

120:                                              ; preds = %115
  store i1 true, ptr @tabs, align 1, !dbg !1913
  %121 = load i32, ptr @in_column, align 4, !dbg !1914, !tbaa !1028
  %122 = sdiv i32 %121, 8, !dbg !1915
  %123 = shl nsw i32 %122, 3, !dbg !1916
  %124 = add i32 %123, 8, !dbg !1916
  br label %125

125:                                              ; preds = %120, %117
  %126 = phi i32 [ %124, %120 ], [ %119, %117 ], !dbg !1917
  store i32 %126, ptr @in_column, align 4, !dbg !1917, !tbaa !1028
  call void @llvm.dbg.value(metadata ptr %0, metadata !1470, metadata !DIExpression()), !dbg !1918
  %127 = load ptr, ptr %3, align 8, !dbg !1920, !tbaa !1478
  %128 = load ptr, ptr %4, align 8, !dbg !1920, !tbaa !1479
  %129 = icmp ult ptr %127, %128, !dbg !1920
  br i1 %129, label %132, label %130, !dbg !1920, !prof !1449

130:                                              ; preds = %125
  %131 = tail call i32 @__uflow(ptr noundef nonnull %0) #38, !dbg !1920
  br label %136, !dbg !1920

132:                                              ; preds = %125
  %133 = getelementptr inbounds i8, ptr %127, i64 1, !dbg !1920
  store ptr %133, ptr %3, align 8, !dbg !1920, !tbaa !1478
  %134 = load i8, ptr %127, align 1, !dbg !1920, !tbaa !1037
  %135 = zext i8 %134 to i32, !dbg !1920
  br label %136, !dbg !1920

136:                                              ; preds = %132, %130
  %137 = phi i32 [ %131, %130 ], [ %135, %132 ]
  br label %115, !dbg !1907, !llvm.loop !1921

138:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %116, metadata !1817, metadata !DIExpression()), !dbg !1821
  %139 = load i32, ptr @in_column, align 4, !dbg !1923, !tbaa !1028
  %140 = sub nsw i32 %139, %69, !dbg !1924
  %141 = freeze i32 %140, !dbg !1925
  %142 = load ptr, ptr @word_limit, align 8, !dbg !1926, !tbaa !955
  %143 = getelementptr inbounds %struct.Word, ptr %142, i64 0, i32 2, !dbg !1927
  store i32 %141, ptr %143, align 4, !dbg !1928, !tbaa !1929
  %144 = icmp eq i32 %116, -1, !dbg !1930
  %145 = getelementptr inbounds %struct.Word, ptr %142, i64 0, i32 3
  %146 = load i8, ptr %145, align 8, !dbg !1931
  br i1 %144, label %152, label %147, !dbg !1932

147:                                              ; preds = %138
  %148 = and i8 %146, 2, !dbg !1933
  %149 = icmp eq i8 %148, 0, !dbg !1933
  br i1 %149, label %158, label %150, !dbg !1934

150:                                              ; preds = %147
  %151 = icmp eq i32 %116, 10, !dbg !1935
  br i1 %151, label %152, label %154, !dbg !1936

152:                                              ; preds = %138, %150
  %153 = getelementptr inbounds %struct.Word, ptr %142, i64 0, i32 3, !dbg !1937
  br label %156, !dbg !1938

154:                                              ; preds = %150
  %155 = icmp sgt i32 %141, 1, !dbg !1925
  br i1 %155, label %156, label %158, !dbg !1938

156:                                              ; preds = %152, %154
  %157 = phi ptr [ %153, %152 ], [ %145, %154 ]
  br label %158, !dbg !1938

158:                                              ; preds = %147, %154, %156
  %159 = phi ptr [ %157, %156 ], [ %145, %154 ], [ %145, %147 ]
  %160 = phi i32 [ 2, %156 ], [ 1, %154 ], [ 1, %147 ]
  %161 = phi i8 [ 8, %156 ], [ 0, %154 ], [ 0, %147 ]
  %162 = and i8 %146, -9, !dbg !1938
  %163 = or i8 %161, %162, !dbg !1938
  store i8 %163, ptr %159, align 8, !dbg !1938
  switch i32 %116, label %164 [
    i32 -1, label %166
    i32 10, label %166
  ], !dbg !1939

164:                                              ; preds = %158
  %165 = load i1, ptr @uniform, align 1, !dbg !1941
  br i1 %165, label %166, label %167, !dbg !1942

166:                                              ; preds = %158, %158, %164
  store i32 %160, ptr %143, align 4, !dbg !1943, !tbaa !1929
  br label %167, !dbg !1944

167:                                              ; preds = %166, %164
  %168 = icmp eq ptr %142, getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 998), !dbg !1945
  br i1 %168, label %169, label %190, !dbg !1947

169:                                              ; preds = %167
  call void @llvm.dbg.value(metadata i1 true, metadata !1507, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1948
  %170 = load i1, ptr @split, align 1, !dbg !1951
  br i1 %170, label %171, label %173, !dbg !1952

171:                                              ; preds = %169
  %172 = load i32, ptr @first_indent, align 4, !dbg !1953, !tbaa !1028
  br label %186, !dbg !1954

173:                                              ; preds = %169
  %174 = load i1, ptr @crown, align 1, !dbg !1955
  br i1 %174, label %186, label %175, !dbg !1956

175:                                              ; preds = %173
  %176 = load i1, ptr @tagged, align 1, !dbg !1957
  %177 = load i32, ptr @first_indent, align 4, !dbg !1958, !tbaa !1028
  br i1 %176, label %178, label %186, !dbg !1959

178:                                              ; preds = %175
  %179 = icmp eq i32 %139, %177, !dbg !1960
  br i1 %179, label %180, label %186, !dbg !1961

180:                                              ; preds = %178
  %181 = load i32, ptr @other_indent, align 4, !dbg !1962, !tbaa !1028
  %182 = icmp eq i32 %181, %139, !dbg !1963
  br i1 %182, label %183, label %188, !dbg !1964

183:                                              ; preds = %180
  %184 = icmp eq i32 %139, 0, !dbg !1965
  %185 = select i1 %184, i32 3, i32 0, !dbg !1966
  br label %186, !dbg !1967

186:                                              ; preds = %175, %173, %183, %178, %171
  %187 = phi i32 [ %185, %183 ], [ %172, %171 ], [ %139, %178 ], [ %139, %173 ], [ %177, %175 ]
  store i32 %187, ptr @other_indent, align 4, !dbg !1968, !tbaa !1028
  br label %188, !dbg !1969

188:                                              ; preds = %180, %186
  tail call fastcc void @flush_paragraph(), !dbg !1970
  %189 = load ptr, ptr @word_limit, align 8, !dbg !1971, !tbaa !955
  br label %190, !dbg !1972

190:                                              ; preds = %188, %167
  %191 = phi ptr [ %189, %188 ], [ %142, %167 ], !dbg !1971
  %192 = getelementptr inbounds %struct.Word, ptr %191, i64 1, !dbg !1971
  store ptr %192, ptr @word_limit, align 8, !dbg !1971, !tbaa !955
  switch i32 %116, label %6 [
    i32 -1, label %193
    i32 10, label %193
  ], !dbg !1973

193:                                              ; preds = %190, %190
  %194 = tail call fastcc i32 @get_prefix(ptr noundef %0), !dbg !1974
  ret i32 %194, !dbg !1975
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fmt_paragraph() unnamed_addr #11 !dbg !1976 {
  %1 = load ptr, ptr @word_limit, align 8, !dbg !1985, !tbaa !955
  %2 = getelementptr inbounds %struct.Word, ptr %1, i64 0, i32 5, !dbg !1986
  store i64 0, ptr %2, align 8, !dbg !1987, !tbaa !1988
  %3 = getelementptr inbounds %struct.Word, ptr %1, i64 0, i32 1, !dbg !1989
  %4 = load i32, ptr %3, align 8, !dbg !1989, !tbaa !1882
  call void @llvm.dbg.value(metadata i32 %4, metadata !1982, metadata !DIExpression()), !dbg !1990
  %5 = load i32, ptr @max_width, align 4, !dbg !1991, !tbaa !1028
  store i32 %5, ptr %3, align 8, !dbg !1992, !tbaa !1882
  call void @llvm.dbg.value(metadata ptr %1, metadata !1983, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1993
  %6 = getelementptr inbounds %struct.Word, ptr %1, i64 -1, !dbg !1994
  call void @llvm.dbg.value(metadata ptr %6, metadata !1983, metadata !DIExpression()), !dbg !1993
  %7 = icmp ult ptr %6, @unused_word_type, !dbg !1995
  br i1 %7, label %14, label %8, !dbg !1997

8:                                                ; preds = %0
  %9 = load i32, ptr @first_indent, align 4
  %10 = load i32, ptr @other_indent, align 4
  %11 = load i32, ptr @last_line_length, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = load i32, ptr @goal_width, align 4
  br label %15, !dbg !1997

14:                                               ; preds = %119, %0
  store i32 %4, ptr %3, align 8, !dbg !1998, !tbaa !1882
  ret void, !dbg !1999

15:                                               ; preds = %8, %119
  %16 = phi ptr [ %6, %8 ], [ %123, %119 ]
  %17 = phi ptr [ %1, %8 ], [ %16, %119 ]
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1981, metadata !DIExpression()), !dbg !1990
  %18 = icmp eq ptr %16, @unused_word_type, !dbg !2000
  %19 = select i1 %18, i32 %9, i32 %10, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %19, metadata !1979, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata ptr %16, metadata !1978, metadata !DIExpression()), !dbg !1990
  %20 = getelementptr %struct.Word, ptr %17, i64 -1, i32 1, !dbg !2003
  %21 = load i32, ptr %20, align 8, !dbg !2003, !tbaa !1882
  %22 = add nsw i32 %19, %21, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %22, metadata !1979, metadata !DIExpression()), !dbg !1990
  %23 = select i1 %18, i1 %12, i1 false
  %24 = getelementptr %struct.Word, ptr %17, i64 -1, i32 6
  %25 = getelementptr %struct.Word, ptr %17, i64 -1, i32 4
  br label %26, !dbg !2005

26:                                               ; preds = %67, %15
  %27 = phi i32 [ %22, %15 ], [ %73, %67 ], !dbg !2006
  %28 = phi i64 [ 9223372036854775807, %15 ], [ %66, %67 ], !dbg !2006
  %29 = phi ptr [ %16, %15 ], [ %30, %67 ], !dbg !2006
  call void @llvm.dbg.value(metadata ptr %29, metadata !1978, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %28, metadata !1981, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i32 %27, metadata !1979, metadata !DIExpression()), !dbg !1990
  %30 = getelementptr inbounds %struct.Word, ptr %29, i64 1, !dbg !2007
  call void @llvm.dbg.value(metadata ptr %30, metadata !1978, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata ptr %30, metadata !2009, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32 %27, metadata !2014, metadata !DIExpression()), !dbg !2017
  %31 = icmp eq ptr %1, %30, !dbg !2019
  br i1 %31, label %49, label %32, !dbg !2021

32:                                               ; preds = %26
  %33 = sub nsw i32 %13, %27, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %33, metadata !2015, metadata !DIExpression()), !dbg !2017
  %34 = mul nsw i32 %33, 10, !dbg !2023
  %35 = sext i32 %34 to i64, !dbg !2023
  %36 = mul nsw i64 %35, %35, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %36, metadata !2016, metadata !DIExpression()), !dbg !2017
  %37 = getelementptr inbounds %struct.Word, ptr %29, i64 1, i32 6, !dbg !2024
  %38 = load ptr, ptr %37, align 8, !dbg !2024, !tbaa !1643
  %39 = icmp eq ptr %38, %1, !dbg !2026
  br i1 %39, label %49, label %40, !dbg !2027

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.Word, ptr %29, i64 1, i32 4, !dbg !2028
  %42 = load i32, ptr %41, align 4, !dbg !2028, !tbaa !2030
  %43 = sub nsw i32 %27, %42, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %43, metadata !2015, metadata !DIExpression()), !dbg !2017
  %44 = mul nsw i32 %43, 10, !dbg !2032
  %45 = sext i32 %44 to i64, !dbg !2032
  %46 = mul nsw i64 %45, %45, !dbg !2032
  %47 = lshr exact i64 %46, 1, !dbg !2032
  %48 = add nuw nsw i64 %47, %36, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %48, metadata !2016, metadata !DIExpression()), !dbg !2017
  br label %49, !dbg !2034

49:                                               ; preds = %26, %32, %40
  %50 = phi i64 [ 0, %26 ], [ %48, %40 ], [ %36, %32 ], !dbg !2017
  %51 = getelementptr inbounds %struct.Word, ptr %29, i64 1, i32 5, !dbg !2035
  %52 = load i64, ptr %51, align 8, !dbg !2035, !tbaa !1988
  %53 = add nsw i64 %52, %50, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %53, metadata !1980, metadata !DIExpression()), !dbg !1990
  br i1 %23, label %54, label %61, !dbg !2037

54:                                               ; preds = %49
  %55 = sub nsw i32 %27, %11, !dbg !2039
  %56 = mul nsw i32 %55, 10, !dbg !2039
  %57 = sext i32 %56 to i64, !dbg !2039
  %58 = mul nsw i64 %57, %57, !dbg !2039
  %59 = lshr exact i64 %58, 1, !dbg !2039
  %60 = add nsw i64 %59, %53, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %60, metadata !1980, metadata !DIExpression()), !dbg !1990
  br label %61, !dbg !2041

61:                                               ; preds = %54, %49
  %62 = phi i64 [ %60, %54 ], [ %53, %49 ], !dbg !2042
  call void @llvm.dbg.value(metadata i64 %62, metadata !1980, metadata !DIExpression()), !dbg !1990
  %63 = icmp slt i64 %62, %28, !dbg !2043
  br i1 %63, label %64, label %65, !dbg !2045

64:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 %62, metadata !1981, metadata !DIExpression()), !dbg !1990
  store ptr %30, ptr %24, align 8, !dbg !2046, !tbaa !1643
  store i32 %27, ptr %25, align 4, !dbg !2048, !tbaa !2030
  br label %65, !dbg !2049

65:                                               ; preds = %64, %61
  %66 = phi i64 [ %62, %64 ], [ %28, %61 ], !dbg !2006
  call void @llvm.dbg.value(metadata i64 %66, metadata !1981, metadata !DIExpression()), !dbg !1990
  br i1 %31, label %75, label %67, !dbg !2050

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.Word, ptr %29, i64 0, i32 2, !dbg !2051
  %69 = load i32, ptr %68, align 4, !dbg !2051, !tbaa !1929
  %70 = getelementptr inbounds %struct.Word, ptr %29, i64 1, i32 1, !dbg !2052
  %71 = load i32, ptr %70, align 8, !dbg !2052, !tbaa !1882
  %72 = add i32 %69, %27, !dbg !2053
  %73 = add i32 %72, %71, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %73, metadata !1979, metadata !DIExpression()), !dbg !1990
  %74 = icmp sgt i32 %73, %5, !dbg !2055
  br i1 %74, label %75, label %26, !dbg !2056, !llvm.loop !2057

75:                                               ; preds = %65, %67
  call void @llvm.dbg.value(metadata ptr %16, metadata !2059, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 4900, metadata !2064, metadata !DIExpression()), !dbg !2065
  %76 = icmp ugt ptr %16, @unused_word_type, !dbg !2067
  br i1 %76, label %77, label %103, !dbg !2069

77:                                               ; preds = %75
  %78 = getelementptr %struct.Word, ptr %17, i64 -2, i32 3, !dbg !2070
  %79 = load i8, ptr %78, align 8, !dbg !2070
  %80 = and i8 %79, 2, !dbg !2073
  %81 = icmp eq i8 %80, 0, !dbg !2073
  br i1 %81, label %86, label %82, !dbg !2074

82:                                               ; preds = %77
  %83 = and i8 %79, 8, !dbg !2075
  %84 = icmp eq i8 %83, 0, !dbg !2075
  %85 = select i1 %84, i64 364900, i64 2400
  br label %103

86:                                               ; preds = %77
  %87 = and i8 %79, 4, !dbg !2078
  %88 = icmp eq i8 %87, 0, !dbg !2078
  br i1 %88, label %89, label %103, !dbg !2080

89:                                               ; preds = %86
  %90 = icmp ugt ptr %16, getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 1), !dbg !2081
  br i1 %90, label %91, label %103, !dbg !2083

91:                                               ; preds = %89
  %92 = getelementptr %struct.Word, ptr %17, i64 -3, i32 3, !dbg !2084
  %93 = load i8, ptr %92, align 8, !dbg !2084
  %94 = and i8 %93, 8, !dbg !2085
  %95 = icmp eq i8 %94, 0, !dbg !2085
  br i1 %95, label %103, label %96, !dbg !2086

96:                                               ; preds = %91
  %97 = getelementptr %struct.Word, ptr %17, i64 -2, i32 1, !dbg !2087
  %98 = load i32, ptr %97, align 8, !dbg !2087, !tbaa !1882
  %99 = add nsw i32 %98, 2, !dbg !2087
  %100 = sdiv i32 40000, %99, !dbg !2087
  %101 = add nsw i32 %100, 4900, !dbg !2088
  %102 = sext i32 %101 to i64, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %102, metadata !2064, metadata !DIExpression()), !dbg !2065
  br label %103, !dbg !2089

103:                                              ; preds = %96, %91, %89, %86, %82, %75
  %104 = phi i64 [ %102, %96 ], [ 4900, %91 ], [ 4900, %89 ], [ 4900, %75 ], [ %85, %82 ], [ 3300, %86 ], !dbg !2065
  call void @llvm.dbg.value(metadata i64 %104, metadata !2064, metadata !DIExpression()), !dbg !2065
  %105 = getelementptr %struct.Word, ptr %17, i64 -1, i32 3, !dbg !2090
  %106 = load i8, ptr %105, align 8, !dbg !2090
  %107 = and i8 %106, 1, !dbg !2090
  %108 = icmp eq i8 %107, 0, !dbg !2092
  br i1 %108, label %111, label %109, !dbg !2093

109:                                              ; preds = %103
  %110 = add nsw i64 %104, -1600, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %110, metadata !2064, metadata !DIExpression()), !dbg !2065
  br label %119, !dbg !2095

111:                                              ; preds = %103
  %112 = and i8 %106, 8, !dbg !2096
  %113 = icmp eq i8 %112, 0, !dbg !2096
  br i1 %113, label %119, label %114, !dbg !2098

114:                                              ; preds = %111
  %115 = add nsw i32 %21, 2, !dbg !2099
  %116 = sdiv i32 22500, %115, !dbg !2099
  %117 = sext i32 %116 to i64, !dbg !2099
  %118 = add nsw i64 %104, %117, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %118, metadata !2064, metadata !DIExpression()), !dbg !2065
  br label %119, !dbg !2101

119:                                              ; preds = %109, %111, %114
  %120 = phi i64 [ %110, %109 ], [ %118, %114 ], [ %104, %111 ], !dbg !2065
  call void @llvm.dbg.value(metadata i64 %120, metadata !2064, metadata !DIExpression()), !dbg !2065
  %121 = add nsw i64 %120, %66, !dbg !2102
  %122 = getelementptr %struct.Word, ptr %17, i64 -1, i32 5, !dbg !2103
  store i64 %121, ptr %122, align 8, !dbg !2104, !tbaa !1988
  call void @llvm.dbg.value(metadata ptr %16, metadata !1983, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1993
  %123 = getelementptr inbounds %struct.Word, ptr %16, i64 -1, !dbg !1994
  call void @llvm.dbg.value(metadata ptr %123, metadata !1983, metadata !DIExpression()), !dbg !1993
  %124 = icmp ult ptr %123, @unused_word_type, !dbg !1995
  br i1 %124, label %14, label %15, !dbg !1997, !llvm.loop !2105
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_line(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 !dbg !2107 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2111, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %1, metadata !2112, metadata !DIExpression()), !dbg !2114
  store i32 0, ptr @out_column, align 4, !dbg !2115, !tbaa !1028
  %3 = load i32, ptr @prefix_indent, align 4, !dbg !2116, !tbaa !1028
  tail call fastcc void @put_space(i32 noundef %3), !dbg !2117
  %4 = load ptr, ptr @prefix, align 8, !dbg !2118, !tbaa !955
  %5 = load ptr, ptr @stdout, align 8, !dbg !2118, !tbaa !955
  %6 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef %5), !dbg !2118
  %7 = load i32, ptr @prefix_length, align 4, !dbg !2119, !tbaa !1028
  %8 = load i32, ptr @out_column, align 4, !dbg !2120, !tbaa !1028
  %9 = add nsw i32 %8, %7, !dbg !2120
  store i32 %9, ptr @out_column, align 4, !dbg !2120, !tbaa !1028
  %10 = sub nsw i32 %1, %9, !dbg !2121
  tail call fastcc void @put_space(i32 noundef %10), !dbg !2122
  %11 = getelementptr inbounds %struct.Word, ptr %0, i64 0, i32 6, !dbg !2123
  %12 = load ptr, ptr %11, align 8, !dbg !2123, !tbaa !1643
  %13 = getelementptr inbounds %struct.Word, ptr %12, i64 -1, !dbg !2124
  call void @llvm.dbg.value(metadata ptr %13, metadata !2113, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2111, metadata !DIExpression()), !dbg !2114
  %14 = icmp eq ptr %13, %0, !dbg !2125
  br i1 %14, label %51, label %15, !dbg !2128

15:                                               ; preds = %2, %43
  %16 = phi ptr [ %49, %43 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !2111, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %16, metadata !2129, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata ptr poison, metadata !2132, metadata !DIExpression()), !dbg !2135
  %17 = getelementptr inbounds %struct.Word, ptr %16, i64 0, i32 1, !dbg !2138
  %18 = load i32, ptr %17, align 8, !dbg !2138, !tbaa !1882
  call void @llvm.dbg.value(metadata i32 %18, metadata !2133, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr poison, metadata !2132, metadata !DIExpression()), !dbg !2135
  %19 = icmp eq i32 %18, 0, !dbg !2140
  br i1 %19, label %43, label %20, !dbg !2142

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !dbg !2143, !tbaa !1827
  call void @llvm.dbg.value(metadata ptr %21, metadata !2132, metadata !DIExpression()), !dbg !2135
  br label %24, !dbg !2142

22:                                               ; preds = %40
  %23 = load i32, ptr %17, align 8, !dbg !2144, !tbaa !1882
  br label %43, !dbg !2144

24:                                               ; preds = %40, %20
  %25 = phi i32 [ %41, %40 ], [ %18, %20 ]
  %26 = phi ptr [ %27, %40 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !2133, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %26, metadata !2132, metadata !DIExpression()), !dbg !2135
  %27 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !2145
  call void @llvm.dbg.value(metadata ptr %27, metadata !2132, metadata !DIExpression()), !dbg !2135
  %28 = load i8, ptr %26, align 1, !dbg !2145, !tbaa !1037
  call void @llvm.dbg.value(metadata i8 %28, metadata !1436, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2146
  %29 = load ptr, ptr @stdout, align 8, !dbg !2148, !tbaa !955
  %30 = getelementptr inbounds %struct._IO_FILE, ptr %29, i64 0, i32 5, !dbg !2148
  %31 = load ptr, ptr %30, align 8, !dbg !2148, !tbaa !1445
  %32 = getelementptr inbounds %struct._IO_FILE, ptr %29, i64 0, i32 6, !dbg !2148
  %33 = load ptr, ptr %32, align 8, !dbg !2148, !tbaa !1448
  %34 = icmp ult ptr %31, %33, !dbg !2148
  br i1 %34, label %38, label %35, !dbg !2148, !prof !1449

35:                                               ; preds = %24
  %36 = zext i8 %28 to i32, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %36, metadata !1436, metadata !DIExpression()), !dbg !2146
  %37 = tail call i32 @__overflow(ptr noundef nonnull %29, i32 noundef %36) #38, !dbg !2148
  br label %40, !dbg !2148

38:                                               ; preds = %24
  %39 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !2148
  store ptr %39, ptr %30, align 8, !dbg !2148, !tbaa !1445
  store i8 %28, ptr %31, align 1, !dbg !2148, !tbaa !1037
  br label %40, !dbg !2148

40:                                               ; preds = %38, %35
  %41 = add nsw i32 %25, -1, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %41, metadata !2133, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %27, metadata !2132, metadata !DIExpression()), !dbg !2135
  %42 = icmp eq i32 %41, 0, !dbg !2140
  br i1 %42, label %22, label %24, !dbg !2142, !llvm.loop !2150

43:                                               ; preds = %15, %22
  %44 = phi i32 [ %23, %22 ], [ 0, %15 ], !dbg !2144
  %45 = load i32, ptr @out_column, align 4, !dbg !2152, !tbaa !1028
  %46 = add nsw i32 %45, %44, !dbg !2152
  store i32 %46, ptr @out_column, align 4, !dbg !2152, !tbaa !1028
  %47 = getelementptr inbounds %struct.Word, ptr %16, i64 0, i32 2, !dbg !2153
  %48 = load i32, ptr %47, align 4, !dbg !2153, !tbaa !1929
  tail call fastcc void @put_space(i32 noundef %48), !dbg !2154
  %49 = getelementptr inbounds %struct.Word, ptr %16, i64 1, !dbg !2155
  call void @llvm.dbg.value(metadata ptr %49, metadata !2111, metadata !DIExpression()), !dbg !2114
  %50 = icmp eq ptr %49, %13, !dbg !2125
  br i1 %50, label %51, label %15, !dbg !2128, !llvm.loop !2156

51:                                               ; preds = %43, %2
  %52 = phi ptr [ %0, %2 ], [ %13, %43 ]
  call void @llvm.dbg.value(metadata ptr %52, metadata !2129, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata ptr poison, metadata !2132, metadata !DIExpression()), !dbg !2158
  %53 = getelementptr inbounds %struct.Word, ptr %52, i64 0, i32 1, !dbg !2160
  %54 = load i32, ptr %53, align 8, !dbg !2160, !tbaa !1882
  call void @llvm.dbg.value(metadata i32 %54, metadata !2133, metadata !DIExpression()), !dbg !2161
  %55 = icmp eq i32 %54, 0, !dbg !2162
  br i1 %55, label %79, label %56, !dbg !2163

56:                                               ; preds = %51
  %57 = load ptr, ptr %52, align 8, !dbg !2164, !tbaa !1827
  call void @llvm.dbg.value(metadata ptr %57, metadata !2132, metadata !DIExpression()), !dbg !2158
  br label %60, !dbg !2163

58:                                               ; preds = %76
  %59 = load i32, ptr %53, align 8, !dbg !2165, !tbaa !1882
  br label %79, !dbg !2165

60:                                               ; preds = %76, %56
  %61 = phi i32 [ %77, %76 ], [ %54, %56 ]
  %62 = phi ptr [ %63, %76 ], [ %57, %56 ]
  call void @llvm.dbg.value(metadata i32 %61, metadata !2133, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr %62, metadata !2132, metadata !DIExpression()), !dbg !2158
  %63 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2166
  call void @llvm.dbg.value(metadata ptr %63, metadata !2132, metadata !DIExpression()), !dbg !2158
  %64 = load i8, ptr %62, align 1, !dbg !2166, !tbaa !1037
  call void @llvm.dbg.value(metadata i8 %64, metadata !1436, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2167
  %65 = load ptr, ptr @stdout, align 8, !dbg !2169, !tbaa !955
  %66 = getelementptr inbounds %struct._IO_FILE, ptr %65, i64 0, i32 5, !dbg !2169
  %67 = load ptr, ptr %66, align 8, !dbg !2169, !tbaa !1445
  %68 = getelementptr inbounds %struct._IO_FILE, ptr %65, i64 0, i32 6, !dbg !2169
  %69 = load ptr, ptr %68, align 8, !dbg !2169, !tbaa !1448
  %70 = icmp ult ptr %67, %69, !dbg !2169
  br i1 %70, label %74, label %71, !dbg !2169, !prof !1449

71:                                               ; preds = %60
  %72 = zext i8 %64 to i32, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %72, metadata !1436, metadata !DIExpression()), !dbg !2167
  %73 = tail call i32 @__overflow(ptr noundef nonnull %65, i32 noundef %72) #38, !dbg !2169
  br label %76, !dbg !2169

74:                                               ; preds = %60
  %75 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !2169
  store ptr %75, ptr %66, align 8, !dbg !2169, !tbaa !1445
  store i8 %64, ptr %67, align 1, !dbg !2169, !tbaa !1037
  br label %76, !dbg !2169

76:                                               ; preds = %74, %71
  %77 = add nsw i32 %61, -1, !dbg !2170
  call void @llvm.dbg.value(metadata i32 %77, metadata !2133, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr %63, metadata !2132, metadata !DIExpression()), !dbg !2158
  %78 = icmp eq i32 %77, 0, !dbg !2162
  br i1 %78, label %58, label %60, !dbg !2163, !llvm.loop !2171

79:                                               ; preds = %51, %58
  %80 = phi i32 [ %59, %58 ], [ 0, %51 ], !dbg !2165
  %81 = load i32, ptr @out_column, align 4, !dbg !2173, !tbaa !1028
  %82 = add nsw i32 %81, %80, !dbg !2173
  store i32 %82, ptr @out_column, align 4, !dbg !2173, !tbaa !1028
  store i32 %82, ptr @last_line_length, align 4, !dbg !2174, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 10, metadata !1436, metadata !DIExpression()), !dbg !2175
  %83 = load ptr, ptr @stdout, align 8, !dbg !2177, !tbaa !955
  %84 = getelementptr inbounds %struct._IO_FILE, ptr %83, i64 0, i32 5, !dbg !2177
  %85 = load ptr, ptr %84, align 8, !dbg !2177, !tbaa !1445
  %86 = getelementptr inbounds %struct._IO_FILE, ptr %83, i64 0, i32 6, !dbg !2177
  %87 = load ptr, ptr %86, align 8, !dbg !2177, !tbaa !1448
  %88 = icmp ult ptr %85, %87, !dbg !2177
  br i1 %88, label %91, label %89, !dbg !2177, !prof !1449

89:                                               ; preds = %79
  %90 = tail call i32 @__overflow(ptr noundef nonnull %83, i32 noundef 10) #38, !dbg !2177
  br label %93, !dbg !2177

91:                                               ; preds = %79
  %92 = getelementptr inbounds i8, ptr %85, i64 1, !dbg !2177
  store ptr %92, ptr %84, align 8, !dbg !2177, !tbaa !1445
  store i8 10, ptr %85, align 1, !dbg !2177, !tbaa !1037
  br label %93, !dbg !2177

93:                                               ; preds = %89, %91
  %94 = load ptr, ptr @stdout, align 8, !dbg !2178, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %94, metadata !1655, metadata !DIExpression()), !dbg !2180
  %95 = load i32, ptr %94, align 8, !dbg !2182, !tbaa !1661
  %96 = and i32 %95, 32, !dbg !2178
  %97 = icmp eq i32 %96, 0, !dbg !2178
  br i1 %97, label %106, label %98, !dbg !2183

98:                                               ; preds = %93
  %99 = tail call ptr @__errno_location() #41, !dbg !2184
  %100 = load i32, ptr %99, align 4, !dbg !2184, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %100, metadata !2187, metadata !DIExpression()), !dbg !2189
  %101 = tail call i32 @fflush_unlocked(ptr noundef nonnull %94) #38, !dbg !2190
  %102 = load ptr, ptr @stdout, align 8, !dbg !2191, !tbaa !955
  %103 = tail call i32 @fpurge(ptr noundef %102) #38, !dbg !2192
  %104 = load ptr, ptr @stdout, align 8, !dbg !2193, !tbaa !955
  tail call void @clearerr_unlocked(ptr noundef %104) #38, !dbg !2193
  %105 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #38, !dbg !2194
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %100, ptr noundef %105) #38, !dbg !2194
  unreachable, !dbg !2194

106:                                              ; preds = %93
  ret void, !dbg !2195
}

; Function Attrs: nounwind
declare !dbg !2196 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

declare !dbg !2199 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_paragraph() unnamed_addr #10 !dbg !2200 {
  %1 = load ptr, ptr @word_limit, align 8, !dbg !2214, !tbaa !955
  %2 = icmp eq ptr %1, @unused_word_type, !dbg !2215
  br i1 %2, label %3, label %20, !dbg !2216

3:                                                ; preds = %0
  %4 = load ptr, ptr @wptr, align 8, !dbg !2217, !tbaa !955
  %5 = ptrtoint ptr %4 to i64, !dbg !2218
  %6 = sub i64 %5, ptrtoint (ptr @parabuf to i64), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %6, metadata !2206, metadata !DIExpression()), !dbg !2219
  %7 = load ptr, ptr @stdout, align 8, !dbg !2220, !tbaa !955
  %8 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @parabuf, i64 noundef 1, i64 noundef %6, ptr noundef %7), !dbg !2220
  %9 = icmp eq i64 %8, %6, !dbg !2221
  br i1 %9, label %19, label %10, !dbg !2222

10:                                               ; preds = %3
  %11 = tail call ptr @__errno_location() #41, !dbg !2223
  %12 = load i32, ptr %11, align 4, !dbg !2223, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %12, metadata !2187, metadata !DIExpression()), !dbg !2225
  %13 = load ptr, ptr @stdout, align 8, !dbg !2226, !tbaa !955
  %14 = tail call i32 @fflush_unlocked(ptr noundef %13) #38, !dbg !2226
  %15 = load ptr, ptr @stdout, align 8, !dbg !2227, !tbaa !955
  %16 = tail call i32 @fpurge(ptr noundef %15) #38, !dbg !2228
  %17 = load ptr, ptr @stdout, align 8, !dbg !2229, !tbaa !955
  tail call void @clearerr_unlocked(ptr noundef %17) #38, !dbg !2229
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #38, !dbg !2230
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %12, ptr noundef %18) #38, !dbg !2230
  unreachable, !dbg !2230

19:                                               ; preds = %3
  store ptr @parabuf, ptr @wptr, align 8, !dbg !2231, !tbaa !955
  br label %123

20:                                               ; preds = %0
  tail call fastcc void @fmt_paragraph(), !dbg !2232
  call void @llvm.dbg.value(metadata ptr %1, metadata !2202, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !2205, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata ptr poison, metadata !2203, metadata !DIExpression()), !dbg !2233
  %21 = load ptr, ptr getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 0, i32 6), align 8, !dbg !2234, !tbaa !1643
  call void @llvm.dbg.value(metadata ptr %21, metadata !2203, metadata !DIExpression()), !dbg !2233
  %22 = icmp eq ptr %21, %1, !dbg !2236
  br i1 %22, label %43, label %23, !dbg !2238

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Word, ptr %21, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !dbg !2239, !tbaa !1988
  br label %26, !dbg !2238

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %34, %26 ], [ %25, %23 ], !dbg !2239
  %28 = phi ptr [ %32, %26 ], [ %21, %23 ]
  %29 = phi ptr [ %38, %26 ], [ %1, %23 ]
  %30 = phi i64 [ %41, %26 ], [ 9223372036854775807, %23 ]
  call void @llvm.dbg.value(metadata ptr %29, metadata !2202, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %30, metadata !2205, metadata !DIExpression()), !dbg !2233
  %31 = getelementptr inbounds %struct.Word, ptr %28, i64 0, i32 6, !dbg !2242
  %32 = load ptr, ptr %31, align 8, !dbg !2242, !tbaa !1643
  %33 = getelementptr inbounds %struct.Word, ptr %32, i64 0, i32 5, !dbg !2243
  %34 = load i64, ptr %33, align 8, !dbg !2243, !tbaa !1988
  %35 = sub nsw i64 %27, %34, !dbg !2244
  %36 = icmp slt i64 %35, %30, !dbg !2245
  %37 = tail call i64 @llvm.smin.i64(i64 %35, i64 %30), !dbg !2246
  %38 = select i1 %36, ptr %28, ptr %29, !dbg !2246
  call void @llvm.dbg.value(metadata ptr %38, metadata !2202, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %37, metadata !2205, metadata !DIExpression()), !dbg !2233
  %39 = icmp slt i64 %37, 9223372036854775799, !dbg !2247
  %40 = add nsw i64 %37, 9, !dbg !2249
  %41 = select i1 %39, i64 %40, i64 %37, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %41, metadata !2205, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata ptr %32, metadata !2203, metadata !DIExpression()), !dbg !2233
  %42 = icmp eq ptr %32, %1, !dbg !2236
  br i1 %42, label %43, label %26, !dbg !2238, !llvm.loop !2250

43:                                               ; preds = %26, %20
  %44 = phi ptr [ %1, %20 ], [ %38, %26 ], !dbg !2233
  %45 = ptrtoint ptr %44 to i64, !dbg !2252
  call void @llvm.dbg.value(metadata ptr %44, metadata !1630, metadata !DIExpression()), !dbg !2252
  %46 = load i32, ptr @first_indent, align 4, !dbg !2254, !tbaa !1028
  tail call fastcc void @put_line(ptr noundef nonnull @unused_word_type, i32 noundef %46), !dbg !2255
  call void @llvm.dbg.value(metadata ptr poison, metadata !1635, metadata !DIExpression()), !dbg !2256
  %47 = load ptr, ptr getelementptr inbounds ([1000 x %struct.Word], ptr @unused_word_type, i64 0, i64 0, i32 6), align 8, !dbg !2257, !tbaa !1643
  call void @llvm.dbg.value(metadata ptr %47, metadata !1635, metadata !DIExpression()), !dbg !2256
  %48 = icmp eq ptr %47, %44, !dbg !2258
  br i1 %48, label %55, label %49, !dbg !2259

49:                                               ; preds = %43, %49
  %50 = phi ptr [ %53, %49 ], [ %47, %43 ]
  %51 = load i32, ptr @other_indent, align 4, !dbg !2260, !tbaa !1028
  tail call fastcc void @put_line(ptr noundef %50, i32 noundef %51), !dbg !2261
  %52 = getelementptr inbounds %struct.Word, ptr %50, i64 0, i32 6, !dbg !2262
  call void @llvm.dbg.value(metadata ptr poison, metadata !1635, metadata !DIExpression()), !dbg !2256
  %53 = load ptr, ptr %52, align 8, !dbg !2257, !tbaa !1643
  call void @llvm.dbg.value(metadata ptr %53, metadata !1635, metadata !DIExpression()), !dbg !2256
  %54 = icmp eq ptr %53, %44, !dbg !2258
  br i1 %54, label %55, label %49, !dbg !2259, !llvm.loop !2263

55:                                               ; preds = %49, %43
  %56 = load ptr, ptr %44, align 8, !dbg !2265, !tbaa !1827
  %57 = load ptr, ptr @wptr, align 8, !dbg !2266, !tbaa !955
  %58 = ptrtoint ptr %57 to i64, !dbg !2267
  %59 = ptrtoint ptr %56 to i64, !dbg !2267
  %60 = sub i64 %58, %59, !dbg !2267
  call void @llvm.dbg.value(metadata ptr @parabuf, metadata !2268, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata ptr %56, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %60, metadata !2275, metadata !DIExpression()), !dbg !2276
  %61 = tail call ptr @__memmove_chk(ptr noundef nonnull @parabuf, ptr noundef nonnull %56, i64 noundef %60, i64 noundef 5000) #38, !dbg !2278
  %62 = load ptr, ptr %44, align 8, !dbg !2279, !tbaa !1827
  %63 = ptrtoint ptr %62 to i64, !dbg !2280
  %64 = sub i64 %63, sext (i32 ptrtoint (ptr @parabuf to i32) to i64), !dbg !2281
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i32 ptrtoint (ptr @parabuf to i32)), metadata !2204, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2233
  %65 = load ptr, ptr @wptr, align 8, !dbg !2282, !tbaa !955
  %66 = shl i64 %64, 32, !dbg !2282
  %67 = ashr exact i64 %66, 32, !dbg !2282
  %68 = sub nsw i64 0, %67, !dbg !2282
  %69 = getelementptr inbounds i8, ptr %65, i64 %68, !dbg !2282
  store ptr %69, ptr @wptr, align 8, !dbg !2282, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %44, metadata !2203, metadata !DIExpression()), !dbg !2233
  %70 = load ptr, ptr @word_limit, align 8, !tbaa !955
  %71 = icmp ugt ptr %44, %70, !dbg !2283
  br i1 %71, label %113, label %72, !dbg !2286

72:                                               ; preds = %55
  %73 = ptrtoint ptr %70 to i64, !dbg !2283
  %74 = add i64 %45, 40, !dbg !2286
  %75 = add nuw i64 %73, 1, !dbg !2286
  %76 = tail call i64 @llvm.umax.i64(i64 %74, i64 %75), !dbg !2286
  %77 = add i64 %76, -40, !dbg !2286
  %78 = icmp ne i64 %77, %45, !dbg !2286
  %79 = zext i1 %78 to i64, !dbg !2286
  %80 = add i64 %45, %79, !dbg !2286
  %81 = sub i64 %77, %80, !dbg !2286
  %82 = udiv i64 %81, 40, !dbg !2286
  %83 = add nuw nsw i64 %82, %79, !dbg !2286
  %84 = add nuw nsw i64 %83, 1, !dbg !2286
  %85 = icmp eq i64 %83, 0, !dbg !2286
  br i1 %85, label %105, label %86, !dbg !2286

86:                                               ; preds = %72
  %87 = and i64 %84, -2, !dbg !2286
  %88 = mul i64 %87, 40, !dbg !2286
  %89 = getelementptr i8, ptr %44, i64 %88, !dbg !2286
  br label %90, !dbg !2286

90:                                               ; preds = %90, %86
  %91 = phi i64 [ 0, %86 ], [ %101, %90 ]
  %92 = mul i64 %91, 40, !dbg !2286
  %93 = getelementptr i8, ptr %44, i64 %92, !dbg !2286
  %94 = mul i64 %91, 40, !dbg !2286
  %95 = add i64 %94, 40, !dbg !2286
  %96 = getelementptr i8, ptr %44, i64 %95, !dbg !2286
  %97 = load ptr, ptr %93, align 8, !dbg !2287, !tbaa !1827
  %98 = load ptr, ptr %96, align 8, !dbg !2287, !tbaa !1827
  %99 = getelementptr inbounds i8, ptr %97, i64 %68, !dbg !2287
  %100 = getelementptr inbounds i8, ptr %98, i64 %68, !dbg !2287
  store ptr %99, ptr %93, align 8, !dbg !2287, !tbaa !1827
  store ptr %100, ptr %96, align 8, !dbg !2287, !tbaa !1827
  %101 = add nuw i64 %91, 2
  %102 = icmp eq i64 %101, %87
  br i1 %102, label %103, label %90, !llvm.loop !2288

103:                                              ; preds = %90
  %104 = icmp eq i64 %84, %87, !dbg !2286
  br i1 %104, label %113, label %105, !dbg !2286

105:                                              ; preds = %72, %103
  %106 = phi ptr [ %44, %72 ], [ %89, %103 ]
  br label %107, !dbg !2286

107:                                              ; preds = %105, %107
  %108 = phi ptr [ %111, %107 ], [ %106, %105 ]
  call void @llvm.dbg.value(metadata ptr %108, metadata !2203, metadata !DIExpression()), !dbg !2233
  %109 = load ptr, ptr %108, align 8, !dbg !2287, !tbaa !1827
  %110 = getelementptr inbounds i8, ptr %109, i64 %68, !dbg !2287
  store ptr %110, ptr %108, align 8, !dbg !2287, !tbaa !1827
  %111 = getelementptr inbounds %struct.Word, ptr %108, i64 1, !dbg !2292
  call void @llvm.dbg.value(metadata ptr %111, metadata !2203, metadata !DIExpression()), !dbg !2233
  %112 = icmp ugt ptr %111, %70, !dbg !2283
  br i1 %112, label %113, label %107, !dbg !2286, !llvm.loop !2293

113:                                              ; preds = %107, %103, %55
  %114 = ptrtoint ptr %70 to i64, !dbg !2294
  %115 = ptrtoint ptr %44 to i64, !dbg !2294
  %116 = sub i64 40, %115, !dbg !2294
  %117 = add i64 %116, %114, !dbg !2295
  call void @llvm.dbg.value(metadata ptr @unused_word_type, metadata !2268, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata ptr %44, metadata !2274, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %117, metadata !2275, metadata !DIExpression()), !dbg !2296
  %118 = tail call ptr @__memmove_chk(ptr noundef nonnull @unused_word_type, ptr noundef nonnull %44, i64 noundef %117, i64 noundef 40000) #38, !dbg !2298
  %119 = sub i64 %115, ptrtoint (ptr @unused_word_type to i64), !dbg !2299
  %120 = sdiv exact i64 %119, -40, !dbg !2299
  %121 = load ptr, ptr @word_limit, align 8, !dbg !2300, !tbaa !955
  %122 = getelementptr inbounds %struct.Word, ptr %121, i64 %120, !dbg !2300
  store ptr %122, ptr @word_limit, align 8, !dbg !2300, !tbaa !955
  br label %123, !dbg !2301

123:                                              ; preds = %113, %19
  ret void, !dbg !2301
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare !dbg !2302 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !2306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2308, metadata !DIExpression()), !dbg !2309
  store ptr %0, ptr @file_name, align 8, !dbg !2310, !tbaa !955
  ret void, !dbg !2311
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !2312 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2314, metadata !DIExpression()), !dbg !2315
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2316, !tbaa !2317
  ret void, !dbg !2319
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2320 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2325, !tbaa !955
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !2326
  %3 = icmp eq i32 %2, 0, !dbg !2327
  br i1 %3, label %22, label %4, !dbg !2328

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2329, !tbaa !2317, !range !2330, !noundef !964
  %6 = icmp eq i8 %5, 0, !dbg !2329
  br i1 %6, label %11, label %7, !dbg !2331

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !2332
  %9 = load i32, ptr %8, align 4, !dbg !2332, !tbaa !1028
  %10 = icmp eq i32 %9, 32, !dbg !2333
  br i1 %10, label %22, label %11, !dbg !2334

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1.36, i32 noundef 5) #38, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %12, metadata !2322, metadata !DIExpression()), !dbg !2336
  %13 = load ptr, ptr @file_name, align 8, !dbg !2337, !tbaa !955
  %14 = icmp eq ptr %13, null, !dbg !2337
  %15 = tail call ptr @__errno_location() #41, !dbg !2339
  %16 = load i32, ptr %15, align 4, !dbg !2339, !tbaa !1028
  br i1 %14, label %19, label %17, !dbg !2340

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !2341
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.37, ptr noundef %18, ptr noundef %12) #38, !dbg !2341
  br label %20, !dbg !2341

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.38, ptr noundef %12) #38, !dbg !2342
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2343, !tbaa !1028
  tail call void @_exit(i32 noundef %21) #40, !dbg !2344
  unreachable, !dbg !2344

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2345, !tbaa !955
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !2347
  %25 = icmp eq i32 %24, 0, !dbg !2348
  br i1 %25, label %28, label %26, !dbg !2349

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2350, !tbaa !1028
  tail call void @_exit(i32 noundef %27) #40, !dbg !2351
  unreachable, !dbg !2351

28:                                               ; preds = %22
  ret void, !dbg !2352
}

; Function Attrs: noreturn
declare !dbg !2353 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !2355 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2359, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 %1, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata ptr %2, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2362, metadata !DIExpression()), !dbg !2364
  tail call fastcc void @flush_stdout(), !dbg !2365
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2366, !tbaa !955
  %7 = icmp eq ptr %6, null, !dbg !2366
  br i1 %7, label %9, label %8, !dbg !2368

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !2369
  br label %13, !dbg !2369

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2370, !tbaa !955
  %11 = tail call ptr @getprogname() #39, !dbg !2370
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef %11) #38, !dbg !2370
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2372, !tbaa.struct !2373
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2372
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2372
  ret void, !dbg !2374
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2375 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2377, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32 1, metadata !2379, metadata !DIExpression()), !dbg !2382
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !2385
  %2 = icmp slt i32 %1, 0, !dbg !2386
  br i1 %2, label %6, label %3, !dbg !2387

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2388, !tbaa !955
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2388
  br label %6, !dbg !2388

6:                                                ; preds = %3, %0
  ret void, !dbg !2389
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2390 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2392, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %1, metadata !2393, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata ptr %2, metadata !2394, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2395, metadata !DIExpression()), !dbg !2397
  %7 = load ptr, ptr @stderr, align 8, !dbg !2398, !tbaa !955
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2399, !noalias !2443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2447
  call void @llvm.dbg.value(metadata ptr %7, metadata !2439, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata ptr %2, metadata !2440, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2441, metadata !DIExpression()), !dbg !2449
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2399, !noalias !2443
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2450, !tbaa !1028
  %10 = add i32 %9, 1, !dbg !2450
  store i32 %10, ptr @error_message_count, align 4, !dbg !2450, !tbaa !1028
  %11 = icmp eq i32 %1, 0, !dbg !2451
  br i1 %11, label %21, label %12, !dbg !2453

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2454, metadata !DIExpression()), !dbg !2462
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2458, metadata !DIExpression()), !dbg !2465
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2466
  call void @llvm.dbg.value(metadata ptr %13, metadata !2457, metadata !DIExpression()), !dbg !2462
  %14 = icmp eq ptr %13, null, !dbg !2467
  br i1 %14, label %15, label %17, !dbg !2469

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.40, ptr noundef nonnull @.str.5.41, i32 noundef 5) #38, !dbg !2470
  call void @llvm.dbg.value(metadata ptr %16, metadata !2457, metadata !DIExpression()), !dbg !2462
  br label %17, !dbg !2471

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2462
  call void @llvm.dbg.value(metadata ptr %18, metadata !2457, metadata !DIExpression()), !dbg !2462
  %19 = load ptr, ptr @stderr, align 8, !dbg !2472, !tbaa !955
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.42, ptr noundef %18) #38, !dbg !2472
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2473
  br label %21, !dbg !2474

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2475, !tbaa !955
  call void @llvm.dbg.value(metadata i32 10, metadata !2476, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata ptr %22, metadata !2481, metadata !DIExpression()), !dbg !2482
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2484
  %24 = load ptr, ptr %23, align 8, !dbg !2484, !tbaa !1445
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2484
  %26 = load ptr, ptr %25, align 8, !dbg !2484, !tbaa !1448
  %27 = icmp ult ptr %24, %26, !dbg !2484
  br i1 %27, label %30, label %28, !dbg !2484, !prof !1449

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !2484
  br label %32, !dbg !2484

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2484
  store ptr %31, ptr %23, align 8, !dbg !2484, !tbaa !1445
  store i8 10, ptr %24, align 1, !dbg !2484, !tbaa !1037
  br label %32, !dbg !2484

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2485, !tbaa !955
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !2485
  %35 = icmp eq i32 %0, 0, !dbg !2486
  br i1 %35, label %37, label %36, !dbg !2488

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !2489
  unreachable, !dbg !2489

37:                                               ; preds = %32
  ret void, !dbg !2490
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

declare !dbg !2491 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2494 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2497 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2501 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2505, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %1, metadata !2506, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.va_start(ptr nonnull %4), !dbg !2512
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2513, !tbaa.struct !2373
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2513
  call void @llvm.va_end(ptr nonnull %4), !dbg !2514
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !2515
  ret void, !dbg !2515
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !540 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !557, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 %1, metadata !558, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %2, metadata !559, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 %3, metadata !560, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %4, metadata !561, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.declare(metadata ptr %5, metadata !562, metadata !DIExpression()), !dbg !2517
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2518, !tbaa !1028
  %9 = icmp eq i32 %8, 0, !dbg !2518
  br i1 %9, label %24, label %10, !dbg !2520

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2521, !tbaa !1028
  %12 = icmp eq i32 %11, %3, !dbg !2524
  br i1 %12, label %13, label %23, !dbg !2525

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2526, !tbaa !955
  %15 = icmp eq ptr %14, %2, !dbg !2527
  br i1 %15, label %37, label %16, !dbg !2528

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2529
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2530
  br i1 %19, label %20, label %23, !dbg !2530

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2531
  %22 = icmp eq i32 %21, 0, !dbg !2532
  br i1 %22, label %37, label %23, !dbg !2533

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2534, !tbaa !955
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2535, !tbaa !1028
  br label %24, !dbg !2536

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2537
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2538, !tbaa !955
  %26 = icmp eq ptr %25, null, !dbg !2538
  br i1 %26, label %28, label %27, !dbg !2540

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !2541
  br label %32, !dbg !2541

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2542, !tbaa !955
  %30 = tail call ptr @getprogname() #39, !dbg !2542
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.45, ptr noundef %30) #38, !dbg !2542
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2544, !tbaa !955
  %34 = icmp eq ptr %2, null, !dbg !2544
  %35 = select i1 %34, ptr @.str.3.46, ptr @.str.2.47, !dbg !2544
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !2544
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2545, !tbaa.struct !2373
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2545
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2545
  br label %37, !dbg !2546

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2546
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2547 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2551, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i32 %1, metadata !2552, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata ptr %2, metadata !2553, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i32 %3, metadata !2554, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata ptr %4, metadata !2555, metadata !DIExpression()), !dbg !2557
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2558
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2556, metadata !DIExpression()), !dbg !2559
  call void @llvm.va_start(ptr nonnull %6), !dbg !2560
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2561, !tbaa.struct !2373
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !2561
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2561
  call void @llvm.va_end(ptr nonnull %6), !dbg !2562
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2563
  ret void, !dbg !2563
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2570, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64 %1, metadata !2571, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64 %2, metadata !2572, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 %3, metadata !2573, metadata !DIExpression()), !dbg !2574
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2575
  ret void, !dbg !2576
}

; Function Attrs: nounwind
declare !dbg !2577 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2580 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1, metadata !2619, metadata !DIExpression()), !dbg !2620
  %3 = icmp eq ptr %0, null, !dbg !2621
  br i1 %3, label %7, label %4, !dbg !2623

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2624
  call void @llvm.dbg.value(metadata i32 %5, metadata !2570, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 0, metadata !2571, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 0, metadata !2572, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 %1, metadata !2573, metadata !DIExpression()), !dbg !2625
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2627
  br label %7, !dbg !2628

7:                                                ; preds = %4, %2
  ret void, !dbg !2629
}

; Function Attrs: nofree nounwind
declare !dbg !2630 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2633 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2671, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2675
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2676
  call void @llvm.dbg.value(metadata i32 %2, metadata !2673, metadata !DIExpression()), !dbg !2675
  %3 = icmp slt i32 %2, 0, !dbg !2677
  br i1 %3, label %4, label %6, !dbg !2679

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2680
  br label %24, !dbg !2681

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2682
  %8 = icmp eq i32 %7, 0, !dbg !2682
  br i1 %8, label %13, label %9, !dbg !2684

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2685
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2686
  %12 = icmp eq i64 %11, -1, !dbg !2687
  br i1 %12, label %16, label %13, !dbg !2688

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2689
  %15 = icmp eq i32 %14, 0, !dbg !2689
  br i1 %15, label %16, label %18, !dbg !2690

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression()), !dbg !2675
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %17, metadata !2674, metadata !DIExpression()), !dbg !2675
  br label %24, !dbg !2692

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2693
  %20 = load i32, ptr %19, align 4, !dbg !2693, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %20, metadata !2672, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression()), !dbg !2675
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %21, metadata !2674, metadata !DIExpression()), !dbg !2675
  %22 = icmp eq i32 %20, 0, !dbg !2694
  br i1 %22, label %24, label %23, !dbg !2692

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2696, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 -1, metadata !2674, metadata !DIExpression()), !dbg !2675
  br label %24, !dbg !2698

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2675
  ret i32 %25, !dbg !2699
}

; Function Attrs: nofree nounwind
declare !dbg !2700 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2701 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2703 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2706 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2744, metadata !DIExpression()), !dbg !2745
  %2 = icmp eq ptr %0, null, !dbg !2746
  br i1 %2, label %6, label %3, !dbg !2748

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2749
  %5 = icmp eq i32 %4, 0, !dbg !2749
  br i1 %5, label %6, label %8, !dbg !2750

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2751
  br label %16, !dbg !2752

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2753, metadata !DIExpression()), !dbg !2758
  %9 = load i32, ptr %0, align 8, !dbg !2760, !tbaa !1661
  %10 = and i32 %9, 256, !dbg !2762
  %11 = icmp eq i32 %10, 0, !dbg !2762
  br i1 %11, label %14, label %12, !dbg !2763

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2764
  br label %14, !dbg !2764

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2765
  br label %16, !dbg !2766

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2745
  ret i32 %17, !dbg !2767
}

; Function Attrs: nofree nounwind
declare !dbg !2768 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2769 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2807, metadata !DIExpression()), !dbg !2808
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2809
  ret i32 0, !dbg !2810
}

; Function Attrs: nounwind
declare !dbg !2811 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2814 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2852, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %1, metadata !2853, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %2, metadata !2854, metadata !DIExpression()), !dbg !2858
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2859
  %5 = load ptr, ptr %4, align 8, !dbg !2859, !tbaa !1479
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2860
  %7 = load ptr, ptr %6, align 8, !dbg !2860, !tbaa !1478
  %8 = icmp eq ptr %5, %7, !dbg !2861
  br i1 %8, label %9, label %27, !dbg !2862

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2863
  %11 = load ptr, ptr %10, align 8, !dbg !2863, !tbaa !1445
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2864
  %13 = load ptr, ptr %12, align 8, !dbg !2864, !tbaa !2865
  %14 = icmp eq ptr %11, %13, !dbg !2866
  br i1 %14, label %15, label %27, !dbg !2867

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2868
  %17 = load ptr, ptr %16, align 8, !dbg !2868, !tbaa !2869
  %18 = icmp eq ptr %17, null, !dbg !2870
  br i1 %18, label %19, label %27, !dbg !2871

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2872
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %21, metadata !2855, metadata !DIExpression()), !dbg !2874
  %22 = icmp eq i64 %21, -1, !dbg !2875
  br i1 %22, label %29, label %23, !dbg !2877

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2878, !tbaa !1661
  %25 = and i32 %24, -17, !dbg !2878
  store i32 %25, ptr %0, align 8, !dbg !2878, !tbaa !1661
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2879
  store i64 %21, ptr %26, align 8, !dbg !2880, !tbaa !2881
  br label %29, !dbg !2882

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2883
  br label %29, !dbg !2884

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2858
  ret i32 %30, !dbg !2885
}

; Function Attrs: nofree nounwind
declare !dbg !2886 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2889 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2892, !tbaa !955
  ret ptr %1, !dbg !2893
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2894 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2896, metadata !DIExpression()), !dbg !2899
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2900
  call void @llvm.dbg.value(metadata ptr %2, metadata !2897, metadata !DIExpression()), !dbg !2899
  %3 = icmp eq ptr %2, null, !dbg !2901
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2901
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2901
  call void @llvm.dbg.value(metadata ptr %5, metadata !2898, metadata !DIExpression()), !dbg !2899
  %6 = ptrtoint ptr %5 to i64, !dbg !2902
  %7 = ptrtoint ptr %0 to i64, !dbg !2902
  %8 = sub i64 %6, %7, !dbg !2902
  %9 = icmp sgt i64 %8, 6, !dbg !2904
  br i1 %9, label %10, label %19, !dbg !2905

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2906
  call void @llvm.dbg.value(metadata ptr %11, metadata !2907, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata ptr @.str.77, metadata !2912, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 7, metadata !2913, metadata !DIExpression()), !dbg !2914
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.77, i64 7), !dbg !2916
  %13 = icmp eq i32 %12, 0, !dbg !2917
  br i1 %13, label %14, label %19, !dbg !2918

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2896, metadata !DIExpression()), !dbg !2899
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.78, i64 noundef 3) #39, !dbg !2919
  %16 = icmp eq i32 %15, 0, !dbg !2922
  %17 = select i1 %16, i64 3, i64 0, !dbg !2923
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2923
  br label %19, !dbg !2923

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2899
  call void @llvm.dbg.value(metadata ptr %21, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %20, metadata !2896, metadata !DIExpression()), !dbg !2899
  store ptr %20, ptr @program_name, align 8, !dbg !2924, !tbaa !955
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2925, !tbaa !955
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2926, !tbaa !955
  ret void, !dbg !2927
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2928 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !596 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !603, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr %1, metadata !604, metadata !DIExpression()), !dbg !2929
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2930
  call void @llvm.dbg.value(metadata ptr %5, metadata !605, metadata !DIExpression()), !dbg !2929
  %6 = icmp eq ptr %5, %0, !dbg !2931
  br i1 %6, label %7, label %14, !dbg !2933

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2934
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2935
  call void @llvm.dbg.declare(metadata ptr %4, metadata !611, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %4, metadata !2937, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %4, metadata !2946, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 0, metadata !2951, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 8, metadata !2952, metadata !DIExpression()), !dbg !2953
  store i64 0, ptr %4, align 8, !dbg !2955
  call void @llvm.dbg.value(metadata ptr %3, metadata !606, metadata !DIExpression(DW_OP_deref)), !dbg !2929
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2956
  %9 = icmp eq i64 %8, 2, !dbg !2958
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !606, metadata !DIExpression()), !dbg !2929
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2959
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2960
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2960
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2929
  ret ptr %15, !dbg !2960
}

; Function Attrs: nounwind
declare !dbg !2961 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2967 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2972, metadata !DIExpression()), !dbg !2975
  %2 = tail call ptr @__errno_location() #41, !dbg !2976
  %3 = load i32, ptr %2, align 4, !dbg !2976, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %3, metadata !2973, metadata !DIExpression()), !dbg !2975
  %4 = icmp eq ptr %0, null, !dbg !2977
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2977
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %6, metadata !2974, metadata !DIExpression()), !dbg !2975
  store i32 %3, ptr %2, align 4, !dbg !2979, !tbaa !1028
  ret ptr %6, !dbg !2980
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !2981 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2987, metadata !DIExpression()), !dbg !2988
  %2 = icmp eq ptr %0, null, !dbg !2989
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2989
  %4 = load i32, ptr %3, align 8, !dbg !2990, !tbaa !2991
  ret i32 %4, !dbg !2993
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2994 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2998, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 %1, metadata !2999, metadata !DIExpression()), !dbg !3000
  %3 = icmp eq ptr %0, null, !dbg !3001
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3001
  store i32 %1, ptr %4, align 8, !dbg !3002, !tbaa !2991
  ret void, !dbg !3003
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !3004 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3008, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8 %1, metadata !3009, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i32 %2, metadata !3010, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8 %1, metadata !3011, metadata !DIExpression()), !dbg !3016
  %4 = icmp eq ptr %0, null, !dbg !3017
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3017
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3018
  %7 = lshr i8 %1, 5, !dbg !3019
  %8 = zext i8 %7 to i64, !dbg !3019
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3020
  call void @llvm.dbg.value(metadata ptr %9, metadata !3012, metadata !DIExpression()), !dbg !3016
  %10 = and i8 %1, 31, !dbg !3021
  %11 = zext i8 %10 to i32, !dbg !3021
  call void @llvm.dbg.value(metadata i32 %11, metadata !3014, metadata !DIExpression()), !dbg !3016
  %12 = load i32, ptr %9, align 4, !dbg !3022, !tbaa !1028
  %13 = lshr i32 %12, %11, !dbg !3023
  %14 = and i32 %13, 1, !dbg !3024
  call void @llvm.dbg.value(metadata i32 %14, metadata !3015, metadata !DIExpression()), !dbg !3016
  %15 = xor i32 %13, %2, !dbg !3025
  %16 = and i32 %15, 1, !dbg !3025
  %17 = shl nuw i32 %16, %11, !dbg !3026
  %18 = xor i32 %17, %12, !dbg !3027
  store i32 %18, ptr %9, align 4, !dbg !3027, !tbaa !1028
  ret i32 %14, !dbg !3028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !3029 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %1, metadata !3034, metadata !DIExpression()), !dbg !3036
  %3 = icmp eq ptr %0, null, !dbg !3037
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3039
  call void @llvm.dbg.value(metadata ptr %4, metadata !3033, metadata !DIExpression()), !dbg !3036
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3040
  %6 = load i32, ptr %5, align 4, !dbg !3040, !tbaa !3041
  call void @llvm.dbg.value(metadata i32 %6, metadata !3035, metadata !DIExpression()), !dbg !3036
  store i32 %1, ptr %5, align 4, !dbg !3042, !tbaa !3041
  ret i32 %6, !dbg !3043
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3044 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3051
  %4 = icmp eq ptr %0, null, !dbg !3052
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3054
  call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !3051
  store i32 10, ptr %5, align 8, !dbg !3055, !tbaa !2991
  %6 = icmp ne ptr %1, null, !dbg !3056
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3058
  br i1 %8, label %10, label %9, !dbg !3058

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3059
  unreachable, !dbg !3059

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3060
  store ptr %1, ptr %11, align 8, !dbg !3061, !tbaa !3062
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3063
  store ptr %2, ptr %12, align 8, !dbg !3064, !tbaa !3065
  ret void, !dbg !3066
}

; Function Attrs: noreturn nounwind
declare !dbg !3067 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3068 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %2, metadata !3074, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %3, metadata !3075, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %4, metadata !3076, metadata !DIExpression()), !dbg !3080
  %6 = icmp eq ptr %4, null, !dbg !3081
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3081
  call void @llvm.dbg.value(metadata ptr %7, metadata !3077, metadata !DIExpression()), !dbg !3080
  %8 = tail call ptr @__errno_location() #41, !dbg !3082
  %9 = load i32, ptr %8, align 4, !dbg !3082, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %9, metadata !3078, metadata !DIExpression()), !dbg !3080
  %10 = load i32, ptr %7, align 8, !dbg !3083, !tbaa !2991
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3084
  %12 = load i32, ptr %11, align 4, !dbg !3084, !tbaa !3041
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3085
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3086
  %15 = load ptr, ptr %14, align 8, !dbg !3086, !tbaa !3062
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3087
  %17 = load ptr, ptr %16, align 8, !dbg !3087, !tbaa !3065
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %18, metadata !3079, metadata !DIExpression()), !dbg !3080
  store i32 %9, ptr %8, align 4, !dbg !3089, !tbaa !1028
  ret i64 %18, !dbg !3090
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3091 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3097, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %2, metadata !3099, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %3, metadata !3100, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %4, metadata !3101, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %5, metadata !3102, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %6, metadata !3103, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %7, metadata !3104, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %8, metadata !3105, metadata !DIExpression()), !dbg !3159
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !3160
  %17 = icmp eq i64 %16, 1, !dbg !3161
  call void @llvm.dbg.value(metadata i1 %17, metadata !3106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3159
  call void @llvm.dbg.value(metadata i64 0, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 0, metadata !3108, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr null, metadata !3109, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 0, metadata !3110, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 0, metadata !3111, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %5, metadata !3112, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3159
  call void @llvm.dbg.value(metadata i8 0, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 1, metadata !3114, metadata !DIExpression()), !dbg !3159
  %18 = and i32 %5, 2, !dbg !3162
  %19 = icmp ne i32 %18, 0, !dbg !3162
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3162

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !3163
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !3164
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !3165
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %34, metadata !3110, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %33, metadata !3109, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %32, metadata !3108, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 0, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %31, metadata !3100, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %30, metadata !3105, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %29, metadata !3104, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %28, metadata !3101, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.label(metadata !3152), !dbg !3166
  call void @llvm.dbg.value(metadata i8 0, metadata !3115, metadata !DIExpression()), !dbg !3159
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
  ], !dbg !3167

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 5, metadata !3101, metadata !DIExpression()), !dbg !3159
  br label %102, !dbg !3168

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 5, metadata !3101, metadata !DIExpression()), !dbg !3159
  br i1 %36, label %102, label %42, !dbg !3168

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3169
  br i1 %43, label %102, label %44, !dbg !3173

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3169, !tbaa !1037
  br label %102, !dbg !3169

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !692, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i32 %28, metadata !693, metadata !DIExpression()), !dbg !3174
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #38, !dbg !3178
  call void @llvm.dbg.value(metadata ptr %46, metadata !694, metadata !DIExpression()), !dbg !3174
  %47 = icmp eq ptr %46, @.str.11.91, !dbg !3179
  br i1 %47, label %48, label %57, !dbg !3181

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !3182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !3183
  call void @llvm.dbg.declare(metadata ptr %13, metadata !696, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata ptr %13, metadata !3185, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata ptr %13, metadata !3193, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 0, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 8, metadata !3197, metadata !DIExpression()), !dbg !3198
  store i64 0, ptr %13, align 8, !dbg !3200
  call void @llvm.dbg.value(metadata ptr %12, metadata !695, metadata !DIExpression(DW_OP_deref)), !dbg !3174
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !3201
  %50 = icmp eq i64 %49, 3, !dbg !3203
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !695, metadata !DIExpression()), !dbg !3174
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3204
  %54 = icmp eq i32 %28, 9, !dbg !3204
  %55 = select i1 %54, ptr @.str.10.93, ptr @.str.12.94, !dbg !3204
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3204
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !3205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !3205
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3174
  call void @llvm.dbg.value(metadata ptr %58, metadata !3104, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !692, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %28, metadata !693, metadata !DIExpression()), !dbg !3206
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #38, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %59, metadata !694, metadata !DIExpression()), !dbg !3206
  %60 = icmp eq ptr %59, @.str.12.94, !dbg !3209
  br i1 %60, label %61, label %70, !dbg !3210

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !3211
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !3212
  call void @llvm.dbg.declare(metadata ptr %11, metadata !696, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %11, metadata !3185, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr %11, metadata !3193, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 0, metadata !3196, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 8, metadata !3197, metadata !DIExpression()), !dbg !3216
  store i64 0, ptr %11, align 8, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %10, metadata !695, metadata !DIExpression(DW_OP_deref)), !dbg !3206
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !3219
  %63 = icmp eq i64 %62, 3, !dbg !3220
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !695, metadata !DIExpression()), !dbg !3206
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3221
  %67 = icmp eq i32 %28, 9, !dbg !3221
  %68 = select i1 %67, ptr @.str.10.93, ptr @.str.12.94, !dbg !3221
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3221
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !3222
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !3222
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !3105, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %71, metadata !3104, metadata !DIExpression()), !dbg !3159
  br i1 %36, label %88, label %73, !dbg !3223

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !3116, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 0, metadata !3107, metadata !DIExpression()), !dbg !3159
  %74 = load i8, ptr %71, align 1, !dbg !3225, !tbaa !1037
  %75 = icmp eq i8 %74, 0, !dbg !3227
  br i1 %75, label %88, label %76, !dbg !3227

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !3116, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %79, metadata !3107, metadata !DIExpression()), !dbg !3159
  %80 = icmp ult i64 %79, %39, !dbg !3228
  br i1 %80, label %81, label %83, !dbg !3231

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3228
  store i8 %77, ptr %82, align 1, !dbg !3228, !tbaa !1037
  br label %83, !dbg !3228

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %84, metadata !3107, metadata !DIExpression()), !dbg !3159
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3232
  call void @llvm.dbg.value(metadata ptr %85, metadata !3116, metadata !DIExpression()), !dbg !3224
  %86 = load i8, ptr %85, align 1, !dbg !3225, !tbaa !1037
  %87 = icmp eq i8 %86, 0, !dbg !3227
  br i1 %87, label %88, label %76, !dbg !3227, !llvm.loop !3233

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3235
  call void @llvm.dbg.value(metadata i64 %89, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 1, metadata !3111, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %72, metadata !3109, metadata !DIExpression()), !dbg !3159
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %90, metadata !3110, metadata !DIExpression()), !dbg !3159
  br label %102, !dbg !3237

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !3111, metadata !DIExpression()), !dbg !3159
  br label %93, !dbg !3238

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3159
  br i1 %36, label %102, label %96, !dbg !3239

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 2, metadata !3101, metadata !DIExpression()), !dbg !3159
  br label %102, !dbg !3240

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 2, metadata !3101, metadata !DIExpression()), !dbg !3159
  br i1 %36, label %102, label %96, !dbg !3240

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3241
  br i1 %98, label %102, label %99, !dbg !3245

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3241, !tbaa !1037
  br label %102, !dbg !3241

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !3112, metadata !DIExpression()), !dbg !3159
  br label %102, !dbg !3246

101:                                              ; preds = %27
  call void @abort() #40, !dbg !3247
  unreachable, !dbg !3247

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3235
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.93, %42 ], [ @.str.10.93, %44 ], [ @.str.10.93, %41 ], [ %33, %27 ], [ @.str.12.94, %96 ], [ @.str.12.94, %99 ], [ @.str.12.94, %95 ], [ @.str.10.93, %40 ], [ @.str.12.94, %93 ], [ @.str.12.94, %92 ], !dbg !3159
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !3159
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %108, metadata !3110, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %107, metadata !3109, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %106, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %105, metadata !3105, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %104, metadata !3104, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %103, metadata !3101, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 0, metadata !3121, metadata !DIExpression()), !dbg !3248
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
  br label %122, !dbg !3249

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3235
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !3163
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3250
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %129, metadata !3121, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %125, metadata !3108, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %124, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %123, metadata !3100, metadata !DIExpression()), !dbg !3159
  %131 = icmp eq i64 %123, -1, !dbg !3251
  br i1 %131, label %132, label %136, !dbg !3252

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3253
  %134 = load i8, ptr %133, align 1, !dbg !3253, !tbaa !1037
  %135 = icmp eq i8 %134, 0, !dbg !3254
  br i1 %135, label %579, label %138, !dbg !3255

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3256
  br i1 %137, label %579, label %138, !dbg !3255

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !3123, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3126, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3127, metadata !DIExpression()), !dbg !3257
  br i1 %114, label %139, label %152, !dbg !3258

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3260
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3261
  br i1 %141, label %142, label %144, !dbg !3261

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %143, metadata !3100, metadata !DIExpression()), !dbg !3159
  br label %144, !dbg !3263

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3263
  call void @llvm.dbg.value(metadata i64 %145, metadata !3100, metadata !DIExpression()), !dbg !3159
  %146 = icmp ugt i64 %140, %145, !dbg !3264
  br i1 %146, label %152, label %147, !dbg !3265

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %148, metadata !3267, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %107, metadata !3270, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 %108, metadata !3271, metadata !DIExpression()), !dbg !3272
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3274
  %150 = icmp eq i32 %149, 0, !dbg !3275
  %151 = and i1 %150, %110, !dbg !3276
  br i1 %151, label %630, label %152, !dbg !3276

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3123, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %153, metadata !3100, metadata !DIExpression()), !dbg !3159
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3277
  %156 = load i8, ptr %155, align 1, !dbg !3277, !tbaa !1037
  call void @llvm.dbg.value(metadata i8 %156, metadata !3128, metadata !DIExpression()), !dbg !3257
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
  ], !dbg !3278

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3279

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3280

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !3126, metadata !DIExpression()), !dbg !3257
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3284
  br i1 %160, label %177, label %161, !dbg !3284

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3286
  br i1 %162, label %163, label %165, !dbg !3290

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3286
  store i8 39, ptr %164, align 1, !dbg !3286, !tbaa !1037
  br label %165, !dbg !3286

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %166, metadata !3107, metadata !DIExpression()), !dbg !3159
  %167 = icmp ult i64 %166, %130, !dbg !3291
  br i1 %167, label %168, label %170, !dbg !3294

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3291
  store i8 36, ptr %169, align 1, !dbg !3291, !tbaa !1037
  br label %170, !dbg !3291

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %171, metadata !3107, metadata !DIExpression()), !dbg !3159
  %172 = icmp ult i64 %171, %130, !dbg !3295
  br i1 %172, label %173, label %175, !dbg !3298

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3295
  store i8 39, ptr %174, align 1, !dbg !3295, !tbaa !1037
  br label %175, !dbg !3295

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %176, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 1, metadata !3115, metadata !DIExpression()), !dbg !3159
  br label %177, !dbg !3299

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !3159
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %178, metadata !3107, metadata !DIExpression()), !dbg !3159
  %180 = icmp ult i64 %178, %130, !dbg !3300
  br i1 %180, label %181, label %183, !dbg !3303

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3300
  store i8 92, ptr %182, align 1, !dbg !3300, !tbaa !1037
  br label %183, !dbg !3300

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %184, metadata !3107, metadata !DIExpression()), !dbg !3159
  br i1 %111, label %185, label %482, !dbg !3304

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3306
  %187 = icmp ult i64 %186, %153, !dbg !3307
  br i1 %187, label %188, label %439, !dbg !3308

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3309
  %190 = load i8, ptr %189, align 1, !dbg !3309, !tbaa !1037
  %191 = add i8 %190, -48, !dbg !3310
  %192 = icmp ult i8 %191, 10, !dbg !3310
  br i1 %192, label %193, label %439, !dbg !3310

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3311
  br i1 %194, label %195, label %197, !dbg !3315

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3311
  store i8 48, ptr %196, align 1, !dbg !3311, !tbaa !1037
  br label %197, !dbg !3311

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %198, metadata !3107, metadata !DIExpression()), !dbg !3159
  %199 = icmp ult i64 %198, %130, !dbg !3316
  br i1 %199, label %200, label %202, !dbg !3319

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3316
  store i8 48, ptr %201, align 1, !dbg !3316, !tbaa !1037
  br label %202, !dbg !3316

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %203, metadata !3107, metadata !DIExpression()), !dbg !3159
  br label %439, !dbg !3320

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3321

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3322

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3323

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3325

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3327
  %210 = icmp ult i64 %209, %153, !dbg !3328
  br i1 %210, label %211, label %439, !dbg !3329

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3330
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3331
  %214 = load i8, ptr %213, align 1, !dbg !3331, !tbaa !1037
  %215 = icmp eq i8 %214, 63, !dbg !3332
  br i1 %215, label %216, label %439, !dbg !3333

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3334
  %218 = load i8, ptr %217, align 1, !dbg !3334, !tbaa !1037
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
  ], !dbg !3335

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3336

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !3128, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %209, metadata !3121, metadata !DIExpression()), !dbg !3248
  %221 = icmp ult i64 %124, %130, !dbg !3338
  br i1 %221, label %222, label %224, !dbg !3341

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3338
  store i8 63, ptr %223, align 1, !dbg !3338, !tbaa !1037
  br label %224, !dbg !3338

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %225, metadata !3107, metadata !DIExpression()), !dbg !3159
  %226 = icmp ult i64 %225, %130, !dbg !3342
  br i1 %226, label %227, label %229, !dbg !3345

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3342
  store i8 34, ptr %228, align 1, !dbg !3342, !tbaa !1037
  br label %229, !dbg !3342

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %230, metadata !3107, metadata !DIExpression()), !dbg !3159
  %231 = icmp ult i64 %230, %130, !dbg !3346
  br i1 %231, label %232, label %234, !dbg !3349

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3346
  store i8 34, ptr %233, align 1, !dbg !3346, !tbaa !1037
  br label %234, !dbg !3346

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %235, metadata !3107, metadata !DIExpression()), !dbg !3159
  %236 = icmp ult i64 %235, %130, !dbg !3350
  br i1 %236, label %237, label %239, !dbg !3353

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3350
  store i8 63, ptr %238, align 1, !dbg !3350, !tbaa !1037
  br label %239, !dbg !3350

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %240, metadata !3107, metadata !DIExpression()), !dbg !3159
  br label %439, !dbg !3354

241:                                              ; preds = %152
  br label %251, !dbg !3355

242:                                              ; preds = %152
  br label %251, !dbg !3356

243:                                              ; preds = %152
  br label %249, !dbg !3357

244:                                              ; preds = %152
  br label %249, !dbg !3358

245:                                              ; preds = %152
  br label %251, !dbg !3359

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3360

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3361

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3364

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3366
  call void @llvm.dbg.label(metadata !3153), !dbg !3367
  br i1 %119, label %621, label %251, !dbg !3368

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3366
  call void @llvm.dbg.label(metadata !3155), !dbg !3370
  br i1 %109, label %493, label %450, !dbg !3371

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3372

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3373, !tbaa !1037
  %256 = icmp eq i8 %255, 0, !dbg !3375
  br i1 %256, label %257, label %439, !dbg !3376

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3377
  br i1 %258, label %259, label %439, !dbg !3379

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3127, metadata !DIExpression()), !dbg !3257
  br label %260, !dbg !3380

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3257
  br i1 %116, label %262, label %439, !dbg !3381

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3383

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 1, metadata !3127, metadata !DIExpression()), !dbg !3257
  br i1 %116, label %264, label %439, !dbg !3384

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3385

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3388
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3390
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3390
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3390
  call void @llvm.dbg.value(metadata i64 %270, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %269, metadata !3108, metadata !DIExpression()), !dbg !3159
  %271 = icmp ult i64 %124, %270, !dbg !3391
  br i1 %271, label %272, label %274, !dbg !3394

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3391
  store i8 39, ptr %273, align 1, !dbg !3391, !tbaa !1037
  br label %274, !dbg !3391

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3394
  call void @llvm.dbg.value(metadata i64 %275, metadata !3107, metadata !DIExpression()), !dbg !3159
  %276 = icmp ult i64 %275, %270, !dbg !3395
  br i1 %276, label %277, label %279, !dbg !3398

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3395
  store i8 92, ptr %278, align 1, !dbg !3395, !tbaa !1037
  br label %279, !dbg !3395

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %280, metadata !3107, metadata !DIExpression()), !dbg !3159
  %281 = icmp ult i64 %280, %270, !dbg !3399
  br i1 %281, label %282, label %284, !dbg !3402

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3399
  store i8 39, ptr %283, align 1, !dbg !3399, !tbaa !1037
  br label %284, !dbg !3399

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %285, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 0, metadata !3115, metadata !DIExpression()), !dbg !3159
  br label %439, !dbg !3403

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3404

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !3129, metadata !DIExpression()), !dbg !3405
  %288 = tail call ptr @__ctype_b_loc() #41, !dbg !3406
  %289 = load ptr, ptr %288, align 8, !dbg !3406, !tbaa !955
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3406
  %292 = load i16, ptr %291, align 2, !dbg !3406, !tbaa !1069
  %293 = and i16 %292, 16384, !dbg !3406
  %294 = icmp ne i16 %293, 0, !dbg !3408
  call void @llvm.dbg.value(metadata i1 %294, metadata !3132, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3405
  br label %337, !dbg !3409

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3133, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata ptr %14, metadata !3185, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata ptr %14, metadata !3193, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 0, metadata !3196, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 8, metadata !3197, metadata !DIExpression()), !dbg !3414
  store i64 0, ptr %14, align 8, !dbg !3416
  call void @llvm.dbg.value(metadata i64 0, metadata !3129, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8 1, metadata !3132, metadata !DIExpression()), !dbg !3405
  %296 = icmp eq i64 %153, -1, !dbg !3417
  br i1 %296, label %297, label %299, !dbg !3419

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %298, metadata !3100, metadata !DIExpression()), !dbg !3159
  br label %299, !dbg !3421

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3257
  call void @llvm.dbg.value(metadata i64 %300, metadata !3100, metadata !DIExpression()), !dbg !3159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !3422
  %301 = sub i64 %300, %129, !dbg !3423
  call void @llvm.dbg.value(metadata ptr %15, metadata !3136, metadata !DIExpression(DW_OP_deref)), !dbg !3424
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #38, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %302, metadata !3140, metadata !DIExpression()), !dbg !3424
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3426

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !3129, metadata !DIExpression()), !dbg !3405
  %304 = icmp ugt i64 %300, %129, !dbg !3427
  br i1 %304, label %306, label %332, !dbg !3429

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !3132, metadata !DIExpression()), !dbg !3405
  br label %332, !dbg !3430

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !3129, metadata !DIExpression()), !dbg !3405
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3432
  %310 = load i8, ptr %309, align 1, !dbg !3432, !tbaa !1037
  %311 = icmp eq i8 %310, 0, !dbg !3429
  br i1 %311, label %332, label %312, !dbg !3433

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %313, metadata !3129, metadata !DIExpression()), !dbg !3405
  %314 = add i64 %313, %129, !dbg !3435
  %315 = icmp eq i64 %313, %301, !dbg !3427
  br i1 %315, label %332, label %306, !dbg !3429, !llvm.loop !3436

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3437
  %319 = and i1 %318, %110, !dbg !3437
  call void @llvm.dbg.value(metadata i64 1, metadata !3141, metadata !DIExpression()), !dbg !3438
  br i1 %319, label %320, label %328, !dbg !3437

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !3141, metadata !DIExpression()), !dbg !3438
  %322 = add i64 %321, %129, !dbg !3439
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3441
  %324 = load i8, ptr %323, align 1, !dbg !3441, !tbaa !1037
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3442

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %326, metadata !3141, metadata !DIExpression()), !dbg !3438
  %327 = icmp eq i64 %326, %302, !dbg !3444
  br i1 %327, label %328, label %320, !dbg !3445, !llvm.loop !3446

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3448, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %329, metadata !3136, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 %329, metadata !3450, metadata !DIExpression()), !dbg !3458
  %330 = call i32 @iswprint(i32 noundef %329) #38, !dbg !3460
  %331 = icmp ne i32 %330, 0, !dbg !3461
  call void @llvm.dbg.value(metadata i8 poison, metadata !3132, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %302, metadata !3129, metadata !DIExpression()), !dbg !3405
  br label %332, !dbg !3462

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3132, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %333, metadata !3129, metadata !DIExpression()), !dbg !3405
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3463
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3464
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !3132, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 0, metadata !3129, metadata !DIExpression()), !dbg !3405
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3463
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3464
  call void @llvm.dbg.label(metadata !3158), !dbg !3465
  %336 = select i1 %109, i32 4, i32 2, !dbg !3466
  br label %626, !dbg !3466

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3257
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3468
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3132, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %339, metadata !3129, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %338, metadata !3100, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i1 %340, metadata !3127, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3257
  %341 = icmp ult i64 %339, 2, !dbg !3469
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3470
  br i1 %343, label %439, label %344, !dbg !3470

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %345, metadata !3149, metadata !DIExpression()), !dbg !3472
  br label %346, !dbg !3473

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !3159
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3248
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3474
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3257
  call void @llvm.dbg.value(metadata i8 %352, metadata !3128, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 %351, metadata !3126, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3123, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %349, metadata !3121, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %347, metadata !3107, metadata !DIExpression()), !dbg !3159
  br i1 %342, label %397, label %353, !dbg !3475

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3480

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !3126, metadata !DIExpression()), !dbg !3257
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3483
  br i1 %355, label %372, label %356, !dbg !3483

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3485
  br i1 %357, label %358, label %360, !dbg !3489

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3485
  store i8 39, ptr %359, align 1, !dbg !3485, !tbaa !1037
  br label %360, !dbg !3485

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3489
  call void @llvm.dbg.value(metadata i64 %361, metadata !3107, metadata !DIExpression()), !dbg !3159
  %362 = icmp ult i64 %361, %130, !dbg !3490
  br i1 %362, label %363, label %365, !dbg !3493

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3490
  store i8 36, ptr %364, align 1, !dbg !3490, !tbaa !1037
  br label %365, !dbg !3490

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %366, metadata !3107, metadata !DIExpression()), !dbg !3159
  %367 = icmp ult i64 %366, %130, !dbg !3494
  br i1 %367, label %368, label %370, !dbg !3497

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3494
  store i8 39, ptr %369, align 1, !dbg !3494, !tbaa !1037
  br label %370, !dbg !3494

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3497
  call void @llvm.dbg.value(metadata i64 %371, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 1, metadata !3115, metadata !DIExpression()), !dbg !3159
  br label %372, !dbg !3498

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !3159
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %373, metadata !3107, metadata !DIExpression()), !dbg !3159
  %375 = icmp ult i64 %373, %130, !dbg !3499
  br i1 %375, label %376, label %378, !dbg !3502

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3499
  store i8 92, ptr %377, align 1, !dbg !3499, !tbaa !1037
  br label %378, !dbg !3499

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %379, metadata !3107, metadata !DIExpression()), !dbg !3159
  %380 = icmp ult i64 %379, %130, !dbg !3503
  br i1 %380, label %381, label %385, !dbg !3506

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3503
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3503
  store i8 %383, ptr %384, align 1, !dbg !3503, !tbaa !1037
  br label %385, !dbg !3503

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %386, metadata !3107, metadata !DIExpression()), !dbg !3159
  %387 = icmp ult i64 %386, %130, !dbg !3507
  br i1 %387, label %388, label %393, !dbg !3510

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3507
  %391 = or i8 %390, 48, !dbg !3507
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3507
  store i8 %391, ptr %392, align 1, !dbg !3507, !tbaa !1037
  br label %393, !dbg !3507

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %394, metadata !3107, metadata !DIExpression()), !dbg !3159
  %395 = and i8 %352, 7, !dbg !3511
  %396 = or i8 %395, 48, !dbg !3512
  call void @llvm.dbg.value(metadata i8 %396, metadata !3128, metadata !DIExpression()), !dbg !3257
  br label %404, !dbg !3513

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3514

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3515
  br i1 %399, label %400, label %402, !dbg !3520

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3515
  store i8 92, ptr %401, align 1, !dbg !3515, !tbaa !1037
  br label %402, !dbg !3515

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3520
  call void @llvm.dbg.value(metadata i64 %403, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 0, metadata !3123, metadata !DIExpression()), !dbg !3257
  br label %404, !dbg !3521

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !3159
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3257
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3257
  call void @llvm.dbg.value(metadata i8 %409, metadata !3128, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 %408, metadata !3126, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3123, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %405, metadata !3107, metadata !DIExpression()), !dbg !3159
  %410 = add i64 %349, 1, !dbg !3522
  %411 = icmp ugt i64 %345, %410, !dbg !3524
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3525

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3526
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3526
  br i1 %415, label %416, label %427, !dbg !3526

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3529
  br i1 %417, label %418, label %420, !dbg !3533

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3529
  store i8 39, ptr %419, align 1, !dbg !3529, !tbaa !1037
  br label %420, !dbg !3529

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %421, metadata !3107, metadata !DIExpression()), !dbg !3159
  %422 = icmp ult i64 %421, %130, !dbg !3534
  br i1 %422, label %423, label %425, !dbg !3537

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3534
  store i8 39, ptr %424, align 1, !dbg !3534, !tbaa !1037
  br label %425, !dbg !3534

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3537
  call void @llvm.dbg.value(metadata i64 %426, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 0, metadata !3115, metadata !DIExpression()), !dbg !3159
  br label %427, !dbg !3538

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3539
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %428, metadata !3107, metadata !DIExpression()), !dbg !3159
  %430 = icmp ult i64 %428, %130, !dbg !3540
  br i1 %430, label %431, label %433, !dbg !3543

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3540
  store i8 %409, ptr %432, align 1, !dbg !3540, !tbaa !1037
  br label %433, !dbg !3540

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %434, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %410, metadata !3121, metadata !DIExpression()), !dbg !3248
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3544
  %436 = load i8, ptr %435, align 1, !dbg !3544, !tbaa !1037
  call void @llvm.dbg.value(metadata i8 %436, metadata !3128, metadata !DIExpression()), !dbg !3257
  br label %346, !dbg !3545, !llvm.loop !3546

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !3128, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i1 %340, metadata !3127, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3257
  call void @llvm.dbg.value(metadata i8 %408, metadata !3126, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3123, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %349, metadata !3121, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %405, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %338, metadata !3100, metadata !DIExpression()), !dbg !3159
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3549
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !3159
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !3163
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3248
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3257
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %448, metadata !3128, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3126, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3123, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %445, metadata !3121, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %442, metadata !3108, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %441, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %440, metadata !3100, metadata !DIExpression()), !dbg !3159
  br i1 %112, label %461, label %450, !dbg !3550

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
  br i1 %121, label %462, label %482, !dbg !3552

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3553

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
  %473 = lshr i8 %464, 5, !dbg !3554
  %474 = zext i8 %473 to i64, !dbg !3554
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3555
  %476 = load i32, ptr %475, align 4, !dbg !3555, !tbaa !1028
  %477 = and i8 %464, 31, !dbg !3556
  %478 = zext i8 %477 to i32, !dbg !3556
  %479 = shl nuw i32 1, %478, !dbg !3557
  %480 = and i32 %476, %479, !dbg !3557
  %481 = icmp eq i32 %480, 0, !dbg !3557
  br i1 %481, label %482, label %493, !dbg !3558

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
  br i1 %154, label %493, label %529, !dbg !3559

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3549
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !3159
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !3163
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3560
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3257
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %501, metadata !3128, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %499, metadata !3121, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %496, metadata !3108, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %495, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %494, metadata !3100, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.label(metadata !3156), !dbg !3561
  br i1 %110, label %621, label %503, !dbg !3562

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !3126, metadata !DIExpression()), !dbg !3257
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3564
  br i1 %504, label %521, label %505, !dbg !3564

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3566
  br i1 %506, label %507, label %509, !dbg !3570

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3566
  store i8 39, ptr %508, align 1, !dbg !3566, !tbaa !1037
  br label %509, !dbg !3566

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %510, metadata !3107, metadata !DIExpression()), !dbg !3159
  %511 = icmp ult i64 %510, %502, !dbg !3571
  br i1 %511, label %512, label %514, !dbg !3574

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3571
  store i8 36, ptr %513, align 1, !dbg !3571, !tbaa !1037
  br label %514, !dbg !3571

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %515, metadata !3107, metadata !DIExpression()), !dbg !3159
  %516 = icmp ult i64 %515, %502, !dbg !3575
  br i1 %516, label %517, label %519, !dbg !3578

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3575
  store i8 39, ptr %518, align 1, !dbg !3575, !tbaa !1037
  br label %519, !dbg !3575

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3578
  call void @llvm.dbg.value(metadata i64 %520, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 1, metadata !3115, metadata !DIExpression()), !dbg !3159
  br label %521, !dbg !3579

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3257
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %522, metadata !3107, metadata !DIExpression()), !dbg !3159
  %524 = icmp ult i64 %522, %502, !dbg !3580
  br i1 %524, label %525, label %527, !dbg !3583

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3580
  store i8 92, ptr %526, align 1, !dbg !3580, !tbaa !1037
  br label %527, !dbg !3580

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %502, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %501, metadata !3128, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3126, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %499, metadata !3121, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %496, metadata !3108, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %528, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %494, metadata !3100, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.label(metadata !3157), !dbg !3584
  br label %553, !dbg !3585

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3549
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !3159
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !3163
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3560
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3588
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %538, metadata !3128, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 poison, metadata !3126, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %535, metadata !3121, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %532, metadata !3108, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %531, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %530, metadata !3100, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.label(metadata !3157), !dbg !3584
  %540 = xor i1 %534, true, !dbg !3585
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3585
  br i1 %541, label %553, label %542, !dbg !3585

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3589
  br i1 %543, label %544, label %546, !dbg !3593

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3589
  store i8 39, ptr %545, align 1, !dbg !3589, !tbaa !1037
  br label %546, !dbg !3589

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %547, metadata !3107, metadata !DIExpression()), !dbg !3159
  %548 = icmp ult i64 %547, %539, !dbg !3594
  br i1 %548, label %549, label %551, !dbg !3597

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3594
  store i8 39, ptr %550, align 1, !dbg !3594, !tbaa !1037
  br label %551, !dbg !3594

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %552, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 0, metadata !3115, metadata !DIExpression()), !dbg !3159
  br label %553, !dbg !3598

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3257
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %561, metadata !3107, metadata !DIExpression()), !dbg !3159
  %563 = icmp ult i64 %561, %554, !dbg !3599
  br i1 %563, label %564, label %566, !dbg !3602

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3599
  store i8 %555, ptr %565, align 1, !dbg !3599, !tbaa !1037
  br label %566, !dbg !3599

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3602
  call void @llvm.dbg.value(metadata i64 %567, metadata !3107, metadata !DIExpression()), !dbg !3159
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3603
  call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3159
  br label %569, !dbg !3604

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3549
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !3159
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !3163
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3560
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %576, metadata !3121, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 poison, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %572, metadata !3108, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %571, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %570, metadata !3100, metadata !DIExpression()), !dbg !3159
  %578 = add i64 %576, 1, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %578, metadata !3121, metadata !DIExpression()), !dbg !3248
  br label %122, !dbg !3606, !llvm.loop !3607

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !3098, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %125, metadata !3108, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %124, metadata !3107, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %123, metadata !3100, metadata !DIExpression()), !dbg !3159
  %580 = icmp ne i64 %124, 0, !dbg !3609
  %581 = xor i1 %110, true, !dbg !3611
  %582 = or i1 %580, %581, !dbg !3611
  %583 = or i1 %582, %111, !dbg !3611
  br i1 %583, label %584, label %621, !dbg !3611

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3612
  %586 = xor i1 %126, true, !dbg !3612
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3612
  br i1 %587, label %595, label %588, !dbg !3612

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3614

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3616
  br label %636, !dbg !3618

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3619
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3621
  br i1 %594, label %27, label %595, !dbg !3621

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3622
  %598 = or i1 %597, %596, !dbg !3624
  br i1 %598, label %614, label %599, !dbg !3624

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !3109, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %124, metadata !3107, metadata !DIExpression()), !dbg !3159
  %600 = load i8, ptr %107, align 1, !dbg !3625, !tbaa !1037
  %601 = icmp eq i8 %600, 0, !dbg !3628
  br i1 %601, label %614, label %602, !dbg !3628

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !3109, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %605, metadata !3107, metadata !DIExpression()), !dbg !3159
  %606 = icmp ult i64 %605, %130, !dbg !3629
  br i1 %606, label %607, label %609, !dbg !3632

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3629
  store i8 %603, ptr %608, align 1, !dbg !3629, !tbaa !1037
  br label %609, !dbg !3629

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %610, metadata !3107, metadata !DIExpression()), !dbg !3159
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %611, metadata !3109, metadata !DIExpression()), !dbg !3159
  %612 = load i8, ptr %611, align 1, !dbg !3625, !tbaa !1037
  %613 = icmp eq i8 %612, 0, !dbg !3628
  br i1 %613, label %614, label %602, !dbg !3628, !llvm.loop !3634

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3235
  call void @llvm.dbg.value(metadata i64 %615, metadata !3107, metadata !DIExpression()), !dbg !3159
  %616 = icmp ult i64 %615, %130, !dbg !3636
  br i1 %616, label %617, label %636, !dbg !3638

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3639
  store i8 0, ptr %618, align 1, !dbg !3640, !tbaa !1037
  br label %636, !dbg !3639

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !3158), !dbg !3465
  %620 = icmp eq i32 %103, 2, !dbg !3641
  br i1 %620, label %626, label %630, !dbg !3466

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !3158), !dbg !3465
  %624 = icmp eq i32 %103, 2, !dbg !3641
  %625 = select i1 %109, i32 4, i32 2, !dbg !3466
  br i1 %624, label %626, label %630, !dbg !3466

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3466

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !3101, metadata !DIExpression()), !dbg !3159
  %634 = and i32 %5, -3, !dbg !3642
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3643
  br label %636, !dbg !3644

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3645
}

; Function Attrs: nounwind
declare !dbg !3646 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3649 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3651 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i64 %1, metadata !3656, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata ptr %2, metadata !3657, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3664, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr null, metadata !3665, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %2, metadata !3666, metadata !DIExpression()), !dbg !3672
  %4 = icmp eq ptr %2, null, !dbg !3674
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3674
  call void @llvm.dbg.value(metadata ptr %5, metadata !3667, metadata !DIExpression()), !dbg !3672
  %6 = tail call ptr @__errno_location() #41, !dbg !3675
  %7 = load i32, ptr %6, align 4, !dbg !3675, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %7, metadata !3668, metadata !DIExpression()), !dbg !3672
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3676
  %9 = load i32, ptr %8, align 4, !dbg !3676, !tbaa !3041
  %10 = or i32 %9, 1, !dbg !3677
  call void @llvm.dbg.value(metadata i32 %10, metadata !3669, metadata !DIExpression()), !dbg !3672
  %11 = load i32, ptr %5, align 8, !dbg !3678, !tbaa !2991
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3679
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3680
  %14 = load ptr, ptr %13, align 8, !dbg !3680, !tbaa !3062
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3681
  %16 = load ptr, ptr %15, align 8, !dbg !3681, !tbaa !3065
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3682
  %18 = add i64 %17, 1, !dbg !3683
  call void @llvm.dbg.value(metadata i64 %18, metadata !3670, metadata !DIExpression()), !dbg !3672
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3684
  call void @llvm.dbg.value(metadata ptr %19, metadata !3671, metadata !DIExpression()), !dbg !3672
  %20 = load i32, ptr %5, align 8, !dbg !3685, !tbaa !2991
  %21 = load ptr, ptr %13, align 8, !dbg !3686, !tbaa !3062
  %22 = load ptr, ptr %15, align 8, !dbg !3687, !tbaa !3065
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3688
  store i32 %7, ptr %6, align 4, !dbg !3689, !tbaa !1028
  ret ptr %19, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3660 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %1, metadata !3664, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %2, metadata !3665, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %3, metadata !3666, metadata !DIExpression()), !dbg !3691
  %5 = icmp eq ptr %3, null, !dbg !3692
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3692
  call void @llvm.dbg.value(metadata ptr %6, metadata !3667, metadata !DIExpression()), !dbg !3691
  %7 = tail call ptr @__errno_location() #41, !dbg !3693
  %8 = load i32, ptr %7, align 4, !dbg !3693, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %8, metadata !3668, metadata !DIExpression()), !dbg !3691
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3694
  %10 = load i32, ptr %9, align 4, !dbg !3694, !tbaa !3041
  %11 = icmp eq ptr %2, null, !dbg !3695
  %12 = zext i1 %11 to i32, !dbg !3695
  %13 = or i32 %10, %12, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %13, metadata !3669, metadata !DIExpression()), !dbg !3691
  %14 = load i32, ptr %6, align 8, !dbg !3697, !tbaa !2991
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3698
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3699
  %17 = load ptr, ptr %16, align 8, !dbg !3699, !tbaa !3062
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3700
  %19 = load ptr, ptr %18, align 8, !dbg !3700, !tbaa !3065
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3701
  %21 = add i64 %20, 1, !dbg !3702
  call void @llvm.dbg.value(metadata i64 %21, metadata !3670, metadata !DIExpression()), !dbg !3691
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3703
  call void @llvm.dbg.value(metadata ptr %22, metadata !3671, metadata !DIExpression()), !dbg !3691
  %23 = load i32, ptr %6, align 8, !dbg !3704, !tbaa !2991
  %24 = load ptr, ptr %16, align 8, !dbg !3705, !tbaa !3062
  %25 = load ptr, ptr %18, align 8, !dbg !3706, !tbaa !3065
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3707
  store i32 %8, ptr %7, align 4, !dbg !3708, !tbaa !1028
  br i1 %11, label %28, label %27, !dbg !3709

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3710, !tbaa !3712
  br label %28, !dbg !3713

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3714
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3715 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3720, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %1, metadata !3717, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 1, metadata !3718, metadata !DIExpression()), !dbg !3722
  %2 = load i32, ptr @nslots, align 4, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 1, metadata !3718, metadata !DIExpression()), !dbg !3722
  %3 = icmp sgt i32 %2, 1, !dbg !3723
  br i1 %3, label %4, label %6, !dbg !3725

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3723
  br label %10, !dbg !3725

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3726
  %8 = load ptr, ptr %7, align 8, !dbg !3726, !tbaa !3728
  %9 = icmp eq ptr %8, @slot0, !dbg !3730
  br i1 %9, label %17, label %16, !dbg !3731

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3718, metadata !DIExpression()), !dbg !3722
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3732
  %13 = load ptr, ptr %12, align 8, !dbg !3732, !tbaa !3728
  tail call void @free(ptr noundef %13) #38, !dbg !3733
  %14 = add nuw nsw i64 %11, 1, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %14, metadata !3718, metadata !DIExpression()), !dbg !3722
  %15 = icmp eq i64 %14, %5, !dbg !3723
  br i1 %15, label %6, label %10, !dbg !3725, !llvm.loop !3735

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3737
  store i64 256, ptr @slotvec0, align 8, !dbg !3739, !tbaa !3740
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3741, !tbaa !3728
  br label %17, !dbg !3742

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3743
  br i1 %18, label %20, label %19, !dbg !3745

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3746
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3748, !tbaa !955
  br label %20, !dbg !3749

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3750, !tbaa !1028
  ret void, !dbg !3751
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3752 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3755 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %1, metadata !3758, metadata !DIExpression()), !dbg !3759
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3760
  ret ptr %3, !dbg !3761
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3762 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3766, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata ptr %1, metadata !3767, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i64 %2, metadata !3768, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata ptr %3, metadata !3769, metadata !DIExpression()), !dbg !3782
  %6 = tail call ptr @__errno_location() #41, !dbg !3783
  %7 = load i32, ptr %6, align 4, !dbg !3783, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %7, metadata !3770, metadata !DIExpression()), !dbg !3782
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3784, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %8, metadata !3771, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3772, metadata !DIExpression()), !dbg !3782
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3785
  br i1 %9, label %10, label %11, !dbg !3785

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3787
  unreachable, !dbg !3787

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3788, !tbaa !1028
  %13 = icmp sgt i32 %12, %0, !dbg !3789
  br i1 %13, label %32, label %14, !dbg !3790

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3791
  call void @llvm.dbg.value(metadata i1 %15, metadata !3773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3792
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3793
  %16 = sext i32 %12 to i64, !dbg !3794
  call void @llvm.dbg.value(metadata i64 %16, metadata !3776, metadata !DIExpression()), !dbg !3792
  store i64 %16, ptr %5, align 8, !dbg !3795, !tbaa !3712
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3796
  %18 = add nuw nsw i32 %0, 1, !dbg !3797
  %19 = sub i32 %18, %12, !dbg !3798
  %20 = sext i32 %19 to i64, !dbg !3799
  call void @llvm.dbg.value(metadata ptr %5, metadata !3776, metadata !DIExpression(DW_OP_deref)), !dbg !3792
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3800
  call void @llvm.dbg.value(metadata ptr %21, metadata !3771, metadata !DIExpression()), !dbg !3782
  store ptr %21, ptr @slotvec, align 8, !dbg !3801, !tbaa !955
  br i1 %15, label %22, label %23, !dbg !3802

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3803, !tbaa.struct !3805
  br label %23, !dbg !3806

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3807, !tbaa !1028
  %25 = sext i32 %24 to i64, !dbg !3808
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3808
  %27 = load i64, ptr %5, align 8, !dbg !3809, !tbaa !3712
  call void @llvm.dbg.value(metadata i64 %27, metadata !3776, metadata !DIExpression()), !dbg !3792
  %28 = sub nsw i64 %27, %25, !dbg !3810
  %29 = shl i64 %28, 4, !dbg !3811
  call void @llvm.dbg.value(metadata ptr %26, metadata !3193, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i32 0, metadata !3196, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 %29, metadata !3197, metadata !DIExpression()), !dbg !3812
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3814
  %30 = load i64, ptr %5, align 8, !dbg !3815, !tbaa !3712
  call void @llvm.dbg.value(metadata i64 %30, metadata !3776, metadata !DIExpression()), !dbg !3792
  %31 = trunc i64 %30 to i32, !dbg !3815
  store i32 %31, ptr @nslots, align 4, !dbg !3816, !tbaa !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3817
  br label %32, !dbg !3818

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3782
  call void @llvm.dbg.value(metadata ptr %33, metadata !3771, metadata !DIExpression()), !dbg !3782
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3819
  %36 = load i64, ptr %35, align 8, !dbg !3820, !tbaa !3740
  call void @llvm.dbg.value(metadata i64 %36, metadata !3777, metadata !DIExpression()), !dbg !3821
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3822
  %38 = load ptr, ptr %37, align 8, !dbg !3822, !tbaa !3728
  call void @llvm.dbg.value(metadata ptr %38, metadata !3779, metadata !DIExpression()), !dbg !3821
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3823
  %40 = load i32, ptr %39, align 4, !dbg !3823, !tbaa !3041
  %41 = or i32 %40, 1, !dbg !3824
  call void @llvm.dbg.value(metadata i32 %41, metadata !3780, metadata !DIExpression()), !dbg !3821
  %42 = load i32, ptr %3, align 8, !dbg !3825, !tbaa !2991
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3826
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3827
  %45 = load ptr, ptr %44, align 8, !dbg !3827, !tbaa !3062
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3828
  %47 = load ptr, ptr %46, align 8, !dbg !3828, !tbaa !3065
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %48, metadata !3781, metadata !DIExpression()), !dbg !3821
  %49 = icmp ugt i64 %36, %48, !dbg !3830
  br i1 %49, label %60, label %50, !dbg !3832

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %51, metadata !3777, metadata !DIExpression()), !dbg !3821
  store i64 %51, ptr %35, align 8, !dbg !3835, !tbaa !3740
  %52 = icmp eq ptr %38, @slot0, !dbg !3836
  br i1 %52, label %54, label %53, !dbg !3838

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3839
  br label %54, !dbg !3839

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3840
  call void @llvm.dbg.value(metadata ptr %55, metadata !3779, metadata !DIExpression()), !dbg !3821
  store ptr %55, ptr %37, align 8, !dbg !3841, !tbaa !3728
  %56 = load i32, ptr %3, align 8, !dbg !3842, !tbaa !2991
  %57 = load ptr, ptr %44, align 8, !dbg !3843, !tbaa !3062
  %58 = load ptr, ptr %46, align 8, !dbg !3844, !tbaa !3065
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3845
  br label %60, !dbg !3846

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3821
  call void @llvm.dbg.value(metadata ptr %61, metadata !3779, metadata !DIExpression()), !dbg !3821
  store i32 %7, ptr %6, align 4, !dbg !3847, !tbaa !1028
  ret ptr %61, !dbg !3848
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3849 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata ptr %1, metadata !3854, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %2, metadata !3855, metadata !DIExpression()), !dbg !3856
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3857
  ret ptr %4, !dbg !3858
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3859 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3861, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i32 0, metadata !3757, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata ptr %0, metadata !3758, metadata !DIExpression()), !dbg !3863
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3865
  ret ptr %2, !dbg !3866
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3867 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3871, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i64 %1, metadata !3872, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 0, metadata !3853, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %1, metadata !3855, metadata !DIExpression()), !dbg !3874
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3876
  ret ptr %3, !dbg !3877
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3878 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3882, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 %1, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata ptr %2, metadata !3884, metadata !DIExpression()), !dbg !3886
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3887
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3885, metadata !DIExpression()), !dbg !3888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889), !dbg !3892
  call void @llvm.dbg.value(metadata i32 %1, metadata !3893, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3898, metadata !DIExpression()), !dbg !3901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3901, !alias.scope !3889
  %5 = icmp eq i32 %1, 10, !dbg !3902
  br i1 %5, label %6, label %7, !dbg !3904

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3905, !noalias !3889
  unreachable, !dbg !3905

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3906, !tbaa !2991, !alias.scope !3889
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3907
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3908
  ret ptr %8, !dbg !3909
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3910 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3914, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 %1, metadata !3915, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata ptr %2, metadata !3916, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i64 %3, metadata !3917, metadata !DIExpression()), !dbg !3919
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3920
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3918, metadata !DIExpression()), !dbg !3921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3922), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %1, metadata !3893, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3898, metadata !DIExpression()), !dbg !3928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3928, !alias.scope !3922
  %6 = icmp eq i32 %1, 10, !dbg !3929
  br i1 %6, label %7, label %8, !dbg !3930

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3931, !noalias !3922
  unreachable, !dbg !3931

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3932, !tbaa !2991, !alias.scope !3922
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3933
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3934
  ret ptr %9, !dbg !3935
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3936 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3940, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %1, metadata !3941, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 0, metadata !3882, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata ptr %1, metadata !3884, metadata !DIExpression()), !dbg !3943
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3945
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3885, metadata !DIExpression()), !dbg !3946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3947), !dbg !3950
  call void @llvm.dbg.value(metadata i32 %0, metadata !3893, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3898, metadata !DIExpression()), !dbg !3953
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3953, !alias.scope !3947
  %4 = icmp eq i32 %0, 10, !dbg !3954
  br i1 %4, label %5, label %6, !dbg !3955

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3956, !noalias !3947
  unreachable, !dbg !3956

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3957, !tbaa !2991, !alias.scope !3947
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3958
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3959
  ret ptr %7, !dbg !3960
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3961 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata ptr %1, metadata !3966, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %2, metadata !3967, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 0, metadata !3914, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 %0, metadata !3915, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %1, metadata !3916, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i64 %2, metadata !3917, metadata !DIExpression()), !dbg !3969
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3971
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3918, metadata !DIExpression()), !dbg !3972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3973), !dbg !3976
  call void @llvm.dbg.value(metadata i32 %0, metadata !3893, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3898, metadata !DIExpression()), !dbg !3979
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3979, !alias.scope !3973
  %5 = icmp eq i32 %0, 10, !dbg !3980
  br i1 %5, label %6, label %7, !dbg !3981

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3982, !noalias !3973
  unreachable, !dbg !3982

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3983, !tbaa !2991, !alias.scope !3973
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3984
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3985
  ret ptr %8, !dbg !3986
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3987 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3991, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %1, metadata !3992, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i8 %2, metadata !3993, metadata !DIExpression()), !dbg !3995
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3996
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3994, metadata !DIExpression()), !dbg !3997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3998, !tbaa.struct !3999
  call void @llvm.dbg.value(metadata ptr %4, metadata !3008, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8 %2, metadata !3009, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8 %2, metadata !3011, metadata !DIExpression()), !dbg !4000
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4002
  %6 = lshr i8 %2, 5, !dbg !4003
  %7 = zext i8 %6 to i64, !dbg !4003
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4004
  call void @llvm.dbg.value(metadata ptr %8, metadata !3012, metadata !DIExpression()), !dbg !4000
  %9 = and i8 %2, 31, !dbg !4005
  %10 = zext i8 %9 to i32, !dbg !4005
  call void @llvm.dbg.value(metadata i32 %10, metadata !3014, metadata !DIExpression()), !dbg !4000
  %11 = load i32, ptr %8, align 4, !dbg !4006, !tbaa !1028
  %12 = lshr i32 %11, %10, !dbg !4007
  call void @llvm.dbg.value(metadata i32 %12, metadata !3015, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4000
  %13 = and i32 %12, 1, !dbg !4008
  %14 = xor i32 %13, 1, !dbg !4008
  %15 = shl nuw i32 %14, %10, !dbg !4009
  %16 = xor i32 %15, %11, !dbg !4010
  store i32 %16, ptr %8, align 4, !dbg !4010, !tbaa !1028
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4011
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4012
  ret ptr %17, !dbg !4013
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !4014 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4018, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i8 %1, metadata !4019, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata ptr %0, metadata !3991, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 -1, metadata !3992, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i8 %1, metadata !3993, metadata !DIExpression()), !dbg !4021
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4025, !tbaa.struct !3999
  call void @llvm.dbg.value(metadata ptr %3, metadata !3008, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8 %1, metadata !3009, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8 %1, metadata !3011, metadata !DIExpression()), !dbg !4026
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4028
  %5 = lshr i8 %1, 5, !dbg !4029
  %6 = zext i8 %5 to i64, !dbg !4029
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4030
  call void @llvm.dbg.value(metadata ptr %7, metadata !3012, metadata !DIExpression()), !dbg !4026
  %8 = and i8 %1, 31, !dbg !4031
  %9 = zext i8 %8 to i32, !dbg !4031
  call void @llvm.dbg.value(metadata i32 %9, metadata !3014, metadata !DIExpression()), !dbg !4026
  %10 = load i32, ptr %7, align 4, !dbg !4032, !tbaa !1028
  %11 = lshr i32 %10, %9, !dbg !4033
  call void @llvm.dbg.value(metadata i32 %11, metadata !3015, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4026
  %12 = and i32 %11, 1, !dbg !4034
  %13 = xor i32 %12, 1, !dbg !4034
  %14 = shl nuw i32 %13, %9, !dbg !4035
  %15 = xor i32 %14, %10, !dbg !4036
  store i32 %15, ptr %7, align 4, !dbg !4036, !tbaa !1028
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4037
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4038
  ret ptr %16, !dbg !4039
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4040 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %0, metadata !4018, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8 58, metadata !4019, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata ptr %0, metadata !3991, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 -1, metadata !3992, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i8 58, metadata !3993, metadata !DIExpression()), !dbg !4046
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !4048
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4050, !tbaa.struct !3999
  call void @llvm.dbg.value(metadata ptr %2, metadata !3008, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8 58, metadata !3009, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8 58, metadata !3011, metadata !DIExpression()), !dbg !4051
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4053
  call void @llvm.dbg.value(metadata ptr %3, metadata !3012, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i32 26, metadata !3014, metadata !DIExpression()), !dbg !4051
  %4 = load i32, ptr %3, align 4, !dbg !4054, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %4, metadata !3015, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4051
  %5 = or i32 %4, 67108864, !dbg !4055
  store i32 %5, ptr %3, align 4, !dbg !4055, !tbaa !1028
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4056
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !4057
  ret ptr %6, !dbg !4058
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4059 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4061, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i64 %1, metadata !4062, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata ptr %0, metadata !3991, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 %1, metadata !3992, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 58, metadata !3993, metadata !DIExpression()), !dbg !4064
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4066
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4068, !tbaa.struct !3999
  call void @llvm.dbg.value(metadata ptr %3, metadata !3008, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8 58, metadata !3009, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8 58, metadata !3011, metadata !DIExpression()), !dbg !4069
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4071
  call void @llvm.dbg.value(metadata ptr %4, metadata !3012, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i32 26, metadata !3014, metadata !DIExpression()), !dbg !4069
  %5 = load i32, ptr %4, align 4, !dbg !4072, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %5, metadata !3015, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4069
  %6 = or i32 %5, 67108864, !dbg !4073
  store i32 %6, ptr %4, align 4, !dbg !4073, !tbaa !1028
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4074
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4075
  ret ptr %7, !dbg !4076
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4077 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3898, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4083
  call void @llvm.dbg.value(metadata i32 %0, metadata !4079, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i32 %1, metadata !4080, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata ptr %2, metadata !4081, metadata !DIExpression()), !dbg !4085
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4086
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4082, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 %1, metadata !3893, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i32 0, metadata !3898, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4088
  %5 = icmp eq i32 %1, 10, !dbg !4089
  br i1 %5, label %6, label %7, !dbg !4090

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4091, !noalias !4092
  unreachable, !dbg !4091

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3898, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4088
  store i32 %1, ptr %4, align 8, !dbg !4095, !tbaa.struct !3999
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4095
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %4, metadata !3008, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i8 58, metadata !3009, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i8 58, metadata !3011, metadata !DIExpression()), !dbg !4096
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4098
  call void @llvm.dbg.value(metadata ptr %9, metadata !3012, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i32 26, metadata !3014, metadata !DIExpression()), !dbg !4096
  %10 = load i32, ptr %9, align 4, !dbg !4099, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %10, metadata !3015, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4096
  %11 = or i32 %10, 67108864, !dbg !4100
  store i32 %11, ptr %9, align 4, !dbg !4100, !tbaa !1028
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4101
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4102
  ret ptr %12, !dbg !4103
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4104 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4108, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %1, metadata !4109, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %2, metadata !4110, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata ptr %3, metadata !4111, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 %0, metadata !4113, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %1, metadata !4118, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %2, metadata !4119, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %3, metadata !4120, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i64 -1, metadata !4121, metadata !DIExpression()), !dbg !4123
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4125
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4122, metadata !DIExpression()), !dbg !4126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4127, !tbaa.struct !3999
  call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !4128
  store i32 10, ptr %5, align 8, !dbg !4130, !tbaa !2991
  %6 = icmp ne ptr %1, null, !dbg !4131
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4132
  br i1 %8, label %10, label %9, !dbg !4132

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4133
  unreachable, !dbg !4133

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4134
  store ptr %1, ptr %11, align 8, !dbg !4135, !tbaa !3062
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4136
  store ptr %2, ptr %12, align 8, !dbg !4137, !tbaa !3065
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4138
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4139
  ret ptr %13, !dbg !4140
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4114 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4113, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %1, metadata !4118, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %2, metadata !4119, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %3, metadata !4120, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i64 %4, metadata !4121, metadata !DIExpression()), !dbg !4141
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4122, metadata !DIExpression()), !dbg !4143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4144, !tbaa.struct !3999
  call void @llvm.dbg.value(metadata ptr %6, metadata !3048, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %6, metadata !3048, metadata !DIExpression()), !dbg !4145
  store i32 10, ptr %6, align 8, !dbg !4147, !tbaa !2991
  %7 = icmp ne ptr %1, null, !dbg !4148
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4149
  br i1 %9, label %11, label %10, !dbg !4149

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !4150
  unreachable, !dbg !4150

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4151
  store ptr %1, ptr %12, align 8, !dbg !4152, !tbaa !3062
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4153
  store ptr %2, ptr %13, align 8, !dbg !4154, !tbaa !3065
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4155
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !4156
  ret ptr %14, !dbg !4157
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4158 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata ptr %1, metadata !4163, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata ptr %2, metadata !4164, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i32 0, metadata !4108, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata ptr %0, metadata !4109, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata ptr %1, metadata !4110, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata ptr %2, metadata !4111, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i32 0, metadata !4113, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata ptr %0, metadata !4118, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata ptr %1, metadata !4119, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata ptr %2, metadata !4120, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i64 -1, metadata !4121, metadata !DIExpression()), !dbg !4168
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4170
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4122, metadata !DIExpression()), !dbg !4171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4172, !tbaa.struct !3999
  call void @llvm.dbg.value(metadata ptr %4, metadata !3048, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %1, metadata !3050, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %4, metadata !3048, metadata !DIExpression()), !dbg !4173
  store i32 10, ptr %4, align 8, !dbg !4175, !tbaa !2991
  %5 = icmp ne ptr %0, null, !dbg !4176
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4177
  br i1 %7, label %9, label %8, !dbg !4177

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4178
  unreachable, !dbg !4178

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4179
  store ptr %0, ptr %10, align 8, !dbg !4180, !tbaa !3062
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4181
  store ptr %1, ptr %11, align 8, !dbg !4182, !tbaa !3065
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4183
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4184
  ret ptr %12, !dbg !4185
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4186 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4190, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %1, metadata !4191, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %2, metadata !4192, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %3, metadata !4193, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i32 0, metadata !4113, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata ptr %0, metadata !4118, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata ptr %1, metadata !4119, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata ptr %2, metadata !4120, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %3, metadata !4121, metadata !DIExpression()), !dbg !4195
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4197
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4122, metadata !DIExpression()), !dbg !4198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4199, !tbaa.struct !3999
  call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %1, metadata !3050, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !4200
  store i32 10, ptr %5, align 8, !dbg !4202, !tbaa !2991
  %6 = icmp ne ptr %0, null, !dbg !4203
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4204
  br i1 %8, label %10, label %9, !dbg !4204

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4205
  unreachable, !dbg !4205

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4206
  store ptr %0, ptr %11, align 8, !dbg !4207, !tbaa !3062
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4208
  store ptr %1, ptr %12, align 8, !dbg !4209, !tbaa !3065
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4210
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4211
  ret ptr %13, !dbg !4212
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4213 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4217, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %1, metadata !4218, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %2, metadata !4219, metadata !DIExpression()), !dbg !4220
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4221
  ret ptr %4, !dbg !4222
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4223 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4227, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i64 %1, metadata !4228, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i32 0, metadata !4217, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 %1, metadata !4219, metadata !DIExpression()), !dbg !4230
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4232
  ret ptr %3, !dbg !4233
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4238, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata ptr %1, metadata !4239, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i32 %0, metadata !4217, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata ptr %1, metadata !4218, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 -1, metadata !4219, metadata !DIExpression()), !dbg !4241
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4243
  ret ptr %3, !dbg !4244
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4245 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4249, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i32 0, metadata !4238, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %0, metadata !4239, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i32 0, metadata !4217, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i64 -1, metadata !4219, metadata !DIExpression()), !dbg !4253
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4255
  ret ptr %2, !dbg !4256
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4257 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4296, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr %1, metadata !4297, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr %2, metadata !4298, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr %3, metadata !4299, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr %4, metadata !4300, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %5, metadata !4301, metadata !DIExpression()), !dbg !4302
  %7 = icmp eq ptr %1, null, !dbg !4303
  br i1 %7, label %10, label %8, !dbg !4305

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.99, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !4306
  br label %12, !dbg !4306

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.100, ptr noundef %2, ptr noundef %3) #38, !dbg !4307
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.3.102, i32 noundef 5) #38, !dbg !4308
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !4308
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !4309
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.5.104, i32 noundef 5) #38, !dbg !4310
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.105) #38, !dbg !4310
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !4311
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
  ], !dbg !4312

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.7.106, i32 noundef 5) #38, !dbg !4313
  %21 = load ptr, ptr %4, align 8, !dbg !4313, !tbaa !955
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !4313
  br label %147, !dbg !4315

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.8.107, i32 noundef 5) #38, !dbg !4316
  %25 = load ptr, ptr %4, align 8, !dbg !4316, !tbaa !955
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4316
  %27 = load ptr, ptr %26, align 8, !dbg !4316, !tbaa !955
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !4316
  br label %147, !dbg !4317

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.9.108, i32 noundef 5) #38, !dbg !4318
  %31 = load ptr, ptr %4, align 8, !dbg !4318, !tbaa !955
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4318
  %33 = load ptr, ptr %32, align 8, !dbg !4318, !tbaa !955
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4318
  %35 = load ptr, ptr %34, align 8, !dbg !4318, !tbaa !955
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !4318
  br label %147, !dbg !4319

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.10.109, i32 noundef 5) #38, !dbg !4320
  %39 = load ptr, ptr %4, align 8, !dbg !4320, !tbaa !955
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4320
  %41 = load ptr, ptr %40, align 8, !dbg !4320, !tbaa !955
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4320
  %43 = load ptr, ptr %42, align 8, !dbg !4320, !tbaa !955
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4320
  %45 = load ptr, ptr %44, align 8, !dbg !4320, !tbaa !955
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !4320
  br label %147, !dbg !4321

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.11.110, i32 noundef 5) #38, !dbg !4322
  %49 = load ptr, ptr %4, align 8, !dbg !4322, !tbaa !955
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4322
  %51 = load ptr, ptr %50, align 8, !dbg !4322, !tbaa !955
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4322
  %53 = load ptr, ptr %52, align 8, !dbg !4322, !tbaa !955
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4322
  %55 = load ptr, ptr %54, align 8, !dbg !4322, !tbaa !955
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4322
  %57 = load ptr, ptr %56, align 8, !dbg !4322, !tbaa !955
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !4322
  br label %147, !dbg !4323

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.12.111, i32 noundef 5) #38, !dbg !4324
  %61 = load ptr, ptr %4, align 8, !dbg !4324, !tbaa !955
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4324
  %63 = load ptr, ptr %62, align 8, !dbg !4324, !tbaa !955
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4324
  %65 = load ptr, ptr %64, align 8, !dbg !4324, !tbaa !955
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4324
  %67 = load ptr, ptr %66, align 8, !dbg !4324, !tbaa !955
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4324
  %69 = load ptr, ptr %68, align 8, !dbg !4324, !tbaa !955
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4324
  %71 = load ptr, ptr %70, align 8, !dbg !4324, !tbaa !955
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !4324
  br label %147, !dbg !4325

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.13.112, i32 noundef 5) #38, !dbg !4326
  %75 = load ptr, ptr %4, align 8, !dbg !4326, !tbaa !955
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4326
  %77 = load ptr, ptr %76, align 8, !dbg !4326, !tbaa !955
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4326
  %79 = load ptr, ptr %78, align 8, !dbg !4326, !tbaa !955
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4326
  %81 = load ptr, ptr %80, align 8, !dbg !4326, !tbaa !955
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4326
  %83 = load ptr, ptr %82, align 8, !dbg !4326, !tbaa !955
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4326
  %85 = load ptr, ptr %84, align 8, !dbg !4326, !tbaa !955
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4326
  %87 = load ptr, ptr %86, align 8, !dbg !4326, !tbaa !955
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !4326
  br label %147, !dbg !4327

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.14.113, i32 noundef 5) #38, !dbg !4328
  %91 = load ptr, ptr %4, align 8, !dbg !4328, !tbaa !955
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4328
  %93 = load ptr, ptr %92, align 8, !dbg !4328, !tbaa !955
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4328
  %95 = load ptr, ptr %94, align 8, !dbg !4328, !tbaa !955
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4328
  %97 = load ptr, ptr %96, align 8, !dbg !4328, !tbaa !955
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4328
  %99 = load ptr, ptr %98, align 8, !dbg !4328, !tbaa !955
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4328
  %101 = load ptr, ptr %100, align 8, !dbg !4328, !tbaa !955
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4328
  %103 = load ptr, ptr %102, align 8, !dbg !4328, !tbaa !955
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4328
  %105 = load ptr, ptr %104, align 8, !dbg !4328, !tbaa !955
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !4328
  br label %147, !dbg !4329

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.15.114, i32 noundef 5) #38, !dbg !4330
  %109 = load ptr, ptr %4, align 8, !dbg !4330, !tbaa !955
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4330
  %111 = load ptr, ptr %110, align 8, !dbg !4330, !tbaa !955
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4330
  %113 = load ptr, ptr %112, align 8, !dbg !4330, !tbaa !955
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4330
  %115 = load ptr, ptr %114, align 8, !dbg !4330, !tbaa !955
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4330
  %117 = load ptr, ptr %116, align 8, !dbg !4330, !tbaa !955
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4330
  %119 = load ptr, ptr %118, align 8, !dbg !4330, !tbaa !955
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4330
  %121 = load ptr, ptr %120, align 8, !dbg !4330, !tbaa !955
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4330
  %123 = load ptr, ptr %122, align 8, !dbg !4330, !tbaa !955
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4330
  %125 = load ptr, ptr %124, align 8, !dbg !4330, !tbaa !955
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !4330
  br label %147, !dbg !4331

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.16.115, i32 noundef 5) #38, !dbg !4332
  %129 = load ptr, ptr %4, align 8, !dbg !4332, !tbaa !955
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4332
  %131 = load ptr, ptr %130, align 8, !dbg !4332, !tbaa !955
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4332
  %133 = load ptr, ptr %132, align 8, !dbg !4332, !tbaa !955
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4332
  %135 = load ptr, ptr %134, align 8, !dbg !4332, !tbaa !955
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4332
  %137 = load ptr, ptr %136, align 8, !dbg !4332, !tbaa !955
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4332
  %139 = load ptr, ptr %138, align 8, !dbg !4332, !tbaa !955
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4332
  %141 = load ptr, ptr %140, align 8, !dbg !4332, !tbaa !955
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4332
  %143 = load ptr, ptr %142, align 8, !dbg !4332, !tbaa !955
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4332
  %145 = load ptr, ptr %144, align 8, !dbg !4332, !tbaa !955
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !4332
  br label %147, !dbg !4333

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4334
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4335 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4339, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr %1, metadata !4340, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr %2, metadata !4341, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr %3, metadata !4342, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr %4, metadata !4343, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i64 0, metadata !4344, metadata !DIExpression()), !dbg !4345
  br label %6, !dbg !4346

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4348
  call void @llvm.dbg.value(metadata i64 %7, metadata !4344, metadata !DIExpression()), !dbg !4345
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4349
  %9 = load ptr, ptr %8, align 8, !dbg !4349, !tbaa !955
  %10 = icmp eq ptr %9, null, !dbg !4351
  %11 = add i64 %7, 1, !dbg !4352
  call void @llvm.dbg.value(metadata i64 %11, metadata !4344, metadata !DIExpression()), !dbg !4345
  br i1 %10, label %12, label %6, !dbg !4351, !llvm.loop !4353

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4355
  ret void, !dbg !4356
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4357 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4372, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %1, metadata !4373, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %2, metadata !4374, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %3, metadata !4375, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4376, metadata !DIExpression()), !dbg !4381
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4382
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4378, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i64 0, metadata !4377, metadata !DIExpression()), !dbg !4380
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4377, metadata !DIExpression()), !dbg !4380
  %10 = icmp sgt i32 %9, -1, !dbg !4384
  br i1 %10, label %18, label %11, !dbg !4384

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4384
  store i32 %12, ptr %7, align 8, !dbg !4384
  %13 = icmp ult i32 %9, -7, !dbg !4384
  br i1 %13, label %14, label %18, !dbg !4384

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4384
  %16 = sext i32 %9 to i64, !dbg !4384
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4384
  br label %22, !dbg !4384

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4384
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4384
  store ptr %21, ptr %4, align 8, !dbg !4384
  br label %22, !dbg !4384

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4384
  %25 = load ptr, ptr %24, align 8, !dbg !4384
  store ptr %25, ptr %6, align 8, !dbg !4387, !tbaa !955
  %26 = icmp eq ptr %25, null, !dbg !4388
  br i1 %26, label %197, label %27, !dbg !4389

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 1, metadata !4377, metadata !DIExpression()), !dbg !4380
  %28 = icmp sgt i32 %23, -1, !dbg !4384
  br i1 %28, label %36, label %29, !dbg !4384

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4384
  store i32 %30, ptr %7, align 8, !dbg !4384
  %31 = icmp ult i32 %23, -7, !dbg !4384
  br i1 %31, label %32, label %36, !dbg !4384

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4384
  %34 = sext i32 %23 to i64, !dbg !4384
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4384
  br label %40, !dbg !4384

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4384
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4384
  store ptr %39, ptr %4, align 8, !dbg !4384
  br label %40, !dbg !4384

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4384
  %43 = load ptr, ptr %42, align 8, !dbg !4384
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4390
  store ptr %43, ptr %44, align 8, !dbg !4387, !tbaa !955
  %45 = icmp eq ptr %43, null, !dbg !4388
  br i1 %45, label %197, label %46, !dbg !4389

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 2, metadata !4377, metadata !DIExpression()), !dbg !4380
  %47 = icmp sgt i32 %41, -1, !dbg !4384
  br i1 %47, label %55, label %48, !dbg !4384

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4384
  store i32 %49, ptr %7, align 8, !dbg !4384
  %50 = icmp ult i32 %41, -7, !dbg !4384
  br i1 %50, label %51, label %55, !dbg !4384

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4384
  %53 = sext i32 %41 to i64, !dbg !4384
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4384
  br label %59, !dbg !4384

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4384
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4384
  store ptr %58, ptr %4, align 8, !dbg !4384
  br label %59, !dbg !4384

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4384
  %62 = load ptr, ptr %61, align 8, !dbg !4384
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4390
  store ptr %62, ptr %63, align 8, !dbg !4387, !tbaa !955
  %64 = icmp eq ptr %62, null, !dbg !4388
  br i1 %64, label %197, label %65, !dbg !4389

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 3, metadata !4377, metadata !DIExpression()), !dbg !4380
  %66 = icmp sgt i32 %60, -1, !dbg !4384
  br i1 %66, label %74, label %67, !dbg !4384

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4384
  store i32 %68, ptr %7, align 8, !dbg !4384
  %69 = icmp ult i32 %60, -7, !dbg !4384
  br i1 %69, label %70, label %74, !dbg !4384

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4384
  %72 = sext i32 %60 to i64, !dbg !4384
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4384
  br label %78, !dbg !4384

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4384
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4384
  store ptr %77, ptr %4, align 8, !dbg !4384
  br label %78, !dbg !4384

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4384
  %81 = load ptr, ptr %80, align 8, !dbg !4384
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4390
  store ptr %81, ptr %82, align 8, !dbg !4387, !tbaa !955
  %83 = icmp eq ptr %81, null, !dbg !4388
  br i1 %83, label %197, label %84, !dbg !4389

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 4, metadata !4377, metadata !DIExpression()), !dbg !4380
  %85 = icmp sgt i32 %79, -1, !dbg !4384
  br i1 %85, label %93, label %86, !dbg !4384

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4384
  store i32 %87, ptr %7, align 8, !dbg !4384
  %88 = icmp ult i32 %79, -7, !dbg !4384
  br i1 %88, label %89, label %93, !dbg !4384

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4384
  %91 = sext i32 %79 to i64, !dbg !4384
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4384
  br label %97, !dbg !4384

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4384
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4384
  store ptr %96, ptr %4, align 8, !dbg !4384
  br label %97, !dbg !4384

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4384
  %100 = load ptr, ptr %99, align 8, !dbg !4384
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4390
  store ptr %100, ptr %101, align 8, !dbg !4387, !tbaa !955
  %102 = icmp eq ptr %100, null, !dbg !4388
  br i1 %102, label %197, label %103, !dbg !4389

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 5, metadata !4377, metadata !DIExpression()), !dbg !4380
  %104 = icmp sgt i32 %98, -1, !dbg !4384
  br i1 %104, label %112, label %105, !dbg !4384

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4384
  store i32 %106, ptr %7, align 8, !dbg !4384
  %107 = icmp ult i32 %98, -7, !dbg !4384
  br i1 %107, label %108, label %112, !dbg !4384

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4384
  %110 = sext i32 %98 to i64, !dbg !4384
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4384
  br label %116, !dbg !4384

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4384
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4384
  store ptr %115, ptr %4, align 8, !dbg !4384
  br label %116, !dbg !4384

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4384
  %119 = load ptr, ptr %118, align 8, !dbg !4384
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4390
  store ptr %119, ptr %120, align 8, !dbg !4387, !tbaa !955
  %121 = icmp eq ptr %119, null, !dbg !4388
  br i1 %121, label %197, label %122, !dbg !4389

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 6, metadata !4377, metadata !DIExpression()), !dbg !4380
  %123 = icmp sgt i32 %117, -1, !dbg !4384
  br i1 %123, label %131, label %124, !dbg !4384

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4384
  store i32 %125, ptr %7, align 8, !dbg !4384
  %126 = icmp ult i32 %117, -7, !dbg !4384
  br i1 %126, label %127, label %131, !dbg !4384

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4384
  %129 = sext i32 %117 to i64, !dbg !4384
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4384
  br label %135, !dbg !4384

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4384
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4384
  store ptr %134, ptr %4, align 8, !dbg !4384
  br label %135, !dbg !4384

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4384
  %138 = load ptr, ptr %137, align 8, !dbg !4384
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4390
  store ptr %138, ptr %139, align 8, !dbg !4387, !tbaa !955
  %140 = icmp eq ptr %138, null, !dbg !4388
  br i1 %140, label %197, label %141, !dbg !4389

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 7, metadata !4377, metadata !DIExpression()), !dbg !4380
  %142 = icmp sgt i32 %136, -1, !dbg !4384
  br i1 %142, label %150, label %143, !dbg !4384

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4384
  store i32 %144, ptr %7, align 8, !dbg !4384
  %145 = icmp ult i32 %136, -7, !dbg !4384
  br i1 %145, label %146, label %150, !dbg !4384

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4384
  %148 = sext i32 %136 to i64, !dbg !4384
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4384
  br label %154, !dbg !4384

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4384
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4384
  store ptr %153, ptr %4, align 8, !dbg !4384
  br label %154, !dbg !4384

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4384
  %157 = load ptr, ptr %156, align 8, !dbg !4384
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4390
  store ptr %157, ptr %158, align 8, !dbg !4387, !tbaa !955
  %159 = icmp eq ptr %157, null, !dbg !4388
  br i1 %159, label %197, label %160, !dbg !4389

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 8, metadata !4377, metadata !DIExpression()), !dbg !4380
  %161 = icmp sgt i32 %155, -1, !dbg !4384
  br i1 %161, label %169, label %162, !dbg !4384

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4384
  store i32 %163, ptr %7, align 8, !dbg !4384
  %164 = icmp ult i32 %155, -7, !dbg !4384
  br i1 %164, label %165, label %169, !dbg !4384

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4384
  %167 = sext i32 %155 to i64, !dbg !4384
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4384
  br label %173, !dbg !4384

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4384
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4384
  store ptr %172, ptr %4, align 8, !dbg !4384
  br label %173, !dbg !4384

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4384
  %176 = load ptr, ptr %175, align 8, !dbg !4384
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4390
  store ptr %176, ptr %177, align 8, !dbg !4387, !tbaa !955
  %178 = icmp eq ptr %176, null, !dbg !4388
  br i1 %178, label %197, label %179, !dbg !4389

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 9, metadata !4377, metadata !DIExpression()), !dbg !4380
  %180 = icmp sgt i32 %174, -1, !dbg !4384
  br i1 %180, label %188, label %181, !dbg !4384

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4384
  store i32 %182, ptr %7, align 8, !dbg !4384
  %183 = icmp ult i32 %174, -7, !dbg !4384
  br i1 %183, label %184, label %188, !dbg !4384

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4384
  %186 = sext i32 %174 to i64, !dbg !4384
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4384
  br label %191, !dbg !4384

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4384
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4384
  store ptr %190, ptr %4, align 8, !dbg !4384
  br label %191, !dbg !4384

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4384
  %193 = load ptr, ptr %192, align 8, !dbg !4384
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4390
  store ptr %193, ptr %194, align 8, !dbg !4387, !tbaa !955
  %195 = icmp eq ptr %193, null, !dbg !4388
  %196 = select i1 %195, i64 9, i64 10, !dbg !4389
  br label %197, !dbg !4389

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4391
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4392
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4393
  ret void, !dbg !4393
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4394 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4398, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata ptr %1, metadata !4399, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata ptr %2, metadata !4400, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata ptr %3, metadata !4401, metadata !DIExpression()), !dbg !4403
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !4404
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4402, metadata !DIExpression()), !dbg !4405
  call void @llvm.va_start(ptr nonnull %5), !dbg !4406
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !4407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4407, !tbaa.struct !2373
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4407
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !4407
  call void @llvm.va_end(ptr nonnull %5), !dbg !4408
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !4409
  ret void, !dbg !4409
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4410 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4411, !tbaa !955
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %1), !dbg !4411
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.17.120, i32 noundef 5) #38, !dbg !4412
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.121) #38, !dbg !4412
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.19.122, i32 noundef 5) #38, !dbg !4413
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.123, ptr noundef nonnull @.str.21.124) #38, !dbg !4413
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.22.125, i32 noundef 5) #38, !dbg !4414
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.126) #38, !dbg !4414
  ret void, !dbg !4415
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4416 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4421, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %1, metadata !4422, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %2, metadata !4423, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata ptr %0, metadata !4425, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %1, metadata !4428, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %2, metadata !4429, metadata !DIExpression()), !dbg !4430
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4432
  call void @llvm.dbg.value(metadata ptr %4, metadata !4433, metadata !DIExpression()), !dbg !4438
  %5 = icmp eq ptr %4, null, !dbg !4440
  br i1 %5, label %6, label %7, !dbg !4442

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4443
  unreachable, !dbg !4443

7:                                                ; preds = %3
  ret ptr %4, !dbg !4444
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4426 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4425, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64 %1, metadata !4428, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64 %2, metadata !4429, metadata !DIExpression()), !dbg !4445
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4446
  call void @llvm.dbg.value(metadata ptr %4, metadata !4433, metadata !DIExpression()), !dbg !4447
  %5 = icmp eq ptr %4, null, !dbg !4449
  br i1 %5, label %6, label %7, !dbg !4450

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4451
  unreachable, !dbg !4451

7:                                                ; preds = %3
  ret ptr %4, !dbg !4452
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4453 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4457, metadata !DIExpression()), !dbg !4458
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4459
  call void @llvm.dbg.value(metadata ptr %2, metadata !4433, metadata !DIExpression()), !dbg !4460
  %3 = icmp eq ptr %2, null, !dbg !4462
  br i1 %3, label %4, label %5, !dbg !4463

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4464
  unreachable, !dbg !4464

5:                                                ; preds = %1
  ret ptr %2, !dbg !4465
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4466 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4467 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %0, metadata !4473, metadata !DIExpression()), !dbg !4477
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4479
  call void @llvm.dbg.value(metadata ptr %2, metadata !4433, metadata !DIExpression()), !dbg !4480
  %3 = icmp eq ptr %2, null, !dbg !4482
  br i1 %3, label %4, label %5, !dbg !4483

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4484
  unreachable, !dbg !4484

5:                                                ; preds = %1
  ret ptr %2, !dbg !4485
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4486 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4490, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %0, metadata !4457, metadata !DIExpression()), !dbg !4492
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4494
  call void @llvm.dbg.value(metadata ptr %2, metadata !4433, metadata !DIExpression()), !dbg !4495
  %3 = icmp eq ptr %2, null, !dbg !4497
  br i1 %3, label %4, label %5, !dbg !4498

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4499
  unreachable, !dbg !4499

5:                                                ; preds = %1
  ret ptr %2, !dbg !4500
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4501 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i64 %1, metadata !4506, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata ptr %0, metadata !4508, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i64 %1, metadata !4512, metadata !DIExpression()), !dbg !4513
  %3 = icmp eq i64 %1, 0, !dbg !4515
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4515
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4516
  call void @llvm.dbg.value(metadata ptr %5, metadata !4433, metadata !DIExpression()), !dbg !4517
  %6 = icmp eq ptr %5, null, !dbg !4519
  br i1 %6, label %7, label %8, !dbg !4520

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4521
  unreachable, !dbg !4521

8:                                                ; preds = %2
  ret ptr %5, !dbg !4522
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4523 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4524 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4528, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i64 %1, metadata !4529, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata ptr %0, metadata !4531, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %1, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata ptr %0, metadata !4508, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 %1, metadata !4512, metadata !DIExpression()), !dbg !4537
  %3 = icmp eq i64 %1, 0, !dbg !4539
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4539
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4540
  call void @llvm.dbg.value(metadata ptr %5, metadata !4433, metadata !DIExpression()), !dbg !4541
  %6 = icmp eq ptr %5, null, !dbg !4543
  br i1 %6, label %7, label %8, !dbg !4544

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4545
  unreachable, !dbg !4545

8:                                                ; preds = %2
  ret ptr %5, !dbg !4546
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4547 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4551, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i64 %1, metadata !4552, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i64 %2, metadata !4553, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata ptr %0, metadata !4555, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.value(metadata i64 %1, metadata !4558, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.value(metadata i64 %2, metadata !4559, metadata !DIExpression()), !dbg !4560
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4562
  call void @llvm.dbg.value(metadata ptr %4, metadata !4433, metadata !DIExpression()), !dbg !4563
  %5 = icmp eq ptr %4, null, !dbg !4565
  br i1 %5, label %6, label %7, !dbg !4566

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4567
  unreachable, !dbg !4567

7:                                                ; preds = %3
  ret ptr %4, !dbg !4568
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4569 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4573, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %1, metadata !4574, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata ptr null, metadata !4425, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 %0, metadata !4428, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 %1, metadata !4429, metadata !DIExpression()), !dbg !4576
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4578
  call void @llvm.dbg.value(metadata ptr %3, metadata !4433, metadata !DIExpression()), !dbg !4579
  %4 = icmp eq ptr %3, null, !dbg !4581
  br i1 %4, label %5, label %6, !dbg !4582

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4583
  unreachable, !dbg !4583

6:                                                ; preds = %2
  ret ptr %3, !dbg !4584
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4585 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4589, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %1, metadata !4590, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata ptr null, metadata !4551, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i64 %0, metadata !4552, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i64 %1, metadata !4553, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata ptr null, metadata !4555, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %0, metadata !4558, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %1, metadata !4559, metadata !DIExpression()), !dbg !4594
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4596
  call void @llvm.dbg.value(metadata ptr %3, metadata !4433, metadata !DIExpression()), !dbg !4597
  %4 = icmp eq ptr %3, null, !dbg !4599
  br i1 %4, label %5, label %6, !dbg !4600

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4601
  unreachable, !dbg !4601

6:                                                ; preds = %2
  ret ptr %3, !dbg !4602
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4603 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4607, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata ptr %1, metadata !4608, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata ptr %0, metadata !877, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr %1, metadata !878, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i64 1, metadata !879, metadata !DIExpression()), !dbg !4610
  %3 = load i64, ptr %1, align 8, !dbg !4612, !tbaa !3712
  call void @llvm.dbg.value(metadata i64 %3, metadata !880, metadata !DIExpression()), !dbg !4610
  %4 = icmp eq ptr %0, null, !dbg !4613
  br i1 %4, label %5, label %8, !dbg !4615

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4616
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4619
  br label %15, !dbg !4619

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4620
  %10 = add nuw i64 %9, 1, !dbg !4620
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4620
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4620
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4620
  call void @llvm.dbg.value(metadata i64 %13, metadata !880, metadata !DIExpression()), !dbg !4610
  br i1 %12, label %14, label %15, !dbg !4623

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4624
  unreachable, !dbg !4624

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4610
  call void @llvm.dbg.value(metadata i64 %16, metadata !880, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr %0, metadata !4425, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 %16, metadata !4428, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 1, metadata !4429, metadata !DIExpression()), !dbg !4625
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4627
  call void @llvm.dbg.value(metadata ptr %17, metadata !4433, metadata !DIExpression()), !dbg !4628
  %18 = icmp eq ptr %17, null, !dbg !4630
  br i1 %18, label %19, label %20, !dbg !4631

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4632
  unreachable, !dbg !4632

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !877, metadata !DIExpression()), !dbg !4610
  store i64 %16, ptr %1, align 8, !dbg !4633, !tbaa !3712
  ret ptr %17, !dbg !4634
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !872 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !877, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata ptr %1, metadata !878, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i64 %2, metadata !879, metadata !DIExpression()), !dbg !4635
  %4 = load i64, ptr %1, align 8, !dbg !4636, !tbaa !3712
  call void @llvm.dbg.value(metadata i64 %4, metadata !880, metadata !DIExpression()), !dbg !4635
  %5 = icmp eq ptr %0, null, !dbg !4637
  br i1 %5, label %6, label %13, !dbg !4638

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4639
  br i1 %7, label %8, label %20, !dbg !4640

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4641
  call void @llvm.dbg.value(metadata i64 %9, metadata !880, metadata !DIExpression()), !dbg !4635
  %10 = icmp ugt i64 %2, 128, !dbg !4643
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4644
  call void @llvm.dbg.value(metadata i64 %12, metadata !880, metadata !DIExpression()), !dbg !4635
  br label %20, !dbg !4645

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4646
  %15 = add nuw i64 %14, 1, !dbg !4646
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4646
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4646
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %18, metadata !880, metadata !DIExpression()), !dbg !4635
  br i1 %17, label %19, label %20, !dbg !4647

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4648
  unreachable, !dbg !4648

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4635
  call void @llvm.dbg.value(metadata i64 %21, metadata !880, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata ptr %0, metadata !4425, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata i64 %21, metadata !4428, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata i64 %2, metadata !4429, metadata !DIExpression()), !dbg !4649
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4651
  call void @llvm.dbg.value(metadata ptr %22, metadata !4433, metadata !DIExpression()), !dbg !4652
  %23 = icmp eq ptr %22, null, !dbg !4654
  br i1 %23, label %24, label %25, !dbg !4655

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4656
  unreachable, !dbg !4656

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !877, metadata !DIExpression()), !dbg !4635
  store i64 %21, ptr %1, align 8, !dbg !4657, !tbaa !3712
  ret ptr %22, !dbg !4658
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !884 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !892, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata ptr %1, metadata !893, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %2, metadata !894, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %3, metadata !895, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %4, metadata !896, metadata !DIExpression()), !dbg !4659
  %6 = load i64, ptr %1, align 8, !dbg !4660, !tbaa !3712
  call void @llvm.dbg.value(metadata i64 %6, metadata !897, metadata !DIExpression()), !dbg !4659
  %7 = ashr i64 %6, 1, !dbg !4661
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4661
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4661
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4661
  call void @llvm.dbg.value(metadata i64 %10, metadata !898, metadata !DIExpression()), !dbg !4659
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4663
  call void @llvm.dbg.value(metadata i64 %11, metadata !898, metadata !DIExpression()), !dbg !4659
  %12 = icmp sgt i64 %3, -1, !dbg !4664
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4666
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4666
  call void @llvm.dbg.value(metadata i64 %15, metadata !898, metadata !DIExpression()), !dbg !4659
  %16 = icmp slt i64 %4, 0, !dbg !4667
  br i1 %16, label %17, label %30, !dbg !4667

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4667
  br i1 %18, label %19, label %24, !dbg !4667

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4667
  %21 = udiv i64 9223372036854775807, %20, !dbg !4667
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4667
  br i1 %23, label %46, label %43, !dbg !4667

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4667
  br i1 %25, label %43, label %26, !dbg !4667

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4667
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4667
  %29 = icmp ult i64 %28, %15, !dbg !4667
  br i1 %29, label %46, label %43, !dbg !4667

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4667
  br i1 %31, label %43, label %32, !dbg !4667

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4667
  br i1 %33, label %34, label %40, !dbg !4667

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4667
  br i1 %35, label %43, label %36, !dbg !4667

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4667
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4667
  %39 = icmp ult i64 %38, %4, !dbg !4667
  br i1 %39, label %46, label %43, !dbg !4667

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4667
  br i1 %42, label %46, label %43, !dbg !4667

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !899, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4659
  %44 = mul i64 %15, %4, !dbg !4667
  call void @llvm.dbg.value(metadata i64 %44, metadata !899, metadata !DIExpression()), !dbg !4659
  %45 = icmp slt i64 %44, 128, !dbg !4667
  br i1 %45, label %46, label %52, !dbg !4667

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !900, metadata !DIExpression()), !dbg !4659
  %48 = sdiv i64 %47, %4, !dbg !4668
  call void @llvm.dbg.value(metadata i64 %48, metadata !898, metadata !DIExpression()), !dbg !4659
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4671
  call void @llvm.dbg.value(metadata i64 %51, metadata !899, metadata !DIExpression()), !dbg !4659
  br label %52, !dbg !4672

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4659
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4659
  call void @llvm.dbg.value(metadata i64 %54, metadata !899, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %53, metadata !898, metadata !DIExpression()), !dbg !4659
  %55 = icmp eq ptr %0, null, !dbg !4673
  br i1 %55, label %56, label %57, !dbg !4675

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4676, !tbaa !3712
  br label %57, !dbg !4677

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4678
  %59 = icmp slt i64 %58, %2, !dbg !4680
  br i1 %59, label %60, label %97, !dbg !4681

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4682
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4682
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4682
  call void @llvm.dbg.value(metadata i64 %63, metadata !898, metadata !DIExpression()), !dbg !4659
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4683
  br i1 %66, label %96, label %67, !dbg !4683

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4684

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4684
  br i1 %69, label %70, label %75, !dbg !4684

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4684
  %72 = udiv i64 9223372036854775807, %71, !dbg !4684
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4684
  br i1 %74, label %96, label %94, !dbg !4684

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4684
  br i1 %76, label %94, label %77, !dbg !4684

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4684
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4684
  %80 = icmp ult i64 %79, %63, !dbg !4684
  br i1 %80, label %96, label %94, !dbg !4684

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4684
  br i1 %82, label %94, label %83, !dbg !4684

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4684
  br i1 %84, label %85, label %91, !dbg !4684

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4684
  br i1 %86, label %94, label %87, !dbg !4684

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4684
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4684
  %90 = icmp ult i64 %89, %4, !dbg !4684
  br i1 %90, label %96, label %94, !dbg !4684

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4684
  br i1 %93, label %96, label %94, !dbg !4684

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !899, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4659
  %95 = mul i64 %63, %4, !dbg !4684
  call void @llvm.dbg.value(metadata i64 %95, metadata !899, metadata !DIExpression()), !dbg !4659
  br label %97, !dbg !4685

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #40, !dbg !4686
  unreachable, !dbg !4686

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4659
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4659
  call void @llvm.dbg.value(metadata i64 %99, metadata !899, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %98, metadata !898, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 %99, metadata !4506, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata ptr %0, metadata !4508, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %99, metadata !4512, metadata !DIExpression()), !dbg !4689
  %100 = icmp eq i64 %99, 0, !dbg !4691
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4691
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !4692
  call void @llvm.dbg.value(metadata ptr %102, metadata !4433, metadata !DIExpression()), !dbg !4693
  %103 = icmp eq ptr %102, null, !dbg !4695
  br i1 %103, label %104, label %105, !dbg !4696

104:                                              ; preds = %97
  tail call void @xalloc_die() #40, !dbg !4697
  unreachable, !dbg !4697

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !892, metadata !DIExpression()), !dbg !4659
  store i64 %98, ptr %1, align 8, !dbg !4698, !tbaa !3712
  ret ptr %102, !dbg !4699
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4700 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i64 %0, metadata !4704, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i64 1, metadata !4707, metadata !DIExpression()), !dbg !4708
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4710
  call void @llvm.dbg.value(metadata ptr %2, metadata !4433, metadata !DIExpression()), !dbg !4711
  %3 = icmp eq ptr %2, null, !dbg !4713
  br i1 %3, label %4, label %5, !dbg !4714

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4715
  unreachable, !dbg !4715

5:                                                ; preds = %1
  ret ptr %2, !dbg !4716
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4717 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4705 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4704, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.value(metadata i64 %1, metadata !4707, metadata !DIExpression()), !dbg !4718
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4719
  call void @llvm.dbg.value(metadata ptr %3, metadata !4433, metadata !DIExpression()), !dbg !4720
  %4 = icmp eq ptr %3, null, !dbg !4722
  br i1 %4, label %5, label %6, !dbg !4723

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4724
  unreachable, !dbg !4724

6:                                                ; preds = %2
  ret ptr %3, !dbg !4725
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4726 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4728, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %0, metadata !4730, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.value(metadata i64 1, metadata !4733, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.value(metadata i64 %0, metadata !4736, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata i64 1, metadata !4739, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata i64 %0, metadata !4736, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata i64 1, metadata !4739, metadata !DIExpression()), !dbg !4740
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4742
  call void @llvm.dbg.value(metadata ptr %2, metadata !4433, metadata !DIExpression()), !dbg !4743
  %3 = icmp eq ptr %2, null, !dbg !4745
  br i1 %3, label %4, label %5, !dbg !4746

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4747
  unreachable, !dbg !4747

5:                                                ; preds = %1
  ret ptr %2, !dbg !4748
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4731 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4730, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i64 %1, metadata !4733, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i64 %0, metadata !4736, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata i64 %1, metadata !4739, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata i64 %0, metadata !4736, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata i64 %1, metadata !4739, metadata !DIExpression()), !dbg !4750
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4752
  call void @llvm.dbg.value(metadata ptr %3, metadata !4433, metadata !DIExpression()), !dbg !4753
  %4 = icmp eq ptr %3, null, !dbg !4755
  br i1 %4, label %5, label %6, !dbg !4756

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4757
  unreachable, !dbg !4757

6:                                                ; preds = %2
  ret ptr %3, !dbg !4758
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4759 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4763, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %1, metadata !4764, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %1, metadata !4457, metadata !DIExpression()), !dbg !4766
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4768
  call void @llvm.dbg.value(metadata ptr %3, metadata !4433, metadata !DIExpression()), !dbg !4769
  %4 = icmp eq ptr %3, null, !dbg !4771
  br i1 %4, label %5, label %6, !dbg !4772

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4773
  unreachable, !dbg !4773

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4774, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata ptr %0, metadata !4780, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata i64 %1, metadata !4781, metadata !DIExpression()), !dbg !4782
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4784
  ret ptr %3, !dbg !4785
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4790, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i64 %1, metadata !4791, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i64 %1, metadata !4471, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata i64 %1, metadata !4473, metadata !DIExpression()), !dbg !4795
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4797
  call void @llvm.dbg.value(metadata ptr %3, metadata !4433, metadata !DIExpression()), !dbg !4798
  %4 = icmp eq ptr %3, null, !dbg !4800
  br i1 %4, label %5, label %6, !dbg !4801

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4802
  unreachable, !dbg !4802

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4774, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata ptr %0, metadata !4780, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i64 %1, metadata !4781, metadata !DIExpression()), !dbg !4803
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4805
  ret ptr %3, !dbg !4806
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4807 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4811, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %1, metadata !4812, metadata !DIExpression()), !dbg !4814
  %3 = add nsw i64 %1, 1, !dbg !4815
  call void @llvm.dbg.value(metadata i64 %3, metadata !4471, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 %3, metadata !4473, metadata !DIExpression()), !dbg !4818
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4820
  call void @llvm.dbg.value(metadata ptr %4, metadata !4433, metadata !DIExpression()), !dbg !4821
  %5 = icmp eq ptr %4, null, !dbg !4823
  br i1 %5, label %6, label %7, !dbg !4824

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4825
  unreachable, !dbg !4825

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4813, metadata !DIExpression()), !dbg !4814
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4826
  store i8 0, ptr %8, align 1, !dbg !4827, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %4, metadata !4774, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr %0, metadata !4780, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %1, metadata !4781, metadata !DIExpression()), !dbg !4828
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4830
  ret ptr %4, !dbg !4831
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4832 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4834, metadata !DIExpression()), !dbg !4835
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4836
  %3 = add i64 %2, 1, !dbg !4837
  call void @llvm.dbg.value(metadata ptr %0, metadata !4763, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i64 %3, metadata !4764, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i64 %3, metadata !4457, metadata !DIExpression()), !dbg !4840
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4842
  call void @llvm.dbg.value(metadata ptr %4, metadata !4433, metadata !DIExpression()), !dbg !4843
  %5 = icmp eq ptr %4, null, !dbg !4845
  br i1 %5, label %6, label %7, !dbg !4846

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4847
  unreachable, !dbg !4847

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4774, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata ptr %0, metadata !4780, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %3, metadata !4781, metadata !DIExpression()), !dbg !4848
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4850
  ret ptr %4, !dbg !4851
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4852 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4857, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %1, metadata !4854, metadata !DIExpression()), !dbg !4858
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.137, ptr noundef nonnull @.str.2.138, i32 noundef 5) #38, !dbg !4857
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.139, ptr noundef %2) #38, !dbg !4857
  %3 = icmp eq i32 %1, 0, !dbg !4857
  tail call void @llvm.assume(i1 %3), !dbg !4857
  tail call void @abort() #40, !dbg !4859
  unreachable, !dbg !4859
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4860 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4864, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i32 %1, metadata !4865, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i64 %2, metadata !4866, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i64 %3, metadata !4867, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata ptr %4, metadata !4868, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata ptr %5, metadata !4869, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i32 %6, metadata !4870, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i32 %7, metadata !4871, metadata !DIExpression()), !dbg !4881
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #38, !dbg !4882
  call void @llvm.dbg.value(metadata ptr %9, metadata !4872, metadata !DIExpression(DW_OP_deref)), !dbg !4881
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #38, !dbg !4883
  call void @llvm.dbg.value(metadata i32 %10, metadata !4874, metadata !DIExpression()), !dbg !4881
  %11 = icmp eq i32 %10, 4, !dbg !4884
  br i1 %11, label %40, label %12, !dbg !4886

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4887, !tbaa !3712
  call void @llvm.dbg.value(metadata i64 %13, metadata !4872, metadata !DIExpression()), !dbg !4881
  %14 = icmp ult i64 %13, %2, !dbg !4890
  br i1 %14, label %15, label %20, !dbg !4891

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 %2, metadata !4873, metadata !DIExpression()), !dbg !4881
  %16 = and i32 %7, 4, !dbg !4892
  %17 = icmp eq i32 %16, 0, !dbg !4894
  %18 = select i1 %17, i32 75, i32 34, !dbg !4894
  call void @llvm.dbg.value(metadata i32 %18, metadata !4876, metadata !DIExpression()), !dbg !4881
  %19 = icmp eq i32 %10, 0, !dbg !4895
  call void @llvm.dbg.value(metadata i32 undef, metadata !4874, metadata !DIExpression()), !dbg !4881
  br i1 %19, label %33, label %27, !dbg !4897

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4898
  br i1 %21, label %22, label %27, !dbg !4900

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !4873, metadata !DIExpression()), !dbg !4881
  %23 = and i32 %7, 8, !dbg !4901
  %24 = icmp eq i32 %23, 0, !dbg !4903
  %25 = select i1 %24, i32 75, i32 34, !dbg !4903
  call void @llvm.dbg.value(metadata i32 %25, metadata !4876, metadata !DIExpression()), !dbg !4881
  %26 = icmp eq i32 %10, 0, !dbg !4904
  call void @llvm.dbg.value(metadata i32 undef, metadata !4874, metadata !DIExpression()), !dbg !4881
  br i1 %26, label %33, label %27, !dbg !4906

27:                                               ; preds = %22, %15, %20
  %28 = phi i32 [ %18, %15 ], [ %25, %22 ], [ 75, %20 ]
  %29 = phi i64 [ %2, %15 ], [ %3, %22 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !4873, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i32 %10, metadata !4874, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i32 %28, metadata !4876, metadata !DIExpression()), !dbg !4881
  %30 = icmp eq i32 %10, 1, !dbg !4907
  %31 = select i1 %30, i32 %28, i32 0, !dbg !4908
  call void @llvm.dbg.value(metadata i32 %31, metadata !4877, metadata !DIExpression()), !dbg !4881
  %32 = icmp eq i32 %10, 0, !dbg !4909
  br i1 %32, label %45, label %33, !dbg !4910

33:                                               ; preds = %22, %15, %27
  %34 = phi i32 [ %31, %27 ], [ %18, %15 ], [ %25, %22 ]
  %35 = phi i1 [ %30, %27 ], [ true, %15 ], [ true, %22 ]
  %36 = phi i64 [ %29, %27 ], [ %2, %15 ], [ %3, %22 ]
  %37 = and i32 %7, 2
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %38, %35, !dbg !4881
  call void @llvm.dbg.value(metadata i64 poison, metadata !4872, metadata !DIExpression()), !dbg !4881
  br i1 %39, label %45, label %40, !dbg !4911

40:                                               ; preds = %8, %33
  %41 = phi i32 [ %34, %33 ], [ 0, %8 ]
  %42 = icmp eq i32 %6, 0, !dbg !4912
  %43 = select i1 %42, i32 1, i32 %6, !dbg !4912
  %44 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !4912
  call void (i32, i32, ptr, ...) @error(i32 noundef %43, i32 noundef %41, ptr noundef nonnull @.str.142, ptr noundef nonnull %5, ptr noundef %44) #38, !dbg !4912
  unreachable, !dbg !4912

45:                                               ; preds = %33, %27
  %46 = phi i32 [ %34, %33 ], [ %31, %27 ]
  %47 = phi i64 [ %36, %33 ], [ %29, %27 ]
  %48 = tail call ptr @__errno_location() #41, !dbg !4913
  store i32 %46, ptr %48, align 4, !dbg !4914, !tbaa !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #38, !dbg !4915
  ret i64 %47, !dbg !4916
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4917 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4921, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %1, metadata !4922, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %2, metadata !4923, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata ptr %3, metadata !4924, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata ptr %4, metadata !4925, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 %5, metadata !4926, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata ptr %0, metadata !4864, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 10, metadata !4865, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i64 %1, metadata !4866, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i64 %2, metadata !4867, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata ptr %3, metadata !4868, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata ptr %4, metadata !4869, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 %5, metadata !4870, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 0, metadata !4871, metadata !DIExpression()), !dbg !4928
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #38, !dbg !4930
  call void @llvm.dbg.value(metadata ptr %7, metadata !4872, metadata !DIExpression(DW_OP_deref)), !dbg !4928
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #38, !dbg !4931
  call void @llvm.dbg.value(metadata i32 %8, metadata !4874, metadata !DIExpression()), !dbg !4928
  %9 = icmp eq i32 %8, 4, !dbg !4932
  br i1 %9, label %24, label %10, !dbg !4933

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !4934, !tbaa !3712
  call void @llvm.dbg.value(metadata i64 %11, metadata !4872, metadata !DIExpression()), !dbg !4928
  %12 = icmp ult i64 %11, %1, !dbg !4935
  br i1 %12, label %13, label %15, !dbg !4936

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %1, metadata !4873, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 75, metadata !4876, metadata !DIExpression()), !dbg !4928
  %14 = icmp eq i32 %8, 0, !dbg !4937
  call void @llvm.dbg.value(metadata i32 undef, metadata !4874, metadata !DIExpression()), !dbg !4928
  br i1 %14, label %24, label %19, !dbg !4938

15:                                               ; preds = %10
  %16 = icmp ugt i64 %11, %2, !dbg !4939
  br i1 %16, label %17, label %19, !dbg !4940

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %2, metadata !4873, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 75, metadata !4876, metadata !DIExpression()), !dbg !4928
  %18 = icmp eq i32 %8, 0, !dbg !4941
  call void @llvm.dbg.value(metadata i32 undef, metadata !4874, metadata !DIExpression()), !dbg !4928
  br i1 %18, label %24, label %19, !dbg !4942

19:                                               ; preds = %17, %15, %13
  %20 = phi i64 [ %1, %13 ], [ %2, %17 ], [ %11, %15 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !4873, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 %8, metadata !4874, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 75, metadata !4876, metadata !DIExpression()), !dbg !4928
  %21 = icmp eq i32 %8, 1, !dbg !4943
  %22 = select i1 %21, i32 75, i32 0, !dbg !4944
  call void @llvm.dbg.value(metadata i32 %22, metadata !4877, metadata !DIExpression()), !dbg !4928
  %23 = icmp eq i32 %8, 0, !dbg !4945
  br i1 %23, label %29, label %24, !dbg !4946

24:                                               ; preds = %13, %17, %19, %6
  %25 = phi i32 [ 0, %6 ], [ %22, %19 ], [ 75, %13 ], [ 75, %17 ]
  %26 = icmp eq i32 %5, 0, !dbg !4947
  %27 = select i1 %26, i32 1, i32 %5, !dbg !4947
  %28 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !4947
  call void (i32, i32, ptr, ...) @error(i32 noundef %27, i32 noundef %25, ptr noundef nonnull @.str.142, ptr noundef nonnull %4, ptr noundef %28) #38, !dbg !4947
  unreachable, !dbg !4947

29:                                               ; preds = %19
  %30 = tail call ptr @__errno_location() #41, !dbg !4948
  store i32 %22, ptr %30, align 4, !dbg !4949, !tbaa !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #38, !dbg !4950
  ret i64 %20, !dbg !4951
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4952 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4958, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata ptr %1, metadata !4959, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i32 %2, metadata !4960, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata ptr %3, metadata !4961, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata ptr %4, metadata !4962, metadata !DIExpression()), !dbg !4976
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #38, !dbg !4977
  %7 = icmp eq ptr %1, null, !dbg !4978
  call void @llvm.dbg.value(metadata ptr %20, metadata !4964, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata ptr %0, metadata !4965, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i8 poison, metadata !4968, metadata !DIExpression()), !dbg !4979
  %8 = tail call ptr @__ctype_b_loc() #41, !dbg !4976
  %9 = load ptr, ptr %8, align 8, !tbaa !955
  br label %10, !dbg !4980

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4979
  %12 = load i8, ptr %11, align 1, !dbg !4979, !tbaa !1037
  call void @llvm.dbg.value(metadata i8 %12, metadata !4968, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata ptr %11, metadata !4965, metadata !DIExpression()), !dbg !4979
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4981
  %15 = load i16, ptr %14, align 2, !dbg !4981, !tbaa !1069
  %16 = and i16 %15, 8192, !dbg !4981
  %17 = icmp eq i16 %16, 0, !dbg !4980
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4982
  call void @llvm.dbg.value(metadata ptr %18, metadata !4965, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata i8 poison, metadata !4968, metadata !DIExpression()), !dbg !4979
  br i1 %17, label %19, label %10, !dbg !4980, !llvm.loop !4983

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4978
  %21 = icmp eq i8 %12, 45, !dbg !4985
  br i1 %21, label %22, label %23, !dbg !4987

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4988, !tbaa !955
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #41, !dbg !4990
  store i32 0, ptr %24, align 4, !dbg !4991, !tbaa !1028
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef %20, i32 noundef %2) #38, !dbg !4992
  call void @llvm.dbg.value(metadata i64 %25, metadata !4969, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i32 0, metadata !4970, metadata !DIExpression()), !dbg !4976
  %26 = load ptr, ptr %20, align 8, !dbg !4993, !tbaa !955
  %27 = icmp eq ptr %26, %0, !dbg !4995
  br i1 %27, label %28, label %37, !dbg !4996

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4997
  br i1 %29, label %386, label %30, !dbg !5000

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !5001, !tbaa !1037
  %32 = icmp eq i8 %31, 0, !dbg !5001
  br i1 %32, label %386, label %33, !dbg !5002

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32, !dbg !5001
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #39, !dbg !5003
  %36 = icmp eq ptr %35, null, !dbg !5003
  br i1 %36, label %386, label %44, !dbg !5004

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !5005, !tbaa !1028
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !5007

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !4970, metadata !DIExpression()), !dbg !4976
  br label %40, !dbg !5008

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4976
  call void @llvm.dbg.value(metadata i32 %41, metadata !4970, metadata !DIExpression()), !dbg !4976
  %42 = icmp eq ptr %4, null, !dbg !5010
  br i1 %42, label %43, label %44, !dbg !5012

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !4969, metadata !DIExpression()), !dbg !4976
  store i64 %25, ptr %3, align 8, !dbg !5013, !tbaa !3712
  br label %386, !dbg !5015

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !5016, !tbaa !1037
  %48 = icmp eq i8 %47, 0, !dbg !5017
  br i1 %48, label %383, label %49, !dbg !5018

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32, !dbg !5016
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #39, !dbg !5019
  %52 = icmp eq ptr %51, null, !dbg !5019
  br i1 %52, label %53, label %55, !dbg !5021

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 %25, metadata !4969, metadata !DIExpression()), !dbg !4976
  store i64 %46, ptr %3, align 8, !dbg !5022, !tbaa !3712
  %54 = or i32 %45, 2, !dbg !5024
  br label %386, !dbg !5025

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 1024, metadata !4971, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata i32 1, metadata !4974, metadata !DIExpression()), !dbg !5026
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
  ], !dbg !5027

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #39, !dbg !5028
  %58 = icmp eq ptr %57, null, !dbg !5028
  br i1 %58, label %68, label %59, !dbg !5031

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !5032
  %61 = load i8, ptr %60, align 1, !dbg !5032, !tbaa !1037
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !5033

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !5034
  %64 = load i8, ptr %63, align 1, !dbg !5034, !tbaa !1037
  %65 = icmp eq i8 %64, 66, !dbg !5037
  %66 = select i1 %65, i64 3, i64 1, !dbg !5038
  br label %68, !dbg !5038

67:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !4971, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata i32 2, metadata !4974, metadata !DIExpression()), !dbg !5026
  br label %68, !dbg !5039

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ]
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4974, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata i32 poison, metadata !4971, metadata !DIExpression()), !dbg !5026
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
  ], !dbg !5040

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5059
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5061
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !5061
  %74 = mul i64 %46, %69, !dbg !5061
  call void @llvm.dbg.value(metadata i64 %74, metadata !5058, metadata !DIExpression()), !dbg !5059
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !5059
  call void @llvm.dbg.value(metadata i1 %73, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i1 %73, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5059
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !5061
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !5061
  %78 = mul i64 %75, %69, !dbg !5061
  call void @llvm.dbg.value(metadata i64 %78, metadata !5058, metadata !DIExpression()), !dbg !5059
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !5059
  %80 = or i1 %73, %77, !dbg !5063
  call void @llvm.dbg.value(metadata i1 %80, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i1 %80, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5059
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !5061
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !5061
  %83 = mul i64 %79, %69, !dbg !5061
  call void @llvm.dbg.value(metadata i64 %83, metadata !5058, metadata !DIExpression()), !dbg !5059
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !5059
  %85 = or i1 %80, %82, !dbg !5063
  call void @llvm.dbg.value(metadata i1 %85, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i1 %85, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5059
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !5061
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !5061
  %88 = mul i64 %84, %69, !dbg !5061
  call void @llvm.dbg.value(metadata i64 %88, metadata !5058, metadata !DIExpression()), !dbg !5059
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !5059
  %90 = or i1 %85, %87, !dbg !5063
  call void @llvm.dbg.value(metadata i1 %90, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i1 %90, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5059
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !5061
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !5061
  %93 = mul i64 %89, %69, !dbg !5061
  call void @llvm.dbg.value(metadata i64 %93, metadata !5058, metadata !DIExpression()), !dbg !5059
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !5059
  %95 = or i1 %90, %92, !dbg !5063
  call void @llvm.dbg.value(metadata i1 %95, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i1 %95, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5059
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !5061
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !5061
  %98 = mul i64 %94, %69, !dbg !5061
  call void @llvm.dbg.value(metadata i64 %98, metadata !5058, metadata !DIExpression()), !dbg !5059
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !5059
  %100 = or i1 %95, %97, !dbg !5063
  call void @llvm.dbg.value(metadata i1 %100, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i1 %100, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5049
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5059
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !5061
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !5061
  %103 = mul i64 %99, %69, !dbg !5061
  call void @llvm.dbg.value(metadata i64 %103, metadata !5058, metadata !DIExpression()), !dbg !5059
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !5059
  %105 = or i1 %100, %102, !dbg !5063
  %106 = zext i1 %105 to i32, !dbg !5063
  call void @llvm.dbg.value(metadata i32 %106, metadata !5041, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5049
  br label %372, !dbg !5064

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 8, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5067
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5069
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !5069
  %110 = mul i64 %46, %69, !dbg !5069
  call void @llvm.dbg.value(metadata i64 %110, metadata !5058, metadata !DIExpression()), !dbg !5067
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !5067
  call void @llvm.dbg.value(metadata i1 %109, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i1 %109, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5067
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !5069
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !5069
  %114 = mul i64 %111, %69, !dbg !5069
  call void @llvm.dbg.value(metadata i64 %114, metadata !5058, metadata !DIExpression()), !dbg !5067
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !5067
  %116 = or i1 %109, %113, !dbg !5070
  call void @llvm.dbg.value(metadata i1 %116, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i1 %116, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5067
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !5069
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !5069
  %119 = mul i64 %115, %69, !dbg !5069
  call void @llvm.dbg.value(metadata i64 %119, metadata !5058, metadata !DIExpression()), !dbg !5067
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !5067
  %121 = or i1 %116, %118, !dbg !5070
  call void @llvm.dbg.value(metadata i1 %121, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i1 %121, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5067
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !5069
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !5069
  %124 = mul i64 %120, %69, !dbg !5069
  call void @llvm.dbg.value(metadata i64 %124, metadata !5058, metadata !DIExpression()), !dbg !5067
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !5067
  %126 = or i1 %121, %123, !dbg !5070
  call void @llvm.dbg.value(metadata i1 %126, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i1 %126, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5067
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !5069
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !5069
  %129 = mul i64 %125, %69, !dbg !5069
  call void @llvm.dbg.value(metadata i64 %129, metadata !5058, metadata !DIExpression()), !dbg !5067
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !5067
  %131 = or i1 %126, %128, !dbg !5070
  call void @llvm.dbg.value(metadata i1 %131, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i1 %131, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5067
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !5069
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !5069
  %134 = mul i64 %130, %69, !dbg !5069
  call void @llvm.dbg.value(metadata i64 %134, metadata !5058, metadata !DIExpression()), !dbg !5067
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !5067
  %136 = or i1 %131, %133, !dbg !5070
  call void @llvm.dbg.value(metadata i1 %136, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i1 %136, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5067
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !5069
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !5069
  %139 = mul i64 %135, %69, !dbg !5069
  call void @llvm.dbg.value(metadata i64 %139, metadata !5058, metadata !DIExpression()), !dbg !5067
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !5067
  %141 = or i1 %136, %138, !dbg !5070
  call void @llvm.dbg.value(metadata i1 %141, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i1 %141, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5067
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !5069
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !5069
  %144 = mul i64 %140, %69, !dbg !5069
  call void @llvm.dbg.value(metadata i64 %144, metadata !5058, metadata !DIExpression()), !dbg !5067
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !5067
  %146 = or i1 %141, %143, !dbg !5070
  %147 = zext i1 %146 to i32, !dbg !5070
  call void @llvm.dbg.value(metadata i32 %147, metadata !5041, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5065
  br label %372, !dbg !5064

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 9, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 8, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5073
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5075
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !5075
  %151 = mul i64 %46, %69, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %151, metadata !5058, metadata !DIExpression()), !dbg !5073
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !5073
  call void @llvm.dbg.value(metadata i1 %150, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 8, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i1 %150, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 8, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5073
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !5075
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !5075
  %155 = mul i64 %152, %69, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %155, metadata !5058, metadata !DIExpression()), !dbg !5073
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !5073
  %157 = or i1 %150, %154, !dbg !5076
  call void @llvm.dbg.value(metadata i1 %157, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i1 %157, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5073
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !5075
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !5075
  %160 = mul i64 %156, %69, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %160, metadata !5058, metadata !DIExpression()), !dbg !5073
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !5073
  %162 = or i1 %157, %159, !dbg !5076
  call void @llvm.dbg.value(metadata i1 %162, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i1 %162, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5073
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !5075
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !5075
  %165 = mul i64 %161, %69, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %165, metadata !5058, metadata !DIExpression()), !dbg !5073
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !5073
  %167 = or i1 %162, %164, !dbg !5076
  call void @llvm.dbg.value(metadata i1 %167, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i1 %167, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5073
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !5075
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !5075
  %170 = mul i64 %166, %69, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %170, metadata !5058, metadata !DIExpression()), !dbg !5073
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !5073
  %172 = or i1 %167, %169, !dbg !5076
  call void @llvm.dbg.value(metadata i1 %172, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i1 %172, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5073
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !5075
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !5075
  %175 = mul i64 %171, %69, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %175, metadata !5058, metadata !DIExpression()), !dbg !5073
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !5073
  %177 = or i1 %172, %174, !dbg !5076
  call void @llvm.dbg.value(metadata i1 %177, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i1 %177, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5073
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !5075
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !5075
  %180 = mul i64 %176, %69, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %180, metadata !5058, metadata !DIExpression()), !dbg !5073
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !5073
  %182 = or i1 %177, %179, !dbg !5076
  call void @llvm.dbg.value(metadata i1 %182, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i1 %182, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5073
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !5075
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !5075
  %185 = mul i64 %181, %69, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %185, metadata !5058, metadata !DIExpression()), !dbg !5073
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !5073
  %187 = or i1 %182, %184, !dbg !5076
  call void @llvm.dbg.value(metadata i1 %187, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i1 %187, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5071
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5073
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !5075
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !5075
  %190 = mul i64 %186, %69, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %190, metadata !5058, metadata !DIExpression()), !dbg !5073
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !5073
  %192 = or i1 %187, %189, !dbg !5076
  %193 = zext i1 %192 to i32, !dbg !5076
  call void @llvm.dbg.value(metadata i32 %193, metadata !5041, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5071
  br label %372, !dbg !5064

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 10, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 9, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5081
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !5081
  %197 = mul i64 %46, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %197, metadata !5058, metadata !DIExpression()), !dbg !5079
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !5079
  call void @llvm.dbg.value(metadata i1 %196, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 9, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i1 %196, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 9, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 8, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !5081
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !5081
  %201 = mul i64 %198, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %201, metadata !5058, metadata !DIExpression()), !dbg !5079
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !5079
  %203 = or i1 %196, %200, !dbg !5082
  call void @llvm.dbg.value(metadata i1 %203, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 8, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i1 %203, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 8, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !5081
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !5081
  %206 = mul i64 %202, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %206, metadata !5058, metadata !DIExpression()), !dbg !5079
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !5079
  %208 = or i1 %203, %205, !dbg !5082
  call void @llvm.dbg.value(metadata i1 %208, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i1 %208, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 7, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !5081
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !5081
  %211 = mul i64 %207, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %211, metadata !5058, metadata !DIExpression()), !dbg !5079
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !5079
  %213 = or i1 %208, %210, !dbg !5082
  call void @llvm.dbg.value(metadata i1 %213, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i1 %213, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !5081
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !5081
  %216 = mul i64 %212, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %216, metadata !5058, metadata !DIExpression()), !dbg !5079
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !5079
  %218 = or i1 %213, %215, !dbg !5082
  call void @llvm.dbg.value(metadata i1 %218, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i1 %218, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !5081
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !5081
  %221 = mul i64 %217, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %221, metadata !5058, metadata !DIExpression()), !dbg !5079
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !5079
  %223 = or i1 %218, %220, !dbg !5082
  call void @llvm.dbg.value(metadata i1 %223, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i1 %223, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !5081
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !5081
  %226 = mul i64 %222, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %226, metadata !5058, metadata !DIExpression()), !dbg !5079
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !5079
  %228 = or i1 %223, %225, !dbg !5082
  call void @llvm.dbg.value(metadata i1 %228, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i1 %228, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !5081
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !5081
  %231 = mul i64 %227, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %231, metadata !5058, metadata !DIExpression()), !dbg !5079
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !5079
  %233 = or i1 %228, %230, !dbg !5082
  call void @llvm.dbg.value(metadata i1 %233, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i1 %233, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !5081
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !5081
  %236 = mul i64 %232, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %236, metadata !5058, metadata !DIExpression()), !dbg !5079
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !5079
  %238 = or i1 %233, %235, !dbg !5082
  call void @llvm.dbg.value(metadata i1 %238, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i1 %238, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5077
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5079
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !5081
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !5081
  %241 = mul i64 %237, %69, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %241, metadata !5058, metadata !DIExpression()), !dbg !5079
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !5079
  %243 = or i1 %238, %240, !dbg !5082
  %244 = zext i1 %243 to i32, !dbg !5082
  call void @llvm.dbg.value(metadata i32 %244, metadata !5041, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5077
  br label %372, !dbg !5064

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5085
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5087
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !5087
  %248 = mul i64 %46, %69, !dbg !5087
  call void @llvm.dbg.value(metadata i64 %248, metadata !5058, metadata !DIExpression()), !dbg !5085
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !5085
  call void @llvm.dbg.value(metadata i1 %247, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i1 %247, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5085
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !5087
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !5087
  %252 = mul i64 %249, %69, !dbg !5087
  call void @llvm.dbg.value(metadata i64 %252, metadata !5058, metadata !DIExpression()), !dbg !5085
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !5085
  %254 = or i1 %247, %251, !dbg !5088
  call void @llvm.dbg.value(metadata i1 %254, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i1 %254, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5085
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !5087
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !5087
  %257 = mul i64 %253, %69, !dbg !5087
  call void @llvm.dbg.value(metadata i64 %257, metadata !5058, metadata !DIExpression()), !dbg !5085
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !5085
  %259 = or i1 %254, %256, !dbg !5088
  call void @llvm.dbg.value(metadata i1 %259, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i1 %259, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5085
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !5087
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !5087
  %262 = mul i64 %258, %69, !dbg !5087
  call void @llvm.dbg.value(metadata i64 %262, metadata !5058, metadata !DIExpression()), !dbg !5085
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !5085
  %264 = or i1 %259, %261, !dbg !5088
  call void @llvm.dbg.value(metadata i1 %264, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i1 %264, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5083
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5085
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !5087
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !5087
  %267 = mul i64 %263, %69, !dbg !5087
  call void @llvm.dbg.value(metadata i64 %267, metadata !5058, metadata !DIExpression()), !dbg !5085
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !5085
  %269 = or i1 %264, %266, !dbg !5088
  %270 = zext i1 %269 to i32, !dbg !5088
  call void @llvm.dbg.value(metadata i32 %270, metadata !5041, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5083
  br label %372, !dbg !5064

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 6, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5091
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5093
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !5093
  %274 = mul i64 %46, %69, !dbg !5093
  call void @llvm.dbg.value(metadata i64 %274, metadata !5058, metadata !DIExpression()), !dbg !5091
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !5091
  call void @llvm.dbg.value(metadata i1 %273, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i1 %273, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 5, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5091
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !5093
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !5093
  %278 = mul i64 %275, %69, !dbg !5093
  call void @llvm.dbg.value(metadata i64 %278, metadata !5058, metadata !DIExpression()), !dbg !5091
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !5091
  %280 = or i1 %273, %277, !dbg !5094
  call void @llvm.dbg.value(metadata i1 %280, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i1 %280, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5091
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !5093
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !5093
  %283 = mul i64 %279, %69, !dbg !5093
  call void @llvm.dbg.value(metadata i64 %283, metadata !5058, metadata !DIExpression()), !dbg !5091
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !5091
  %285 = or i1 %280, %282, !dbg !5094
  call void @llvm.dbg.value(metadata i1 %285, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i1 %285, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5091
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !5093
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !5093
  %288 = mul i64 %284, %69, !dbg !5093
  call void @llvm.dbg.value(metadata i64 %288, metadata !5058, metadata !DIExpression()), !dbg !5091
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !5091
  %290 = or i1 %285, %287, !dbg !5094
  call void @llvm.dbg.value(metadata i1 %290, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i1 %290, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5091
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !5093
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !5093
  %293 = mul i64 %289, %69, !dbg !5093
  call void @llvm.dbg.value(metadata i64 %293, metadata !5058, metadata !DIExpression()), !dbg !5091
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !5091
  %295 = or i1 %290, %292, !dbg !5094
  call void @llvm.dbg.value(metadata i1 %295, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i1 %295, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5089
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5091
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !5093
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !5093
  %298 = mul i64 %294, %69, !dbg !5093
  call void @llvm.dbg.value(metadata i64 %298, metadata !5058, metadata !DIExpression()), !dbg !5091
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !5091
  %300 = or i1 %295, %297, !dbg !5094
  %301 = zext i1 %300 to i32, !dbg !5094
  call void @llvm.dbg.value(metadata i32 %301, metadata !5041, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5089
  br label %372, !dbg !5064

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.value(metadata i32 512, metadata !5057, metadata !DIExpression()), !dbg !5095
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !5097
  %304 = shl i64 %46, 9, !dbg !5097
  call void @llvm.dbg.value(metadata i64 %304, metadata !5058, metadata !DIExpression()), !dbg !5095
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !5095
  %306 = zext i1 %303 to i32, !dbg !5095
  call void @llvm.dbg.value(metadata i32 %306, metadata !4975, metadata !DIExpression()), !dbg !5026
  br label %372, !dbg !5098

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i32 1024, metadata !5057, metadata !DIExpression()), !dbg !5099
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !5101
  %309 = shl i64 %46, 10, !dbg !5101
  call void @llvm.dbg.value(metadata i64 %309, metadata !5058, metadata !DIExpression()), !dbg !5099
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !5099
  %311 = zext i1 %308 to i32, !dbg !5099
  call void @llvm.dbg.value(metadata i32 %311, metadata !4975, metadata !DIExpression()), !dbg !5026
  br label %372, !dbg !5102

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !5046, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i32 poison, metadata !5047, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5103
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5105
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5107
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !5107
  %315 = mul i64 %46, %69, !dbg !5107
  call void @llvm.dbg.value(metadata i64 %315, metadata !5058, metadata !DIExpression()), !dbg !5105
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !5105
  call void @llvm.dbg.value(metadata i1 %314, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5103
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5103
  call void @llvm.dbg.value(metadata i1 %314, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5103
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5105
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !5107
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !5107
  %319 = mul i64 %316, %69, !dbg !5107
  call void @llvm.dbg.value(metadata i64 %319, metadata !5058, metadata !DIExpression()), !dbg !5105
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !5105
  %321 = or i1 %314, %318, !dbg !5108
  call void @llvm.dbg.value(metadata i1 %321, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5103
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5103
  call void @llvm.dbg.value(metadata i1 %321, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5103
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5105
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !5107
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !5107
  %324 = mul i64 %320, %69, !dbg !5107
  call void @llvm.dbg.value(metadata i64 %324, metadata !5058, metadata !DIExpression()), !dbg !5105
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !5105
  %326 = or i1 %321, %323, !dbg !5108
  %327 = zext i1 %326 to i32, !dbg !5108
  call void @llvm.dbg.value(metadata i32 %327, metadata !5041, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5103
  br label %372, !dbg !5064

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !5046, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i32 poison, metadata !5047, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5109
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5111
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !5111
  %331 = mul i64 %46, %69, !dbg !5111
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !5113
  %333 = zext i1 %330 to i32, !dbg !5113
  call void @llvm.dbg.value(metadata i32 poison, metadata !5041, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i32 poison, metadata !5048, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata ptr poison, metadata !5052, metadata !DIExpression()), !dbg !5113
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5113
  call void @llvm.dbg.value(metadata i64 poison, metadata !5058, metadata !DIExpression()), !dbg !5113
  br label %372, !dbg !5064

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !5046, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 poison, metadata !5047, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5116
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5118
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !5118
  %337 = mul i64 %46, %69, !dbg !5118
  call void @llvm.dbg.value(metadata i64 %337, metadata !5058, metadata !DIExpression()), !dbg !5116
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !5116
  call void @llvm.dbg.value(metadata i1 %336, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i1 %336, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5114
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5116
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !5118
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !5118
  %341 = mul i64 %338, %69, !dbg !5118
  call void @llvm.dbg.value(metadata i64 %341, metadata !5058, metadata !DIExpression()), !dbg !5116
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !5116
  %343 = or i1 %336, %340, !dbg !5119
  %344 = zext i1 %343 to i32, !dbg !5119
  call void @llvm.dbg.value(metadata i32 %344, metadata !5041, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5114
  br label %372, !dbg !5064

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !5046, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 poison, metadata !5047, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i32 0, metadata !5041, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 4, metadata !5048, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5122
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5122
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !5124
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !5124
  %348 = mul i64 %46, %69, !dbg !5124
  call void @llvm.dbg.value(metadata i64 %348, metadata !5058, metadata !DIExpression()), !dbg !5122
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !5122
  call void @llvm.dbg.value(metadata i1 %347, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i1 %347, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i32 3, metadata !5048, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5122
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5122
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !5124
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !5124
  %352 = mul i64 %349, %69, !dbg !5124
  call void @llvm.dbg.value(metadata i64 %352, metadata !5058, metadata !DIExpression()), !dbg !5122
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !5122
  %354 = or i1 %347, %351, !dbg !5125
  call void @llvm.dbg.value(metadata i1 %354, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i1 %354, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i32 2, metadata !5048, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5122
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5122
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !5124
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !5124
  %357 = mul i64 %353, %69, !dbg !5124
  call void @llvm.dbg.value(metadata i64 %357, metadata !5058, metadata !DIExpression()), !dbg !5122
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !5122
  %359 = or i1 %354, %356, !dbg !5125
  call void @llvm.dbg.value(metadata i1 %359, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i1 %359, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5120
  call void @llvm.dbg.value(metadata i32 1, metadata !5048, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5122
  call void @llvm.dbg.value(metadata i32 poison, metadata !5057, metadata !DIExpression()), !dbg !5122
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !5124
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !5124
  %362 = mul i64 %358, %69, !dbg !5124
  call void @llvm.dbg.value(metadata i64 %362, metadata !5058, metadata !DIExpression()), !dbg !5122
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !5122
  %364 = or i1 %359, %361, !dbg !5125
  %365 = zext i1 %364 to i32, !dbg !5125
  call void @llvm.dbg.value(metadata i32 %365, metadata !5041, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5120
  br label %372, !dbg !5064

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !5052, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.value(metadata i32 2, metadata !5057, metadata !DIExpression()), !dbg !5126
  %367 = shl i64 %46, 1, !dbg !5128
  call void @llvm.dbg.value(metadata i64 %367, metadata !5058, metadata !DIExpression()), !dbg !5126
  %368 = icmp sgt i64 %46, -1, !dbg !5126
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !5126
  %370 = lshr i64 %46, 63, !dbg !5126
  %371 = trunc i64 %370 to i32, !dbg !5126
  call void @llvm.dbg.value(metadata i32 %371, metadata !4975, metadata !DIExpression()), !dbg !5026
  br label %372, !dbg !5129

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4976
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !5130
  call void @llvm.dbg.value(metadata i32 %374, metadata !4975, metadata !DIExpression()), !dbg !5026
  %375 = or i32 %374, %45, !dbg !5064
  call void @llvm.dbg.value(metadata i32 %375, metadata !4970, metadata !DIExpression()), !dbg !4976
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !5131
  store ptr %376, ptr %20, align 8, !dbg !5131, !tbaa !955
  %377 = load i8, ptr %376, align 1, !dbg !5132, !tbaa !1037
  %378 = icmp eq i8 %377, 0, !dbg !5132
  %379 = or i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !5134
  call void @llvm.dbg.value(metadata i32 %380, metadata !4970, metadata !DIExpression()), !dbg !4976
  br label %383

381:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i64 %25, metadata !4969, metadata !DIExpression()), !dbg !4976
  store i64 %46, ptr %3, align 8, !dbg !5135, !tbaa !3712
  %382 = or i32 %45, 2, !dbg !5136
  call void @llvm.dbg.value(metadata i32 %45, metadata !4970, metadata !DIExpression()), !dbg !4976
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !5137
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !5138
  call void @llvm.dbg.value(metadata i32 %385, metadata !4970, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i64 %384, metadata !4969, metadata !DIExpression()), !dbg !4976
  store i64 %384, ptr %3, align 8, !dbg !5139, !tbaa !3712
  br label %386, !dbg !5140

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4976
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #38, !dbg !5141
  ret i32 %387, !dbg !5141
}

; Function Attrs: nounwind
declare !dbg !5142 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !5147 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !5185, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata ptr %1, metadata !5186, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i32 0, metadata !5187, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i32 0, metadata !5188, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i8 0, metadata !5189, metadata !DIExpression()), !dbg !5209
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5190, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata ptr %1, metadata !5194, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.value(metadata ptr %3, metadata !5196, metadata !DIExpression()), !dbg !5212
  br label %4, !dbg !5213

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !5212
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !5209
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !5214
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !5209
  call void @llvm.dbg.value(metadata i32 %9, metadata !5187, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i32 %8, metadata !5188, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata ptr %10, metadata !5196, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.value(metadata ptr %6, metadata !5194, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.value(metadata i8 poison, metadata !5189, metadata !DIExpression()), !dbg !5209
  %11 = load i8, ptr %6, align 1, !dbg !5215, !tbaa !1037
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !5216

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !5187, metadata !DIExpression()), !dbg !5209
  %13 = icmp slt i64 %7, 80, !dbg !5217
  br i1 %13, label %14, label %43, !dbg !5220

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !5221
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !5196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5212
  store i8 114, ptr %10, align 1, !dbg !5222, !tbaa !1037
  br label %43, !dbg !5223

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !5187, metadata !DIExpression()), !dbg !5209
  %17 = or i32 %8, 576, !dbg !5224
  call void @llvm.dbg.value(metadata i32 %17, metadata !5188, metadata !DIExpression()), !dbg !5209
  %18 = icmp slt i64 %7, 80, !dbg !5225
  br i1 %18, label %19, label %43, !dbg !5227

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !5228
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !5196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5212
  store i8 119, ptr %10, align 1, !dbg !5229, !tbaa !1037
  br label %43, !dbg !5230

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !5187, metadata !DIExpression()), !dbg !5209
  %22 = or i32 %8, 1088, !dbg !5231
  call void @llvm.dbg.value(metadata i32 %22, metadata !5188, metadata !DIExpression()), !dbg !5209
  %23 = icmp slt i64 %7, 80, !dbg !5232
  br i1 %23, label %24, label %43, !dbg !5234

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !5235
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !5196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5212
  store i8 97, ptr %10, align 1, !dbg !5236, !tbaa !1037
  br label %43, !dbg !5237

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !5188, metadata !DIExpression()), !dbg !5209
  %27 = icmp slt i64 %7, 80, !dbg !5238
  br i1 %27, label %28, label %43, !dbg !5240

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5241
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5212
  store i8 98, ptr %10, align 1, !dbg !5242, !tbaa !1037
  br label %43, !dbg !5243

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !5187, metadata !DIExpression()), !dbg !5209
  %31 = icmp slt i64 %7, 80, !dbg !5244
  br i1 %31, label %32, label %43, !dbg !5246

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5247
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5212
  store i8 43, ptr %10, align 1, !dbg !5248, !tbaa !1037
  br label %43, !dbg !5249

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5250
  call void @llvm.dbg.value(metadata i32 %35, metadata !5188, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i8 1, metadata !5189, metadata !DIExpression()), !dbg !5209
  br label %43, !dbg !5251

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5252
  call void @llvm.dbg.value(metadata i32 %37, metadata !5188, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i8 1, metadata !5189, metadata !DIExpression()), !dbg !5209
  br label %43, !dbg !5253

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #39, !dbg !5254
  call void @llvm.dbg.value(metadata i64 %39, metadata !5197, metadata !DIExpression()), !dbg !5255
  %40 = sub nsw i64 80, %7, !dbg !5256
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5258
  call void @llvm.dbg.value(metadata i64 %41, metadata !5197, metadata !DIExpression()), !dbg !5255
  call void @llvm.dbg.value(metadata ptr %10, metadata !5259, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.value(metadata ptr %6, metadata !5262, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.value(metadata i64 %41, metadata !5263, metadata !DIExpression()), !dbg !5264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #38, !dbg !5266
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5267
  call void @llvm.dbg.value(metadata ptr %42, metadata !5196, metadata !DIExpression()), !dbg !5212
  br label %49, !dbg !5268

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !5209
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !5209
  call void @llvm.dbg.value(metadata i32 %47, metadata !5187, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i32 %46, metadata !5188, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !5196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5212
  call void @llvm.dbg.value(metadata i8 poison, metadata !5189, metadata !DIExpression()), !dbg !5209
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5269
  call void @llvm.dbg.value(metadata ptr %48, metadata !5194, metadata !DIExpression()), !dbg !5212
  br label %4, !dbg !5270, !llvm.loop !5271

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !5212
  call void @llvm.dbg.value(metadata ptr %50, metadata !5196, metadata !DIExpression()), !dbg !5212
  store i8 0, ptr %50, align 1, !dbg !5273, !tbaa !1037
  br i1 %5, label %51, label %62, !dbg !5274

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !5275
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #38, !dbg !5276
  call void @llvm.dbg.value(metadata i32 %53, metadata !5202, metadata !DIExpression()), !dbg !5277
  %54 = icmp slt i32 %53, 0, !dbg !5278
  br i1 %54, label %64, label %55, !dbg !5280

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #38, !dbg !5281
  call void @llvm.dbg.value(metadata ptr %56, metadata !5205, metadata !DIExpression()), !dbg !5277
  %57 = icmp eq ptr %56, null, !dbg !5282
  br i1 %57, label %58, label %64, !dbg !5283

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #41, !dbg !5284
  %60 = load i32, ptr %59, align 4, !dbg !5284, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %60, metadata !5206, metadata !DIExpression()), !dbg !5285
  %61 = tail call i32 @close(i32 noundef %53) #38, !dbg !5286
  store i32 %60, ptr %59, align 4, !dbg !5287, !tbaa !1028
  br label %64, !dbg !5288

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5289, metadata !DIExpression()), !dbg !5293
  call void @llvm.dbg.value(metadata ptr %1, metadata !5292, metadata !DIExpression()), !dbg !5293
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5295
  br label %64, !dbg !5296

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !5209
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !5297
  ret ptr %65, !dbg !5297
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5298 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !5301 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5304 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5305 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5308 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5346, metadata !DIExpression()), !dbg !5351
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !5352
  call void @llvm.dbg.value(metadata i1 poison, metadata !5347, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5351
  call void @llvm.dbg.value(metadata ptr %0, metadata !5353, metadata !DIExpression()), !dbg !5356
  %3 = load i32, ptr %0, align 8, !dbg !5358, !tbaa !1661
  %4 = and i32 %3, 32, !dbg !5359
  %5 = icmp eq i32 %4, 0, !dbg !5359
  call void @llvm.dbg.value(metadata i1 %5, metadata !5349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5351
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !5360
  %7 = icmp eq i32 %6, 0, !dbg !5361
  call void @llvm.dbg.value(metadata i1 %7, metadata !5350, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5351
  br i1 %5, label %8, label %18, !dbg !5362

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5364
  call void @llvm.dbg.value(metadata i1 %9, metadata !5347, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5351
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5365
  %11 = xor i1 %7, true, !dbg !5365
  %12 = sext i1 %11 to i32, !dbg !5365
  br i1 %10, label %21, label %13, !dbg !5365

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !5366
  %15 = load i32, ptr %14, align 4, !dbg !5366, !tbaa !1028
  %16 = icmp ne i32 %15, 9, !dbg !5367
  %17 = sext i1 %16 to i32, !dbg !5368
  br label %21, !dbg !5368

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5369

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !5371
  store i32 0, ptr %20, align 4, !dbg !5373, !tbaa !1028
  br label %21, !dbg !5371

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5351
  ret i32 %22, !dbg !5374
}

; Function Attrs: nounwind
declare !dbg !5375 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5378 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5383, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata ptr %1, metadata !5384, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata i64 %2, metadata !5385, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata ptr %3, metadata !5386, metadata !DIExpression()), !dbg !5388
  %5 = icmp eq ptr %1, null, !dbg !5389
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5391
  %7 = select i1 %5, ptr @.str.153, ptr %1, !dbg !5391
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5391
  call void @llvm.dbg.value(metadata i64 %8, metadata !5385, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata ptr %7, metadata !5384, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.value(metadata ptr %6, metadata !5383, metadata !DIExpression()), !dbg !5388
  %9 = icmp eq ptr %3, null, !dbg !5392
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5394
  call void @llvm.dbg.value(metadata ptr %10, metadata !5386, metadata !DIExpression()), !dbg !5388
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !5395
  call void @llvm.dbg.value(metadata i64 %11, metadata !5387, metadata !DIExpression()), !dbg !5388
  %12 = icmp ult i64 %11, -3, !dbg !5396
  br i1 %12, label %13, label %17, !dbg !5398

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !5399
  %15 = icmp eq i32 %14, 0, !dbg !5399
  br i1 %15, label %16, label %29, !dbg !5400

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5401, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.value(metadata ptr %10, metadata !5408, metadata !DIExpression()), !dbg !5413
  call void @llvm.dbg.value(metadata i32 0, metadata !5411, metadata !DIExpression()), !dbg !5413
  call void @llvm.dbg.value(metadata i64 8, metadata !5412, metadata !DIExpression()), !dbg !5413
  store i64 0, ptr %10, align 1, !dbg !5415
  br label %29, !dbg !5416

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5417
  br i1 %18, label %19, label %20, !dbg !5419

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !5420
  unreachable, !dbg !5420

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5421

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !5423
  br i1 %23, label %29, label %24, !dbg !5424

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5425
  br i1 %25, label %29, label %26, !dbg !5428

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5429, !tbaa !1037
  %28 = zext i8 %27 to i32, !dbg !5430
  store i32 %28, ptr %6, align 4, !dbg !5431, !tbaa !1028
  br label %29, !dbg !5432

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5388
  ret i64 %30, !dbg !5433
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5434 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !5440 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5442, metadata !DIExpression()), !dbg !5446
  call void @llvm.dbg.value(metadata i64 %1, metadata !5443, metadata !DIExpression()), !dbg !5446
  call void @llvm.dbg.value(metadata i64 %2, metadata !5444, metadata !DIExpression()), !dbg !5446
  %4 = icmp eq i64 %2, 0, !dbg !5447
  br i1 %4, label %8, label %5, !dbg !5447

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5447
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5447
  br i1 %7, label %13, label %8, !dbg !5447

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5446
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5446
  %9 = mul i64 %2, %1, !dbg !5447
  call void @llvm.dbg.value(metadata i64 %9, metadata !5445, metadata !DIExpression()), !dbg !5446
  call void @llvm.dbg.value(metadata ptr %0, metadata !5449, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.value(metadata i64 %9, metadata !5452, metadata !DIExpression()), !dbg !5453
  %10 = icmp eq i64 %9, 0, !dbg !5455
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5455
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !5456
  br label %15, !dbg !5457

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5446
  %14 = tail call ptr @__errno_location() #41, !dbg !5458
  store i32 12, ptr %14, align 4, !dbg !5460, !tbaa !1028
  br label %15, !dbg !5461

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5446
  ret ptr %16, !dbg !5462
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5463 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5465, metadata !DIExpression()), !dbg !5470
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !5471
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5466, metadata !DIExpression()), !dbg !5472
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !5473
  %4 = icmp eq i32 %3, 0, !dbg !5473
  br i1 %4, label %5, label %12, !dbg !5475

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5476, metadata !DIExpression()), !dbg !5480
  call void @llvm.dbg.value(metadata ptr @.str.158, metadata !5479, metadata !DIExpression()), !dbg !5480
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.158, i64 2), !dbg !5483
  %7 = icmp eq i32 %6, 0, !dbg !5484
  br i1 %7, label %11, label %8, !dbg !5485

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5476, metadata !DIExpression()), !dbg !5486
  call void @llvm.dbg.value(metadata ptr @.str.1.159, metadata !5479, metadata !DIExpression()), !dbg !5486
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.159, i64 6), !dbg !5488
  %10 = icmp eq i32 %9, 0, !dbg !5489
  br i1 %10, label %11, label %12, !dbg !5490

11:                                               ; preds = %8, %5
  br label %12, !dbg !5491

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5470
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !5492
  ret i1 %13, !dbg !5492
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5493 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5497, metadata !DIExpression()), !dbg !5500
  call void @llvm.dbg.value(metadata ptr %1, metadata !5498, metadata !DIExpression()), !dbg !5500
  call void @llvm.dbg.value(metadata i64 %2, metadata !5499, metadata !DIExpression()), !dbg !5500
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !5501
  ret i32 %4, !dbg !5502
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5507, metadata !DIExpression()), !dbg !5508
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !5509
  ret ptr %2, !dbg !5510
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5513, metadata !DIExpression()), !dbg !5515
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5516
  call void @llvm.dbg.value(metadata ptr %2, metadata !5514, metadata !DIExpression()), !dbg !5515
  ret ptr %2, !dbg !5517
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5518 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5520, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.value(metadata ptr %1, metadata !5521, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.value(metadata i64 %2, metadata !5522, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.value(metadata i32 %0, metadata !5513, metadata !DIExpression()), !dbg !5528
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5530
  call void @llvm.dbg.value(metadata ptr %4, metadata !5514, metadata !DIExpression()), !dbg !5528
  call void @llvm.dbg.value(metadata ptr %4, metadata !5523, metadata !DIExpression()), !dbg !5527
  %5 = icmp eq ptr %4, null, !dbg !5531
  br i1 %5, label %6, label %9, !dbg !5532

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5533
  br i1 %7, label %19, label %8, !dbg !5536

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5537, !tbaa !1037
  br label %19, !dbg !5538

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5539
  call void @llvm.dbg.value(metadata i64 %10, metadata !5524, metadata !DIExpression()), !dbg !5540
  %11 = icmp ult i64 %10, %2, !dbg !5541
  br i1 %11, label %12, label %14, !dbg !5543

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5544
  call void @llvm.dbg.value(metadata ptr %1, metadata !5546, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.value(metadata ptr %4, metadata !5549, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.value(metadata i64 %13, metadata !5550, metadata !DIExpression()), !dbg !5551
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !5553
  br label %19, !dbg !5554

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5555
  br i1 %15, label %19, label %16, !dbg !5558

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5559
  call void @llvm.dbg.value(metadata ptr %1, metadata !5546, metadata !DIExpression()), !dbg !5561
  call void @llvm.dbg.value(metadata ptr %4, metadata !5549, metadata !DIExpression()), !dbg !5561
  call void @llvm.dbg.value(metadata i64 %17, metadata !5550, metadata !DIExpression()), !dbg !5561
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5563
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5564
  store i8 0, ptr %18, align 1, !dbg !5565, !tbaa !1037
  br label %19, !dbg !5566

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5567
  ret i32 %20, !dbg !5568
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
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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

!llvm.dbg.cu = !{!89, !513, !517, !532, !811, !848, !851, !853, !856, !858, !860, !586, !600, !648, !862, !803, !868, !902, !904, !916, !923, !925, !830, !927, !930, !932, !934}
!llvm.ident = !{!936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936, !936}
!llvm.module.flags = !{!937, !938, !939, !940, !941, !942, !943}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/fmt.c", directory: "/src", checksumkind: CSK_MD5, checksum: "eb1a2f812a56a354a71cb409e5b398fe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!95 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!96 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
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
!240 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !243)
!242 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!265 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!496 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!531 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !532, file: !533, line: 66, type: !581, isLocal: false, isDefinition: true)
!532 = distinct !DICompileUnit(language: DW_LANG_C11, file: !533, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !534, globals: !535, splitDebugInlining: false, nameTableKind: None)
!533 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!534 = !{!145, !152}
!535 = !{!536, !538, !563, !565, !567, !569, !530, !571, !573, !575, !577, !579}
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !533, line: 272, type: !297, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "old_file_name", scope: !540, file: !533, line: 304, type: !150, isLocal: true, isDefinition: true)
!540 = distinct !DISubprogram(name: "verror_at_line", scope: !533, file: !533, line: 298, type: !541, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !556)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !93, !93, !150, !99, !150, !543}
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !544, line: 52, baseType: !545)
!544 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !546, line: 14, baseType: !547)
!546 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !548, baseType: !549)
!548 = !DIFile(filename: "lib/error.c", directory: "/src")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !550)
!550 = !{!551, !552, !553, !554, !555}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !549, file: !548, baseType: !145, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !549, file: !548, baseType: !145, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !549, file: !548, baseType: !145, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !549, file: !548, baseType: !93, size: 32, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !549, file: !548, baseType: !93, size: 32, offset: 224)
!556 = !{!557, !558, !559, !560, !561, !562}
!557 = !DILocalVariable(name: "status", arg: 1, scope: !540, file: !533, line: 298, type: !93)
!558 = !DILocalVariable(name: "errnum", arg: 2, scope: !540, file: !533, line: 298, type: !93)
!559 = !DILocalVariable(name: "file_name", arg: 3, scope: !540, file: !533, line: 298, type: !150)
!560 = !DILocalVariable(name: "line_number", arg: 4, scope: !540, file: !533, line: 298, type: !99)
!561 = !DILocalVariable(name: "message", arg: 5, scope: !540, file: !533, line: 298, type: !150)
!562 = !DILocalVariable(name: "args", arg: 6, scope: !540, file: !533, line: 298, type: !543)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "old_line_number", scope: !540, file: !533, line: 305, type: !99, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !533, line: 338, type: !19, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !533, line: 346, type: !330, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !533, line: 346, type: !173, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "error_message_count", scope: !532, file: !533, line: 69, type: !99, isLocal: false, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !532, file: !533, line: 295, type: !93, isLocal: false, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !533, line: 208, type: !325, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !533, line: 208, type: !84, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !533, line: 214, type: !297, isLocal: true, isDefinition: true)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null}
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "program_name", scope: !586, file: !587, line: 31, type: !150, isLocal: false, isDefinition: true)
!586 = distinct !DICompileUnit(language: DW_LANG_C11, file: !587, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !588, globals: !589, splitDebugInlining: false, nameTableKind: None)
!587 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!588 = !{!144}
!589 = !{!584, !590, !592}
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !587, line: 46, type: !330, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !587, line: 49, type: !19, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "utf07FF", scope: !596, file: !597, line: 46, type: !624, isLocal: true, isDefinition: true)
!596 = distinct !DISubprogram(name: "proper_name_lite", scope: !597, file: !597, line: 38, type: !598, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !602)
!597 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!598 = !DISubroutineType(types: !599)
!599 = !{!150, !150, !150}
!600 = distinct !DICompileUnit(language: DW_LANG_C11, file: !597, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !601, splitDebugInlining: false, nameTableKind: None)
!601 = !{!594}
!602 = !{!603, !604, !605, !606, !611}
!603 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !596, file: !597, line: 38, type: !150)
!604 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !596, file: !597, line: 38, type: !150)
!605 = !DILocalVariable(name: "translation", scope: !596, file: !597, line: 40, type: !150)
!606 = !DILocalVariable(name: "w", scope: !596, file: !597, line: 47, type: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !608, line: 37, baseType: !609)
!608 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !265, line: 57, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !265, line: 42, baseType: !99)
!611 = !DILocalVariable(name: "mbs", scope: !596, file: !597, line: 48, type: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !613, line: 6, baseType: !614)
!613 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !615, line: 21, baseType: !616)
!615 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !615, line: 13, size: 64, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !616, file: !615, line: 15, baseType: !93, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !616, file: !615, line: 20, baseType: !620, size: 32, offset: 32)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !615, line: 16, size: 32, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !620, file: !615, line: 18, baseType: !99, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !620, file: !615, line: 19, baseType: !19, size: 32)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 16, elements: !174)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !627, line: 78, type: !330, isLocal: true, isDefinition: true)
!627 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !627, line: 79, type: !306, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !627, line: 80, type: !403, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !627, line: 81, type: !403, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !627, line: 82, type: !286, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !627, line: 83, type: !173, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !627, line: 84, type: !330, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !627, line: 85, type: !325, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !627, line: 86, type: !325, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !627, line: 87, type: !330, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !648, file: !627, line: 76, type: !720, isLocal: false, isDefinition: true)
!648 = distinct !DICompileUnit(language: DW_LANG_C11, file: !627, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !649, retainedTypes: !655, globals: !656, splitDebugInlining: false, nameTableKind: None)
!649 = !{!105, !650, !119}
!650 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !106, line: 254, baseType: !99, size: 32, elements: !651)
!651 = !{!652, !653, !654}
!652 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!653 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!654 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!655 = !{!93, !146, !147}
!656 = !{!625, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !657, !661, !671, !673, !678, !680, !682, !684, !686, !709, !716, !718}
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !648, file: !627, line: 92, type: !659, isLocal: false, isDefinition: true)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 320, elements: !75)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !648, file: !627, line: 1040, type: !663, isLocal: false, isDefinition: true)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !627, line: 56, size: 448, elements: !664)
!664 = !{!665, !666, !667, !669, !670}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !663, file: !627, line: 59, baseType: !105, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !627, line: 62, baseType: !93, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !663, file: !627, line: 66, baseType: !668, size: 256, offset: 64)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !331)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !663, file: !627, line: 69, baseType: !150, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !663, file: !627, line: 72, baseType: !150, size: 64, offset: 384)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !648, file: !627, line: 107, type: !663, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "slot0", scope: !648, file: !627, line: 831, type: !675, isLocal: true, isDefinition: true)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 256)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !627, line: 321, type: !173, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !627, line: 357, type: !173, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !627, line: 358, type: !173, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !627, line: 199, type: !325, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "quote", scope: !688, file: !627, line: 228, type: !707, isLocal: true, isDefinition: true)
!688 = distinct !DISubprogram(name: "gettext_quote", scope: !627, file: !627, line: 197, type: !689, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!150, !150, !105}
!691 = !{!692, !693, !694, !695, !696}
!692 = !DILocalVariable(name: "msgid", arg: 1, scope: !688, file: !627, line: 197, type: !150)
!693 = !DILocalVariable(name: "s", arg: 2, scope: !688, file: !627, line: 197, type: !105)
!694 = !DILocalVariable(name: "translation", scope: !688, file: !627, line: 199, type: !150)
!695 = !DILocalVariable(name: "w", scope: !688, file: !627, line: 229, type: !607)
!696 = !DILocalVariable(name: "mbs", scope: !688, file: !627, line: 230, type: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !613, line: 6, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !615, line: 21, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !615, line: 13, size: 64, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !699, file: !615, line: 15, baseType: !93, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !699, file: !615, line: 20, baseType: !703, size: 32, offset: 32)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !699, file: !615, line: 16, size: 32, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !703, file: !615, line: 18, baseType: !99, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !703, file: !615, line: 19, baseType: !19, size: 32)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !708)
!708 = !{!175, !21}
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "slotvec", scope: !648, file: !627, line: 834, type: !711, isLocal: true, isDefinition: true)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !627, line: 823, size: 128, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !712, file: !627, line: 825, baseType: !147, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !712, file: !627, line: 826, baseType: !144, size: 64, offset: 64)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "nslots", scope: !648, file: !627, line: 832, type: !93, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "slotvec0", scope: !648, file: !627, line: 833, type: !712, isLocal: true, isDefinition: true)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 704, elements: !411)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !724, line: 67, type: !398, isLocal: true, isDefinition: true)
!724 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !724, line: 69, type: !325, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !724, line: 83, type: !325, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !724, line: 83, type: !19, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !724, line: 85, type: !173, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !724, line: 88, type: !735, isLocal: true, isDefinition: true)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 171)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !724, line: 88, type: !740, isLocal: true, isDefinition: true)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 34)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !724, line: 105, type: !375, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !724, line: 109, type: !190, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !724, line: 113, type: !749, isLocal: true, isDefinition: true)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 28)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !724, line: 120, type: !754, isLocal: true, isDefinition: true)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 32)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !724, line: 127, type: !759, isLocal: true, isDefinition: true)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 36)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !724, line: 134, type: !352, isLocal: true, isDefinition: true)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !724, line: 142, type: !766, isLocal: true, isDefinition: true)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 44)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !724, line: 150, type: !771, isLocal: true, isDefinition: true)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 48)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !724, line: 159, type: !776, isLocal: true, isDefinition: true)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 52)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !724, line: 170, type: !781, isLocal: true, isDefinition: true)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 60)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !724, line: 248, type: !286, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !724, line: 248, type: !380, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !724, line: 254, type: !286, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !724, line: 254, type: !164, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !724, line: 254, type: !352, isLocal: true, isDefinition: true)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !724, line: 259, type: !3, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !724, line: 259, type: !798, isLocal: true, isDefinition: true)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 29)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !803, file: !804, line: 26, type: !806, isLocal: false, isDefinition: true)
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !804, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !805, splitDebugInlining: false, nameTableKind: None)
!804 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!805 = !{!801}
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 376, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 47)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(name: "exit_failure", scope: !811, file: !812, line: 24, type: !814, isLocal: false, isDefinition: true)
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !813, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!813 = !{!809}
!814 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !93)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !817, line: 34, type: !185, isLocal: true, isDefinition: true)
!817 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !817, line: 34, type: !325, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !817, line: 34, type: !347, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !824, line: 80, type: !325, isLocal: true, isDefinition: true)
!824 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !827, line: 108, type: !69, isLocal: true, isDefinition: true)
!827 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "internal_state", scope: !830, file: !827, line: 97, type: !833, isLocal: true, isDefinition: true)
!830 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !831, globals: !832, splitDebugInlining: false, nameTableKind: None)
!831 = !{!145, !147, !152}
!832 = !{!825, !828}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !613, line: 6, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !615, line: 21, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !615, line: 13, size: 64, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !835, file: !615, line: 15, baseType: !93, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !835, file: !615, line: 20, baseType: !839, size: 32, offset: 32)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !615, line: 16, size: 32, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !839, file: !615, line: 18, baseType: !99, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !839, file: !615, line: 19, baseType: !19, size: 32)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !845, line: 35, type: !173, isLocal: true, isDefinition: true)
!845 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !845, line: 35, type: !306, isLocal: true, isDefinition: true)
!848 = distinct !DICompileUnit(language: DW_LANG_C11, file: !849, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !850, splitDebugInlining: false, nameTableKind: None)
!849 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!850 = !{!134}
!851 = distinct !DICompileUnit(language: DW_LANG_C11, file: !852, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!853 = distinct !DICompileUnit(language: DW_LANG_C11, file: !854, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !855, splitDebugInlining: false, nameTableKind: None)
!854 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!855 = !{!145}
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !857, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!857 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!858 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !855, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!860 = distinct !DICompileUnit(language: DW_LANG_C11, file: !861, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !863, retainedTypes: !855, globals: !867, splitDebugInlining: false, nameTableKind: None)
!863 = !{!864}
!864 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !724, line: 40, baseType: !99, size: 32, elements: !865)
!865 = !{!866}
!866 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!867 = !{!722, !725, !727, !729, !731, !733, !738, !743, !745, !747, !752, !757, !762, !764, !769, !774, !779, !784, !786, !788, !790, !792, !794, !796}
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !870, retainedTypes: !901, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!870 = !{!871, !883}
!871 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !872, file: !869, line: 188, baseType: !99, size: 32, elements: !881)
!872 = distinct !DISubprogram(name: "x2nrealloc", scope: !869, file: !869, line: 176, type: !873, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !876)
!873 = !DISubroutineType(types: !874)
!874 = !{!145, !145, !875, !147}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!876 = !{!877, !878, !879, !880}
!877 = !DILocalVariable(name: "p", arg: 1, scope: !872, file: !869, line: 176, type: !145)
!878 = !DILocalVariable(name: "pn", arg: 2, scope: !872, file: !869, line: 176, type: !875)
!879 = !DILocalVariable(name: "s", arg: 3, scope: !872, file: !869, line: 176, type: !147)
!880 = !DILocalVariable(name: "n", scope: !872, file: !869, line: 178, type: !147)
!881 = !{!882}
!882 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!883 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !884, file: !869, line: 228, baseType: !99, size: 32, elements: !881)
!884 = distinct !DISubprogram(name: "xpalloc", scope: !869, file: !869, line: 223, type: !885, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !891)
!885 = !DISubroutineType(types: !886)
!886 = !{!145, !145, !887, !888, !890, !888}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !889, line: 130, baseType: !890)
!889 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !148, line: 35, baseType: !155)
!891 = !{!892, !893, !894, !895, !896, !897, !898, !899, !900}
!892 = !DILocalVariable(name: "pa", arg: 1, scope: !884, file: !869, line: 223, type: !145)
!893 = !DILocalVariable(name: "pn", arg: 2, scope: !884, file: !869, line: 223, type: !887)
!894 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !884, file: !869, line: 223, type: !888)
!895 = !DILocalVariable(name: "n_max", arg: 4, scope: !884, file: !869, line: 223, type: !890)
!896 = !DILocalVariable(name: "s", arg: 5, scope: !884, file: !869, line: 223, type: !888)
!897 = !DILocalVariable(name: "n0", scope: !884, file: !869, line: 230, type: !888)
!898 = !DILocalVariable(name: "n", scope: !884, file: !869, line: 237, type: !888)
!899 = !DILocalVariable(name: "nbytes", scope: !884, file: !869, line: 248, type: !888)
!900 = !DILocalVariable(name: "adjusted_nbytes", scope: !884, file: !869, line: 252, type: !888)
!901 = !{!144, !145, !195, !155, !149}
!902 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !903, splitDebugInlining: false, nameTableKind: None)
!903 = !{!815, !818, !820}
!904 = distinct !DICompileUnit(language: DW_LANG_C11, file: !905, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !906, globals: !915, splitDebugInlining: false, nameTableKind: None)
!905 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!906 = !{!907, !97}
!907 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !908, line: 30, baseType: !99, size: 32, elements: !909)
!908 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!909 = !{!910, !911, !912, !913, !914}
!910 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!911 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!912 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!913 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!914 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!915 = !{!822}
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !917, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !918, retainedTypes: !919, splitDebugInlining: false, nameTableKind: None)
!917 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!918 = !{!907, !119}
!919 = !{!93, !146, !144, !195, !149, !920}
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !921, line: 102, baseType: !922)
!921 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !265, line: 73, baseType: !149)
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !855, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!927 = distinct !DICompileUnit(language: DW_LANG_C11, file: !928, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !929, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!929 = !{!195, !149, !145}
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !845, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !931, splitDebugInlining: false, nameTableKind: None)
!931 = !{!843, !846}
!932 = distinct !DICompileUnit(language: DW_LANG_C11, file: !933, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!933 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!934 = distinct !DICompileUnit(language: DW_LANG_C11, file: !935, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !855, splitDebugInlining: false, nameTableKind: None)
!935 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!936 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!937 = !{i32 7, !"Dwarf Version", i32 5}
!938 = !{i32 2, !"Debug Info Version", i32 3}
!939 = !{i32 1, !"wchar_size", i32 4}
!940 = !{i32 8, !"PIC Level", i32 2}
!941 = !{i32 7, !"PIE Level", i32 2}
!942 = !{i32 7, !"uwtable", i32 2}
!943 = !{i32 7, !"frame-pointer", i32 1}
!944 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 262, type: !945, scopeLine: 263, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !93}
!947 = !{!948}
!948 = !DILocalVariable(name: "status", arg: 1, scope: !944, file: !2, line: 262, type: !93)
!949 = !DILocation(line: 0, scope: !944)
!950 = !DILocation(line: 264, column: 14, scope: !951)
!951 = distinct !DILexicalBlock(scope: !944, file: !2, line: 264, column: 7)
!952 = !DILocation(line: 264, column: 7, scope: !944)
!953 = !DILocation(line: 265, column: 5, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !2, line: 265, column: 5)
!955 = !{!956, !956, i64 0}
!956 = !{!"any pointer", !957, i64 0}
!957 = !{!"omnipotent char", !958, i64 0}
!958 = !{!"Simple C/C++ TBAA"}
!959 = !DILocation(line: 268, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !951, file: !2, line: 267, column: 5)
!961 = !DILocation(line: 269, column: 7, scope: !960)
!962 = !DILocation(line: 729, column: 3, scope: !963, inlinedAt: !965)
!963 = distinct !DISubprogram(name: "emit_stdin_note", scope: !92, file: !92, line: 727, type: !582, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !964)
!964 = !{}
!965 = distinct !DILocation(line: 274, column: 7, scope: !960)
!966 = !DILocation(line: 736, column: 3, scope: !967, inlinedAt: !968)
!967 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !92, file: !92, line: 734, type: !582, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !964)
!968 = distinct !DILocation(line: 275, column: 7, scope: !960)
!969 = !DILocation(line: 277, column: 7, scope: !960)
!970 = !DILocation(line: 281, column: 7, scope: !960)
!971 = !DILocation(line: 286, column: 7, scope: !960)
!972 = !DILocation(line: 290, column: 7, scope: !960)
!973 = !DILocation(line: 294, column: 7, scope: !960)
!974 = !DILocation(line: 298, column: 7, scope: !960)
!975 = !DILocation(line: 304, column: 7, scope: !960)
!976 = !DILocation(line: 308, column: 7, scope: !960)
!977 = !DILocation(line: 309, column: 7, scope: !960)
!978 = !DILocalVariable(name: "program", arg: 1, scope: !979, file: !92, line: 836, type: !150)
!979 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !92, file: !92, line: 836, type: !980, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !150}
!982 = !{!978, !983, !990, !991, !993, !994}
!983 = !DILocalVariable(name: "infomap", scope: !979, file: !92, line: 838, type: !984)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 896, elements: !326)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !979, file: !92, line: 838, size: 128, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !986, file: !92, line: 838, baseType: !150, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !986, file: !92, line: 838, baseType: !150, size: 64, offset: 64)
!990 = !DILocalVariable(name: "node", scope: !979, file: !92, line: 848, type: !150)
!991 = !DILocalVariable(name: "map_prog", scope: !979, file: !92, line: 849, type: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!993 = !DILocalVariable(name: "lc_messages", scope: !979, file: !92, line: 861, type: !150)
!994 = !DILocalVariable(name: "url_program", scope: !979, file: !92, line: 874, type: !150)
!995 = !DILocation(line: 0, scope: !979, inlinedAt: !996)
!996 = distinct !DILocation(line: 310, column: 7, scope: !960)
!997 = !DILocation(line: 857, column: 3, scope: !979, inlinedAt: !996)
!998 = !DILocation(line: 861, column: 29, scope: !979, inlinedAt: !996)
!999 = !DILocation(line: 862, column: 7, scope: !1000, inlinedAt: !996)
!1000 = distinct !DILexicalBlock(scope: !979, file: !92, line: 862, column: 7)
!1001 = !DILocation(line: 862, column: 19, scope: !1000, inlinedAt: !996)
!1002 = !DILocation(line: 862, column: 22, scope: !1000, inlinedAt: !996)
!1003 = !DILocation(line: 862, column: 7, scope: !979, inlinedAt: !996)
!1004 = !DILocation(line: 868, column: 7, scope: !1005, inlinedAt: !996)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !92, line: 863, column: 5)
!1006 = !DILocation(line: 870, column: 5, scope: !1005, inlinedAt: !996)
!1007 = !DILocation(line: 875, column: 3, scope: !979, inlinedAt: !996)
!1008 = !DILocation(line: 877, column: 3, scope: !979, inlinedAt: !996)
!1009 = !DILocation(line: 312, column: 3, scope: !944)
!1010 = !DISubprogram(name: "dcgettext", scope: !1011, file: !1011, line: 51, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1011 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!144, !150, !150, !93}
!1014 = !DISubprogram(name: "__fprintf_chk", scope: !1015, file: !1015, line: 93, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1015 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!93, !1018, !93, !1019, null}
!1018 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!1019 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!1020 = !DISubprogram(name: "__printf_chk", scope: !1015, file: !1015, line: 95, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!93, !93, !1019, null}
!1023 = !DISubprogram(name: "fputs_unlocked", scope: !544, file: !544, line: 691, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!93, !1019, !1018}
!1026 = !DILocation(line: 0, scope: !216)
!1027 = !DILocation(line: 581, column: 7, scope: !224)
!1028 = !{!1029, !1029, i64 0}
!1029 = !{!"int", !957, i64 0}
!1030 = !DILocation(line: 581, column: 19, scope: !224)
!1031 = !DILocation(line: 581, column: 7, scope: !216)
!1032 = !DILocation(line: 585, column: 26, scope: !223)
!1033 = !DILocation(line: 0, scope: !223)
!1034 = !DILocation(line: 586, column: 23, scope: !223)
!1035 = !DILocation(line: 586, column: 28, scope: !223)
!1036 = !DILocation(line: 586, column: 32, scope: !223)
!1037 = !{!957, !957, i64 0}
!1038 = !DILocation(line: 586, column: 38, scope: !223)
!1039 = !DILocalVariable(name: "__s1", arg: 1, scope: !1040, file: !1041, line: 1359, type: !150)
!1040 = distinct !DISubprogram(name: "streq", scope: !1041, file: !1041, line: 1359, type: !1042, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1044)
!1041 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!195, !150, !150}
!1044 = !{!1039, !1045}
!1045 = !DILocalVariable(name: "__s2", arg: 2, scope: !1040, file: !1041, line: 1359, type: !150)
!1046 = !DILocation(line: 0, scope: !1040, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 586, column: 41, scope: !223)
!1048 = !DILocation(line: 1361, column: 11, scope: !1040, inlinedAt: !1047)
!1049 = !DILocation(line: 1361, column: 10, scope: !1040, inlinedAt: !1047)
!1050 = !DILocation(line: 586, column: 19, scope: !223)
!1051 = !DILocation(line: 587, column: 5, scope: !223)
!1052 = !DILocation(line: 588, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !216, file: !92, line: 588, column: 7)
!1054 = !DILocation(line: 588, column: 7, scope: !216)
!1055 = !DILocation(line: 590, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !92, line: 589, column: 5)
!1057 = !DILocation(line: 591, column: 7, scope: !1056)
!1058 = !DILocation(line: 595, column: 37, scope: !216)
!1059 = !DILocation(line: 595, column: 35, scope: !216)
!1060 = !DILocation(line: 596, column: 29, scope: !216)
!1061 = !DILocation(line: 597, column: 8, scope: !231)
!1062 = !DILocation(line: 597, column: 7, scope: !216)
!1063 = !DILocation(line: 604, column: 24, scope: !230)
!1064 = !DILocation(line: 604, column: 12, scope: !231)
!1065 = !DILocation(line: 0, scope: !229)
!1066 = !DILocation(line: 610, column: 16, scope: !229)
!1067 = !DILocation(line: 610, column: 7, scope: !229)
!1068 = !DILocation(line: 611, column: 21, scope: !229)
!1069 = !{!1070, !1070, i64 0}
!1070 = !{!"short", !957, i64 0}
!1071 = !DILocation(line: 611, column: 19, scope: !229)
!1072 = !DILocation(line: 611, column: 16, scope: !229)
!1073 = !DILocation(line: 610, column: 30, scope: !229)
!1074 = distinct !{!1074, !1067, !1068, !1075}
!1075 = !{!"llvm.loop.mustprogress"}
!1076 = !DILocation(line: 612, column: 18, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !229, file: !92, line: 612, column: 11)
!1078 = !DILocation(line: 612, column: 11, scope: !229)
!1079 = !DILocation(line: 620, column: 23, scope: !216)
!1080 = !DILocation(line: 625, column: 39, scope: !216)
!1081 = !DILocation(line: 626, column: 3, scope: !216)
!1082 = !DILocation(line: 626, column: 10, scope: !216)
!1083 = !DILocation(line: 626, column: 21, scope: !216)
!1084 = !DILocation(line: 628, column: 44, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !92, line: 628, column: 11)
!1086 = distinct !DILexicalBlock(scope: !216, file: !92, line: 627, column: 5)
!1087 = !DILocation(line: 628, column: 32, scope: !1085)
!1088 = !DILocation(line: 628, column: 49, scope: !1085)
!1089 = !DILocation(line: 628, column: 11, scope: !1086)
!1090 = !DILocation(line: 630, column: 11, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !92, line: 630, column: 11)
!1092 = !DILocation(line: 630, column: 11, scope: !1086)
!1093 = !DILocation(line: 632, column: 26, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !92, line: 632, column: 15)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !92, line: 631, column: 9)
!1096 = !DILocation(line: 632, column: 34, scope: !1094)
!1097 = !DILocation(line: 632, column: 37, scope: !1094)
!1098 = !DILocation(line: 632, column: 15, scope: !1095)
!1099 = !DILocation(line: 640, column: 16, scope: !1086)
!1100 = distinct !{!1100, !1081, !1101, !1075}
!1101 = !DILocation(line: 641, column: 5, scope: !216)
!1102 = !DILocation(line: 644, column: 3, scope: !216)
!1103 = !DILocation(line: 0, scope: !1040, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 648, column: 31, scope: !216)
!1105 = !DILocation(line: 0, scope: !1040, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 649, column: 31, scope: !216)
!1107 = !DILocation(line: 0, scope: !1040, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 650, column: 31, scope: !216)
!1109 = !DILocation(line: 0, scope: !1040, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 651, column: 31, scope: !216)
!1111 = !DILocation(line: 0, scope: !1040, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 652, column: 31, scope: !216)
!1113 = !DILocation(line: 0, scope: !1040, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 653, column: 31, scope: !216)
!1115 = !DILocation(line: 0, scope: !1040, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 654, column: 31, scope: !216)
!1117 = !DILocation(line: 0, scope: !1040, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 655, column: 31, scope: !216)
!1119 = !DILocation(line: 0, scope: !1040, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 656, column: 31, scope: !216)
!1121 = !DILocation(line: 0, scope: !1040, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 657, column: 31, scope: !216)
!1123 = !DILocation(line: 663, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !216, file: !92, line: 663, column: 7)
!1125 = !DILocation(line: 664, column: 7, scope: !1124)
!1126 = !DILocation(line: 664, column: 10, scope: !1124)
!1127 = !DILocation(line: 663, column: 7, scope: !216)
!1128 = !DILocation(line: 669, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !92, line: 665, column: 5)
!1130 = !DILocation(line: 671, column: 5, scope: !1129)
!1131 = !DILocation(line: 676, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1124, file: !92, line: 673, column: 5)
!1133 = !DILocation(line: 679, column: 3, scope: !216)
!1134 = !DILocation(line: 683, column: 3, scope: !216)
!1135 = !DILocation(line: 686, column: 3, scope: !216)
!1136 = !DILocation(line: 688, column: 3, scope: !216)
!1137 = !DILocation(line: 691, column: 3, scope: !216)
!1138 = !DILocation(line: 695, column: 3, scope: !216)
!1139 = !DILocation(line: 696, column: 1, scope: !216)
!1140 = !DISubprogram(name: "setlocale", scope: !1141, file: !1141, line: 122, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1141 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!144, !93, !150}
!1144 = !DISubprogram(name: "strncmp", scope: !1145, file: !1145, line: 159, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1145 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!93, !150, !150, !147}
!1148 = !DISubprogram(name: "exit", scope: !1149, file: !1149, line: 624, type: !945, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1149 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1150 = !DISubprogram(name: "getenv", scope: !1149, file: !1149, line: 641, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!144, !150}
!1153 = !DISubprogram(name: "strcmp", scope: !1145, file: !1145, line: 156, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!93, !150, !150}
!1156 = !DISubprogram(name: "strspn", scope: !1145, file: !1145, line: 297, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!149, !150, !150}
!1159 = !DISubprogram(name: "strchr", scope: !1145, file: !1145, line: 246, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!144, !150, !93}
!1162 = !DISubprogram(name: "__ctype_b_loc", scope: !120, file: !120, line: 79, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1168 = !DISubprogram(name: "strcspn", scope: !1145, file: !1145, line: 293, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1169 = !DISubprogram(name: "fwrite_unlocked", scope: !544, file: !544, line: 704, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!147, !1172, !147, !147, !1018}
!1172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1175 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 332, type: !1176, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1179)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!93, !93, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1193}
!1180 = !DILocalVariable(name: "argc", arg: 1, scope: !1175, file: !2, line: 332, type: !93)
!1181 = !DILocalVariable(name: "argv", arg: 2, scope: !1175, file: !2, line: 332, type: !1178)
!1182 = !DILocalVariable(name: "optchar", scope: !1175, file: !2, line: 334, type: !93)
!1183 = !DILocalVariable(name: "ok", scope: !1175, file: !2, line: 335, type: !195)
!1184 = !DILocalVariable(name: "max_width_option", scope: !1175, file: !2, line: 336, type: !150)
!1185 = !DILocalVariable(name: "goal_width_option", scope: !1175, file: !2, line: 337, type: !150)
!1186 = !DILocalVariable(name: "have_read_stdin", scope: !1175, file: !2, line: 425, type: !195)
!1187 = !DILocalVariable(name: "file", scope: !1188, file: !2, line: 436, type: !144)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 435, column: 9)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 434, column: 7)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 434, column: 7)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 433, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 427, column: 7)
!1193 = !DILocalVariable(name: "in_stream", scope: !1194, file: !2, line: 444, type: !238)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 443, column: 13)
!1195 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 437, column: 15)
!1196 = !DILocation(line: 0, scope: !1175)
!1197 = !DILocation(line: 340, column: 21, scope: !1175)
!1198 = !DILocation(line: 340, column: 3, scope: !1175)
!1199 = !DILocation(line: 341, column: 3, scope: !1175)
!1200 = !DILocation(line: 342, column: 3, scope: !1175)
!1201 = !DILocation(line: 343, column: 3, scope: !1175)
!1202 = !DILocation(line: 345, column: 3, scope: !1175)
!1203 = !DILocation(line: 347, column: 12, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 347, column: 7)
!1205 = !DILocation(line: 347, column: 16, scope: !1204)
!1206 = !DILocation(line: 347, column: 19, scope: !1204)
!1207 = !DILocation(line: 347, column: 30, scope: !1204)
!1208 = !DILocation(line: 347, column: 37, scope: !1204)
!1209 = !DILocation(line: 347, column: 51, scope: !1204)
!1210 = !DILocalVariable(name: "c", arg: 1, scope: !1211, file: !1212, line: 233, type: !93)
!1211 = distinct !DISubprogram(name: "c_isdigit", scope: !1212, file: !1212, line: 233, type: !1213, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1215)
!1212 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!195, !93}
!1215 = !{!1210}
!1216 = !DILocation(line: 0, scope: !1211, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 347, column: 40, scope: !1204)
!1218 = !DILocation(line: 235, column: 3, scope: !1211, inlinedAt: !1217)
!1219 = !DILocation(line: 347, column: 7, scope: !1175)
!1220 = !DILocation(line: 353, column: 17, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 348, column: 5)
!1222 = !DILocation(line: 353, column: 15, scope: !1221)
!1223 = !DILocation(line: 355, column: 11, scope: !1221)
!1224 = !DILocation(line: 356, column: 5, scope: !1221)
!1225 = !DILocation(line: 358, column: 3, scope: !1175)
!1226 = !DILocation(line: 358, column: 21, scope: !1175)
!1227 = !DILocation(line: 0, scope: !1211, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 364, column: 13, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 364, column: 13)
!1230 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 362, column: 7)
!1231 = !DILocation(line: 235, column: 3, scope: !1211, inlinedAt: !1228)
!1232 = !DILocation(line: 364, column: 13, scope: !1230)
!1233 = !DILocation(line: 365, column: 11, scope: !1229)
!1234 = !DILocation(line: 368, column: 9, scope: !1230)
!1235 = !DILocation(line: 371, column: 15, scope: !1230)
!1236 = !DILocation(line: 372, column: 9, scope: !1230)
!1237 = !DILocation(line: 375, column: 15, scope: !1230)
!1238 = !DILocation(line: 376, column: 9, scope: !1230)
!1239 = !DILocation(line: 379, column: 16, scope: !1230)
!1240 = !DILocation(line: 380, column: 9, scope: !1230)
!1241 = !DILocation(line: 383, column: 17, scope: !1230)
!1242 = !DILocation(line: 384, column: 9, scope: !1230)
!1243 = !DILocation(line: 387, column: 28, scope: !1230)
!1244 = !DILocation(line: 388, column: 9, scope: !1230)
!1245 = distinct !{!1245, !1225, !1246, !1075}
!1246 = !DILocation(line: 402, column: 7, scope: !1175)
!1247 = !DILocation(line: 391, column: 29, scope: !1230)
!1248 = !DILocation(line: 392, column: 9, scope: !1230)
!1249 = !DILocation(line: 395, column: 21, scope: !1230)
!1250 = !DILocalVariable(name: "p", arg: 1, scope: !1251, file: !2, line: 468, type: !144)
!1251 = distinct !DISubprogram(name: "set_prefix", scope: !2, file: !2, line: 468, type: !1252, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !144}
!1254 = !{!1250, !1255}
!1255 = !DILocalVariable(name: "s", scope: !1251, file: !2, line: 470, type: !144)
!1256 = !DILocation(line: 0, scope: !1251, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 395, column: 9, scope: !1230)
!1258 = !DILocation(line: 472, column: 21, scope: !1251, inlinedAt: !1257)
!1259 = !DILocation(line: 473, column: 10, scope: !1251, inlinedAt: !1257)
!1260 = !DILocation(line: 473, column: 13, scope: !1251, inlinedAt: !1257)
!1261 = !DILocation(line: 473, column: 3, scope: !1251, inlinedAt: !1257)
!1262 = !DILocation(line: 475, column: 24, scope: !1263, inlinedAt: !1257)
!1263 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 474, column: 5)
!1264 = !DILocation(line: 476, column: 8, scope: !1263, inlinedAt: !1257)
!1265 = distinct !{!1265, !1261, !1266, !1075}
!1266 = !DILocation(line: 477, column: 5, scope: !1251, inlinedAt: !1257)
!1267 = !DILocation(line: 478, column: 10, scope: !1251, inlinedAt: !1257)
!1268 = !DILocation(line: 479, column: 24, scope: !1251, inlinedAt: !1257)
!1269 = !DILocation(line: 479, column: 22, scope: !1251, inlinedAt: !1257)
!1270 = !DILocation(line: 480, column: 9, scope: !1251, inlinedAt: !1257)
!1271 = !DILocation(line: 481, column: 3, scope: !1251, inlinedAt: !1257)
!1272 = !DILocation(line: 481, column: 12, scope: !1251, inlinedAt: !1257)
!1273 = !DILocation(line: 481, column: 16, scope: !1251, inlinedAt: !1257)
!1274 = !DILocation(line: 481, column: 19, scope: !1251, inlinedAt: !1257)
!1275 = !DILocation(line: 481, column: 25, scope: !1251, inlinedAt: !1257)
!1276 = distinct !{!1276, !1271, !1277, !1075}
!1277 = !DILocation(line: 482, column: 6, scope: !1251, inlinedAt: !1257)
!1278 = !DILocation(line: 483, column: 6, scope: !1251, inlinedAt: !1257)
!1279 = !DILocation(line: 484, column: 21, scope: !1251, inlinedAt: !1257)
!1280 = !DILocation(line: 484, column: 19, scope: !1251, inlinedAt: !1257)
!1281 = !DILocation(line: 484, column: 17, scope: !1251, inlinedAt: !1257)
!1282 = !DILocation(line: 396, column: 9, scope: !1230)
!1283 = !DILocation(line: 398, column: 7, scope: !1230)
!1284 = !DILocation(line: 400, column: 7, scope: !1230)
!1285 = !DILocation(line: 404, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 404, column: 7)
!1287 = !DILocation(line: 404, column: 7, scope: !1175)
!1288 = !DILocation(line: 409, column: 31, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 405, column: 5)
!1290 = !DILocation(line: 408, column: 19, scope: !1289)
!1291 = !DILocation(line: 408, column: 17, scope: !1289)
!1292 = !DILocation(line: 410, column: 5, scope: !1289)
!1293 = !DILocation(line: 412, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 412, column: 7)
!1295 = !DILocation(line: 0, scope: !1294)
!1296 = !DILocation(line: 412, column: 7, scope: !1175)
!1297 = !DILocation(line: 415, column: 54, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 413, column: 5)
!1299 = !DILocation(line: 416, column: 32, scope: !1298)
!1300 = !DILocation(line: 415, column: 20, scope: !1298)
!1301 = !DILocation(line: 415, column: 18, scope: !1298)
!1302 = !DILocation(line: 417, column: 11, scope: !1298)
!1303 = !DILocation(line: 418, column: 32, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 417, column: 11)
!1305 = !DILocation(line: 418, column: 19, scope: !1304)
!1306 = !DILocation(line: 418, column: 9, scope: !1304)
!1307 = !DILocation(line: 422, column: 30, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 421, column: 5)
!1309 = !DILocation(line: 422, column: 57, scope: !1308)
!1310 = !DILocation(line: 422, column: 18, scope: !1308)
!1311 = !DILocation(line: 427, column: 7, scope: !1192)
!1312 = !DILocation(line: 427, column: 14, scope: !1192)
!1313 = !DILocation(line: 427, column: 7, scope: !1175)
!1314 = !DILocation(line: 434, column: 21, scope: !1189)
!1315 = !DILocation(line: 434, column: 7, scope: !1190)
!1316 = !DILocation(line: 430, column: 17, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 428, column: 5)
!1318 = !DILocation(line: 430, column: 12, scope: !1317)
!1319 = !DILocation(line: 458, column: 23, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 458, column: 7)
!1321 = !DILocation(line: 436, column: 24, scope: !1188)
!1322 = !DILocation(line: 0, scope: !1188)
!1323 = !DILocation(line: 0, scope: !1040, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 437, column: 15, scope: !1195)
!1325 = !DILocation(line: 1361, column: 11, scope: !1040, inlinedAt: !1324)
!1326 = !DILocation(line: 1361, column: 10, scope: !1040, inlinedAt: !1324)
!1327 = !DILocation(line: 437, column: 15, scope: !1188)
!1328 = !DILocation(line: 439, column: 26, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 438, column: 13)
!1330 = !DILocation(line: 439, column: 21, scope: !1329)
!1331 = !DILocation(line: 439, column: 18, scope: !1329)
!1332 = !DILocation(line: 441, column: 13, scope: !1329)
!1333 = !DILocation(line: 445, column: 27, scope: !1194)
!1334 = !DILocation(line: 0, scope: !1194)
!1335 = !DILocation(line: 446, column: 29, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 446, column: 19)
!1337 = !DILocation(line: 446, column: 19, scope: !1194)
!1338 = !DILocation(line: 447, column: 23, scope: !1336)
!1339 = !DILocation(line: 447, column: 20, scope: !1336)
!1340 = !DILocation(line: 447, column: 17, scope: !1336)
!1341 = !DILocation(line: 450, column: 19, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 449, column: 17)
!1343 = !DILocation(line: 0, scope: !1195)
!1344 = !DILocation(line: 434, column: 35, scope: !1189)
!1345 = distinct !{!1345, !1315, !1346, !1075}
!1346 = !DILocation(line: 455, column: 9, scope: !1190)
!1347 = !DILocation(line: 458, column: 34, scope: !1320)
!1348 = !DILocation(line: 458, column: 26, scope: !1320)
!1349 = !DILocation(line: 458, column: 41, scope: !1320)
!1350 = !DILocation(line: 458, column: 7, scope: !1175)
!1351 = !DILocation(line: 459, column: 5, scope: !1320)
!1352 = !DILocation(line: 461, column: 10, scope: !1175)
!1353 = !DILocation(line: 461, column: 3, scope: !1175)
!1354 = !DISubprogram(name: "bindtextdomain", scope: !1011, file: !1011, line: 86, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!144, !150, !150}
!1357 = !DISubprogram(name: "textdomain", scope: !1011, file: !1011, line: 82, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1358 = !DISubprogram(name: "atexit", scope: !1149, file: !1149, line: 602, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!93, !581}
!1361 = !DISubprogram(name: "getopt_long", scope: !496, file: !496, line: 66, type: !1362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!93, !93, !1364, !150, !1366, !501}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1367 = !DISubprogram(name: "strlen", scope: !1145, file: !1145, line: 407, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!149, !150}
!1370 = distinct !DISubprogram(name: "fmt", scope: !2, file: !2, line: 493, type: !1371, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!195, !238, !150}
!1373 = !{!1374, !1375, !1376}
!1374 = !DILocalVariable(name: "f", arg: 1, scope: !1370, file: !2, line: 493, type: !238)
!1375 = !DILocalVariable(name: "file", arg: 2, scope: !1370, file: !2, line: 493, type: !150)
!1376 = !DILocalVariable(name: "err", scope: !1370, file: !2, line: 505, type: !93)
!1377 = !DILocation(line: 0, scope: !1370)
!1378 = !DILocation(line: 495, column: 3, scope: !1370)
!1379 = !DILocation(line: 496, column: 8, scope: !1370)
!1380 = !DILocation(line: 497, column: 16, scope: !1370)
!1381 = !DILocation(line: 498, column: 15, scope: !1370)
!1382 = !DILocation(line: 498, column: 13, scope: !1370)
!1383 = !DILocation(line: 499, column: 3, scope: !1370)
!1384 = !DILocation(line: 575, column: 7, scope: !1385, inlinedAt: !1391)
!1385 = distinct !DISubprogram(name: "get_paragraph", scope: !2, file: !2, line: 570, type: !1386, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1388)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!195, !238}
!1388 = !{!1389, !1390}
!1389 = !DILocalVariable(name: "f", arg: 1, scope: !1385, file: !2, line: 570, type: !238)
!1390 = !DILocalVariable(name: "c", scope: !1385, file: !2, line: 572, type: !93)
!1391 = distinct !DILocation(line: 499, column: 10, scope: !1370)
!1392 = !DILocation(line: 0, scope: !1385, inlinedAt: !1391)
!1393 = !DILocation(line: 574, column: 20, scope: !1385, inlinedAt: !1391)
!1394 = !DILocation(line: 579, column: 3, scope: !1385, inlinedAt: !1391)
!1395 = !DILocation(line: 579, column: 20, scope: !1385, inlinedAt: !1391)
!1396 = !DILocation(line: 580, column: 13, scope: !1385, inlinedAt: !1391)
!1397 = !DILocation(line: 580, column: 34, scope: !1385, inlinedAt: !1391)
!1398 = !DILocation(line: 580, column: 32, scope: !1385, inlinedAt: !1391)
!1399 = !DILocation(line: 581, column: 10, scope: !1385, inlinedAt: !1391)
!1400 = !DILocation(line: 581, column: 13, scope: !1385, inlinedAt: !1391)
!1401 = !DILocation(line: 581, column: 46, scope: !1385, inlinedAt: !1391)
!1402 = !DILocation(line: 581, column: 44, scope: !1385, inlinedAt: !1391)
!1403 = !DILocation(line: 581, column: 23, scope: !1385, inlinedAt: !1391)
!1404 = !DILocalVariable(name: "f", arg: 1, scope: !1405, file: !2, line: 647, type: !238)
!1405 = distinct !DISubprogram(name: "copy_rest", scope: !2, file: !2, line: 647, type: !1406, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!93, !238, !93}
!1408 = !{!1404, !1409, !1410}
!1409 = !DILocalVariable(name: "c", arg: 2, scope: !1405, file: !2, line: 647, type: !93)
!1410 = !DILocalVariable(name: "s", scope: !1411, file: !2, line: 653, type: !150)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 653, column: 7)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 651, column: 5)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 650, column: 7)
!1414 = !DILocation(line: 0, scope: !1405, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 583, column: 11, scope: !1416, inlinedAt: !1391)
!1416 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 582, column: 5)
!1417 = !DILocation(line: 649, column: 14, scope: !1405, inlinedAt: !1415)
!1418 = !DILocation(line: 650, column: 7, scope: !1413, inlinedAt: !1415)
!1419 = !DILocation(line: 650, column: 19, scope: !1413, inlinedAt: !1415)
!1420 = !DILocation(line: 650, column: 17, scope: !1413, inlinedAt: !1415)
!1421 = !DILocation(line: 650, column: 38, scope: !1413, inlinedAt: !1415)
!1422 = !DILocation(line: 650, column: 52, scope: !1413, inlinedAt: !1415)
!1423 = !DILocation(line: 652, column: 7, scope: !1412, inlinedAt: !1415)
!1424 = !DILocation(line: 0, scope: !1411, inlinedAt: !1415)
!1425 = !DILocation(line: 653, column: 36, scope: !1426, inlinedAt: !1415)
!1426 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 653, column: 7)
!1427 = !DILocation(line: 653, column: 50, scope: !1426, inlinedAt: !1415)
!1428 = !DILocation(line: 653, column: 47, scope: !1426, inlinedAt: !1415)
!1429 = !DILocation(line: 653, column: 60, scope: !1426, inlinedAt: !1415)
!1430 = !DILocation(line: 653, column: 28, scope: !1411, inlinedAt: !1415)
!1431 = !DILocation(line: 653, column: 7, scope: !1411, inlinedAt: !1415)
!1432 = !DILocation(line: 653, column: 63, scope: !1426, inlinedAt: !1415)
!1433 = !DILocation(line: 655, column: 20, scope: !1434, inlinedAt: !1415)
!1434 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 655, column: 11)
!1435 = !DILocation(line: 654, column: 9, scope: !1426, inlinedAt: !1415)
!1436 = !DILocalVariable(name: "__c", arg: 1, scope: !1437, file: !1438, line: 108, type: !93)
!1437 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1438, file: !1438, line: 108, type: !1439, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1441)
!1438 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!93, !93}
!1441 = !{!1436}
!1442 = !DILocation(line: 0, scope: !1437, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 654, column: 9, scope: !1426, inlinedAt: !1415)
!1444 = !DILocation(line: 110, column: 10, scope: !1437, inlinedAt: !1443)
!1445 = !{!1446, !956, i64 40}
!1446 = !{!"_IO_FILE", !1029, i64 0, !956, i64 8, !956, i64 16, !956, i64 24, !956, i64 32, !956, i64 40, !956, i64 48, !956, i64 56, !956, i64 64, !956, i64 72, !956, i64 80, !956, i64 88, !956, i64 96, !956, i64 104, !1029, i64 112, !1029, i64 116, !1447, i64 120, !1070, i64 128, !957, i64 130, !957, i64 131, !956, i64 136, !1447, i64 144, !956, i64 152, !956, i64 160, !956, i64 168, !956, i64 176, !1447, i64 184, !1029, i64 192, !957, i64 196}
!1447 = !{!"long", !957, i64 0}
!1448 = !{!1446, !956, i64 48}
!1449 = !{!"branch_weights", i32 2000, i32 1}
!1450 = !DILocation(line: 653, column: 77, scope: !1426, inlinedAt: !1415)
!1451 = distinct !{!1451, !1431, !1452, !1075}
!1452 = !DILocation(line: 654, column: 9, scope: !1411, inlinedAt: !1415)
!1453 = !DILocation(line: 656, column: 30, scope: !1434, inlinedAt: !1415)
!1454 = !DILocation(line: 656, column: 9, scope: !1434, inlinedAt: !1415)
!1455 = !DILocation(line: 657, column: 20, scope: !1456, inlinedAt: !1415)
!1456 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 657, column: 11)
!1457 = !DILocation(line: 657, column: 36, scope: !1456, inlinedAt: !1415)
!1458 = !DILocation(line: 657, column: 57, scope: !1456, inlinedAt: !1415)
!1459 = !DILocation(line: 657, column: 55, scope: !1456, inlinedAt: !1415)
!1460 = !DILocation(line: 657, column: 33, scope: !1456, inlinedAt: !1415)
!1461 = !DILocation(line: 657, column: 11, scope: !1412, inlinedAt: !1415)
!1462 = !DILocation(line: 0, scope: !1437, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 658, column: 9, scope: !1456, inlinedAt: !1415)
!1464 = !DILocation(line: 110, column: 10, scope: !1437, inlinedAt: !1463)
!1465 = !DILocation(line: 660, column: 3, scope: !1405, inlinedAt: !1415)
!1466 = !DILocation(line: 0, scope: !1437, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 662, column: 7, scope: !1468, inlinedAt: !1415)
!1468 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 661, column: 5)
!1469 = !DILocation(line: 110, column: 10, scope: !1437, inlinedAt: !1467)
!1470 = !DILocalVariable(name: "__fp", arg: 1, scope: !1471, file: !1438, line: 66, type: !238)
!1471 = distinct !DISubprogram(name: "getc_unlocked", scope: !1438, file: !1438, line: 66, type: !1472, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1474)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!93, !238}
!1474 = !{!1470}
!1475 = !DILocation(line: 0, scope: !1471, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 663, column: 11, scope: !1468, inlinedAt: !1415)
!1477 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1476)
!1478 = !{!1446, !956, i64 8}
!1479 = !{!1446, !956, i64 16}
!1480 = distinct !{!1480, !1465, !1481, !1075}
!1481 = !DILocation(line: 664, column: 5, scope: !1405, inlinedAt: !1415)
!1482 = !DILocation(line: 0, scope: !1437, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 589, column: 7, scope: !1416, inlinedAt: !1391)
!1484 = !DILocation(line: 110, column: 10, scope: !1437, inlinedAt: !1483)
!1485 = !DILocation(line: 590, column: 11, scope: !1416, inlinedAt: !1391)
!1486 = distinct !{!1486, !1394, !1487, !1075}
!1487 = !DILocation(line: 591, column: 5, scope: !1385, inlinedAt: !1391)
!1488 = !DILocation(line: 595, column: 17, scope: !1385, inlinedAt: !1391)
!1489 = !DILocation(line: 596, column: 16, scope: !1385, inlinedAt: !1391)
!1490 = !DILocation(line: 597, column: 8, scope: !1385, inlinedAt: !1391)
!1491 = !DILocation(line: 598, column: 14, scope: !1385, inlinedAt: !1391)
!1492 = !DILocation(line: 599, column: 7, scope: !1385, inlinedAt: !1391)
!1493 = !DILocalVariable(name: "c", arg: 1, scope: !1494, file: !2, line: 673, type: !93)
!1494 = distinct !DISubprogram(name: "same_para", scope: !2, file: !2, line: 673, type: !1213, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1495)
!1495 = !{!1493}
!1496 = !DILocation(line: 0, scope: !1494, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 600, column: 21, scope: !1385, inlinedAt: !1391)
!1498 = !DILocation(line: 675, column: 11, scope: !1494, inlinedAt: !1497)
!1499 = !DILocation(line: 675, column: 33, scope: !1494, inlinedAt: !1497)
!1500 = !DILocation(line: 675, column: 30, scope: !1494, inlinedAt: !1497)
!1501 = !DILocation(line: 676, column: 11, scope: !1494, inlinedAt: !1497)
!1502 = !DILocation(line: 676, column: 14, scope: !1494, inlinedAt: !1497)
!1503 = !DILocation(line: 676, column: 48, scope: !1494, inlinedAt: !1497)
!1504 = !DILocation(line: 676, column: 46, scope: !1494, inlinedAt: !1497)
!1505 = !DILocation(line: 676, column: 24, scope: !1494, inlinedAt: !1497)
!1506 = !DILocation(line: 677, column: 11, scope: !1494, inlinedAt: !1497)
!1507 = !DILocalVariable(name: "same_paragraph", arg: 1, scope: !1508, file: !2, line: 525, type: !195)
!1508 = distinct !DISubprogram(name: "set_other_indent", scope: !2, file: !2, line: 525, type: !1509, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !195}
!1511 = !{!1507}
!1512 = !DILocation(line: 0, scope: !1508, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 600, column: 3, scope: !1385, inlinedAt: !1391)
!1514 = !DILocation(line: 527, column: 7, scope: !1515, inlinedAt: !1513)
!1515 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 527, column: 7)
!1516 = !DILocation(line: 527, column: 7, scope: !1508, inlinedAt: !1513)
!1517 = !DILocation(line: 529, column: 12, scope: !1518, inlinedAt: !1513)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 529, column: 12)
!1519 = !DILocation(line: 529, column: 12, scope: !1515, inlinedAt: !1513)
!1520 = !DILocation(line: 533, column: 12, scope: !1521, inlinedAt: !1513)
!1521 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 533, column: 12)
!1522 = !DILocation(line: 533, column: 12, scope: !1518, inlinedAt: !1513)
!1523 = !DILocation(line: 535, column: 26, scope: !1524, inlinedAt: !1513)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 535, column: 11)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 534, column: 5)
!1526 = !DILocation(line: 545, column: 32, scope: !1527, inlinedAt: !1513)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 545, column: 16)
!1528 = !DILocation(line: 535, column: 29, scope: !1524, inlinedAt: !1513)
!1529 = !DILocation(line: 535, column: 42, scope: !1524, inlinedAt: !1513)
!1530 = !DILocation(line: 535, column: 39, scope: !1524, inlinedAt: !1513)
!1531 = !DILocation(line: 535, column: 11, scope: !1525, inlinedAt: !1513)
!1532 = !DILocation(line: 545, column: 16, scope: !1527, inlinedAt: !1513)
!1533 = !DILocation(line: 545, column: 29, scope: !1527, inlinedAt: !1513)
!1534 = !DILocation(line: 545, column: 16, scope: !1524, inlinedAt: !1513)
!1535 = !DILocation(line: 546, column: 37, scope: !1527, inlinedAt: !1513)
!1536 = !DILocation(line: 546, column: 24, scope: !1527, inlinedAt: !1513)
!1537 = !DILocation(line: 546, column: 9, scope: !1527, inlinedAt: !1513)
!1538 = !DILocation(line: 528, column: 20, scope: !1515, inlinedAt: !1513)
!1539 = !DILocation(line: 0, scope: !1515, inlinedAt: !1513)
!1540 = !DILocation(line: 531, column: 23, scope: !1541, inlinedAt: !1513)
!1541 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 530, column: 5)
!1542 = !DILocation(line: 0, scope: !1494, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 610, column: 11, scope: !1544, inlinedAt: !1391)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 610, column: 11)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 609, column: 5)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 608, column: 12)
!1547 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 604, column: 7)
!1548 = !DILocation(line: 676, column: 11, scope: !1494, inlinedAt: !1543)
!1549 = !DILocation(line: 676, column: 48, scope: !1494, inlinedAt: !1543)
!1550 = !DILocation(line: 676, column: 46, scope: !1494, inlinedAt: !1543)
!1551 = !DILocation(line: 676, column: 24, scope: !1494, inlinedAt: !1543)
!1552 = !DILocation(line: 610, column: 11, scope: !1545, inlinedAt: !1391)
!1553 = !DILocation(line: 614, column: 19, scope: !1554, inlinedAt: !1391)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 613, column: 13)
!1555 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 611, column: 9)
!1556 = !DILocation(line: 0, scope: !1494, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 616, column: 18, scope: !1555, inlinedAt: !1391)
!1558 = !DILocation(line: 675, column: 11, scope: !1494, inlinedAt: !1557)
!1559 = !DILocation(line: 675, column: 33, scope: !1494, inlinedAt: !1557)
!1560 = !DILocation(line: 675, column: 30, scope: !1494, inlinedAt: !1557)
!1561 = !DILocation(line: 676, column: 11, scope: !1494, inlinedAt: !1557)
!1562 = !DILocation(line: 676, column: 14, scope: !1494, inlinedAt: !1557)
!1563 = !DILocation(line: 676, column: 48, scope: !1494, inlinedAt: !1557)
!1564 = !DILocation(line: 676, column: 46, scope: !1494, inlinedAt: !1557)
!1565 = !DILocation(line: 676, column: 24, scope: !1494, inlinedAt: !1557)
!1566 = !DILocation(line: 677, column: 11, scope: !1494, inlinedAt: !1557)
!1567 = !DILocation(line: 616, column: 32, scope: !1555, inlinedAt: !1391)
!1568 = !DILocation(line: 615, column: 13, scope: !1554, inlinedAt: !1391)
!1569 = distinct !{!1569, !1570, !1571, !1075}
!1570 = !DILocation(line: 612, column: 11, scope: !1555, inlinedAt: !1391)
!1571 = !DILocation(line: 616, column: 60, scope: !1555, inlinedAt: !1391)
!1572 = !DILocation(line: 619, column: 12, scope: !1546, inlinedAt: !1391)
!1573 = !DILocation(line: 550, column: 22, scope: !1574, inlinedAt: !1513)
!1574 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 549, column: 5)
!1575 = !DILocation(line: 0, scope: !1494, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 632, column: 14, scope: !1577, inlinedAt: !1391)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 631, column: 5)
!1578 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 619, column: 12)
!1579 = !DILocation(line: 676, column: 11, scope: !1494, inlinedAt: !1576)
!1580 = !DILocation(line: 0, scope: !1494, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 621, column: 11, scope: !1582, inlinedAt: !1391)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 621, column: 11)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 620, column: 5)
!1584 = !DILocation(line: 676, column: 11, scope: !1494, inlinedAt: !1581)
!1585 = !DILocation(line: 676, column: 14, scope: !1494, inlinedAt: !1581)
!1586 = !DILocation(line: 676, column: 48, scope: !1494, inlinedAt: !1581)
!1587 = !DILocation(line: 676, column: 46, scope: !1494, inlinedAt: !1581)
!1588 = !DILocation(line: 676, column: 24, scope: !1494, inlinedAt: !1581)
!1589 = !DILocation(line: 621, column: 25, scope: !1582, inlinedAt: !1391)
!1590 = !DILocation(line: 621, column: 38, scope: !1582, inlinedAt: !1391)
!1591 = !DILocation(line: 621, column: 11, scope: !1583, inlinedAt: !1391)
!1592 = !DILocation(line: 625, column: 19, scope: !1593, inlinedAt: !1391)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 624, column: 13)
!1594 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 622, column: 9)
!1595 = !DILocation(line: 0, scope: !1494, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 627, column: 18, scope: !1594, inlinedAt: !1391)
!1597 = !DILocation(line: 675, column: 11, scope: !1494, inlinedAt: !1596)
!1598 = !DILocation(line: 675, column: 33, scope: !1494, inlinedAt: !1596)
!1599 = !DILocation(line: 675, column: 30, scope: !1494, inlinedAt: !1596)
!1600 = !DILocation(line: 676, column: 11, scope: !1494, inlinedAt: !1596)
!1601 = !DILocation(line: 676, column: 14, scope: !1494, inlinedAt: !1596)
!1602 = !DILocation(line: 676, column: 48, scope: !1494, inlinedAt: !1596)
!1603 = !DILocation(line: 676, column: 46, scope: !1494, inlinedAt: !1596)
!1604 = !DILocation(line: 676, column: 24, scope: !1494, inlinedAt: !1596)
!1605 = !DILocation(line: 677, column: 11, scope: !1494, inlinedAt: !1596)
!1606 = !DILocation(line: 627, column: 32, scope: !1594, inlinedAt: !1391)
!1607 = !DILocation(line: 626, column: 13, scope: !1593, inlinedAt: !1391)
!1608 = distinct !{!1608, !1609, !1610, !1075}
!1609 = !DILocation(line: 623, column: 11, scope: !1594, inlinedAt: !1391)
!1610 = !DILocation(line: 627, column: 60, scope: !1594, inlinedAt: !1391)
!1611 = !DILocation(line: 676, column: 14, scope: !1494, inlinedAt: !1576)
!1612 = !DILocation(line: 676, column: 48, scope: !1494, inlinedAt: !1576)
!1613 = !DILocation(line: 676, column: 46, scope: !1494, inlinedAt: !1576)
!1614 = !DILocation(line: 676, column: 24, scope: !1494, inlinedAt: !1576)
!1615 = !DILocation(line: 677, column: 11, scope: !1494, inlinedAt: !1576)
!1616 = !DILocation(line: 632, column: 28, scope: !1577, inlinedAt: !1391)
!1617 = !DILocation(line: 632, column: 7, scope: !1577, inlinedAt: !1391)
!1618 = !DILocation(line: 633, column: 13, scope: !1577, inlinedAt: !1391)
!1619 = !DILocation(line: 675, column: 11, scope: !1494, inlinedAt: !1576)
!1620 = !DILocation(line: 675, column: 33, scope: !1494, inlinedAt: !1576)
!1621 = !DILocation(line: 675, column: 30, scope: !1494, inlinedAt: !1576)
!1622 = distinct !{!1622, !1617, !1623, !1075}
!1623 = !DILocation(line: 633, column: 27, scope: !1577, inlinedAt: !1391)
!1624 = !DILocation(line: 636, column: 31, scope: !1385, inlinedAt: !1391)
!1625 = !DILocation(line: 636, column: 48, scope: !1385, inlinedAt: !1391)
!1626 = !DILocation(line: 636, column: 54, scope: !1385, inlinedAt: !1391)
!1627 = !DILocation(line: 636, column: 28, scope: !1385, inlinedAt: !1391)
!1628 = !DILocation(line: 501, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 500, column: 5)
!1630 = !DILocalVariable(name: "finish", arg: 1, scope: !1631, file: !2, line: 991, type: !480)
!1631 = distinct !DISubprogram(name: "put_paragraph", scope: !2, file: !2, line: 991, type: !1632, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !480}
!1634 = !{!1630, !1635}
!1635 = !DILocalVariable(name: "w", scope: !1636, file: !2, line: 994, type: !480)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 994, column: 3)
!1637 = !DILocation(line: 0, scope: !1631, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 502, column: 7, scope: !1629)
!1639 = !DILocation(line: 993, column: 19, scope: !1631, inlinedAt: !1638)
!1640 = !DILocation(line: 993, column: 3, scope: !1631, inlinedAt: !1638)
!1641 = !DILocation(line: 0, scope: !1636, inlinedAt: !1638)
!1642 = !DILocation(line: 994, scope: !1636, inlinedAt: !1638)
!1643 = !{!1644, !956, i64 32}
!1644 = !{!"Word", !956, i64 0, !1029, i64 8, !1029, i64 12, !1029, i64 16, !1029, i64 16, !1029, i64 16, !1029, i64 16, !1029, i64 20, !1447, i64 24, !956, i64 32}
!1645 = !DILocation(line: 994, column: 38, scope: !1646, inlinedAt: !1638)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 994, column: 3)
!1647 = !DILocation(line: 994, column: 3, scope: !1636, inlinedAt: !1638)
!1648 = !DILocation(line: 995, column: 18, scope: !1646, inlinedAt: !1638)
!1649 = !DILocation(line: 995, column: 5, scope: !1646, inlinedAt: !1638)
!1650 = !DILocation(line: 994, column: 56, scope: !1646, inlinedAt: !1638)
!1651 = distinct !{!1651, !1647, !1652, !1075}
!1652 = !DILocation(line: 995, column: 30, scope: !1636, inlinedAt: !1638)
!1653 = distinct !{!1653, !1383, !1654, !1075}
!1654 = !DILocation(line: 503, column: 5, scope: !1370)
!1655 = !DILocalVariable(name: "__stream", arg: 1, scope: !1656, file: !1438, line: 135, type: !238)
!1656 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1438, file: !1438, line: 135, type: !1472, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1657)
!1657 = !{!1655}
!1658 = !DILocation(line: 0, scope: !1656, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 505, column: 13, scope: !1370)
!1660 = !DILocation(line: 137, column: 10, scope: !1656, inlinedAt: !1659)
!1661 = !{!1446, !1029, i64 0}
!1662 = !DILocation(line: 505, column: 13, scope: !1370)
!1663 = !DILocation(line: 507, column: 12, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 507, column: 7)
!1665 = !DILocation(line: 507, column: 9, scope: !1664)
!1666 = !DILocation(line: 507, column: 7, scope: !1370)
!1667 = !DILocation(line: 508, column: 5, scope: !1664)
!1668 = !DILocation(line: 509, column: 12, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 509, column: 12)
!1670 = !DILocation(line: 509, column: 23, scope: !1669)
!1671 = !DILocation(line: 509, column: 28, scope: !1669)
!1672 = !DILocation(line: 510, column: 11, scope: !1669)
!1673 = !DILocation(line: 510, column: 5, scope: !1669)
!1674 = !DILocation(line: 511, column: 9, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 511, column: 7)
!1676 = !DILocation(line: 511, column: 7, scope: !1370)
!1677 = !DILocation(line: 513, column: 16, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 513, column: 11)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 512, column: 5)
!1680 = !DILocation(line: 513, column: 13, scope: !1678)
!1681 = !DILocation(line: 0, scope: !1678)
!1682 = !DILocation(line: 513, column: 11, scope: !1679)
!1683 = !DILocation(line: 514, column: 9, scope: !1678)
!1684 = !DILocation(line: 516, column: 9, scope: !1678)
!1685 = !DILocation(line: 518, column: 14, scope: !1370)
!1686 = !DILocation(line: 518, column: 3, scope: !1370)
!1687 = !DISubprogram(name: "__errno_location", scope: !1688, file: !1688, line: 37, type: !1689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1688 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!501}
!1691 = distinct !DISubprogram(name: "get_prefix", scope: !2, file: !2, line: 743, type: !1472, scopeLine: 744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1692)
!1692 = !{!1693, !1694, !1695, !1699}
!1693 = !DILocalVariable(name: "f", arg: 1, scope: !1691, file: !2, line: 743, type: !238)
!1694 = !DILocalVariable(name: "c", scope: !1691, file: !2, line: 745, type: !93)
!1695 = !DILocalVariable(name: "p", scope: !1696, file: !2, line: 755, type: !150)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 755, column: 7)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 753, column: 5)
!1698 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 749, column: 7)
!1699 = !DILocalVariable(name: "pc", scope: !1700, file: !2, line: 757, type: !152)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 756, column: 9)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 755, column: 7)
!1702 = !DILocation(line: 0, scope: !1691)
!1703 = !DILocation(line: 747, column: 13, scope: !1691)
!1704 = !DILocation(line: 0, scope: !1471, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 748, column: 21, scope: !1691)
!1706 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1705)
!1707 = !DILocation(line: 774, column: 3, scope: !1708, inlinedAt: !1712)
!1708 = distinct !DISubprogram(name: "get_space", scope: !2, file: !2, line: 772, type: !1406, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1709)
!1709 = !{!1710, !1711}
!1710 = !DILocalVariable(name: "f", arg: 1, scope: !1708, file: !2, line: 772, type: !238)
!1711 = !DILocalVariable(name: "c", arg: 2, scope: !1708, file: !2, line: 772, type: !93)
!1712 = distinct !DILocation(line: 748, column: 7, scope: !1691)
!1713 = !DILocation(line: 0, scope: !1708, inlinedAt: !1712)
!1714 = !DILocation(line: 776, column: 11, scope: !1715, inlinedAt: !1712)
!1715 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 775, column: 5)
!1716 = !DILocation(line: 777, column: 18, scope: !1717, inlinedAt: !1712)
!1717 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 776, column: 11)
!1718 = !DILocation(line: 777, column: 9, scope: !1717, inlinedAt: !1712)
!1719 = !DILocation(line: 780, column: 16, scope: !1720, inlinedAt: !1712)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 779, column: 9)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 778, column: 16)
!1722 = !DILocation(line: 781, column: 24, scope: !1720, inlinedAt: !1712)
!1723 = !DILocation(line: 781, column: 34, scope: !1720, inlinedAt: !1712)
!1724 = !DILocation(line: 781, column: 50, scope: !1720, inlinedAt: !1712)
!1725 = !DILocation(line: 0, scope: !1717, inlinedAt: !1712)
!1726 = !DILocation(line: 0, scope: !1471, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 785, column: 11, scope: !1715, inlinedAt: !1712)
!1728 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1727)
!1729 = distinct !{!1729, !1707, !1730}
!1730 = !DILocation(line: 786, column: 5, scope: !1708, inlinedAt: !1712)
!1731 = !DILocation(line: 749, column: 7, scope: !1698)
!1732 = !DILocation(line: 749, column: 21, scope: !1698)
!1733 = !DILocation(line: 749, column: 7, scope: !1691)
!1734 = !DILocation(line: 750, column: 26, scope: !1698)
!1735 = !DILocation(line: 750, column: 46, scope: !1698)
!1736 = !DILocation(line: 750, column: 24, scope: !1698)
!1737 = !DILocation(line: 750, column: 5, scope: !1698)
!1738 = !DILocation(line: 754, column: 28, scope: !1697)
!1739 = !DILocation(line: 754, column: 26, scope: !1697)
!1740 = !DILocation(line: 755, column: 28, scope: !1696)
!1741 = !DILocation(line: 0, scope: !1696)
!1742 = !DILocation(line: 755, column: 36, scope: !1701)
!1743 = !DILocation(line: 755, column: 39, scope: !1701)
!1744 = !DILocation(line: 755, column: 7, scope: !1696)
!1745 = !DILocation(line: 0, scope: !1700)
!1746 = !DILocation(line: 758, column: 17, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 758, column: 15)
!1748 = !DILocation(line: 758, column: 15, scope: !1700)
!1749 = !DILocation(line: 760, column: 20, scope: !1700)
!1750 = !DILocation(line: 0, scope: !1471, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 761, column: 15, scope: !1700)
!1752 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1751)
!1753 = !DILocation(line: 755, column: 49, scope: !1701)
!1754 = distinct !{!1754, !1744, !1755, !1075}
!1755 = !DILocation(line: 762, column: 9, scope: !1696)
!1756 = !DILocation(line: 774, column: 3, scope: !1708, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 763, column: 11, scope: !1697)
!1758 = !DILocation(line: 0, scope: !1708, inlinedAt: !1757)
!1759 = !DILocation(line: 776, column: 11, scope: !1715, inlinedAt: !1757)
!1760 = !DILocation(line: 777, column: 18, scope: !1717, inlinedAt: !1757)
!1761 = !DILocation(line: 777, column: 9, scope: !1717, inlinedAt: !1757)
!1762 = !DILocation(line: 780, column: 16, scope: !1720, inlinedAt: !1757)
!1763 = !DILocation(line: 781, column: 24, scope: !1720, inlinedAt: !1757)
!1764 = !DILocation(line: 781, column: 34, scope: !1720, inlinedAt: !1757)
!1765 = !DILocation(line: 781, column: 50, scope: !1720, inlinedAt: !1757)
!1766 = !DILocation(line: 0, scope: !1717, inlinedAt: !1757)
!1767 = !DILocation(line: 0, scope: !1471, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 785, column: 11, scope: !1715, inlinedAt: !1757)
!1769 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1768)
!1770 = distinct !{!1770, !1756, !1771}
!1771 = !DILocation(line: 786, column: 5, scope: !1708, inlinedAt: !1757)
!1772 = !DILocation(line: 766, column: 1, scope: !1691)
!1773 = distinct !DISubprogram(name: "put_space", scope: !2, file: !2, line: 1040, type: !945, scopeLine: 1041, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DILocalVariable(name: "space", arg: 1, scope: !1773, file: !2, line: 1040, type: !93)
!1776 = !DILocalVariable(name: "space_target", scope: !1773, file: !2, line: 1042, type: !93)
!1777 = !DILocalVariable(name: "tab_target", scope: !1773, file: !2, line: 1042, type: !93)
!1778 = !DILocation(line: 0, scope: !1773)
!1779 = !DILocation(line: 1044, column: 18, scope: !1773)
!1780 = !DILocation(line: 1044, column: 29, scope: !1773)
!1781 = !DILocation(line: 1045, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 1045, column: 7)
!1783 = !DILocation(line: 1045, column: 7, scope: !1773)
!1784 = !DILocation(line: 1047, column: 33, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 1046, column: 5)
!1786 = !DILocation(line: 1047, column: 44, scope: !1785)
!1787 = !DILocation(line: 1048, column: 22, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 1048, column: 11)
!1789 = !DILocation(line: 1048, column: 26, scope: !1788)
!1790 = !DILocation(line: 1048, column: 11, scope: !1785)
!1791 = !DILocation(line: 0, scope: !1437, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 1051, column: 13, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !2, line: 1050, column: 11)
!1794 = !DILocation(line: 110, column: 10, scope: !1437, inlinedAt: !1792)
!1795 = !DILocation(line: 1052, column: 27, scope: !1793)
!1796 = !DILocation(line: 1052, column: 38, scope: !1793)
!1797 = !DILocation(line: 1052, column: 54, scope: !1793)
!1798 = !DILocation(line: 1052, column: 24, scope: !1793)
!1799 = !DILocation(line: 1049, column: 27, scope: !1788)
!1800 = !DILocation(line: 1049, column: 9, scope: !1788)
!1801 = !DILocation(line: 1055, column: 10, scope: !1773)
!1802 = !DILocation(line: 1055, column: 21, scope: !1773)
!1803 = !DILocation(line: 1055, column: 3, scope: !1773)
!1804 = !DILocation(line: 0, scope: !1437, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 1057, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 1056, column: 5)
!1807 = !DILocation(line: 110, column: 10, scope: !1437, inlinedAt: !1805)
!1808 = !DILocation(line: 1058, column: 17, scope: !1806)
!1809 = distinct !{!1809, !1803, !1810, !1075}
!1810 = !DILocation(line: 1059, column: 5, scope: !1773)
!1811 = !DILocation(line: 1060, column: 1, scope: !1773)
!1812 = !DISubprogram(name: "__overflow", scope: !544, file: !544, line: 886, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1813 = !DISubprogram(name: "__uflow", scope: !544, file: !544, line: 885, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1814 = distinct !DISubprogram(name: "get_line", scope: !2, file: !2, line: 689, type: !1406, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1815)
!1815 = !{!1816, !1817, !1818, !1819, !1820}
!1816 = !DILocalVariable(name: "f", arg: 1, scope: !1814, file: !2, line: 689, type: !238)
!1817 = !DILocalVariable(name: "c", arg: 2, scope: !1814, file: !2, line: 689, type: !93)
!1818 = !DILocalVariable(name: "start", scope: !1814, file: !2, line: 691, type: !93)
!1819 = !DILocalVariable(name: "end_of_parabuf", scope: !1814, file: !2, line: 692, type: !144)
!1820 = !DILocalVariable(name: "end_of_word", scope: !1814, file: !2, line: 693, type: !480)
!1821 = !DILocation(line: 0, scope: !1814)
!1822 = !DILocation(line: 703, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 699, column: 5)
!1824 = !DILocation(line: 698, column: 3, scope: !1814)
!1825 = !DILocation(line: 703, column: 26, scope: !1823)
!1826 = !DILocation(line: 703, column: 24, scope: !1823)
!1827 = !{!1644, !956, i64 0}
!1828 = !DILocation(line: 704, column: 7, scope: !1823)
!1829 = !DILocation(line: 706, column: 15, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 706, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 705, column: 9)
!1832 = !DILocation(line: 706, column: 20, scope: !1830)
!1833 = !DILocation(line: 706, column: 15, scope: !1831)
!1834 = !DILocation(line: 0, scope: !1508, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 708, column: 15, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 707, column: 13)
!1837 = !DILocation(line: 527, column: 7, scope: !1515, inlinedAt: !1835)
!1838 = !DILocation(line: 527, column: 7, scope: !1508, inlinedAt: !1835)
!1839 = !DILocation(line: 528, column: 20, scope: !1515, inlinedAt: !1835)
!1840 = !DILocation(line: 528, column: 5, scope: !1515, inlinedAt: !1835)
!1841 = !DILocation(line: 529, column: 12, scope: !1518, inlinedAt: !1835)
!1842 = !DILocation(line: 529, column: 12, scope: !1515, inlinedAt: !1835)
!1843 = !DILocation(line: 531, column: 23, scope: !1541, inlinedAt: !1835)
!1844 = !DILocation(line: 532, column: 5, scope: !1541, inlinedAt: !1835)
!1845 = !DILocation(line: 533, column: 12, scope: !1521, inlinedAt: !1835)
!1846 = !DILocation(line: 533, column: 12, scope: !1518, inlinedAt: !1835)
!1847 = !DILocation(line: 535, column: 29, scope: !1524, inlinedAt: !1835)
!1848 = !DILocation(line: 535, column: 42, scope: !1524, inlinedAt: !1835)
!1849 = !DILocation(line: 535, column: 39, scope: !1524, inlinedAt: !1835)
!1850 = !DILocation(line: 535, column: 11, scope: !1525, inlinedAt: !1835)
!1851 = !DILocation(line: 545, column: 16, scope: !1527, inlinedAt: !1835)
!1852 = !DILocation(line: 545, column: 29, scope: !1527, inlinedAt: !1835)
!1853 = !DILocation(line: 545, column: 16, scope: !1524, inlinedAt: !1835)
!1854 = !DILocation(line: 546, column: 37, scope: !1527, inlinedAt: !1835)
!1855 = !DILocation(line: 546, column: 24, scope: !1527, inlinedAt: !1835)
!1856 = !DILocation(line: 546, column: 9, scope: !1527, inlinedAt: !1835)
!1857 = !DILocation(line: 550, column: 22, scope: !1574, inlinedAt: !1835)
!1858 = !DILocation(line: 0, scope: !1515, inlinedAt: !1835)
!1859 = !DILocation(line: 552, column: 1, scope: !1508, inlinedAt: !1835)
!1860 = !DILocation(line: 709, column: 15, scope: !1836)
!1861 = !DILocation(line: 711, column: 16, scope: !1831)
!1862 = !DILocation(line: 710, column: 13, scope: !1836)
!1863 = !DILocation(line: 711, column: 21, scope: !1831)
!1864 = !DILocation(line: 711, column: 19, scope: !1831)
!1865 = !DILocation(line: 0, scope: !1471, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 712, column: 15, scope: !1831)
!1867 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1866)
!1868 = !DILocation(line: 714, column: 23, scope: !1823)
!1869 = !DILocation(line: 714, column: 16, scope: !1823)
!1870 = !DILocalVariable(name: "c", arg: 1, scope: !1871, file: !1212, line: 300, type: !93)
!1871 = distinct !DISubprogram(name: "c_isspace", scope: !1212, file: !1212, line: 300, type: !1213, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1872)
!1872 = !{!1870}
!1873 = !DILocation(line: 0, scope: !1871, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 714, column: 27, scope: !1823)
!1875 = !DILocation(line: 302, column: 3, scope: !1871, inlinedAt: !1874)
!1876 = !DILocation(line: 715, column: 41, scope: !1823)
!1877 = !DILocation(line: 715, column: 48, scope: !1823)
!1878 = !DILocation(line: 715, column: 60, scope: !1823)
!1879 = !DILocation(line: 715, column: 46, scope: !1823)
!1880 = !DILocation(line: 715, column: 32, scope: !1823)
!1881 = !DILocation(line: 715, column: 39, scope: !1823)
!1882 = !{!1644, !1029, i64 8}
!1883 = !DILocation(line: 715, column: 17, scope: !1823)
!1884 = !DILocalVariable(name: "w", arg: 1, scope: !1885, file: !2, line: 792, type: !480)
!1885 = distinct !DISubprogram(name: "check_punctuation", scope: !2, file: !2, line: 792, type: !1632, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1886)
!1886 = !{!1884, !1887, !1888, !1889}
!1887 = !DILocalVariable(name: "start", scope: !1885, file: !2, line: 794, type: !150)
!1888 = !DILocalVariable(name: "finish", scope: !1885, file: !2, line: 795, type: !150)
!1889 = !DILocalVariable(name: "fin", scope: !1885, file: !2, line: 796, type: !152)
!1890 = !DILocation(line: 0, scope: !1885, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 716, column: 7, scope: !1823)
!1892 = !DILocation(line: 795, column: 30, scope: !1885, inlinedAt: !1891)
!1893 = !DILocation(line: 796, column: 23, scope: !1885, inlinedAt: !1891)
!1894 = !DILocation(line: 798, column: 14, scope: !1885, inlinedAt: !1891)
!1895 = !DILocation(line: 798, column: 6, scope: !1885, inlinedAt: !1891)
!1896 = !DILocation(line: 798, column: 12, scope: !1885, inlinedAt: !1891)
!1897 = !DILocation(line: 799, column: 17, scope: !1885, inlinedAt: !1891)
!1898 = !DILocation(line: 799, column: 12, scope: !1885, inlinedAt: !1891)
!1899 = !DILocation(line: 800, column: 16, scope: !1885, inlinedAt: !1891)
!1900 = !DILocation(line: 800, column: 25, scope: !1885, inlinedAt: !1891)
!1901 = !DILocation(line: 800, column: 28, scope: !1885, inlinedAt: !1891)
!1902 = !DILocation(line: 800, column: 3, scope: !1885, inlinedAt: !1891)
!1903 = !DILocation(line: 801, column: 11, scope: !1885, inlinedAt: !1891)
!1904 = distinct !{!1904, !1902, !1903, !1075}
!1905 = !DILocation(line: 802, column: 15, scope: !1885, inlinedAt: !1891)
!1906 = !DILocation(line: 802, column: 13, scope: !1885, inlinedAt: !1891)
!1907 = !DILocation(line: 0, scope: !1708, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 721, column: 11, scope: !1823)
!1909 = !DILocation(line: 774, column: 3, scope: !1708, inlinedAt: !1908)
!1910 = !DILocation(line: 776, column: 11, scope: !1715, inlinedAt: !1908)
!1911 = !DILocation(line: 777, column: 18, scope: !1717, inlinedAt: !1908)
!1912 = !DILocation(line: 777, column: 9, scope: !1717, inlinedAt: !1908)
!1913 = !DILocation(line: 780, column: 16, scope: !1720, inlinedAt: !1908)
!1914 = !DILocation(line: 781, column: 24, scope: !1720, inlinedAt: !1908)
!1915 = !DILocation(line: 781, column: 34, scope: !1720, inlinedAt: !1908)
!1916 = !DILocation(line: 781, column: 50, scope: !1720, inlinedAt: !1908)
!1917 = !DILocation(line: 0, scope: !1717, inlinedAt: !1908)
!1918 = !DILocation(line: 0, scope: !1471, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 785, column: 11, scope: !1715, inlinedAt: !1908)
!1920 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1919)
!1921 = distinct !{!1921, !1909, !1922}
!1922 = !DILocation(line: 786, column: 5, scope: !1708, inlinedAt: !1908)
!1923 = !DILocation(line: 722, column: 27, scope: !1823)
!1924 = !DILocation(line: 722, column: 37, scope: !1823)
!1925 = !DILocation(line: 725, column: 67, scope: !1823)
!1926 = !DILocation(line: 722, column: 7, scope: !1823)
!1927 = !DILocation(line: 722, column: 19, scope: !1823)
!1928 = !DILocation(line: 722, column: 25, scope: !1823)
!1929 = !{!1644, !1029, i64 12}
!1930 = !DILocation(line: 723, column: 30, scope: !1823)
!1931 = !DILocation(line: 0, scope: !1823)
!1932 = !DILocation(line: 724, column: 28, scope: !1823)
!1933 = !DILocation(line: 724, column: 32, scope: !1823)
!1934 = !DILocation(line: 725, column: 32, scope: !1823)
!1935 = !DILocation(line: 725, column: 38, scope: !1823)
!1936 = !DILocation(line: 725, column: 46, scope: !1823)
!1937 = !DILocation(line: 723, column: 19, scope: !1823)
!1938 = !DILocation(line: 723, column: 25, scope: !1823)
!1939 = !DILocation(line: 726, column: 21, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 726, column: 11)
!1941 = !DILocation(line: 726, column: 36, scope: !1940)
!1942 = !DILocation(line: 726, column: 11, scope: !1823)
!1943 = !DILocation(line: 727, column: 27, scope: !1940)
!1944 = !DILocation(line: 727, column: 9, scope: !1940)
!1945 = !DILocation(line: 728, column: 22, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 728, column: 11)
!1947 = !DILocation(line: 728, column: 11, scope: !1823)
!1948 = !DILocation(line: 0, scope: !1508, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 730, column: 11, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 729, column: 9)
!1951 = !DILocation(line: 527, column: 7, scope: !1515, inlinedAt: !1949)
!1952 = !DILocation(line: 527, column: 7, scope: !1508, inlinedAt: !1949)
!1953 = !DILocation(line: 528, column: 20, scope: !1515, inlinedAt: !1949)
!1954 = !DILocation(line: 528, column: 5, scope: !1515, inlinedAt: !1949)
!1955 = !DILocation(line: 529, column: 12, scope: !1518, inlinedAt: !1949)
!1956 = !DILocation(line: 529, column: 12, scope: !1515, inlinedAt: !1949)
!1957 = !DILocation(line: 533, column: 12, scope: !1521, inlinedAt: !1949)
!1958 = !DILocation(line: 0, scope: !1521, inlinedAt: !1949)
!1959 = !DILocation(line: 533, column: 12, scope: !1518, inlinedAt: !1949)
!1960 = !DILocation(line: 535, column: 39, scope: !1524, inlinedAt: !1949)
!1961 = !DILocation(line: 535, column: 11, scope: !1525, inlinedAt: !1949)
!1962 = !DILocation(line: 545, column: 16, scope: !1527, inlinedAt: !1949)
!1963 = !DILocation(line: 545, column: 29, scope: !1527, inlinedAt: !1949)
!1964 = !DILocation(line: 545, column: 16, scope: !1524, inlinedAt: !1949)
!1965 = !DILocation(line: 546, column: 37, scope: !1527, inlinedAt: !1949)
!1966 = !DILocation(line: 546, column: 24, scope: !1527, inlinedAt: !1949)
!1967 = !DILocation(line: 546, column: 9, scope: !1527, inlinedAt: !1949)
!1968 = !DILocation(line: 0, scope: !1515, inlinedAt: !1949)
!1969 = !DILocation(line: 552, column: 1, scope: !1508, inlinedAt: !1949)
!1970 = !DILocation(line: 731, column: 11, scope: !1950)
!1971 = !DILocation(line: 733, column: 17, scope: !1823)
!1972 = !DILocation(line: 732, column: 9, scope: !1950)
!1973 = !DILocation(line: 734, column: 5, scope: !1823)
!1974 = !DILocation(line: 736, column: 10, scope: !1814)
!1975 = !DILocation(line: 736, column: 3, scope: !1814)
!1976 = distinct !DISubprogram(name: "fmt_paragraph", scope: !2, file: !2, line: 876, type: !582, scopeLine: 877, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1977)
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983}
!1978 = !DILocalVariable(name: "w", scope: !1976, file: !2, line: 878, type: !480)
!1979 = !DILocalVariable(name: "len", scope: !1976, file: !2, line: 879, type: !93)
!1980 = !DILocalVariable(name: "wcost", scope: !1976, file: !2, line: 880, type: !154)
!1981 = !DILocalVariable(name: "best", scope: !1976, file: !2, line: 880, type: !154)
!1982 = !DILocalVariable(name: "saved_length", scope: !1976, file: !2, line: 881, type: !93)
!1983 = !DILocalVariable(name: "start", scope: !1984, file: !2, line: 887, type: !480)
!1984 = distinct !DILexicalBlock(scope: !1976, file: !2, line: 887, column: 3)
!1985 = !DILocation(line: 883, column: 3, scope: !1976)
!1986 = !DILocation(line: 883, column: 15, scope: !1976)
!1987 = !DILocation(line: 883, column: 25, scope: !1976)
!1988 = !{!1644, !1447, i64 24}
!1989 = !DILocation(line: 884, column: 30, scope: !1976)
!1990 = !DILocation(line: 0, scope: !1976)
!1991 = !DILocation(line: 885, column: 24, scope: !1976)
!1992 = !DILocation(line: 885, column: 22, scope: !1976)
!1993 = !DILocation(line: 0, scope: !1984)
!1994 = !DILocation(line: 887, scope: !1984)
!1995 = !DILocation(line: 887, column: 44, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1984, file: !2, line: 887, column: 3)
!1997 = !DILocation(line: 887, column: 3, scope: !1984)
!1998 = !DILocation(line: 925, column: 22, scope: !1976)
!1999 = !DILocation(line: 926, column: 1, scope: !1976)
!2000 = !DILocation(line: 890, column: 19, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 888, column: 5)
!2002 = !DILocation(line: 890, column: 13, scope: !2001)
!2003 = !DILocation(line: 895, column: 17, scope: !2001)
!2004 = !DILocation(line: 895, column: 11, scope: !2001)
!2005 = !DILocation(line: 896, column: 7, scope: !2001)
!2006 = !DILocation(line: 0, scope: !2001)
!2007 = !DILocation(line: 898, column: 12, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 897, column: 9)
!2009 = !DILocalVariable(name: "next", arg: 1, scope: !2010, file: !2, line: 970, type: !480)
!2010 = distinct !DISubprogram(name: "line_cost", scope: !2, file: !2, line: 970, type: !2011, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!154, !480, !93}
!2013 = !{!2009, !2014, !2015, !2016}
!2014 = !DILocalVariable(name: "len", arg: 2, scope: !2010, file: !2, line: 970, type: !93)
!2015 = !DILocalVariable(name: "n", scope: !2010, file: !2, line: 972, type: !93)
!2016 = !DILocalVariable(name: "cost", scope: !2010, file: !2, line: 973, type: !154)
!2017 = !DILocation(line: 0, scope: !2010, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 902, column: 19, scope: !2008)
!2019 = !DILocation(line: 975, column: 12, scope: !2020, inlinedAt: !2018)
!2020 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 975, column: 7)
!2021 = !DILocation(line: 975, column: 7, scope: !2010, inlinedAt: !2018)
!2022 = !DILocation(line: 977, column: 18, scope: !2010, inlinedAt: !2018)
!2023 = !DILocation(line: 978, column: 10, scope: !2010, inlinedAt: !2018)
!2024 = !DILocation(line: 979, column: 13, scope: !2025, inlinedAt: !2018)
!2025 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 979, column: 7)
!2026 = !DILocation(line: 979, column: 24, scope: !2025, inlinedAt: !2018)
!2027 = !DILocation(line: 979, column: 7, scope: !2010, inlinedAt: !2018)
!2028 = !DILocation(line: 981, column: 23, scope: !2029, inlinedAt: !2018)
!2029 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 980, column: 5)
!2030 = !{!1644, !1029, i64 20}
!2031 = !DILocation(line: 981, column: 15, scope: !2029, inlinedAt: !2018)
!2032 = !DILocation(line: 982, column: 15, scope: !2029, inlinedAt: !2018)
!2033 = !DILocation(line: 982, column: 12, scope: !2029, inlinedAt: !2018)
!2034 = !DILocation(line: 983, column: 5, scope: !2029, inlinedAt: !2018)
!2035 = !DILocation(line: 902, column: 43, scope: !2008)
!2036 = !DILocation(line: 902, column: 38, scope: !2008)
!2037 = !DILocation(line: 903, column: 29, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 903, column: 15)
!2039 = !DILocation(line: 904, column: 22, scope: !2038)
!2040 = !DILocation(line: 904, column: 19, scope: !2038)
!2041 = !DILocation(line: 904, column: 13, scope: !2038)
!2042 = !DILocation(line: 0, scope: !2008)
!2043 = !DILocation(line: 905, column: 21, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 905, column: 15)
!2045 = !DILocation(line: 905, column: 15, scope: !2008)
!2046 = !DILocation(line: 908, column: 33, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 906, column: 13)
!2048 = !DILocation(line: 909, column: 34, scope: !2047)
!2049 = !DILocation(line: 910, column: 13, scope: !2047)
!2050 = !DILocation(line: 916, column: 15, scope: !2008)
!2051 = !DILocation(line: 919, column: 27, scope: !2008)
!2052 = !DILocation(line: 919, column: 38, scope: !2008)
!2053 = !DILocation(line: 919, column: 33, scope: !2008)
!2054 = !DILocation(line: 919, column: 15, scope: !2008)
!2055 = !DILocation(line: 921, column: 18, scope: !2001)
!2056 = !DILocation(line: 920, column: 9, scope: !2008)
!2057 = distinct !{!2057, !2005, !2058, !1075}
!2058 = !DILocation(line: 921, column: 30, scope: !2001)
!2059 = !DILocalVariable(name: "this", arg: 1, scope: !2060, file: !2, line: 937, type: !480)
!2060 = distinct !DISubprogram(name: "base_cost", scope: !2, file: !2, line: 937, type: !2061, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!154, !480}
!2063 = !{!2059, !2064}
!2064 = !DILocalVariable(name: "cost", scope: !2060, file: !2, line: 939, type: !154)
!2065 = !DILocation(line: 0, scope: !2060, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 922, column: 33, scope: !2001)
!2067 = !DILocation(line: 943, column: 12, scope: !2068, inlinedAt: !2066)
!2068 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 943, column: 7)
!2069 = !DILocation(line: 943, column: 7, scope: !2060, inlinedAt: !2066)
!2070 = !DILocation(line: 945, column: 23, scope: !2071, inlinedAt: !2066)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 945, column: 11)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !2, line: 944, column: 5)
!2073 = !DILocation(line: 945, column: 11, scope: !2071, inlinedAt: !2066)
!2074 = !DILocation(line: 945, column: 11, scope: !2072, inlinedAt: !2066)
!2075 = !DILocation(line: 947, column: 15, scope: !2076, inlinedAt: !2066)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 947, column: 15)
!2077 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 946, column: 9)
!2078 = !DILocation(line: 952, column: 16, scope: !2079, inlinedAt: !2066)
!2079 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 952, column: 16)
!2080 = !DILocation(line: 952, column: 16, scope: !2071, inlinedAt: !2066)
!2081 = !DILocation(line: 954, column: 21, scope: !2082, inlinedAt: !2066)
!2082 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 954, column: 16)
!2083 = !DILocation(line: 954, column: 32, scope: !2082, inlinedAt: !2066)
!2084 = !DILocation(line: 954, column: 47, scope: !2082, inlinedAt: !2066)
!2085 = !DILocation(line: 954, column: 35, scope: !2082, inlinedAt: !2066)
!2086 = !DILocation(line: 954, column: 16, scope: !2079, inlinedAt: !2066)
!2087 = !DILocation(line: 955, column: 17, scope: !2082, inlinedAt: !2066)
!2088 = !DILocation(line: 955, column: 14, scope: !2082, inlinedAt: !2066)
!2089 = !DILocation(line: 955, column: 9, scope: !2082, inlinedAt: !2066)
!2090 = !DILocation(line: 958, column: 13, scope: !2091, inlinedAt: !2066)
!2091 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 958, column: 7)
!2092 = !DILocation(line: 958, column: 7, scope: !2091, inlinedAt: !2066)
!2093 = !DILocation(line: 958, column: 7, scope: !2060, inlinedAt: !2066)
!2094 = !DILocation(line: 959, column: 10, scope: !2091, inlinedAt: !2066)
!2095 = !DILocation(line: 959, column: 5, scope: !2091, inlinedAt: !2066)
!2096 = !DILocation(line: 960, column: 12, scope: !2097, inlinedAt: !2066)
!2097 = distinct !DILexicalBlock(scope: !2091, file: !2, line: 960, column: 12)
!2098 = !DILocation(line: 960, column: 12, scope: !2091, inlinedAt: !2066)
!2099 = !DILocation(line: 961, column: 13, scope: !2097, inlinedAt: !2066)
!2100 = !DILocation(line: 961, column: 10, scope: !2097, inlinedAt: !2066)
!2101 = !DILocation(line: 961, column: 5, scope: !2097, inlinedAt: !2066)
!2102 = !DILocation(line: 922, column: 31, scope: !2001)
!2103 = !DILocation(line: 922, column: 14, scope: !2001)
!2104 = !DILocation(line: 922, column: 24, scope: !2001)
!2105 = distinct !{!2105, !1997, !2106, !1075}
!2106 = !DILocation(line: 923, column: 5, scope: !1984)
!2107 = distinct !DISubprogram(name: "put_line", scope: !2, file: !2, line: 1002, type: !2108, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !480, !93}
!2110 = !{!2111, !2112, !2113}
!2111 = !DILocalVariable(name: "w", arg: 1, scope: !2107, file: !2, line: 1002, type: !480)
!2112 = !DILocalVariable(name: "indent", arg: 2, scope: !2107, file: !2, line: 1002, type: !93)
!2113 = !DILocalVariable(name: "endline", scope: !2107, file: !2, line: 1004, type: !480)
!2114 = !DILocation(line: 0, scope: !2107)
!2115 = !DILocation(line: 1006, column: 14, scope: !2107)
!2116 = !DILocation(line: 1007, column: 14, scope: !2107)
!2117 = !DILocation(line: 1007, column: 3, scope: !2107)
!2118 = !DILocation(line: 1008, column: 3, scope: !2107)
!2119 = !DILocation(line: 1009, column: 17, scope: !2107)
!2120 = !DILocation(line: 1009, column: 14, scope: !2107)
!2121 = !DILocation(line: 1010, column: 21, scope: !2107)
!2122 = !DILocation(line: 1010, column: 3, scope: !2107)
!2123 = !DILocation(line: 1012, column: 16, scope: !2107)
!2124 = !DILocation(line: 1012, column: 27, scope: !2107)
!2125 = !DILocation(line: 1013, column: 12, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 1013, column: 3)
!2127 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1013, column: 3)
!2128 = !DILocation(line: 1013, column: 3, scope: !2127)
!2129 = !DILocalVariable(name: "w", arg: 1, scope: !2130, file: !2, line: 1029, type: !480)
!2130 = distinct !DISubprogram(name: "put_word", scope: !2, file: !2, line: 1029, type: !1632, scopeLine: 1030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2131)
!2131 = !{!2129, !2132, !2133}
!2132 = !DILocalVariable(name: "s", scope: !2130, file: !2, line: 1031, type: !150)
!2133 = !DILocalVariable(name: "n", scope: !2134, file: !2, line: 1032, type: !93)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1032, column: 3)
!2135 = !DILocation(line: 0, scope: !2130, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 1015, column: 7, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2126, file: !2, line: 1014, column: 5)
!2138 = !DILocation(line: 1032, column: 19, scope: !2134, inlinedAt: !2136)
!2139 = !DILocation(line: 0, scope: !2134, inlinedAt: !2136)
!2140 = !DILocation(line: 1032, column: 29, scope: !2141, inlinedAt: !2136)
!2141 = distinct !DILexicalBlock(scope: !2134, file: !2, line: 1032, column: 3)
!2142 = !DILocation(line: 1032, column: 3, scope: !2134, inlinedAt: !2136)
!2143 = !DILocation(line: 1031, column: 22, scope: !2130, inlinedAt: !2136)
!2144 = !DILocation(line: 1034, column: 20, scope: !2130, inlinedAt: !2136)
!2145 = !DILocation(line: 1033, column: 5, scope: !2141, inlinedAt: !2136)
!2146 = !DILocation(line: 0, scope: !1437, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 1033, column: 5, scope: !2141, inlinedAt: !2136)
!2148 = !DILocation(line: 110, column: 10, scope: !1437, inlinedAt: !2147)
!2149 = !DILocation(line: 1032, column: 36, scope: !2141, inlinedAt: !2136)
!2150 = distinct !{!2150, !2142, !2151, !1075}
!2151 = !DILocation(line: 1033, column: 5, scope: !2134, inlinedAt: !2136)
!2152 = !DILocation(line: 1034, column: 14, scope: !2130, inlinedAt: !2136)
!2153 = !DILocation(line: 1016, column: 21, scope: !2137)
!2154 = !DILocation(line: 1016, column: 7, scope: !2137)
!2155 = !DILocation(line: 1013, column: 25, scope: !2126)
!2156 = distinct !{!2156, !2128, !2157, !1075}
!2157 = !DILocation(line: 1017, column: 5, scope: !2127)
!2158 = !DILocation(line: 0, scope: !2130, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 1018, column: 3, scope: !2107)
!2160 = !DILocation(line: 1032, column: 19, scope: !2134, inlinedAt: !2159)
!2161 = !DILocation(line: 0, scope: !2134, inlinedAt: !2159)
!2162 = !DILocation(line: 1032, column: 29, scope: !2141, inlinedAt: !2159)
!2163 = !DILocation(line: 1032, column: 3, scope: !2134, inlinedAt: !2159)
!2164 = !DILocation(line: 1031, column: 22, scope: !2130, inlinedAt: !2159)
!2165 = !DILocation(line: 1034, column: 20, scope: !2130, inlinedAt: !2159)
!2166 = !DILocation(line: 1033, column: 5, scope: !2141, inlinedAt: !2159)
!2167 = !DILocation(line: 0, scope: !1437, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 1033, column: 5, scope: !2141, inlinedAt: !2159)
!2169 = !DILocation(line: 110, column: 10, scope: !1437, inlinedAt: !2168)
!2170 = !DILocation(line: 1032, column: 36, scope: !2141, inlinedAt: !2159)
!2171 = distinct !{!2171, !2163, !2172, !1075}
!2172 = !DILocation(line: 1033, column: 5, scope: !2134, inlinedAt: !2159)
!2173 = !DILocation(line: 1034, column: 14, scope: !2130, inlinedAt: !2159)
!2174 = !DILocation(line: 1019, column: 20, scope: !2107)
!2175 = !DILocation(line: 0, scope: !1437, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 1020, column: 3, scope: !2107)
!2177 = !DILocation(line: 110, column: 10, scope: !1437, inlinedAt: !2176)
!2178 = !DILocation(line: 1022, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1022, column: 7)
!2180 = !DILocation(line: 0, scope: !1656, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 1022, column: 7, scope: !2179)
!2182 = !DILocation(line: 137, column: 10, scope: !1656, inlinedAt: !2181)
!2183 = !DILocation(line: 1022, column: 7, scope: !2107)
!2184 = !DILocation(line: 948, column: 21, scope: !2185, inlinedAt: !2188)
!2185 = distinct !DISubprogram(name: "write_error", scope: !92, file: !92, line: 946, type: !582, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2186)
!2186 = !{!2187}
!2187 = !DILocalVariable(name: "saved_errno", scope: !2185, file: !92, line: 948, type: !93)
!2188 = distinct !DILocation(line: 1023, column: 5, scope: !2179)
!2189 = !DILocation(line: 0, scope: !2185, inlinedAt: !2188)
!2190 = !DILocation(line: 949, column: 3, scope: !2185, inlinedAt: !2188)
!2191 = !DILocation(line: 950, column: 11, scope: !2185, inlinedAt: !2188)
!2192 = !DILocation(line: 950, column: 3, scope: !2185, inlinedAt: !2188)
!2193 = !DILocation(line: 951, column: 3, scope: !2185, inlinedAt: !2188)
!2194 = !DILocation(line: 952, column: 3, scope: !2185, inlinedAt: !2188)
!2195 = !DILocation(line: 1024, column: 1, scope: !2107)
!2196 = !DISubprogram(name: "clearerr_unlocked", scope: !544, file: !544, line: 794, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !238}
!2199 = !DISubprogram(name: "fflush_unlocked", scope: !544, file: !544, line: 239, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2200 = distinct !DISubprogram(name: "flush_paragraph", scope: !2, file: !2, line: 809, type: !582, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2209, !2212, !2213}
!2202 = !DILocalVariable(name: "split_point", scope: !2200, file: !2, line: 811, type: !480)
!2203 = !DILocalVariable(name: "w", scope: !2200, file: !2, line: 812, type: !480)
!2204 = !DILocalVariable(name: "shift", scope: !2200, file: !2, line: 813, type: !93)
!2205 = !DILocalVariable(name: "best_break", scope: !2200, file: !2, line: 814, type: !154)
!2206 = !DILocalVariable(name: "to_write", scope: !2207, file: !2, line: 820, type: !147)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 819, column: 5)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 818, column: 7)
!2209 = !DILocalVariable(name: "__ptr", scope: !2210, file: !2, line: 821, type: !150)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !2, line: 821, column: 11)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !2, line: 821, column: 11)
!2212 = !DILocalVariable(name: "__stream", scope: !2210, file: !2, line: 821, type: !238)
!2213 = !DILocalVariable(name: "__cnt", scope: !2210, file: !2, line: 821, type: !147)
!2214 = !DILocation(line: 818, column: 7, scope: !2208)
!2215 = !DILocation(line: 818, column: 18, scope: !2208)
!2216 = !DILocation(line: 818, column: 7, scope: !2200)
!2217 = !DILocation(line: 820, column: 25, scope: !2207)
!2218 = !DILocation(line: 820, column: 30, scope: !2207)
!2219 = !DILocation(line: 0, scope: !2207)
!2220 = !DILocation(line: 821, column: 11, scope: !2211)
!2221 = !DILocation(line: 821, column: 49, scope: !2211)
!2222 = !DILocation(line: 821, column: 11, scope: !2207)
!2223 = !DILocation(line: 948, column: 21, scope: !2185, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 822, column: 9, scope: !2211)
!2225 = !DILocation(line: 0, scope: !2185, inlinedAt: !2224)
!2226 = !DILocation(line: 949, column: 3, scope: !2185, inlinedAt: !2224)
!2227 = !DILocation(line: 950, column: 11, scope: !2185, inlinedAt: !2224)
!2228 = !DILocation(line: 950, column: 3, scope: !2185, inlinedAt: !2224)
!2229 = !DILocation(line: 951, column: 3, scope: !2185, inlinedAt: !2224)
!2230 = !DILocation(line: 952, column: 3, scope: !2185, inlinedAt: !2224)
!2231 = !DILocation(line: 824, column: 12, scope: !2207)
!2232 = !DILocation(line: 834, column: 3, scope: !2200)
!2233 = !DILocation(line: 0, scope: !2200)
!2234 = !DILocation(line: 840, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 840, column: 3)
!2236 = !DILocation(line: 840, column: 32, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 840, column: 3)
!2238 = !DILocation(line: 840, column: 3, scope: !2235)
!2239 = !DILocation(line: 842, column: 14, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 842, column: 11)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 841, column: 5)
!2242 = !DILocation(line: 842, column: 29, scope: !2240)
!2243 = !DILocation(line: 842, column: 41, scope: !2240)
!2244 = !DILocation(line: 842, column: 24, scope: !2240)
!2245 = !DILocation(line: 842, column: 51, scope: !2240)
!2246 = !DILocation(line: 842, column: 11, scope: !2241)
!2247 = !DILocation(line: 847, column: 22, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 847, column: 11)
!2249 = !DILocation(line: 847, column: 11, scope: !2241)
!2250 = distinct !{!2250, !2238, !2251, !1075}
!2251 = !DILocation(line: 849, column: 5, scope: !2235)
!2252 = !DILocation(line: 0, scope: !1631, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 850, column: 3, scope: !2200)
!2254 = !DILocation(line: 993, column: 19, scope: !1631, inlinedAt: !2253)
!2255 = !DILocation(line: 993, column: 3, scope: !1631, inlinedAt: !2253)
!2256 = !DILocation(line: 0, scope: !1636, inlinedAt: !2253)
!2257 = !DILocation(line: 994, scope: !1636, inlinedAt: !2253)
!2258 = !DILocation(line: 994, column: 38, scope: !1646, inlinedAt: !2253)
!2259 = !DILocation(line: 994, column: 3, scope: !1636, inlinedAt: !2253)
!2260 = !DILocation(line: 995, column: 18, scope: !1646, inlinedAt: !2253)
!2261 = !DILocation(line: 995, column: 5, scope: !1646, inlinedAt: !2253)
!2262 = !DILocation(line: 994, column: 56, scope: !1646, inlinedAt: !2253)
!2263 = distinct !{!2263, !2259, !2264, !1075}
!2264 = !DILocation(line: 995, column: 30, scope: !1636, inlinedAt: !2253)
!2265 = !DILocation(line: 855, column: 34, scope: !2200)
!2266 = !DILocation(line: 855, column: 40, scope: !2200)
!2267 = !DILocation(line: 855, column: 45, scope: !2200)
!2268 = !DILocalVariable(name: "__dest", arg: 1, scope: !2269, file: !2270, line: 34, type: !145)
!2269 = distinct !DISubprogram(name: "memmove", scope: !2270, file: !2270, line: 34, type: !2271, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2273)
!2270 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!145, !145, !1173, !147}
!2273 = !{!2268, !2274, !2275}
!2274 = !DILocalVariable(name: "__src", arg: 2, scope: !2269, file: !2270, line: 34, type: !1173)
!2275 = !DILocalVariable(name: "__len", arg: 3, scope: !2269, file: !2270, line: 34, type: !147)
!2276 = !DILocation(line: 0, scope: !2269, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 855, column: 3, scope: !2200)
!2278 = !DILocation(line: 36, column: 10, scope: !2269, inlinedAt: !2277)
!2279 = !DILocation(line: 856, column: 24, scope: !2200)
!2280 = !DILocation(line: 856, column: 29, scope: !2200)
!2281 = !DILocation(line: 856, column: 11, scope: !2200)
!2282 = !DILocation(line: 857, column: 8, scope: !2200)
!2283 = !DILocation(line: 861, column: 27, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !2, line: 861, column: 3)
!2285 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 861, column: 3)
!2286 = !DILocation(line: 861, column: 3, scope: !2285)
!2287 = !DILocation(line: 862, column: 13, scope: !2284)
!2288 = distinct !{!2288, !2286, !2289, !1075, !2290, !2291}
!2289 = !DILocation(line: 862, column: 16, scope: !2285)
!2290 = !{!"llvm.loop.isvectorized", i32 1}
!2291 = !{!"llvm.loop.unroll.runtime.disable"}
!2292 = !DILocation(line: 861, column: 43, scope: !2284)
!2293 = distinct !{!2293, !2286, !2289, !1075, !2290}
!2294 = !DILocation(line: 867, column: 43, scope: !2200)
!2295 = !DILocation(line: 867, column: 62, scope: !2200)
!2296 = !DILocation(line: 0, scope: !2269, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 867, column: 3, scope: !2200)
!2298 = !DILocation(line: 36, column: 10, scope: !2269, inlinedAt: !2297)
!2299 = !DILocation(line: 868, column: 29, scope: !2200)
!2300 = !DILocation(line: 868, column: 14, scope: !2200)
!2301 = !DILocation(line: 869, column: 1, scope: !2200)
!2302 = !DISubprogram(name: "__builtin___memmove_chk", scope: !2303, file: !2303, line: 25, type: !2304, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2303 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!145, !145, !1173, !149, !149}
!2306 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !518, file: !518, line: 50, type: !980, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2307)
!2307 = !{!2308}
!2308 = !DILocalVariable(name: "file", arg: 1, scope: !2306, file: !518, line: 50, type: !150)
!2309 = !DILocation(line: 0, scope: !2306)
!2310 = !DILocation(line: 52, column: 13, scope: !2306)
!2311 = !DILocation(line: 53, column: 1, scope: !2306)
!2312 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !518, file: !518, line: 87, type: !1509, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2313)
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "ignore", arg: 1, scope: !2312, file: !518, line: 87, type: !195)
!2315 = !DILocation(line: 0, scope: !2312)
!2316 = !DILocation(line: 89, column: 16, scope: !2312)
!2317 = !{!2318, !2318, i64 0}
!2318 = !{!"_Bool", !957, i64 0}
!2319 = !DILocation(line: 90, column: 1, scope: !2312)
!2320 = distinct !DISubprogram(name: "close_stdout", scope: !518, file: !518, line: 116, type: !582, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2321)
!2321 = !{!2322}
!2322 = !DILocalVariable(name: "write_error", scope: !2323, file: !518, line: 121, type: !150)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !518, line: 120, column: 5)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !518, line: 118, column: 7)
!2325 = !DILocation(line: 118, column: 21, scope: !2324)
!2326 = !DILocation(line: 118, column: 7, scope: !2324)
!2327 = !DILocation(line: 118, column: 29, scope: !2324)
!2328 = !DILocation(line: 119, column: 7, scope: !2324)
!2329 = !DILocation(line: 119, column: 12, scope: !2324)
!2330 = !{i8 0, i8 2}
!2331 = !DILocation(line: 119, column: 25, scope: !2324)
!2332 = !DILocation(line: 119, column: 28, scope: !2324)
!2333 = !DILocation(line: 119, column: 34, scope: !2324)
!2334 = !DILocation(line: 118, column: 7, scope: !2320)
!2335 = !DILocation(line: 121, column: 33, scope: !2323)
!2336 = !DILocation(line: 0, scope: !2323)
!2337 = !DILocation(line: 122, column: 11, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2323, file: !518, line: 122, column: 11)
!2339 = !DILocation(line: 0, scope: !2338)
!2340 = !DILocation(line: 122, column: 11, scope: !2323)
!2341 = !DILocation(line: 123, column: 9, scope: !2338)
!2342 = !DILocation(line: 126, column: 9, scope: !2338)
!2343 = !DILocation(line: 128, column: 14, scope: !2323)
!2344 = !DILocation(line: 128, column: 7, scope: !2323)
!2345 = !DILocation(line: 133, column: 42, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2320, file: !518, line: 133, column: 7)
!2347 = !DILocation(line: 133, column: 28, scope: !2346)
!2348 = !DILocation(line: 133, column: 50, scope: !2346)
!2349 = !DILocation(line: 133, column: 7, scope: !2320)
!2350 = !DILocation(line: 134, column: 12, scope: !2346)
!2351 = !DILocation(line: 134, column: 5, scope: !2346)
!2352 = !DILocation(line: 135, column: 1, scope: !2320)
!2353 = !DISubprogram(name: "_exit", scope: !2354, file: !2354, line: 624, type: !945, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2354 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2355 = distinct !DISubprogram(name: "verror", scope: !533, file: !533, line: 251, type: !2356, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !93, !93, !150, !543}
!2358 = !{!2359, !2360, !2361, !2362}
!2359 = !DILocalVariable(name: "status", arg: 1, scope: !2355, file: !533, line: 251, type: !93)
!2360 = !DILocalVariable(name: "errnum", arg: 2, scope: !2355, file: !533, line: 251, type: !93)
!2361 = !DILocalVariable(name: "message", arg: 3, scope: !2355, file: !533, line: 251, type: !150)
!2362 = !DILocalVariable(name: "args", arg: 4, scope: !2355, file: !533, line: 251, type: !543)
!2363 = !DILocation(line: 0, scope: !2355)
!2364 = !DILocation(line: 251, column: 1, scope: !2355)
!2365 = !DILocation(line: 261, column: 3, scope: !2355)
!2366 = !DILocation(line: 265, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2355, file: !533, line: 265, column: 7)
!2368 = !DILocation(line: 265, column: 7, scope: !2355)
!2369 = !DILocation(line: 266, column: 5, scope: !2367)
!2370 = !DILocation(line: 272, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !533, line: 268, column: 5)
!2372 = !DILocation(line: 276, column: 3, scope: !2355)
!2373 = !{i64 0, i64 8, !955, i64 8, i64 8, !955, i64 16, i64 8, !955, i64 24, i64 4, !1028, i64 28, i64 4, !1028}
!2374 = !DILocation(line: 282, column: 1, scope: !2355)
!2375 = distinct !DISubprogram(name: "flush_stdout", scope: !533, file: !533, line: 163, type: !582, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2376)
!2376 = !{!2377}
!2377 = !DILocalVariable(name: "stdout_fd", scope: !2375, file: !533, line: 166, type: !93)
!2378 = !DILocation(line: 0, scope: !2375)
!2379 = !DILocalVariable(name: "fd", arg: 1, scope: !2380, file: !533, line: 145, type: !93)
!2380 = distinct !DISubprogram(name: "is_open", scope: !533, file: !533, line: 145, type: !1439, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2381)
!2381 = !{!2379}
!2382 = !DILocation(line: 0, scope: !2380, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 182, column: 25, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2375, file: !533, line: 182, column: 7)
!2385 = !DILocation(line: 157, column: 15, scope: !2380, inlinedAt: !2383)
!2386 = !DILocation(line: 157, column: 12, scope: !2380, inlinedAt: !2383)
!2387 = !DILocation(line: 182, column: 7, scope: !2375)
!2388 = !DILocation(line: 184, column: 5, scope: !2384)
!2389 = !DILocation(line: 185, column: 1, scope: !2375)
!2390 = distinct !DISubprogram(name: "error_tail", scope: !533, file: !533, line: 219, type: !2356, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2391)
!2391 = !{!2392, !2393, !2394, !2395}
!2392 = !DILocalVariable(name: "status", arg: 1, scope: !2390, file: !533, line: 219, type: !93)
!2393 = !DILocalVariable(name: "errnum", arg: 2, scope: !2390, file: !533, line: 219, type: !93)
!2394 = !DILocalVariable(name: "message", arg: 3, scope: !2390, file: !533, line: 219, type: !150)
!2395 = !DILocalVariable(name: "args", arg: 4, scope: !2390, file: !533, line: 219, type: !543)
!2396 = !DILocation(line: 0, scope: !2390)
!2397 = !DILocation(line: 219, column: 1, scope: !2390)
!2398 = !DILocation(line: 229, column: 13, scope: !2390)
!2399 = !DILocation(line: 135, column: 10, scope: !2400, inlinedAt: !2442)
!2400 = distinct !DISubprogram(name: "vfprintf", scope: !1015, file: !1015, line: 132, type: !2401, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2438)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!93, !2403, !1019, !545}
!2403 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2404)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2406)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2406, file: !242, line: 51, baseType: !93, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2406, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2406, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2406, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2406, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2406, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2406, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2406, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2406, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2406, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2406, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2406, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2406, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2406, file: !242, line: 70, baseType: !2422, size: 64, offset: 832)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2406, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2406, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2406, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2406, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2406, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2406, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2406, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2406, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2406, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2406, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2406, file: !242, line: 93, baseType: !2422, size: 64, offset: 1344)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2406, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2406, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2406, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2406, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2438 = !{!2439, !2440, !2441}
!2439 = !DILocalVariable(name: "__stream", arg: 1, scope: !2400, file: !1015, line: 132, type: !2403)
!2440 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2400, file: !1015, line: 133, type: !1019)
!2441 = !DILocalVariable(name: "__ap", arg: 3, scope: !2400, file: !1015, line: 133, type: !545)
!2442 = distinct !DILocation(line: 229, column: 3, scope: !2390)
!2443 = !{!2444, !2446}
!2444 = distinct !{!2444, !2445, !"vfprintf.inline: argument 0"}
!2445 = distinct !{!2445, !"vfprintf.inline"}
!2446 = distinct !{!2446, !2445, !"vfprintf.inline: argument 1"}
!2447 = !DILocation(line: 229, column: 3, scope: !2390)
!2448 = !DILocation(line: 0, scope: !2400, inlinedAt: !2442)
!2449 = !DILocation(line: 133, column: 49, scope: !2400, inlinedAt: !2442)
!2450 = !DILocation(line: 232, column: 3, scope: !2390)
!2451 = !DILocation(line: 233, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2390, file: !533, line: 233, column: 7)
!2453 = !DILocation(line: 233, column: 7, scope: !2390)
!2454 = !DILocalVariable(name: "errnum", arg: 1, scope: !2455, file: !533, line: 188, type: !93)
!2455 = distinct !DISubprogram(name: "print_errno_message", scope: !533, file: !533, line: 188, type: !945, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2456)
!2456 = !{!2454, !2457, !2458}
!2457 = !DILocalVariable(name: "s", scope: !2455, file: !533, line: 190, type: !150)
!2458 = !DILocalVariable(name: "errbuf", scope: !2455, file: !533, line: 193, type: !2459)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2460)
!2460 = !{!2461}
!2461 = !DISubrange(count: 1024)
!2462 = !DILocation(line: 0, scope: !2455, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 234, column: 5, scope: !2452)
!2464 = !DILocation(line: 193, column: 3, scope: !2455, inlinedAt: !2463)
!2465 = !DILocation(line: 193, column: 8, scope: !2455, inlinedAt: !2463)
!2466 = !DILocation(line: 195, column: 7, scope: !2455, inlinedAt: !2463)
!2467 = !DILocation(line: 207, column: 9, scope: !2468, inlinedAt: !2463)
!2468 = distinct !DILexicalBlock(scope: !2455, file: !533, line: 207, column: 7)
!2469 = !DILocation(line: 207, column: 7, scope: !2455, inlinedAt: !2463)
!2470 = !DILocation(line: 208, column: 9, scope: !2468, inlinedAt: !2463)
!2471 = !DILocation(line: 208, column: 5, scope: !2468, inlinedAt: !2463)
!2472 = !DILocation(line: 214, column: 3, scope: !2455, inlinedAt: !2463)
!2473 = !DILocation(line: 216, column: 1, scope: !2455, inlinedAt: !2463)
!2474 = !DILocation(line: 234, column: 5, scope: !2452)
!2475 = !DILocation(line: 238, column: 3, scope: !2390)
!2476 = !DILocalVariable(name: "__c", arg: 1, scope: !2477, file: !1438, line: 101, type: !93)
!2477 = distinct !DISubprogram(name: "putc_unlocked", scope: !1438, file: !1438, line: 101, type: !2478, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!93, !93, !2404}
!2480 = !{!2476, !2481}
!2481 = !DILocalVariable(name: "__stream", arg: 2, scope: !2477, file: !1438, line: 101, type: !2404)
!2482 = !DILocation(line: 0, scope: !2477, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 238, column: 3, scope: !2390)
!2484 = !DILocation(line: 103, column: 10, scope: !2477, inlinedAt: !2483)
!2485 = !DILocation(line: 240, column: 3, scope: !2390)
!2486 = !DILocation(line: 241, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2390, file: !533, line: 241, column: 7)
!2488 = !DILocation(line: 241, column: 7, scope: !2390)
!2489 = !DILocation(line: 242, column: 5, scope: !2487)
!2490 = !DILocation(line: 243, column: 1, scope: !2390)
!2491 = !DISubprogram(name: "__vfprintf_chk", scope: !1015, file: !1015, line: 96, type: !2492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!93, !2403, !93, !1019, !545}
!2494 = !DISubprogram(name: "strerror_r", scope: !1145, file: !1145, line: 444, type: !2495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!144, !93, !144, !147}
!2497 = !DISubprogram(name: "fcntl", scope: !2498, file: !2498, line: 149, type: !2499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2498 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!93, !93, !93, null}
!2501 = distinct !DISubprogram(name: "error", scope: !533, file: !533, line: 285, type: !2502, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !93, !93, !150, null}
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DILocalVariable(name: "status", arg: 1, scope: !2501, file: !533, line: 285, type: !93)
!2506 = !DILocalVariable(name: "errnum", arg: 2, scope: !2501, file: !533, line: 285, type: !93)
!2507 = !DILocalVariable(name: "message", arg: 3, scope: !2501, file: !533, line: 285, type: !150)
!2508 = !DILocalVariable(name: "ap", scope: !2501, file: !533, line: 287, type: !543)
!2509 = !DILocation(line: 0, scope: !2501)
!2510 = !DILocation(line: 287, column: 3, scope: !2501)
!2511 = !DILocation(line: 287, column: 11, scope: !2501)
!2512 = !DILocation(line: 288, column: 3, scope: !2501)
!2513 = !DILocation(line: 289, column: 3, scope: !2501)
!2514 = !DILocation(line: 290, column: 3, scope: !2501)
!2515 = !DILocation(line: 291, column: 1, scope: !2501)
!2516 = !DILocation(line: 0, scope: !540)
!2517 = !DILocation(line: 298, column: 1, scope: !540)
!2518 = !DILocation(line: 302, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !540, file: !533, line: 302, column: 7)
!2520 = !DILocation(line: 302, column: 7, scope: !540)
!2521 = !DILocation(line: 307, column: 11, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !533, line: 307, column: 11)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !533, line: 303, column: 5)
!2524 = !DILocation(line: 307, column: 27, scope: !2522)
!2525 = !DILocation(line: 308, column: 11, scope: !2522)
!2526 = !DILocation(line: 308, column: 28, scope: !2522)
!2527 = !DILocation(line: 308, column: 25, scope: !2522)
!2528 = !DILocation(line: 309, column: 15, scope: !2522)
!2529 = !DILocation(line: 309, column: 33, scope: !2522)
!2530 = !DILocation(line: 310, column: 19, scope: !2522)
!2531 = !DILocation(line: 311, column: 22, scope: !2522)
!2532 = !DILocation(line: 311, column: 56, scope: !2522)
!2533 = !DILocation(line: 307, column: 11, scope: !2523)
!2534 = !DILocation(line: 316, column: 21, scope: !2523)
!2535 = !DILocation(line: 317, column: 23, scope: !2523)
!2536 = !DILocation(line: 318, column: 5, scope: !2523)
!2537 = !DILocation(line: 327, column: 3, scope: !540)
!2538 = !DILocation(line: 331, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !540, file: !533, line: 331, column: 7)
!2540 = !DILocation(line: 331, column: 7, scope: !540)
!2541 = !DILocation(line: 332, column: 5, scope: !2539)
!2542 = !DILocation(line: 338, column: 7, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !533, line: 334, column: 5)
!2544 = !DILocation(line: 346, column: 3, scope: !540)
!2545 = !DILocation(line: 350, column: 3, scope: !540)
!2546 = !DILocation(line: 356, column: 1, scope: !540)
!2547 = distinct !DISubprogram(name: "error_at_line", scope: !533, file: !533, line: 359, type: !2548, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !93, !93, !150, !99, !150, null}
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556}
!2551 = !DILocalVariable(name: "status", arg: 1, scope: !2547, file: !533, line: 359, type: !93)
!2552 = !DILocalVariable(name: "errnum", arg: 2, scope: !2547, file: !533, line: 359, type: !93)
!2553 = !DILocalVariable(name: "file_name", arg: 3, scope: !2547, file: !533, line: 359, type: !150)
!2554 = !DILocalVariable(name: "line_number", arg: 4, scope: !2547, file: !533, line: 360, type: !99)
!2555 = !DILocalVariable(name: "message", arg: 5, scope: !2547, file: !533, line: 360, type: !150)
!2556 = !DILocalVariable(name: "ap", scope: !2547, file: !533, line: 362, type: !543)
!2557 = !DILocation(line: 0, scope: !2547)
!2558 = !DILocation(line: 362, column: 3, scope: !2547)
!2559 = !DILocation(line: 362, column: 11, scope: !2547)
!2560 = !DILocation(line: 363, column: 3, scope: !2547)
!2561 = !DILocation(line: 364, column: 3, scope: !2547)
!2562 = !DILocation(line: 366, column: 3, scope: !2547)
!2563 = !DILocation(line: 367, column: 1, scope: !2547)
!2564 = distinct !DISubprogram(name: "fdadvise", scope: !849, file: !849, line: 25, type: !2565, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !2569)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !93, !2567, !2567, !2568}
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !544, line: 63, baseType: !264)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !135, line: 51, baseType: !134)
!2569 = !{!2570, !2571, !2572, !2573}
!2570 = !DILocalVariable(name: "fd", arg: 1, scope: !2564, file: !849, line: 25, type: !93)
!2571 = !DILocalVariable(name: "offset", arg: 2, scope: !2564, file: !849, line: 25, type: !2567)
!2572 = !DILocalVariable(name: "len", arg: 3, scope: !2564, file: !849, line: 25, type: !2567)
!2573 = !DILocalVariable(name: "advice", arg: 4, scope: !2564, file: !849, line: 25, type: !2568)
!2574 = !DILocation(line: 0, scope: !2564)
!2575 = !DILocation(line: 28, column: 3, scope: !2564)
!2576 = !DILocation(line: 30, column: 1, scope: !2564)
!2577 = !DISubprogram(name: "posix_fadvise", scope: !2498, file: !2498, line: 273, type: !2578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!93, !93, !2567, !2567, !93}
!2580 = distinct !DISubprogram(name: "fadvise", scope: !849, file: !849, line: 33, type: !2581, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !2617)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2583, !2568}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2585, file: !242, line: 51, baseType: !93, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2585, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2585, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2585, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2585, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2585, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2585, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2585, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2585, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2585, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2585, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2585, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2585, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2585, file: !242, line: 70, baseType: !2601, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2585, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2585, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2585, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2585, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2585, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2585, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2585, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2585, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2585, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2585, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2585, file: !242, line: 93, baseType: !2601, size: 64, offset: 1344)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2585, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2585, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2585, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2585, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2617 = !{!2618, !2619}
!2618 = !DILocalVariable(name: "fp", arg: 1, scope: !2580, file: !849, line: 33, type: !2583)
!2619 = !DILocalVariable(name: "advice", arg: 2, scope: !2580, file: !849, line: 33, type: !2568)
!2620 = !DILocation(line: 0, scope: !2580)
!2621 = !DILocation(line: 35, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2580, file: !849, line: 35, column: 7)
!2623 = !DILocation(line: 35, column: 7, scope: !2580)
!2624 = !DILocation(line: 36, column: 15, scope: !2622)
!2625 = !DILocation(line: 0, scope: !2564, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 36, column: 5, scope: !2622)
!2627 = !DILocation(line: 28, column: 3, scope: !2564, inlinedAt: !2626)
!2628 = !DILocation(line: 36, column: 5, scope: !2622)
!2629 = !DILocation(line: 37, column: 1, scope: !2580)
!2630 = !DISubprogram(name: "fileno", scope: !544, file: !544, line: 809, type: !2631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!93, !2583}
!2633 = distinct !DISubprogram(name: "rpl_fclose", scope: !852, file: !852, line: 58, type: !2634, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !2670)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!93, !2636}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2638)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2638, file: !242, line: 51, baseType: !93, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2638, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2638, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2638, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2638, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2638, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2638, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2638, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2638, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2638, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2638, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2638, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2638, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2638, file: !242, line: 70, baseType: !2654, size: 64, offset: 832)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2638, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2638, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2638, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2638, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2638, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2638, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2638, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2638, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2638, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2638, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2638, file: !242, line: 93, baseType: !2654, size: 64, offset: 1344)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2638, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2638, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2638, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2638, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2670 = !{!2671, !2672, !2673, !2674}
!2671 = !DILocalVariable(name: "fp", arg: 1, scope: !2633, file: !852, line: 58, type: !2636)
!2672 = !DILocalVariable(name: "saved_errno", scope: !2633, file: !852, line: 60, type: !93)
!2673 = !DILocalVariable(name: "fd", scope: !2633, file: !852, line: 63, type: !93)
!2674 = !DILocalVariable(name: "result", scope: !2633, file: !852, line: 74, type: !93)
!2675 = !DILocation(line: 0, scope: !2633)
!2676 = !DILocation(line: 63, column: 12, scope: !2633)
!2677 = !DILocation(line: 64, column: 10, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2633, file: !852, line: 64, column: 7)
!2679 = !DILocation(line: 64, column: 7, scope: !2633)
!2680 = !DILocation(line: 65, column: 12, scope: !2678)
!2681 = !DILocation(line: 65, column: 5, scope: !2678)
!2682 = !DILocation(line: 70, column: 9, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2633, file: !852, line: 70, column: 7)
!2684 = !DILocation(line: 70, column: 23, scope: !2683)
!2685 = !DILocation(line: 70, column: 33, scope: !2683)
!2686 = !DILocation(line: 70, column: 26, scope: !2683)
!2687 = !DILocation(line: 70, column: 59, scope: !2683)
!2688 = !DILocation(line: 71, column: 7, scope: !2683)
!2689 = !DILocation(line: 71, column: 10, scope: !2683)
!2690 = !DILocation(line: 70, column: 7, scope: !2633)
!2691 = !DILocation(line: 100, column: 12, scope: !2633)
!2692 = !DILocation(line: 105, column: 7, scope: !2633)
!2693 = !DILocation(line: 72, column: 19, scope: !2683)
!2694 = !DILocation(line: 105, column: 19, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2633, file: !852, line: 105, column: 7)
!2696 = !DILocation(line: 107, column: 13, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2695, file: !852, line: 106, column: 5)
!2698 = !DILocation(line: 109, column: 5, scope: !2697)
!2699 = !DILocation(line: 112, column: 1, scope: !2633)
!2700 = !DISubprogram(name: "fclose", scope: !544, file: !544, line: 178, type: !2634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2701 = !DISubprogram(name: "__freading", scope: !2702, file: !2702, line: 51, type: !2634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2702 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2703 = !DISubprogram(name: "lseek", scope: !2354, file: !2354, line: 339, type: !2704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!264, !93, !264, !93}
!2706 = distinct !DISubprogram(name: "rpl_fflush", scope: !854, file: !854, line: 130, type: !2707, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !2743)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!93, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2711)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2711, file: !242, line: 51, baseType: !93, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2711, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2711, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2711, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2711, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2711, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2711, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2711, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2711, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2711, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2711, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2711, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2711, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2711, file: !242, line: 70, baseType: !2727, size: 64, offset: 832)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2711, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2711, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2711, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2711, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2711, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2711, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2711, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2711, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2711, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2711, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2711, file: !242, line: 93, baseType: !2727, size: 64, offset: 1344)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2711, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2711, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2711, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2711, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2743 = !{!2744}
!2744 = !DILocalVariable(name: "stream", arg: 1, scope: !2706, file: !854, line: 130, type: !2709)
!2745 = !DILocation(line: 0, scope: !2706)
!2746 = !DILocation(line: 151, column: 14, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2706, file: !854, line: 151, column: 7)
!2748 = !DILocation(line: 151, column: 22, scope: !2747)
!2749 = !DILocation(line: 151, column: 27, scope: !2747)
!2750 = !DILocation(line: 151, column: 7, scope: !2706)
!2751 = !DILocation(line: 152, column: 12, scope: !2747)
!2752 = !DILocation(line: 152, column: 5, scope: !2747)
!2753 = !DILocalVariable(name: "fp", arg: 1, scope: !2754, file: !854, line: 42, type: !2709)
!2754 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !854, file: !854, line: 42, type: !2755, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{null, !2709}
!2757 = !{!2753}
!2758 = !DILocation(line: 0, scope: !2754, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 157, column: 3, scope: !2706)
!2760 = !DILocation(line: 44, column: 12, scope: !2761, inlinedAt: !2759)
!2761 = distinct !DILexicalBlock(scope: !2754, file: !854, line: 44, column: 7)
!2762 = !DILocation(line: 44, column: 19, scope: !2761, inlinedAt: !2759)
!2763 = !DILocation(line: 44, column: 7, scope: !2754, inlinedAt: !2759)
!2764 = !DILocation(line: 46, column: 5, scope: !2761, inlinedAt: !2759)
!2765 = !DILocation(line: 159, column: 10, scope: !2706)
!2766 = !DILocation(line: 159, column: 3, scope: !2706)
!2767 = !DILocation(line: 236, column: 1, scope: !2706)
!2768 = !DISubprogram(name: "fflush", scope: !544, file: !544, line: 230, type: !2707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2769 = distinct !DISubprogram(name: "fpurge", scope: !857, file: !857, line: 32, type: !2770, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !2806)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!93, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2774)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2774, file: !242, line: 51, baseType: !93, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2774, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2774, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2774, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2774, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2774, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2774, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2774, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2774, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2774, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2774, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2774, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2774, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2774, file: !242, line: 70, baseType: !2790, size: 64, offset: 832)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2774, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2774, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2774, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2774, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2774, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2774, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2774, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2774, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2774, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2774, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2774, file: !242, line: 93, baseType: !2790, size: 64, offset: 1344)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2774, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2774, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2774, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2774, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2806 = !{!2807}
!2807 = !DILocalVariable(name: "fp", arg: 1, scope: !2769, file: !857, line: 32, type: !2772)
!2808 = !DILocation(line: 0, scope: !2769)
!2809 = !DILocation(line: 36, column: 3, scope: !2769)
!2810 = !DILocation(line: 38, column: 3, scope: !2769)
!2811 = !DISubprogram(name: "__fpurge", scope: !2702, file: !2702, line: 72, type: !2812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2772}
!2814 = distinct !DISubprogram(name: "rpl_fseeko", scope: !859, file: !859, line: 28, type: !2815, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2851)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!93, !2817, !2567, !93}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2819)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2819, file: !242, line: 51, baseType: !93, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2819, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2819, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2819, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2819, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2819, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2819, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2819, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2819, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2819, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2819, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2819, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2819, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2819, file: !242, line: 70, baseType: !2835, size: 64, offset: 832)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2819, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2819, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2819, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2819, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2819, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2819, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2819, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2819, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2819, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2819, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2819, file: !242, line: 93, baseType: !2835, size: 64, offset: 1344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2819, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2819, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2819, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2819, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!2851 = !{!2852, !2853, !2854, !2855}
!2852 = !DILocalVariable(name: "fp", arg: 1, scope: !2814, file: !859, line: 28, type: !2817)
!2853 = !DILocalVariable(name: "offset", arg: 2, scope: !2814, file: !859, line: 28, type: !2567)
!2854 = !DILocalVariable(name: "whence", arg: 3, scope: !2814, file: !859, line: 28, type: !93)
!2855 = !DILocalVariable(name: "pos", scope: !2856, file: !859, line: 123, type: !2567)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !859, line: 119, column: 5)
!2857 = distinct !DILexicalBlock(scope: !2814, file: !859, line: 55, column: 7)
!2858 = !DILocation(line: 0, scope: !2814)
!2859 = !DILocation(line: 55, column: 12, scope: !2857)
!2860 = !DILocation(line: 55, column: 33, scope: !2857)
!2861 = !DILocation(line: 55, column: 25, scope: !2857)
!2862 = !DILocation(line: 56, column: 7, scope: !2857)
!2863 = !DILocation(line: 56, column: 15, scope: !2857)
!2864 = !DILocation(line: 56, column: 37, scope: !2857)
!2865 = !{!1446, !956, i64 32}
!2866 = !DILocation(line: 56, column: 29, scope: !2857)
!2867 = !DILocation(line: 57, column: 7, scope: !2857)
!2868 = !DILocation(line: 57, column: 15, scope: !2857)
!2869 = !{!1446, !956, i64 72}
!2870 = !DILocation(line: 57, column: 29, scope: !2857)
!2871 = !DILocation(line: 55, column: 7, scope: !2814)
!2872 = !DILocation(line: 123, column: 26, scope: !2856)
!2873 = !DILocation(line: 123, column: 19, scope: !2856)
!2874 = !DILocation(line: 0, scope: !2856)
!2875 = !DILocation(line: 124, column: 15, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2856, file: !859, line: 124, column: 11)
!2877 = !DILocation(line: 124, column: 11, scope: !2856)
!2878 = !DILocation(line: 135, column: 19, scope: !2856)
!2879 = !DILocation(line: 136, column: 12, scope: !2856)
!2880 = !DILocation(line: 136, column: 20, scope: !2856)
!2881 = !{!1446, !1447, i64 144}
!2882 = !DILocation(line: 167, column: 7, scope: !2856)
!2883 = !DILocation(line: 169, column: 10, scope: !2814)
!2884 = !DILocation(line: 169, column: 3, scope: !2814)
!2885 = !DILocation(line: 170, column: 1, scope: !2814)
!2886 = !DISubprogram(name: "fseeko", scope: !544, file: !544, line: 736, type: !2887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!93, !2817, !264, !93}
!2889 = distinct !DISubprogram(name: "getprogname", scope: !861, file: !861, line: 54, type: !2890, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !964)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!150}
!2892 = !DILocation(line: 58, column: 10, scope: !2889)
!2893 = !DILocation(line: 58, column: 3, scope: !2889)
!2894 = distinct !DISubprogram(name: "set_program_name", scope: !587, file: !587, line: 37, type: !980, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2895)
!2895 = !{!2896, !2897, !2898}
!2896 = !DILocalVariable(name: "argv0", arg: 1, scope: !2894, file: !587, line: 37, type: !150)
!2897 = !DILocalVariable(name: "slash", scope: !2894, file: !587, line: 44, type: !150)
!2898 = !DILocalVariable(name: "base", scope: !2894, file: !587, line: 45, type: !150)
!2899 = !DILocation(line: 0, scope: !2894)
!2900 = !DILocation(line: 44, column: 23, scope: !2894)
!2901 = !DILocation(line: 45, column: 22, scope: !2894)
!2902 = !DILocation(line: 46, column: 17, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2894, file: !587, line: 46, column: 7)
!2904 = !DILocation(line: 46, column: 9, scope: !2903)
!2905 = !DILocation(line: 46, column: 25, scope: !2903)
!2906 = !DILocation(line: 46, column: 40, scope: !2903)
!2907 = !DILocalVariable(name: "__s1", arg: 1, scope: !2908, file: !1041, line: 974, type: !1173)
!2908 = distinct !DISubprogram(name: "memeq", scope: !1041, file: !1041, line: 974, type: !2909, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!195, !1173, !1173, !147}
!2911 = !{!2907, !2912, !2913}
!2912 = !DILocalVariable(name: "__s2", arg: 2, scope: !2908, file: !1041, line: 974, type: !1173)
!2913 = !DILocalVariable(name: "__n", arg: 3, scope: !2908, file: !1041, line: 974, type: !147)
!2914 = !DILocation(line: 0, scope: !2908, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 46, column: 28, scope: !2903)
!2916 = !DILocation(line: 976, column: 11, scope: !2908, inlinedAt: !2915)
!2917 = !DILocation(line: 976, column: 10, scope: !2908, inlinedAt: !2915)
!2918 = !DILocation(line: 46, column: 7, scope: !2894)
!2919 = !DILocation(line: 49, column: 11, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !587, line: 49, column: 11)
!2921 = distinct !DILexicalBlock(scope: !2903, file: !587, line: 47, column: 5)
!2922 = !DILocation(line: 49, column: 36, scope: !2920)
!2923 = !DILocation(line: 49, column: 11, scope: !2921)
!2924 = !DILocation(line: 65, column: 16, scope: !2894)
!2925 = !DILocation(line: 71, column: 27, scope: !2894)
!2926 = !DILocation(line: 74, column: 33, scope: !2894)
!2927 = !DILocation(line: 76, column: 1, scope: !2894)
!2928 = !DISubprogram(name: "strrchr", scope: !1145, file: !1145, line: 273, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2929 = !DILocation(line: 0, scope: !596)
!2930 = !DILocation(line: 40, column: 29, scope: !596)
!2931 = !DILocation(line: 41, column: 19, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !596, file: !597, line: 41, column: 7)
!2933 = !DILocation(line: 41, column: 7, scope: !596)
!2934 = !DILocation(line: 47, column: 3, scope: !596)
!2935 = !DILocation(line: 48, column: 3, scope: !596)
!2936 = !DILocation(line: 48, column: 13, scope: !596)
!2937 = !DILocalVariable(name: "ps", arg: 1, scope: !2938, file: !2939, line: 1135, type: !2942)
!2938 = distinct !DISubprogram(name: "mbszero", scope: !2939, file: !2939, line: 1135, type: !2940, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2943)
!2939 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2940 = !DISubroutineType(types: !2941)
!2941 = !{null, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!2943 = !{!2937}
!2944 = !DILocation(line: 0, scope: !2938, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 48, column: 18, scope: !596)
!2946 = !DILocalVariable(name: "__dest", arg: 1, scope: !2947, file: !2270, line: 57, type: !145)
!2947 = distinct !DISubprogram(name: "memset", scope: !2270, file: !2270, line: 57, type: !2948, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !600, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!145, !145, !93, !147}
!2950 = !{!2946, !2951, !2952}
!2951 = !DILocalVariable(name: "__ch", arg: 2, scope: !2947, file: !2270, line: 57, type: !93)
!2952 = !DILocalVariable(name: "__len", arg: 3, scope: !2947, file: !2270, line: 57, type: !147)
!2953 = !DILocation(line: 0, scope: !2947, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 1137, column: 3, scope: !2938, inlinedAt: !2945)
!2955 = !DILocation(line: 59, column: 10, scope: !2947, inlinedAt: !2954)
!2956 = !DILocation(line: 49, column: 7, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !596, file: !597, line: 49, column: 7)
!2958 = !DILocation(line: 49, column: 39, scope: !2957)
!2959 = !DILocation(line: 49, column: 44, scope: !2957)
!2960 = !DILocation(line: 54, column: 1, scope: !596)
!2961 = !DISubprogram(name: "mbrtoc32", scope: !608, file: !608, line: 57, type: !2962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!147, !2964, !1019, !147, !2966}
!2964 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2942)
!2967 = distinct !DISubprogram(name: "clone_quoting_options", scope: !627, file: !627, line: 113, type: !2968, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2971)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!2970, !2970}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!2971 = !{!2972, !2973, !2974}
!2972 = !DILocalVariable(name: "o", arg: 1, scope: !2967, file: !627, line: 113, type: !2970)
!2973 = !DILocalVariable(name: "saved_errno", scope: !2967, file: !627, line: 115, type: !93)
!2974 = !DILocalVariable(name: "p", scope: !2967, file: !627, line: 116, type: !2970)
!2975 = !DILocation(line: 0, scope: !2967)
!2976 = !DILocation(line: 115, column: 21, scope: !2967)
!2977 = !DILocation(line: 116, column: 40, scope: !2967)
!2978 = !DILocation(line: 116, column: 31, scope: !2967)
!2979 = !DILocation(line: 118, column: 9, scope: !2967)
!2980 = !DILocation(line: 119, column: 3, scope: !2967)
!2981 = distinct !DISubprogram(name: "get_quoting_style", scope: !627, file: !627, line: 124, type: !2982, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2986)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!105, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!2986 = !{!2987}
!2987 = !DILocalVariable(name: "o", arg: 1, scope: !2981, file: !627, line: 124, type: !2984)
!2988 = !DILocation(line: 0, scope: !2981)
!2989 = !DILocation(line: 126, column: 11, scope: !2981)
!2990 = !DILocation(line: 126, column: 46, scope: !2981)
!2991 = !{!2992, !957, i64 0}
!2992 = !{!"quoting_options", !957, i64 0, !1029, i64 4, !957, i64 8, !956, i64 40, !956, i64 48}
!2993 = !DILocation(line: 126, column: 3, scope: !2981)
!2994 = distinct !DISubprogram(name: "set_quoting_style", scope: !627, file: !627, line: 132, type: !2995, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !2970, !105}
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "o", arg: 1, scope: !2994, file: !627, line: 132, type: !2970)
!2999 = !DILocalVariable(name: "s", arg: 2, scope: !2994, file: !627, line: 132, type: !105)
!3000 = !DILocation(line: 0, scope: !2994)
!3001 = !DILocation(line: 134, column: 4, scope: !2994)
!3002 = !DILocation(line: 134, column: 45, scope: !2994)
!3003 = !DILocation(line: 135, column: 1, scope: !2994)
!3004 = distinct !DISubprogram(name: "set_char_quoting", scope: !627, file: !627, line: 143, type: !3005, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!93, !2970, !4, !93}
!3007 = !{!3008, !3009, !3010, !3011, !3012, !3014, !3015}
!3008 = !DILocalVariable(name: "o", arg: 1, scope: !3004, file: !627, line: 143, type: !2970)
!3009 = !DILocalVariable(name: "c", arg: 2, scope: !3004, file: !627, line: 143, type: !4)
!3010 = !DILocalVariable(name: "i", arg: 3, scope: !3004, file: !627, line: 143, type: !93)
!3011 = !DILocalVariable(name: "uc", scope: !3004, file: !627, line: 145, type: !152)
!3012 = !DILocalVariable(name: "p", scope: !3004, file: !627, line: 146, type: !3013)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!3014 = !DILocalVariable(name: "shift", scope: !3004, file: !627, line: 148, type: !93)
!3015 = !DILocalVariable(name: "r", scope: !3004, file: !627, line: 149, type: !99)
!3016 = !DILocation(line: 0, scope: !3004)
!3017 = !DILocation(line: 147, column: 6, scope: !3004)
!3018 = !DILocation(line: 147, column: 41, scope: !3004)
!3019 = !DILocation(line: 147, column: 62, scope: !3004)
!3020 = !DILocation(line: 147, column: 57, scope: !3004)
!3021 = !DILocation(line: 148, column: 15, scope: !3004)
!3022 = !DILocation(line: 149, column: 21, scope: !3004)
!3023 = !DILocation(line: 149, column: 24, scope: !3004)
!3024 = !DILocation(line: 149, column: 34, scope: !3004)
!3025 = !DILocation(line: 150, column: 19, scope: !3004)
!3026 = !DILocation(line: 150, column: 24, scope: !3004)
!3027 = !DILocation(line: 150, column: 6, scope: !3004)
!3028 = !DILocation(line: 151, column: 3, scope: !3004)
!3029 = distinct !DISubprogram(name: "set_quoting_flags", scope: !627, file: !627, line: 159, type: !3030, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!93, !2970, !93}
!3032 = !{!3033, !3034, !3035}
!3033 = !DILocalVariable(name: "o", arg: 1, scope: !3029, file: !627, line: 159, type: !2970)
!3034 = !DILocalVariable(name: "i", arg: 2, scope: !3029, file: !627, line: 159, type: !93)
!3035 = !DILocalVariable(name: "r", scope: !3029, file: !627, line: 163, type: !93)
!3036 = !DILocation(line: 0, scope: !3029)
!3037 = !DILocation(line: 161, column: 8, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3029, file: !627, line: 161, column: 7)
!3039 = !DILocation(line: 161, column: 7, scope: !3029)
!3040 = !DILocation(line: 163, column: 14, scope: !3029)
!3041 = !{!2992, !1029, i64 4}
!3042 = !DILocation(line: 164, column: 12, scope: !3029)
!3043 = !DILocation(line: 165, column: 3, scope: !3029)
!3044 = distinct !DISubprogram(name: "set_custom_quoting", scope: !627, file: !627, line: 169, type: !3045, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !2970, !150, !150}
!3047 = !{!3048, !3049, !3050}
!3048 = !DILocalVariable(name: "o", arg: 1, scope: !3044, file: !627, line: 169, type: !2970)
!3049 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3044, file: !627, line: 170, type: !150)
!3050 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3044, file: !627, line: 170, type: !150)
!3051 = !DILocation(line: 0, scope: !3044)
!3052 = !DILocation(line: 172, column: 8, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3044, file: !627, line: 172, column: 7)
!3054 = !DILocation(line: 172, column: 7, scope: !3044)
!3055 = !DILocation(line: 174, column: 12, scope: !3044)
!3056 = !DILocation(line: 175, column: 8, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3044, file: !627, line: 175, column: 7)
!3058 = !DILocation(line: 175, column: 19, scope: !3057)
!3059 = !DILocation(line: 176, column: 5, scope: !3057)
!3060 = !DILocation(line: 177, column: 6, scope: !3044)
!3061 = !DILocation(line: 177, column: 17, scope: !3044)
!3062 = !{!2992, !956, i64 40}
!3063 = !DILocation(line: 178, column: 6, scope: !3044)
!3064 = !DILocation(line: 178, column: 18, scope: !3044)
!3065 = !{!2992, !956, i64 48}
!3066 = !DILocation(line: 179, column: 1, scope: !3044)
!3067 = !DISubprogram(name: "abort", scope: !1149, file: !1149, line: 598, type: !582, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !964)
!3068 = distinct !DISubprogram(name: "quotearg_buffer", scope: !627, file: !627, line: 774, type: !3069, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!147, !144, !147, !150, !147, !2984}
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079}
!3072 = !DILocalVariable(name: "buffer", arg: 1, scope: !3068, file: !627, line: 774, type: !144)
!3073 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3068, file: !627, line: 774, type: !147)
!3074 = !DILocalVariable(name: "arg", arg: 3, scope: !3068, file: !627, line: 775, type: !150)
!3075 = !DILocalVariable(name: "argsize", arg: 4, scope: !3068, file: !627, line: 775, type: !147)
!3076 = !DILocalVariable(name: "o", arg: 5, scope: !3068, file: !627, line: 776, type: !2984)
!3077 = !DILocalVariable(name: "p", scope: !3068, file: !627, line: 778, type: !2984)
!3078 = !DILocalVariable(name: "saved_errno", scope: !3068, file: !627, line: 779, type: !93)
!3079 = !DILocalVariable(name: "r", scope: !3068, file: !627, line: 780, type: !147)
!3080 = !DILocation(line: 0, scope: !3068)
!3081 = !DILocation(line: 778, column: 37, scope: !3068)
!3082 = !DILocation(line: 779, column: 21, scope: !3068)
!3083 = !DILocation(line: 781, column: 43, scope: !3068)
!3084 = !DILocation(line: 781, column: 53, scope: !3068)
!3085 = !DILocation(line: 781, column: 63, scope: !3068)
!3086 = !DILocation(line: 782, column: 43, scope: !3068)
!3087 = !DILocation(line: 782, column: 58, scope: !3068)
!3088 = !DILocation(line: 780, column: 14, scope: !3068)
!3089 = !DILocation(line: 783, column: 9, scope: !3068)
!3090 = !DILocation(line: 784, column: 3, scope: !3068)
!3091 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !627, file: !627, line: 251, type: !3092, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3096)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!147, !144, !147, !150, !147, !105, !93, !3094, !150, !150}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3096 = !{!3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3121, !3123, !3126, !3127, !3128, !3129, !3132, !3133, !3136, !3140, !3141, !3149, !3152, !3153, !3155, !3156, !3157, !3158}
!3097 = !DILocalVariable(name: "buffer", arg: 1, scope: !3091, file: !627, line: 251, type: !144)
!3098 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3091, file: !627, line: 251, type: !147)
!3099 = !DILocalVariable(name: "arg", arg: 3, scope: !3091, file: !627, line: 252, type: !150)
!3100 = !DILocalVariable(name: "argsize", arg: 4, scope: !3091, file: !627, line: 252, type: !147)
!3101 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3091, file: !627, line: 253, type: !105)
!3102 = !DILocalVariable(name: "flags", arg: 6, scope: !3091, file: !627, line: 253, type: !93)
!3103 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3091, file: !627, line: 254, type: !3094)
!3104 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3091, file: !627, line: 255, type: !150)
!3105 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3091, file: !627, line: 256, type: !150)
!3106 = !DILocalVariable(name: "unibyte_locale", scope: !3091, file: !627, line: 258, type: !195)
!3107 = !DILocalVariable(name: "len", scope: !3091, file: !627, line: 260, type: !147)
!3108 = !DILocalVariable(name: "orig_buffersize", scope: !3091, file: !627, line: 261, type: !147)
!3109 = !DILocalVariable(name: "quote_string", scope: !3091, file: !627, line: 262, type: !150)
!3110 = !DILocalVariable(name: "quote_string_len", scope: !3091, file: !627, line: 263, type: !147)
!3111 = !DILocalVariable(name: "backslash_escapes", scope: !3091, file: !627, line: 264, type: !195)
!3112 = !DILocalVariable(name: "elide_outer_quotes", scope: !3091, file: !627, line: 265, type: !195)
!3113 = !DILocalVariable(name: "encountered_single_quote", scope: !3091, file: !627, line: 266, type: !195)
!3114 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3091, file: !627, line: 267, type: !195)
!3115 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3091, file: !627, line: 309, type: !195)
!3116 = !DILocalVariable(name: "lq", scope: !3117, file: !627, line: 361, type: !150)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !627, line: 361, column: 11)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !627, line: 360, column: 13)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !627, line: 333, column: 7)
!3120 = distinct !DILexicalBlock(scope: !3091, file: !627, line: 312, column: 5)
!3121 = !DILocalVariable(name: "i", scope: !3122, file: !627, line: 395, type: !147)
!3122 = distinct !DILexicalBlock(scope: !3091, file: !627, line: 395, column: 3)
!3123 = !DILocalVariable(name: "is_right_quote", scope: !3124, file: !627, line: 397, type: !195)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !627, line: 396, column: 5)
!3125 = distinct !DILexicalBlock(scope: !3122, file: !627, line: 395, column: 3)
!3126 = !DILocalVariable(name: "escaping", scope: !3124, file: !627, line: 398, type: !195)
!3127 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3124, file: !627, line: 399, type: !195)
!3128 = !DILocalVariable(name: "c", scope: !3124, file: !627, line: 417, type: !152)
!3129 = !DILocalVariable(name: "m", scope: !3130, file: !627, line: 598, type: !147)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !627, line: 596, column: 11)
!3131 = distinct !DILexicalBlock(scope: !3124, file: !627, line: 419, column: 9)
!3132 = !DILocalVariable(name: "printable", scope: !3130, file: !627, line: 600, type: !195)
!3133 = !DILocalVariable(name: "mbs", scope: !3134, file: !627, line: 609, type: !697)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !627, line: 608, column: 15)
!3135 = distinct !DILexicalBlock(scope: !3130, file: !627, line: 602, column: 17)
!3136 = !DILocalVariable(name: "w", scope: !3137, file: !627, line: 618, type: !607)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !627, line: 617, column: 19)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !627, line: 616, column: 17)
!3139 = distinct !DILexicalBlock(scope: !3134, file: !627, line: 616, column: 17)
!3140 = !DILocalVariable(name: "bytes", scope: !3137, file: !627, line: 619, type: !147)
!3141 = !DILocalVariable(name: "j", scope: !3142, file: !627, line: 648, type: !147)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !627, line: 648, column: 29)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !627, line: 647, column: 27)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !627, line: 645, column: 29)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !627, line: 636, column: 23)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !627, line: 628, column: 30)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !627, line: 623, column: 30)
!3148 = distinct !DILexicalBlock(scope: !3137, file: !627, line: 621, column: 25)
!3149 = !DILocalVariable(name: "ilim", scope: !3150, file: !627, line: 674, type: !147)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !627, line: 671, column: 15)
!3151 = distinct !DILexicalBlock(scope: !3130, file: !627, line: 670, column: 17)
!3152 = !DILabel(scope: !3091, name: "process_input", file: !627, line: 308)
!3153 = !DILabel(scope: !3154, name: "c_and_shell_escape", file: !627, line: 502)
!3154 = distinct !DILexicalBlock(scope: !3131, file: !627, line: 478, column: 9)
!3155 = !DILabel(scope: !3154, name: "c_escape", file: !627, line: 507)
!3156 = !DILabel(scope: !3124, name: "store_escape", file: !627, line: 709)
!3157 = !DILabel(scope: !3124, name: "store_c", file: !627, line: 712)
!3158 = !DILabel(scope: !3091, name: "force_outer_quoting_style", file: !627, line: 753)
!3159 = !DILocation(line: 0, scope: !3091)
!3160 = !DILocation(line: 258, column: 25, scope: !3091)
!3161 = !DILocation(line: 258, column: 36, scope: !3091)
!3162 = !DILocation(line: 267, column: 3, scope: !3091)
!3163 = !DILocation(line: 261, column: 10, scope: !3091)
!3164 = !DILocation(line: 262, column: 15, scope: !3091)
!3165 = !DILocation(line: 263, column: 10, scope: !3091)
!3166 = !DILocation(line: 308, column: 2, scope: !3091)
!3167 = !DILocation(line: 311, column: 3, scope: !3091)
!3168 = !DILocation(line: 318, column: 11, scope: !3120)
!3169 = !DILocation(line: 319, column: 9, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !627, line: 319, column: 9)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !627, line: 319, column: 9)
!3172 = distinct !DILexicalBlock(scope: !3120, file: !627, line: 318, column: 11)
!3173 = !DILocation(line: 319, column: 9, scope: !3171)
!3174 = !DILocation(line: 0, scope: !688, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 357, column: 26, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !627, line: 335, column: 11)
!3177 = distinct !DILexicalBlock(scope: !3119, file: !627, line: 334, column: 13)
!3178 = !DILocation(line: 199, column: 29, scope: !688, inlinedAt: !3175)
!3179 = !DILocation(line: 201, column: 19, scope: !3180, inlinedAt: !3175)
!3180 = distinct !DILexicalBlock(scope: !688, file: !627, line: 201, column: 7)
!3181 = !DILocation(line: 201, column: 7, scope: !688, inlinedAt: !3175)
!3182 = !DILocation(line: 229, column: 3, scope: !688, inlinedAt: !3175)
!3183 = !DILocation(line: 230, column: 3, scope: !688, inlinedAt: !3175)
!3184 = !DILocation(line: 230, column: 13, scope: !688, inlinedAt: !3175)
!3185 = !DILocalVariable(name: "ps", arg: 1, scope: !3186, file: !2939, line: 1135, type: !3189)
!3186 = distinct !DISubprogram(name: "mbszero", scope: !2939, file: !2939, line: 1135, type: !3187, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3190)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!3190 = !{!3185}
!3191 = !DILocation(line: 0, scope: !3186, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 230, column: 18, scope: !688, inlinedAt: !3175)
!3193 = !DILocalVariable(name: "__dest", arg: 1, scope: !3194, file: !2270, line: 57, type: !145)
!3194 = distinct !DISubprogram(name: "memset", scope: !2270, file: !2270, line: 57, type: !2948, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3195)
!3195 = !{!3193, !3196, !3197}
!3196 = !DILocalVariable(name: "__ch", arg: 2, scope: !3194, file: !2270, line: 57, type: !93)
!3197 = !DILocalVariable(name: "__len", arg: 3, scope: !3194, file: !2270, line: 57, type: !147)
!3198 = !DILocation(line: 0, scope: !3194, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 1137, column: 3, scope: !3186, inlinedAt: !3192)
!3200 = !DILocation(line: 59, column: 10, scope: !3194, inlinedAt: !3199)
!3201 = !DILocation(line: 231, column: 7, scope: !3202, inlinedAt: !3175)
!3202 = distinct !DILexicalBlock(scope: !688, file: !627, line: 231, column: 7)
!3203 = !DILocation(line: 231, column: 40, scope: !3202, inlinedAt: !3175)
!3204 = !DILocation(line: 231, column: 45, scope: !3202, inlinedAt: !3175)
!3205 = !DILocation(line: 235, column: 1, scope: !688, inlinedAt: !3175)
!3206 = !DILocation(line: 0, scope: !688, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 358, column: 27, scope: !3176)
!3208 = !DILocation(line: 199, column: 29, scope: !688, inlinedAt: !3207)
!3209 = !DILocation(line: 201, column: 19, scope: !3180, inlinedAt: !3207)
!3210 = !DILocation(line: 201, column: 7, scope: !688, inlinedAt: !3207)
!3211 = !DILocation(line: 229, column: 3, scope: !688, inlinedAt: !3207)
!3212 = !DILocation(line: 230, column: 3, scope: !688, inlinedAt: !3207)
!3213 = !DILocation(line: 230, column: 13, scope: !688, inlinedAt: !3207)
!3214 = !DILocation(line: 0, scope: !3186, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 230, column: 18, scope: !688, inlinedAt: !3207)
!3216 = !DILocation(line: 0, scope: !3194, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 1137, column: 3, scope: !3186, inlinedAt: !3215)
!3218 = !DILocation(line: 59, column: 10, scope: !3194, inlinedAt: !3217)
!3219 = !DILocation(line: 231, column: 7, scope: !3202, inlinedAt: !3207)
!3220 = !DILocation(line: 231, column: 40, scope: !3202, inlinedAt: !3207)
!3221 = !DILocation(line: 231, column: 45, scope: !3202, inlinedAt: !3207)
!3222 = !DILocation(line: 235, column: 1, scope: !688, inlinedAt: !3207)
!3223 = !DILocation(line: 360, column: 13, scope: !3119)
!3224 = !DILocation(line: 0, scope: !3117)
!3225 = !DILocation(line: 361, column: 45, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3117, file: !627, line: 361, column: 11)
!3227 = !DILocation(line: 361, column: 11, scope: !3117)
!3228 = !DILocation(line: 362, column: 13, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !627, line: 362, column: 13)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !627, line: 362, column: 13)
!3231 = !DILocation(line: 362, column: 13, scope: !3230)
!3232 = !DILocation(line: 361, column: 52, scope: !3226)
!3233 = distinct !{!3233, !3227, !3234, !1075}
!3234 = !DILocation(line: 362, column: 13, scope: !3117)
!3235 = !DILocation(line: 260, column: 10, scope: !3091)
!3236 = !DILocation(line: 365, column: 28, scope: !3119)
!3237 = !DILocation(line: 367, column: 7, scope: !3120)
!3238 = !DILocation(line: 370, column: 7, scope: !3120)
!3239 = !DILocation(line: 376, column: 11, scope: !3120)
!3240 = !DILocation(line: 381, column: 11, scope: !3120)
!3241 = !DILocation(line: 382, column: 9, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !627, line: 382, column: 9)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !627, line: 382, column: 9)
!3244 = distinct !DILexicalBlock(scope: !3120, file: !627, line: 381, column: 11)
!3245 = !DILocation(line: 382, column: 9, scope: !3243)
!3246 = !DILocation(line: 389, column: 7, scope: !3120)
!3247 = !DILocation(line: 392, column: 7, scope: !3120)
!3248 = !DILocation(line: 0, scope: !3122)
!3249 = !DILocation(line: 395, column: 8, scope: !3122)
!3250 = !DILocation(line: 395, scope: !3122)
!3251 = !DILocation(line: 395, column: 34, scope: !3125)
!3252 = !DILocation(line: 395, column: 26, scope: !3125)
!3253 = !DILocation(line: 395, column: 48, scope: !3125)
!3254 = !DILocation(line: 395, column: 55, scope: !3125)
!3255 = !DILocation(line: 395, column: 3, scope: !3122)
!3256 = !DILocation(line: 395, column: 67, scope: !3125)
!3257 = !DILocation(line: 0, scope: !3124)
!3258 = !DILocation(line: 402, column: 11, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3124, file: !627, line: 401, column: 11)
!3260 = !DILocation(line: 404, column: 17, scope: !3259)
!3261 = !DILocation(line: 405, column: 39, scope: !3259)
!3262 = !DILocation(line: 409, column: 32, scope: !3259)
!3263 = !DILocation(line: 405, column: 19, scope: !3259)
!3264 = !DILocation(line: 405, column: 15, scope: !3259)
!3265 = !DILocation(line: 410, column: 11, scope: !3259)
!3266 = !DILocation(line: 410, column: 25, scope: !3259)
!3267 = !DILocalVariable(name: "__s1", arg: 1, scope: !3268, file: !1041, line: 974, type: !1173)
!3268 = distinct !DISubprogram(name: "memeq", scope: !1041, file: !1041, line: 974, type: !2909, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3269)
!3269 = !{!3267, !3270, !3271}
!3270 = !DILocalVariable(name: "__s2", arg: 2, scope: !3268, file: !1041, line: 974, type: !1173)
!3271 = !DILocalVariable(name: "__n", arg: 3, scope: !3268, file: !1041, line: 974, type: !147)
!3272 = !DILocation(line: 0, scope: !3268, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 410, column: 14, scope: !3259)
!3274 = !DILocation(line: 976, column: 11, scope: !3268, inlinedAt: !3273)
!3275 = !DILocation(line: 976, column: 10, scope: !3268, inlinedAt: !3273)
!3276 = !DILocation(line: 401, column: 11, scope: !3124)
!3277 = !DILocation(line: 417, column: 25, scope: !3124)
!3278 = !DILocation(line: 418, column: 7, scope: !3124)
!3279 = !DILocation(line: 421, column: 15, scope: !3131)
!3280 = !DILocation(line: 423, column: 15, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !627, line: 423, column: 15)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !627, line: 422, column: 13)
!3283 = distinct !DILexicalBlock(scope: !3131, file: !627, line: 421, column: 15)
!3284 = !DILocation(line: 423, column: 15, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3281, file: !627, line: 423, column: 15)
!3286 = !DILocation(line: 423, column: 15, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !627, line: 423, column: 15)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !627, line: 423, column: 15)
!3289 = distinct !DILexicalBlock(scope: !3285, file: !627, line: 423, column: 15)
!3290 = !DILocation(line: 423, column: 15, scope: !3288)
!3291 = !DILocation(line: 423, column: 15, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !627, line: 423, column: 15)
!3293 = distinct !DILexicalBlock(scope: !3289, file: !627, line: 423, column: 15)
!3294 = !DILocation(line: 423, column: 15, scope: !3293)
!3295 = !DILocation(line: 423, column: 15, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !627, line: 423, column: 15)
!3297 = distinct !DILexicalBlock(scope: !3289, file: !627, line: 423, column: 15)
!3298 = !DILocation(line: 423, column: 15, scope: !3297)
!3299 = !DILocation(line: 423, column: 15, scope: !3289)
!3300 = !DILocation(line: 423, column: 15, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !627, line: 423, column: 15)
!3302 = distinct !DILexicalBlock(scope: !3281, file: !627, line: 423, column: 15)
!3303 = !DILocation(line: 423, column: 15, scope: !3302)
!3304 = !DILocation(line: 431, column: 19, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3282, file: !627, line: 430, column: 19)
!3306 = !DILocation(line: 431, column: 24, scope: !3305)
!3307 = !DILocation(line: 431, column: 28, scope: !3305)
!3308 = !DILocation(line: 431, column: 38, scope: !3305)
!3309 = !DILocation(line: 431, column: 48, scope: !3305)
!3310 = !DILocation(line: 431, column: 59, scope: !3305)
!3311 = !DILocation(line: 433, column: 19, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !627, line: 433, column: 19)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !627, line: 433, column: 19)
!3314 = distinct !DILexicalBlock(scope: !3305, file: !627, line: 432, column: 17)
!3315 = !DILocation(line: 433, column: 19, scope: !3313)
!3316 = !DILocation(line: 434, column: 19, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !627, line: 434, column: 19)
!3318 = distinct !DILexicalBlock(scope: !3314, file: !627, line: 434, column: 19)
!3319 = !DILocation(line: 434, column: 19, scope: !3318)
!3320 = !DILocation(line: 435, column: 17, scope: !3314)
!3321 = !DILocation(line: 442, column: 20, scope: !3283)
!3322 = !DILocation(line: 447, column: 11, scope: !3131)
!3323 = !DILocation(line: 450, column: 19, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3131, file: !627, line: 448, column: 13)
!3325 = !DILocation(line: 456, column: 19, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3324, file: !627, line: 455, column: 19)
!3327 = !DILocation(line: 456, column: 24, scope: !3326)
!3328 = !DILocation(line: 456, column: 28, scope: !3326)
!3329 = !DILocation(line: 456, column: 38, scope: !3326)
!3330 = !DILocation(line: 456, column: 47, scope: !3326)
!3331 = !DILocation(line: 456, column: 41, scope: !3326)
!3332 = !DILocation(line: 456, column: 52, scope: !3326)
!3333 = !DILocation(line: 455, column: 19, scope: !3324)
!3334 = !DILocation(line: 457, column: 25, scope: !3326)
!3335 = !DILocation(line: 457, column: 17, scope: !3326)
!3336 = !DILocation(line: 464, column: 25, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3326, file: !627, line: 458, column: 19)
!3338 = !DILocation(line: 468, column: 21, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !627, line: 468, column: 21)
!3340 = distinct !DILexicalBlock(scope: !3337, file: !627, line: 468, column: 21)
!3341 = !DILocation(line: 468, column: 21, scope: !3340)
!3342 = !DILocation(line: 469, column: 21, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !627, line: 469, column: 21)
!3344 = distinct !DILexicalBlock(scope: !3337, file: !627, line: 469, column: 21)
!3345 = !DILocation(line: 469, column: 21, scope: !3344)
!3346 = !DILocation(line: 470, column: 21, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !627, line: 470, column: 21)
!3348 = distinct !DILexicalBlock(scope: !3337, file: !627, line: 470, column: 21)
!3349 = !DILocation(line: 470, column: 21, scope: !3348)
!3350 = !DILocation(line: 471, column: 21, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !627, line: 471, column: 21)
!3352 = distinct !DILexicalBlock(scope: !3337, file: !627, line: 471, column: 21)
!3353 = !DILocation(line: 471, column: 21, scope: !3352)
!3354 = !DILocation(line: 472, column: 21, scope: !3337)
!3355 = !DILocation(line: 482, column: 33, scope: !3154)
!3356 = !DILocation(line: 483, column: 33, scope: !3154)
!3357 = !DILocation(line: 485, column: 33, scope: !3154)
!3358 = !DILocation(line: 486, column: 33, scope: !3154)
!3359 = !DILocation(line: 487, column: 33, scope: !3154)
!3360 = !DILocation(line: 490, column: 17, scope: !3154)
!3361 = !DILocation(line: 492, column: 21, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !627, line: 491, column: 15)
!3363 = distinct !DILexicalBlock(scope: !3154, file: !627, line: 490, column: 17)
!3364 = !DILocation(line: 499, column: 35, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3154, file: !627, line: 499, column: 17)
!3366 = !DILocation(line: 0, scope: !3154)
!3367 = !DILocation(line: 502, column: 11, scope: !3154)
!3368 = !DILocation(line: 504, column: 17, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3154, file: !627, line: 503, column: 17)
!3370 = !DILocation(line: 507, column: 11, scope: !3154)
!3371 = !DILocation(line: 508, column: 17, scope: !3154)
!3372 = !DILocation(line: 517, column: 15, scope: !3131)
!3373 = !DILocation(line: 517, column: 40, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3131, file: !627, line: 517, column: 15)
!3375 = !DILocation(line: 517, column: 47, scope: !3374)
!3376 = !DILocation(line: 517, column: 18, scope: !3374)
!3377 = !DILocation(line: 521, column: 17, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3131, file: !627, line: 521, column: 15)
!3379 = !DILocation(line: 521, column: 15, scope: !3131)
!3380 = !DILocation(line: 525, column: 11, scope: !3131)
!3381 = !DILocation(line: 537, column: 15, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3131, file: !627, line: 536, column: 15)
!3383 = !DILocation(line: 536, column: 15, scope: !3131)
!3384 = !DILocation(line: 544, column: 15, scope: !3131)
!3385 = !DILocation(line: 546, column: 19, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !627, line: 545, column: 13)
!3387 = distinct !DILexicalBlock(scope: !3131, file: !627, line: 544, column: 15)
!3388 = !DILocation(line: 549, column: 19, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3386, file: !627, line: 549, column: 19)
!3390 = !DILocation(line: 549, column: 30, scope: !3389)
!3391 = !DILocation(line: 558, column: 15, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !627, line: 558, column: 15)
!3393 = distinct !DILexicalBlock(scope: !3386, file: !627, line: 558, column: 15)
!3394 = !DILocation(line: 558, column: 15, scope: !3393)
!3395 = !DILocation(line: 559, column: 15, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !627, line: 559, column: 15)
!3397 = distinct !DILexicalBlock(scope: !3386, file: !627, line: 559, column: 15)
!3398 = !DILocation(line: 559, column: 15, scope: !3397)
!3399 = !DILocation(line: 560, column: 15, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !627, line: 560, column: 15)
!3401 = distinct !DILexicalBlock(scope: !3386, file: !627, line: 560, column: 15)
!3402 = !DILocation(line: 560, column: 15, scope: !3401)
!3403 = !DILocation(line: 562, column: 13, scope: !3386)
!3404 = !DILocation(line: 602, column: 17, scope: !3130)
!3405 = !DILocation(line: 0, scope: !3130)
!3406 = !DILocation(line: 605, column: 29, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3135, file: !627, line: 603, column: 15)
!3408 = !DILocation(line: 605, column: 41, scope: !3407)
!3409 = !DILocation(line: 606, column: 15, scope: !3407)
!3410 = !DILocation(line: 609, column: 17, scope: !3134)
!3411 = !DILocation(line: 609, column: 27, scope: !3134)
!3412 = !DILocation(line: 0, scope: !3186, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 609, column: 32, scope: !3134)
!3414 = !DILocation(line: 0, scope: !3194, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 1137, column: 3, scope: !3186, inlinedAt: !3413)
!3416 = !DILocation(line: 59, column: 10, scope: !3194, inlinedAt: !3415)
!3417 = !DILocation(line: 613, column: 29, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3134, file: !627, line: 613, column: 21)
!3419 = !DILocation(line: 613, column: 21, scope: !3134)
!3420 = !DILocation(line: 614, column: 29, scope: !3418)
!3421 = !DILocation(line: 614, column: 19, scope: !3418)
!3422 = !DILocation(line: 618, column: 21, scope: !3137)
!3423 = !DILocation(line: 620, column: 54, scope: !3137)
!3424 = !DILocation(line: 0, scope: !3137)
!3425 = !DILocation(line: 619, column: 36, scope: !3137)
!3426 = !DILocation(line: 621, column: 25, scope: !3137)
!3427 = !DILocation(line: 631, column: 38, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3146, file: !627, line: 629, column: 23)
!3429 = !DILocation(line: 631, column: 48, scope: !3428)
!3430 = !DILocation(line: 626, column: 25, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3147, file: !627, line: 624, column: 23)
!3432 = !DILocation(line: 631, column: 51, scope: !3428)
!3433 = !DILocation(line: 631, column: 25, scope: !3428)
!3434 = !DILocation(line: 632, column: 28, scope: !3428)
!3435 = !DILocation(line: 631, column: 34, scope: !3428)
!3436 = distinct !{!3436, !3433, !3434, !1075}
!3437 = !DILocation(line: 646, column: 29, scope: !3144)
!3438 = !DILocation(line: 0, scope: !3142)
!3439 = !DILocation(line: 649, column: 49, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3142, file: !627, line: 648, column: 29)
!3441 = !DILocation(line: 649, column: 39, scope: !3440)
!3442 = !DILocation(line: 649, column: 31, scope: !3440)
!3443 = !DILocation(line: 648, column: 60, scope: !3440)
!3444 = !DILocation(line: 648, column: 50, scope: !3440)
!3445 = !DILocation(line: 648, column: 29, scope: !3142)
!3446 = distinct !{!3446, !3445, !3447, !1075}
!3447 = !DILocation(line: 654, column: 33, scope: !3142)
!3448 = !DILocation(line: 657, column: 43, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3145, file: !627, line: 657, column: 29)
!3450 = !DILocalVariable(name: "wc", arg: 1, scope: !3451, file: !3452, line: 865, type: !3455)
!3451 = distinct !DISubprogram(name: "c32isprint", scope: !3452, file: !3452, line: 865, type: !3453, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3457)
!3452 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!93, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3456, line: 20, baseType: !99)
!3456 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3457 = !{!3450}
!3458 = !DILocation(line: 0, scope: !3451, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 657, column: 31, scope: !3449)
!3460 = !DILocation(line: 871, column: 10, scope: !3451, inlinedAt: !3459)
!3461 = !DILocation(line: 657, column: 31, scope: !3449)
!3462 = !DILocation(line: 664, column: 23, scope: !3137)
!3463 = !DILocation(line: 665, column: 19, scope: !3138)
!3464 = !DILocation(line: 666, column: 15, scope: !3135)
!3465 = !DILocation(line: 753, column: 2, scope: !3091)
!3466 = !DILocation(line: 756, column: 51, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3091, file: !627, line: 756, column: 7)
!3468 = !DILocation(line: 0, scope: !3135)
!3469 = !DILocation(line: 670, column: 19, scope: !3151)
!3470 = !DILocation(line: 670, column: 23, scope: !3151)
!3471 = !DILocation(line: 674, column: 33, scope: !3150)
!3472 = !DILocation(line: 0, scope: !3150)
!3473 = !DILocation(line: 676, column: 17, scope: !3150)
!3474 = !DILocation(line: 398, column: 12, scope: !3124)
!3475 = !DILocation(line: 678, column: 43, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !627, line: 678, column: 25)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !627, line: 677, column: 19)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !627, line: 676, column: 17)
!3479 = distinct !DILexicalBlock(scope: !3150, file: !627, line: 676, column: 17)
!3480 = !DILocation(line: 680, column: 25, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !627, line: 680, column: 25)
!3482 = distinct !DILexicalBlock(scope: !3476, file: !627, line: 679, column: 23)
!3483 = !DILocation(line: 680, column: 25, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3481, file: !627, line: 680, column: 25)
!3485 = !DILocation(line: 680, column: 25, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !627, line: 680, column: 25)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !627, line: 680, column: 25)
!3488 = distinct !DILexicalBlock(scope: !3484, file: !627, line: 680, column: 25)
!3489 = !DILocation(line: 680, column: 25, scope: !3487)
!3490 = !DILocation(line: 680, column: 25, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !627, line: 680, column: 25)
!3492 = distinct !DILexicalBlock(scope: !3488, file: !627, line: 680, column: 25)
!3493 = !DILocation(line: 680, column: 25, scope: !3492)
!3494 = !DILocation(line: 680, column: 25, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !627, line: 680, column: 25)
!3496 = distinct !DILexicalBlock(scope: !3488, file: !627, line: 680, column: 25)
!3497 = !DILocation(line: 680, column: 25, scope: !3496)
!3498 = !DILocation(line: 680, column: 25, scope: !3488)
!3499 = !DILocation(line: 680, column: 25, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !627, line: 680, column: 25)
!3501 = distinct !DILexicalBlock(scope: !3481, file: !627, line: 680, column: 25)
!3502 = !DILocation(line: 680, column: 25, scope: !3501)
!3503 = !DILocation(line: 681, column: 25, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !627, line: 681, column: 25)
!3505 = distinct !DILexicalBlock(scope: !3482, file: !627, line: 681, column: 25)
!3506 = !DILocation(line: 681, column: 25, scope: !3505)
!3507 = !DILocation(line: 682, column: 25, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !627, line: 682, column: 25)
!3509 = distinct !DILexicalBlock(scope: !3482, file: !627, line: 682, column: 25)
!3510 = !DILocation(line: 682, column: 25, scope: !3509)
!3511 = !DILocation(line: 683, column: 38, scope: !3482)
!3512 = !DILocation(line: 683, column: 33, scope: !3482)
!3513 = !DILocation(line: 684, column: 23, scope: !3482)
!3514 = !DILocation(line: 685, column: 30, scope: !3476)
!3515 = !DILocation(line: 687, column: 25, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !627, line: 687, column: 25)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !627, line: 687, column: 25)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !627, line: 686, column: 23)
!3519 = distinct !DILexicalBlock(scope: !3476, file: !627, line: 685, column: 30)
!3520 = !DILocation(line: 687, column: 25, scope: !3517)
!3521 = !DILocation(line: 689, column: 23, scope: !3518)
!3522 = !DILocation(line: 690, column: 35, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3477, file: !627, line: 690, column: 25)
!3524 = !DILocation(line: 690, column: 30, scope: !3523)
!3525 = !DILocation(line: 690, column: 25, scope: !3477)
!3526 = !DILocation(line: 692, column: 21, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !627, line: 692, column: 21)
!3528 = distinct !DILexicalBlock(scope: !3477, file: !627, line: 692, column: 21)
!3529 = !DILocation(line: 692, column: 21, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !627, line: 692, column: 21)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !627, line: 692, column: 21)
!3532 = distinct !DILexicalBlock(scope: !3527, file: !627, line: 692, column: 21)
!3533 = !DILocation(line: 692, column: 21, scope: !3531)
!3534 = !DILocation(line: 692, column: 21, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !627, line: 692, column: 21)
!3536 = distinct !DILexicalBlock(scope: !3532, file: !627, line: 692, column: 21)
!3537 = !DILocation(line: 692, column: 21, scope: !3536)
!3538 = !DILocation(line: 692, column: 21, scope: !3532)
!3539 = !DILocation(line: 0, scope: !3477)
!3540 = !DILocation(line: 693, column: 21, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !627, line: 693, column: 21)
!3542 = distinct !DILexicalBlock(scope: !3477, file: !627, line: 693, column: 21)
!3543 = !DILocation(line: 693, column: 21, scope: !3542)
!3544 = !DILocation(line: 694, column: 25, scope: !3477)
!3545 = !DILocation(line: 676, column: 17, scope: !3478)
!3546 = distinct !{!3546, !3547, !3548}
!3547 = !DILocation(line: 676, column: 17, scope: !3479)
!3548 = !DILocation(line: 695, column: 19, scope: !3479)
!3549 = !DILocation(line: 409, column: 30, scope: !3259)
!3550 = !DILocation(line: 702, column: 34, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3124, file: !627, line: 702, column: 11)
!3552 = !DILocation(line: 704, column: 14, scope: !3551)
!3553 = !DILocation(line: 705, column: 14, scope: !3551)
!3554 = !DILocation(line: 705, column: 35, scope: !3551)
!3555 = !DILocation(line: 705, column: 17, scope: !3551)
!3556 = !DILocation(line: 705, column: 47, scope: !3551)
!3557 = !DILocation(line: 705, column: 65, scope: !3551)
!3558 = !DILocation(line: 706, column: 11, scope: !3551)
!3559 = !DILocation(line: 702, column: 11, scope: !3124)
!3560 = !DILocation(line: 395, column: 15, scope: !3122)
!3561 = !DILocation(line: 709, column: 5, scope: !3124)
!3562 = !DILocation(line: 710, column: 7, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3124, file: !627, line: 710, column: 7)
!3564 = !DILocation(line: 710, column: 7, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3563, file: !627, line: 710, column: 7)
!3566 = !DILocation(line: 710, column: 7, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !627, line: 710, column: 7)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !627, line: 710, column: 7)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !627, line: 710, column: 7)
!3570 = !DILocation(line: 710, column: 7, scope: !3568)
!3571 = !DILocation(line: 710, column: 7, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !627, line: 710, column: 7)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !627, line: 710, column: 7)
!3574 = !DILocation(line: 710, column: 7, scope: !3573)
!3575 = !DILocation(line: 710, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !627, line: 710, column: 7)
!3577 = distinct !DILexicalBlock(scope: !3569, file: !627, line: 710, column: 7)
!3578 = !DILocation(line: 710, column: 7, scope: !3577)
!3579 = !DILocation(line: 710, column: 7, scope: !3569)
!3580 = !DILocation(line: 710, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !627, line: 710, column: 7)
!3582 = distinct !DILexicalBlock(scope: !3563, file: !627, line: 710, column: 7)
!3583 = !DILocation(line: 710, column: 7, scope: !3582)
!3584 = !DILocation(line: 712, column: 5, scope: !3124)
!3585 = !DILocation(line: 713, column: 7, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !627, line: 713, column: 7)
!3587 = distinct !DILexicalBlock(scope: !3124, file: !627, line: 713, column: 7)
!3588 = !DILocation(line: 417, column: 21, scope: !3124)
!3589 = !DILocation(line: 713, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !627, line: 713, column: 7)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !627, line: 713, column: 7)
!3592 = distinct !DILexicalBlock(scope: !3586, file: !627, line: 713, column: 7)
!3593 = !DILocation(line: 713, column: 7, scope: !3591)
!3594 = !DILocation(line: 713, column: 7, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !627, line: 713, column: 7)
!3596 = distinct !DILexicalBlock(scope: !3592, file: !627, line: 713, column: 7)
!3597 = !DILocation(line: 713, column: 7, scope: !3596)
!3598 = !DILocation(line: 713, column: 7, scope: !3592)
!3599 = !DILocation(line: 714, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !627, line: 714, column: 7)
!3601 = distinct !DILexicalBlock(scope: !3124, file: !627, line: 714, column: 7)
!3602 = !DILocation(line: 714, column: 7, scope: !3601)
!3603 = !DILocation(line: 716, column: 11, scope: !3124)
!3604 = !DILocation(line: 718, column: 5, scope: !3125)
!3605 = !DILocation(line: 395, column: 82, scope: !3125)
!3606 = !DILocation(line: 395, column: 3, scope: !3125)
!3607 = distinct !{!3607, !3255, !3608, !1075}
!3608 = !DILocation(line: 718, column: 5, scope: !3122)
!3609 = !DILocation(line: 720, column: 11, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3091, file: !627, line: 720, column: 7)
!3611 = !DILocation(line: 720, column: 16, scope: !3610)
!3612 = !DILocation(line: 728, column: 51, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3091, file: !627, line: 728, column: 7)
!3614 = !DILocation(line: 731, column: 11, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3613, file: !627, line: 730, column: 5)
!3616 = !DILocation(line: 732, column: 16, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3615, file: !627, line: 731, column: 11)
!3618 = !DILocation(line: 732, column: 9, scope: !3617)
!3619 = !DILocation(line: 736, column: 18, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3617, file: !627, line: 736, column: 16)
!3621 = !DILocation(line: 736, column: 29, scope: !3620)
!3622 = !DILocation(line: 745, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3091, file: !627, line: 745, column: 7)
!3624 = !DILocation(line: 745, column: 20, scope: !3623)
!3625 = !DILocation(line: 746, column: 12, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !627, line: 746, column: 5)
!3627 = distinct !DILexicalBlock(scope: !3623, file: !627, line: 746, column: 5)
!3628 = !DILocation(line: 746, column: 5, scope: !3627)
!3629 = !DILocation(line: 747, column: 7, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !627, line: 747, column: 7)
!3631 = distinct !DILexicalBlock(scope: !3626, file: !627, line: 747, column: 7)
!3632 = !DILocation(line: 747, column: 7, scope: !3631)
!3633 = !DILocation(line: 746, column: 39, scope: !3626)
!3634 = distinct !{!3634, !3628, !3635, !1075}
!3635 = !DILocation(line: 747, column: 7, scope: !3627)
!3636 = !DILocation(line: 749, column: 11, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3091, file: !627, line: 749, column: 7)
!3638 = !DILocation(line: 749, column: 7, scope: !3091)
!3639 = !DILocation(line: 750, column: 5, scope: !3637)
!3640 = !DILocation(line: 750, column: 17, scope: !3637)
!3641 = !DILocation(line: 756, column: 21, scope: !3467)
!3642 = !DILocation(line: 760, column: 42, scope: !3091)
!3643 = !DILocation(line: 758, column: 10, scope: !3091)
!3644 = !DILocation(line: 758, column: 3, scope: !3091)
!3645 = !DILocation(line: 762, column: 1, scope: !3091)
!3646 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1149, file: !1149, line: 98, type: !3647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!147}
!3649 = !DISubprogram(name: "iswprint", scope: !3650, file: !3650, line: 120, type: !3453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!3650 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3651 = distinct !DISubprogram(name: "quotearg_alloc", scope: !627, file: !627, line: 788, type: !3652, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!144, !150, !147, !2984}
!3654 = !{!3655, !3656, !3657}
!3655 = !DILocalVariable(name: "arg", arg: 1, scope: !3651, file: !627, line: 788, type: !150)
!3656 = !DILocalVariable(name: "argsize", arg: 2, scope: !3651, file: !627, line: 788, type: !147)
!3657 = !DILocalVariable(name: "o", arg: 3, scope: !3651, file: !627, line: 789, type: !2984)
!3658 = !DILocation(line: 0, scope: !3651)
!3659 = !DILocalVariable(name: "arg", arg: 1, scope: !3660, file: !627, line: 801, type: !150)
!3660 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !627, file: !627, line: 801, type: !3661, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!144, !150, !147, !875, !2984}
!3663 = !{!3659, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671}
!3664 = !DILocalVariable(name: "argsize", arg: 2, scope: !3660, file: !627, line: 801, type: !147)
!3665 = !DILocalVariable(name: "size", arg: 3, scope: !3660, file: !627, line: 801, type: !875)
!3666 = !DILocalVariable(name: "o", arg: 4, scope: !3660, file: !627, line: 802, type: !2984)
!3667 = !DILocalVariable(name: "p", scope: !3660, file: !627, line: 804, type: !2984)
!3668 = !DILocalVariable(name: "saved_errno", scope: !3660, file: !627, line: 805, type: !93)
!3669 = !DILocalVariable(name: "flags", scope: !3660, file: !627, line: 807, type: !93)
!3670 = !DILocalVariable(name: "bufsize", scope: !3660, file: !627, line: 808, type: !147)
!3671 = !DILocalVariable(name: "buf", scope: !3660, file: !627, line: 812, type: !144)
!3672 = !DILocation(line: 0, scope: !3660, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 791, column: 10, scope: !3651)
!3674 = !DILocation(line: 804, column: 37, scope: !3660, inlinedAt: !3673)
!3675 = !DILocation(line: 805, column: 21, scope: !3660, inlinedAt: !3673)
!3676 = !DILocation(line: 807, column: 18, scope: !3660, inlinedAt: !3673)
!3677 = !DILocation(line: 807, column: 24, scope: !3660, inlinedAt: !3673)
!3678 = !DILocation(line: 808, column: 72, scope: !3660, inlinedAt: !3673)
!3679 = !DILocation(line: 809, column: 56, scope: !3660, inlinedAt: !3673)
!3680 = !DILocation(line: 810, column: 49, scope: !3660, inlinedAt: !3673)
!3681 = !DILocation(line: 811, column: 49, scope: !3660, inlinedAt: !3673)
!3682 = !DILocation(line: 808, column: 20, scope: !3660, inlinedAt: !3673)
!3683 = !DILocation(line: 811, column: 62, scope: !3660, inlinedAt: !3673)
!3684 = !DILocation(line: 812, column: 15, scope: !3660, inlinedAt: !3673)
!3685 = !DILocation(line: 813, column: 60, scope: !3660, inlinedAt: !3673)
!3686 = !DILocation(line: 815, column: 32, scope: !3660, inlinedAt: !3673)
!3687 = !DILocation(line: 815, column: 47, scope: !3660, inlinedAt: !3673)
!3688 = !DILocation(line: 813, column: 3, scope: !3660, inlinedAt: !3673)
!3689 = !DILocation(line: 816, column: 9, scope: !3660, inlinedAt: !3673)
!3690 = !DILocation(line: 791, column: 3, scope: !3651)
!3691 = !DILocation(line: 0, scope: !3660)
!3692 = !DILocation(line: 804, column: 37, scope: !3660)
!3693 = !DILocation(line: 805, column: 21, scope: !3660)
!3694 = !DILocation(line: 807, column: 18, scope: !3660)
!3695 = !DILocation(line: 807, column: 27, scope: !3660)
!3696 = !DILocation(line: 807, column: 24, scope: !3660)
!3697 = !DILocation(line: 808, column: 72, scope: !3660)
!3698 = !DILocation(line: 809, column: 56, scope: !3660)
!3699 = !DILocation(line: 810, column: 49, scope: !3660)
!3700 = !DILocation(line: 811, column: 49, scope: !3660)
!3701 = !DILocation(line: 808, column: 20, scope: !3660)
!3702 = !DILocation(line: 811, column: 62, scope: !3660)
!3703 = !DILocation(line: 812, column: 15, scope: !3660)
!3704 = !DILocation(line: 813, column: 60, scope: !3660)
!3705 = !DILocation(line: 815, column: 32, scope: !3660)
!3706 = !DILocation(line: 815, column: 47, scope: !3660)
!3707 = !DILocation(line: 813, column: 3, scope: !3660)
!3708 = !DILocation(line: 816, column: 9, scope: !3660)
!3709 = !DILocation(line: 817, column: 7, scope: !3660)
!3710 = !DILocation(line: 818, column: 11, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3660, file: !627, line: 817, column: 7)
!3712 = !{!1447, !1447, i64 0}
!3713 = !DILocation(line: 818, column: 5, scope: !3711)
!3714 = !DILocation(line: 819, column: 3, scope: !3660)
!3715 = distinct !DISubprogram(name: "quotearg_free", scope: !627, file: !627, line: 837, type: !582, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3716)
!3716 = !{!3717, !3718}
!3717 = !DILocalVariable(name: "sv", scope: !3715, file: !627, line: 839, type: !711)
!3718 = !DILocalVariable(name: "i", scope: !3719, file: !627, line: 840, type: !93)
!3719 = distinct !DILexicalBlock(scope: !3715, file: !627, line: 840, column: 3)
!3720 = !DILocation(line: 839, column: 24, scope: !3715)
!3721 = !DILocation(line: 0, scope: !3715)
!3722 = !DILocation(line: 0, scope: !3719)
!3723 = !DILocation(line: 840, column: 21, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3719, file: !627, line: 840, column: 3)
!3725 = !DILocation(line: 840, column: 3, scope: !3719)
!3726 = !DILocation(line: 842, column: 13, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3715, file: !627, line: 842, column: 7)
!3728 = !{!3729, !956, i64 8}
!3729 = !{!"slotvec", !1447, i64 0, !956, i64 8}
!3730 = !DILocation(line: 842, column: 17, scope: !3727)
!3731 = !DILocation(line: 842, column: 7, scope: !3715)
!3732 = !DILocation(line: 841, column: 17, scope: !3724)
!3733 = !DILocation(line: 841, column: 5, scope: !3724)
!3734 = !DILocation(line: 840, column: 32, scope: !3724)
!3735 = distinct !{!3735, !3725, !3736, !1075}
!3736 = !DILocation(line: 841, column: 20, scope: !3719)
!3737 = !DILocation(line: 844, column: 7, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3727, file: !627, line: 843, column: 5)
!3739 = !DILocation(line: 845, column: 21, scope: !3738)
!3740 = !{!3729, !1447, i64 0}
!3741 = !DILocation(line: 846, column: 20, scope: !3738)
!3742 = !DILocation(line: 847, column: 5, scope: !3738)
!3743 = !DILocation(line: 848, column: 10, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3715, file: !627, line: 848, column: 7)
!3745 = !DILocation(line: 848, column: 7, scope: !3715)
!3746 = !DILocation(line: 850, column: 7, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3744, file: !627, line: 849, column: 5)
!3748 = !DILocation(line: 851, column: 15, scope: !3747)
!3749 = !DILocation(line: 852, column: 5, scope: !3747)
!3750 = !DILocation(line: 853, column: 10, scope: !3715)
!3751 = !DILocation(line: 854, column: 1, scope: !3715)
!3752 = !DISubprogram(name: "free", scope: !2939, file: !2939, line: 786, type: !3753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !145}
!3755 = distinct !DISubprogram(name: "quotearg_n", scope: !627, file: !627, line: 919, type: !1142, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3756)
!3756 = !{!3757, !3758}
!3757 = !DILocalVariable(name: "n", arg: 1, scope: !3755, file: !627, line: 919, type: !93)
!3758 = !DILocalVariable(name: "arg", arg: 2, scope: !3755, file: !627, line: 919, type: !150)
!3759 = !DILocation(line: 0, scope: !3755)
!3760 = !DILocation(line: 921, column: 10, scope: !3755)
!3761 = !DILocation(line: 921, column: 3, scope: !3755)
!3762 = distinct !DISubprogram(name: "quotearg_n_options", scope: !627, file: !627, line: 866, type: !3763, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!144, !93, !150, !147, !2984}
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3776, !3777, !3779, !3780, !3781}
!3766 = !DILocalVariable(name: "n", arg: 1, scope: !3762, file: !627, line: 866, type: !93)
!3767 = !DILocalVariable(name: "arg", arg: 2, scope: !3762, file: !627, line: 866, type: !150)
!3768 = !DILocalVariable(name: "argsize", arg: 3, scope: !3762, file: !627, line: 866, type: !147)
!3769 = !DILocalVariable(name: "options", arg: 4, scope: !3762, file: !627, line: 867, type: !2984)
!3770 = !DILocalVariable(name: "saved_errno", scope: !3762, file: !627, line: 869, type: !93)
!3771 = !DILocalVariable(name: "sv", scope: !3762, file: !627, line: 871, type: !711)
!3772 = !DILocalVariable(name: "nslots_max", scope: !3762, file: !627, line: 873, type: !93)
!3773 = !DILocalVariable(name: "preallocated", scope: !3774, file: !627, line: 879, type: !195)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !627, line: 878, column: 5)
!3775 = distinct !DILexicalBlock(scope: !3762, file: !627, line: 877, column: 7)
!3776 = !DILocalVariable(name: "new_nslots", scope: !3774, file: !627, line: 880, type: !888)
!3777 = !DILocalVariable(name: "size", scope: !3778, file: !627, line: 891, type: !147)
!3778 = distinct !DILexicalBlock(scope: !3762, file: !627, line: 890, column: 3)
!3779 = !DILocalVariable(name: "val", scope: !3778, file: !627, line: 892, type: !144)
!3780 = !DILocalVariable(name: "flags", scope: !3778, file: !627, line: 894, type: !93)
!3781 = !DILocalVariable(name: "qsize", scope: !3778, file: !627, line: 895, type: !147)
!3782 = !DILocation(line: 0, scope: !3762)
!3783 = !DILocation(line: 869, column: 21, scope: !3762)
!3784 = !DILocation(line: 871, column: 24, scope: !3762)
!3785 = !DILocation(line: 874, column: 17, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3762, file: !627, line: 874, column: 7)
!3787 = !DILocation(line: 875, column: 5, scope: !3786)
!3788 = !DILocation(line: 877, column: 7, scope: !3775)
!3789 = !DILocation(line: 877, column: 14, scope: !3775)
!3790 = !DILocation(line: 877, column: 7, scope: !3762)
!3791 = !DILocation(line: 879, column: 31, scope: !3774)
!3792 = !DILocation(line: 0, scope: !3774)
!3793 = !DILocation(line: 880, column: 7, scope: !3774)
!3794 = !DILocation(line: 880, column: 26, scope: !3774)
!3795 = !DILocation(line: 880, column: 13, scope: !3774)
!3796 = !DILocation(line: 882, column: 31, scope: !3774)
!3797 = !DILocation(line: 883, column: 33, scope: !3774)
!3798 = !DILocation(line: 883, column: 42, scope: !3774)
!3799 = !DILocation(line: 883, column: 31, scope: !3774)
!3800 = !DILocation(line: 882, column: 22, scope: !3774)
!3801 = !DILocation(line: 882, column: 15, scope: !3774)
!3802 = !DILocation(line: 884, column: 11, scope: !3774)
!3803 = !DILocation(line: 885, column: 15, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3774, file: !627, line: 884, column: 11)
!3805 = !{i64 0, i64 8, !3712, i64 8, i64 8, !955}
!3806 = !DILocation(line: 885, column: 9, scope: !3804)
!3807 = !DILocation(line: 886, column: 20, scope: !3774)
!3808 = !DILocation(line: 886, column: 18, scope: !3774)
!3809 = !DILocation(line: 886, column: 32, scope: !3774)
!3810 = !DILocation(line: 886, column: 43, scope: !3774)
!3811 = !DILocation(line: 886, column: 53, scope: !3774)
!3812 = !DILocation(line: 0, scope: !3194, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 886, column: 7, scope: !3774)
!3814 = !DILocation(line: 59, column: 10, scope: !3194, inlinedAt: !3813)
!3815 = !DILocation(line: 887, column: 16, scope: !3774)
!3816 = !DILocation(line: 887, column: 14, scope: !3774)
!3817 = !DILocation(line: 888, column: 5, scope: !3775)
!3818 = !DILocation(line: 888, column: 5, scope: !3774)
!3819 = !DILocation(line: 891, column: 19, scope: !3778)
!3820 = !DILocation(line: 891, column: 25, scope: !3778)
!3821 = !DILocation(line: 0, scope: !3778)
!3822 = !DILocation(line: 892, column: 23, scope: !3778)
!3823 = !DILocation(line: 894, column: 26, scope: !3778)
!3824 = !DILocation(line: 894, column: 32, scope: !3778)
!3825 = !DILocation(line: 896, column: 55, scope: !3778)
!3826 = !DILocation(line: 897, column: 55, scope: !3778)
!3827 = !DILocation(line: 898, column: 55, scope: !3778)
!3828 = !DILocation(line: 899, column: 55, scope: !3778)
!3829 = !DILocation(line: 895, column: 20, scope: !3778)
!3830 = !DILocation(line: 901, column: 14, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3778, file: !627, line: 901, column: 9)
!3832 = !DILocation(line: 901, column: 9, scope: !3778)
!3833 = !DILocation(line: 903, column: 35, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3831, file: !627, line: 902, column: 7)
!3835 = !DILocation(line: 903, column: 20, scope: !3834)
!3836 = !DILocation(line: 904, column: 17, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3834, file: !627, line: 904, column: 13)
!3838 = !DILocation(line: 904, column: 13, scope: !3834)
!3839 = !DILocation(line: 905, column: 11, scope: !3837)
!3840 = !DILocation(line: 906, column: 27, scope: !3834)
!3841 = !DILocation(line: 906, column: 19, scope: !3834)
!3842 = !DILocation(line: 907, column: 69, scope: !3834)
!3843 = !DILocation(line: 909, column: 44, scope: !3834)
!3844 = !DILocation(line: 910, column: 44, scope: !3834)
!3845 = !DILocation(line: 907, column: 9, scope: !3834)
!3846 = !DILocation(line: 911, column: 7, scope: !3834)
!3847 = !DILocation(line: 913, column: 11, scope: !3778)
!3848 = !DILocation(line: 914, column: 5, scope: !3778)
!3849 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !627, file: !627, line: 925, type: !3850, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!144, !93, !150, !147}
!3852 = !{!3853, !3854, !3855}
!3853 = !DILocalVariable(name: "n", arg: 1, scope: !3849, file: !627, line: 925, type: !93)
!3854 = !DILocalVariable(name: "arg", arg: 2, scope: !3849, file: !627, line: 925, type: !150)
!3855 = !DILocalVariable(name: "argsize", arg: 3, scope: !3849, file: !627, line: 925, type: !147)
!3856 = !DILocation(line: 0, scope: !3849)
!3857 = !DILocation(line: 927, column: 10, scope: !3849)
!3858 = !DILocation(line: 927, column: 3, scope: !3849)
!3859 = distinct !DISubprogram(name: "quotearg", scope: !627, file: !627, line: 931, type: !1151, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3860)
!3860 = !{!3861}
!3861 = !DILocalVariable(name: "arg", arg: 1, scope: !3859, file: !627, line: 931, type: !150)
!3862 = !DILocation(line: 0, scope: !3859)
!3863 = !DILocation(line: 0, scope: !3755, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 933, column: 10, scope: !3859)
!3865 = !DILocation(line: 921, column: 10, scope: !3755, inlinedAt: !3864)
!3866 = !DILocation(line: 933, column: 3, scope: !3859)
!3867 = distinct !DISubprogram(name: "quotearg_mem", scope: !627, file: !627, line: 937, type: !3868, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!144, !150, !147}
!3870 = !{!3871, !3872}
!3871 = !DILocalVariable(name: "arg", arg: 1, scope: !3867, file: !627, line: 937, type: !150)
!3872 = !DILocalVariable(name: "argsize", arg: 2, scope: !3867, file: !627, line: 937, type: !147)
!3873 = !DILocation(line: 0, scope: !3867)
!3874 = !DILocation(line: 0, scope: !3849, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 939, column: 10, scope: !3867)
!3876 = !DILocation(line: 927, column: 10, scope: !3849, inlinedAt: !3875)
!3877 = !DILocation(line: 939, column: 3, scope: !3867)
!3878 = distinct !DISubprogram(name: "quotearg_n_style", scope: !627, file: !627, line: 943, type: !3879, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3881)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!144, !93, !105, !150}
!3881 = !{!3882, !3883, !3884, !3885}
!3882 = !DILocalVariable(name: "n", arg: 1, scope: !3878, file: !627, line: 943, type: !93)
!3883 = !DILocalVariable(name: "s", arg: 2, scope: !3878, file: !627, line: 943, type: !105)
!3884 = !DILocalVariable(name: "arg", arg: 3, scope: !3878, file: !627, line: 943, type: !150)
!3885 = !DILocalVariable(name: "o", scope: !3878, file: !627, line: 945, type: !2985)
!3886 = !DILocation(line: 0, scope: !3878)
!3887 = !DILocation(line: 945, column: 3, scope: !3878)
!3888 = !DILocation(line: 945, column: 32, scope: !3878)
!3889 = !{!3890}
!3890 = distinct !{!3890, !3891, !"quoting_options_from_style: argument 0"}
!3891 = distinct !{!3891, !"quoting_options_from_style"}
!3892 = !DILocation(line: 945, column: 36, scope: !3878)
!3893 = !DILocalVariable(name: "style", arg: 1, scope: !3894, file: !627, line: 183, type: !105)
!3894 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !627, file: !627, line: 183, type: !3895, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!663, !105}
!3897 = !{!3893, !3898}
!3898 = !DILocalVariable(name: "o", scope: !3894, file: !627, line: 185, type: !663)
!3899 = !DILocation(line: 0, scope: !3894, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 945, column: 36, scope: !3878)
!3901 = !DILocation(line: 185, column: 26, scope: !3894, inlinedAt: !3900)
!3902 = !DILocation(line: 186, column: 13, scope: !3903, inlinedAt: !3900)
!3903 = distinct !DILexicalBlock(scope: !3894, file: !627, line: 186, column: 7)
!3904 = !DILocation(line: 186, column: 7, scope: !3894, inlinedAt: !3900)
!3905 = !DILocation(line: 187, column: 5, scope: !3903, inlinedAt: !3900)
!3906 = !DILocation(line: 188, column: 11, scope: !3894, inlinedAt: !3900)
!3907 = !DILocation(line: 946, column: 10, scope: !3878)
!3908 = !DILocation(line: 947, column: 1, scope: !3878)
!3909 = !DILocation(line: 946, column: 3, scope: !3878)
!3910 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !627, file: !627, line: 950, type: !3911, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!144, !93, !105, !150, !147}
!3913 = !{!3914, !3915, !3916, !3917, !3918}
!3914 = !DILocalVariable(name: "n", arg: 1, scope: !3910, file: !627, line: 950, type: !93)
!3915 = !DILocalVariable(name: "s", arg: 2, scope: !3910, file: !627, line: 950, type: !105)
!3916 = !DILocalVariable(name: "arg", arg: 3, scope: !3910, file: !627, line: 951, type: !150)
!3917 = !DILocalVariable(name: "argsize", arg: 4, scope: !3910, file: !627, line: 951, type: !147)
!3918 = !DILocalVariable(name: "o", scope: !3910, file: !627, line: 953, type: !2985)
!3919 = !DILocation(line: 0, scope: !3910)
!3920 = !DILocation(line: 953, column: 3, scope: !3910)
!3921 = !DILocation(line: 953, column: 32, scope: !3910)
!3922 = !{!3923}
!3923 = distinct !{!3923, !3924, !"quoting_options_from_style: argument 0"}
!3924 = distinct !{!3924, !"quoting_options_from_style"}
!3925 = !DILocation(line: 953, column: 36, scope: !3910)
!3926 = !DILocation(line: 0, scope: !3894, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 953, column: 36, scope: !3910)
!3928 = !DILocation(line: 185, column: 26, scope: !3894, inlinedAt: !3927)
!3929 = !DILocation(line: 186, column: 13, scope: !3903, inlinedAt: !3927)
!3930 = !DILocation(line: 186, column: 7, scope: !3894, inlinedAt: !3927)
!3931 = !DILocation(line: 187, column: 5, scope: !3903, inlinedAt: !3927)
!3932 = !DILocation(line: 188, column: 11, scope: !3894, inlinedAt: !3927)
!3933 = !DILocation(line: 954, column: 10, scope: !3910)
!3934 = !DILocation(line: 955, column: 1, scope: !3910)
!3935 = !DILocation(line: 954, column: 3, scope: !3910)
!3936 = distinct !DISubprogram(name: "quotearg_style", scope: !627, file: !627, line: 958, type: !3937, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!144, !105, !150}
!3939 = !{!3940, !3941}
!3940 = !DILocalVariable(name: "s", arg: 1, scope: !3936, file: !627, line: 958, type: !105)
!3941 = !DILocalVariable(name: "arg", arg: 2, scope: !3936, file: !627, line: 958, type: !150)
!3942 = !DILocation(line: 0, scope: !3936)
!3943 = !DILocation(line: 0, scope: !3878, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 960, column: 10, scope: !3936)
!3945 = !DILocation(line: 945, column: 3, scope: !3878, inlinedAt: !3944)
!3946 = !DILocation(line: 945, column: 32, scope: !3878, inlinedAt: !3944)
!3947 = !{!3948}
!3948 = distinct !{!3948, !3949, !"quoting_options_from_style: argument 0"}
!3949 = distinct !{!3949, !"quoting_options_from_style"}
!3950 = !DILocation(line: 945, column: 36, scope: !3878, inlinedAt: !3944)
!3951 = !DILocation(line: 0, scope: !3894, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 945, column: 36, scope: !3878, inlinedAt: !3944)
!3953 = !DILocation(line: 185, column: 26, scope: !3894, inlinedAt: !3952)
!3954 = !DILocation(line: 186, column: 13, scope: !3903, inlinedAt: !3952)
!3955 = !DILocation(line: 186, column: 7, scope: !3894, inlinedAt: !3952)
!3956 = !DILocation(line: 187, column: 5, scope: !3903, inlinedAt: !3952)
!3957 = !DILocation(line: 188, column: 11, scope: !3894, inlinedAt: !3952)
!3958 = !DILocation(line: 946, column: 10, scope: !3878, inlinedAt: !3944)
!3959 = !DILocation(line: 947, column: 1, scope: !3878, inlinedAt: !3944)
!3960 = !DILocation(line: 960, column: 3, scope: !3936)
!3961 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !627, file: !627, line: 964, type: !3962, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!144, !105, !150, !147}
!3964 = !{!3965, !3966, !3967}
!3965 = !DILocalVariable(name: "s", arg: 1, scope: !3961, file: !627, line: 964, type: !105)
!3966 = !DILocalVariable(name: "arg", arg: 2, scope: !3961, file: !627, line: 964, type: !150)
!3967 = !DILocalVariable(name: "argsize", arg: 3, scope: !3961, file: !627, line: 964, type: !147)
!3968 = !DILocation(line: 0, scope: !3961)
!3969 = !DILocation(line: 0, scope: !3910, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 966, column: 10, scope: !3961)
!3971 = !DILocation(line: 953, column: 3, scope: !3910, inlinedAt: !3970)
!3972 = !DILocation(line: 953, column: 32, scope: !3910, inlinedAt: !3970)
!3973 = !{!3974}
!3974 = distinct !{!3974, !3975, !"quoting_options_from_style: argument 0"}
!3975 = distinct !{!3975, !"quoting_options_from_style"}
!3976 = !DILocation(line: 953, column: 36, scope: !3910, inlinedAt: !3970)
!3977 = !DILocation(line: 0, scope: !3894, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 953, column: 36, scope: !3910, inlinedAt: !3970)
!3979 = !DILocation(line: 185, column: 26, scope: !3894, inlinedAt: !3978)
!3980 = !DILocation(line: 186, column: 13, scope: !3903, inlinedAt: !3978)
!3981 = !DILocation(line: 186, column: 7, scope: !3894, inlinedAt: !3978)
!3982 = !DILocation(line: 187, column: 5, scope: !3903, inlinedAt: !3978)
!3983 = !DILocation(line: 188, column: 11, scope: !3894, inlinedAt: !3978)
!3984 = !DILocation(line: 954, column: 10, scope: !3910, inlinedAt: !3970)
!3985 = !DILocation(line: 955, column: 1, scope: !3910, inlinedAt: !3970)
!3986 = !DILocation(line: 966, column: 3, scope: !3961)
!3987 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !627, file: !627, line: 970, type: !3988, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!144, !150, !147, !4}
!3990 = !{!3991, !3992, !3993, !3994}
!3991 = !DILocalVariable(name: "arg", arg: 1, scope: !3987, file: !627, line: 970, type: !150)
!3992 = !DILocalVariable(name: "argsize", arg: 2, scope: !3987, file: !627, line: 970, type: !147)
!3993 = !DILocalVariable(name: "ch", arg: 3, scope: !3987, file: !627, line: 970, type: !4)
!3994 = !DILocalVariable(name: "options", scope: !3987, file: !627, line: 972, type: !663)
!3995 = !DILocation(line: 0, scope: !3987)
!3996 = !DILocation(line: 972, column: 3, scope: !3987)
!3997 = !DILocation(line: 972, column: 26, scope: !3987)
!3998 = !DILocation(line: 973, column: 13, scope: !3987)
!3999 = !{i64 0, i64 4, !1037, i64 4, i64 4, !1028, i64 8, i64 32, !1037, i64 40, i64 8, !955, i64 48, i64 8, !955}
!4000 = !DILocation(line: 0, scope: !3004, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 974, column: 3, scope: !3987)
!4002 = !DILocation(line: 147, column: 41, scope: !3004, inlinedAt: !4001)
!4003 = !DILocation(line: 147, column: 62, scope: !3004, inlinedAt: !4001)
!4004 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4001)
!4005 = !DILocation(line: 148, column: 15, scope: !3004, inlinedAt: !4001)
!4006 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4001)
!4007 = !DILocation(line: 149, column: 24, scope: !3004, inlinedAt: !4001)
!4008 = !DILocation(line: 150, column: 19, scope: !3004, inlinedAt: !4001)
!4009 = !DILocation(line: 150, column: 24, scope: !3004, inlinedAt: !4001)
!4010 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4001)
!4011 = !DILocation(line: 975, column: 10, scope: !3987)
!4012 = !DILocation(line: 976, column: 1, scope: !3987)
!4013 = !DILocation(line: 975, column: 3, scope: !3987)
!4014 = distinct !DISubprogram(name: "quotearg_char", scope: !627, file: !627, line: 979, type: !4015, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4017)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!144, !150, !4}
!4017 = !{!4018, !4019}
!4018 = !DILocalVariable(name: "arg", arg: 1, scope: !4014, file: !627, line: 979, type: !150)
!4019 = !DILocalVariable(name: "ch", arg: 2, scope: !4014, file: !627, line: 979, type: !4)
!4020 = !DILocation(line: 0, scope: !4014)
!4021 = !DILocation(line: 0, scope: !3987, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 981, column: 10, scope: !4014)
!4023 = !DILocation(line: 972, column: 3, scope: !3987, inlinedAt: !4022)
!4024 = !DILocation(line: 972, column: 26, scope: !3987, inlinedAt: !4022)
!4025 = !DILocation(line: 973, column: 13, scope: !3987, inlinedAt: !4022)
!4026 = !DILocation(line: 0, scope: !3004, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 974, column: 3, scope: !3987, inlinedAt: !4022)
!4028 = !DILocation(line: 147, column: 41, scope: !3004, inlinedAt: !4027)
!4029 = !DILocation(line: 147, column: 62, scope: !3004, inlinedAt: !4027)
!4030 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4027)
!4031 = !DILocation(line: 148, column: 15, scope: !3004, inlinedAt: !4027)
!4032 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4027)
!4033 = !DILocation(line: 149, column: 24, scope: !3004, inlinedAt: !4027)
!4034 = !DILocation(line: 150, column: 19, scope: !3004, inlinedAt: !4027)
!4035 = !DILocation(line: 150, column: 24, scope: !3004, inlinedAt: !4027)
!4036 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4027)
!4037 = !DILocation(line: 975, column: 10, scope: !3987, inlinedAt: !4022)
!4038 = !DILocation(line: 976, column: 1, scope: !3987, inlinedAt: !4022)
!4039 = !DILocation(line: 981, column: 3, scope: !4014)
!4040 = distinct !DISubprogram(name: "quotearg_colon", scope: !627, file: !627, line: 985, type: !1151, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4041)
!4041 = !{!4042}
!4042 = !DILocalVariable(name: "arg", arg: 1, scope: !4040, file: !627, line: 985, type: !150)
!4043 = !DILocation(line: 0, scope: !4040)
!4044 = !DILocation(line: 0, scope: !4014, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 987, column: 10, scope: !4040)
!4046 = !DILocation(line: 0, scope: !3987, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 981, column: 10, scope: !4014, inlinedAt: !4045)
!4048 = !DILocation(line: 972, column: 3, scope: !3987, inlinedAt: !4047)
!4049 = !DILocation(line: 972, column: 26, scope: !3987, inlinedAt: !4047)
!4050 = !DILocation(line: 973, column: 13, scope: !3987, inlinedAt: !4047)
!4051 = !DILocation(line: 0, scope: !3004, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 974, column: 3, scope: !3987, inlinedAt: !4047)
!4053 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4052)
!4054 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4052)
!4055 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4052)
!4056 = !DILocation(line: 975, column: 10, scope: !3987, inlinedAt: !4047)
!4057 = !DILocation(line: 976, column: 1, scope: !3987, inlinedAt: !4047)
!4058 = !DILocation(line: 987, column: 3, scope: !4040)
!4059 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !627, file: !627, line: 991, type: !3868, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4060)
!4060 = !{!4061, !4062}
!4061 = !DILocalVariable(name: "arg", arg: 1, scope: !4059, file: !627, line: 991, type: !150)
!4062 = !DILocalVariable(name: "argsize", arg: 2, scope: !4059, file: !627, line: 991, type: !147)
!4063 = !DILocation(line: 0, scope: !4059)
!4064 = !DILocation(line: 0, scope: !3987, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 993, column: 10, scope: !4059)
!4066 = !DILocation(line: 972, column: 3, scope: !3987, inlinedAt: !4065)
!4067 = !DILocation(line: 972, column: 26, scope: !3987, inlinedAt: !4065)
!4068 = !DILocation(line: 973, column: 13, scope: !3987, inlinedAt: !4065)
!4069 = !DILocation(line: 0, scope: !3004, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 974, column: 3, scope: !3987, inlinedAt: !4065)
!4071 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4070)
!4072 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4070)
!4073 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4070)
!4074 = !DILocation(line: 975, column: 10, scope: !3987, inlinedAt: !4065)
!4075 = !DILocation(line: 976, column: 1, scope: !3987, inlinedAt: !4065)
!4076 = !DILocation(line: 993, column: 3, scope: !4059)
!4077 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !627, file: !627, line: 997, type: !3879, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4078)
!4078 = !{!4079, !4080, !4081, !4082}
!4079 = !DILocalVariable(name: "n", arg: 1, scope: !4077, file: !627, line: 997, type: !93)
!4080 = !DILocalVariable(name: "s", arg: 2, scope: !4077, file: !627, line: 997, type: !105)
!4081 = !DILocalVariable(name: "arg", arg: 3, scope: !4077, file: !627, line: 997, type: !150)
!4082 = !DILocalVariable(name: "options", scope: !4077, file: !627, line: 999, type: !663)
!4083 = !DILocation(line: 185, column: 26, scope: !3894, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 1000, column: 13, scope: !4077)
!4085 = !DILocation(line: 0, scope: !4077)
!4086 = !DILocation(line: 999, column: 3, scope: !4077)
!4087 = !DILocation(line: 999, column: 26, scope: !4077)
!4088 = !DILocation(line: 0, scope: !3894, inlinedAt: !4084)
!4089 = !DILocation(line: 186, column: 13, scope: !3903, inlinedAt: !4084)
!4090 = !DILocation(line: 186, column: 7, scope: !3894, inlinedAt: !4084)
!4091 = !DILocation(line: 187, column: 5, scope: !3903, inlinedAt: !4084)
!4092 = !{!4093}
!4093 = distinct !{!4093, !4094, !"quoting_options_from_style: argument 0"}
!4094 = distinct !{!4094, !"quoting_options_from_style"}
!4095 = !DILocation(line: 1000, column: 13, scope: !4077)
!4096 = !DILocation(line: 0, scope: !3004, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 1001, column: 3, scope: !4077)
!4098 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4097)
!4099 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4097)
!4100 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4097)
!4101 = !DILocation(line: 1002, column: 10, scope: !4077)
!4102 = !DILocation(line: 1003, column: 1, scope: !4077)
!4103 = !DILocation(line: 1002, column: 3, scope: !4077)
!4104 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !627, file: !627, line: 1006, type: !4105, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4107)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!144, !93, !150, !150, !150}
!4107 = !{!4108, !4109, !4110, !4111}
!4108 = !DILocalVariable(name: "n", arg: 1, scope: !4104, file: !627, line: 1006, type: !93)
!4109 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4104, file: !627, line: 1006, type: !150)
!4110 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4104, file: !627, line: 1007, type: !150)
!4111 = !DILocalVariable(name: "arg", arg: 4, scope: !4104, file: !627, line: 1007, type: !150)
!4112 = !DILocation(line: 0, scope: !4104)
!4113 = !DILocalVariable(name: "n", arg: 1, scope: !4114, file: !627, line: 1014, type: !93)
!4114 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !627, file: !627, line: 1014, type: !4115, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!144, !93, !150, !150, !150, !147}
!4117 = !{!4113, !4118, !4119, !4120, !4121, !4122}
!4118 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4114, file: !627, line: 1014, type: !150)
!4119 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4114, file: !627, line: 1015, type: !150)
!4120 = !DILocalVariable(name: "arg", arg: 4, scope: !4114, file: !627, line: 1016, type: !150)
!4121 = !DILocalVariable(name: "argsize", arg: 5, scope: !4114, file: !627, line: 1016, type: !147)
!4122 = !DILocalVariable(name: "o", scope: !4114, file: !627, line: 1018, type: !663)
!4123 = !DILocation(line: 0, scope: !4114, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 1009, column: 10, scope: !4104)
!4125 = !DILocation(line: 1018, column: 3, scope: !4114, inlinedAt: !4124)
!4126 = !DILocation(line: 1018, column: 26, scope: !4114, inlinedAt: !4124)
!4127 = !DILocation(line: 1018, column: 30, scope: !4114, inlinedAt: !4124)
!4128 = !DILocation(line: 0, scope: !3044, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 1019, column: 3, scope: !4114, inlinedAt: !4124)
!4130 = !DILocation(line: 174, column: 12, scope: !3044, inlinedAt: !4129)
!4131 = !DILocation(line: 175, column: 8, scope: !3057, inlinedAt: !4129)
!4132 = !DILocation(line: 175, column: 19, scope: !3057, inlinedAt: !4129)
!4133 = !DILocation(line: 176, column: 5, scope: !3057, inlinedAt: !4129)
!4134 = !DILocation(line: 177, column: 6, scope: !3044, inlinedAt: !4129)
!4135 = !DILocation(line: 177, column: 17, scope: !3044, inlinedAt: !4129)
!4136 = !DILocation(line: 178, column: 6, scope: !3044, inlinedAt: !4129)
!4137 = !DILocation(line: 178, column: 18, scope: !3044, inlinedAt: !4129)
!4138 = !DILocation(line: 1020, column: 10, scope: !4114, inlinedAt: !4124)
!4139 = !DILocation(line: 1021, column: 1, scope: !4114, inlinedAt: !4124)
!4140 = !DILocation(line: 1009, column: 3, scope: !4104)
!4141 = !DILocation(line: 0, scope: !4114)
!4142 = !DILocation(line: 1018, column: 3, scope: !4114)
!4143 = !DILocation(line: 1018, column: 26, scope: !4114)
!4144 = !DILocation(line: 1018, column: 30, scope: !4114)
!4145 = !DILocation(line: 0, scope: !3044, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 1019, column: 3, scope: !4114)
!4147 = !DILocation(line: 174, column: 12, scope: !3044, inlinedAt: !4146)
!4148 = !DILocation(line: 175, column: 8, scope: !3057, inlinedAt: !4146)
!4149 = !DILocation(line: 175, column: 19, scope: !3057, inlinedAt: !4146)
!4150 = !DILocation(line: 176, column: 5, scope: !3057, inlinedAt: !4146)
!4151 = !DILocation(line: 177, column: 6, scope: !3044, inlinedAt: !4146)
!4152 = !DILocation(line: 177, column: 17, scope: !3044, inlinedAt: !4146)
!4153 = !DILocation(line: 178, column: 6, scope: !3044, inlinedAt: !4146)
!4154 = !DILocation(line: 178, column: 18, scope: !3044, inlinedAt: !4146)
!4155 = !DILocation(line: 1020, column: 10, scope: !4114)
!4156 = !DILocation(line: 1021, column: 1, scope: !4114)
!4157 = !DILocation(line: 1020, column: 3, scope: !4114)
!4158 = distinct !DISubprogram(name: "quotearg_custom", scope: !627, file: !627, line: 1024, type: !4159, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!144, !150, !150, !150}
!4161 = !{!4162, !4163, !4164}
!4162 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4158, file: !627, line: 1024, type: !150)
!4163 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4158, file: !627, line: 1024, type: !150)
!4164 = !DILocalVariable(name: "arg", arg: 3, scope: !4158, file: !627, line: 1025, type: !150)
!4165 = !DILocation(line: 0, scope: !4158)
!4166 = !DILocation(line: 0, scope: !4104, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 1027, column: 10, scope: !4158)
!4168 = !DILocation(line: 0, scope: !4114, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 1009, column: 10, scope: !4104, inlinedAt: !4167)
!4170 = !DILocation(line: 1018, column: 3, scope: !4114, inlinedAt: !4169)
!4171 = !DILocation(line: 1018, column: 26, scope: !4114, inlinedAt: !4169)
!4172 = !DILocation(line: 1018, column: 30, scope: !4114, inlinedAt: !4169)
!4173 = !DILocation(line: 0, scope: !3044, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 1019, column: 3, scope: !4114, inlinedAt: !4169)
!4175 = !DILocation(line: 174, column: 12, scope: !3044, inlinedAt: !4174)
!4176 = !DILocation(line: 175, column: 8, scope: !3057, inlinedAt: !4174)
!4177 = !DILocation(line: 175, column: 19, scope: !3057, inlinedAt: !4174)
!4178 = !DILocation(line: 176, column: 5, scope: !3057, inlinedAt: !4174)
!4179 = !DILocation(line: 177, column: 6, scope: !3044, inlinedAt: !4174)
!4180 = !DILocation(line: 177, column: 17, scope: !3044, inlinedAt: !4174)
!4181 = !DILocation(line: 178, column: 6, scope: !3044, inlinedAt: !4174)
!4182 = !DILocation(line: 178, column: 18, scope: !3044, inlinedAt: !4174)
!4183 = !DILocation(line: 1020, column: 10, scope: !4114, inlinedAt: !4169)
!4184 = !DILocation(line: 1021, column: 1, scope: !4114, inlinedAt: !4169)
!4185 = !DILocation(line: 1027, column: 3, scope: !4158)
!4186 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !627, file: !627, line: 1031, type: !4187, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!144, !150, !150, !150, !147}
!4189 = !{!4190, !4191, !4192, !4193}
!4190 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4186, file: !627, line: 1031, type: !150)
!4191 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4186, file: !627, line: 1031, type: !150)
!4192 = !DILocalVariable(name: "arg", arg: 3, scope: !4186, file: !627, line: 1032, type: !150)
!4193 = !DILocalVariable(name: "argsize", arg: 4, scope: !4186, file: !627, line: 1032, type: !147)
!4194 = !DILocation(line: 0, scope: !4186)
!4195 = !DILocation(line: 0, scope: !4114, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 1034, column: 10, scope: !4186)
!4197 = !DILocation(line: 1018, column: 3, scope: !4114, inlinedAt: !4196)
!4198 = !DILocation(line: 1018, column: 26, scope: !4114, inlinedAt: !4196)
!4199 = !DILocation(line: 1018, column: 30, scope: !4114, inlinedAt: !4196)
!4200 = !DILocation(line: 0, scope: !3044, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 1019, column: 3, scope: !4114, inlinedAt: !4196)
!4202 = !DILocation(line: 174, column: 12, scope: !3044, inlinedAt: !4201)
!4203 = !DILocation(line: 175, column: 8, scope: !3057, inlinedAt: !4201)
!4204 = !DILocation(line: 175, column: 19, scope: !3057, inlinedAt: !4201)
!4205 = !DILocation(line: 176, column: 5, scope: !3057, inlinedAt: !4201)
!4206 = !DILocation(line: 177, column: 6, scope: !3044, inlinedAt: !4201)
!4207 = !DILocation(line: 177, column: 17, scope: !3044, inlinedAt: !4201)
!4208 = !DILocation(line: 178, column: 6, scope: !3044, inlinedAt: !4201)
!4209 = !DILocation(line: 178, column: 18, scope: !3044, inlinedAt: !4201)
!4210 = !DILocation(line: 1020, column: 10, scope: !4114, inlinedAt: !4196)
!4211 = !DILocation(line: 1021, column: 1, scope: !4114, inlinedAt: !4196)
!4212 = !DILocation(line: 1034, column: 3, scope: !4186)
!4213 = distinct !DISubprogram(name: "quote_n_mem", scope: !627, file: !627, line: 1049, type: !4214, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!150, !93, !150, !147}
!4216 = !{!4217, !4218, !4219}
!4217 = !DILocalVariable(name: "n", arg: 1, scope: !4213, file: !627, line: 1049, type: !93)
!4218 = !DILocalVariable(name: "arg", arg: 2, scope: !4213, file: !627, line: 1049, type: !150)
!4219 = !DILocalVariable(name: "argsize", arg: 3, scope: !4213, file: !627, line: 1049, type: !147)
!4220 = !DILocation(line: 0, scope: !4213)
!4221 = !DILocation(line: 1051, column: 10, scope: !4213)
!4222 = !DILocation(line: 1051, column: 3, scope: !4213)
!4223 = distinct !DISubprogram(name: "quote_mem", scope: !627, file: !627, line: 1055, type: !4224, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!150, !150, !147}
!4226 = !{!4227, !4228}
!4227 = !DILocalVariable(name: "arg", arg: 1, scope: !4223, file: !627, line: 1055, type: !150)
!4228 = !DILocalVariable(name: "argsize", arg: 2, scope: !4223, file: !627, line: 1055, type: !147)
!4229 = !DILocation(line: 0, scope: !4223)
!4230 = !DILocation(line: 0, scope: !4213, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 1057, column: 10, scope: !4223)
!4232 = !DILocation(line: 1051, column: 10, scope: !4213, inlinedAt: !4231)
!4233 = !DILocation(line: 1057, column: 3, scope: !4223)
!4234 = distinct !DISubprogram(name: "quote_n", scope: !627, file: !627, line: 1061, type: !4235, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!150, !93, !150}
!4237 = !{!4238, !4239}
!4238 = !DILocalVariable(name: "n", arg: 1, scope: !4234, file: !627, line: 1061, type: !93)
!4239 = !DILocalVariable(name: "arg", arg: 2, scope: !4234, file: !627, line: 1061, type: !150)
!4240 = !DILocation(line: 0, scope: !4234)
!4241 = !DILocation(line: 0, scope: !4213, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 1063, column: 10, scope: !4234)
!4243 = !DILocation(line: 1051, column: 10, scope: !4213, inlinedAt: !4242)
!4244 = !DILocation(line: 1063, column: 3, scope: !4234)
!4245 = distinct !DISubprogram(name: "quote", scope: !627, file: !627, line: 1067, type: !4246, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4248)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!150, !150}
!4248 = !{!4249}
!4249 = !DILocalVariable(name: "arg", arg: 1, scope: !4245, file: !627, line: 1067, type: !150)
!4250 = !DILocation(line: 0, scope: !4245)
!4251 = !DILocation(line: 0, scope: !4234, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 1069, column: 10, scope: !4245)
!4253 = !DILocation(line: 0, scope: !4213, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 1063, column: 10, scope: !4234, inlinedAt: !4252)
!4255 = !DILocation(line: 1051, column: 10, scope: !4213, inlinedAt: !4254)
!4256 = !DILocation(line: 1069, column: 3, scope: !4245)
!4257 = distinct !DISubprogram(name: "version_etc_arn", scope: !724, file: !724, line: 61, type: !4258, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4295)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !4260, !150, !150, !150, !4294, !147}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !4262)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !4263)
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4262, file: !242, line: 51, baseType: !93, size: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4262, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4262, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4262, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4262, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4262, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4262, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4262, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4262, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4262, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4262, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4262, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4262, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4262, file: !242, line: 70, baseType: !4278, size: 64, offset: 832)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4262, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4262, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4262, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4262, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4262, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4262, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4262, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4262, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4262, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4262, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4262, file: !242, line: 93, baseType: !4278, size: 64, offset: 1344)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4262, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4262, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4262, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4262, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!4295 = !{!4296, !4297, !4298, !4299, !4300, !4301}
!4296 = !DILocalVariable(name: "stream", arg: 1, scope: !4257, file: !724, line: 61, type: !4260)
!4297 = !DILocalVariable(name: "command_name", arg: 2, scope: !4257, file: !724, line: 62, type: !150)
!4298 = !DILocalVariable(name: "package", arg: 3, scope: !4257, file: !724, line: 62, type: !150)
!4299 = !DILocalVariable(name: "version", arg: 4, scope: !4257, file: !724, line: 63, type: !150)
!4300 = !DILocalVariable(name: "authors", arg: 5, scope: !4257, file: !724, line: 64, type: !4294)
!4301 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4257, file: !724, line: 64, type: !147)
!4302 = !DILocation(line: 0, scope: !4257)
!4303 = !DILocation(line: 66, column: 7, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4257, file: !724, line: 66, column: 7)
!4305 = !DILocation(line: 66, column: 7, scope: !4257)
!4306 = !DILocation(line: 67, column: 5, scope: !4304)
!4307 = !DILocation(line: 69, column: 5, scope: !4304)
!4308 = !DILocation(line: 83, column: 3, scope: !4257)
!4309 = !DILocation(line: 85, column: 3, scope: !4257)
!4310 = !DILocation(line: 88, column: 3, scope: !4257)
!4311 = !DILocation(line: 95, column: 3, scope: !4257)
!4312 = !DILocation(line: 97, column: 3, scope: !4257)
!4313 = !DILocation(line: 105, column: 7, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4257, file: !724, line: 98, column: 5)
!4315 = !DILocation(line: 106, column: 7, scope: !4314)
!4316 = !DILocation(line: 109, column: 7, scope: !4314)
!4317 = !DILocation(line: 110, column: 7, scope: !4314)
!4318 = !DILocation(line: 113, column: 7, scope: !4314)
!4319 = !DILocation(line: 115, column: 7, scope: !4314)
!4320 = !DILocation(line: 120, column: 7, scope: !4314)
!4321 = !DILocation(line: 122, column: 7, scope: !4314)
!4322 = !DILocation(line: 127, column: 7, scope: !4314)
!4323 = !DILocation(line: 129, column: 7, scope: !4314)
!4324 = !DILocation(line: 134, column: 7, scope: !4314)
!4325 = !DILocation(line: 137, column: 7, scope: !4314)
!4326 = !DILocation(line: 142, column: 7, scope: !4314)
!4327 = !DILocation(line: 145, column: 7, scope: !4314)
!4328 = !DILocation(line: 150, column: 7, scope: !4314)
!4329 = !DILocation(line: 154, column: 7, scope: !4314)
!4330 = !DILocation(line: 159, column: 7, scope: !4314)
!4331 = !DILocation(line: 163, column: 7, scope: !4314)
!4332 = !DILocation(line: 170, column: 7, scope: !4314)
!4333 = !DILocation(line: 174, column: 7, scope: !4314)
!4334 = !DILocation(line: 176, column: 1, scope: !4257)
!4335 = distinct !DISubprogram(name: "version_etc_ar", scope: !724, file: !724, line: 183, type: !4336, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{null, !4260, !150, !150, !150, !4294}
!4338 = !{!4339, !4340, !4341, !4342, !4343, !4344}
!4339 = !DILocalVariable(name: "stream", arg: 1, scope: !4335, file: !724, line: 183, type: !4260)
!4340 = !DILocalVariable(name: "command_name", arg: 2, scope: !4335, file: !724, line: 184, type: !150)
!4341 = !DILocalVariable(name: "package", arg: 3, scope: !4335, file: !724, line: 184, type: !150)
!4342 = !DILocalVariable(name: "version", arg: 4, scope: !4335, file: !724, line: 185, type: !150)
!4343 = !DILocalVariable(name: "authors", arg: 5, scope: !4335, file: !724, line: 185, type: !4294)
!4344 = !DILocalVariable(name: "n_authors", scope: !4335, file: !724, line: 187, type: !147)
!4345 = !DILocation(line: 0, scope: !4335)
!4346 = !DILocation(line: 189, column: 8, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4335, file: !724, line: 189, column: 3)
!4348 = !DILocation(line: 189, scope: !4347)
!4349 = !DILocation(line: 189, column: 23, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4347, file: !724, line: 189, column: 3)
!4351 = !DILocation(line: 189, column: 3, scope: !4347)
!4352 = !DILocation(line: 189, column: 52, scope: !4350)
!4353 = distinct !{!4353, !4351, !4354, !1075}
!4354 = !DILocation(line: 190, column: 5, scope: !4347)
!4355 = !DILocation(line: 191, column: 3, scope: !4335)
!4356 = !DILocation(line: 192, column: 1, scope: !4335)
!4357 = distinct !DISubprogram(name: "version_etc_va", scope: !724, file: !724, line: 199, type: !4358, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4371)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{null, !4260, !150, !150, !150, !4360}
!4360 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !544, line: 52, baseType: !4361)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !546, line: 14, baseType: !4362)
!4362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4363, baseType: !4364)
!4363 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369, !4370}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4364, file: !4363, line: 192, baseType: !145, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4364, file: !4363, line: 192, baseType: !145, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4364, file: !4363, line: 192, baseType: !145, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4364, file: !4363, line: 192, baseType: !93, size: 32, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4364, file: !4363, line: 192, baseType: !93, size: 32, offset: 224)
!4371 = !{!4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4372 = !DILocalVariable(name: "stream", arg: 1, scope: !4357, file: !724, line: 199, type: !4260)
!4373 = !DILocalVariable(name: "command_name", arg: 2, scope: !4357, file: !724, line: 200, type: !150)
!4374 = !DILocalVariable(name: "package", arg: 3, scope: !4357, file: !724, line: 200, type: !150)
!4375 = !DILocalVariable(name: "version", arg: 4, scope: !4357, file: !724, line: 201, type: !150)
!4376 = !DILocalVariable(name: "authors", arg: 5, scope: !4357, file: !724, line: 201, type: !4360)
!4377 = !DILocalVariable(name: "n_authors", scope: !4357, file: !724, line: 203, type: !147)
!4378 = !DILocalVariable(name: "authtab", scope: !4357, file: !724, line: 204, type: !4379)
!4379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 640, elements: !75)
!4380 = !DILocation(line: 0, scope: !4357)
!4381 = !DILocation(line: 201, column: 46, scope: !4357)
!4382 = !DILocation(line: 204, column: 3, scope: !4357)
!4383 = !DILocation(line: 204, column: 15, scope: !4357)
!4384 = !DILocation(line: 208, column: 35, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4386, file: !724, line: 206, column: 3)
!4386 = distinct !DILexicalBlock(scope: !4357, file: !724, line: 206, column: 3)
!4387 = !DILocation(line: 208, column: 33, scope: !4385)
!4388 = !DILocation(line: 208, column: 67, scope: !4385)
!4389 = !DILocation(line: 206, column: 3, scope: !4386)
!4390 = !DILocation(line: 208, column: 14, scope: !4385)
!4391 = !DILocation(line: 0, scope: !4386)
!4392 = !DILocation(line: 211, column: 3, scope: !4357)
!4393 = !DILocation(line: 213, column: 1, scope: !4357)
!4394 = distinct !DISubprogram(name: "version_etc", scope: !724, file: !724, line: 230, type: !4395, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4397)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{null, !4260, !150, !150, !150, null}
!4397 = !{!4398, !4399, !4400, !4401, !4402}
!4398 = !DILocalVariable(name: "stream", arg: 1, scope: !4394, file: !724, line: 230, type: !4260)
!4399 = !DILocalVariable(name: "command_name", arg: 2, scope: !4394, file: !724, line: 231, type: !150)
!4400 = !DILocalVariable(name: "package", arg: 3, scope: !4394, file: !724, line: 231, type: !150)
!4401 = !DILocalVariable(name: "version", arg: 4, scope: !4394, file: !724, line: 232, type: !150)
!4402 = !DILocalVariable(name: "authors", scope: !4394, file: !724, line: 234, type: !4360)
!4403 = !DILocation(line: 0, scope: !4394)
!4404 = !DILocation(line: 234, column: 3, scope: !4394)
!4405 = !DILocation(line: 234, column: 11, scope: !4394)
!4406 = !DILocation(line: 235, column: 3, scope: !4394)
!4407 = !DILocation(line: 236, column: 3, scope: !4394)
!4408 = !DILocation(line: 237, column: 3, scope: !4394)
!4409 = !DILocation(line: 238, column: 1, scope: !4394)
!4410 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !724, file: !724, line: 241, type: !582, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !964)
!4411 = !DILocation(line: 243, column: 3, scope: !4410)
!4412 = !DILocation(line: 248, column: 3, scope: !4410)
!4413 = !DILocation(line: 254, column: 3, scope: !4410)
!4414 = !DILocation(line: 259, column: 3, scope: !4410)
!4415 = !DILocation(line: 261, column: 1, scope: !4410)
!4416 = distinct !DISubprogram(name: "xnrealloc", scope: !4417, file: !4417, line: 147, type: !4418, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4420)
!4417 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!145, !145, !147, !147}
!4420 = !{!4421, !4422, !4423}
!4421 = !DILocalVariable(name: "p", arg: 1, scope: !4416, file: !4417, line: 147, type: !145)
!4422 = !DILocalVariable(name: "n", arg: 2, scope: !4416, file: !4417, line: 147, type: !147)
!4423 = !DILocalVariable(name: "s", arg: 3, scope: !4416, file: !4417, line: 147, type: !147)
!4424 = !DILocation(line: 0, scope: !4416)
!4425 = !DILocalVariable(name: "p", arg: 1, scope: !4426, file: !869, line: 83, type: !145)
!4426 = distinct !DISubprogram(name: "xreallocarray", scope: !869, file: !869, line: 83, type: !4418, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4427)
!4427 = !{!4425, !4428, !4429}
!4428 = !DILocalVariable(name: "n", arg: 2, scope: !4426, file: !869, line: 83, type: !147)
!4429 = !DILocalVariable(name: "s", arg: 3, scope: !4426, file: !869, line: 83, type: !147)
!4430 = !DILocation(line: 0, scope: !4426, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 149, column: 10, scope: !4416)
!4432 = !DILocation(line: 85, column: 25, scope: !4426, inlinedAt: !4431)
!4433 = !DILocalVariable(name: "p", arg: 1, scope: !4434, file: !869, line: 37, type: !145)
!4434 = distinct !DISubprogram(name: "check_nonnull", scope: !869, file: !869, line: 37, type: !4435, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4437)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!145, !145}
!4437 = !{!4433}
!4438 = !DILocation(line: 0, scope: !4434, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 85, column: 10, scope: !4426, inlinedAt: !4431)
!4440 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4439)
!4441 = distinct !DILexicalBlock(scope: !4434, file: !869, line: 39, column: 7)
!4442 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4439)
!4443 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4439)
!4444 = !DILocation(line: 149, column: 3, scope: !4416)
!4445 = !DILocation(line: 0, scope: !4426)
!4446 = !DILocation(line: 85, column: 25, scope: !4426)
!4447 = !DILocation(line: 0, scope: !4434, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 85, column: 10, scope: !4426)
!4449 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4448)
!4450 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4448)
!4451 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4448)
!4452 = !DILocation(line: 85, column: 3, scope: !4426)
!4453 = distinct !DISubprogram(name: "xmalloc", scope: !869, file: !869, line: 47, type: !4454, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4456)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!145, !147}
!4456 = !{!4457}
!4457 = !DILocalVariable(name: "s", arg: 1, scope: !4453, file: !869, line: 47, type: !147)
!4458 = !DILocation(line: 0, scope: !4453)
!4459 = !DILocation(line: 49, column: 25, scope: !4453)
!4460 = !DILocation(line: 0, scope: !4434, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 49, column: 10, scope: !4453)
!4462 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4461)
!4463 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4461)
!4464 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4461)
!4465 = !DILocation(line: 49, column: 3, scope: !4453)
!4466 = !DISubprogram(name: "malloc", scope: !1149, file: !1149, line: 540, type: !4454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!4467 = distinct !DISubprogram(name: "ximalloc", scope: !869, file: !869, line: 53, type: !4468, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4470)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!145, !888}
!4470 = !{!4471}
!4471 = !DILocalVariable(name: "s", arg: 1, scope: !4467, file: !869, line: 53, type: !888)
!4472 = !DILocation(line: 0, scope: !4467)
!4473 = !DILocalVariable(name: "s", arg: 1, scope: !4474, file: !4475, line: 55, type: !888)
!4474 = distinct !DISubprogram(name: "imalloc", scope: !4475, file: !4475, line: 55, type: !4468, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4476)
!4475 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4476 = !{!4473}
!4477 = !DILocation(line: 0, scope: !4474, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 55, column: 25, scope: !4467)
!4479 = !DILocation(line: 57, column: 26, scope: !4474, inlinedAt: !4478)
!4480 = !DILocation(line: 0, scope: !4434, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 55, column: 10, scope: !4467)
!4482 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4481)
!4483 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4481)
!4484 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4481)
!4485 = !DILocation(line: 55, column: 3, scope: !4467)
!4486 = distinct !DISubprogram(name: "xcharalloc", scope: !869, file: !869, line: 59, type: !4487, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4489)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!144, !147}
!4489 = !{!4490}
!4490 = !DILocalVariable(name: "n", arg: 1, scope: !4486, file: !869, line: 59, type: !147)
!4491 = !DILocation(line: 0, scope: !4486)
!4492 = !DILocation(line: 0, scope: !4453, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 61, column: 10, scope: !4486)
!4494 = !DILocation(line: 49, column: 25, scope: !4453, inlinedAt: !4493)
!4495 = !DILocation(line: 0, scope: !4434, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 49, column: 10, scope: !4453, inlinedAt: !4493)
!4497 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4496)
!4498 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4496)
!4499 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4496)
!4500 = !DILocation(line: 61, column: 3, scope: !4486)
!4501 = distinct !DISubprogram(name: "xrealloc", scope: !869, file: !869, line: 68, type: !4502, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4504)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!145, !145, !147}
!4504 = !{!4505, !4506}
!4505 = !DILocalVariable(name: "p", arg: 1, scope: !4501, file: !869, line: 68, type: !145)
!4506 = !DILocalVariable(name: "s", arg: 2, scope: !4501, file: !869, line: 68, type: !147)
!4507 = !DILocation(line: 0, scope: !4501)
!4508 = !DILocalVariable(name: "ptr", arg: 1, scope: !4509, file: !4510, line: 2057, type: !145)
!4509 = distinct !DISubprogram(name: "rpl_realloc", scope: !4510, file: !4510, line: 2057, type: !4502, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4511)
!4510 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4511 = !{!4508, !4512}
!4512 = !DILocalVariable(name: "size", arg: 2, scope: !4509, file: !4510, line: 2057, type: !147)
!4513 = !DILocation(line: 0, scope: !4509, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 70, column: 25, scope: !4501)
!4515 = !DILocation(line: 2059, column: 24, scope: !4509, inlinedAt: !4514)
!4516 = !DILocation(line: 2059, column: 10, scope: !4509, inlinedAt: !4514)
!4517 = !DILocation(line: 0, scope: !4434, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 70, column: 10, scope: !4501)
!4519 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4518)
!4520 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4518)
!4521 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4518)
!4522 = !DILocation(line: 70, column: 3, scope: !4501)
!4523 = !DISubprogram(name: "realloc", scope: !1149, file: !1149, line: 551, type: !4502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!4524 = distinct !DISubprogram(name: "xirealloc", scope: !869, file: !869, line: 74, type: !4525, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4527)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!145, !145, !888}
!4527 = !{!4528, !4529}
!4528 = !DILocalVariable(name: "p", arg: 1, scope: !4524, file: !869, line: 74, type: !145)
!4529 = !DILocalVariable(name: "s", arg: 2, scope: !4524, file: !869, line: 74, type: !888)
!4530 = !DILocation(line: 0, scope: !4524)
!4531 = !DILocalVariable(name: "p", arg: 1, scope: !4532, file: !4475, line: 66, type: !145)
!4532 = distinct !DISubprogram(name: "irealloc", scope: !4475, file: !4475, line: 66, type: !4525, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4533)
!4533 = !{!4531, !4534}
!4534 = !DILocalVariable(name: "s", arg: 2, scope: !4532, file: !4475, line: 66, type: !888)
!4535 = !DILocation(line: 0, scope: !4532, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 76, column: 25, scope: !4524)
!4537 = !DILocation(line: 0, scope: !4509, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 68, column: 26, scope: !4532, inlinedAt: !4536)
!4539 = !DILocation(line: 2059, column: 24, scope: !4509, inlinedAt: !4538)
!4540 = !DILocation(line: 2059, column: 10, scope: !4509, inlinedAt: !4538)
!4541 = !DILocation(line: 0, scope: !4434, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 76, column: 10, scope: !4524)
!4543 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4542)
!4544 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4542)
!4545 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4542)
!4546 = !DILocation(line: 76, column: 3, scope: !4524)
!4547 = distinct !DISubprogram(name: "xireallocarray", scope: !869, file: !869, line: 89, type: !4548, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!145, !145, !888, !888}
!4550 = !{!4551, !4552, !4553}
!4551 = !DILocalVariable(name: "p", arg: 1, scope: !4547, file: !869, line: 89, type: !145)
!4552 = !DILocalVariable(name: "n", arg: 2, scope: !4547, file: !869, line: 89, type: !888)
!4553 = !DILocalVariable(name: "s", arg: 3, scope: !4547, file: !869, line: 89, type: !888)
!4554 = !DILocation(line: 0, scope: !4547)
!4555 = !DILocalVariable(name: "p", arg: 1, scope: !4556, file: !4475, line: 98, type: !145)
!4556 = distinct !DISubprogram(name: "ireallocarray", scope: !4475, file: !4475, line: 98, type: !4548, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4557)
!4557 = !{!4555, !4558, !4559}
!4558 = !DILocalVariable(name: "n", arg: 2, scope: !4556, file: !4475, line: 98, type: !888)
!4559 = !DILocalVariable(name: "s", arg: 3, scope: !4556, file: !4475, line: 98, type: !888)
!4560 = !DILocation(line: 0, scope: !4556, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 91, column: 25, scope: !4547)
!4562 = !DILocation(line: 101, column: 13, scope: !4556, inlinedAt: !4561)
!4563 = !DILocation(line: 0, scope: !4434, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 91, column: 10, scope: !4547)
!4565 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4564)
!4566 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4564)
!4567 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4564)
!4568 = !DILocation(line: 91, column: 3, scope: !4547)
!4569 = distinct !DISubprogram(name: "xnmalloc", scope: !869, file: !869, line: 98, type: !4570, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4572)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!145, !147, !147}
!4572 = !{!4573, !4574}
!4573 = !DILocalVariable(name: "n", arg: 1, scope: !4569, file: !869, line: 98, type: !147)
!4574 = !DILocalVariable(name: "s", arg: 2, scope: !4569, file: !869, line: 98, type: !147)
!4575 = !DILocation(line: 0, scope: !4569)
!4576 = !DILocation(line: 0, scope: !4426, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 100, column: 10, scope: !4569)
!4578 = !DILocation(line: 85, column: 25, scope: !4426, inlinedAt: !4577)
!4579 = !DILocation(line: 0, scope: !4434, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 85, column: 10, scope: !4426, inlinedAt: !4577)
!4581 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4580)
!4582 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4580)
!4583 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4580)
!4584 = !DILocation(line: 100, column: 3, scope: !4569)
!4585 = distinct !DISubprogram(name: "xinmalloc", scope: !869, file: !869, line: 104, type: !4586, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4588)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!145, !888, !888}
!4588 = !{!4589, !4590}
!4589 = !DILocalVariable(name: "n", arg: 1, scope: !4585, file: !869, line: 104, type: !888)
!4590 = !DILocalVariable(name: "s", arg: 2, scope: !4585, file: !869, line: 104, type: !888)
!4591 = !DILocation(line: 0, scope: !4585)
!4592 = !DILocation(line: 0, scope: !4547, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 106, column: 10, scope: !4585)
!4594 = !DILocation(line: 0, scope: !4556, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 91, column: 25, scope: !4547, inlinedAt: !4593)
!4596 = !DILocation(line: 101, column: 13, scope: !4556, inlinedAt: !4595)
!4597 = !DILocation(line: 0, scope: !4434, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 91, column: 10, scope: !4547, inlinedAt: !4593)
!4599 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4598)
!4600 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4598)
!4601 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4598)
!4602 = !DILocation(line: 106, column: 3, scope: !4585)
!4603 = distinct !DISubprogram(name: "x2realloc", scope: !869, file: !869, line: 116, type: !4604, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4606)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!145, !145, !875}
!4606 = !{!4607, !4608}
!4607 = !DILocalVariable(name: "p", arg: 1, scope: !4603, file: !869, line: 116, type: !145)
!4608 = !DILocalVariable(name: "ps", arg: 2, scope: !4603, file: !869, line: 116, type: !875)
!4609 = !DILocation(line: 0, scope: !4603)
!4610 = !DILocation(line: 0, scope: !872, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 118, column: 10, scope: !4603)
!4612 = !DILocation(line: 178, column: 14, scope: !872, inlinedAt: !4611)
!4613 = !DILocation(line: 180, column: 9, scope: !4614, inlinedAt: !4611)
!4614 = distinct !DILexicalBlock(scope: !872, file: !869, line: 180, column: 7)
!4615 = !DILocation(line: 180, column: 7, scope: !872, inlinedAt: !4611)
!4616 = !DILocation(line: 182, column: 13, scope: !4617, inlinedAt: !4611)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !869, line: 182, column: 11)
!4618 = distinct !DILexicalBlock(scope: !4614, file: !869, line: 181, column: 5)
!4619 = !DILocation(line: 182, column: 11, scope: !4618, inlinedAt: !4611)
!4620 = !DILocation(line: 197, column: 11, scope: !4621, inlinedAt: !4611)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !869, line: 197, column: 11)
!4622 = distinct !DILexicalBlock(scope: !4614, file: !869, line: 195, column: 5)
!4623 = !DILocation(line: 197, column: 11, scope: !4622, inlinedAt: !4611)
!4624 = !DILocation(line: 198, column: 9, scope: !4621, inlinedAt: !4611)
!4625 = !DILocation(line: 0, scope: !4426, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 201, column: 7, scope: !872, inlinedAt: !4611)
!4627 = !DILocation(line: 85, column: 25, scope: !4426, inlinedAt: !4626)
!4628 = !DILocation(line: 0, scope: !4434, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 85, column: 10, scope: !4426, inlinedAt: !4626)
!4630 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4629)
!4631 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4629)
!4632 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4629)
!4633 = !DILocation(line: 202, column: 7, scope: !872, inlinedAt: !4611)
!4634 = !DILocation(line: 118, column: 3, scope: !4603)
!4635 = !DILocation(line: 0, scope: !872)
!4636 = !DILocation(line: 178, column: 14, scope: !872)
!4637 = !DILocation(line: 180, column: 9, scope: !4614)
!4638 = !DILocation(line: 180, column: 7, scope: !872)
!4639 = !DILocation(line: 182, column: 13, scope: !4617)
!4640 = !DILocation(line: 182, column: 11, scope: !4618)
!4641 = !DILocation(line: 190, column: 30, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4617, file: !869, line: 183, column: 9)
!4643 = !DILocation(line: 191, column: 16, scope: !4642)
!4644 = !DILocation(line: 191, column: 13, scope: !4642)
!4645 = !DILocation(line: 192, column: 9, scope: !4642)
!4646 = !DILocation(line: 197, column: 11, scope: !4621)
!4647 = !DILocation(line: 197, column: 11, scope: !4622)
!4648 = !DILocation(line: 198, column: 9, scope: !4621)
!4649 = !DILocation(line: 0, scope: !4426, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 201, column: 7, scope: !872)
!4651 = !DILocation(line: 85, column: 25, scope: !4426, inlinedAt: !4650)
!4652 = !DILocation(line: 0, scope: !4434, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 85, column: 10, scope: !4426, inlinedAt: !4650)
!4654 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4653)
!4655 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4653)
!4656 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4653)
!4657 = !DILocation(line: 202, column: 7, scope: !872)
!4658 = !DILocation(line: 203, column: 3, scope: !872)
!4659 = !DILocation(line: 0, scope: !884)
!4660 = !DILocation(line: 230, column: 14, scope: !884)
!4661 = !DILocation(line: 238, column: 7, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !884, file: !869, line: 238, column: 7)
!4663 = !DILocation(line: 238, column: 7, scope: !884)
!4664 = !DILocation(line: 240, column: 9, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !884, file: !869, line: 240, column: 7)
!4666 = !DILocation(line: 240, column: 18, scope: !4665)
!4667 = !DILocation(line: 253, column: 8, scope: !884)
!4668 = !DILocation(line: 258, column: 27, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4670, file: !869, line: 257, column: 5)
!4670 = distinct !DILexicalBlock(scope: !884, file: !869, line: 256, column: 7)
!4671 = !DILocation(line: 259, column: 32, scope: !4669)
!4672 = !DILocation(line: 260, column: 5, scope: !4669)
!4673 = !DILocation(line: 262, column: 9, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !884, file: !869, line: 262, column: 7)
!4675 = !DILocation(line: 262, column: 7, scope: !884)
!4676 = !DILocation(line: 263, column: 9, scope: !4674)
!4677 = !DILocation(line: 263, column: 5, scope: !4674)
!4678 = !DILocation(line: 264, column: 9, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !884, file: !869, line: 264, column: 7)
!4680 = !DILocation(line: 264, column: 14, scope: !4679)
!4681 = !DILocation(line: 265, column: 7, scope: !4679)
!4682 = !DILocation(line: 265, column: 11, scope: !4679)
!4683 = !DILocation(line: 266, column: 11, scope: !4679)
!4684 = !DILocation(line: 267, column: 14, scope: !4679)
!4685 = !DILocation(line: 264, column: 7, scope: !884)
!4686 = !DILocation(line: 268, column: 5, scope: !4679)
!4687 = !DILocation(line: 0, scope: !4501, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 269, column: 8, scope: !884)
!4689 = !DILocation(line: 0, scope: !4509, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 70, column: 25, scope: !4501, inlinedAt: !4688)
!4691 = !DILocation(line: 2059, column: 24, scope: !4509, inlinedAt: !4690)
!4692 = !DILocation(line: 2059, column: 10, scope: !4509, inlinedAt: !4690)
!4693 = !DILocation(line: 0, scope: !4434, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 70, column: 10, scope: !4501, inlinedAt: !4688)
!4695 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4694)
!4696 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4694)
!4697 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4694)
!4698 = !DILocation(line: 270, column: 7, scope: !884)
!4699 = !DILocation(line: 271, column: 3, scope: !884)
!4700 = distinct !DISubprogram(name: "xzalloc", scope: !869, file: !869, line: 279, type: !4454, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4701)
!4701 = !{!4702}
!4702 = !DILocalVariable(name: "s", arg: 1, scope: !4700, file: !869, line: 279, type: !147)
!4703 = !DILocation(line: 0, scope: !4700)
!4704 = !DILocalVariable(name: "n", arg: 1, scope: !4705, file: !869, line: 294, type: !147)
!4705 = distinct !DISubprogram(name: "xcalloc", scope: !869, file: !869, line: 294, type: !4570, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4706)
!4706 = !{!4704, !4707}
!4707 = !DILocalVariable(name: "s", arg: 2, scope: !4705, file: !869, line: 294, type: !147)
!4708 = !DILocation(line: 0, scope: !4705, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 281, column: 10, scope: !4700)
!4710 = !DILocation(line: 296, column: 25, scope: !4705, inlinedAt: !4709)
!4711 = !DILocation(line: 0, scope: !4434, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 296, column: 10, scope: !4705, inlinedAt: !4709)
!4713 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4712)
!4714 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4712)
!4715 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4712)
!4716 = !DILocation(line: 281, column: 3, scope: !4700)
!4717 = !DISubprogram(name: "calloc", scope: !1149, file: !1149, line: 543, type: !4570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!4718 = !DILocation(line: 0, scope: !4705)
!4719 = !DILocation(line: 296, column: 25, scope: !4705)
!4720 = !DILocation(line: 0, scope: !4434, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 296, column: 10, scope: !4705)
!4722 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4721)
!4723 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4721)
!4724 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4721)
!4725 = !DILocation(line: 296, column: 3, scope: !4705)
!4726 = distinct !DISubprogram(name: "xizalloc", scope: !869, file: !869, line: 285, type: !4468, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4727)
!4727 = !{!4728}
!4728 = !DILocalVariable(name: "s", arg: 1, scope: !4726, file: !869, line: 285, type: !888)
!4729 = !DILocation(line: 0, scope: !4726)
!4730 = !DILocalVariable(name: "n", arg: 1, scope: !4731, file: !869, line: 300, type: !888)
!4731 = distinct !DISubprogram(name: "xicalloc", scope: !869, file: !869, line: 300, type: !4586, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4732)
!4732 = !{!4730, !4733}
!4733 = !DILocalVariable(name: "s", arg: 2, scope: !4731, file: !869, line: 300, type: !888)
!4734 = !DILocation(line: 0, scope: !4731, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 287, column: 10, scope: !4726)
!4736 = !DILocalVariable(name: "n", arg: 1, scope: !4737, file: !4475, line: 77, type: !888)
!4737 = distinct !DISubprogram(name: "icalloc", scope: !4475, file: !4475, line: 77, type: !4586, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4738)
!4738 = !{!4736, !4739}
!4739 = !DILocalVariable(name: "s", arg: 2, scope: !4737, file: !4475, line: 77, type: !888)
!4740 = !DILocation(line: 0, scope: !4737, inlinedAt: !4741)
!4741 = distinct !DILocation(line: 302, column: 25, scope: !4731, inlinedAt: !4735)
!4742 = !DILocation(line: 91, column: 10, scope: !4737, inlinedAt: !4741)
!4743 = !DILocation(line: 0, scope: !4434, inlinedAt: !4744)
!4744 = distinct !DILocation(line: 302, column: 10, scope: !4731, inlinedAt: !4735)
!4745 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4744)
!4746 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4744)
!4747 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4744)
!4748 = !DILocation(line: 287, column: 3, scope: !4726)
!4749 = !DILocation(line: 0, scope: !4731)
!4750 = !DILocation(line: 0, scope: !4737, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 302, column: 25, scope: !4731)
!4752 = !DILocation(line: 91, column: 10, scope: !4737, inlinedAt: !4751)
!4753 = !DILocation(line: 0, scope: !4434, inlinedAt: !4754)
!4754 = distinct !DILocation(line: 302, column: 10, scope: !4731)
!4755 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4754)
!4756 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4754)
!4757 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4754)
!4758 = !DILocation(line: 302, column: 3, scope: !4731)
!4759 = distinct !DISubprogram(name: "xmemdup", scope: !869, file: !869, line: 310, type: !4760, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4762)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!145, !1173, !147}
!4762 = !{!4763, !4764}
!4763 = !DILocalVariable(name: "p", arg: 1, scope: !4759, file: !869, line: 310, type: !1173)
!4764 = !DILocalVariable(name: "s", arg: 2, scope: !4759, file: !869, line: 310, type: !147)
!4765 = !DILocation(line: 0, scope: !4759)
!4766 = !DILocation(line: 0, scope: !4453, inlinedAt: !4767)
!4767 = distinct !DILocation(line: 312, column: 18, scope: !4759)
!4768 = !DILocation(line: 49, column: 25, scope: !4453, inlinedAt: !4767)
!4769 = !DILocation(line: 0, scope: !4434, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 49, column: 10, scope: !4453, inlinedAt: !4767)
!4771 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4770)
!4772 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4770)
!4773 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4770)
!4774 = !DILocalVariable(name: "__dest", arg: 1, scope: !4775, file: !2270, line: 26, type: !4778)
!4775 = distinct !DISubprogram(name: "memcpy", scope: !2270, file: !2270, line: 26, type: !4776, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4779)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!145, !4778, !1172, !147}
!4778 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!4779 = !{!4774, !4780, !4781}
!4780 = !DILocalVariable(name: "__src", arg: 2, scope: !4775, file: !2270, line: 26, type: !1172)
!4781 = !DILocalVariable(name: "__len", arg: 3, scope: !4775, file: !2270, line: 26, type: !147)
!4782 = !DILocation(line: 0, scope: !4775, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 312, column: 10, scope: !4759)
!4784 = !DILocation(line: 29, column: 10, scope: !4775, inlinedAt: !4783)
!4785 = !DILocation(line: 312, column: 3, scope: !4759)
!4786 = distinct !DISubprogram(name: "ximemdup", scope: !869, file: !869, line: 316, type: !4787, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4789)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!145, !1173, !888}
!4789 = !{!4790, !4791}
!4790 = !DILocalVariable(name: "p", arg: 1, scope: !4786, file: !869, line: 316, type: !1173)
!4791 = !DILocalVariable(name: "s", arg: 2, scope: !4786, file: !869, line: 316, type: !888)
!4792 = !DILocation(line: 0, scope: !4786)
!4793 = !DILocation(line: 0, scope: !4467, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 318, column: 18, scope: !4786)
!4795 = !DILocation(line: 0, scope: !4474, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 55, column: 25, scope: !4467, inlinedAt: !4794)
!4797 = !DILocation(line: 57, column: 26, scope: !4474, inlinedAt: !4796)
!4798 = !DILocation(line: 0, scope: !4434, inlinedAt: !4799)
!4799 = distinct !DILocation(line: 55, column: 10, scope: !4467, inlinedAt: !4794)
!4800 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4799)
!4801 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4799)
!4802 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4799)
!4803 = !DILocation(line: 0, scope: !4775, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 318, column: 10, scope: !4786)
!4805 = !DILocation(line: 29, column: 10, scope: !4775, inlinedAt: !4804)
!4806 = !DILocation(line: 318, column: 3, scope: !4786)
!4807 = distinct !DISubprogram(name: "ximemdup0", scope: !869, file: !869, line: 325, type: !4808, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4810)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!144, !1173, !888}
!4810 = !{!4811, !4812, !4813}
!4811 = !DILocalVariable(name: "p", arg: 1, scope: !4807, file: !869, line: 325, type: !1173)
!4812 = !DILocalVariable(name: "s", arg: 2, scope: !4807, file: !869, line: 325, type: !888)
!4813 = !DILocalVariable(name: "result", scope: !4807, file: !869, line: 327, type: !144)
!4814 = !DILocation(line: 0, scope: !4807)
!4815 = !DILocation(line: 327, column: 30, scope: !4807)
!4816 = !DILocation(line: 0, scope: !4467, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 327, column: 18, scope: !4807)
!4818 = !DILocation(line: 0, scope: !4474, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 55, column: 25, scope: !4467, inlinedAt: !4817)
!4820 = !DILocation(line: 57, column: 26, scope: !4474, inlinedAt: !4819)
!4821 = !DILocation(line: 0, scope: !4434, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 55, column: 10, scope: !4467, inlinedAt: !4817)
!4823 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4822)
!4824 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4822)
!4825 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4822)
!4826 = !DILocation(line: 328, column: 3, scope: !4807)
!4827 = !DILocation(line: 328, column: 13, scope: !4807)
!4828 = !DILocation(line: 0, scope: !4775, inlinedAt: !4829)
!4829 = distinct !DILocation(line: 329, column: 10, scope: !4807)
!4830 = !DILocation(line: 29, column: 10, scope: !4775, inlinedAt: !4829)
!4831 = !DILocation(line: 329, column: 3, scope: !4807)
!4832 = distinct !DISubprogram(name: "xstrdup", scope: !869, file: !869, line: 335, type: !1151, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4833)
!4833 = !{!4834}
!4834 = !DILocalVariable(name: "string", arg: 1, scope: !4832, file: !869, line: 335, type: !150)
!4835 = !DILocation(line: 0, scope: !4832)
!4836 = !DILocation(line: 337, column: 27, scope: !4832)
!4837 = !DILocation(line: 337, column: 43, scope: !4832)
!4838 = !DILocation(line: 0, scope: !4759, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 337, column: 10, scope: !4832)
!4840 = !DILocation(line: 0, scope: !4453, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 312, column: 18, scope: !4759, inlinedAt: !4839)
!4842 = !DILocation(line: 49, column: 25, scope: !4453, inlinedAt: !4841)
!4843 = !DILocation(line: 0, scope: !4434, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 49, column: 10, scope: !4453, inlinedAt: !4841)
!4845 = !DILocation(line: 39, column: 8, scope: !4441, inlinedAt: !4844)
!4846 = !DILocation(line: 39, column: 7, scope: !4434, inlinedAt: !4844)
!4847 = !DILocation(line: 40, column: 5, scope: !4441, inlinedAt: !4844)
!4848 = !DILocation(line: 0, scope: !4775, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 312, column: 10, scope: !4759, inlinedAt: !4839)
!4850 = !DILocation(line: 29, column: 10, scope: !4775, inlinedAt: !4849)
!4851 = !DILocation(line: 337, column: 3, scope: !4832)
!4852 = distinct !DISubprogram(name: "xalloc_die", scope: !817, file: !817, line: 32, type: !582, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !4853)
!4853 = !{!4854}
!4854 = !DILocalVariable(name: "__errstatus", scope: !4855, file: !817, line: 34, type: !4856)
!4855 = distinct !DILexicalBlock(scope: !4852, file: !817, line: 34, column: 3)
!4856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!4857 = !DILocation(line: 34, column: 3, scope: !4855)
!4858 = !DILocation(line: 0, scope: !4855)
!4859 = !DILocation(line: 40, column: 3, scope: !4852)
!4860 = distinct !DISubprogram(name: "xnumtoumax", scope: !824, file: !824, line: 42, type: !4861, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4863)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!920, !150, !93, !920, !920, !150, !150, !93, !93}
!4863 = !{!4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4876, !4877, !4878}
!4864 = !DILocalVariable(name: "n_str", arg: 1, scope: !4860, file: !824, line: 42, type: !150)
!4865 = !DILocalVariable(name: "base", arg: 2, scope: !4860, file: !824, line: 42, type: !93)
!4866 = !DILocalVariable(name: "min", arg: 3, scope: !4860, file: !824, line: 42, type: !920)
!4867 = !DILocalVariable(name: "max", arg: 4, scope: !4860, file: !824, line: 42, type: !920)
!4868 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4860, file: !824, line: 43, type: !150)
!4869 = !DILocalVariable(name: "err", arg: 6, scope: !4860, file: !824, line: 43, type: !150)
!4870 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4860, file: !824, line: 43, type: !93)
!4871 = !DILocalVariable(name: "flags", arg: 8, scope: !4860, file: !824, line: 44, type: !93)
!4872 = !DILocalVariable(name: "tnum", scope: !4860, file: !824, line: 46, type: !920)
!4873 = !DILocalVariable(name: "r", scope: !4860, file: !824, line: 46, type: !920)
!4874 = !DILocalVariable(name: "s_err", scope: !4860, file: !824, line: 47, type: !4875)
!4875 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !908, line: 43, baseType: !907)
!4876 = !DILocalVariable(name: "overflow_errno", scope: !4860, file: !824, line: 50, type: !93)
!4877 = !DILocalVariable(name: "e", scope: !4860, file: !824, line: 75, type: !93)
!4878 = !DILocalVariable(name: "__errstatus", scope: !4879, file: !824, line: 80, type: !4856)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !824, line: 80, column: 5)
!4880 = distinct !DILexicalBlock(scope: !4860, file: !824, line: 77, column: 7)
!4881 = !DILocation(line: 0, scope: !4860)
!4882 = !DILocation(line: 46, column: 3, scope: !4860)
!4883 = !DILocation(line: 47, column: 24, scope: !4860)
!4884 = !DILocation(line: 52, column: 13, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4860, file: !824, line: 52, column: 7)
!4886 = !DILocation(line: 52, column: 7, scope: !4860)
!4887 = !DILocation(line: 54, column: 11, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !824, line: 54, column: 11)
!4889 = distinct !DILexicalBlock(scope: !4885, file: !824, line: 53, column: 5)
!4890 = !DILocation(line: 54, column: 16, scope: !4888)
!4891 = !DILocation(line: 54, column: 11, scope: !4889)
!4892 = !DILocation(line: 57, column: 34, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4888, file: !824, line: 55, column: 9)
!4894 = !DILocation(line: 57, column: 28, scope: !4893)
!4895 = !DILocation(line: 58, column: 21, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4893, file: !824, line: 58, column: 15)
!4897 = !DILocation(line: 0, scope: !4893)
!4898 = !DILocation(line: 61, column: 20, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4888, file: !824, line: 61, column: 16)
!4900 = !DILocation(line: 61, column: 16, scope: !4888)
!4901 = !DILocation(line: 64, column: 34, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4899, file: !824, line: 62, column: 9)
!4903 = !DILocation(line: 64, column: 28, scope: !4902)
!4904 = !DILocation(line: 65, column: 21, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4902, file: !824, line: 65, column: 15)
!4906 = !DILocation(line: 0, scope: !4902)
!4907 = !DILocation(line: 75, column: 17, scope: !4860)
!4908 = !DILocation(line: 75, column: 11, scope: !4860)
!4909 = !DILocation(line: 77, column: 16, scope: !4880)
!4910 = !DILocation(line: 78, column: 10, scope: !4880)
!4911 = !DILocation(line: 79, column: 14, scope: !4880)
!4912 = !DILocation(line: 80, column: 5, scope: !4880)
!4913 = !DILocation(line: 82, column: 3, scope: !4860)
!4914 = !DILocation(line: 82, column: 9, scope: !4860)
!4915 = !DILocation(line: 84, column: 1, scope: !4860)
!4916 = !DILocation(line: 83, column: 3, scope: !4860)
!4917 = distinct !DISubprogram(name: "xdectoumax", scope: !824, file: !824, line: 92, type: !4918, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4920)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!920, !150, !920, !920, !150, !150, !93}
!4920 = !{!4921, !4922, !4923, !4924, !4925, !4926}
!4921 = !DILocalVariable(name: "n_str", arg: 1, scope: !4917, file: !824, line: 92, type: !150)
!4922 = !DILocalVariable(name: "min", arg: 2, scope: !4917, file: !824, line: 92, type: !920)
!4923 = !DILocalVariable(name: "max", arg: 3, scope: !4917, file: !824, line: 92, type: !920)
!4924 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4917, file: !824, line: 93, type: !150)
!4925 = !DILocalVariable(name: "err", arg: 5, scope: !4917, file: !824, line: 93, type: !150)
!4926 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4917, file: !824, line: 93, type: !93)
!4927 = !DILocation(line: 0, scope: !4917)
!4928 = !DILocation(line: 0, scope: !4860, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 95, column: 10, scope: !4917)
!4930 = !DILocation(line: 46, column: 3, scope: !4860, inlinedAt: !4929)
!4931 = !DILocation(line: 47, column: 24, scope: !4860, inlinedAt: !4929)
!4932 = !DILocation(line: 52, column: 13, scope: !4885, inlinedAt: !4929)
!4933 = !DILocation(line: 52, column: 7, scope: !4860, inlinedAt: !4929)
!4934 = !DILocation(line: 54, column: 11, scope: !4888, inlinedAt: !4929)
!4935 = !DILocation(line: 54, column: 16, scope: !4888, inlinedAt: !4929)
!4936 = !DILocation(line: 54, column: 11, scope: !4889, inlinedAt: !4929)
!4937 = !DILocation(line: 58, column: 21, scope: !4896, inlinedAt: !4929)
!4938 = !DILocation(line: 0, scope: !4893, inlinedAt: !4929)
!4939 = !DILocation(line: 61, column: 20, scope: !4899, inlinedAt: !4929)
!4940 = !DILocation(line: 61, column: 16, scope: !4888, inlinedAt: !4929)
!4941 = !DILocation(line: 65, column: 21, scope: !4905, inlinedAt: !4929)
!4942 = !DILocation(line: 0, scope: !4902, inlinedAt: !4929)
!4943 = !DILocation(line: 75, column: 17, scope: !4860, inlinedAt: !4929)
!4944 = !DILocation(line: 75, column: 11, scope: !4860, inlinedAt: !4929)
!4945 = !DILocation(line: 77, column: 16, scope: !4880, inlinedAt: !4929)
!4946 = !DILocation(line: 78, column: 10, scope: !4880, inlinedAt: !4929)
!4947 = !DILocation(line: 80, column: 5, scope: !4880, inlinedAt: !4929)
!4948 = !DILocation(line: 82, column: 3, scope: !4860, inlinedAt: !4929)
!4949 = !DILocation(line: 82, column: 9, scope: !4860, inlinedAt: !4929)
!4950 = !DILocation(line: 84, column: 1, scope: !4860, inlinedAt: !4929)
!4951 = !DILocation(line: 95, column: 3, scope: !4917)
!4952 = distinct !DISubprogram(name: "xstrtoumax", scope: !4953, file: !4953, line: 71, type: !4954, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4957)
!4953 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!4875, !150, !1178, !93, !4956, !150}
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!4957 = !{!4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4968, !4969, !4970, !4971, !4974, !4975}
!4958 = !DILocalVariable(name: "nptr", arg: 1, scope: !4952, file: !4953, line: 71, type: !150)
!4959 = !DILocalVariable(name: "endptr", arg: 2, scope: !4952, file: !4953, line: 71, type: !1178)
!4960 = !DILocalVariable(name: "base", arg: 3, scope: !4952, file: !4953, line: 71, type: !93)
!4961 = !DILocalVariable(name: "val", arg: 4, scope: !4952, file: !4953, line: 72, type: !4956)
!4962 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4952, file: !4953, line: 72, type: !150)
!4963 = !DILocalVariable(name: "t_ptr", scope: !4952, file: !4953, line: 74, type: !144)
!4964 = !DILocalVariable(name: "p", scope: !4952, file: !4953, line: 75, type: !1178)
!4965 = !DILocalVariable(name: "q", scope: !4966, file: !4953, line: 79, type: !150)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !4953, line: 78, column: 5)
!4967 = distinct !DILexicalBlock(scope: !4952, file: !4953, line: 77, column: 7)
!4968 = !DILocalVariable(name: "ch", scope: !4966, file: !4953, line: 80, type: !152)
!4969 = !DILocalVariable(name: "tmp", scope: !4952, file: !4953, line: 91, type: !920)
!4970 = !DILocalVariable(name: "err", scope: !4952, file: !4953, line: 92, type: !4875)
!4971 = !DILocalVariable(name: "xbase", scope: !4972, file: !4953, line: 126, type: !93)
!4972 = distinct !DILexicalBlock(scope: !4973, file: !4953, line: 119, column: 5)
!4973 = distinct !DILexicalBlock(scope: !4952, file: !4953, line: 118, column: 7)
!4974 = !DILocalVariable(name: "suffixes", scope: !4972, file: !4953, line: 127, type: !93)
!4975 = !DILocalVariable(name: "overflow", scope: !4972, file: !4953, line: 156, type: !4875)
!4976 = !DILocation(line: 0, scope: !4952)
!4977 = !DILocation(line: 74, column: 3, scope: !4952)
!4978 = !DILocation(line: 75, column: 14, scope: !4952)
!4979 = !DILocation(line: 0, scope: !4966)
!4980 = !DILocation(line: 81, column: 7, scope: !4966)
!4981 = !DILocation(line: 81, column: 14, scope: !4966)
!4982 = !DILocation(line: 82, column: 15, scope: !4966)
!4983 = distinct !{!4983, !4980, !4984, !1075}
!4984 = !DILocation(line: 82, column: 17, scope: !4966)
!4985 = !DILocation(line: 83, column: 14, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4966, file: !4953, line: 83, column: 11)
!4987 = !DILocation(line: 83, column: 11, scope: !4966)
!4988 = !DILocation(line: 85, column: 14, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4986, file: !4953, line: 84, column: 9)
!4990 = !DILocation(line: 90, column: 3, scope: !4952)
!4991 = !DILocation(line: 90, column: 9, scope: !4952)
!4992 = !DILocation(line: 91, column: 20, scope: !4952)
!4993 = !DILocation(line: 94, column: 7, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4952, file: !4953, line: 94, column: 7)
!4995 = !DILocation(line: 94, column: 10, scope: !4994)
!4996 = !DILocation(line: 94, column: 7, scope: !4952)
!4997 = !DILocation(line: 98, column: 14, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !4953, line: 98, column: 11)
!4999 = distinct !DILexicalBlock(scope: !4994, file: !4953, line: 95, column: 5)
!5000 = !DILocation(line: 98, column: 29, scope: !4998)
!5001 = !DILocation(line: 98, column: 32, scope: !4998)
!5002 = !DILocation(line: 98, column: 38, scope: !4998)
!5003 = !DILocation(line: 98, column: 41, scope: !4998)
!5004 = !DILocation(line: 98, column: 11, scope: !4999)
!5005 = !DILocation(line: 102, column: 12, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4994, file: !4953, line: 102, column: 12)
!5007 = !DILocation(line: 102, column: 12, scope: !4994)
!5008 = !DILocation(line: 107, column: 5, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5006, file: !4953, line: 103, column: 5)
!5010 = !DILocation(line: 112, column: 8, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4952, file: !4953, line: 112, column: 7)
!5012 = !DILocation(line: 112, column: 7, scope: !4952)
!5013 = !DILocation(line: 114, column: 12, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5011, file: !4953, line: 113, column: 5)
!5015 = !DILocation(line: 115, column: 7, scope: !5014)
!5016 = !DILocation(line: 118, column: 7, scope: !4973)
!5017 = !DILocation(line: 118, column: 11, scope: !4973)
!5018 = !DILocation(line: 118, column: 7, scope: !4952)
!5019 = !DILocation(line: 120, column: 12, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4972, file: !4953, line: 120, column: 11)
!5021 = !DILocation(line: 120, column: 11, scope: !4972)
!5022 = !DILocation(line: 122, column: 16, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5020, file: !4953, line: 121, column: 9)
!5024 = !DILocation(line: 123, column: 22, scope: !5023)
!5025 = !DILocation(line: 123, column: 11, scope: !5023)
!5026 = !DILocation(line: 0, scope: !4972)
!5027 = !DILocation(line: 128, column: 7, scope: !4972)
!5028 = !DILocation(line: 140, column: 15, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5030, file: !4953, line: 140, column: 15)
!5030 = distinct !DILexicalBlock(scope: !4972, file: !4953, line: 129, column: 9)
!5031 = !DILocation(line: 140, column: 15, scope: !5030)
!5032 = !DILocation(line: 141, column: 21, scope: !5029)
!5033 = !DILocation(line: 141, column: 13, scope: !5029)
!5034 = !DILocation(line: 144, column: 21, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !4953, line: 144, column: 21)
!5036 = distinct !DILexicalBlock(scope: !5029, file: !4953, line: 142, column: 15)
!5037 = !DILocation(line: 144, column: 29, scope: !5035)
!5038 = !DILocation(line: 144, column: 21, scope: !5036)
!5039 = !DILocation(line: 152, column: 17, scope: !5036)
!5040 = !DILocation(line: 157, column: 7, scope: !4972)
!5041 = !DILocalVariable(name: "err", scope: !5042, file: !4953, line: 64, type: !4875)
!5042 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4953, file: !4953, line: 62, type: !5043, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !5045)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!4875, !4956, !93, !93}
!5045 = !{!5046, !5047, !5048, !5041}
!5046 = !DILocalVariable(name: "x", arg: 1, scope: !5042, file: !4953, line: 62, type: !4956)
!5047 = !DILocalVariable(name: "base", arg: 2, scope: !5042, file: !4953, line: 62, type: !93)
!5048 = !DILocalVariable(name: "power", arg: 3, scope: !5042, file: !4953, line: 62, type: !93)
!5049 = !DILocation(line: 0, scope: !5042, inlinedAt: !5050)
!5050 = distinct !DILocation(line: 219, column: 22, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !4972, file: !4953, line: 158, column: 9)
!5052 = !DILocalVariable(name: "x", arg: 1, scope: !5053, file: !4953, line: 47, type: !4956)
!5053 = distinct !DISubprogram(name: "bkm_scale", scope: !4953, file: !4953, line: 47, type: !5054, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !5056)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!4875, !4956, !93}
!5056 = !{!5052, !5057, !5058}
!5057 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !5053, file: !4953, line: 47, type: !93)
!5058 = !DILocalVariable(name: "scaled", scope: !5053, file: !4953, line: 49, type: !920)
!5059 = !DILocation(line: 0, scope: !5053, inlinedAt: !5060)
!5060 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5050)
!5061 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5060)
!5062 = distinct !DILexicalBlock(scope: !5053, file: !4953, line: 50, column: 7)
!5063 = !DILocation(line: 66, column: 9, scope: !5042, inlinedAt: !5050)
!5064 = !DILocation(line: 227, column: 11, scope: !4972)
!5065 = !DILocation(line: 0, scope: !5042, inlinedAt: !5066)
!5066 = distinct !DILocation(line: 215, column: 22, scope: !5051)
!5067 = !DILocation(line: 0, scope: !5053, inlinedAt: !5068)
!5068 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5066)
!5069 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5068)
!5070 = !DILocation(line: 66, column: 9, scope: !5042, inlinedAt: !5066)
!5071 = !DILocation(line: 0, scope: !5042, inlinedAt: !5072)
!5072 = distinct !DILocation(line: 202, column: 22, scope: !5051)
!5073 = !DILocation(line: 0, scope: !5053, inlinedAt: !5074)
!5074 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5072)
!5075 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5074)
!5076 = !DILocation(line: 66, column: 9, scope: !5042, inlinedAt: !5072)
!5077 = !DILocation(line: 0, scope: !5042, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 198, column: 22, scope: !5051)
!5079 = !DILocation(line: 0, scope: !5053, inlinedAt: !5080)
!5080 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5078)
!5081 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5080)
!5082 = !DILocation(line: 66, column: 9, scope: !5042, inlinedAt: !5078)
!5083 = !DILocation(line: 0, scope: !5042, inlinedAt: !5084)
!5084 = distinct !DILocation(line: 194, column: 22, scope: !5051)
!5085 = !DILocation(line: 0, scope: !5053, inlinedAt: !5086)
!5086 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5084)
!5087 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5086)
!5088 = !DILocation(line: 66, column: 9, scope: !5042, inlinedAt: !5084)
!5089 = !DILocation(line: 0, scope: !5042, inlinedAt: !5090)
!5090 = distinct !DILocation(line: 175, column: 22, scope: !5051)
!5091 = !DILocation(line: 0, scope: !5053, inlinedAt: !5092)
!5092 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5090)
!5093 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5092)
!5094 = !DILocation(line: 66, column: 9, scope: !5042, inlinedAt: !5090)
!5095 = !DILocation(line: 0, scope: !5053, inlinedAt: !5096)
!5096 = distinct !DILocation(line: 160, column: 22, scope: !5051)
!5097 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5096)
!5098 = !DILocation(line: 161, column: 11, scope: !5051)
!5099 = !DILocation(line: 0, scope: !5053, inlinedAt: !5100)
!5100 = distinct !DILocation(line: 167, column: 22, scope: !5051)
!5101 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5100)
!5102 = !DILocation(line: 168, column: 11, scope: !5051)
!5103 = !DILocation(line: 0, scope: !5042, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 180, column: 22, scope: !5051)
!5105 = !DILocation(line: 0, scope: !5053, inlinedAt: !5106)
!5106 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5104)
!5107 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5106)
!5108 = !DILocation(line: 66, column: 9, scope: !5042, inlinedAt: !5104)
!5109 = !DILocation(line: 0, scope: !5042, inlinedAt: !5110)
!5110 = distinct !DILocation(line: 185, column: 22, scope: !5051)
!5111 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5112)
!5112 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5110)
!5113 = !DILocation(line: 0, scope: !5053, inlinedAt: !5112)
!5114 = !DILocation(line: 0, scope: !5042, inlinedAt: !5115)
!5115 = distinct !DILocation(line: 190, column: 22, scope: !5051)
!5116 = !DILocation(line: 0, scope: !5053, inlinedAt: !5117)
!5117 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5115)
!5118 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5117)
!5119 = !DILocation(line: 66, column: 9, scope: !5042, inlinedAt: !5115)
!5120 = !DILocation(line: 0, scope: !5042, inlinedAt: !5121)
!5121 = distinct !DILocation(line: 207, column: 22, scope: !5051)
!5122 = !DILocation(line: 0, scope: !5053, inlinedAt: !5123)
!5123 = distinct !DILocation(line: 66, column: 12, scope: !5042, inlinedAt: !5121)
!5124 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5123)
!5125 = !DILocation(line: 66, column: 9, scope: !5042, inlinedAt: !5121)
!5126 = !DILocation(line: 0, scope: !5053, inlinedAt: !5127)
!5127 = distinct !DILocation(line: 211, column: 22, scope: !5051)
!5128 = !DILocation(line: 50, column: 7, scope: !5062, inlinedAt: !5127)
!5129 = !DILocation(line: 212, column: 11, scope: !5051)
!5130 = !DILocation(line: 0, scope: !5051)
!5131 = !DILocation(line: 228, column: 10, scope: !4972)
!5132 = !DILocation(line: 229, column: 11, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !4972, file: !4953, line: 229, column: 11)
!5134 = !DILocation(line: 229, column: 11, scope: !4972)
!5135 = !DILocation(line: 223, column: 16, scope: !5051)
!5136 = !DILocation(line: 224, column: 22, scope: !5051)
!5137 = !DILocation(line: 100, column: 11, scope: !4999)
!5138 = !DILocation(line: 92, column: 16, scope: !4952)
!5139 = !DILocation(line: 233, column: 8, scope: !4952)
!5140 = !DILocation(line: 234, column: 3, scope: !4952)
!5141 = !DILocation(line: 235, column: 1, scope: !4952)
!5142 = !DISubprogram(name: "strtoumax", scope: !5143, file: !5143, line: 301, type: !5144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!5143 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!920, !1019, !5146, !93}
!5146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1178)
!5147 = distinct !DISubprogram(name: "rpl_fopen", scope: !924, file: !924, line: 46, type: !5148, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !5184)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!5150, !150, !150}
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !5152)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !5153)
!5153 = !{!5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5152, file: !242, line: 51, baseType: !93, size: 32)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5152, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5152, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5152, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5152, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5152, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5152, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5152, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5152, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5152, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5152, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5152, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5152, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5152, file: !242, line: 70, baseType: !5168, size: 64, offset: 832)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5152, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5152, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5152, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5152, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5152, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5152, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5152, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5152, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5152, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5152, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5152, file: !242, line: 93, baseType: !5168, size: 64, offset: 1344)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5152, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5152, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5152, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5152, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!5184 = !{!5185, !5186, !5187, !5188, !5189, !5190, !5194, !5196, !5197, !5202, !5205, !5206}
!5185 = !DILocalVariable(name: "filename", arg: 1, scope: !5147, file: !924, line: 46, type: !150)
!5186 = !DILocalVariable(name: "mode", arg: 2, scope: !5147, file: !924, line: 46, type: !150)
!5187 = !DILocalVariable(name: "open_direction", scope: !5147, file: !924, line: 54, type: !93)
!5188 = !DILocalVariable(name: "open_flags", scope: !5147, file: !924, line: 55, type: !93)
!5189 = !DILocalVariable(name: "open_flags_gnu", scope: !5147, file: !924, line: 57, type: !195)
!5190 = !DILocalVariable(name: "fdopen_mode_buf", scope: !5147, file: !924, line: 59, type: !5191)
!5191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5192)
!5192 = !{!5193}
!5193 = !DISubrange(count: 81)
!5194 = !DILocalVariable(name: "p", scope: !5195, file: !924, line: 62, type: !150)
!5195 = distinct !DILexicalBlock(scope: !5147, file: !924, line: 61, column: 3)
!5196 = !DILocalVariable(name: "q", scope: !5195, file: !924, line: 64, type: !144)
!5197 = !DILocalVariable(name: "len", scope: !5198, file: !924, line: 128, type: !147)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !924, line: 127, column: 9)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !924, line: 68, column: 7)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !924, line: 67, column: 5)
!5201 = distinct !DILexicalBlock(scope: !5195, file: !924, line: 67, column: 5)
!5202 = !DILocalVariable(name: "fd", scope: !5203, file: !924, line: 199, type: !93)
!5203 = distinct !DILexicalBlock(scope: !5204, file: !924, line: 198, column: 5)
!5204 = distinct !DILexicalBlock(scope: !5147, file: !924, line: 197, column: 7)
!5205 = !DILocalVariable(name: "fp", scope: !5203, file: !924, line: 204, type: !5150)
!5206 = !DILocalVariable(name: "saved_errno", scope: !5207, file: !924, line: 207, type: !93)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !924, line: 206, column: 9)
!5208 = distinct !DILexicalBlock(scope: !5203, file: !924, line: 205, column: 11)
!5209 = !DILocation(line: 0, scope: !5147)
!5210 = !DILocation(line: 59, column: 3, scope: !5147)
!5211 = !DILocation(line: 59, column: 8, scope: !5147)
!5212 = !DILocation(line: 0, scope: !5195)
!5213 = !DILocation(line: 67, column: 5, scope: !5195)
!5214 = !DILocation(line: 54, column: 7, scope: !5147)
!5215 = !DILocation(line: 67, column: 12, scope: !5200)
!5216 = !DILocation(line: 67, column: 5, scope: !5201)
!5217 = !DILocation(line: 74, column: 19, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5219, file: !924, line: 74, column: 17)
!5219 = distinct !DILexicalBlock(scope: !5199, file: !924, line: 70, column: 11)
!5220 = !DILocation(line: 74, column: 17, scope: !5219)
!5221 = !DILocation(line: 75, column: 17, scope: !5218)
!5222 = !DILocation(line: 75, column: 20, scope: !5218)
!5223 = !DILocation(line: 75, column: 15, scope: !5218)
!5224 = !DILocation(line: 80, column: 24, scope: !5219)
!5225 = !DILocation(line: 82, column: 19, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5219, file: !924, line: 82, column: 17)
!5227 = !DILocation(line: 82, column: 17, scope: !5219)
!5228 = !DILocation(line: 83, column: 17, scope: !5226)
!5229 = !DILocation(line: 83, column: 20, scope: !5226)
!5230 = !DILocation(line: 83, column: 15, scope: !5226)
!5231 = !DILocation(line: 88, column: 24, scope: !5219)
!5232 = !DILocation(line: 90, column: 19, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5219, file: !924, line: 90, column: 17)
!5234 = !DILocation(line: 90, column: 17, scope: !5219)
!5235 = !DILocation(line: 91, column: 17, scope: !5233)
!5236 = !DILocation(line: 91, column: 20, scope: !5233)
!5237 = !DILocation(line: 91, column: 15, scope: !5233)
!5238 = !DILocation(line: 100, column: 19, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5219, file: !924, line: 100, column: 17)
!5240 = !DILocation(line: 100, column: 17, scope: !5219)
!5241 = !DILocation(line: 101, column: 17, scope: !5239)
!5242 = !DILocation(line: 101, column: 20, scope: !5239)
!5243 = !DILocation(line: 101, column: 15, scope: !5239)
!5244 = !DILocation(line: 107, column: 19, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5219, file: !924, line: 107, column: 17)
!5246 = !DILocation(line: 107, column: 17, scope: !5219)
!5247 = !DILocation(line: 108, column: 17, scope: !5245)
!5248 = !DILocation(line: 108, column: 20, scope: !5245)
!5249 = !DILocation(line: 108, column: 15, scope: !5245)
!5250 = !DILocation(line: 113, column: 24, scope: !5219)
!5251 = !DILocation(line: 115, column: 13, scope: !5219)
!5252 = !DILocation(line: 117, column: 24, scope: !5219)
!5253 = !DILocation(line: 119, column: 13, scope: !5219)
!5254 = !DILocation(line: 128, column: 24, scope: !5198)
!5255 = !DILocation(line: 0, scope: !5198)
!5256 = !DILocation(line: 129, column: 48, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5198, file: !924, line: 129, column: 15)
!5258 = !DILocation(line: 129, column: 15, scope: !5198)
!5259 = !DILocalVariable(name: "__dest", arg: 1, scope: !5260, file: !2270, line: 26, type: !4778)
!5260 = distinct !DISubprogram(name: "memcpy", scope: !2270, file: !2270, line: 26, type: !4776, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !5261)
!5261 = !{!5259, !5262, !5263}
!5262 = !DILocalVariable(name: "__src", arg: 2, scope: !5260, file: !2270, line: 26, type: !1172)
!5263 = !DILocalVariable(name: "__len", arg: 3, scope: !5260, file: !2270, line: 26, type: !147)
!5264 = !DILocation(line: 0, scope: !5260, inlinedAt: !5265)
!5265 = distinct !DILocation(line: 131, column: 11, scope: !5198)
!5266 = !DILocation(line: 29, column: 10, scope: !5260, inlinedAt: !5265)
!5267 = !DILocation(line: 132, column: 13, scope: !5198)
!5268 = !DILocation(line: 135, column: 9, scope: !5199)
!5269 = !DILocation(line: 67, column: 25, scope: !5200)
!5270 = !DILocation(line: 67, column: 5, scope: !5200)
!5271 = distinct !{!5271, !5216, !5272, !1075}
!5272 = !DILocation(line: 136, column: 7, scope: !5201)
!5273 = !DILocation(line: 138, column: 8, scope: !5195)
!5274 = !DILocation(line: 197, column: 7, scope: !5147)
!5275 = !DILocation(line: 199, column: 47, scope: !5203)
!5276 = !DILocation(line: 199, column: 16, scope: !5203)
!5277 = !DILocation(line: 0, scope: !5203)
!5278 = !DILocation(line: 201, column: 14, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5203, file: !924, line: 201, column: 11)
!5280 = !DILocation(line: 201, column: 11, scope: !5203)
!5281 = !DILocation(line: 204, column: 18, scope: !5203)
!5282 = !DILocation(line: 205, column: 14, scope: !5208)
!5283 = !DILocation(line: 205, column: 11, scope: !5203)
!5284 = !DILocation(line: 207, column: 29, scope: !5207)
!5285 = !DILocation(line: 0, scope: !5207)
!5286 = !DILocation(line: 208, column: 11, scope: !5207)
!5287 = !DILocation(line: 209, column: 17, scope: !5207)
!5288 = !DILocation(line: 210, column: 9, scope: !5207)
!5289 = !DILocalVariable(name: "filename", arg: 1, scope: !5290, file: !924, line: 30, type: !150)
!5290 = distinct !DISubprogram(name: "orig_fopen", scope: !924, file: !924, line: 30, type: !5148, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !5291)
!5291 = !{!5289, !5292}
!5292 = !DILocalVariable(name: "mode", arg: 2, scope: !5290, file: !924, line: 30, type: !150)
!5293 = !DILocation(line: 0, scope: !5290, inlinedAt: !5294)
!5294 = distinct !DILocation(line: 219, column: 10, scope: !5147)
!5295 = !DILocation(line: 32, column: 10, scope: !5290, inlinedAt: !5294)
!5296 = !DILocation(line: 219, column: 3, scope: !5147)
!5297 = !DILocation(line: 220, column: 1, scope: !5147)
!5298 = !DISubprogram(name: "open", scope: !2498, file: !2498, line: 181, type: !5299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!93, !150, !93, null}
!5301 = !DISubprogram(name: "fdopen", scope: !544, file: !544, line: 293, type: !5302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!5150, !93, !150}
!5304 = !DISubprogram(name: "close", scope: !2354, file: !2354, line: 358, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!5305 = !DISubprogram(name: "fopen", scope: !544, file: !544, line: 258, type: !5306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!5150, !1019, !1019}
!5308 = distinct !DISubprogram(name: "close_stream", scope: !926, file: !926, line: 55, type: !5309, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5345)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!93, !5311}
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !5313)
!5313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !5314)
!5314 = !{!5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5313, file: !242, line: 51, baseType: !93, size: 32)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5313, file: !242, line: 54, baseType: !144, size: 64, offset: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5313, file: !242, line: 55, baseType: !144, size: 64, offset: 128)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5313, file: !242, line: 56, baseType: !144, size: 64, offset: 192)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5313, file: !242, line: 57, baseType: !144, size: 64, offset: 256)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5313, file: !242, line: 58, baseType: !144, size: 64, offset: 320)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5313, file: !242, line: 59, baseType: !144, size: 64, offset: 384)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5313, file: !242, line: 60, baseType: !144, size: 64, offset: 448)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5313, file: !242, line: 61, baseType: !144, size: 64, offset: 512)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5313, file: !242, line: 64, baseType: !144, size: 64, offset: 576)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5313, file: !242, line: 65, baseType: !144, size: 64, offset: 640)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5313, file: !242, line: 66, baseType: !144, size: 64, offset: 704)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5313, file: !242, line: 68, baseType: !257, size: 64, offset: 768)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5313, file: !242, line: 70, baseType: !5329, size: 64, offset: 832)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5313, file: !242, line: 72, baseType: !93, size: 32, offset: 896)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5313, file: !242, line: 73, baseType: !93, size: 32, offset: 928)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5313, file: !242, line: 74, baseType: !264, size: 64, offset: 960)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5313, file: !242, line: 77, baseType: !146, size: 16, offset: 1024)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5313, file: !242, line: 78, baseType: !268, size: 8, offset: 1040)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5313, file: !242, line: 79, baseType: !69, size: 8, offset: 1048)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5313, file: !242, line: 81, baseType: !271, size: 64, offset: 1088)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5313, file: !242, line: 89, baseType: !274, size: 64, offset: 1152)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5313, file: !242, line: 91, baseType: !276, size: 64, offset: 1216)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5313, file: !242, line: 92, baseType: !279, size: 64, offset: 1280)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5313, file: !242, line: 93, baseType: !5329, size: 64, offset: 1344)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5313, file: !242, line: 94, baseType: !145, size: 64, offset: 1408)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5313, file: !242, line: 95, baseType: !147, size: 64, offset: 1472)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5313, file: !242, line: 96, baseType: !93, size: 32, offset: 1536)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5313, file: !242, line: 98, baseType: !286, size: 160, offset: 1568)
!5345 = !{!5346, !5347, !5349, !5350}
!5346 = !DILocalVariable(name: "stream", arg: 1, scope: !5308, file: !926, line: 55, type: !5311)
!5347 = !DILocalVariable(name: "some_pending", scope: !5308, file: !926, line: 57, type: !5348)
!5348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!5349 = !DILocalVariable(name: "prev_fail", scope: !5308, file: !926, line: 58, type: !5348)
!5350 = !DILocalVariable(name: "fclose_fail", scope: !5308, file: !926, line: 59, type: !5348)
!5351 = !DILocation(line: 0, scope: !5308)
!5352 = !DILocation(line: 57, column: 30, scope: !5308)
!5353 = !DILocalVariable(name: "__stream", arg: 1, scope: !5354, file: !1438, line: 135, type: !5311)
!5354 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1438, file: !1438, line: 135, type: !5309, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5355)
!5355 = !{!5353}
!5356 = !DILocation(line: 0, scope: !5354, inlinedAt: !5357)
!5357 = distinct !DILocation(line: 58, column: 27, scope: !5308)
!5358 = !DILocation(line: 137, column: 10, scope: !5354, inlinedAt: !5357)
!5359 = !DILocation(line: 58, column: 43, scope: !5308)
!5360 = !DILocation(line: 59, column: 29, scope: !5308)
!5361 = !DILocation(line: 59, column: 45, scope: !5308)
!5362 = !DILocation(line: 69, column: 17, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5308, file: !926, line: 69, column: 7)
!5364 = !DILocation(line: 57, column: 50, scope: !5308)
!5365 = !DILocation(line: 69, column: 33, scope: !5363)
!5366 = !DILocation(line: 69, column: 53, scope: !5363)
!5367 = !DILocation(line: 69, column: 59, scope: !5363)
!5368 = !DILocation(line: 69, column: 7, scope: !5308)
!5369 = !DILocation(line: 71, column: 11, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5363, file: !926, line: 70, column: 5)
!5371 = !DILocation(line: 72, column: 9, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5370, file: !926, line: 71, column: 11)
!5373 = !DILocation(line: 72, column: 15, scope: !5372)
!5374 = !DILocation(line: 77, column: 1, scope: !5308)
!5375 = !DISubprogram(name: "__fpending", scope: !2702, file: !2702, line: 75, type: !5376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!147, !5311}
!5378 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !827, file: !827, line: 100, type: !5379, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !5382)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!147, !2965, !150, !147, !5381}
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!5382 = !{!5383, !5384, !5385, !5386, !5387}
!5383 = !DILocalVariable(name: "pwc", arg: 1, scope: !5378, file: !827, line: 100, type: !2965)
!5384 = !DILocalVariable(name: "s", arg: 2, scope: !5378, file: !827, line: 100, type: !150)
!5385 = !DILocalVariable(name: "n", arg: 3, scope: !5378, file: !827, line: 100, type: !147)
!5386 = !DILocalVariable(name: "ps", arg: 4, scope: !5378, file: !827, line: 100, type: !5381)
!5387 = !DILocalVariable(name: "ret", scope: !5378, file: !827, line: 130, type: !147)
!5388 = !DILocation(line: 0, scope: !5378)
!5389 = !DILocation(line: 105, column: 9, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5378, file: !827, line: 105, column: 7)
!5391 = !DILocation(line: 105, column: 7, scope: !5378)
!5392 = !DILocation(line: 117, column: 10, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5378, file: !827, line: 117, column: 7)
!5394 = !DILocation(line: 117, column: 7, scope: !5378)
!5395 = !DILocation(line: 130, column: 16, scope: !5378)
!5396 = !DILocation(line: 135, column: 11, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5378, file: !827, line: 135, column: 7)
!5398 = !DILocation(line: 135, column: 25, scope: !5397)
!5399 = !DILocation(line: 135, column: 30, scope: !5397)
!5400 = !DILocation(line: 135, column: 7, scope: !5378)
!5401 = !DILocalVariable(name: "ps", arg: 1, scope: !5402, file: !2939, line: 1135, type: !5381)
!5402 = distinct !DISubprogram(name: "mbszero", scope: !2939, file: !2939, line: 1135, type: !5403, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !5405)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{null, !5381}
!5405 = !{!5401}
!5406 = !DILocation(line: 0, scope: !5402, inlinedAt: !5407)
!5407 = distinct !DILocation(line: 137, column: 5, scope: !5397)
!5408 = !DILocalVariable(name: "__dest", arg: 1, scope: !5409, file: !2270, line: 57, type: !145)
!5409 = distinct !DISubprogram(name: "memset", scope: !2270, file: !2270, line: 57, type: !2948, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !5410)
!5410 = !{!5408, !5411, !5412}
!5411 = !DILocalVariable(name: "__ch", arg: 2, scope: !5409, file: !2270, line: 57, type: !93)
!5412 = !DILocalVariable(name: "__len", arg: 3, scope: !5409, file: !2270, line: 57, type: !147)
!5413 = !DILocation(line: 0, scope: !5409, inlinedAt: !5414)
!5414 = distinct !DILocation(line: 1137, column: 3, scope: !5402, inlinedAt: !5407)
!5415 = !DILocation(line: 59, column: 10, scope: !5409, inlinedAt: !5414)
!5416 = !DILocation(line: 137, column: 5, scope: !5397)
!5417 = !DILocation(line: 138, column: 11, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5378, file: !827, line: 138, column: 7)
!5419 = !DILocation(line: 138, column: 7, scope: !5378)
!5420 = !DILocation(line: 139, column: 5, scope: !5418)
!5421 = !DILocation(line: 143, column: 26, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5378, file: !827, line: 143, column: 7)
!5423 = !DILocation(line: 143, column: 41, scope: !5422)
!5424 = !DILocation(line: 143, column: 7, scope: !5378)
!5425 = !DILocation(line: 145, column: 15, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5427, file: !827, line: 145, column: 11)
!5427 = distinct !DILexicalBlock(scope: !5422, file: !827, line: 144, column: 5)
!5428 = !DILocation(line: 145, column: 11, scope: !5427)
!5429 = !DILocation(line: 146, column: 32, scope: !5426)
!5430 = !DILocation(line: 146, column: 16, scope: !5426)
!5431 = !DILocation(line: 146, column: 14, scope: !5426)
!5432 = !DILocation(line: 146, column: 9, scope: !5426)
!5433 = !DILocation(line: 286, column: 1, scope: !5378)
!5434 = !DISubprogram(name: "mbsinit", scope: !5435, file: !5435, line: 293, type: !5436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!5435 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!93, !5438}
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!5440 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !928, file: !928, line: 27, type: !4418, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !5441)
!5441 = !{!5442, !5443, !5444, !5445}
!5442 = !DILocalVariable(name: "ptr", arg: 1, scope: !5440, file: !928, line: 27, type: !145)
!5443 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5440, file: !928, line: 27, type: !147)
!5444 = !DILocalVariable(name: "size", arg: 3, scope: !5440, file: !928, line: 27, type: !147)
!5445 = !DILocalVariable(name: "nbytes", scope: !5440, file: !928, line: 29, type: !147)
!5446 = !DILocation(line: 0, scope: !5440)
!5447 = !DILocation(line: 30, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5440, file: !928, line: 30, column: 7)
!5449 = !DILocalVariable(name: "ptr", arg: 1, scope: !5450, file: !4510, line: 2057, type: !145)
!5450 = distinct !DISubprogram(name: "rpl_realloc", scope: !4510, file: !4510, line: 2057, type: !4502, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !5451)
!5451 = !{!5449, !5452}
!5452 = !DILocalVariable(name: "size", arg: 2, scope: !5450, file: !4510, line: 2057, type: !147)
!5453 = !DILocation(line: 0, scope: !5450, inlinedAt: !5454)
!5454 = distinct !DILocation(line: 37, column: 10, scope: !5440)
!5455 = !DILocation(line: 2059, column: 24, scope: !5450, inlinedAt: !5454)
!5456 = !DILocation(line: 2059, column: 10, scope: !5450, inlinedAt: !5454)
!5457 = !DILocation(line: 37, column: 3, scope: !5440)
!5458 = !DILocation(line: 32, column: 7, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5448, file: !928, line: 31, column: 5)
!5460 = !DILocation(line: 32, column: 13, scope: !5459)
!5461 = !DILocation(line: 33, column: 7, scope: !5459)
!5462 = !DILocation(line: 38, column: 1, scope: !5440)
!5463 = distinct !DISubprogram(name: "hard_locale", scope: !845, file: !845, line: 28, type: !1213, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !5464)
!5464 = !{!5465, !5466}
!5465 = !DILocalVariable(name: "category", arg: 1, scope: !5463, file: !845, line: 28, type: !93)
!5466 = !DILocalVariable(name: "locale", scope: !5463, file: !845, line: 30, type: !5467)
!5467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5468)
!5468 = !{!5469}
!5469 = !DISubrange(count: 257)
!5470 = !DILocation(line: 0, scope: !5463)
!5471 = !DILocation(line: 30, column: 3, scope: !5463)
!5472 = !DILocation(line: 30, column: 8, scope: !5463)
!5473 = !DILocation(line: 32, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5463, file: !845, line: 32, column: 7)
!5475 = !DILocation(line: 32, column: 7, scope: !5463)
!5476 = !DILocalVariable(name: "__s1", arg: 1, scope: !5477, file: !1041, line: 1359, type: !150)
!5477 = distinct !DISubprogram(name: "streq", scope: !1041, file: !1041, line: 1359, type: !1042, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !5478)
!5478 = !{!5476, !5479}
!5479 = !DILocalVariable(name: "__s2", arg: 2, scope: !5477, file: !1041, line: 1359, type: !150)
!5480 = !DILocation(line: 0, scope: !5477, inlinedAt: !5481)
!5481 = distinct !DILocation(line: 35, column: 9, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5463, file: !845, line: 35, column: 7)
!5483 = !DILocation(line: 1361, column: 11, scope: !5477, inlinedAt: !5481)
!5484 = !DILocation(line: 1361, column: 10, scope: !5477, inlinedAt: !5481)
!5485 = !DILocation(line: 35, column: 29, scope: !5482)
!5486 = !DILocation(line: 0, scope: !5477, inlinedAt: !5487)
!5487 = distinct !DILocation(line: 35, column: 32, scope: !5482)
!5488 = !DILocation(line: 1361, column: 11, scope: !5477, inlinedAt: !5487)
!5489 = !DILocation(line: 1361, column: 10, scope: !5477, inlinedAt: !5487)
!5490 = !DILocation(line: 35, column: 7, scope: !5463)
!5491 = !DILocation(line: 46, column: 3, scope: !5463)
!5492 = !DILocation(line: 47, column: 1, scope: !5463)
!5493 = distinct !DISubprogram(name: "setlocale_null_r", scope: !933, file: !933, line: 154, type: !5494, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !5496)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{!93, !93, !144, !147}
!5496 = !{!5497, !5498, !5499}
!5497 = !DILocalVariable(name: "category", arg: 1, scope: !5493, file: !933, line: 154, type: !93)
!5498 = !DILocalVariable(name: "buf", arg: 2, scope: !5493, file: !933, line: 154, type: !144)
!5499 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5493, file: !933, line: 154, type: !147)
!5500 = !DILocation(line: 0, scope: !5493)
!5501 = !DILocation(line: 159, column: 10, scope: !5493)
!5502 = !DILocation(line: 159, column: 3, scope: !5493)
!5503 = distinct !DISubprogram(name: "setlocale_null", scope: !933, file: !933, line: 186, type: !5504, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !5506)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{!150, !93}
!5506 = !{!5507}
!5507 = !DILocalVariable(name: "category", arg: 1, scope: !5503, file: !933, line: 186, type: !93)
!5508 = !DILocation(line: 0, scope: !5503)
!5509 = !DILocation(line: 189, column: 10, scope: !5503)
!5510 = !DILocation(line: 189, column: 3, scope: !5503)
!5511 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !935, file: !935, line: 35, type: !5504, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5512)
!5512 = !{!5513, !5514}
!5513 = !DILocalVariable(name: "category", arg: 1, scope: !5511, file: !935, line: 35, type: !93)
!5514 = !DILocalVariable(name: "result", scope: !5511, file: !935, line: 37, type: !150)
!5515 = !DILocation(line: 0, scope: !5511)
!5516 = !DILocation(line: 37, column: 24, scope: !5511)
!5517 = !DILocation(line: 62, column: 3, scope: !5511)
!5518 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !935, file: !935, line: 66, type: !5494, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5519)
!5519 = !{!5520, !5521, !5522, !5523, !5524}
!5520 = !DILocalVariable(name: "category", arg: 1, scope: !5518, file: !935, line: 66, type: !93)
!5521 = !DILocalVariable(name: "buf", arg: 2, scope: !5518, file: !935, line: 66, type: !144)
!5522 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5518, file: !935, line: 66, type: !147)
!5523 = !DILocalVariable(name: "result", scope: !5518, file: !935, line: 111, type: !150)
!5524 = !DILocalVariable(name: "length", scope: !5525, file: !935, line: 125, type: !147)
!5525 = distinct !DILexicalBlock(scope: !5526, file: !935, line: 124, column: 5)
!5526 = distinct !DILexicalBlock(scope: !5518, file: !935, line: 113, column: 7)
!5527 = !DILocation(line: 0, scope: !5518)
!5528 = !DILocation(line: 0, scope: !5511, inlinedAt: !5529)
!5529 = distinct !DILocation(line: 111, column: 24, scope: !5518)
!5530 = !DILocation(line: 37, column: 24, scope: !5511, inlinedAt: !5529)
!5531 = !DILocation(line: 113, column: 14, scope: !5526)
!5532 = !DILocation(line: 113, column: 7, scope: !5518)
!5533 = !DILocation(line: 116, column: 19, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5535, file: !935, line: 116, column: 11)
!5535 = distinct !DILexicalBlock(scope: !5526, file: !935, line: 114, column: 5)
!5536 = !DILocation(line: 116, column: 11, scope: !5535)
!5537 = !DILocation(line: 120, column: 16, scope: !5534)
!5538 = !DILocation(line: 120, column: 9, scope: !5534)
!5539 = !DILocation(line: 125, column: 23, scope: !5525)
!5540 = !DILocation(line: 0, scope: !5525)
!5541 = !DILocation(line: 126, column: 18, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5525, file: !935, line: 126, column: 11)
!5543 = !DILocation(line: 126, column: 11, scope: !5525)
!5544 = !DILocation(line: 128, column: 39, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5542, file: !935, line: 127, column: 9)
!5546 = !DILocalVariable(name: "__dest", arg: 1, scope: !5547, file: !2270, line: 26, type: !4778)
!5547 = distinct !DISubprogram(name: "memcpy", scope: !2270, file: !2270, line: 26, type: !4776, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5548)
!5548 = !{!5546, !5549, !5550}
!5549 = !DILocalVariable(name: "__src", arg: 2, scope: !5547, file: !2270, line: 26, type: !1172)
!5550 = !DILocalVariable(name: "__len", arg: 3, scope: !5547, file: !2270, line: 26, type: !147)
!5551 = !DILocation(line: 0, scope: !5547, inlinedAt: !5552)
!5552 = distinct !DILocation(line: 128, column: 11, scope: !5545)
!5553 = !DILocation(line: 29, column: 10, scope: !5547, inlinedAt: !5552)
!5554 = !DILocation(line: 129, column: 11, scope: !5545)
!5555 = !DILocation(line: 133, column: 23, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !935, line: 133, column: 15)
!5557 = distinct !DILexicalBlock(scope: !5542, file: !935, line: 132, column: 9)
!5558 = !DILocation(line: 133, column: 15, scope: !5557)
!5559 = !DILocation(line: 138, column: 44, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5556, file: !935, line: 134, column: 13)
!5561 = !DILocation(line: 0, scope: !5547, inlinedAt: !5562)
!5562 = distinct !DILocation(line: 138, column: 15, scope: !5560)
!5563 = !DILocation(line: 29, column: 10, scope: !5547, inlinedAt: !5562)
!5564 = !DILocation(line: 139, column: 15, scope: !5560)
!5565 = !DILocation(line: 139, column: 32, scope: !5560)
!5566 = !DILocation(line: 140, column: 13, scope: !5560)
!5567 = !DILocation(line: 0, scope: !5526)
!5568 = !DILocation(line: 145, column: 1, scope: !5518)
